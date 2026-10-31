.class public final Lcom/snaptube/premium/webview/module/CustomMoModule;
.super Lo/m50;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snaptube/premium/webview/module/CustomMoModule$a;,
        Lcom/snaptube/premium/webview/module/CustomMoModule$CustomActionHandler;
    }
.end annotation


# static fields
.field public static final h:Lcom/snaptube/premium/webview/module/CustomMoModule$a;


# instance fields
.field public final d:Landroid/content/Context;

.field public final e:Landroid/os/Handler;

.field public final f:Lcom/snaptube/premium/webview/module/CustomMoModule$CustomActionHandler;

.field public g:Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/snaptube/premium/webview/module/CustomMoModule$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/snaptube/premium/webview/module/CustomMoModule$a;-><init>(Lo/pg1;)V

    sput-object v0, Lcom/snaptube/premium/webview/module/CustomMoModule;->h:Lcom/snaptube/premium/webview/module/CustomMoModule$a;

    return-void
.end method

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


# virtual methods
.method public final f()Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/webview/module/CustomMoModule;->g:Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;

    return-object v0
.end method

.method public final g()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/webview/module/CustomMoModule;->d:Landroid/content/Context;

    return-object v0
.end method

.method public final h(Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;)V
    .locals 0

    iput-object p1, p0, Lcom/snaptube/premium/webview/module/CustomMoModule;->g:Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;

    return-void
.end method
