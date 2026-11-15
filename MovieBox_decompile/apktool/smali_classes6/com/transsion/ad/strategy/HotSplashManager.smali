.class public final Lcom/transsion/ad/strategy/HotSplashManager;
.super Loh/a;
.source "source.java"


# static fields
.field public static final d:Lcom/transsion/ad/strategy/HotSplashManager;

.field private static e:J

.field private static f:Z

.field private static g:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

.field private static final h:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/ad/strategy/HotSplashManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/ad/strategy/HotSplashManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/ad/strategy/HotSplashManager;->d:Lcom/transsion/ad/strategy/HotSplashManager;

    .line 7
    .line 8
    new-instance v0, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/transsion/ad/strategy/HotSplashManager;->h:Landroid/os/Handler;

    .line 18
    .line 19
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic A(Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/transsion/ad/strategy/HotSplashManager;->g:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 2
    .line 3
    return-void
.end method

.method private final B()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/a;->b()Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "topAct is null"

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    const-string v0, "topAct?.isDestroyed == true"

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_1
    sget-object v1, Lci/o;->a:Lci/o;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Lci/o;->a(Landroid/content/Context;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_7

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lci/o;->b(Landroid/content/Context;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    sget-object v0, Lrh/c;->a:Lrh/c;

    .line 35
    .line 36
    invoke-virtual {v0}, Lrh/c;->a()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1}, Lrh/c;->b(Z)V

    .line 44
    .line 45
    .line 46
    const-string v0, "\u5168\u641c\u7684\u65f6\u5019\u70ed\u542f\u52a8\u4e0d\u5c55\u793a\u70ed\u542f\u52a8\u5e7f\u544a"

    .line 47
    .line 48
    return-object v0

    .line 49
    :cond_3
    sget-wide v0, Lcom/transsion/ad/strategy/HotSplashManager;->e:J

    .line 50
    .line 51
    const-wide/16 v2, 0x0

    .line 52
    .line 53
    cmp-long v0, v0, v2

    .line 54
    .line 55
    if-gtz v0, :cond_4

    .line 56
    .line 57
    const-string v0, "inBackgroundTime <= 0"

    .line 58
    .line 59
    return-object v0

    .line 60
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 61
    .line 62
    .line 63
    move-result-wide v0

    .line 64
    sget-wide v2, Lcom/transsion/ad/strategy/HotSplashManager;->e:J

    .line 65
    .line 66
    sub-long/2addr v0, v2

    .line 67
    sget-object v2, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    .line 68
    .line 69
    sget-object v3, Lrh/d;->a:Lrh/d;

    .line 70
    .line 71
    invoke-virtual {v3}, Lrh/d;->a()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v2, v3}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    if-eqz v2, :cond_5

    .line 80
    .line 81
    const-string v3, "hotSplashInterval"

    .line 82
    .line 83
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    if-eqz v2, :cond_5

    .line 88
    .line 89
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    goto :goto_0

    .line 94
    :cond_5
    const/4 v2, 0x1

    .line 95
    :goto_0
    const v3, 0xea60

    .line 96
    .line 97
    .line 98
    mul-int/2addr v2, v3

    .line 99
    int-to-long v3, v2

    .line 100
    cmp-long v3, v0, v3

    .line 101
    .line 102
    if-gez v3, :cond_6

    .line 103
    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string v4, "\u4e0d\u6ee1\u8db3\u6700\u5c0f\u95f4\u9694\u65f6\u95f4 -- background_time = "

    .line 110
    .line 111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v0, " --- TIME_IN_THE_BACKGROUND = "

    .line 118
    .line 119
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    return-object v0

    .line 130
    :cond_6
    const-string v0, ""

    .line 131
    .line 132
    return-object v0

    .line 133
    :cond_7
    :goto_1
    const-string v0, "\u5904\u7406App\u5728\u9501\u5c4f\u72b6\u6001\u4e0b\u88ab\u62c9\u6d3b"

    .line 134
    .line 135
    return-object v0
.end method

.method private final C()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/strategy/HotSplashManager;->B()Ljava/lang/String;

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
    if-nez v1, :cond_0

    .line 10
    .line 11
    sget-object v1, Lxh/a;->a:Lxh/a;

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/transsion/ad/strategy/HotSplashManager;->getClassTag()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, " --> loadHotSplashAd() --> msg = "

    .line 26
    .line 27
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v2, 0x6

    .line 38
    const/4 v3, 0x0

    .line 39
    const-string v4, "ad_int"

    .line 40
    .line 41
    invoke-virtual {v1, v4, v0, v2, v3}, Lxh/a;->l(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    sget-object v0, Lcom/transsion/ad/strategy/HotSplashManager;->g:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    new-instance v4, Lcom/transsion/ad/strategy/HotSplashManager$loadHotSplashAd$1;

    .line 59
    .line 60
    const/4 v0, 0x0

    .line 61
    invoke-direct {v4, v0}, Lcom/transsion/ad/strategy/HotSplashManager$loadHotSplashAd$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 62
    .line 63
    .line 64
    const/4 v5, 0x3

    .line 65
    const/4 v6, 0x0

    .line 66
    const/4 v2, 0x0

    .line 67
    const/4 v3, 0x0

    .line 68
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method private static final E()V
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/ad/strategy/HotSplashManager;->d:Lcom/transsion/ad/strategy/HotSplashManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/ad/strategy/HotSplashManager;->C()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final G()V
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/ad/strategy/HotSplashManager;->g:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->U()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    sput-object v0, Lcom/transsion/ad/strategy/HotSplashManager;->g:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 10
    .line 11
    return-void
.end method

.method private final getClassTag()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/transsion/ad/strategy/HotSplashManager;

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

.method public static synthetic x()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/transsion/ad/strategy/HotSplashManager;->E()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic y(Lcom/transsion/ad/strategy/HotSplashManager;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/strategy/HotSplashManager;->getClassTag()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic z()Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/ad/strategy/HotSplashManager;->g:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final D()V
    .locals 7

    .line 1
    sget-object v0, Lxh/a;->a:Lxh/a;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/transsion/ad/strategy/HotSplashManager;->getClassTag()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " --> onStop() --> App\u8fdb\u5165\u524d\u53f0"

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/4 v5, 0x4

    .line 25
    const/4 v6, 0x0

    .line 26
    const-string v1, "ad_int"

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-static/range {v0 .. v6}, Lxh/a;->m(Lxh/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    sput-boolean v0, Lcom/transsion/ad/strategy/HotSplashManager;->f:Z

    .line 35
    .line 36
    sget-object v0, Lcom/transsion/ad/strategy/HotSplashManager;->h:Landroid/os/Handler;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    new-instance v1, Lcom/transsion/ad/strategy/i;

    .line 43
    .line 44
    invoke-direct {v1}, Lcom/transsion/ad/strategy/i;-><init>()V

    .line 45
    .line 46
    .line 47
    const-wide/16 v2, 0x12c

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final F()V
    .locals 7

    .line 1
    sget-object v0, Lxh/a;->a:Lxh/a;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/transsion/ad/strategy/HotSplashManager;->getClassTag()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " --> onStop() --> App\u8fdb\u5165\u540e\u53f0"

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/4 v5, 0x4

    .line 25
    const/4 v6, 0x0

    .line 26
    const-string v1, "ad_int"

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-static/range {v0 .. v6}, Lxh/a;->m(Lxh/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    sput-wide v0, Lcom/transsion/ad/strategy/HotSplashManager;->e:J

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    sput-boolean v0, Lcom/transsion/ad/strategy/HotSplashManager;->f:Z

    .line 41
    .line 42
    sget-object v0, Lcom/transsion/ad/strategy/HotSplashManager;->h:Landroid/os/Handler;

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    sget-object v0, Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;->t:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager$Companion;

    .line 49
    .line 50
    sget-object v2, Lrh/d;->a:Lrh/d;

    .line 51
    .line 52
    invoke-virtual {v2}, Lrh/d;->a()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const/4 v3, 0x2

    .line 57
    invoke-static {v0, v2, v1, v3, v1}, Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager$Companion;->b(Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager$Companion;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public i(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Loh/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/ad/strategy/HotSplashManager;->G()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Loh/a;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/blankj/utilcode/util/a;->b()Landroid/app/Activity;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    move-object v1, v0

    .line 16
    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v1, v2

    .line 20
    :goto_0
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-static {v1}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    new-instance v6, Lcom/transsion/ad/strategy/HotSplashManager$onBiddingLoad$1$1$1;

    .line 27
    .line 28
    invoke-direct {v6, v0, p1, v2}, Lcom/transsion/ad/strategy/HotSplashManager$onBiddingLoad$1$1$1;-><init>(Landroid/app/Activity;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lkotlin/coroutines/Continuation;)V

    .line 29
    .line 30
    .line 31
    const/4 v7, 0x3

    .line 32
    const/4 v8, 0x0

    .line 33
    const/4 v4, 0x0

    .line 34
    const/4 v5, 0x0

    .line 35
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Loh/a;->m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/ad/strategy/HotSplashManager;->G()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Loh/a;->p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/ad/strategy/HotSplashManager;->G()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
