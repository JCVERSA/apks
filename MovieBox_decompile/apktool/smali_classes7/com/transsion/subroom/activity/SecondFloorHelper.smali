.class public final Lcom/transsion/subroom/activity/SecondFloorHelper;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:Ldt/a;

.field private final b:J

.field private final c:J

.field private final d:Lkotlin/Lazy;

.field private final e:Lkotlin/Lazy;

.field private final f:Lkotlin/Lazy;

.field private g:Landroid/animation/AnimatorSet;

.field private h:Landroid/animation/AnimatorSet;

.field private i:Lkotlin/jvm/functions/Function1;

.field private j:Ljava/lang/String;

.field private final k:Lkotlinx/coroutines/n0;

.field private l:Lkotlinx/coroutines/t1;

.field private m:Lkotlinx/coroutines/t1;

.field private n:Lkotlinx/coroutines/t1;

.field private o:Lkotlinx/coroutines/t1;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z


# direct methods
.method public constructor <init>(Ldt/a;)V
    .locals 2

    .line 1
    const-string v0, "viewBinding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Ldt/a;

    .line 10
    .line 11
    const-wide/16 v0, 0x190

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->b:J

    .line 14
    .line 15
    const-wide/16 v0, 0x1f4

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->c:J

    .line 18
    .line 19
    new-instance p1, Lcom/transsion/subroom/activity/a0;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Lcom/transsion/subroom/activity/a0;-><init>(Lcom/transsion/subroom/activity/SecondFloorHelper;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->d:Lkotlin/Lazy;

    .line 29
    .line 30
    new-instance p1, Lcom/transsion/subroom/activity/b0;

    .line 31
    .line 32
    invoke-direct {p1, p0}, Lcom/transsion/subroom/activity/b0;-><init>(Lcom/transsion/subroom/activity/SecondFloorHelper;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->e:Lkotlin/Lazy;

    .line 40
    .line 41
    new-instance p1, Lcom/transsion/subroom/activity/c0;

    .line 42
    .line 43
    invoke-direct {p1}, Lcom/transsion/subroom/activity/c0;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->f:Lkotlin/Lazy;

    .line 51
    .line 52
    const-string p1, "IDLE"

    .line 53
    .line 54
    iput-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->j:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const/4 v0, 0x0

    .line 61
    const/4 v1, 0x1

    .line 62
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/l2;->b(Lkotlinx/coroutines/t1;ILjava/lang/Object;)Lkotlinx/coroutines/z;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p1, v0}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {p1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iput-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->k:Lkotlinx/coroutines/n0;

    .line 75
    .line 76
    iget-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Ldt/a;

    .line 77
    .line 78
    iget-object p1, p1, Ldt/a;->k:Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;

    .line 79
    .line 80
    new-instance v0, Lcom/transsion/subroom/activity/d0;

    .line 81
    .line 82
    invoke-direct {v0, p0}, Lcom/transsion/subroom/activity/d0;-><init>(Lcom/transsion/subroom/activity/SecondFloorHelper;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0}, Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;->setLoadCallback(Lkotlin/jvm/functions/Function0;)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Ldt/a;

    .line 89
    .line 90
    iget-object p1, p1, Ldt/a;->k:Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;

    .line 91
    .line 92
    new-instance v0, Lcom/transsion/subroom/activity/e0;

    .line 93
    .line 94
    invoke-direct {v0, p0}, Lcom/transsion/subroom/activity/e0;-><init>(Lcom/transsion/subroom/activity/SecondFloorHelper;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v0}, Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;->setClickCallback(Lkotlin/jvm/functions/Function0;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method private final B()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->V()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->G()F

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/16 v7, 0x2c

    .line 9
    .line 10
    const/4 v8, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x1

    .line 15
    const/4 v6, 0x0

    .line 16
    move-object v0, p0

    .line 17
    invoke-static/range {v0 .. v8}, Lcom/transsion/subroom/activity/SecondFloorHelper;->T(Lcom/transsion/subroom/activity/SecondFloorHelper;FZZZZZILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private final C()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->V()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->H()F

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/16 v7, 0x34

    .line 9
    .line 10
    const/4 v8, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x1

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x0

    .line 16
    move-object v0, p0

    .line 17
    invoke-static/range {v0 .. v8}, Lcom/transsion/subroom/activity/SecondFloorHelper;->T(Lcom/transsion/subroom/activity/SecondFloorHelper;FZZZZZILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private final D(Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Ldt/a;

    .line 2
    .line 3
    iget-object v0, v0, Ldt/a;->d:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    cmpg-float v0, v0, v1

    .line 11
    .line 12
    if-gtz v0, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Ldt/a;

    .line 15
    .line 16
    iget-object p1, p1, Ldt/a;->b:Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;

    .line 17
    .line 18
    const-string v0, "arcCover"

    .line 19
    .line 20
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->t:Z

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->t:Z

    .line 34
    .line 35
    invoke-direct {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->V()V

    .line 36
    .line 37
    .line 38
    const/16 v8, 0x18

    .line 39
    .line 40
    const/4 v9, 0x0

    .line 41
    const/4 v2, 0x0

    .line 42
    const/4 v3, 0x1

    .line 43
    const/4 v4, 0x1

    .line 44
    const/4 v5, 0x0

    .line 45
    const/4 v6, 0x0

    .line 46
    move-object v1, p0

    .line 47
    move v7, p1

    .line 48
    invoke-static/range {v1 .. v9}, Lcom/transsion/subroom/activity/SecondFloorHelper;->T(Lcom/transsion/subroom/activity/SecondFloorHelper;FZZZZZILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Ldt/a;

    .line 52
    .line 53
    iget-object p1, p1, Ldt/a;->k:Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;->idleTrigger()V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method static synthetic E(Lcom/transsion/subroom/activity/SecondFloorHelper;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/subroom/activity/SecondFloorHelper;->D(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final F()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->V()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->G()F

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/16 v7, 0x3e

    .line 9
    .line 10
    const/4 v8, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x0

    .line 16
    move-object v0, p0

    .line 17
    invoke-static/range {v0 .. v8}, Lcom/transsion/subroom/activity/SecondFloorHelper;->T(Lcom/transsion/subroom/activity/SecondFloorHelper;FZZZZZILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private final G()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->d:Lkotlin/Lazy;

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
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private final H()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->e:Lkotlin/Lazy;

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
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private final I()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->f:Lkotlin/Lazy;

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
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method private final J(ZZZZZ)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Ldt/a;

    .line 4
    .line 5
    iget-object p1, p1, Ldt/a;->b:Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Ldt/a;

    .line 12
    .line 13
    iget-object p1, p1, Ldt/a;->b:Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;

    .line 14
    .line 15
    const-string v0, "arcCover"

    .line 16
    .line 17
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    const-string p2, "IDLE"

    .line 27
    .line 28
    invoke-virtual {p0, p2}, Lcom/transsion/subroom/activity/SecondFloorHelper;->P(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    if-nez p5, :cond_1

    .line 32
    .line 33
    iget-boolean p2, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->s:Z

    .line 34
    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    iget-object p2, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Ldt/a;

    .line 38
    .line 39
    iget-object p2, p2, Ldt/a;->k:Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;

    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;->resetAd()V

    .line 42
    .line 43
    .line 44
    const/4 p2, 0x0

    .line 45
    iput-boolean p2, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->s:Z

    .line 46
    .line 47
    const/4 p5, 0x1

    .line 48
    invoke-static {p0, p2, p5, p5, p1}, Lcom/transsion/subroom/activity/SecondFloorHelper;->N(Lcom/transsion/subroom/activity/SecondFloorHelper;ZZILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    if-eqz p3, :cond_2

    .line 52
    .line 53
    const-string p2, "HOVER_HALF"

    .line 54
    .line 55
    invoke-virtual {p0, p2}, Lcom/transsion/subroom/activity/SecondFloorHelper;->P(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    if-eqz p4, :cond_3

    .line 59
    .line 60
    const-string p2, "HOVER_FULL"

    .line 61
    .line 62
    invoke-virtual {p0, p2}, Lcom/transsion/subroom/activity/SecondFloorHelper;->P(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_3
    iput-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->h:Landroid/animation/AnimatorSet;

    .line 66
    .line 67
    return-void
.end method

.method private static final L()J
    .locals 4

    .line 1
    sget-object v0, Lcom/transsion/ad/scene/a;->a:Lcom/transsion/ad/scene/a;

    .line 2
    .line 3
    const-string v1, "TrendingTwoLevelloftScene"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/transsion/ad/scene/a;->e(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    int-to-long v0, v0

    .line 12
    const-wide/16 v2, 0x3e8

    .line 13
    .line 14
    mul-long/2addr v0, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-wide/16 v0, 0x1388

    .line 17
    .line 18
    :goto_0
    return-wide v0
.end method

.method public static synthetic N(Lcom/transsion/subroom/activity/SecondFloorHelper;ZZILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    move p1, v0

    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    move p2, v0

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/subroom/activity/SecondFloorHelper;->M(ZZ)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final S(FZZZZZ)V
    .locals 10

    .line 1
    move-object v7, p0

    .line 2
    const/4 v0, 0x2

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object v3, v7, Lcom/transsion/subroom/activity/SecondFloorHelper;->h:Landroid/animation/AnimatorSet;

    .line 6
    .line 7
    if-eqz v3, :cond_0

    .line 8
    .line 9
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v3, v7, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Ldt/a;

    .line 13
    .line 14
    iget-object v3, v3, Ldt/a;->d:Landroid/widget/FrameLayout;

    .line 15
    .line 16
    new-array v4, v2, [F

    .line 17
    .line 18
    aput p1, v4, v1

    .line 19
    .line 20
    const-string v5, "translationY"

    .line 21
    .line 22
    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    iget-wide v8, v7, Lcom/transsion/subroom/activity/SecondFloorHelper;->b:J

    .line 27
    .line 28
    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 29
    .line 30
    .line 31
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    .line 32
    .line 33
    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 37
    .line 38
    .line 39
    iget-object v4, v7, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Ldt/a;

    .line 40
    .line 41
    iget-object v4, v4, Ldt/a;->b:Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;

    .line 42
    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    const/4 v6, 0x0

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/high16 v6, 0x3f800000    # 1.0f

    .line 48
    .line 49
    :goto_0
    new-array v8, v2, [F

    .line 50
    .line 51
    aput v6, v8, v1

    .line 52
    .line 53
    const-string v6, "alpha"

    .line 54
    .line 55
    invoke-static {v4, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    iget-wide v8, v7, Lcom/transsion/subroom/activity/SecondFloorHelper;->b:J

    .line 60
    .line 61
    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 62
    .line 63
    .line 64
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    .line 65
    .line 66
    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 70
    .line 71
    .line 72
    iget-object v6, v7, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Ldt/a;

    .line 73
    .line 74
    iget-object v6, v6, Ldt/a;->b:Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;

    .line 75
    .line 76
    new-array v8, v2, [F

    .line 77
    .line 78
    aput p1, v8, v1

    .line 79
    .line 80
    invoke-static {v6, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    iget-wide v8, v7, Lcom/transsion/subroom/activity/SecondFloorHelper;->b:J

    .line 85
    .line 86
    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 87
    .line 88
    .line 89
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    .line 90
    .line 91
    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 95
    .line 96
    .line 97
    new-instance v6, Landroid/animation/AnimatorSet;

    .line 98
    .line 99
    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 100
    .line 101
    .line 102
    new-array v8, v0, [Landroid/animation/Animator;

    .line 103
    .line 104
    aput-object v4, v8, v1

    .line 105
    .line 106
    aput-object v5, v8, v2

    .line 107
    .line 108
    invoke-virtual {v6, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 109
    .line 110
    .line 111
    new-instance v8, Landroid/animation/AnimatorSet;

    .line 112
    .line 113
    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 114
    .line 115
    .line 116
    new-array v0, v0, [Landroid/animation/Animator;

    .line 117
    .line 118
    aput-object v3, v0, v1

    .line 119
    .line 120
    aput-object v6, v0, v2

    .line 121
    .line 122
    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 123
    .line 124
    .line 125
    new-instance v9, Lcom/transsion/subroom/activity/SecondFloorHelper$a;

    .line 126
    .line 127
    move-object v0, v9

    .line 128
    move-object v1, p0

    .line 129
    move v2, p2

    .line 130
    move v3, p3

    .line 131
    move v4, p4

    .line 132
    move v5, p5

    .line 133
    move/from16 v6, p6

    .line 134
    .line 135
    invoke-direct/range {v0 .. v6}, Lcom/transsion/subroom/activity/SecondFloorHelper$a;-><init>(Lcom/transsion/subroom/activity/SecondFloorHelper;ZZZZZ)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v8, v9}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 139
    .line 140
    .line 141
    iput-object v8, v7, Lcom/transsion/subroom/activity/SecondFloorHelper;->h:Landroid/animation/AnimatorSet;

    .line 142
    .line 143
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    .line 144
    .line 145
    .line 146
    return-void
.end method

.method static synthetic T(Lcom/transsion/subroom/activity/SecondFloorHelper;FZZZZZILjava/lang/Object;)V
    .locals 6

    .line 1
    and-int/lit8 v0, p7, 0x2

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v0, p2

    .line 9
    :goto_0
    and-int/lit8 v2, p7, 0x4

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    move v2, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move v2, p3

    .line 16
    :goto_1
    and-int/lit8 v3, p7, 0x8

    .line 17
    .line 18
    if-eqz v3, :cond_2

    .line 19
    .line 20
    move v3, v1

    .line 21
    goto :goto_2

    .line 22
    :cond_2
    move v3, p4

    .line 23
    :goto_2
    and-int/lit8 v4, p7, 0x10

    .line 24
    .line 25
    if-eqz v4, :cond_3

    .line 26
    .line 27
    move v4, v1

    .line 28
    goto :goto_3

    .line 29
    :cond_3
    move v4, p5

    .line 30
    :goto_3
    and-int/lit8 v5, p7, 0x20

    .line 31
    .line 32
    if-eqz v5, :cond_4

    .line 33
    .line 34
    goto :goto_4

    .line 35
    :cond_4
    move v1, p6

    .line 36
    :goto_4
    move-object p2, p0

    .line 37
    move p3, p1

    .line 38
    move p4, v0

    .line 39
    move p5, v2

    .line 40
    move p6, v3

    .line 41
    move p7, v4

    .line 42
    move p8, v1

    .line 43
    invoke-direct/range {p2 .. p8}, Lcom/transsion/subroom/activity/SecondFloorHelper;->S(FZZZZZ)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private final U()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Ldt/a;

    .line 2
    .line 3
    iget-object v0, v0, Ldt/a;->d:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->H()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    new-array v3, v2, [F

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    aput v1, v3, v4

    .line 14
    .line 15
    const-string v1, "translationY"

    .line 16
    .line 17
    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-wide v5, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->c:J

    .line 22
    .line 23
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 24
    .line 25
    .line 26
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    .line 27
    .line 28
    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 32
    .line 33
    .line 34
    iget-object v3, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Ldt/a;

    .line 35
    .line 36
    iget-object v3, v3, Ldt/a;->b:Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;

    .line 37
    .line 38
    invoke-direct {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->H()F

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    new-array v6, v2, [F

    .line 43
    .line 44
    aput v5, v6, v4

    .line 45
    .line 46
    invoke-static {v3, v1, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget-wide v5, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->c:J

    .line 51
    .line 52
    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 53
    .line 54
    .line 55
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    .line 56
    .line 57
    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 61
    .line 62
    .line 63
    iget-object v3, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Ldt/a;

    .line 64
    .line 65
    iget-object v3, v3, Ldt/a;->b:Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;

    .line 66
    .line 67
    const/4 v5, 0x0

    .line 68
    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    .line 69
    .line 70
    .line 71
    iget-object v3, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Ldt/a;

    .line 72
    .line 73
    iget-object v3, v3, Ldt/a;->b:Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;

    .line 74
    .line 75
    const-string v5, "arcCover"

    .line 76
    .line 77
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v3}, Luf/c;->k(Landroid/view/View;)V

    .line 81
    .line 82
    .line 83
    iget-object v3, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Ldt/a;

    .line 84
    .line 85
    iget-object v3, v3, Ldt/a;->b:Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;

    .line 86
    .line 87
    new-array v5, v2, [F

    .line 88
    .line 89
    const/high16 v6, 0x3f800000    # 1.0f

    .line 90
    .line 91
    aput v6, v5, v4

    .line 92
    .line 93
    const-string v6, "alpha"

    .line 94
    .line 95
    invoke-static {v3, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    iget-wide v5, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->c:J

    .line 100
    .line 101
    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 102
    .line 103
    .line 104
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    .line 105
    .line 106
    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 110
    .line 111
    .line 112
    new-instance v5, Landroid/animation/AnimatorSet;

    .line 113
    .line 114
    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 115
    .line 116
    .line 117
    const/4 v6, 0x2

    .line 118
    new-array v7, v6, [Landroid/animation/Animator;

    .line 119
    .line 120
    aput-object v1, v7, v4

    .line 121
    .line 122
    aput-object v3, v7, v2

    .line 123
    .line 124
    invoke-virtual {v5, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 125
    .line 126
    .line 127
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 128
    .line 129
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 130
    .line 131
    .line 132
    new-array v3, v6, [Landroid/animation/Animator;

    .line 133
    .line 134
    aput-object v0, v3, v4

    .line 135
    .line 136
    aput-object v5, v3, v2

    .line 137
    .line 138
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 139
    .line 140
    .line 141
    new-instance v0, Lcom/transsion/subroom/activity/SecondFloorHelper$startGuideAnimation$1$1;

    .line 142
    .line 143
    invoke-direct {v0, p0}, Lcom/transsion/subroom/activity/SecondFloorHelper$startGuideAnimation$1$1;-><init>(Lcom/transsion/subroom/activity/SecondFloorHelper;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 147
    .line 148
    .line 149
    iput-object v1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->g:Landroid/animation/AnimatorSet;

    .line 150
    .line 151
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 152
    .line 153
    .line 154
    return-void
.end method

.method private final V()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->g:Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->g:Landroid/animation/AnimatorSet;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->h:Landroid/animation/AnimatorSet;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 16
    .line 17
    .line 18
    :cond_1
    iput-object v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->h:Landroid/animation/AnimatorSet;

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->z()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static synthetic a(Lcom/transsion/subroom/activity/SecondFloorHelper;)F
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->x(Lcom/transsion/subroom/activity/SecondFloorHelper;)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic b()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/transsion/subroom/activity/SecondFloorHelper;->L()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static synthetic c(Lcom/transsion/subroom/activity/SecondFloorHelper;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->g(Lcom/transsion/subroom/activity/SecondFloorHelper;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/subroom/activity/SecondFloorHelper;)F
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->y(Lcom/transsion/subroom/activity/SecondFloorHelper;)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic e(Lcom/transsion/subroom/activity/SecondFloorHelper;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->f(Lcom/transsion/subroom/activity/SecondFloorHelper;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final f(Lcom/transsion/subroom/activity/SecondFloorHelper;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->R()V

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method private static final g(Lcom/transsion/subroom/activity/SecondFloorHelper;)Lkotlin/Unit;
    .locals 3

    .line 1
    const-string v0, "IDLE"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->P(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {p0, v2, v0, v1}, Lcom/transsion/subroom/activity/SecondFloorHelper;->E(Lcom/transsion/subroom/activity/SecondFloorHelper;ZILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/subroom/activity/SecondFloorHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->B()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic i(Lcom/transsion/subroom/activity/SecondFloorHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->C()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic j(Lcom/transsion/subroom/activity/SecondFloorHelper;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/subroom/activity/SecondFloorHelper;->D(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic k(Lcom/transsion/subroom/activity/SecondFloorHelper;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic l(Lcom/transsion/subroom/activity/SecondFloorHelper;)F
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->H()F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic m(Lcom/transsion/subroom/activity/SecondFloorHelper;)J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->I()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static final synthetic n(Lcom/transsion/subroom/activity/SecondFloorHelper;)Lkotlinx/coroutines/n0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->k:Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic o(Lcom/transsion/subroom/activity/SecondFloorHelper;)Ldt/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Ldt/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic p(Lcom/transsion/subroom/activity/SecondFloorHelper;ZZZZZ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/transsion/subroom/activity/SecondFloorHelper;->J(ZZZZZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic q(Lcom/transsion/subroom/activity/SecondFloorHelper;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->q:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic r(Lcom/transsion/subroom/activity/SecondFloorHelper;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->t:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic s(Lcom/transsion/subroom/activity/SecondFloorHelper;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->g:Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic t(Lcom/transsion/subroom/activity/SecondFloorHelper;Lkotlinx/coroutines/t1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->l:Lkotlinx/coroutines/t1;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic u(Lcom/transsion/subroom/activity/SecondFloorHelper;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->q:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic v(Lcom/transsion/subroom/activity/SecondFloorHelper;Lkotlinx/coroutines/t1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->n:Lkotlinx/coroutines/t1;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic w(Lcom/transsion/subroom/activity/SecondFloorHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->U()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final x(Lcom/transsion/subroom/activity/SecondFloorHelper;)F
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Ldt/a;

    .line 2
    .line 3
    invoke-virtual {p0}, Ldt/a;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 20
    .line 21
    mul-int/lit8 p0, p0, 0x9

    .line 22
    .line 23
    int-to-float p0, p0

    .line 24
    const/high16 v0, 0x41800000    # 16.0f

    .line 25
    .line 26
    div-float/2addr p0, v0

    .line 27
    return p0
.end method

.method private static final y(Lcom/transsion/subroom/activity/SecondFloorHelper;)F
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Ldt/a;

    .line 2
    .line 3
    invoke-virtual {p0}, Ldt/a;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 20
    .line 21
    mul-int/lit8 p0, p0, 0x9

    .line 22
    .line 23
    div-int/lit8 p0, p0, 0x10

    .line 24
    .line 25
    int-to-float p0, p0

    .line 26
    const/high16 v0, 0x40000000    # 2.0f

    .line 27
    .line 28
    div-float/2addr p0, v0

    .line 29
    return p0
.end method

.method private final z()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->m:Lkotlinx/coroutines/t1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->n:Lkotlinx/coroutines/t1;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->o:Lkotlinx/coroutines/t1;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_2
    iget-object v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->l:Lkotlinx/coroutines/t1;

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_3
    iput-object v2, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->m:Lkotlinx/coroutines/t1;

    .line 32
    .line 33
    iput-object v2, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->n:Lkotlinx/coroutines/t1;

    .line 34
    .line 35
    iput-object v2, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->o:Lkotlinx/coroutines/t1;

    .line 36
    .line 37
    iput-object v2, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->l:Lkotlinx/coroutines/t1;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->k:Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/o0;->d(Lkotlinx/coroutines/n0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->V()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Ldt/a;

    .line 12
    .line 13
    iget-object v0, v0, Ldt/a;->k:Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;->destroy()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final K()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Ldt/a;

    .line 2
    .line 3
    iget-object v0, v0, Ldt/a;->k:Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;->hasAd()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final M(ZZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->p:Z

    .line 2
    .line 3
    iget-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Ldt/a;

    .line 4
    .line 5
    iget-object p1, p1, Ldt/a;->k:Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;->loadAd(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final O(Ljava/lang/String;FF)V
    .locals 11

    .line 1
    const-string v0, "action"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "MOVE"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x1

    .line 18
    sparse-switch v1, :sswitch_data_0

    .line 19
    .line 20
    .line 21
    goto/16 :goto_0

    .line 22
    .line 23
    :sswitch_0
    const-string p2, "REFRESH"

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    goto/16 :goto_0

    .line 32
    .line 33
    :cond_0
    iput-boolean v4, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->s:Z

    .line 34
    .line 35
    invoke-direct {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->F()V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Ldt/a;

    .line 39
    .line 40
    iget-object p1, p1, Ldt/a;->b:Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;->refreshing()V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Ldt/a;

    .line 46
    .line 47
    iget-object p1, p1, Ldt/a;->k:Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;->refreshing()V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_0

    .line 53
    .line 54
    :sswitch_1
    const-string p2, "HOVER_HALF"

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-nez p1, :cond_1

    .line 61
    .line 62
    goto/16 :goto_0

    .line 63
    .line 64
    :cond_1
    iget-object v4, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->k:Lkotlinx/coroutines/n0;

    .line 65
    .line 66
    new-instance v7, Lcom/transsion/subroom/activity/SecondFloorHelper$onAction$2;

    .line 67
    .line 68
    invoke-direct {v7, p0, v3}, Lcom/transsion/subroom/activity/SecondFloorHelper$onAction$2;-><init>(Lcom/transsion/subroom/activity/SecondFloorHelper;Lkotlin/coroutines/Continuation;)V

    .line 69
    .line 70
    .line 71
    const/4 v8, 0x3

    .line 72
    const/4 v9, 0x0

    .line 73
    const/4 v5, 0x0

    .line 74
    const/4 v6, 0x0

    .line 75
    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iput-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->m:Lkotlinx/coroutines/t1;

    .line 80
    .line 81
    goto/16 :goto_0

    .line 82
    .line 83
    :sswitch_2
    const-string p2, "HOVER_FULL"

    .line 84
    .line 85
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-nez p1, :cond_2

    .line 90
    .line 91
    goto/16 :goto_0

    .line 92
    .line 93
    :cond_2
    iget-object v4, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->k:Lkotlinx/coroutines/n0;

    .line 94
    .line 95
    new-instance v7, Lcom/transsion/subroom/activity/SecondFloorHelper$onAction$3;

    .line 96
    .line 97
    invoke-direct {v7, p0, v3}, Lcom/transsion/subroom/activity/SecondFloorHelper$onAction$3;-><init>(Lcom/transsion/subroom/activity/SecondFloorHelper;Lkotlin/coroutines/Continuation;)V

    .line 98
    .line 99
    .line 100
    const/4 v8, 0x3

    .line 101
    const/4 v9, 0x0

    .line 102
    const/4 v5, 0x0

    .line 103
    const/4 v6, 0x0

    .line 104
    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    iput-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->m:Lkotlinx/coroutines/t1;

    .line 109
    .line 110
    goto/16 :goto_0

    .line 111
    .line 112
    :sswitch_3
    const-string p2, "SECOND_FLOOR_TRIGGER"

    .line 113
    .line 114
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-nez p1, :cond_3

    .line 119
    .line 120
    goto/16 :goto_0

    .line 121
    .line 122
    :cond_3
    iget-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Ldt/a;

    .line 123
    .line 124
    iget-object p1, p1, Ldt/a;->b:Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;

    .line 125
    .line 126
    invoke-virtual {p1}, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;->secondFloorTrigger()V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_0

    .line 130
    .line 131
    :sswitch_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    if-nez p1, :cond_4

    .line 136
    .line 137
    goto/16 :goto_0

    .line 138
    .line 139
    :cond_4
    iget-boolean p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->r:Z

    .line 140
    .line 141
    if-nez p1, :cond_5

    .line 142
    .line 143
    iget-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Ldt/a;

    .line 144
    .line 145
    iget-object p1, p1, Ldt/a;->k:Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;

    .line 146
    .line 147
    invoke-virtual {p1}, Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;->showAd()V

    .line 148
    .line 149
    .line 150
    iput-boolean v4, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->r:Z

    .line 151
    .line 152
    :cond_5
    iget-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Ldt/a;

    .line 153
    .line 154
    iget-object p1, p1, Ldt/a;->d:Landroid/widget/FrameLayout;

    .line 155
    .line 156
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 157
    .line 158
    .line 159
    iget-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Ldt/a;

    .line 160
    .line 161
    iget-object p1, p1, Ldt/a;->b:Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;

    .line 162
    .line 163
    sget-object v0, Lcom/transsion/wrapperad/view/secondfloor/CustomSwipeRefreshLayout;->Companion:Lcom/transsion/wrapperad/view/secondfloor/CustomSwipeRefreshLayout$a;

    .line 164
    .line 165
    invoke-virtual {v0}, Lcom/transsion/wrapperad/view/secondfloor/CustomSwipeRefreshLayout$a;->b()Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    invoke-virtual {p1, v0}, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;->setAbMode(Z)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    .line 176
    .line 177
    .line 178
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 182
    .line 183
    .line 184
    goto/16 :goto_0

    .line 185
    .line 186
    :sswitch_5
    const-string p2, "IDLE"

    .line 187
    .line 188
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    if-nez p1, :cond_6

    .line 193
    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :cond_6
    iput-boolean v4, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->q:Z

    .line 197
    .line 198
    invoke-static {p0, v2, v4, v3}, Lcom/transsion/subroom/activity/SecondFloorHelper;->E(Lcom/transsion/subroom/activity/SecondFloorHelper;ZILjava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    goto :goto_0

    .line 202
    :sswitch_6
    const-string p2, "DOWN"

    .line 203
    .line 204
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    if-nez p1, :cond_7

    .line 209
    .line 210
    goto :goto_0

    .line 211
    :cond_7
    invoke-direct {p0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->V()V

    .line 212
    .line 213
    .line 214
    goto :goto_0

    .line 215
    :sswitch_7
    const-string p2, "UP"

    .line 216
    .line 217
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    if-nez p1, :cond_8

    .line 222
    .line 223
    goto :goto_0

    .line 224
    :cond_8
    iput-boolean v2, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->r:Z

    .line 225
    .line 226
    goto :goto_0

    .line 227
    :sswitch_8
    const-string p2, "REFRESH_TRIGGER"

    .line 228
    .line 229
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result p1

    .line 233
    if-nez p1, :cond_9

    .line 234
    .line 235
    goto :goto_0

    .line 236
    :cond_9
    iget-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Ldt/a;

    .line 237
    .line 238
    iget-object p1, p1, Ldt/a;->b:Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;

    .line 239
    .line 240
    invoke-virtual {p1}, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;->refreshTrigger()V

    .line 241
    .line 242
    .line 243
    goto :goto_0

    .line 244
    :sswitch_9
    const-string p2, "IDLE_TRIGGER"

    .line 245
    .line 246
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result p1

    .line 250
    if-nez p1, :cond_a

    .line 251
    .line 252
    goto :goto_0

    .line 253
    :cond_a
    iget-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Ldt/a;

    .line 254
    .line 255
    iget-object p1, p1, Ldt/a;->b:Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;

    .line 256
    .line 257
    invoke-virtual {p1}, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;->idleTrigger()V

    .line 258
    .line 259
    .line 260
    goto :goto_0

    .line 261
    :sswitch_a
    const-string p2, "SECOND_FLOOR"

    .line 262
    .line 263
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result p1

    .line 267
    if-nez p1, :cond_b

    .line 268
    .line 269
    goto :goto_0

    .line 270
    :cond_b
    iget-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->a:Ldt/a;

    .line 271
    .line 272
    iget-object p1, p1, Ldt/a;->k:Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;

    .line 273
    .line 274
    invoke-virtual {p1}, Lcom/transsion/wrapperad/view/secondfloor/TrendingTwoLevelIrregularView;->adClick()V

    .line 275
    .line 276
    .line 277
    iput-boolean v4, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->s:Z

    .line 278
    .line 279
    iget-object v5, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->k:Lkotlinx/coroutines/n0;

    .line 280
    .line 281
    new-instance v8, Lcom/transsion/subroom/activity/SecondFloorHelper$onAction$4;

    .line 282
    .line 283
    invoke-direct {v8, p0, v3}, Lcom/transsion/subroom/activity/SecondFloorHelper$onAction$4;-><init>(Lcom/transsion/subroom/activity/SecondFloorHelper;Lkotlin/coroutines/Continuation;)V

    .line 284
    .line 285
    .line 286
    const/4 v9, 0x3

    .line 287
    const/4 v10, 0x0

    .line 288
    const/4 v6, 0x0

    .line 289
    const/4 v7, 0x0

    .line 290
    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    iput-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->o:Lkotlinx/coroutines/t1;

    .line 295
    .line 296
    :goto_0
    return-void

    .line 297
    :sswitch_data_0
    .sparse-switch
        -0x558e5f9f -> :sswitch_a
        -0x4d2a53d3 -> :sswitch_9
        -0x275443ec -> :sswitch_8
        0xa9b -> :sswitch_7
        0x201ca2 -> :sswitch_6
        0x2237d4 -> :sswitch_5
        0x2433d1 -> :sswitch_4
        0x14ee37ba -> :sswitch_3
        0x2ec253d2 -> :sswitch_2
        0x2ec2f176 -> :sswitch_1
        0x6b7e1ebb -> :sswitch_0
    .end sparse-switch
.end method

.method public final P(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "state"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->j:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->i:Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final Q(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->i:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public final R()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->l:Lkotlinx/coroutines/t1;

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
    iget-object v3, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->k:Lkotlinx/coroutines/n0;

    .line 11
    .line 12
    new-instance v6, Lcom/transsion/subroom/activity/SecondFloorHelper$showGuide$1;

    .line 13
    .line 14
    invoke-direct {v6, p0, v1}, Lcom/transsion/subroom/activity/SecondFloorHelper$showGuide$1;-><init>(Lcom/transsion/subroom/activity/SecondFloorHelper;Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    const/4 v7, 0x3

    .line 18
    const/4 v8, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper;->l:Lkotlinx/coroutines/t1;

    .line 26
    .line 27
    return-void
.end method
