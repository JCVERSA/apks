.class public Lcom/hisavana/mediation/ad/TNativeAd;
.super Lfe/b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfe/b;"
    }
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public C:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

.field public final D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/hisavana/mediation/ad/TAdNativeView;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfe/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lcom/hisavana/mediation/ad/TNativeAd;->A:I

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/hisavana/mediation/ad/TNativeAd;->B:I

    .line 9
    .line 10
    new-instance p1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/hisavana/mediation/ad/TNativeAd;->D:Ljava/util/List;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public a(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)Lee/c;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lfe/b;->d()Lee/i;

    move-result-object v0

    .line 3
    iget v1, p0, Lcom/hisavana/mediation/ad/TNativeAd;->A:I

    invoke-virtual {v0, v1}, Lee/i;->b(I)V

    .line 4
    iget v1, p0, Lcom/hisavana/mediation/ad/TNativeAd;->B:I

    invoke-virtual {v0, v1}, Lee/i;->i(I)V

    .line 5
    iget-object v1, p0, Lcom/hisavana/mediation/ad/TNativeAd;->C:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    invoke-virtual {v0, v1}, Lee/i;->d(Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;)V

    .line 6
    new-instance v1, Lee/n;

    iget-object v2, p0, Lfe/b;->h:Lee/s;

    invoke-direct {v1, p1, v0, v2}, Lee/n;-><init>(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lee/i;Lee/s;)V

    return-object v1
.end method

.method public final a(Lcom/hisavana/common/bean/TAdErrorCode;I)V
    .locals 3

    .line 7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8
    const-string v1, "ad_number"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 9
    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAppId()Ljava/lang/String;

    move-result-object p2

    const-string v1, "cld_app_id"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lfe/b;->a:Ljava/lang/String;

    const-string v1, "cld_code_seat_id"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string p2, "ts"

    invoke-virtual {v0, p2, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "error_code"

    invoke-virtual {v0, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_0
    invoke-static {v0}, Lcom/hisavana/common/tracking/TrackingManager;->trackGetNativeInfo(Landroid/os/Bundle;)V

    return-void
.end method

.method public a(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/16 v1, 0xa

    if-eq p1, v1, :cond_1

    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public bindNativeView(Lcom/hisavana/mediation/ad/TAdNativeView;Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/mediation/ad/ViewBinder;)V
    .locals 1
    .param p1    # Lcom/hisavana/mediation/ad/TAdNativeView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/hisavana/common/bean/TAdNativeInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/hisavana/mediation/ad/ViewBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 19
    const-string v0, ""

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/hisavana/mediation/ad/TNativeAd;->bindNativeView(Lcom/hisavana/mediation/ad/TAdNativeView;Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/mediation/ad/ViewBinder;Ljava/lang/String;)V

    return-void
.end method

.method public bindNativeView(Lcom/hisavana/mediation/ad/TAdNativeView;Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/mediation/ad/ViewBinder;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lcom/hisavana/mediation/ad/TAdNativeView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/hisavana/common/bean/TAdNativeInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/hisavana/mediation/ad/ViewBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->h()Z

    move-result v0

    const-string v1, "TNativeAd"

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string p2, "you should init first"

    invoke-virtual {p1, v1, p2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p2}, Lfe/b;->a(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    .line 4
    iget-boolean v0, p0, Lfe/b;->q:Z

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lcom/hisavana/common/interfacz/ICacheAd;->isMatchVulgarBrand()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string p2, "nativeInfo is match vulgar"

    invoke-virtual {p1, v1, p2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_CODE_SHOW_VULGAR:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, p1}, Lfe/b;->trackingTriggerShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 7
    invoke-virtual {p0, p1}, Lfe/b;->b(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void

    .line 8
    :cond_1
    invoke-virtual {p2, p4}, Lcom/hisavana/common/bean/TAdNativeInfo;->setSceneToken(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, p4}, Lfe/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/hisavana/common/bean/TAdNativeInfo;->setSceneId(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Lcom/hisavana/common/bean/TAdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    move-result-object p4

    if-eqz p4, :cond_2

    .line 11
    invoke-virtual {p4}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p4}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    move-result-object v0

    iget-object v0, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p4}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    move-result-object v0

    iget-object v0, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p2}, Lcom/hisavana/common/bean/TAdNativeInfo;->getFillSource()I

    move-result v1

    const-string v2, "filling_source"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 13
    invoke-virtual {p4}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    move-result-object p4

    iget-object p4, p4, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    const-string v0, "is_contain_vulgar"

    iget-boolean v1, p0, Lfe/b;->q:Z

    invoke-virtual {p4, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 14
    :cond_2
    invoke-virtual {p0}, Lfe/b;->g()Lee/c;

    move-result-object p4

    .line 15
    instance-of v0, p4, Lee/n;

    if-eqz v0, :cond_3

    .line 16
    check-cast p4, Lee/n;

    iget-object v0, p0, Lfe/b;->h:Lee/s;

    invoke-virtual {p4, p2, v0}, Lee/n;->r0(Lcom/hisavana/common/bean/TAdNativeInfo;Lee/s;)V

    .line 17
    :cond_3
    invoke-virtual {p1, p2, p3}, Lcom/hisavana/mediation/ad/TAdNativeView;->a(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/mediation/ad/ViewBinder;)V

    .line 18
    iget-object p2, p0, Lcom/hisavana/mediation/ad/TNativeAd;->D:Ljava/util/List;

    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(I)I
    .locals 1

    .line 1
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    const p1, 0x7fffffff

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public c()Z
    .locals 1

    .line 2
    const/4 v0, 0x1

    return v0
.end method

.method public clearCurrentAd()V
    .locals 0

    .line 1
    invoke-super {p0}, Lfe/b;->clearCurrentAd()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public destroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lfe/b;->destroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/hisavana/mediation/ad/TNativeAd;->D:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/hisavana/mediation/ad/TAdNativeView;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/hisavana/mediation/ad/TAdNativeView;->release()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/hisavana/mediation/ad/TNativeAd;->D:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public getNativeAdInfo()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hisavana/common/bean/TAdNativeInfo;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lfe/b;->m:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_REQUEST_TIME_OUT:Lcom/hisavana/common/bean/TAdErrorCode;

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/hisavana/mediation/ad/TNativeAd;->a(Lcom/hisavana/common/bean/TAdErrorCode;I)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    goto/16 :goto_2

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lfe/b;->a:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v0}, Lee/h;->a(Ljava/lang/String;)Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    const/4 v2, -0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {v0}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    :goto_0
    invoke-virtual {p0, v2}, Lfe/b;->setCodeSeatType(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lfe/b;->b(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)Lcom/hisavana/common/bean/TAdErrorCode;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0, v2, v1}, Lcom/hisavana/mediation/ad/TNativeAd;->a(Lcom/hisavana/common/bean/TAdErrorCode;I)V

    .line 48
    .line 49
    .line 50
    new-instance v0, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_2
    invoke-virtual {p0}, Lfe/b;->g()Lee/c;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    if-nez v2, :cond_3

    .line 61
    .line 62
    new-instance v0, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_3
    if-nez v0, :cond_4

    .line 69
    .line 70
    new-instance v0, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .line 74
    .line 75
    return-object v0

    .line 76
    :cond_4
    invoke-virtual {v2}, Lee/c;->V()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    invoke-virtual {v0}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    invoke-virtual {p0, v4}, Lcom/hisavana/mediation/ad/TNativeAd;->c(I)I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    invoke-virtual {v0}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdRequestCount()Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    const/4 v4, 0x1

    .line 105
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    check-cast v2, Lee/n;

    .line 110
    .line 111
    iget-boolean v5, p0, Lfe/b;->q:Z

    .line 112
    .line 113
    invoke-virtual {v2, v3, v0, v4, v5}, Lee/n;->q0(IIZZ)Ljava/util/ArrayList;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    if-eqz v0, :cond_5

    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-nez v2, :cond_5

    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    const/4 v2, 0x0

    .line 130
    invoke-virtual {p0, v2, v1}, Lcom/hisavana/mediation/ad/TNativeAd;->a(Lcom/hisavana/common/bean/TAdErrorCode;I)V

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_5
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->checkNetworkState(Z)Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_6

    .line 139
    .line 140
    sget-object v2, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_TRIGGER_SHOW_ONLINE_NO_AD:Lcom/hisavana/common/bean/TAdErrorCode;

    .line 141
    .line 142
    invoke-virtual {p0, v2, v1}, Lcom/hisavana/mediation/ad/TNativeAd;->a(Lcom/hisavana/common/bean/TAdErrorCode;I)V

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_6
    sget-object v2, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_RIGGER_SHOW_OFFLINE_NO_AD:Lcom/hisavana/common/bean/TAdErrorCode;

    .line 147
    .line 148
    invoke-virtual {p0, v2, v1}, Lcom/hisavana/mediation/ad/TNativeAd;->a(Lcom/hisavana/common/bean/TAdErrorCode;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .line 150
    .line 151
    :goto_1
    return-object v0

    .line 152
    :goto_2
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    const-string v2, "TNativeAd"

    .line 161
    .line 162
    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    new-instance v0, Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .line 169
    .line 170
    return-object v0
.end method

.method public getNativeInfoSize()I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lfe/b;->a:Ljava/lang/String;

    .line 3
    .line 4
    invoke-static {v1}, Lee/h;->a(Ljava/lang/String;)Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {p0, v2}, Lfe/b;->setCodeSeatType(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lfe/b;->g()Lee/c;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    return v0

    .line 29
    :cond_1
    invoke-virtual {v2}, Lee/c;->V()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    invoke-virtual {p0, v4}, Lcom/hisavana/mediation/ad/TNativeAd;->c(I)I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdRequestCount()Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    const/4 v4, 0x1

    .line 58
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    check-cast v2, Lee/n;

    .line 63
    .line 64
    iget-boolean v4, p0, Lfe/b;->q:Z

    .line 65
    .line 66
    invoke-virtual {v2, v3, v1, v0, v4}, Lee/n;->q0(IIZZ)Ljava/util/ArrayList;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-nez v1, :cond_2

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 74
    .line 75
    .line 76
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :catchall_0
    :goto_0
    return v0
.end method

.method public setAdMobPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/hisavana/mediation/ad/TNativeAd;->A:I

    .line 2
    .line 3
    return-void
.end method

.method public setAdmobMediaAspectRatio(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/hisavana/mediation/ad/TNativeAd;->B:I

    .line 2
    .line 3
    return-void
.end method

.method public setRecommendReqInfo(Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/mediation/ad/TNativeAd;->C:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    .line 2
    .line 3
    return-void
.end method
