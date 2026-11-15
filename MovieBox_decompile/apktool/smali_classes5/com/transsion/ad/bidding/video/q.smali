.class public final Lcom/transsion/ad/bidding/video/q;
.super Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ad/bidding/video/q$a;
    }
.end annotation


# static fields
.field public static final j:Lcom/transsion/ad/bidding/video/q$a;

.field private static final k:Lkotlin/Lazy;


# instance fields
.field private i:Lcom/hisavana/mediation/ad/TRewardedAd;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/ad/bidding/video/q$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/ad/bidding/video/q$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/ad/bidding/video/q;->j:Lcom/transsion/ad/bidding/video/q$a;

    .line 8
    .line 9
    new-instance v0, Lcom/transsion/ad/bidding/video/p;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/transsion/ad/bidding/video/p;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lcom/transsion/ad/bidding/video/q;->k:Lkotlin/Lazy;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic r()Ljava/util/HashMap;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/ad/bidding/video/q;->t()Ljava/util/HashMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic s()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/ad/bidding/video/q;->k:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final t()Ljava/util/HashMap;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public d()Lfe/b;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->h()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/transsion/ad/bidding/video/q;->i:Lcom/hisavana/mediation/ad/TRewardedAd;

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    new-instance v1, Lcom/hisavana/mediation/ad/TRewardedAd;

    .line 18
    .line 19
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-direct {v1, v2, v0}, Lcom/hisavana/mediation/ad/TRewardedAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/transsion/ad/bidding/video/q;->i:Lcom/hisavana/mediation/ad/TRewardedAd;

    .line 27
    .line 28
    new-instance v0, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;

    .line 29
    .line 30
    invoke-direct {v0}, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p0}, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;->setAdditionalListener(Lcom/hisavana/common/interfacz/TAdditionalListener;)Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;->build()Lcom/hisavana/common/bean/TAdRequestBody;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v1, v0}, Lfe/b;->setRequestBody(Lcom/hisavana/common/bean/TAdRequestBody;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object v0, p0, Lcom/transsion/ad/bidding/video/q;->i:Lcom/hisavana/mediation/ad/TRewardedAd;

    .line 45
    .line 46
    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    return v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ad_v"

    .line 2
    .line 3
    return-object v0
.end method

.method public m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/video/q;->i:Lcom/hisavana/mediation/ad/TRewardedAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lfe/b;->destroy()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/transsion/ad/bidding/video/q;->i:Lcom/hisavana/mediation/ad/TRewardedAd;

    .line 10
    .line 11
    return-void
.end method

.method public p(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;)V
    .locals 2

    .line 1
    const-string p3, "topActivity"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p3, "sceneId"

    .line 7
    .line 8
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p2, Lcom/transsion/ad/strategy/c;->a:Lcom/transsion/ad/strategy/c;

    .line 12
    .line 13
    invoke-virtual {p2, p4}, Lcom/transsion/ad/strategy/c;->d(Ljava/util/Map;)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    iget-object p2, p0, Lcom/transsion/ad/bidding/video/q;->i:Lcom/hisavana/mediation/ad/TRewardedAd;

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    const/4 p3, 0x1

    .line 24
    invoke-virtual {p2, p3}, Lfe/b;->setContainVulgarContent(Z)V

    .line 25
    .line 26
    .line 27
    :cond_0
    const/4 p2, -0x1

    .line 28
    :try_start_0
    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 29
    .line 30
    iget-object p3, p0, Lcom/transsion/ad/bidding/video/q;->i:Lcom/hisavana/mediation/ad/TRewardedAd;

    .line 31
    .line 32
    if-eqz p3, :cond_1

    .line 33
    .line 34
    invoke-virtual {p3, p1}, Lcom/hisavana/mediation/ad/TRewardedAd;->show(Landroid/app/Activity;)V

    .line 35
    .line 36
    .line 37
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->g()Loh/a;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    new-instance p3, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 49
    .line 50
    const-string p4, "tInterstitialAd == null"

    .line 51
    .line 52
    invoke-direct {p3, p2, p4}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance p4, Lcom/hisavana/common/bean/AdditionalInfo;

    .line 56
    .line 57
    invoke-direct {p4}, Lcom/hisavana/common/bean/AdditionalInfo;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p3, p4}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onShowError(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 61
    .line 62
    .line 63
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const/4 p1, 0x0

    .line 67
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    goto :goto_2

    .line 72
    :goto_1
    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 73
    .line 74
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    :goto_2
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-nez p1, :cond_3

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->g()Loh/a;

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    if-eqz p3, :cond_4

    .line 94
    .line 95
    new-instance p4, Lcom/hisavana/common/bean/TAdErrorCode;

    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string v1, "\u7a0b\u5e8f\u5316 show \u5f02\u5e38 it = "

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-direct {p4, p2, p1}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    new-instance p1, Lcom/hisavana/common/bean/AdditionalInfo;

    .line 122
    .line 123
    invoke-direct {p1}, Lcom/hisavana/common/bean/AdditionalInfo;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p3, p4, p1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onShowError(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 127
    .line 128
    .line 129
    :cond_4
    :goto_3
    return-void
.end method
