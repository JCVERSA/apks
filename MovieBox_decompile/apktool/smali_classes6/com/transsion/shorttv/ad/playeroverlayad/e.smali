.class public final Lcom/transsion/shorttv/ad/playeroverlayad/e;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lkotlinx/coroutines/n0;

.field private final c:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

.field private d:Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;

.field private e:Lg7/e;

.field private f:Ljava/lang/Long;

.field private g:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlinx/coroutines/n0;)V
    .locals 1

    .line 1
    const-string v0, "sceneId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "lifecycleScope"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e;->a:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e;->b:Lkotlinx/coroutines/n0;

    .line 17
    .line 18
    new-instance v0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    .line 19
    .line 20
    invoke-direct {v0, p1, p2}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;-><init>(Ljava/lang/String;Lkotlinx/coroutines/n0;)V

    .line 21
    .line 22
    .line 23
    const-string p1, "overlay"

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->r(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e;->c:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    .line 29
    .line 30
    return-void
.end method

.method public static synthetic a(Lcom/transsion/shorttv/ad/playeroverlayad/e;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/shorttv/ad/playeroverlayad/e;->n(Lcom/transsion/shorttv/ad/playeroverlayad/e;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;Lcom/transsion/shorttv/ad/playeroverlayad/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/shorttv/ad/playeroverlayad/e;->m(Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;Lcom/transsion/shorttv/ad/playeroverlayad/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/transsion/shorttv/ad/playeroverlayad/e;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/shorttv/ad/playeroverlayad/e;->l(Lcom/transsion/shorttv/ad/playeroverlayad/e;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic d(Lcom/transsion/shorttv/ad/playeroverlayad/e;Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e;->f:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic e(Lcom/transsion/shorttv/ad/playeroverlayad/e;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ad/playeroverlayad/e;->o(Lkotlin/jvm/functions/Function0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e;->e:Lg7/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lg7/e;->d()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e;->e:Lg7/e;

    .line 10
    .line 11
    return-void
.end method

.method private static final l(Lcom/transsion/shorttv/ad/playeroverlayad/e;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ad/playeroverlayad/e;->o(Lkotlin/jvm/functions/Function0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final m(Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;Lcom/transsion/shorttv/ad/playeroverlayad/e;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;->getNativeAdView()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iget-object v0, p1, Lcom/transsion/shorttv/ad/playeroverlayad/e;->c:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    .line 8
    .line 9
    new-instance v1, Lcom/transsion/shorttv/ad/playeroverlayad/f;

    .line 10
    .line 11
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v3, "getContext(...)"

    .line 16
    .line 17
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v2}, Lcom/transsion/shorttv/ad/playeroverlayad/f;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Lcom/transsion/shorttv/ad/playeroverlayad/d;

    .line 24
    .line 25
    invoke-direct {v2, p1}, Lcom/transsion/shorttv/ad/playeroverlayad/d;-><init>(Lcom/transsion/shorttv/ad/playeroverlayad/e;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, p0, v2}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->s(Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lkotlin/jvm/functions/Function1;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method private static final n(Lcom/transsion/shorttv/ad/playeroverlayad/e;Z)Lkotlin/Unit;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iput-wide v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e;->g:J

    .line 8
    .line 9
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method private final o(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/shorttv/ad/playeroverlayad/e;->f()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e;->c:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-static {v0, v1, v2, v3}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->n(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;IILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/transsion/shorttv/ad/playeroverlayad/e;->g()V

    .line 10
    .line 11
    .line 12
    iput-object v3, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e;->f:Ljava/lang/Long;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e;->d:Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;->removeAdView()V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e;->d:Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const/16 v1, 0x8

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    :cond_1
    iput-object v3, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e;->d:Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;

    .line 31
    .line 32
    const-wide/16 v0, 0x0

    .line 33
    .line 34
    iput-wide v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e;->g:J

    .line 35
    .line 36
    return-void
.end method

.method public final h()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e;->g:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final i(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e;->c:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->q(Lkotlin/jvm/functions/Function1;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final j()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv/ad/playeroverlayad/e;->g()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e;->d:Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;->removeAdView()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e;->d:Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public final k(Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;Lkotlin/jvm/functions/Function0;)V
    .locals 11

    .line 1
    const-string v0, "adContainerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "timerEndCallback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;->getCloseView()Landroid/widget/ImageView;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    new-instance v2, Lcom/transsion/shorttv/ad/playeroverlayad/b;

    .line 25
    .line 26
    invoke-direct {v2, p0, p2}, Lcom/transsion/shorttv/ad/playeroverlayad/b;-><init>(Lcom/transsion/shorttv/ad/playeroverlayad/e;Lkotlin/jvm/functions/Function0;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;->addAdView()V

    .line 33
    .line 34
    .line 35
    new-instance v1, Lcom/transsion/shorttv/ad/playeroverlayad/c;

    .line 36
    .line 37
    invoke-direct {v1, p1, p0}, Lcom/transsion/shorttv/ad/playeroverlayad/c;-><init>(Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;Lcom/transsion/shorttv/ad/playeroverlayad/e;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e;->d:Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;

    .line 44
    .line 45
    invoke-direct {p0}, Lcom/transsion/shorttv/ad/playeroverlayad/e;->g()V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e;->f:Ljava/lang/Long;

    .line 49
    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 53
    .line 54
    .line 55
    move-result-wide v1

    .line 56
    goto :goto_2

    .line 57
    :cond_1
    sget-object v1, Lcom/transsion/ad/scene/a;->a:Lcom/transsion/ad/scene/a;

    .line 58
    .line 59
    const-string v2, "ShortTvPlayerOverlayScene"

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Lcom/transsion/ad/scene/a;->e(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    int-to-long v1, v1

    .line 66
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 71
    .line 72
    .line 73
    move-result-wide v2

    .line 74
    const-wide/16 v4, 0x0

    .line 75
    .line 76
    cmp-long v2, v2, v4

    .line 77
    .line 78
    if-lez v2, :cond_2

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    const/4 v1, 0x0

    .line 82
    :goto_1
    if-eqz v1, :cond_4

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :goto_2
    invoke-virtual {p1}, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;->getCountdownView()Landroid/widget/TextView;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    if-eqz v3, :cond_3

    .line 90
    .line 91
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 92
    .line 93
    .line 94
    :cond_3
    const-wide/16 v3, 0x3e8

    .line 95
    .line 96
    mul-long v9, v1, v3

    .line 97
    .line 98
    new-instance v0, Lcom/transsion/shorttv/ad/playeroverlayad/e$a;

    .line 99
    .line 100
    move-object v5, v0

    .line 101
    move-object v6, p0

    .line 102
    move-object v7, p1

    .line 103
    move-object v8, p2

    .line 104
    invoke-direct/range {v5 .. v10}, Lcom/transsion/shorttv/ad/playeroverlayad/e$a;-><init>(Lcom/transsion/shorttv/ad/playeroverlayad/e;Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;Lkotlin/jvm/functions/Function0;J)V

    .line 105
    .line 106
    .line 107
    iput-object v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e;->e:Lg7/e;

    .line 108
    .line 109
    invoke-virtual {v0}, Lg7/e;->g()Lg7/e;

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :cond_4
    invoke-virtual {p1}, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;->getCountdownView()Landroid/widget/TextView;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    if-eqz p1, :cond_5

    .line 118
    .line 119
    const/16 p2, 0x8

    .line 120
    .line 121
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    :cond_5
    return-void
.end method
