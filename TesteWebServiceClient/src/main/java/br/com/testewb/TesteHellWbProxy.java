package br.com.testewb;

public class TesteHellWbProxy implements br.com.testewb.TesteHellWb {
  private String _endpoint = null;
  private br.com.testewb.TesteHellWb testeHellWb = null;
  
  public TesteHellWbProxy() {
    _initTesteHellWbProxy();
  }
  
  public TesteHellWbProxy(String endpoint) {
    _endpoint = endpoint;
    _initTesteHellWbProxy();
  }
  
  private void _initTesteHellWbProxy() {
    try {
      testeHellWb = (new br.com.testewb.TesteHellWbServiceLocator()).gettesteHellWb();
      if (testeHellWb != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)testeHellWb)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)testeHellWb)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (testeHellWb != null)
      ((javax.xml.rpc.Stub)testeHellWb)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public br.com.testewb.TesteHellWb getTesteHellWb() {
    if (testeHellWb == null)
      _initTesteHellWbProxy();
    return testeHellWb;
  }
  
  public int soma(int n1, int n2) throws java.rmi.RemoteException{
    if (testeHellWb == null)
      _initTesteHellWbProxy();
    return testeHellWb.soma(n1, n2);
  }
  
  public int subtracao(int n1, int n2) throws java.rmi.RemoteException{
    if (testeHellWb == null)
      _initTesteHellWbProxy();
    return testeHellWb.subtracao(n1, n2);
  }
  
  public int divisao(int n1, int n2) throws java.rmi.RemoteException{
    if (testeHellWb == null)
      _initTesteHellWbProxy();
    return testeHellWb.divisao(n1, n2);
  }
  
  public int multiplicacao(int n1, int n2) throws java.rmi.RemoteException{
    if (testeHellWb == null)
      _initTesteHellWbProxy();
    return testeHellWb.multiplicacao(n1, n2);
  }
  
  
}