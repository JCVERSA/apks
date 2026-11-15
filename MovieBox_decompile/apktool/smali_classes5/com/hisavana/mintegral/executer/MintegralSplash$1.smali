.class Lcom/hisavana/mintegral/executer/MintegralSplash$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/mbridge/msdk/out/MBSplashLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/mintegral/executer/MintegralSplash;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hisavana/mintegral/executer/MintegralSplash;


# direct methods
.method constructor <init>(Lcom/hisavana/mintegral/executer/MintegralSplash;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/mintegral/executer/MintegralSplash$1;->a:Lcom/hisavana/mintegral/executer/MintegralSplash;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/hisavana/mintegral/executer/MintegralSplash$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hisavana/mintegral/executer/MintegralSplash$1;->b()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralSplash$1;->a:Lcom/hisavana/mintegral/executer/MintegralSplash;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/hisavana/common/base/BaseAd;->adLoaded()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public isSupportZoomOut(Lcom/mbridge/msdk/out/MBridgeIds;Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "mintegral_log"

    .line 6
    .line 7
    const-string v0, "isSupportZoomOut"

    .line 8
    .line 9
    invoke-virtual {p1, p2, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onLoadFailed(Lcom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/hisavana/mintegral/executer/MintegralSplash$1;->a:Lcom/hisavana/mintegral/executer/MintegralSplash;

    .line 2
    .line 3
    new-instance p3, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "Mintegral Ads failed to load ad with error message: "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/16 v1, 0x7533

    .line 23
    .line 24
    invoke-direct {p3, v1, v0}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p3}, Lcom/hisavana/mintegral/executer/MintegralSplash;->b(Lcom/hisavana/mintegral/executer/MintegralSplash;Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    new-instance p3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v0, "onError msg "

    .line 40
    .line 41
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    const-string p3, "mintegral_log"

    .line 52
    .line 53
    invoke-virtual {p1, p3, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public onLoadSuccessed(Lcom/mbridge/msdk/out/MBridgeIds;I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "mintegral_log"

    .line 6
    .line 7
    const-string v0, "onLoadSuccessed"

    .line 8
    .line 9
    invoke-virtual {p1, p2, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance p1, Landroid/os/Handler;

    .line 13
    .line 14
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance p2, Lcom/hisavana/mintegral/executer/a;

    .line 18
    .line 19
    invoke-direct {p2, p0}, Lcom/hisavana/mintegral/executer/a;-><init>(Lcom/hisavana/mintegral/executer/MintegralSplash$1;)V

    .line 20
    .line 21
    .line 22
    const-wide/16 v0, 0xc8

    .line 23
    .line 24
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method
