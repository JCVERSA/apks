.class Lcom/mgmi/ssp/IncentiveVideoAd$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/widget/IVideoView$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgmi/ssp/IncentiveVideoAd;->initAdInnerPlayerListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgmi/ssp/IncentiveVideoAd;


# direct methods
.method public constructor <init>(Lcom/mgmi/ssp/IncentiveVideoAd;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ssp/IncentiveVideoAd$6;->a:Lcom/mgmi/ssp/IncentiveVideoAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(II)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mgadlog"

    invoke-static {v1, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mgmi/ssp/IncentiveVideoAd$6;->a:Lcom/mgmi/ssp/IncentiveVideoAd;

    invoke-static {v0}, Lcom/mgmi/ssp/IncentiveVideoAd;->access$500(Lcom/mgmi/ssp/IncentiveVideoAd;)Lcom/mgmi/ads/api/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgmi/ssp/IncentiveVideoAd$6;->a:Lcom/mgmi/ssp/IncentiveVideoAd;

    invoke-static {v0}, Lcom/mgmi/ssp/IncentiveVideoAd;->access$500(Lcom/mgmi/ssp/IncentiveVideoAd;)Lcom/mgmi/ads/api/a/b;

    move-result-object v0

    sget-object v1, Lcom/mgmi/ads/api/h;->AD_PLAY_ERROR:Lcom/mgmi/ads/api/h;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "errmsg what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "extra="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/mgmi/ads/api/a/b;->a(Lcom/mgmi/ads/api/h;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/mgmi/ssp/IncentiveVideoAd$6;->a:Lcom/mgmi/ssp/IncentiveVideoAd;

    invoke-static {p1}, Lcom/mgmi/ssp/IncentiveVideoAd;->access$100(Lcom/mgmi/ssp/IncentiveVideoAd;)Lcom/mgmi/ssp/IncentiveVideoListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/mgmi/ssp/IncentiveVideoAd$6;->a:Lcom/mgmi/ssp/IncentiveVideoAd;

    invoke-static {p0}, Lcom/mgmi/ssp/IncentiveVideoAd;->access$100(Lcom/mgmi/ssp/IncentiveVideoAd;)Lcom/mgmi/ssp/IncentiveVideoListener;

    move-result-object p0

    new-instance p1, Lcom/mgmi/ssp/AdError;

    const/16 p2, 0x138b

    const-string v0, "what + extra"

    invoke-direct {p1, p2, v0}, Lcom/mgmi/ssp/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/mgmi/ssp/IncentiveVideoListener;->onAdError(Lcom/mgmi/ssp/AdError;)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
