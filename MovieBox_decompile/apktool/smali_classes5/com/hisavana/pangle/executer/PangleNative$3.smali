.class Lcom/hisavana/pangle/executer/PangleNative$3;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$PAGInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/pangle/executer/PangleNative;->initNative()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hisavana/pangle/executer/PangleNative;


# direct methods
.method constructor <init>(Lcom/hisavana/pangle/executer/PangleNative;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/pangle/executer/PangleNative$3;->a:Lcom/hisavana/pangle/executer/PangleNative;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleNative$3;->a:Lcom/hisavana/pangle/executer/PangleNative;

    .line 2
    .line 3
    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "Pangle Ads failed to load ad error with : PAGSdk.isInitSuccess() "

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk;->isInitSuccess()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-direct {v1, p1, v2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/hisavana/pangle/executer/PangleNative;->h(Lcom/hisavana/pangle/executer/PangleNative;Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v2, "init onError code\uff1a"

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p1, "\uff0cmessage\uff1a"

    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const-string p2, "pangle_log"

    .line 62
    .line 63
    invoke-virtual {v0, p2, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public success()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleNative$3;->a:Lcom/hisavana/pangle/executer/PangleNative;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hisavana/pangle/executer/PangleNative;->e(Lcom/hisavana/pangle/executer/PangleNative;)Lcom/hisavana/common/bean/Network;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleNative$3;->a:Lcom/hisavana/pangle/executer/PangleNative;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/hisavana/pangle/executer/PangleNative;->g(Lcom/hisavana/pangle/executer/PangleNative;)Lcom/hisavana/common/bean/Network;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleNative$3;->a:Lcom/hisavana/pangle/executer/PangleNative;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/hisavana/pangle/executer/PangleNative;->i(Lcom/hisavana/pangle/executer/PangleNative;)Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdLoadListener;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleNative$3;->a:Lcom/hisavana/pangle/executer/PangleNative;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/hisavana/pangle/executer/PangleNative;->k(Lcom/hisavana/pangle/executer/PangleNative;)Lcom/hisavana/common/bean/Network;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v1, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeRequest;

    .line 45
    .line 46
    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeRequest;-><init>()V

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lcom/hisavana/pangle/executer/PangleNative$3;->a:Lcom/hisavana/pangle/executer/PangleNative;

    .line 50
    .line 51
    invoke-static {v2}, Lcom/hisavana/pangle/executer/PangleNative;->i(Lcom/hisavana/pangle/executer/PangleNative;)Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdLoadListener;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;->loadAd(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeRequest;Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdLoadListener;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleNative$3;->a:Lcom/hisavana/pangle/executer/PangleNative;

    .line 60
    .line 61
    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 62
    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v3, "Pangle Ads failed to load ad error with : PAGSdk.isInitSuccess() "

    .line 69
    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk;->isInitSuccess()Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    const/16 v3, 0x7533

    .line 85
    .line 86
    invoke-direct {v1, v3, v2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v0, v1}, Lcom/hisavana/pangle/executer/PangleNative;->f(Lcom/hisavana/pangle/executer/PangleNative;Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method
