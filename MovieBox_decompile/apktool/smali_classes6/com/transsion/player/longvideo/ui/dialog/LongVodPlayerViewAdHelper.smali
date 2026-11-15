.class public final Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;
.super Lcom/transsion/postdetail/ad/BaseVideoAdHelper;
.source "source.java"


# instance fields
.field private final Q:Ljava/lang/String;

.field private R:Lmn/j;

.field private S:Lln/a;

.field private T:Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

.field private U:Ljava/lang/String;

.field private final V:Lkotlin/Lazy;

.field private W:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

.field private X:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

.field private Y:Z

.field private Z:Z

.field private a0:Z

.field private b0:Z

.field private c0:Z

.field private d0:Z

.field private e0:J

.field private f0:J

.field private g0:J

.field private h0:I

.field private i0:Ljava/lang/String;

.field private j0:Lkotlin/jvm/functions/Function0;

.field private k0:Lkotlin/jvm/functions/Function1;

.field private final l0:Lkotlin/Lazy;

.field private final m0:Lkotlin/Lazy;

.field private final n0:Lkotlin/Lazy;

.field private final o0:Lkotlin/Lazy;

.field private final p0:Lkotlin/Lazy;

.field private final q0:Lkotlin/Lazy;

.field private r0:Lkotlinx/coroutines/t1;

.field private s0:I

.field private final t0:Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$a;

.field private u0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "streamVideo"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->Q:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Lcom/transsion/player/longvideo/ui/dialog/e;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/transsion/player/longvideo/ui/dialog/e;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->V:Lkotlin/Lazy;

    .line 18
    .line 19
    const-string v0, ""

    .line 20
    .line 21
    iput-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->i0:Ljava/lang/String;

    .line 22
    .line 23
    new-instance v0, Lcom/transsion/player/longvideo/ui/dialog/k;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/transsion/player/longvideo/ui/dialog/k;-><init>(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->l0:Lkotlin/Lazy;

    .line 33
    .line 34
    new-instance v0, Lcom/transsion/player/longvideo/ui/dialog/l;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lcom/transsion/player/longvideo/ui/dialog/l;-><init>(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->m0:Lkotlin/Lazy;

    .line 44
    .line 45
    new-instance v0, Lcom/transsion/player/longvideo/ui/dialog/m;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Lcom/transsion/player/longvideo/ui/dialog/m;-><init>(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->n0:Lkotlin/Lazy;

    .line 55
    .line 56
    new-instance v0, Lcom/transsion/player/longvideo/ui/dialog/n;

    .line 57
    .line 58
    invoke-direct {v0, p0}, Lcom/transsion/player/longvideo/ui/dialog/n;-><init>(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->o0:Lkotlin/Lazy;

    .line 66
    .line 67
    new-instance v0, Lcom/transsion/player/longvideo/ui/dialog/o;

    .line 68
    .line 69
    invoke-direct {v0, p0}, Lcom/transsion/player/longvideo/ui/dialog/o;-><init>(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iput-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->p0:Lkotlin/Lazy;

    .line 77
    .line 78
    new-instance v0, Lcom/transsion/player/longvideo/ui/dialog/p;

    .line 79
    .line 80
    invoke-direct {v0}, Lcom/transsion/player/longvideo/ui/dialog/p;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iput-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->q0:Lkotlin/Lazy;

    .line 88
    .line 89
    new-instance v0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$a;

    .line 90
    .line 91
    invoke-direct {v0, p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$a;-><init>(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)V

    .line 92
    .line 93
    .line 94
    iput-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->t0:Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$a;

    .line 95
    .line 96
    return-void
.end method

.method public static synthetic A2(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->B4(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final A3()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->r0:Lkotlinx/coroutines/t1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iput-object v1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->r0:Lkotlinx/coroutines/t1;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->s0:I

    .line 14
    .line 15
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->R:Lmn/j;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-object v0, v0, Lmn/j;->v:Lcom/transsion/player/longvideo/view/LongVodRewardInterceptView;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/transsion/player/longvideo/view/LongVodRewardInterceptView;->getBind()Lmn/g;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    iget-object v0, v0, Lmn/g;->h:Lcom/noober/background/view/BLTextView;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object v2, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->R:Lmn/j;

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-virtual {v2}, Lmn/j;->getRoot()Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    sget v1, Lcom/transsion/player/longvideo/R$string;->long_vod_reward_intercept_watch_ad:I

    .line 50
    .line 51
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    return-void
.end method

.method private static final A4(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->P3()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic B2(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->e4(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final B4(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->J3()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic C2(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->z3()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final C3(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/transsion/player/longvideo/ui/dialog/j;

    .line 2
    .line 3
    invoke-direct {p1, p0}, Lcom/transsion/player/longvideo/ui/dialog/j;-><init>(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->L(ZLkotlin/jvm/functions/Function0;)V

    .line 8
    .line 9
    .line 10
    const-string p1, "click"

    .line 11
    .line 12
    invoke-direct {p0, p1}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->w4(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static final synthetic D2(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->F3()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final D3(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->G4()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->z3()V

    .line 5
    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0
.end method

.method public static final synthetic E2(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->G3()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final E4()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->c0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->U0()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->O3()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    int-to-long v0, v0

    .line 17
    iget-wide v2, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->f0:J

    .line 18
    .line 19
    sub-long/2addr v0, v2

    .line 20
    const-wide/16 v2, 0x0

    .line 21
    .line 22
    cmp-long v2, v0, v2

    .line 23
    .line 24
    if-gtz v2, :cond_1

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->J4()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    iget-object v2, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->R:Lmn/j;

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    iget-object v2, v2, Lmn/j;->q:Lmn/i;

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    iget-object v2, v2, Lmn/i;->c:Lcom/transsion/postdetail/ad/AdInterceptTimerView;

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/transsion/postdetail/ad/AdInterceptTimerView;->getBind()Lwn/d;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    iget-object v2, v2, Lwn/d;->d:Landroid/widget/TextView;

    .line 49
    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    invoke-direct {p0, v0, v1}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->H3(J)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    const/4 v0, 0x1

    .line 60
    invoke-virtual {p0, v0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->F4(Z)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, v0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->F4(Z)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public static final synthetic F2(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->I3()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final F3()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->X:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

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
    iput-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->X:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 10
    .line 11
    return-void
.end method

.method public static final synthetic G2(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->j0()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final G3()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->W:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

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
    iput-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->W:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    .line 10
    .line 11
    return-void
.end method

.method private final G4()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->F1(Z)V

    .line 3
    .line 4
    .line 5
    iput-boolean v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->c0:Z

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->Y:Z

    .line 9
    .line 10
    iget-object v1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->R:Lmn/j;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v1, v1, Lmn/j;->v:Lcom/transsion/player/longvideo/view/LongVodRewardInterceptView;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-static {v1}, Luf/c;->g(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0, v0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->F4(Z)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->A3()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static final synthetic H2(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->i0:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private final H3(J)Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 8
    .line 9
    .line 10
    move-result-wide p1

    .line 11
    const/16 v0, 0x3c

    .line 12
    .line 13
    int-to-long v3, v0

    .line 14
    rem-long/2addr p1, v3

    .line 15
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 16
    .line 17
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 p2, 0x2

    .line 30
    new-array v2, p2, [Ljava/lang/Object;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    aput-object v1, v2, v3

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    aput-object p1, v2, v1

    .line 37
    .line 38
    invoke-static {v2, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string p2, "%02d:%02d"

    .line 43
    .line 44
    invoke-static {v0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string p2, "format(...)"

    .line 49
    .line 50
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object p1
.end method

.method private final H4()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->i0:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "StreamVideoInterceptRewarded"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->c4()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v1, "StreamVideoInterceptInterstitial"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->b4()V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method public static final synthetic I2(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->X:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 2
    .line 3
    return-object p0
.end method

.method private final I3()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;

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

.method private final I4(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->R:Lmn/j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lmn/j;->getRoot()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string v1, "StreamVideoInterceptInterstitial"

    .line 18
    .line 19
    iput-object v1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->i0:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->w0()Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    new-instance v5, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$showInterstitialAd$1$1;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-direct {v5, p0, v0, p1, v1}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$showInterstitialAd$1$1;-><init>(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Landroid/content/Context;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lkotlin/coroutines/Continuation;)V

    .line 31
    .line 32
    .line 33
    const/4 v6, 0x3

    .line 34
    const/4 v7, 0x0

    .line 35
    const/4 v3, 0x0

    .line 36
    const/4 v4, 0x0

    .line 37
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public static final synthetic J2(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)Lcom/transsion/player/longvideo/ui/LongVodPlayerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->u0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 2
    .line 3
    return-object p0
.end method

.method private final J3()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->S:Lln/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lln/a;->m()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->isCam()Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v1

    .line 24
    :goto_0
    if-eqz v0, :cond_1

    .line 25
    .line 26
    sget-object v0, Lwj/h;->a:Lwj/h;

    .line 27
    .line 28
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->I3()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v2, " --> getFreeTimesConfig() --> \u67aa\u7248\u6ca1\u6709\u514d\u8d39\u8d39\u6b21\u6570"

    .line 41
    .line 42
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0, v2}, Lwj/h;->a(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return v1

    .line 53
    :cond_1
    sget-object v0, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    .line 54
    .line 55
    const-string v1, "StreamVideoInterceptRewarded"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    const-string v1, "freeTimes"

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    const/4 v0, 0x1

    .line 77
    :goto_1
    return v0
.end method

.method private final J4()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->c0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_e

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->f0:J

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->O3()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    int-to-long v2, v2

    .line 12
    cmp-long v0, v0, v2

    .line 13
    .line 14
    if-gez v0, :cond_0

    .line 15
    .line 16
    goto/16 :goto_4

    .line 17
    .line 18
    :cond_0
    const/4 v0, 0x1

    .line 19
    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->F1(Z)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->j0:Lkotlin/jvm/functions/Function0;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->R:Lmn/j;

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    iget-object v1, v1, Lmn/j;->v:Lcom/transsion/player/longvideo/view/LongVodRewardInterceptView;

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    invoke-static {v1}, Luf/c;->k(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    const/4 v1, 0x0

    .line 41
    invoke-virtual {p0, v1}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->F4(Z)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->u4()V

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->R:Lmn/j;

    .line 48
    .line 49
    if-eqz v2, :cond_d

    .line 50
    .line 51
    iget-object v2, v2, Lmn/j;->v:Lcom/transsion/player/longvideo/view/LongVodRewardInterceptView;

    .line 52
    .line 53
    if-eqz v2, :cond_d

    .line 54
    .line 55
    sget-object v3, Lwj/h;->a:Lwj/h;

    .line 56
    .line 57
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->I3()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    iget-object v5, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->S:Lln/a;

    .line 62
    .line 63
    if-eqz v5, :cond_3

    .line 64
    .line 65
    invoke-virtual {v5}, Lln/a;->m()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    if-eqz v5, :cond_3

    .line 70
    .line 71
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Subject;->isCam()Ljava/lang/Boolean;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    goto :goto_0

    .line 76
    :cond_3
    const/4 v5, 0x0

    .line 77
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v4, " --> showRewardInterceptView() --> mBean?.subject?.isCam = "

    .line 86
    .line 87
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {v3, v4}, Lwj/h;->a(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object v3, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->S:Lln/a;

    .line 101
    .line 102
    if-eqz v3, :cond_4

    .line 103
    .line 104
    invoke-virtual {v3}, Lln/a;->m()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    if-eqz v3, :cond_4

    .line 109
    .line 110
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->isCam()Ljava/lang/Boolean;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 115
    .line 116
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    goto :goto_1

    .line 121
    :cond_4
    move v3, v1

    .line 122
    :goto_1
    const/16 v4, 0x8

    .line 123
    .line 124
    if-eqz v3, :cond_a

    .line 125
    .line 126
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->T3()I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-lez v3, :cond_6

    .line 131
    .line 132
    invoke-virtual {v2}, Lcom/transsion/player/longvideo/view/LongVodRewardInterceptView;->getBind()Lmn/g;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    if-eqz v3, :cond_5

    .line 137
    .line 138
    iget-object v3, v3, Lmn/g;->h:Lcom/noober/background/view/BLTextView;

    .line 139
    .line 140
    if-eqz v3, :cond_5

    .line 141
    .line 142
    new-instance v5, Lcom/transsion/player/longvideo/ui/dialog/q;

    .line 143
    .line 144
    invoke-direct {v5, p0}, Lcom/transsion/player/longvideo/ui/dialog/q;-><init>(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    .line 149
    .line 150
    :cond_5
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->Q4()V

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_6
    invoke-virtual {v2}, Lcom/transsion/player/longvideo/view/LongVodRewardInterceptView;->getBind()Lmn/g;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    if-eqz v3, :cond_7

    .line 159
    .line 160
    iget-object v3, v3, Lmn/g;->h:Lcom/noober/background/view/BLTextView;

    .line 161
    .line 162
    if-eqz v3, :cond_7

    .line 163
    .line 164
    new-instance v5, Lcom/transsion/player/longvideo/ui/dialog/r;

    .line 165
    .line 166
    invoke-direct {v5, p0}, Lcom/transsion/player/longvideo/ui/dialog/r;-><init>(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    .line 171
    .line 172
    :cond_7
    :goto_2
    invoke-virtual {v2}, Lcom/transsion/player/longvideo/view/LongVodRewardInterceptView;->getBind()Lmn/g;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    if-eqz v2, :cond_8

    .line 177
    .line 178
    iget-object v2, v2, Lmn/g;->d:Lcom/noober/background/view/BLTextView;

    .line 179
    .line 180
    if-eqz v2, :cond_8

    .line 181
    .line 182
    new-instance v3, Lcom/transsion/player/longvideo/ui/dialog/s;

    .line 183
    .line 184
    invoke-direct {v3, p0}, Lcom/transsion/player/longvideo/ui/dialog/s;-><init>(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    .line 189
    .line 190
    :cond_8
    iget-object v2, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->R:Lmn/j;

    .line 191
    .line 192
    if-eqz v2, :cond_9

    .line 193
    .line 194
    iget-object v2, v2, Lmn/j;->v:Lcom/transsion/player/longvideo/view/LongVodRewardInterceptView;

    .line 195
    .line 196
    if-eqz v2, :cond_9

    .line 197
    .line 198
    invoke-virtual {v2}, Lcom/transsion/player/longvideo/view/LongVodRewardInterceptView;->getBind()Lmn/g;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    if-eqz v2, :cond_9

    .line 203
    .line 204
    iget-object v2, v2, Lmn/g;->b:Landroidx/constraintlayout/widget/Group;

    .line 205
    .line 206
    if-eqz v2, :cond_9

    .line 207
    .line 208
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 209
    .line 210
    .line 211
    :cond_9
    iget-object v1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->R:Lmn/j;

    .line 212
    .line 213
    if-eqz v1, :cond_d

    .line 214
    .line 215
    iget-object v1, v1, Lmn/j;->v:Lcom/transsion/player/longvideo/view/LongVodRewardInterceptView;

    .line 216
    .line 217
    if-eqz v1, :cond_d

    .line 218
    .line 219
    invoke-virtual {v1}, Lcom/transsion/player/longvideo/view/LongVodRewardInterceptView;->getBind()Lmn/g;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    if-eqz v1, :cond_d

    .line 224
    .line 225
    iget-object v1, v1, Lmn/g;->c:Landroidx/constraintlayout/widget/Group;

    .line 226
    .line 227
    if-eqz v1, :cond_d

    .line 228
    .line 229
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 230
    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_a
    iget-object v2, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->R:Lmn/j;

    .line 234
    .line 235
    if-eqz v2, :cond_b

    .line 236
    .line 237
    iget-object v2, v2, Lmn/j;->v:Lcom/transsion/player/longvideo/view/LongVodRewardInterceptView;

    .line 238
    .line 239
    if-eqz v2, :cond_b

    .line 240
    .line 241
    invoke-virtual {v2}, Lcom/transsion/player/longvideo/view/LongVodRewardInterceptView;->getBind()Lmn/g;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    if-eqz v2, :cond_b

    .line 246
    .line 247
    iget-object v2, v2, Lmn/g;->b:Landroidx/constraintlayout/widget/Group;

    .line 248
    .line 249
    if-eqz v2, :cond_b

    .line 250
    .line 251
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 252
    .line 253
    .line 254
    :cond_b
    iget-object v2, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->R:Lmn/j;

    .line 255
    .line 256
    if-eqz v2, :cond_c

    .line 257
    .line 258
    iget-object v2, v2, Lmn/j;->v:Lcom/transsion/player/longvideo/view/LongVodRewardInterceptView;

    .line 259
    .line 260
    if-eqz v2, :cond_c

    .line 261
    .line 262
    invoke-virtual {v2}, Lcom/transsion/player/longvideo/view/LongVodRewardInterceptView;->getBind()Lmn/g;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    if-eqz v2, :cond_c

    .line 267
    .line 268
    iget-object v2, v2, Lmn/g;->c:Landroidx/constraintlayout/widget/Group;

    .line 269
    .line 270
    if-eqz v2, :cond_c

    .line 271
    .line 272
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 273
    .line 274
    .line 275
    :cond_c
    iget-object v1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->R:Lmn/j;

    .line 276
    .line 277
    if-eqz v1, :cond_d

    .line 278
    .line 279
    iget-object v1, v1, Lmn/j;->v:Lcom/transsion/player/longvideo/view/LongVodRewardInterceptView;

    .line 280
    .line 281
    if-eqz v1, :cond_d

    .line 282
    .line 283
    invoke-virtual {v1}, Lcom/transsion/player/longvideo/view/LongVodRewardInterceptView;->getBind()Lmn/g;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    if-eqz v1, :cond_d

    .line 288
    .line 289
    iget-object v1, v1, Lmn/g;->i:Landroid/widget/LinearLayout;

    .line 290
    .line 291
    if-eqz v1, :cond_d

    .line 292
    .line 293
    new-instance v2, Lcom/transsion/player/longvideo/ui/dialog/f;

    .line 294
    .line 295
    invoke-direct {v2, p0}, Lcom/transsion/player/longvideo/ui/dialog/f;-><init>(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    .line 300
    .line 301
    :cond_d
    :goto_3
    const-string v1, "browse"

    .line 302
    .line 303
    invoke-direct {p0, v1, v0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->x4(Ljava/lang/String;Z)V

    .line 304
    .line 305
    .line 306
    :cond_e
    :goto_4
    return-void
.end method

.method public static final synthetic K2(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->t0:Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$a;

    .line 2
    .line 3
    return-object p0
.end method

.method private final K3()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->m0:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private static final K4(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->A3()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->H4()V

    .line 5
    .line 6
    .line 7
    const-string p1, "click"

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-direct {p0, p1, v0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->x4(Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static final synthetic L2(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)Lcom/transsion/ad/bidding/video/BiddingVideoManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->W:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    .line 2
    .line 3
    return-object p0
.end method

.method private final L3()I
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    .line 2
    .line 3
    const-string v1, "StreamVideoInterceptRewarded"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v1, "playedPercent"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/16 v0, 0xa

    .line 25
    .line 26
    :goto_0
    return v0
.end method

.method private static final L4(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->H4()V

    .line 2
    .line 3
    .line 4
    const-string p1, "click"

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->x4(Ljava/lang/String;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static final synthetic M2(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->Q:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private final M3()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->n0:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private static final M4(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/transsion/player/longvideo/ui/dialog/g;

    .line 2
    .line 3
    invoke-direct {p1, p0}, Lcom/transsion/player/longvideo/ui/dialog/g;-><init>(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->L(ZLkotlin/jvm/functions/Function0;)V

    .line 8
    .line 9
    .line 10
    const-string p1, "click"

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->x4(Ljava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static final synthetic N2(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->R3(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final N3()I
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    .line 2
    .line 3
    const-string v1, "StreamVideoInterceptRewarded"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v1, "interceptDuration"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/16 v0, 0xa

    .line 25
    .line 26
    :goto_0
    const v1, 0xea60

    .line 27
    .line 28
    .line 29
    mul-int/2addr v0, v1

    .line 30
    return v0
.end method

.method private static final N4(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->G4()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->z3()V

    .line 5
    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0
.end method

.method public static final synthetic O2(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)Lcom/transsion/baselib/db/video/VideoDetailPlayBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->T:Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 2
    .line 3
    return-object p0
.end method

.method private final O3()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->o0:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private static final O4(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->w0()Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v3, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$showRewardInterceptView$1$4$1;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-direct {v3, p0, p1}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$showRewardInterceptView$1$4$1;-><init>(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Lkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    const/4 v4, 0x3

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public static final synthetic P2(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->S3()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final P3()I
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    .line 2
    .line 3
    const-string v1, "StreamVideoInterceptRewarded"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v1, "interceptProgress"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x5

    .line 25
    :goto_0
    const v1, 0xea60

    .line 26
    .line 27
    .line 28
    mul-int/2addr v0, v1

    .line 29
    return v0
.end method

.method private final P4(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->R:Lmn/j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lmn/j;->getRoot()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string v1, "StreamVideoInterceptRewarded"

    .line 18
    .line 19
    iput-object v1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->i0:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->w0()Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    new-instance v5, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$showRewardedAd$1$1;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-direct {v5, p0, v0, p1, v1}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$showRewardedAd$1$1;-><init>(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Landroid/content/Context;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lkotlin/coroutines/Continuation;)V

    .line 31
    .line 32
    .line 33
    const/4 v6, 0x3

    .line 34
    const/4 v7, 0x0

    .line 35
    const/4 v3, 0x0

    .line 36
    const/4 v4, 0x0

    .line 37
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public static final synthetic Q2(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)Lmn/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->R:Lmn/j;

    .line 2
    .line 3
    return-object p0
.end method

.method private final Q3()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->l0:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private final Q4()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->r0:Lkotlinx/coroutines/t1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->T3()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->s0:I

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->R4()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->w0()Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    new-instance v5, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$startWatchAdCountdown$1;

    .line 26
    .line 27
    invoke-direct {v5, p0, v1}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$startWatchAdCountdown$1;-><init>(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Lkotlin/coroutines/Continuation;)V

    .line 28
    .line 29
    .line 30
    const/4 v6, 0x3

    .line 31
    const/4 v7, 0x0

    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    :cond_1
    iput-object v1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->r0:Lkotlinx/coroutines/t1;

    .line 39
    .line 40
    return-void
.end method

.method public static final synthetic R2(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->s0:I

    .line 2
    .line 3
    return p0
.end method

.method private final R3(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    instance-of v2, v1, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$getVideoDetailPlayBean$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$getVideoDetailPlayBean$1;

    .line 11
    .line 12
    iget v3, v2, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$getVideoDetailPlayBean$1;->label:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$getVideoDetailPlayBean$1;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$getVideoDetailPlayBean$1;

    .line 25
    .line 26
    invoke-direct {v2, v0, v1}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$getVideoDetailPlayBean$1;-><init>(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Lkotlin/coroutines/Continuation;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v1, v2, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$getVideoDetailPlayBean$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget v4, v2, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$getVideoDetailPlayBean$1;->label:I

    .line 36
    .line 37
    const/4 v5, 0x1

    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    if-ne v4, v5, :cond_1

    .line 41
    .line 42
    iget-object v2, v2, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$getVideoDetailPlayBean$1;->L$0:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v2, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;

    .line 45
    .line 46
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v1

    .line 58
    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, v0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->T:Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 62
    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    return-object v1

    .line 66
    :cond_3
    iget-object v1, v0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->S:Lln/a;

    .line 67
    .line 68
    if-eqz v1, :cond_5

    .line 69
    .line 70
    invoke-direct/range {p0 .. p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->S3()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v1}, Lln/a;->o()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    invoke-virtual {v1}, Lln/a;->l()I

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    invoke-virtual {v1}, Lln/a;->e()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    iput-object v0, v2, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$getVideoDetailPlayBean$1;->L$0:Ljava/lang/Object;

    .line 87
    .line 88
    iput v5, v2, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$getVideoDetailPlayBean$1;->label:I

    .line 89
    .line 90
    invoke-interface {v4, v6, v7, v1, v2}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;->l(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    if-ne v1, v3, :cond_4

    .line 95
    .line 96
    return-object v3

    .line 97
    :cond_4
    move-object v2, v0

    .line 98
    :goto_1
    check-cast v1, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 99
    .line 100
    iput-object v1, v2, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->T:Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 101
    .line 102
    :cond_5
    iget-object v1, v0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->T:Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 103
    .line 104
    if-nez v1, :cond_6

    .line 105
    .line 106
    iget-object v1, v0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->S:Lln/a;

    .line 107
    .line 108
    if-eqz v1, :cond_6

    .line 109
    .line 110
    new-instance v15, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 111
    .line 112
    move-object v2, v15

    .line 113
    invoke-virtual {v1}, Lln/a;->o()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {v1}, Lln/a;->e()I

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    invoke-virtual {v1}, Lln/a;->l()I

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    const v33, 0x7fffff0

    .line 126
    .line 127
    .line 128
    const/16 v34, 0x0

    .line 129
    .line 130
    const-string v4, ""

    .line 131
    .line 132
    const-wide/16 v7, 0x0

    .line 133
    .line 134
    const/4 v9, 0x0

    .line 135
    const/4 v10, 0x0

    .line 136
    const/4 v11, 0x0

    .line 137
    const/4 v12, 0x0

    .line 138
    const-wide/16 v13, 0x0

    .line 139
    .line 140
    const/4 v1, 0x0

    .line 141
    move-object/from16 v35, v15

    .line 142
    .line 143
    move-object v15, v1

    .line 144
    const/16 v16, 0x0

    .line 145
    .line 146
    const/16 v17, 0x0

    .line 147
    .line 148
    const/16 v18, 0x0

    .line 149
    .line 150
    const/16 v19, 0x0

    .line 151
    .line 152
    const/16 v20, 0x0

    .line 153
    .line 154
    const/16 v21, 0x0

    .line 155
    .line 156
    const/16 v22, 0x0

    .line 157
    .line 158
    const/16 v23, 0x0

    .line 159
    .line 160
    const-wide/16 v24, 0x0

    .line 161
    .line 162
    const/16 v26, 0x0

    .line 163
    .line 164
    const/16 v27, 0x0

    .line 165
    .line 166
    const/16 v28, 0x0

    .line 167
    .line 168
    const/16 v29, 0x0

    .line 169
    .line 170
    const/16 v30, 0x0

    .line 171
    .line 172
    const/16 v31, 0x0

    .line 173
    .line 174
    const/16 v32, 0x0

    .line 175
    .line 176
    invoke-direct/range {v2 .. v34}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 177
    .line 178
    .line 179
    move-object/from16 v1, v35

    .line 180
    .line 181
    iput-object v1, v0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->T:Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 182
    .line 183
    :cond_6
    iget-object v1, v0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->T:Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 184
    .line 185
    return-object v1
.end method

.method private final R4()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->R:Lmn/j;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, v0, Lmn/j;->v:Lcom/transsion/player/longvideo/view/LongVodRewardInterceptView;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/transsion/player/longvideo/view/LongVodRewardInterceptView;->getBind()Lmn/g;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, v0, Lmn/g;->h:Lcom/noober/background/view/BLTextView;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->R:Lmn/j;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Lmn/j;->getRoot()Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    sget v2, Lcom/transsion/player/longvideo/R$string;->long_vod_reward_intercept_watch_ad_countdown:I

    .line 36
    .line 37
    iget v3, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->s0:I

    .line 38
    .line 39
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const/4 v4, 0x1

    .line 44
    new-array v4, v4, [Ljava/lang/Object;

    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    aput-object v3, v4, v5

    .line 48
    .line 49
    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const/4 v1, 0x0

    .line 55
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void
.end method

.method public static final synthetic S2(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;JJ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->D0(JJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final S3()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->V:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 8
    .line 9
    return-object v0
.end method

.method private final S4()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->w0()Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v3, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$updateRewardState$1;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v3, p0, v1}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$updateRewardState$1;-><init>(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Lkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    const/4 v4, 0x3

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public static final synthetic T2(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->F0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final T3()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->q0:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private static final T4()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$f1;

    .line 2
    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "getApp(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/AppDatabase$f1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->C1()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public static final synthetic U2(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Lln/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->W3(Lln/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final U4()I
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    .line 2
    .line 3
    const-string v1, "StreamVideoInterceptRewarded"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v1, "countdown"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x5

    .line 25
    :goto_0
    return v0
.end method

.method public static final synthetic V2(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->X3()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic W2(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->Q0()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final W3(Lln/a;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->F1(Z)V

    .line 3
    .line 4
    .line 5
    iput-boolean v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->d0:Z

    .line 6
    .line 7
    iget-object v1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->R:Lmn/j;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, v1, Lmn/j;->v:Lcom/transsion/player/longvideo/view/LongVodRewardInterceptView;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-static {v1}, Luf/c;->g(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->Z3()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->c0:Z

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    sget-object v1, Lij/o;->a:Lij/o;

    .line 28
    .line 29
    invoke-virtual {v1}, Lij/o;->g()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_d

    .line 34
    .line 35
    sget-object v1, Lij/g;->a:Lij/g;

    .line 36
    .line 37
    invoke-virtual {v1}, Lij/g;->b()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    goto/16 :goto_7

    .line 44
    .line 45
    :cond_2
    invoke-virtual {p1}, Lln/a;->k()J

    .line 46
    .line 47
    .line 48
    move-result-wide v1

    .line 49
    iput-wide v1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->e0:J

    .line 50
    .line 51
    invoke-virtual {p1}, Lln/a;->k()J

    .line 52
    .line 53
    .line 54
    move-result-wide v1

    .line 55
    iput-wide v1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->f0:J

    .line 56
    .line 57
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->T:Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 58
    .line 59
    if-eqz p1, :cond_3

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getRewardUnlock()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    goto :goto_0

    .line 66
    :cond_3
    move p1, v0

    .line 67
    :goto_0
    iput-boolean p1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->Y:Z

    .line 68
    .line 69
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->T:Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 70
    .line 71
    if-eqz p1, :cond_4

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getRewardPlayed()Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    goto :goto_1

    .line 78
    :cond_4
    move p1, v0

    .line 79
    :goto_1
    iput-boolean p1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->Z:Z

    .line 80
    .line 81
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->T:Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 82
    .line 83
    if-eqz p1, :cond_5

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getRewardFree()Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    goto :goto_2

    .line 90
    :cond_5
    move p1, v0

    .line 91
    :goto_2
    iput-boolean p1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->a0:Z

    .line 92
    .line 93
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 94
    .line 95
    iget-wide v1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->e0:J

    .line 96
    .line 97
    iget-boolean v3, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->Y:Z

    .line 98
    .line 99
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->Q3()I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    new-instance v5, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v6, "---> initRewardInterceptVariables --> startPlayProgress:"

    .line 109
    .line 110
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v1, "\uff0cisRewardUnlock:"

    .line 117
    .line 118
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v1, ", rewardUnlockFreeTimes:"

    .line 125
    .line 126
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    const/4 v5, 0x4

    .line 137
    const/4 v6, 0x0

    .line 138
    const-string v2, "VideoAdHelper"

    .line 139
    .line 140
    const/4 v4, 0x0

    .line 141
    move-object v1, p1

    .line 142
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    sget-object v7, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 146
    .line 147
    invoke-virtual {v7}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    iget-object v2, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->Q:Ljava/lang/String;

    .line 152
    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    const-string v4, "zero_clock_timestamp_"

    .line 159
    .line 160
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    const-wide/16 v3, 0x0

    .line 171
    .line 172
    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    .line 173
    .line 174
    .line 175
    move-result-wide v1

    .line 176
    iget-object v5, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->Q:Ljava/lang/String;

    .line 177
    .line 178
    invoke-virtual {p0, v5, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->X0(Ljava/lang/String;Z)Z

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    const-string v8, "video_played_count_per_day"

    .line 183
    .line 184
    const/4 v6, 0x1

    .line 185
    if-eqz v5, :cond_7

    .line 186
    .line 187
    iput v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->h0:I

    .line 188
    .line 189
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->Q3()I

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-nez v1, :cond_6

    .line 194
    .line 195
    iget-boolean v1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->Y:Z

    .line 196
    .line 197
    if-nez v1, :cond_6

    .line 198
    .line 199
    move v1, v6

    .line 200
    goto :goto_3

    .line 201
    :cond_6
    move v1, v0

    .line 202
    :goto_3
    iput-boolean v1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->c0:Z

    .line 203
    .line 204
    iput-boolean v1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->Z:Z

    .line 205
    .line 206
    xor-int/2addr v1, v6

    .line 207
    iput-boolean v1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->a0:Z

    .line 208
    .line 209
    const/4 v5, 0x4

    .line 210
    const/4 v6, 0x0

    .line 211
    const-string v2, "VideoAdHelper"

    .line 212
    .line 213
    const-string v3, "---> FreeTimes Reset"

    .line 214
    .line 215
    const/4 v4, 0x0

    .line 216
    move-object v1, p1

    .line 217
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v7}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    invoke-virtual {p1, v8, v0}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 225
    .line 226
    .line 227
    goto :goto_5

    .line 228
    :cond_7
    invoke-virtual {v7}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    invoke-virtual {v5, v8, v0}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    .line 233
    .line 234
    .line 235
    move-result v5

    .line 236
    iput v5, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->h0:I

    .line 237
    .line 238
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->Q3()I

    .line 239
    .line 240
    .line 241
    move-result v7

    .line 242
    if-lt v5, v7, :cond_8

    .line 243
    .line 244
    iget-boolean v5, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->Y:Z

    .line 245
    .line 246
    xor-int/2addr v5, v6

    .line 247
    iput-boolean v5, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->c0:Z

    .line 248
    .line 249
    :cond_8
    iget-object v5, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->T:Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 250
    .line 251
    if-eqz v5, :cond_9

    .line 252
    .line 253
    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getTimeStamp()J

    .line 254
    .line 255
    .line 256
    move-result-wide v3

    .line 257
    :cond_9
    invoke-static {v3, v4}, Lcom/cloud/hisavana/sdk/common/util/k0;->c(J)J

    .line 258
    .line 259
    .line 260
    move-result-wide v3

    .line 261
    sub-long/2addr v3, v1

    .line 262
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    .line 263
    .line 264
    .line 265
    move-result-wide v1

    .line 266
    const-wide/32 v3, 0x5265c00

    .line 267
    .line 268
    .line 269
    cmp-long v1, v1, v3

    .line 270
    .line 271
    if-ltz v1, :cond_a

    .line 272
    .line 273
    iget-boolean v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->c0:Z

    .line 274
    .line 275
    iput-boolean v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->Z:Z

    .line 276
    .line 277
    xor-int/2addr v0, v6

    .line 278
    iput-boolean v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->a0:Z

    .line 279
    .line 280
    goto :goto_4

    .line 281
    :cond_a
    iget-boolean v1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->a0:Z

    .line 282
    .line 283
    if-eqz v1, :cond_b

    .line 284
    .line 285
    iput-boolean v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->c0:Z

    .line 286
    .line 287
    :cond_b
    :goto_4
    iget v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->h0:I

    .line 288
    .line 289
    iget-boolean v1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->Z:Z

    .line 290
    .line 291
    iget-boolean v2, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->a0:Z

    .line 292
    .line 293
    new-instance v3, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    .line 297
    .line 298
    const-string v4, "---> videoPlayedTimesPerDay:"

    .line 299
    .line 300
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    const-string v0, ", isRewardPlayed:"

    .line 307
    .line 308
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    const-string v0, ", isRewardFree:"

    .line 315
    .line 316
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    const/4 v5, 0x4

    .line 327
    const/4 v6, 0x0

    .line 328
    const-string v2, "VideoAdHelper"

    .line 329
    .line 330
    const/4 v4, 0x0

    .line 331
    move-object v1, p1

    .line 332
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 333
    .line 334
    .line 335
    :goto_5
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->T:Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 336
    .line 337
    if-eqz p1, :cond_c

    .line 338
    .line 339
    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getRewardFree()Z

    .line 340
    .line 341
    .line 342
    move-result p1

    .line 343
    iget-boolean v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->a0:Z

    .line 344
    .line 345
    if-ne p1, v0, :cond_c

    .line 346
    .line 347
    goto :goto_6

    .line 348
    :cond_c
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->S4()V

    .line 349
    .line 350
    .line 351
    :goto_6
    return-void

    .line 352
    :cond_d
    :goto_7
    iput-boolean v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->c0:Z

    .line 353
    .line 354
    return-void
.end method

.method public static final synthetic X2(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->a0:Z

    .line 2
    .line 3
    return p0
.end method

.method private final X3()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->m4()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->F3()V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lfh/b;->a:Lfh/b$a;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->R:Lmn/j;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Lmn/j;->getRoot()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    sget v2, Lcom/transsion/player/longvideo/R$string;->long_vod_reward_intercept_skip:I

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v1, 0x0

    .line 33
    :goto_0
    invoke-virtual {v0, v1}, Lfh/b$a;->e(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public static final synthetic Y2(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->U0()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic Z2(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->Z:Z

    .line 2
    .line 3
    return p0
.end method

.method private final Z3()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->p0:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public static final synthetic a3(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->Y:Z

    .line 2
    .line 3
    return p0
.end method

.method private static final a4(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)Z
    .locals 2

    .line 1
    const-string v0, "StreamVideoInterceptRewarded"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->L0(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->P:Lcom/transsion/postdetail/ad/BaseVideoAdHelper$a;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$a;->a()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->j0()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p0, v0, v1}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->Y3(Ljava/lang/String;Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    :goto_0
    const/4 p0, 0x1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 p0, 0x0

    .line 33
    :goto_1
    return p0
.end method

.method public static final synthetic b3(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->g4()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final b4()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->R:Lmn/j;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Lmn/j;->getRoot()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v1, "StreamVideoInterceptInterstitial"

    .line 19
    .line 20
    iput-object v1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->i0:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->X:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->U()V

    .line 27
    .line 28
    .line 29
    :cond_1
    const/4 v1, 0x0

    .line 30
    iput-object v1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->X:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->w0()Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    new-instance v5, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$loadInterstitialAd$1;

    .line 39
    .line 40
    invoke-direct {v5, v0, p0, v1}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$loadInterstitialAd$1;-><init>(Landroid/content/Context;Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Lkotlin/coroutines/Continuation;)V

    .line 41
    .line 42
    .line 43
    const/4 v6, 0x3

    .line 44
    const/4 v7, 0x0

    .line 45
    const/4 v3, 0x0

    .line 46
    const/4 v4, 0x0

    .line 47
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_0
    return-void
.end method

.method public static final synthetic c3(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->h4()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final c4()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->Z3()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->R:Lmn/j;

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    invoke-virtual {v0}, Lmn/j;->getRoot()Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const-string v1, "StreamVideoInterceptRewarded"

    .line 26
    .line 27
    iput-object v1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->i0:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->W:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->U()V

    .line 34
    .line 35
    .line 36
    :cond_2
    const/4 v1, 0x0

    .line 37
    iput-object v1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->W:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->w0()Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    new-instance v5, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$loadRewardedAd$1;

    .line 46
    .line 47
    invoke-direct {v5, v0, p0, v1}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$loadRewardedAd$1;-><init>(Landroid/content/Context;Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Lkotlin/coroutines/Continuation;)V

    .line 48
    .line 49
    .line 50
    const/4 v6, 0x3

    .line 51
    const/4 v7, 0x0

    .line 52
    const/4 v3, 0x0

    .line 53
    const/4 v4, 0x0

    .line 54
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 55
    .line 56
    .line 57
    :cond_3
    :goto_0
    return-void
.end method

.method public static final synthetic d3(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->i4(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic e3(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->j4()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final e4(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)Lkotlin/Unit;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->w0()Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v3, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$onCompletion$1$1;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v3, p0, v1}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$onCompletion$1$1;-><init>(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Lkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    const/4 v4, 0x3

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 17
    .line 18
    .line 19
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p0
.end method

.method public static final synthetic f3(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->k4()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic g3(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->l4()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final g4()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->H(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->w0()Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    new-instance v4, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$onRewardInterceptAdClose$1;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {v4, p0, v0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$onRewardInterceptAdClose$1;-><init>(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    const/4 v5, 0x3

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public static final synthetic h3(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->m4()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final h4()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->w0()Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v3, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$onRewardInterceptAdError$1;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v3, p0, v1}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$onRewardInterceptAdError$1;-><init>(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Lkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    const/4 v4, 0x3

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public static final synthetic i3(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->t4()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final i4(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->w0()Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v3, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$onRewardInterceptAdLoad$1;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v3, p0, p1, v1}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$onRewardInterceptAdLoad$1;-><init>(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    const/4 v4, 0x3

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public static final synthetic j3(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final j4()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->w0()Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v3, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$onRewardInterceptAdRewarded$1;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v3, p0, v1}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$onRewardInterceptAdRewarded$1;-><init>(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Lkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    const/4 v4, 0x3

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public static final synthetic k3(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->X:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 2
    .line 3
    return-void
.end method

.method private final k4()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->w0()Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v3, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$onRewardInterceptAdShow$1;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v3, p0, v1}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$onRewardInterceptAdShow$1;-><init>(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Lkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    const/4 v4, 0x3

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public static final synthetic l3(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Lln/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->S:Lln/a;

    .line 2
    .line 3
    return-void
.end method

.method private final l4()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->w0()Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v3, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$onRewardInterceptAdShowError$1;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v3, p0, v1}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$onRewardInterceptAdShowError$1;-><init>(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Lkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    const/4 v4, 0x3

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public static final synthetic m3(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->G4()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final m4()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->G4()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->S4()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->H(Z)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->z3()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static synthetic n2()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->T4()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic n3(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Lcom/transsion/ad/bidding/video/BiddingVideoManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->W:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    .line 2
    .line 3
    return-void
.end method

.method public static synthetic o2(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->K4(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic o3(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->H1(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic p2(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->M4(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic p3(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->I1(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic q2(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->O4(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic q3(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->T:Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 2
    .line 3
    return-void
.end method

.method public static synthetic r2(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->A4(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic r3(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Lkotlinx/coroutines/t1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->r0:Lkotlinx/coroutines/t1;

    .line 2
    .line 3
    return-void
.end method

.method private final r4()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->r0:Lkotlinx/coroutines/t1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iput-object v1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->r0:Lkotlinx/coroutines/t1;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic s2(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->z4(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic s3(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->s0:I

    .line 2
    .line 3
    return-void
.end method

.method private static final s4(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->L3()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic t2(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->a4(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic t3(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->H4()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final t4()V
    .locals 4

    .line 1
    const-string v0, "StreamVideoInterceptInterstitial"

    .line 2
    .line 3
    iput-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->i0:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v1, Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;->t:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager$Companion;

    .line 6
    .line 7
    sget-object v2, Lcom/transsion/ad/strategy/c;->a:Lcom/transsion/ad/strategy/c;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->j0()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v2, v3}, Lcom/transsion/ad/strategy/c;->a(Ljava/lang/String;)Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v0, v2}, Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager$Companion;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static synthetic u2(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->N4(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic u3(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->I4(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final u4()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->Z3()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "StreamVideoInterceptRewarded"

    .line 9
    .line 10
    iput-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->i0:Ljava/lang/String;

    .line 11
    .line 12
    sget-object v1, Lcom/transsion/ad/bidding/video/BiddingVideoManager;->t:Lcom/transsion/ad/bidding/video/BiddingVideoManager$Companion;

    .line 13
    .line 14
    sget-object v2, Lcom/transsion/ad/strategy/c;->a:Lcom/transsion/ad/strategy/c;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->j0()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v2, v3}, Lcom/transsion/ad/strategy/c;->a(Ljava/lang/String;)Ljava/util/Map;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v0, v2}, Lcom/transsion/ad/bidding/video/BiddingVideoManager$Companion;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static synthetic v2(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->D3(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic v3(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->P4(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final v4(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3

    .line 1
    const-string v0, "browse"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "LongVodPlayer"

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    sget-object v0, Lqi/h;->a:Lqi/h;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->U:Ljava/lang/String;

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v1, v2

    .line 19
    :goto_0
    invoke-virtual {v0, v1, p1, p2}, Lqi/h;->q(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 20
    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_1
    const-string v0, "click"

    .line 24
    .line 25
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    sget-object v0, Lqi/h;->a:Lqi/h;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->U:Ljava/lang/String;

    .line 34
    .line 35
    if-nez v2, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    move-object v1, v2

    .line 39
    :goto_1
    invoke-virtual {v0, v1, p1, p2}, Lqi/h;->q(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 40
    .line 41
    .line 42
    :cond_3
    :goto_2
    return-void
.end method

.method public static synthetic w2()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->U4()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static final synthetic w3(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->R4()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final w4(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->c0:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "scene_id"

    .line 12
    .line 13
    const-string v2, "StreamVideoInterceptRewarded"

    .line 14
    .line 15
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    const-string v1, "module_name"

    .line 19
    .line 20
    const-string v2, "stream_rewarded_countdown_timer"

    .line 21
    .line 22
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    const-string v1, "browse"

    .line 26
    .line 27
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const-string v2, "action"

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    const-string v1, "show_view"

    .line 36
    .line 37
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const-string v1, "click"

    .line 42
    .line 43
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    const-string v1, "click_member"

    .line 50
    .line 51
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    :cond_2
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->v4(Ljava/lang/String;Ljava/util/Map;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public static synthetic x2(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->s4(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic x3(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->S4()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final x4(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "scene_id"

    .line 7
    .line 8
    const-string v2, "StreamVideoInterceptRewarded"

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const-string v1, "module_name"

    .line 14
    .line 15
    const-string v2, "stream_rewarded_intercept_view"

    .line 16
    .line 17
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    const-string v1, "browse"

    .line 21
    .line 22
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const-string v2, "action"

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    const-string p2, "show_view"

    .line 31
    .line 32
    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    const-string v1, "click"

    .line 37
    .line 38
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    if-eqz p2, :cond_1

    .line 45
    .line 46
    const-string p2, "click_ad"

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const-string p2, "click_member"

    .line 50
    .line 51
    :goto_0
    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    :cond_2
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->v4(Ljava/lang/String;Ljava/util/Map;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public static synthetic y2(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->L4(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final y4()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->U0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->s0:I

    .line 8
    .line 9
    if-gtz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->r0:Lkotlinx/coroutines/t1;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->w0()Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    if-eqz v3, :cond_2

    .line 26
    .line 27
    new-instance v6, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$resumeWatchAdCountdown$1;

    .line 28
    .line 29
    invoke-direct {v6, p0, v1}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$resumeWatchAdCountdown$1;-><init>(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Lkotlin/coroutines/Continuation;)V

    .line 30
    .line 31
    .line 32
    const/4 v7, 0x3

    .line 33
    const/4 v8, 0x0

    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x0

    .line 36
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :cond_2
    iput-object v1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->r0:Lkotlinx/coroutines/t1;

    .line 41
    .line 42
    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic z2(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->C3(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final z3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->k0:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->b0:Z

    .line 6
    .line 7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->b0:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    invoke-virtual {p0, v0, v1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->J1(J)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method private static final z4(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->N3()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method


# virtual methods
.method public final B3(JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method protected C0()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final C4(Lcom/transsion/player/longvideo/constants/LongVodContentType;Lln/a;)V
    .locals 0

    return-void
.end method

.method public final D4(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)V
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->u0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 7
    .line 8
    return-void
.end method

.method public final E3()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->u0()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->U()V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->R:Lmn/j;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->v0()Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->U()V

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->y1(Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->W:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->U()V

    .line 30
    .line 31
    .line 32
    :cond_2
    iput-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->W:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->X:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 35
    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->U()V

    .line 39
    .line 40
    .line 41
    :cond_3
    iput-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->X:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->Q()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->d0()Landroid/os/CountDownTimer;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-eqz v1, :cond_4

    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 53
    .line 54
    .line 55
    :cond_4
    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->n1(Landroid/os/CountDownTimer;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->A3()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final F4(Z)V
    .locals 0

    return-void
.end method

.method public H(Z)V
    .locals 0

    return-void
.end method

.method public final U3(Z)V
    .locals 0

    return-void
.end method

.method protected V()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->R:Lmn/j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lmn/j;->c:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return-object v0
.end method

.method public final V3(Ljava/lang/String;Lmn/j;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->U:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->R:Lmn/j;

    return-void
.end method

.method protected W()Lcom/transsion/postdetail/ui/view/AdCountDownView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->R:Lmn/j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lmn/j;->d:Lcom/transsion/postdetail/ui/view/AdCountDownView;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return-object v0
.end method

.method public final Y3(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final d4(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method protected e0()Lcom/transsion/postdetail/ad/AdInterceptTimerView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->R:Lmn/j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lmn/j;->f:Lcom/transsion/postdetail/ad/AdInterceptTimerView;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return-object v0
.end method

.method protected f0()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->R:Lmn/j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lmn/j;->g:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return-object v0
.end method

.method public final f4()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->j1(Lkotlin/jvm/functions/Function0;)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->P()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->E1(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method protected g0()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->R:Lmn/j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lmn/j;->h:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return-object v0
.end method

.method protected h0()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->R:Lmn/j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lmn/j;->i:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return-object v0
.end method

.method protected k0()Landroid/view/View;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public l2()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->w0()Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v3, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$updateAdStartLastShowTime$1;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v3, p0, v1}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper$updateAdStartLastShowTime$1;-><init>(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;Lkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    const/4 v4, 0x3

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final n4(Lcom/transsion/player/longvideo/ui/LongVodUiType;)V
    .locals 0

    return-void
.end method

.method public final o4()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->J1(J)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->E4()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->C1(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->O()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final p4()V
    .locals 0

    return-void
.end method

.method public final q4()V
    .locals 0

    return-void
.end method

.method protected t0()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->R:Lmn/j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lmn/j;->n:Landroid/widget/ImageView;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return-object v0
.end method

.method public final y3(J)V
    .locals 0

    return-void
.end method

.method protected z0()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;->R:Lmn/j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lmn/j;->w:Landroidx/appcompat/widget/AppCompatImageView;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return-object v0
.end method
