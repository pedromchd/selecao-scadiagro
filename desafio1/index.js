function validarCNPJ(cnpj) {
    cnpj = cnpj.match(/[0-9]/g).join('');
    if (cnpj === '00000000000000' || cnpj === '11111111111111' ||
        cnpj === '22222222222222' || cnpj === '33333333333333' ||
        cnpj === '44444444444444' || cnpj === '55555555555555' ||
        cnpj === '66666666666666' || cnpj === '77777777777777' ||
        cnpj === '88888888888888' || cnpj === '99999999999999' ||
        cnpj.length !== 14) {
        return false;
    }
    try {
        const temp = cnpj.split('').map((n) => parseInt(n)).reverse();
        let peso = 0;
        let soma = temp.slice(2).reduce((soma, numr) => soma + numr * ((peso++ % 8) + 2), 0);
        let resu = (soma % 11 < 2) ? 0 : 11 - (soma % 11);
        if (resu !== temp[1]) {
            return false;
        }
        peso = 0;
        soma = temp.slice(1).reduce((soma, numr) => soma + numr * ((peso++ % 8) + 2), 0);
        resu = (soma % 11 < 2) ? 0 : 11 - (soma % 11);
        if (resu !== temp[0]) {
            return false;
        }
    }
    catch (erro) {
        return false;
    }
    return true;
}
