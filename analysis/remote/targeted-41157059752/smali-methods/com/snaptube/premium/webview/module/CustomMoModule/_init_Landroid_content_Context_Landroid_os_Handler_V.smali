.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lo/m50;-><init>()V

    iput-object p1, p0, Lcom/snaptube/premium/webview/module/CustomMoModule;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/snaptube/premium/webview/module/CustomMoModule;->e:Landroid/os/Handler;

    new-instance p1, Lcom/snaptube/premium/webview/module/CustomMoModule$CustomActionHandler;

    invoke-direct {p1, p0}, Lcom/snaptube/premium/webview/module/CustomMoModule$CustomActionHandler;-><init>(Lcom/snaptube/premium/webview/module/CustomMoModule;)V

    iput-object p1, p0, Lcom/snaptube/premium/webview/module/CustomMoModule;->f:Lcom/snaptube/premium/webview/module/CustomMoModule$CustomActionHandler;

    const-string p2, "getSpeedDial"

    invoke-virtual {p0, p2, p1}, Lo/m50;->d(Ljava/lang/String;Lo/y3;)V

    const-string p2, "getBadgedList"

    invoke-virtual {p0, p2, p1}, Lo/m50;->d(Ljava/lang/String;Lo/y3;)V

    const-string p2, "badgeVideo"

    invoke-virtual {p0, p2, p1}, Lo/m50;->d(Ljava/lang/String;Lo/y3;)V

    const-string p2, "watchLater"

    invoke-virtual {p0, p2, p1}, Lo/m50;->d(Ljava/lang/String;Lo/y3;)V

    const-string p2, "trackEvent"

    invoke-virtual {p0, p2, p1}, Lo/m50;->d(Ljava/lang/String;Lo/y3;)V

    const-string p2, "getSearchResult"

    invoke-virtual {p0, p2, p1}, Lo/m50;->d(Ljava/lang/String;Lo/y3;)V

    const-string p2, "getSearchHistory"

    invoke-virtual {p0, p2, p1}, Lo/m50;->d(Ljava/lang/String;Lo/y3;)V

    const-string p2, "clearSearchHistory"

    invoke-virtual {p0, p2, p1}, Lo/m50;->d(Ljava/lang/String;Lo/y3;)V

    const-string p2, "getCommonParam"

    invoke-virtual {p0, p2, p1}, Lo/m50;->d(Ljava/lang/String;Lo/y3;)V

    const-string p2, "getAdParam"

    invoke-virtual {p0, p2, p1}, Lo/m50;->d(Ljava/lang/String;Lo/y3;)V

    const-string p2, "getUserInfo"

    invoke-virtual {p0, p2, p1}, Lo/m50;->d(Ljava/lang/String;Lo/y3;)V

    const-string p2, "getUUID"

    invoke-virtual {p0, p2, p1}, Lo/m50;->d(Ljava/lang/String;Lo/y3;)V

    const-string p2, "setActivityStatus"

    invoke-virtual {p0, p2, p1}, Lo/m50;->d(Ljava/lang/String;Lo/y3;)V

    const-string p2, "getApkComment"

    invoke-virtual {p0, p2, p1}, Lo/m50;->d(Ljava/lang/String;Lo/y3;)V

    return-void
.end method
