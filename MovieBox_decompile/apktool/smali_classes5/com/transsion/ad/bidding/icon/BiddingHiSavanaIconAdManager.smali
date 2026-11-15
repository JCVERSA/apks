.class public final Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;
.super Lcom/transsion/ad/bidding/base/x;
.source "source.java"


# instance fields
.field private d:Z

.field private e:Lcom/hisavana/mediation/ad/TNativeAd;

.field private f:Loh/a;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/x;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic a(Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;)Lcom/hisavana/mediation/ad/TNativeAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->e:Lcom/hisavana/mediation/ad/TNativeAd;

    .line 2
    .line 3
    return-object p0
.end method

.method private final getClassTag()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getSimpleName(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->f:Loh/a;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->e:Lcom/hisavana/mediation/ad/TNativeAd;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/hisavana/mediation/ad/TNativeAd;->destroy()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iput-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->e:Lcom/hisavana/mediation/ad/TNativeAd;

    .line 12
    .line 13
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "sceneId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v4, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager$enterScene$1;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {v4, p0, p1, v0}, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager$enterScene$1;-><init>(Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    const/4 v5, 0x3

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final d()Lcom/hisavana/mediation/ad/TNativeAd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->e:Lcom/hisavana/mediation/ad/TNativeAd;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()V
    .locals 10

    .line 1
    sget-object v0, Lcom/transsion/ad/hi/HiSavanaAdManager;->a:Lcom/transsion/ad/hi/HiSavanaAdManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/ad/hi/HiSavanaAdManager;->f()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x67

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->f:Loh/a;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v2, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 16
    .line 17
    const-string v3, "\u5e7f\u544aSDK\u6ca1\u6709\u521d\u59cb\u5316"

    .line 18
    .line 19
    invoke-direct {v2, v1, v3}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lcom/hisavana/common/bean/AdditionalInfo;

    .line 23
    .line 24
    invoke-direct {v1}, Lcom/hisavana/common/bean/AdditionalInfo;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onLoadFailure(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void

    .line 31
    :cond_1
    sget-object v0, Lcom/transsion/ad/scene/a;->a:Lcom/transsion/ad/scene/a;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->getSceneId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v0, v2}, Lcom/transsion/ad/scene/a;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    const-string v0, ""

    .line 44
    .line 45
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_4

    .line 50
    .line 51
    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->f:Loh/a;

    .line 52
    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    new-instance v2, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 56
    .line 57
    const-string v3, "\u5f53\u524d\u573a\u666f\u914d\u7f6e\u4e0d\u5b58\u5728"

    .line 58
    .line 59
    invoke-direct {v2, v1, v3}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    new-instance v1, Lcom/hisavana/common/bean/AdditionalInfo;

    .line 63
    .line 64
    invoke-direct {v1}, Lcom/hisavana/common/bean/AdditionalInfo;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v2, v1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onLoadFailure(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 68
    .line 69
    .line 70
    :cond_3
    return-void

    .line 71
    :cond_4
    iget-boolean v1, p0, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->d:Z

    .line 72
    .line 73
    if-eqz v1, :cond_5

    .line 74
    .line 75
    return-void

    .line 76
    :cond_5
    const/4 v1, 0x1

    .line 77
    iput-boolean v1, p0, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->d:Z

    .line 78
    .line 79
    iget-object v1, p0, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->e:Lcom/hisavana/mediation/ad/TNativeAd;

    .line 80
    .line 81
    if-nez v1, :cond_6

    .line 82
    .line 83
    new-instance v1, Lcom/hisavana/mediation/ad/TNativeAd;

    .line 84
    .line 85
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-direct {v1, v2, v0}, Lcom/hisavana/mediation/ad/TNativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iput-object v1, p0, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->e:Lcom/hisavana/mediation/ad/TNativeAd;

    .line 93
    .line 94
    new-instance v2, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;

    .line 95
    .line 96
    invoke-direct {v2}, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, p0}, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;->setAdditionalListener(Lcom/hisavana/common/interfacz/TAdditionalListener;)Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v2}, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;->build()Lcom/hisavana/common/bean/TAdRequestBody;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v1, v2}, Lfe/b;->setRequestBody(Lcom/hisavana/common/bean/TAdRequestBody;)V

    .line 108
    .line 109
    .line 110
    sget-object v3, Lxh/a;->a:Lxh/a;

    .line 111
    .line 112
    invoke-direct {p0}, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->getClassTag()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v1, " --> loadAd() --> ==================== mPlacementId = "

    .line 125
    .line 126
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v0, " --> create TNativeAd() =================== "

    .line 133
    .line 134
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    const/4 v8, 0x4

    .line 142
    const/4 v9, 0x0

    .line 143
    const-string v4, "ad_ic"

    .line 144
    .line 145
    const/4 v6, 0x0

    .line 146
    const/4 v7, 0x0

    .line 147
    invoke-static/range {v3 .. v9}, Lxh/a;->m(Lxh/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    :cond_6
    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->e:Lcom/hisavana/mediation/ad/TNativeAd;

    .line 151
    .line 152
    if-eqz v0, :cond_7

    .line 153
    .line 154
    invoke-virtual {v0}, Lfe/b;->loadAd()V

    .line 155
    .line 156
    .line 157
    :cond_7
    return-void
.end method

.method public final f(Loh/a;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->f:Loh/a;

    .line 7
    .line 8
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "sceneId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->g:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final getSceneId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public onClick(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 1

    .line 1
    const-string v0, "additionalInfo"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onClick(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->f:Loh/a;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onClick(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public onLoadFailure(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 1

    .line 1
    const-string v0, "additionalInfo"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onLoadFailure(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->f:Loh/a;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onLoadFailure(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public onLoadSuccess(Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 1

    .line 1
    const-string v0, "additionalInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onLoadSuccess(Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->e:Lcom/hisavana/mediation/ad/TNativeAd;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/hisavana/mediation/ad/TNativeAd;->getNativeAdInfo()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->f:Loh/a;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Loh/a;->q(Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public onShow(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 1

    .line 1
    const-string v0, "additionalInfo"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onShow(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->f:Loh/a;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onShow(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public onShowError(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 1

    .line 1
    const-string v0, "additionalInfo"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onShowError(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->f:Loh/a;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onShowError(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
