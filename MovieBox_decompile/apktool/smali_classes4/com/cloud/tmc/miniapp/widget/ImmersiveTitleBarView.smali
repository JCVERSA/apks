.class public final Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;
.super Landroid/widget/FrameLayout;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/structure/ui/TitleBar;


# instance fields
.field public final OooO:Lkotlin/Lazy;

.field public OooO00o:Landroid/view/View$OnClickListener;

.field public OooO0O0:Landroid/view/View$OnClickListener;

.field public OooO0OO:Landroid/view/View$OnClickListener;

.field public final OooO0Oo:Lkotlin/Lazy;

.field public final OooO0o:Lkotlin/Lazy;

.field public final OooO0o0:Lkotlin/Lazy;

.field public final OooO0oO:Lkotlin/Lazy;

.field public final OooO0oo:Lkotlin/Lazy;

.field public OooOO0:I

.field public OooOO0O:Z

.field public OooOO0o:I

.field public OooOOO:Lcom/cloud/tmc/miniapp/widget/AddScreenView;

.field public OooOOO0:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    .line 8
    .line 9
    new-instance p2, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView$OooO0o;

    .line 10
    .line 11
    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView$OooO0o;-><init>(Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooO0Oo:Lkotlin/Lazy;

    .line 19
    .line 20
    new-instance p2, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView$OooOO0O;

    .line 21
    .line 22
    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView$OooOO0O;-><init>(Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooO0o0:Lkotlin/Lazy;

    .line 30
    .line 31
    new-instance p2, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView$OooO0OO;

    .line 32
    .line 33
    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView$OooO0OO;-><init>(Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooO0o:Lkotlin/Lazy;

    .line 41
    .line 42
    new-instance p2, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView$OooO;

    .line 43
    .line 44
    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView$OooO;-><init>(Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooO0oO:Lkotlin/Lazy;

    .line 52
    .line 53
    new-instance p2, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView$OooOO0;

    .line 54
    .line 55
    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView$OooOO0;-><init>(Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooO0oo:Lkotlin/Lazy;

    .line 63
    .line 64
    new-instance p2, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView$OooOOO0;

    .line 65
    .line 66
    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView$OooOOO0;-><init>(Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooO:Lkotlin/Lazy;

    .line 74
    .line 75
    const/4 p2, 0x1

    .line 76
    iput p2, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooOO0o:I

    .line 77
    .line 78
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    sget p2, Lcom/cloud/tmc/miniapp/R$layout;->layout_mini_app_title_bar:I

    .line 83
    .line 84
    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->getIvHome()Landroidx/appcompat/widget/AppCompatImageView;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    new-instance p2, Lcom/cloud/tmc/miniapp/widget/d;

    .line 92
    .line 93
    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/d;-><init>(Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    .line 98
    .line 99
    :try_start_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->getIvHome()Landroidx/appcompat/widget/AppCompatImageView;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ViewUtils;->isLayoutRtl()Z

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    if-eqz p2, :cond_0

    .line 108
    .line 109
    const/high16 p2, 0x43340000    # 180.0f

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_0
    const/4 p2, 0x0

    .line 113
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotationY(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :catchall_0
    move-exception p1

    .line 118
    const-string p2, "TitleBarView"

    .line 119
    .line 120
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    :goto_1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->getCapsule()Lcom/cloud/tmc/miniapp/widget/CapsuleView;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    new-instance p2, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView$OooO00o;

    .line 128
    .line 129
    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->setOnLeftClickListener(Lkotlin/jvm/functions/Function0;)V

    .line 133
    .line 134
    .line 135
    new-instance p2, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView$OooO0O0;

    .line 136
    .line 137
    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->setOnRightClickListener(Lkotlin/jvm/functions/Function0;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooO00o()V

    .line 144
    .line 145
    .line 146
    return-void
.end method

.method public static final synthetic OooO00o(Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;)Lcom/cloud/tmc/miniapp/widget/CapsuleView;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->getCapsule()Lcom/cloud/tmc/miniapp/widget/CapsuleView;

    move-result-object p0

    return-object p0
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;Landroid/view/View;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/cloud/tmc/integration/utils/FastClickUtil;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooOO0:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooO00o:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooO0O0:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static final OooO0O0(Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;Landroid/view/View;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/cloud/tmc/integration/utils/FastClickUtil;->isFastDoubleClick()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooO0OO:Landroid/view/View$OnClickListener;

    .line 14
    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method private final getCapsule()Lcom/cloud/tmc/miniapp/widget/CapsuleView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooO0o:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "<get-capsule>(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;

    .line 13
    .line 14
    return-object v0
.end method

.method private final getFlHome()Landroid/widget/FrameLayout;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooO0Oo:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "<get-flHome>(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Landroid/widget/FrameLayout;

    .line 13
    .line 14
    return-object v0
.end method

.method private final getFlMenuContainer()Landroid/widget/FrameLayout;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooO0oO:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "<get-flMenuContainer>(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Landroid/widget/FrameLayout;

    .line 13
    .line 14
    return-object v0
.end method

.method private final getIvAddScreen()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooO0oo:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "<get-ivAddScreen>(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 13
    .line 14
    return-object v0
.end method

.method private final getIvHome()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooO0o0:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "<get-ivHome>(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 13
    .line 14
    return-object v0
.end method

.method private final getTvAppTitle()Landroid/widget/TextView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooO:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "<get-tvAppTitle>(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Landroid/widget/TextView;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public final OooO00o()V
    .locals 2

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/SystemUtils;->darkThemeIsEnabled(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooOO0o:I

    .line 7
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->setThemeMode(I)V

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/CommonExtKt;->getDp2px(I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/cloud/tmc/integration/utils/MiniBarUtils;->getStatusHeight()I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 10
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/constants/IntegrationConstants;->INSTANCE:Lcom/cloud/tmc/integration/constants/IntegrationConstants;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/constants/IntegrationConstants;->getDefaultNavigationBarBackgroundColor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 12
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->setBackgroundColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 13
    const-string v1, "[ImmersiveTitleBarView]: error"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public attachPage(Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageContext()Lcom/cloud/tmc/integration/structure/PageContext;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/PageContext;->getContentView()Landroid/view/ViewGroup;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    sget v0, Lcom/cloud/tmc/miniapp/R$id;->addScreenView:I

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/cloud/tmc/miniapp/widget/AddScreenView;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-static {}, Lcom/cloud/tmc/integration/utils/MiniBarUtils;->getStatusHeight()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    int-to-float v1, v1

    .line 34
    add-float/2addr v0, v1

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ViewUtils;->isLayoutRtl()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sget v1, Lcom/cloud/tmc/miniapp/R$dimen;->mini_dp_100:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sget v1, Lcom/cloud/tmc/miniapp/R$dimen;->mini_dp_m_100:I

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 66
    .line 67
    .line 68
    new-instance v0, Lcom/cloud/tmc/miniapp/widget/c;

    .line 69
    .line 70
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/widget/c;-><init>(Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    const/4 p1, 0x0

    .line 78
    :goto_1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooOOO:Lcom/cloud/tmc/miniapp/widget/AddScreenView;

    .line 79
    .line 80
    return-void
.end method

.method public getAddScreenVisibility()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooOOO:Lcom/cloud/tmc/miniapp/widget/AddScreenView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->getVisible(Landroid/view/View;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    return v1
.end method

.method public getContent()Landroid/view/View;
    .locals 0

    .line 1
    return-object p0
.end method

.method public getHomeAction()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooOO0:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public isTransparent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooOO0O:Z

    .line 2
    .line 3
    return v0
.end method

.method public setAddScreenVisibility(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooOO0O:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooOOO0:I

    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setHomeAction(IZ)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooOO0:I

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooOO0o:I

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->setThemeMode(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setHomeVisibility(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->getFlHome()Landroid/widget/FrameLayout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisibleOrGone(Landroid/view/View;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setOnAddScreenClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooO0OO:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnBackClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooO00o:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnHomeClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooO0O0:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    return-void
.end method

.method public setThemeMode(I)V
    .locals 5

    .line 1
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooOO0o:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooOOO:Lcom/cloud/tmc/miniapp/widget/AddScreenView;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->getVisible(Landroid/view/View;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooOOO:Lcom/cloud/tmc/miniapp/widget/AddScreenView;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/widget/AddScreenView;->setThemeMode(I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->getVisible(Landroid/view/View;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->getIvHome()Landroidx/appcompat/widget/AppCompatImageView;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooOO0:I

    .line 33
    .line 34
    const/4 v3, 0x2

    .line 35
    const/4 v4, 0x0

    .line 36
    if-eq v2, v3, :cond_2

    .line 37
    .line 38
    move v2, v1

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    move v2, v4

    .line 41
    :goto_0
    invoke-static {v0, v2}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisibleOrGone(Landroid/view/View;Z)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->getCapsule()Lcom/cloud/tmc/miniapp/widget/CapsuleView;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooOO0:I

    .line 49
    .line 50
    if-ne v2, v3, :cond_3

    .line 51
    .line 52
    move v2, v1

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    move v2, v4

    .line 55
    :goto_1
    invoke-static {v0, v2}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisibleOrGone(Landroid/view/View;Z)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->getCapsule()Lcom/cloud/tmc/miniapp/widget/CapsuleView;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->getVisible(Landroid/view/View;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->getCapsule()Lcom/cloud/tmc/miniapp/widget/CapsuleView;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const/4 v2, 0x0

    .line 73
    invoke-static {v0, p1, v2, v3}, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooO00o(Lcom/cloud/tmc/miniapp/widget/CapsuleView;ILjava/util/HashMap;I)V

    .line 74
    .line 75
    .line 76
    :cond_4
    if-eqz p1, :cond_8

    .line 77
    .line 78
    if-eq p1, v1, :cond_5

    .line 79
    .line 80
    goto :goto_4

    .line 81
    :cond_5
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->getIvHome()Landroidx/appcompat/widget/AppCompatImageView;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    sget v0, Lcom/cloud/tmc/miniapp/R$drawable;->shape_bg_title_bar_no_stroke_black_mode:I

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    .line 88
    .line 89
    .line 90
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->getIvHome()Landroidx/appcompat/widget/AppCompatImageView;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooOO0:I

    .line 95
    .line 96
    if-eqz v0, :cond_7

    .line 97
    .line 98
    if-eq v0, v1, :cond_6

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_6
    sget v4, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_immersive_title_bar_back_black_mode:I

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_7
    sget v4, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_immersive_title_bar_home_black_mode:I

    .line 105
    .line 106
    :goto_2
    invoke-virtual {p1, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 107
    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_8
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->getIvHome()Landroidx/appcompat/widget/AppCompatImageView;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    sget v0, Lcom/cloud/tmc/miniapp/R$drawable;->shape_bg_title_bar_no_stroke_white_mode:I

    .line 115
    .line 116
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    .line 117
    .line 118
    .line 119
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->getIvHome()Landroidx/appcompat/widget/AppCompatImageView;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooOO0:I

    .line 124
    .line 125
    if-eqz v0, :cond_a

    .line 126
    .line 127
    if-eq v0, v1, :cond_9

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_9
    sget v4, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_title_back_white_mode:I

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_a
    sget v4, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_title_home_white_mode:I

    .line 134
    .line 135
    :goto_3
    invoke-virtual {p1, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 136
    .line 137
    .line 138
    :goto_4
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->getTvAppTitle()Landroid/widget/TextView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setTitleBarVisible(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooOO0o:I

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->setThemeMode(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisibleOrGone(Landroid/view/View;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setTitleColor(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->getTvAppTitle()Landroid/widget/TextView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    sget p1, Lcom/cloud/tmc/miniapp/R$color;->default_navigation_bar_title_white_color:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget p1, Lcom/cloud/tmc/miniapp/R$color;->default_navigation_bar_title_black_color:I

    .line 15
    .line 16
    :goto_0
    invoke-static {v1, p1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public setTitleVisible(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->getTvAppTitle()Landroid/widget/TextView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisibleOrGone(Landroid/view/View;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setTransparent(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooOO0O:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->setBackgroundColor(I)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->OooOOO0:I

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->setBackgroundColor(I)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method
