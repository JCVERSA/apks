.class Lcom/mgmi/ssp/IncentiveVideoAd$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/widget/IVideoView$OnPauseListener;


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

    iput-object p1, p0, Lcom/mgmi/ssp/IncentiveVideoAd$4;->a:Lcom/mgmi/ssp/IncentiveVideoAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 2

    const-string v0, "mgadlog"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mgmi/ssp/IncentiveVideoAd$4;->a:Lcom/mgmi/ssp/IncentiveVideoAd;

    invoke-static {v0}, Lcom/mgmi/ssp/IncentiveVideoAd;->access$500(Lcom/mgmi/ssp/IncentiveVideoAd;)Lcom/mgmi/ads/api/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgmi/ssp/IncentiveVideoAd$4;->a:Lcom/mgmi/ssp/IncentiveVideoAd;

    invoke-static {p0}, Lcom/mgmi/ssp/IncentiveVideoAd;->access$500(Lcom/mgmi/ssp/IncentiveVideoAd;)Lcom/mgmi/ads/api/a/b;

    move-result-object p0

    sget-object v0, Lcom/mgmi/ads/api/h;->AD_ONPAUSE:Lcom/mgmi/ads/api/h;

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Lcom/mgmi/ads/api/a/b;->a(Lcom/mgmi/ads/api/h;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
