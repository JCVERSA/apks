.class public final Ljn/m;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljn/n;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/view/ViewGroup;

.field private final d:Ljava/lang/String;

.field private e:Lcom/transsion/player/orplayer/f;

.field private final f:Landroid/view/View;

.field private final g:Lkotlin/Lazy;

.field private final h:Lkotlin/Lazy;

.field private final i:Lkotlin/Lazy;

.field private final j:Lkotlin/Lazy;

.field private k:F

.field private l:Lkotlin/jvm/functions/Function2;

.field private m:F

.field private n:F

.field private o:Z

.field private final p:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    const-string v0, "context"

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
    iput-object p1, p0, Ljn/m;->b:Landroid/content/Context;

    .line 10
    .line 11
    iput-object p2, p0, Ljn/m;->c:Landroid/view/ViewGroup;

    .line 12
    .line 13
    const-string v0, "VideoBrightnessVolume"

    .line 14
    .line 15
    iput-object v0, p0, Ljn/m;->d:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    sget v1, Lcom/transsion/player/view/R$layout;->orplayer_layout_brightness_volume:I

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Ljn/m;->f:Landroid/view/View;

    .line 29
    .line 30
    new-instance p1, Ljn/g;

    .line 31
    .line 32
    invoke-direct {p1, p0}, Ljn/g;-><init>(Ljn/m;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Ljn/m;->g:Lkotlin/Lazy;

    .line 40
    .line 41
    new-instance p1, Ljn/h;

    .line 42
    .line 43
    invoke-direct {p1, p0}, Ljn/h;-><init>(Ljn/m;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Ljn/m;->h:Lkotlin/Lazy;

    .line 51
    .line 52
    new-instance p1, Ljn/i;

    .line 53
    .line 54
    invoke-direct {p1, p0}, Ljn/i;-><init>(Ljn/m;)V

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Ljn/m;->i:Lkotlin/Lazy;

    .line 62
    .line 63
    new-instance p1, Ljn/j;

    .line 64
    .line 65
    invoke-direct {p1, p0}, Ljn/j;-><init>(Ljn/m;)V

    .line 66
    .line 67
    .line 68
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iput-object p1, p0, Ljn/m;->j:Lkotlin/Lazy;

    .line 73
    .line 74
    if-nez p2, :cond_0

    .line 75
    .line 76
    const-string p1, " error: rootView is null !!!"

    .line 77
    .line 78
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    int-to-float p1, p1

    .line 86
    const/high16 v0, 0x40400000    # 3.0f

    .line 87
    .line 88
    div-float/2addr p1, v0

    .line 89
    const/high16 v0, 0x41c80000    # 25.0f

    .line 90
    .line 91
    div-float/2addr p1, v0

    .line 92
    iput p1, p0, Ljn/m;->k:F

    .line 93
    .line 94
    if-eqz p2, :cond_1

    .line 95
    .line 96
    new-instance p1, Ljn/k;

    .line 97
    .line 98
    invoke-direct {p1, p0}, Ljn/k;-><init>(Ljn/m;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 102
    .line 103
    .line 104
    :cond_1
    if-eqz p2, :cond_2

    .line 105
    .line 106
    new-instance p1, Ljn/m$a;

    .line 107
    .line 108
    invoke-direct {p1, p0}, Ljn/m$a;-><init>(Ljn/m;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2, p1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 112
    .line 113
    .line 114
    :cond_2
    invoke-direct {p0}, Ljn/m;->C()V

    .line 115
    .line 116
    .line 117
    new-instance p1, Ljn/l;

    .line 118
    .line 119
    invoke-direct {p1, p0}, Ljn/l;-><init>(Ljn/m;)V

    .line 120
    .line 121
    .line 122
    iput-object p1, p0, Ljn/m;->p:Ljava/lang/Runnable;

    .line 123
    .line 124
    return-void
.end method

.method private final A()V
    .locals 2

    .line 1
    iget-object v0, p0, Ljn/m;->c:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Ljn/m;->p:Ljava/lang/Runnable;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Ljn/m;->f:Landroid/view/View;

    .line 11
    .line 12
    const-string v1, "progressRootView"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x8

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private static final B(Ljn/m;)Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object p0, p0, Ljn/m;->f:Landroid/view/View;

    .line 2
    .line 3
    sget v0, Lcom/transsion/player/view/R$id;->bvIV:I

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/widget/ImageView;

    .line 10
    .line 11
    return-object p0
.end method

.method private final C()V
    .locals 2

    .line 1
    iget-object v0, p0, Ljn/m;->b:Landroid/content/Context;

    .line 2
    .line 3
    instance-of v1, v0, Landroidx/activity/ComponentActivity;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Landroidx/activity/ComponentActivity;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Ljn/m$b;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Ljn/m$b;-><init>(Ljn/m;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/t;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method private static final D(Ljn/m;)Landroid/widget/ProgressBar;
    .locals 1

    .line 1
    iget-object p0, p0, Ljn/m;->f:Landroid/view/View;

    .line 2
    .line 3
    sget v0, Lcom/transsion/player/view/R$id;->secProgress:I

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/widget/ProgressBar;

    .line 10
    .line 11
    return-object p0
.end method

.method private final E(ZI)V
    .locals 3

    .line 1
    if-gez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Ljn/m;->x()Landroid/widget/ImageView;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/16 v1, 0x64

    .line 9
    .line 10
    if-nez p2, :cond_2

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    sget p1, Lcom/transsion/player/view/R$mipmap;->ic_volume_0:I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    sget p1, Lcom/transsion/player/view/R$mipmap;->ic_brightness_33:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    const/16 v2, 0x21

    .line 21
    .line 22
    if-gt p2, v2, :cond_4

    .line 23
    .line 24
    if-eqz p1, :cond_3

    .line 25
    .line 26
    sget p1, Lcom/transsion/player/view/R$mipmap;->ic_volume_33:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_3
    sget p1, Lcom/transsion/player/view/R$mipmap;->ic_brightness_33:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_4
    const/16 v2, 0x42

    .line 33
    .line 34
    if-gt p2, v2, :cond_6

    .line 35
    .line 36
    if-eqz p1, :cond_5

    .line 37
    .line 38
    sget p1, Lcom/transsion/player/view/R$mipmap;->ic_volume_66:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_5
    sget p1, Lcom/transsion/player/view/R$mipmap;->ic_brightness_66:I

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_6
    if-gt p2, v1, :cond_8

    .line 45
    .line 46
    if-eqz p1, :cond_7

    .line 47
    .line 48
    sget p1, Lcom/transsion/player/view/R$mipmap;->ic_volume_66:I

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_7
    sget p1, Lcom/transsion/player/view/R$mipmap;->ic_brightness_100:I

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_8
    if-eqz p1, :cond_9

    .line 55
    .line 56
    sget p1, Lcom/transsion/player/view/R$mipmap;->ic_volume_100:I

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_9
    sget p1, Lcom/transsion/player/view/R$mipmap;->ic_brightness_100:I

    .line 60
    .line 61
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    .line 63
    .line 64
    invoke-direct {p0}, Ljn/m;->v()Landroid/widget/ProgressBar;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 69
    .line 70
    .line 71
    sub-int/2addr p2, v1

    .line 72
    const/4 p1, 0x0

    .line 73
    invoke-static {p2, p1}, Lkotlin/ranges/RangesKt;->e(II)I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    invoke-static {p2, v1}, Lkotlin/ranges/RangesKt;->h(II)I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    invoke-direct {p0}, Ljn/m;->y()Landroid/widget/ProgressBar;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const/4 v1, 0x1

    .line 86
    if-lez p2, :cond_a

    .line 87
    .line 88
    move v2, v1

    .line 89
    goto :goto_1

    .line 90
    :cond_a
    move v2, p1

    .line 91
    :goto_1
    if-eqz v2, :cond_b

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_b
    const/16 p1, 0x8

    .line 95
    .line 96
    :goto_2
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    invoke-direct {p0}, Ljn/m;->y()Landroid/widget/ProgressBar;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v1}, Ljn/m;->f(Z)V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method private static final F(Ljn/m;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object p0, p0, Ljn/m;->f:Landroid/view/View;

    .line 2
    .line 3
    sget v0, Lcom/transsion/player/view/R$id;->tipsLL:I

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private final G(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljn/m;->c()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Ljn/c;->a:Ljn/c;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Ljn/c;->k(I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/16 v1, 0x64

    .line 12
    .line 13
    if-gt p1, v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Ljn/m;->e:Lcom/transsion/player/orplayer/f;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const/high16 v2, 0x3f800000    # 1.0f

    .line 20
    .line 21
    invoke-interface {v1, v2}, Lcom/transsion/player/orplayer/f;->setVolume(F)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v1, p0, Ljn/m;->l:Lkotlin/jvm/functions/Function2;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-interface {v1, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    :cond_1
    const/4 v1, 0x1

    .line 38
    invoke-direct {p0, v1, p1}, Ljn/m;->E(ZI)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, p1, v0}, Ljn/m;->s(II)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public static synthetic h(Ljn/m;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-static {p0}, Ljn/m;->F(Ljn/m;)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i(Ljn/m;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    invoke-static {p0}, Ljn/m;->D(Ljn/m;)Landroid/widget/ProgressBar;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j(Ljn/m;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Ljn/m;->o(Ljn/m;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic k(Ljn/m;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljn/m;->u(Ljn/m;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic l(Ljn/m;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    invoke-static {p0}, Ljn/m;->q(Ljn/m;)Landroid/widget/ProgressBar;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic m(Ljn/m;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljn/m;->r(Ljn/m;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n(Ljn/m;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    invoke-static {p0}, Ljn/m;->B(Ljn/m;)Landroid/widget/ImageView;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final o(Ljn/m;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p3, 0x0

    .line 6
    if-nez p1, :cond_3

    .line 7
    .line 8
    const/16 p1, 0x18

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    if-eq p2, p1, :cond_1

    .line 12
    .line 13
    const/16 p1, 0x19

    .line 14
    .line 15
    if-eq p2, p1, :cond_0

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_0
    const/16 p1, -0xa

    .line 19
    .line 20
    invoke-direct {p0, p1}, Ljn/m;->G(I)V

    .line 21
    .line 22
    .line 23
    :goto_0
    move p3, v0

    .line 24
    goto :goto_2

    .line 25
    :cond_1
    invoke-virtual {p0}, Ljn/m;->c()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const/16 p2, 0x5b

    .line 30
    .line 31
    if-gt p2, p1, :cond_2

    .line 32
    .line 33
    const/16 p2, 0x64

    .line 34
    .line 35
    if-ge p1, p2, :cond_2

    .line 36
    .line 37
    sub-int/2addr p2, p1

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    const/16 p2, 0xa

    .line 40
    .line 41
    :goto_1
    invoke-direct {p0, p2}, Ljn/m;->G(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    :goto_2
    return p3
.end method

.method public static final synthetic p(Ljn/m;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Ljn/m;->c:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final q(Ljn/m;)Landroid/widget/ProgressBar;
    .locals 1

    .line 1
    iget-object p0, p0, Ljn/m;->f:Landroid/view/View;

    .line 2
    .line 3
    sget v0, Lcom/transsion/player/view/R$id;->bvProgress:I

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/widget/ProgressBar;

    .line 10
    .line 11
    return-object p0
.end method

.method private static final r(Ljn/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljn/m;->A()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final s(II)V
    .locals 3

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    if-le p1, v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ljn/m;->e:Lcom/transsion/player/orplayer/f;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    int-to-float v1, p1

    .line 10
    const/high16 v2, 0x42c80000    # 100.0f

    .line 11
    .line 12
    div-float/2addr v1, v2

    .line 13
    invoke-interface {v0, v1}, Lcom/transsion/player/orplayer/f;->setVolume(F)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-direct {p0, p1, p2}, Ljn/m;->t(II)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private final t(II)V
    .locals 2

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    if-ge p2, v0, :cond_0

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Ljn/m;->z()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 p2, 0x0

    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Ljn/m;->z()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    new-instance p2, Ljn/f;

    .line 20
    .line 21
    invoke-direct {p2, p0}, Ljn/f;-><init>(Ljn/m;)V

    .line 22
    .line 23
    .line 24
    const-wide/16 v0, 0x1f4

    .line 25
    .line 26
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method private static final u(Ljn/m;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljn/m;->z()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final v()Landroid/widget/ProgressBar;
    .locals 2

    .line 1
    iget-object v0, p0, Ljn/m;->h:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getValue(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Landroid/widget/ProgressBar;

    .line 13
    .line 14
    return-object v0
.end method

.method private final x()Landroid/widget/ImageView;
    .locals 2

    .line 1
    iget-object v0, p0, Ljn/m;->g:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getValue(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Landroid/widget/ImageView;

    .line 13
    .line 14
    return-object v0
.end method

.method private final y()Landroid/widget/ProgressBar;
    .locals 2

    .line 1
    iget-object v0, p0, Ljn/m;->i:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getValue(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Landroid/widget/ProgressBar;

    .line 13
    .line 14
    return-object v0
.end method

.method private final z()Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Ljn/m;->j:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getValue(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Landroid/view/View;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public a(FF)V
    .locals 4

    .line 1
    iget-object v0, p0, Ljn/m;->b:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    check-cast v0, Landroid/app/Activity;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/high16 v2, 0x3f800000    # 1.0f

    .line 22
    .line 23
    mul-float/2addr p2, v2

    .line 24
    add-float/2addr p1, p2

    .line 25
    const/4 p2, 0x0

    .line 26
    cmpg-float v3, p1, p2

    .line 27
    .line 28
    if-gtz v3, :cond_1

    .line 29
    .line 30
    move v2, p2

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    cmpl-float p2, p1, v2

    .line 33
    .line 34
    if-ltz p2, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    move v2, p1

    .line 38
    :goto_0
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Ljn/m;->l:Lkotlin/jvm/functions/Function2;

    .line 44
    .line 45
    const/16 p2, 0x64

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 50
    .line 51
    int-to-float v1, p2

    .line 52
    mul-float/2addr v1, v2

    .line 53
    float-to-int v1, v1

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    :cond_3
    int-to-float p1, p2

    .line 62
    mul-float/2addr v2, p1

    .line 63
    float-to-int p1, v2

    .line 64
    const/4 p2, 0x0

    .line 65
    invoke-direct {p0, p2, p1}, Ljn/m;->E(ZI)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public b()F
    .locals 3

    .line 1
    iget-object v0, p0, Ljn/m;->b:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    check-cast v0, Landroid/app/Activity;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    return v0

    .line 18
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 23
    .line 24
    invoke-virtual {p0}, Ljn/m;->w()F

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/high16 v2, -0x40800000    # -1.0f

    .line 29
    .line 30
    cmpg-float v2, v0, v2

    .line 31
    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    move v0, v1

    .line 35
    :cond_1
    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    sget-object v0, Ljn/c;->a:Ljn/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljn/c;->e()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public d(FFI)V
    .locals 1

    .line 1
    iget v0, p0, Ljn/m;->m:F

    .line 2
    .line 3
    cmpg-float v0, v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iput p1, p0, Ljn/m;->n:F

    .line 9
    .line 10
    iput p1, p0, Ljn/m;->m:F

    .line 11
    .line 12
    :goto_0
    if-gtz p3, :cond_1

    .line 13
    .line 14
    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    :cond_1
    iget p1, p0, Ljn/m;->n:F

    .line 19
    .line 20
    sub-float/2addr p1, p2

    .line 21
    const/high16 v0, 0x42a00000    # 80.0f

    .line 22
    .line 23
    mul-float/2addr p1, v0

    .line 24
    int-to-float p3, p3

    .line 25
    div-float/2addr p1, p3

    .line 26
    const/high16 p3, 0x3f000000    # 0.5f

    .line 27
    .line 28
    add-float/2addr p1, p3

    .line 29
    float-to-int p1, p1

    .line 30
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    if-nez p3, :cond_2

    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    iput p2, p0, Ljn/m;->n:F

    .line 38
    .line 39
    invoke-direct {p0, p1}, Ljn/m;->G(I)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public e(Lcom/transsion/player/orplayer/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljn/m;->e:Lcom/transsion/player/orplayer/f;

    .line 2
    .line 3
    return-void
.end method

.method public f(Z)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "show:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Ljn/m;->c:Landroid/view/ViewGroup;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    if-eqz p1, :cond_5

    .line 20
    .line 21
    iget-object p1, p0, Ljn/m;->f:Landroid/view/View;

    .line 22
    .line 23
    const-string v0, "progressRootView"

    .line 24
    .line 25
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 33
    .line 34
    iget-object p1, p0, Ljn/m;->c:Landroid/view/ViewGroup;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    add-int/lit8 v1, v1, -0x1

    .line 41
    .line 42
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iget-object v1, p0, Ljn/m;->f:Landroid/view/View;

    .line 47
    .line 48
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_1

    .line 53
    .line 54
    iget-object p1, p0, Ljn/m;->c:Landroid/view/ViewGroup;

    .line 55
    .line 56
    iget-object v1, p0, Ljn/m;->f:Landroid/view/View;

    .line 57
    .line 58
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    goto :goto_3

    .line 64
    :cond_1
    :goto_0
    iget-object p1, p0, Ljn/m;->c:Landroid/view/ViewGroup;

    .line 65
    .line 66
    iget-object v1, p0, Ljn/m;->f:Landroid/view/View;

    .line 67
    .line 68
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    const/4 v0, -0x1

    .line 76
    if-eq p1, v0, :cond_2

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    iget-object p1, p0, Ljn/m;->c:Landroid/view/ViewGroup;

    .line 80
    .line 81
    iget-object v0, p0, Ljn/m;->f:Landroid/view/View;

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 84
    .line 85
    .line 86
    :goto_1
    iget-boolean p1, p0, Ljn/m;->o:Z

    .line 87
    .line 88
    if-eqz p1, :cond_4

    .line 89
    .line 90
    iget-object p1, p0, Ljn/m;->f:Landroid/view/View;

    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 97
    .line 98
    if-eqz v0, :cond_3

    .line 99
    .line 100
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_3
    const/4 p1, 0x0

    .line 104
    :goto_2
    if-eqz p1, :cond_4

    .line 105
    .line 106
    invoke-static {}, Lcom/blankj/utilcode/util/d;->c()I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    iget-object v1, p0, Ljn/m;->b:Landroid/content/Context;

    .line 111
    .line 112
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    sget v2, Lcom/tn/lib/widget/R$dimen;->toolbar_height:I

    .line 117
    .line 118
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    float-to-int v1, v1

    .line 123
    add-int/2addr v0, v1

    .line 124
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 125
    .line 126
    iget-object v0, p0, Ljn/m;->f:Landroid/view/View;

    .line 127
    .line 128
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    .line 130
    .line 131
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 132
    .line 133
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .line 135
    .line 136
    goto :goto_4

    .line 137
    :goto_3
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 138
    .line 139
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    :goto_4
    iget-object p1, p0, Ljn/m;->c:Landroid/view/ViewGroup;

    .line 147
    .line 148
    iget-object v0, p0, Ljn/m;->p:Ljava/lang/Runnable;

    .line 149
    .line 150
    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 151
    .line 152
    .line 153
    iget-object p1, p0, Ljn/m;->c:Landroid/view/ViewGroup;

    .line 154
    .line 155
    iget-object v0, p0, Ljn/m;->p:Ljava/lang/Runnable;

    .line 156
    .line 157
    const-wide/16 v1, 0x1f4

    .line 158
    .line 159
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 160
    .line 161
    .line 162
    goto :goto_5

    .line 163
    :cond_5
    invoke-direct {p0}, Ljn/m;->A()V

    .line 164
    .line 165
    .line 166
    :goto_5
    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ljn/m;->o:Z

    .line 3
    .line 4
    return-void
.end method

.method public w()F
    .locals 2

    .line 1
    iget-object v0, p0, Ljn/m;->b:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    check-cast v0, Landroid/app/Activity;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :try_start_0
    const-string v1, "screen_brightness"

    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F

    .line 17
    .line 18
    .line 19
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    const/high16 v1, 0x3f800000    # 1.0f

    .line 21
    .line 22
    mul-float/2addr v0, v1

    .line 23
    const/16 v1, 0xff

    .line 24
    .line 25
    int-to-float v1, v1

    .line 26
    div-float/2addr v0, v1

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    return v0
.end method
