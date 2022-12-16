function validarCNPJ(cnpj: string): boolean {
  // Não há necessidade de atribuir um valor booleano a uma variável e retorná-lo,
  // você pode diretamente retornar "true" ou "false" dependedo da condição.

  // Usar uma expressão regular nesse caso é muito mais eficiente e prático,
  // além de não permitir brechas para outros símbolos dentro da variável:
  cnpj = cnpj.match(/[0-9]/g).join('');

  // Priorizar um comparador mais específico, e seguir a sintaxe padrão do if.
  if (
    cnpj === '00000000000000' || cnpj === '11111111111111' ||
    cnpj === '22222222222222' || cnpj === '33333333333333' ||
    cnpj === '44444444444444' || cnpj === '55555555555555' ||
    cnpj === '66666666666666' || cnpj === '77777777777777' ||
    cnpj === '88888888888888' || cnpj === '99999999999999' ||
    cnpj.length !== 14
  ) {
    return false;
  }

  // try...catch ajuda a lidar com eventuais problemas de execução do código
  try {
    // Com uma variável temporária, podemos transformar o cnpj em uma array de números.
    // O reverse() serve para fazer a interação com o peso.
    const temp: number[] = cnpj.split('').map((n) => parseInt(n)).reverse();
    // Se dispensa o uso de substring() para pegar os últimos 2 números do cnpj.

    // Aqui é um exemplo do método reduce(),
    // ele permite fazer um somatório consistente dos números.
    let peso: number = 0;
    let soma: number = temp.slice(2).reduce(
      (soma, numr) => soma + numr * ((peso++ % 8) + 2), 0
    );
    // A expressão "peso++ % 8 + 2" autoincrementa valores em "peso",
    // e retorna um valor seguindo o padrão "2, 3, 4, 5, 6, 7, 8, 9, 2, 3, 4, 5, ...",
    // tais valores servem pro cálculo do dígito verificador do cnpj.

    // Seguindo a sintaxe padrão do if
    let resu: number = (soma % 11 < 2) ? 0 : 11 - (soma % 11);
    if (resu !== temp[1]) {
      return false;
    }

    // Repetindo os algoritmos
    peso = 0;
    soma = temp.slice(1).reduce(
      (soma, numr) => soma + numr * ((peso++ % 8) + 2), 0
    );
    resu = (soma % 11 < 2) ? 0 : 11 - (soma % 11);
    if (resu !== temp[0]) {
      return false;
    }
  } catch (erro) {
    return false;
  }
  return true;
}
