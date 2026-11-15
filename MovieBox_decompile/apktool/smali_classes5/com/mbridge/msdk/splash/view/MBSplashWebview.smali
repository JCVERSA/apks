.class public Lcom/mbridge/msdk/splash/view/MBSplashWebview;
.super Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;
.source "source.java"


# instance fields
.field private r:Ljava/lang/String;

.field private s:Lcom/iab/omid/library/mmadbridge/adsession/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public finishAdSession()V
    .locals 2

    .line 1
    const-string v0, "OMSDK"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/MBSplashWebview;->s:Lcom/iab/omid/library/mmadbridge/adsession/b;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/iab/omid/library/mmadbridge/adsession/b;->c()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-object v1, p0, Lcom/mbridge/msdk/splash/view/MBSplashWebview;->s:Lcom/iab/omid/library/mmadbridge/adsession/b;

    .line 12
    .line 13
    const-string v1, "finish adSession"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v1

    .line 20
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    :goto_0
    return-void
.end method

.method public getAdSession()Lcom/iab/omid/library/mmadbridge/adsession/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashWebview;->s:Lcom/iab/omid/library/mmadbridge/adsession/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashWebview;->r:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAdSession(Lcom/iab/omid/library/mmadbridge/adsession/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/MBSplashWebview;->s:Lcom/iab/omid/library/mmadbridge/adsession/b;

    .line 2
    .line 3
    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/MBSplashWebview;->r:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
