.class public final Lcom/transsion/postdetail/layer/local/o1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/layer/local/o1$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/transsion/postdetail/layer/local/o1$a;

.field private static final c:Lkotlin/Lazy;


# instance fields
.field private final a:Lmn/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/postdetail/layer/local/o1$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/postdetail/layer/local/o1$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/postdetail/layer/local/o1;->b:Lcom/transsion/postdetail/layer/local/o1$a;

    .line 8
    .line 9
    new-instance v0, Lcom/transsion/postdetail/layer/local/i1;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/transsion/postdetail/layer/local/i1;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lcom/transsion/postdetail/layer/local/o1;->c:Lkotlin/Lazy;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Lmn/c;)V
    .locals 1

    .line 1
    const-string v0, "bind"

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
    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/o1;->a:Lmn/c;

    .line 10
    .line 11
    iget-object v0, p1, Lmn/c;->b:Lcom/airbnb/lottie/LottieAnimationView;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p1, Lmn/c;->c:Lcom/airbnb/lottie/LottieAnimationView;

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static synthetic a()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/layer/local/o1;->d()Lcom/tencent/mmkv/MMKV;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic b()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/postdetail/layer/local/o1;->c:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method

.method private final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/o1;->a:Lmn/c;

    .line 2
    .line 3
    iget-object v1, v0, Lmn/c;->f:Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;

    .line 4
    .line 5
    const-string v2, "vDoubleClick"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Luf/c;->g(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Lmn/c;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 14
    .line 15
    const-string v2, "tvDoubleClickLeft"

    .line 16
    .line 17
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Luf/c;->g(Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, v0, Lmn/c;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 24
    .line 25
    const-string v2, "tvDoubleClickRight"

    .line 26
    .line 27
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Luf/c;->g(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, v0, Lmn/c;->b:Lcom/airbnb/lottie/LottieAnimationView;

    .line 34
    .line 35
    const-string v2, "lottieDoubleClickLeft"

    .line 36
    .line 37
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v1}, Luf/c;->g(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, v0, Lmn/c;->c:Lcom/airbnb/lottie/LottieAnimationView;

    .line 44
    .line 45
    const-string v2, "lottieDoubleClickRight"

    .line 46
    .line 47
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v1}, Luf/c;->g(Landroid/view/View;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, v0, Lmn/c;->b:Lcom/airbnb/lottie/LottieAnimationView;

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 56
    .line 57
    .line 58
    iget-object v1, v0, Lmn/c;->c:Lcom/airbnb/lottie/LottieAnimationView;

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lmn/c;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v1, "getRoot(...)"

    .line 68
    .line 69
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method private static final d()Lcom/tencent/mmkv/MMKV;
    .locals 2

    .line 1
    const-string v0, "kv_video_double"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->I(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "mmkvWithID(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method


# virtual methods
.method public final e(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/o1;->a:Lmn/c;

    .line 2
    .line 3
    iget-object v1, v0, Lmn/c;->f:Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;

    .line 4
    .line 5
    const-string v2, "vDoubleClick"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Luf/c;->k(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Luf/c;->f()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    move v2, p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    if-nez p1, :cond_1

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v2, 0x0

    .line 26
    :goto_0
    iget-object v3, v0, Lmn/c;->f:Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;

    .line 27
    .line 28
    invoke-virtual {v3, v2}, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->setLeftStyle(Z)V

    .line 29
    .line 30
    .line 31
    const/high16 v2, -0x40800000    # -1.0f

    .line 32
    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    iget-object p1, v0, Lmn/c;->c:Lcom/airbnb/lottie/LottieAnimationView;

    .line 38
    .line 39
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 40
    .line 41
    .line 42
    :cond_2
    iget-object p1, v0, Lmn/c;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 43
    .line 44
    const-string v1, "tvDoubleClickRight"

    .line 45
    .line 46
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, v0, Lmn/c;->c:Lcom/airbnb/lottie/LottieAnimationView;

    .line 53
    .line 54
    const-string v1, "lottieDoubleClickRight"

    .line 55
    .line 56
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, v0, Lmn/c;->c:Lcom/airbnb/lottie/LottieAnimationView;

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    if-eqz v1, :cond_4

    .line 69
    .line 70
    iget-object p1, v0, Lmn/c;->b:Lcom/airbnb/lottie/LottieAnimationView;

    .line 71
    .line 72
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 73
    .line 74
    .line 75
    :cond_4
    iget-object p1, v0, Lmn/c;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 76
    .line 77
    const-string v1, "tvDoubleClickLeft"

    .line 78
    .line 79
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 83
    .line 84
    .line 85
    iget-object p1, v0, Lmn/c;->b:Lcom/airbnb/lottie/LottieAnimationView;

    .line 86
    .line 87
    const-string v1, "lottieDoubleClickLeft"

    .line 88
    .line 89
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 93
    .line 94
    .line 95
    iget-object p1, v0, Lmn/c;->b:Lcom/airbnb/lottie/LottieAnimationView;

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 98
    .line 99
    .line 100
    :goto_1
    invoke-virtual {v0}, Lmn/c;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    const-string v0, "getRoot(...)"

    .line 105
    .line 106
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/o1;->c()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/o1;->c()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
