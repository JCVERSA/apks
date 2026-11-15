.class public final Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;
.super Lcom/transsion/ad/bidding/base/x;
.source "source.java"


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/util/Map;

.field private f:Loh/a;

.field private g:Landroid/content/Context;

.field private h:Lcom/hisavana/mediation/ad/TBannerView;


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

.method public static final synthetic a(Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;)Lcom/hisavana/mediation/ad/TBannerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->h:Lcom/hisavana/mediation/ad/TBannerView;

    .line 2
    .line 3
    return-object p0
.end method

.method private final e()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->g:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method private final f()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->e:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lkotlin/collections/MapsKt;->h()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method private final g()Loh/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->f:Loh/a;

    .line 2
    .line 3
    return-object v0
.end method

.method private final i(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->g()Loh/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 8
    .line 9
    const/16 v2, 0x67

    .line 10
    .line 11
    invoke-direct {v1, v2, p1}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Lcom/hisavana/common/bean/AdditionalInfo;

    .line 15
    .line 16
    invoke-direct {p1}, Lcom/hisavana/common/bean/AdditionalInfo;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, p1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onLoadFailure(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->h:Lcom/hisavana/mediation/ad/TBannerView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v1

    .line 12
    :goto_0
    instance-of v2, v0, Landroid/view/ViewGroup;

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    check-cast v0, Landroid/view/ViewGroup;

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move-object v0, v1

    .line 20
    :goto_1
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget-object v2, p0, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->h:Lcom/hisavana/mediation/ad/TBannerView;

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    :cond_2
    iget-object v0, p0, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->h:Lcom/hisavana/mediation/ad/TBannerView;

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/hisavana/mediation/ad/TBannerView;->destroy()V

    .line 32
    .line 33
    .line 34
    :cond_3
    iput-object v1, p0, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->h:Lcom/hisavana/mediation/ad/TBannerView;

    .line 35
    .line 36
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
    new-instance v4, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider$enterScene$1;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {v4, p0, p1, v0}, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider$enterScene$1;-><init>(Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

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

.method public final d()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->h:Lcom/hisavana/mediation/ad/TBannerView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSceneId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->d:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method public final h()V
    .locals 4

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
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "HiSavana \u5e7f\u544aSDK\u672a\u521d\u59cb\u5316"

    .line 10
    .line 11
    invoke-direct {p0, v0}, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->i(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    sget-object v0, Lcom/transsion/ad/scene/c;->a:Lcom/transsion/ad/scene/c;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->getSceneId()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/transsion/ad/scene/c;->a(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const-string v0, "\u5e7f\u544a\u4f4d\u5df2\u5173\u95ed"

    .line 28
    .line 29
    invoke-direct {p0, v0}, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->i(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->getSceneId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    const-string v0, "sceneId is empty"

    .line 44
    .line 45
    invoke-direct {p0, v0}, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->i(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    invoke-direct {p0}, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->e()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-nez v0, :cond_3

    .line 54
    .line 55
    const-string v0, "context is null"

    .line 56
    .line 57
    invoke-direct {p0, v0}, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->i(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_3
    iget-object v0, p0, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->h:Lcom/hisavana/mediation/ad/TBannerView;

    .line 62
    .line 63
    if-nez v0, :cond_8

    .line 64
    .line 65
    new-instance v0, Lcom/hisavana/mediation/ad/TBannerView;

    .line 66
    .line 67
    invoke-direct {p0}, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->e()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-direct {v0, v1}, Lcom/hisavana/mediation/ad/TBannerView;-><init>(Landroid/content/Context;)V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->h:Lcom/hisavana/mediation/ad/TBannerView;

    .line 75
    .line 76
    sget-object v0, Lcom/transsion/ad/strategy/c;->a:Lcom/transsion/ad/strategy/c;

    .line 77
    .line 78
    invoke-direct {p0}, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->f()Ljava/util/Map;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Lcom/transsion/ad/strategy/c;->d(Ljava/util/Map;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    const/4 v1, 0x1

    .line 87
    if-eqz v0, :cond_4

    .line 88
    .line 89
    iget-object v0, p0, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->h:Lcom/hisavana/mediation/ad/TBannerView;

    .line 90
    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lcom/hisavana/mediation/ad/TBannerView;->setContainVulgarContent(Z)V

    .line 94
    .line 95
    .line 96
    :cond_4
    iget-object v0, p0, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->h:Lcom/hisavana/mediation/ad/TBannerView;

    .line 97
    .line 98
    if-eqz v0, :cond_5

    .line 99
    .line 100
    const/4 v2, 0x2

    .line 101
    invoke-virtual {v0, v2}, Lcom/hisavana/mediation/ad/TBannerView;->setAdSize(I)V

    .line 102
    .line 103
    .line 104
    :cond_5
    iget-object v0, p0, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->h:Lcom/hisavana/mediation/ad/TBannerView;

    .line 105
    .line 106
    if-eqz v0, :cond_6

    .line 107
    .line 108
    sget-object v2, Lcom/transsion/ad/scene/a;->a:Lcom/transsion/ad/scene/a;

    .line 109
    .line 110
    iget-object v3, p0, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->d:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v2, v3}, Lcom/transsion/ad/scene/a;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v0, v2}, Lcom/hisavana/mediation/ad/TBannerView;->setAdUnitId(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :cond_6
    iget-object v0, p0, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->h:Lcom/hisavana/mediation/ad/TBannerView;

    .line 120
    .line 121
    if-eqz v0, :cond_7

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Lcom/hisavana/mediation/ad/TBannerView;->setHideAdCloseView(Z)V

    .line 124
    .line 125
    .line 126
    :cond_7
    new-instance v0, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;

    .line 127
    .line 128
    invoke-direct {v0}, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, p0}, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;->setAdditionalListener(Lcom/hisavana/common/interfacz/TAdditionalListener;)Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;->build()Lcom/hisavana/common/bean/TAdRequestBody;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->h:Lcom/hisavana/mediation/ad/TBannerView;

    .line 140
    .line 141
    if-eqz v1, :cond_8

    .line 142
    .line 143
    invoke-virtual {v1, v0}, Lcom/hisavana/mediation/ad/TBannerView;->setRequestBody(Lcom/hisavana/common/bean/TAdRequestBody;)V

    .line 144
    .line 145
    .line 146
    :cond_8
    iget-object v0, p0, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->h:Lcom/hisavana/mediation/ad/TBannerView;

    .line 147
    .line 148
    if-eqz v0, :cond_9

    .line 149
    .line 150
    invoke-virtual {v0}, Lcom/hisavana/mediation/ad/TBannerView;->loadAd()V

    .line 151
    .line 152
    .line 153
    :cond_9
    return-void
.end method

.method public final j(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->g:Landroid/content/Context;

    .line 2
    .line 3
    return-void
.end method

.method public final k(Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->e:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public final l(Loh/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->f:Loh/a;

    .line 2
    .line 3
    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-void
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
    invoke-direct {p0}, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->g()Loh/a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onClick(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 16
    .line 17
    .line 18
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
    invoke-direct {p0}, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->g()Loh/a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onLoadFailure(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 16
    .line 17
    .line 18
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
    invoke-direct {p0}, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->g()Loh/a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onLoadSuccess(Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 16
    .line 17
    .line 18
    :cond_0
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
    invoke-direct {p0}, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->g()Loh/a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onShow(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 16
    .line 17
    .line 18
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
    invoke-direct {p0}, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->g()Loh/a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onShowError(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
