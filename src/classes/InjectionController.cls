public class InjectionController {
  public String getHtmlInjection() {
    return '<script>alert("successfully injected html")</script>';
  }

  public String getJavascriptInjection() {
    return '"; alert("successfully injected javascript"); var supressed = "';
  }

  public String getName() {
    Opportunity[] opps = [SELECT Id, Name from Opportunity];
    if (opps.size() > 0) {
      return opps[0].Name + ' ' + opps[0].Id;
    } else {
      return 'No opportunities found';
    }
  }
}
