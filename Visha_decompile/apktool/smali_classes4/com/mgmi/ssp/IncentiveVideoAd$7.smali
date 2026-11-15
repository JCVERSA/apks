.class Lcom/mgmi/ssp/IncentiveVideoAd$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/widget/IVideoView$OnCompletionListener;


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

    iput-object p1, p0, Lcom/mgmi/ssp/IncentiveVideoAd$7;->a:Lcom/mgmi/ssp/IncentiveVideoAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCompletion"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "e = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mgadlog"

    invoke-static {p2, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mgmi/ssp/IncentiveVideoAd$7;->a:Lcom/mgmi/ssp/IncentiveVideoAd;

    invoke-static {p1}, Lcom/mgmi/ssp/IncentiveVideoAd;->access$500(Lcom/mgmi/ssp/IncentiveVideoAd;)Lcom/mgmi/ads/api/a/b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/mgmi/ssp/IncentiveVideoAd$7;->a:Lcom/mgmi/ssp/IncentiveVideoAd;

    invoke-static {p0}, Lcom/mgmi/ssp/IncentiveVideoAd;->access$500(Lcom/mgmi/ssp/IncentiveVideoAd;)Lcom/mgmi/ads/api/a/b;

    move-result-object p0

    sget-object p1, Lcom/mgmi/ads/api/h;->AD_PLAY_END:Lcom/mgmi/ads/api/h;

    const-string p2, ""

    invoke-interface {p0, p1, p2}, Lcom/mgmi/ads/api/a/b;->a(Lcom/mgmi/ads/api/h;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
