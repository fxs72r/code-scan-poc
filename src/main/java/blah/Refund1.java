
package blah;

public class Refund1 {

  private String tenderCategory_ = null;
  
  protected String checkVisibilityImpl(Object[] tenders) throws Exception {
    String unusedLocal;
    if (this.tenderCategory_ != null) {
      boolean anyAvailable = false;
      for (Object tndr : tenders) {
        Object tender2 = Refund2.getOtherTender();
        if (tender2 != null) {
          anyAvailable = true;
          break;
        }
        if (anyAvailable) 
          continue;
        return Refund2.DENIED;
      }
    }
  return Refund2.GRANTED;
  }

}



