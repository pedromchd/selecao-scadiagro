function validarCNPJ(cnpj: string): boolean {
  let retorno: boolean = true;
  cnpj = cnpj.replace('.', '').replace('/', '').replace('-', '');
  if (cnpj.length != 14) retorno = false;
  if (cnpj == "00000000000000" || cnpj == "11111111111111" || cnpj == "22222222222222" || cnpj == "33333333333333" ||
    cnpj == "44444444444444" || cnpj == "55555555555555" || cnpj == "66666666666666" || cnpj == "77777777777777" ||
    cnpj == "88888888888888" || cnpj == "99999999999999")
    retorno = false;
  let tamanho: number = cnpj.length - 2
  let numeros: string = cnpj.substring(0, tamanho);
  let dig: string = cnpj.substring(tamanho);
  let soma: number = 0;
  let pos: number = tamanho - 7;
  for (let i: number = tamanho; i >= 1; i--) {
    soma += parseInt(numeros.charAt(tamanho - i)) * pos--;
    if (pos < 2) pos = 9;
  }
  let resultado: number = soma % 11 < 2 ? 0 : 11 - soma % 11;
  if (resultado != parseInt(dig.charAt(0)))
    retorno = false;
  tamanho = tamanho + 1;
  numeros = cnpj.substring(0, tamanho);
  soma = 0;
  pos = tamanho - 7;
  for (let i: number = tamanho; i >= 1; i--) {
    soma += parseInt(numeros.charAt(tamanho - i)) * pos--;
    if (pos < 2) pos = 9;
  }
  resultado = soma % 11 < 2 ? 0 : 11 - soma % 11;
  if (resultado != parseInt(dig.charAt(1))) retorno = false;
  return retorno;
}
