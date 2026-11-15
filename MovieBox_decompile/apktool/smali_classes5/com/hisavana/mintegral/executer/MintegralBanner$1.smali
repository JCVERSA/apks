.class Lcom/hisavana/mintegral/executer/MintegralBanner$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/mbridge/msdk/out/BannerAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/mintegral/executer/MintegralBanner;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hisavana/mintegral/executer/MintegralBanner;


# direct methods
.method constructor <init>(Lcom/hisavana/mintegral/executer/MintegralBanner;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/mintegral/executer/MintegralBanner$1;->a:Lcom/hisavana/mintegral/executer/MintegralBanner;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public closeFullScreen(Lcom/mbridge/msdk/out/MBridgeIds;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "mintegral_log"

    .line 6
    .line 7
    const-string v1, "Mintegral Ads closeFullScreen"

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onClick(Lcom/mbridge/msdk/out/MBridgeIds;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "mintegral_log"

    .line 6
    .line 7
    const-string v1, "Mintegral Ads onClick"

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/hisavana/mintegral/executer/MintegralBanner$1;->a:Lcom/hisavana/mintegral/executer/MintegralBanner;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Lcom/hisavana/common/base/BaseAd;->adClicked(Lcom/hisavana/common/bean/AdNativeInfo;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onCloseBanner(Lcom/mbridge/msdk/out/MBridgeIds;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "mintegral_log"

    .line 6
    .line 7
    const-string v1, "Mintegral Ads onCloseBanner"

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/hisavana/mintegral/executer/MintegralBanner$1;->a:Lcom/hisavana/mintegral/executer/MintegralBanner;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/hisavana/mintegral/executer/MintegralBanner;->a(Lcom/hisavana/mintegral/executer/MintegralBanner;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onLeaveApp(Lcom/mbridge/msdk/out/MBridgeIds;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "mintegral_log"

    .line 6
    .line 7
    const-string v1, "Mintegral Ads onLeaveApp"

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onLoadFailed(Lcom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/hisavana/mintegral/executer/MintegralBanner$1;->a:Lcom/hisavana/mintegral/executer/MintegralBanner;

    .line 2
    .line 3
    new-instance v0, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 4
    .line 5
    const/16 v1, 0x7533

    .line 6
    .line 7
    invoke-direct {v0, v1, p2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lcom/hisavana/mintegral/executer/MintegralBanner;->b(Lcom/hisavana/mintegral/executer/MintegralBanner;Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v1, "Mintegral onLoadFailed message\uff1a"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    const-string v0, "mintegral_log"

    .line 35
    .line 36
    invoke-virtual {p1, v0, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public onLoadSuccessed(Lcom/mbridge/msdk/out/MBridgeIds;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "mintegral_log"

    .line 6
    .line 7
    const-string v1, "Mintegral Ads onLoadSuccessed"

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/hisavana/mintegral/executer/MintegralBanner$1;->a:Lcom/hisavana/mintegral/executer/MintegralBanner;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/hisavana/common/base/BaseBanner;->adLoaded()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onLogImpression(Lcom/mbridge/msdk/out/MBridgeIds;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "mintegral_log"

    .line 6
    .line 7
    const-string v1, "Mintegral Ads onAdShowed"

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/hisavana/mintegral/executer/MintegralBanner$1;->a:Lcom/hisavana/mintegral/executer/MintegralBanner;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Lcom/hisavana/common/base/BaseAd;->adImpression(Lcom/hisavana/common/bean/AdNativeInfo;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public showFullScreen(Lcom/mbridge/msdk/out/MBridgeIds;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "mintegral_log"

    .line 6
    .line 7
    const-string v1, "Mintegral Ads showFullScreen"

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
