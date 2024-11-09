const Redux = require('redux')
const { combineReducers, createStore } = Redux
//#region essa função é criadora de ação
const criarContrato = (nome, taxa) => {
  //esse objeto devolvido é uma ação
  return {
    type: "CRIAR_CONTRATO",
    payload: {nome, taxa } 
  }
}

const cancelarContrato = (nome) => {
  return {
    type: 'CANCELAR_CONTRATO',
    payload: {nome}
  }
}

const solicitarCashback = (nome, valor) => {
  return {
    type: 'SOLICITAR_CASHBACK',
    payload:{nome, valor}
  }
}

//#region essas funções são reducers
const historicoDePedidosDeCashbackReducer = (historicoDePedidosDeCashbackAtual = [], acao) => {
  if(acao.type === "SOLICITAR_CASHBACK")
    return [...historicoDePedidosDeCashbackAtual, acao.payload]
  return historicoDePedidosDeCashbackAtual
}

const caixaReducer = (dinheiroEmCaixa = 0, acao) => {
  if(acao.type === 'SOLICITAR_CASHBACK')
    return dinheiroEmCaixa - acao.payload.valor
  if (acao.type === "CRIAR_CONTRATO")
    return dinheiroEmCaixa + acao.payload.taxa
  return dinheiroEmCaixa
}

const contratosReducer = (listaDeContratosAtual = [], acao) => {
  if (acao.type === "CRIAR_CONTRATO")
    return [...listaDeContratosAtual, acao.payload]
  if (acao.type === "CANCELAR_CONTRATO")
    return listaDeContratosAtual.filter(contrato => contrato.nome !== acao.payload.nome)
  return listaDeContratosAtual
}
//#endregion

const todosOsReducers = combineReducers({
  historicoDePedidosDeCashbackReducer,
  caixaReducer,
  contratosReducer
})

const store = createStore(todosOsReducers)

console.log(store.getState())
const acaoContratoJose = criarContrato('José', 50)
store.dispatch(acaoContratoJose)
console.log(store.getState())
const acaoContratoMaria = criarContrato('Maria', 50)
store.dispatch(acaoContratoMaria)
console.log(store.getState())
const acaoCashbackMaria = solicitarCashback('Maria', 10)
store.dispatch(acaoCashbackMaria)
console.log(store.getState())
const acaoCashbackJose = solicitarCashback('José', 100)
store.dispatch(acaoCashbackJose)
console.log(store.getState())
const acaoCancelaContratoMaria = cancelarContrato('Maria')
store.dispatch(acaoCancelaContratoMaria)
console.log(store.getState())
const acaoCancelaContratoPedro = cancelarContrato('Pedro')
store.dispatch(acaoCancelaContratoPedro)
console.log(store.getState())



