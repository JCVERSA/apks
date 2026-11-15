.class public final Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore$preloadInterstitialAd$1$2;
.super Lcom/hisavana/common/interfacz/TAdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->B(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0007*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0019\u0010\u0007\u001a\u00020\u00022\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\r\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u0017\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000cJ\u0019\u0010\u000f\u001a\u00020\u00022\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0008\u00a8\u0006\u0010"
    }
    d2 = {
        "com/transsion/mediationads/interstitial/InterstitialAdManagerCore$preloadInterstitialAd$1$2",
        "Lcom/hisavana/common/interfacz/TAdListener;",
        "Lzfb;",
        "onLoad",
        "()V",
        "Lcom/hisavana/common/bean/TAdErrorCode;",
        "errorCode",
        "onError",
        "(Lcom/hisavana/common/bean/TAdErrorCode;)V",
        "",
        "p0",
        "onShow",
        "(I)V",
        "onClicked",
        "onClosed",
        "onShowError",
        "mediationAds_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;


# direct methods
.method public constructor <init>(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore$preloadInterstitialAd$1$2;->this$0:Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;

    invoke-direct {p0}, Lcom/hisavana/common/interfacz/TAdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClicked(I)V
    .locals 1

    const-string p1, "mediation_ad_InterstitialAdManagerCore"

    const-string v0, "Interstitial ad clicked"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore$preloadInterstitialAd$1$2;->this$0:Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->q(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;Z)V

    sget-object p0, Lrz5;->a:Lrz5$a;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lrz5$a;->a(I)V

    return-void
.end method

.method public onClosed(I)V
    .locals 5

    const-string p1, "mediation_ad_InterstitialAdManagerCore"

    const-string v0, "Interstitial ad closed"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore$preloadInterstitialAd$1$2;->this$0:Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->p(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;Z)V

    iget-object p1, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore$preloadInterstitialAd$1$2;->this$0:Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->s(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;Ljava/lang/ref/WeakReference;)V

    iget-object p1, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore$preloadInterstitialAd$1$2;->this$0:Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->q(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;Z)V

    iget-object p1, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore$preloadInterstitialAd$1$2;->this$0:Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;

    invoke-static {p1}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->f(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore$preloadInterstitialAd$1$2;->this$0:Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;

    invoke-static {p1, v0}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->l(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;Z)V

    iget-object p1, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore$preloadInterstitialAd$1$2;->this$0:Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;

    invoke-static {p1}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->e(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object p0, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore$preloadInterstitialAd$1$2;->this$0:Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;

    invoke-static {p0}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->e(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;)J

    move-result-wide p0

    sub-long/2addr v1, p0

    const-wide/16 p0, 0x3e8

    div-long/2addr v1, p0

    invoke-static {v1, v2, v3, v4}, Lwn8;->e(JJ)J

    move-result-wide v3

    :cond_0
    sget-object p0, Lrz5;->a:Lrz5$a;

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0, v3, v4}, Lrz5$a;->b(IIJ)V

    :cond_1
    return-void
.end method

.method public onError(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Interstitial ad error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mediation_ad_InterstitialAdManagerCore"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore$preloadInterstitialAd$1$2;->this$0:Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;

    invoke-static {v0}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->g(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore$preloadInterstitialAd$1$2;->this$0:Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->m(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;Z)V

    sget-object v2, Lrz5;->a:Lrz5$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore$preloadInterstitialAd$1$2;->this$0:Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;

    invoke-static {p0}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->d(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;)J

    move-result-wide v3

    sub-long v5, v0, v3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    move-object v7, p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Lrz5$a;->d(IIJLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onLoad()V
    .locals 8

    iget-object v0, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore$preloadInterstitialAd$1$2;->this$0:Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;

    invoke-static {v0}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->j(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;)Lcom/hisavana/mediation/ad/TInterstitialAd;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interstitial ad onLoad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mediation_ad_InterstitialAdManagerCore"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore$preloadInterstitialAd$1$2;->this$0:Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;

    invoke-static {v0}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->g(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore$preloadInterstitialAd$1$2;->this$0:Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->m(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;Z)V

    sget-object v2, Lrz5;->a:Lrz5$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore$preloadInterstitialAd$1$2;->this$0:Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;

    invoke-static {p0}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->d(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;)J

    move-result-wide v3

    sub-long v5, v0, v3

    const/4 v7, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual/range {v2 .. v7}, Lrz5$a;->d(IIJLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onShow(I)V
    .locals 2

    const-string p1, "mediation_ad_InterstitialAdManagerCore"

    const-string v0, "Interstitial ad shown"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore$preloadInterstitialAd$1$2;->this$0:Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->k(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;J)V

    iget-object p1, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore$preloadInterstitialAd$1$2;->this$0:Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->p(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;Z)V

    iget-object p1, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore$preloadInterstitialAd$1$2;->this$0:Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;

    invoke-static {p1, v0}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->r(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;Z)V

    iget-object p1, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore$preloadInterstitialAd$1$2;->this$0:Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;

    invoke-static {p1, v0}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->c(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;Z)V

    iget-object p1, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore$preloadInterstitialAd$1$2;->this$0:Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;

    invoke-static {p1}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->h(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore$preloadInterstitialAd$1$2;->this$0:Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;

    invoke-static {p0, v0}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->n(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;Z)V

    sget-object p0, Lrz5;->a:Lrz5$a;

    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lrz5$a;->e(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Interstitial ad show error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mediation_ad_InterstitialAdManagerCore"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore$preloadInterstitialAd$1$2;->this$0:Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->p(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;Z)V

    iget-object v0, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore$preloadInterstitialAd$1$2;->this$0:Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->s(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;Ljava/lang/ref/WeakReference;)V

    iget-object p0, p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore$preloadInterstitialAd$1$2;->this$0:Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;

    invoke-static {p0, v1}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->c(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;Z)V

    sget-object p0, Lrz5;->a:Lrz5$a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, "-10000"

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lrz5$a;->e(ILjava/lang/String;)V

    return-void
.end method
