.class public final Lcom/transsion/postdetail/layer/local/k0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/layer/local/k0$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/transsion/postdetail/layer/local/k0$a;

.field private static final c:Lkotlin/Lazy;


# instance fields
.field private final a:Lwn/v;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/postdetail/layer/local/k0$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/postdetail/layer/local/k0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/postdetail/layer/local/k0;->b:Lcom/transsion/postdetail/layer/local/k0$a;

    .line 8
    .line 9
    new-instance v0, Lcom/transsion/postdetail/layer/local/j0;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/transsion/postdetail/layer/local/j0;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lcom/transsion/postdetail/layer/local/k0;->c:Lkotlin/Lazy;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Lwn/v;)V
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
    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/k0;->a:Lwn/v;

    .line 10
    .line 11
    iget-object v0, p1, Lwn/v;->b:Lcom/airbnb/lottie/LottieAnimationView;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p1, Lwn/v;->c:Lcom/airbnb/lottie/LottieAnimationView;

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
    invoke-static {}, Lcom/transsion/postdetail/layer/local/k0;->c()Lcom/tencent/mmkv/MMKV;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/k0;->a:Lwn/v;

    .line 2
    .line 3
    iget-object v1, v0, Lwn/v;->f:Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;

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
    iget-object v1, v0, Lwn/v;->d:Landroidx/appcompat/widget/AppCompatTextView;

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
    iget-object v1, v0, Lwn/v;->e:Landroidx/appcompat/widget/AppCompatTextView;

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
    iget-object v1, v0, Lwn/v;->b:Lcom/airbnb/lottie/LottieAnimationView;

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
    iget-object v1, v0, Lwn/v;->c:Lcom/airbnb/lottie/LottieAnimationView;

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
    iget-object v1, v0, Lwn/v;->b:Lcom/airbnb/lottie/LottieAnimationView;

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 56
    .line 57
    .line 58
    iget-object v1, v0, Lwn/v;->c:Lcom/airbnb/lottie/LottieAnimationView;

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lwn/v;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

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

.method private static final c()Lcom/tencent/mmkv/MMKV;
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
.method public final d(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/k0;->a:Lwn/v;

    .line 2
    .line 3
    iget-object v1, v0, Lwn/v;->f:Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;

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
    iget-object v1, v0, Lwn/v;->f:Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;

    .line 14
    .line 15
    xor-int/lit8 v2, p1, 0x1

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->setLeftStyle(Z)V

    .line 18
    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, v0, Lwn/v;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 23
    .line 24
    const-string v1, "tvDoubleClickRight"

    .line 25
    .line 26
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, v0, Lwn/v;->c:Lcom/airbnb/lottie/LottieAnimationView;

    .line 33
    .line 34
    const-string v1, "lottieDoubleClickRight"

    .line 35
    .line 36
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, v0, Lwn/v;->c:Lcom/airbnb/lottie/LottieAnimationView;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-object p1, v0, Lwn/v;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 49
    .line 50
    const-string v1, "tvDoubleClickLeft"

    .line 51
    .line 52
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, v0, Lwn/v;->b:Lcom/airbnb/lottie/LottieAnimationView;

    .line 59
    .line 60
    const-string v1, "lottieDoubleClickLeft"

    .line 61
    .line 62
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, v0, Lwn/v;->b:Lcom/airbnb/lottie/LottieAnimationView;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 71
    .line 72
    .line 73
    :goto_0
    invoke-virtual {v0}, Lwn/v;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const-string v0, "getRoot(...)"

    .line 78
    .line 79
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 83
    .line 84
    .line 85
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
    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/k0;->b()V

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
    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/k0;->b()V

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
