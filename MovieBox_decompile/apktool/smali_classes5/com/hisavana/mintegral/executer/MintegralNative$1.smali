.class Lcom/hisavana/mintegral/executer/MintegralNative$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/mbridge/msdk/out/NativeListener$NativeAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/mintegral/executer/MintegralNative;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hisavana/mintegral/executer/MintegralNative;


# direct methods
.method constructor <init>(Lcom/hisavana/mintegral/executer/MintegralNative;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/mintegral/executer/MintegralNative$1;->a:Lcom/hisavana/mintegral/executer/MintegralNative;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdClick(Lcom/mbridge/msdk/out/Campaign;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/hisavana/mintegral/executer/MintegralNative$1;->a:Lcom/hisavana/mintegral/executer/MintegralNative;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/hisavana/mintegral/executer/MintegralNative;->h(Lcom/hisavana/mintegral/executer/MintegralNative;)Lcom/hisavana/common/bean/AdNativeInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Lcom/hisavana/common/base/BaseAd;->adClicked(Lcom/hisavana/common/bean/AdNativeInfo;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "mintegral_log"

    .line 15
    .line 16
    const-string v1, "Mintegral Ads onAdClick"

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onAdFramesLoaded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/out/Frame;",
            ">;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public onAdLoadError(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralNative$1;->a:Lcom/hisavana/mintegral/executer/MintegralNative;

    .line 2
    .line 3
    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 4
    .line 5
    const/16 v2, 0x7533

    .line 6
    .line 7
    invoke-direct {v1, v2, p1}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/hisavana/mintegral/executer/MintegralNative;->e(Lcom/hisavana/mintegral/executer/MintegralNative;Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v2, "Mintegral onLoadFailed message\uff1a"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v1, "mintegral_log"

    .line 35
    .line 36
    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public onAdLoaded(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/out/Campaign;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const-string v0, "onAdLoad"

    .line 6
    .line 7
    const-string v1, "mintegral_log"

    .line 8
    .line 9
    invoke-virtual {p2, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    if-eqz p1, :cond_3

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-nez p2, :cond_3

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/4 p2, 0x0

    .line 25
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Lcom/mbridge/msdk/out/Campaign;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralNative$1;->a:Lcom/hisavana/mintegral/executer/MintegralNative;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/hisavana/mintegral/executer/MintegralNative;->a(Lcom/hisavana/mintegral/executer/MintegralNative;)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iget-object v2, p0, Lcom/hisavana/mintegral/executer/MintegralNative$1;->a:Lcom/hisavana/mintegral/executer/MintegralNative;

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/hisavana/common/base/BaseAd;->getTtl()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    iget-object v3, p0, Lcom/hisavana/mintegral/executer/MintegralNative$1;->a:Lcom/hisavana/mintegral/executer/MintegralNative;

    .line 50
    .line 51
    invoke-static {p2, v0, v2, v3}, Lcom/hisavana/mintegral/util/PlatformUtil;->getTAdNativeInfo(Lcom/mbridge/msdk/out/Campaign;IILcom/hisavana/common/base/BaseNative;)Lcom/hisavana/common/bean/TAdNativeInfo;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralNative$1;->a:Lcom/hisavana/mintegral/executer/MintegralNative;

    .line 56
    .line 57
    invoke-static {v0, p2}, Lcom/hisavana/mintegral/executer/MintegralNative;->b(Lcom/hisavana/mintegral/executer/MintegralNative;Lcom/hisavana/common/bean/TAdNativeInfo;)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_0

    .line 62
    .line 63
    iget-object v2, p0, Lcom/hisavana/mintegral/executer/MintegralNative$1;->a:Lcom/hisavana/mintegral/executer/MintegralNative;

    .line 64
    .line 65
    invoke-static {v2}, Lcom/hisavana/mintegral/executer/MintegralNative;->d(Lcom/hisavana/mintegral/executer/MintegralNative;)Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_0
    invoke-static {p2}, Lcom/hisavana/common/utils/AdUtil;->release(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    .line 74
    .line 75
    .line 76
    :goto_1
    move p2, v0

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    iget-object p1, p0, Lcom/hisavana/mintegral/executer/MintegralNative$1;->a:Lcom/hisavana/mintegral/executer/MintegralNative;

    .line 79
    .line 80
    invoke-static {p1}, Lcom/hisavana/mintegral/executer/MintegralNative;->f(Lcom/hisavana/mintegral/executer/MintegralNative;)Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-nez p1, :cond_2

    .line 89
    .line 90
    iget-object p1, p0, Lcom/hisavana/mintegral/executer/MintegralNative$1;->a:Lcom/hisavana/mintegral/executer/MintegralNative;

    .line 91
    .line 92
    invoke-static {p1}, Lcom/hisavana/mintegral/executer/MintegralNative;->g(Lcom/hisavana/mintegral/executer/MintegralNative;)Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-virtual {p1, p2}, Lcom/hisavana/common/base/BaseNative;->adLoaded(Ljava/util/List;)V

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_2
    iget-object p1, p0, Lcom/hisavana/mintegral/executer/MintegralNative$1;->a:Lcom/hisavana/mintegral/executer/MintegralNative;

    .line 101
    .line 102
    new-instance v0, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 103
    .line 104
    const-string v2, "ad filter"

    .line 105
    .line 106
    invoke-direct {v0, p2, v2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-static {p1, v0}, Lcom/hisavana/mintegral/executer/MintegralNative;->c(Lcom/hisavana/mintegral/executer/MintegralNative;Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 110
    .line 111
    .line 112
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string v2, "ad not pass sensitive check or no icon or image filter:"

    .line 122
    .line 123
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    invoke-virtual {p1, v1, p2}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :cond_3
    :goto_2
    return-void
.end method

.method public onLoggingImpression(I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/hisavana/mintegral/executer/MintegralNative$1;->a:Lcom/hisavana/mintegral/executer/MintegralNative;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/hisavana/mintegral/executer/MintegralNative;->h(Lcom/hisavana/mintegral/executer/MintegralNative;)Lcom/hisavana/common/bean/AdNativeInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Lcom/hisavana/common/base/BaseAd;->adImpression(Lcom/hisavana/common/bean/AdNativeInfo;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "mintegral_log"

    .line 15
    .line 16
    const-string v1, "Mintegral Ads onLoggingImpression"

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
