.class public final Luw/a;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Luw/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Luw/a;

    .line 2
    .line 3
    invoke-direct {v0}, Luw/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Luw/a;->a:Luw/a;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic a(Luw/a;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Luw/a;->d(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic b(Luw/a;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Luw/a;->e(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic c(Luw/a;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Luw/a;->f(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final d(Landroid/app/Activity;)V
    .locals 9

    .line 1
    const-string v0, "FLOAT_VIEW_TAG"

    .line 2
    .line 3
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup"

    .line 14
    .line 15
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    check-cast v1, Landroid/view/ViewGroup;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/transsion/wrapperad/activate/ui/SwipeUpCloseView;

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-virtual {v2, p1}, Lcom/transsion/wrapperad/activate/ui/SwipeUpCloseView;->onActivityResume(Landroid/app/Activity;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance v8, Lcom/transsion/wrapperad/activate/ui/SwipeUpCloseView;

    .line 35
    .line 36
    const/4 v6, 0x6

    .line 37
    const/4 v7, 0x0

    .line 38
    const/4 v4, 0x0

    .line 39
    const/4 v5, 0x0

    .line 40
    move-object v2, v8

    .line 41
    move-object v3, p1

    .line 42
    invoke-direct/range {v2 .. v7}, Lcom/transsion/wrapperad/activate/ui/SwipeUpCloseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v8, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 49
    .line 50
    const/4 v2, -0x1

    .line 51
    const/4 v3, -0x2

    .line 52
    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 53
    .line 54
    .line 55
    const/16 v2, 0x31

    .line 56
    .line 57
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 58
    .line 59
    invoke-static {p1}, Lcom/gyf/immersionbar/ImmersionBar;->getStatusBarHeight(Landroid/app/Activity;)I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 64
    .line 65
    const/high16 v2, 0x41400000    # 12.0f

    .line 66
    .line 67
    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 72
    .line 73
    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 78
    .line 79
    invoke-virtual {v1, v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v8, p1}, Lcom/transsion/wrapperad/activate/ui/SwipeUpCloseView;->onActivityResume(Landroid/app/Activity;)V

    .line 83
    .line 84
    .line 85
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 86
    .line 87
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :goto_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 92
    .line 93
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    :goto_1
    return-void
.end method

.method private final e(Landroid/app/Activity;)V
    .locals 9

    .line 1
    const-string v0, "INSTALLED_FLOAT_VIEW_TAG"

    .line 2
    .line 3
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup"

    .line 14
    .line 15
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    check-cast v1, Landroid/view/ViewGroup;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-virtual {v2, p1}, Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;->onActivityResume(Landroid/app/Activity;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_2

    .line 34
    :cond_0
    new-instance v8, Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;

    .line 35
    .line 36
    const/4 v6, 0x6

    .line 37
    const/4 v7, 0x0

    .line 38
    const/4 v4, 0x0

    .line 39
    const/4 v5, 0x0

    .line 40
    move-object v2, v8

    .line 41
    move-object v3, p1

    .line 42
    invoke-direct/range {v2 .. v7}, Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v8, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 49
    .line 50
    const/4 v2, -0x1

    .line 51
    const/4 v3, -0x2

    .line 52
    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 53
    .line 54
    .line 55
    const/16 v2, 0x51

    .line 56
    .line 57
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 58
    .line 59
    instance-of v2, p1, Lcom/transsion/baseui/activity/BaseMusicFloatActivity;

    .line 60
    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    move-object v2, p1

    .line 64
    check-cast v2, Lcom/transsion/baseui/activity/BaseMusicFloatActivity;

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const/4 v2, 0x0

    .line 68
    :goto_0
    if-eqz v2, :cond_2

    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/transsion/baseui/activity/BaseMusicFloatActivity;->getTipViewBottomMargin()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    const/high16 v2, 0x41400000    # 12.0f

    .line 78
    .line 79
    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 84
    .line 85
    :goto_1
    invoke-virtual {v1, v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v8, p1}, Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;->onActivityResume(Landroid/app/Activity;)V

    .line 89
    .line 90
    .line 91
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 92
    .line 93
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .line 95
    .line 96
    goto :goto_3

    .line 97
    :goto_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 98
    .line 99
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    :goto_3
    return-void
.end method

.method private final f(Landroid/app/Activity;)V
    .locals 3

    .line 1
    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    .line 2
    .line 3
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast v1, Landroid/view/ViewGroup;

    .line 17
    .line 18
    const-string v2, "FLOAT_VIEW_TAG"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/transsion/wrapperad/activate/ui/SwipeUpCloseView;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Lcom/transsion/wrapperad/activate/ui/SwipeUpCloseView;->onActivityPause(Landroid/app/Activity;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception v1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :goto_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 41
    .line 42
    invoke-static {v1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    check-cast v1, Landroid/view/ViewGroup;

    .line 61
    .line 62
    const-string v0, "INSTALLED_FLOAT_VIEW_TAG"

    .line 63
    .line 64
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;

    .line 69
    .line 70
    if-eqz v0, :cond_1

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Lcom/transsion/wrapperad/install/ui/AppInstalledTipView;->onActivityPause(Landroid/app/Activity;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :catchall_1
    move-exception p1

    .line 77
    goto :goto_2

    .line 78
    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 79
    .line 80
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 81
    .line 82
    .line 83
    goto :goto_3

    .line 84
    :goto_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 85
    .line 86
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    :goto_3
    return-void
.end method


# virtual methods
.method public final g(Landroid/app/Application;)V
    .locals 1

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Luw/a$a;

    .line 7
    .line 8
    invoke-direct {v0}, Luw/a$a;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
