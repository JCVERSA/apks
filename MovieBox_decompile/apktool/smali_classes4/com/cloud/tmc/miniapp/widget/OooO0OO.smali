.class public final Lcom/cloud/tmc/miniapp/widget/OooO0OO;
.super Landroid/widget/RelativeLayout;
.source "source.java"


# instance fields
.field public OooO:Lcom/cloud/tmc/integration/structure/Page;

.field public final OooO00o:Lkotlin/Lazy;

.field public final OooO0O0:Lkotlin/Lazy;

.field public final OooO0OO:Lkotlin/Lazy;

.field public final OooO0Oo:Lkotlin/Lazy;

.field public final OooO0o:Lcom/cloud/tmc/kernel/resource/IResourceProcessor;

.field public final OooO0o0:Lkotlin/Lazy;

.field public OooO0oO:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

.field public OooO0oo:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;

.field public OooOO0:Lcom/cloud/tmc/miniapp/widget/badgeview/OooO00o;

.field public OooOO0O:Z

.field public OooOO0o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    const-string p2, "context"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    .line 9
    .line 10
    new-instance p2, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO0o;

    .line 11
    .line 12
    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO0o;-><init>(Lcom/cloud/tmc/miniapp/widget/OooO0OO;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO00o:Lkotlin/Lazy;

    .line 20
    .line 21
    new-instance p2, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooOO0O;

    .line 22
    .line 23
    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooOO0O;-><init>(Lcom/cloud/tmc/miniapp/widget/OooO0OO;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO0O0:Lkotlin/Lazy;

    .line 31
    .line 32
    new-instance p2, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO0O0;

    .line 33
    .line 34
    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/widget/OooO0OO;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO0OO:Lkotlin/Lazy;

    .line 42
    .line 43
    new-instance p2, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO0OO;

    .line 44
    .line 45
    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO0OO;-><init>(Lcom/cloud/tmc/miniapp/widget/OooO0OO;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO0Oo:Lkotlin/Lazy;

    .line 53
    .line 54
    new-instance p2, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO00o;

    .line 55
    .line 56
    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/widget/OooO0OO;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO0o0:Lkotlin/Lazy;

    .line 64
    .line 65
    const-class p2, Lcom/cloud/tmc/kernel/resource/IResourceProcessor;

    .line 66
    .line 67
    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    const-string v0, "get(\n        IResourceProcessor::class.java\n    )"

    .line 72
    .line 73
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    check-cast p2, Lcom/cloud/tmc/kernel/resource/IResourceProcessor;

    .line 77
    .line 78
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO0o:Lcom/cloud/tmc/kernel/resource/IResourceProcessor;

    .line 79
    .line 80
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    sget p2, Lcom/cloud/tmc/miniapp/R$layout;->layout_mini_tab_item:I

    .line 85
    .line 86
    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    const/16 p1, 0x11

    .line 90
    .line 91
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 92
    .line 93
    .line 94
    const-string p1, ""

    .line 95
    .line 96
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooOO0o:Ljava/lang/String;

    .line 97
    .line 98
    return-void
.end method

.method public static final synthetic OooO00o(Lcom/cloud/tmc/miniapp/widget/OooO0OO;)Landroidx/appcompat/widget/AppCompatImageView;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->getIvRedIcon()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic OooO0O0(Lcom/cloud/tmc/miniapp/widget/OooO0OO;)Landroidx/appcompat/widget/AppCompatImageView;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->getIvTabIcon()Landroidx/appcompat/widget/AppCompatImageView;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final getIvBadge()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO0o0:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "<get-ivBadge>(...)"

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

.method private final getIvRed()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO0OO:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "<get-ivRed>(...)"

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

.method private final getIvRedIcon()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO0Oo:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "<get-ivRedIcon>(...)"

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

.method private final getIvTabIcon()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO00o:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "<get-ivTabIcon>(...)"

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

.method private final getTvTabName()Landroidx/appcompat/widget/AppCompatTextView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO0O0:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "<get-tvTabName>(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public final OooO00o()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooOO0:Lcom/cloud/tmc/miniapp/widget/badgeview/OooO00o;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO00o(I)Lcom/cloud/tmc/miniapp/widget/badgeview/OooO00o;

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->getIvBadge()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public final OooO00o(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 3

    const-string v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO0oO:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;->tabBarPositionIsTop()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->getIvTabIcon()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toGone(Landroid/view/View;)V

    goto :goto_3

    .line 7
    :cond_0
    iget-object v0, p1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;->selectedIconPath:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;->iconPath:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 8
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    iget-object v2, p1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;->pagePath:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;->selectedIconPath:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object v1, p1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;->iconPath:Ljava/lang/String;

    :goto_1
    if-eqz p2, :cond_5

    .line 9
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 10
    :cond_5
    new-instance p2, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooOOO0;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooOOO0;-><init>(Lcom/cloud/tmc/miniapp/widget/OooO0OO;)V

    invoke-virtual {p0, v1, v0, p2}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 11
    :cond_6
    :goto_2
    iget-object p1, p1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;->text:Ljava/lang/String;

    if-eqz p1, :cond_7

    .line 12
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->getTvTabName()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public final OooO00o(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 3

    const-string v0, "tabBarConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tab"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO0oO:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    .line 19
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO0oo:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;

    .line 20
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO:Lcom/cloud/tmc/integration/structure/Page;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 21
    invoke-interface {p3}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iget-object v2, p2, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;->pagePath:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooOO0O:Z

    .line 22
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;->tabBarPositionIsTop()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 23
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->getIvTabIcon()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p3

    invoke-static {p3}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toGone(Landroid/view/View;)V

    goto :goto_2

    .line 24
    :cond_1
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooOO0O:Z

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;->selectedIconPath:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v1, p2, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;->iconPath:Ljava/lang/String;

    :goto_1
    if-eqz p3, :cond_3

    .line 25
    invoke-interface {p3}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-interface {p3}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 26
    :cond_3
    new-instance p3, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooOO0;

    invoke-direct {p3, p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooOO0;-><init>(Lcom/cloud/tmc/miniapp/widget/OooO0OO;)V

    invoke-virtual {p0, v1, v0, p3}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 27
    :goto_2
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->getTvTabName()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p3

    iget-object p2, p2, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;->text:Ljava/lang/String;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-boolean p2, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooOO0O:Z

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;->getSelectedColor()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;->getColor()Ljava/lang/String;

    move-result-object p1

    .line 29
    :goto_3
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO00o(Ljava/lang/String;)V

    return-void
.end method

.method public final OooO00o(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 13
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->getTvTabName()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    .line 15
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 16
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 17
    const-string v0, "[TabBarItemView]: set tab item text color error"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final OooO00o(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/graphics/drawable/Drawable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 30
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 31
    :cond_0
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/RegexUtils;->isURL(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, ".miniapp.transsion.com"

    invoke-static {p1, v3, v1, v2, v0}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 32
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v0, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;-><init>(Lcom/cloud/tmc/miniapp/widget/OooO0OO;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void

    .line 33
    :cond_1
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooOO0o:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 34
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO0o:Lcom/cloud/tmc/kernel/resource/IResourceProcessor;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooOO0o:Ljava/lang/String;

    invoke-interface {v1, p1, p2, v2}, Lcom/cloud/tmc/kernel/resource/IResourceProcessor;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    goto :goto_0

    .line 35
    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO0o:Lcom/cloud/tmc/kernel/resource/IResourceProcessor;

    invoke-interface {v1, p1, p2}, Lcom/cloud/tmc/kernel/resource/IResourceProcessor;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    .line 36
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 37
    :cond_4
    :goto_1
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final getPage()Lcom/cloud/tmc/integration/structure/Page;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO:Lcom/cloud/tmc/integration/structure/Page;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTabBarConfig()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO0oO:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTabBarList()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO0oo:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTabSelected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooOO0O:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setCommonresId(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooOO0o:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setPage(Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO:Lcom/cloud/tmc/integration/structure/Page;

    .line 2
    .line 3
    return-void
.end method

.method public final setTabBarBadge(Ljava/lang/String;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_7

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooOO0:Lcom/cloud/tmc/miniapp/widget/badgeview/OooO00o;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-direct {v0, v2, v3}, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->getIvBadge()Landroidx/appcompat/widget/AppCompatImageView;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v2}, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO00o(Landroid/view/View;)Lcom/cloud/tmc/miniapp/widget/badgeview/OooO00o;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;

    .line 35
    .line 36
    const v2, 0x800013

    .line 37
    .line 38
    .line 39
    iput v2, v0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0oo:I

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 42
    .line 43
    .line 44
    const/high16 v2, 0x41000000    # 8.0f

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-static {v3, v2}, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0OO;->OooO00o(Landroid/content/Context;F)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    int-to-float v2, v2

    .line 55
    iput v2, v0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0OO:F

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0OO()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 61
    .line 62
    .line 63
    const/high16 v2, 0x40000000    # 2.0f

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-static {v3, v2}, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0OO;->OooO00o(Landroid/content/Context;F)I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    int-to-float v2, v2

    .line 74
    iput v2, v0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0Oo:F

    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    const/4 v3, 0x0

    .line 84
    invoke-static {v2, v3}, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0OO;->OooO00o(Landroid/content/Context;F)I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    int-to-float v2, v2

    .line 89
    iput v2, v0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO:F

    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-static {v2, v3}, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0OO;->OooO00o(Landroid/content/Context;F)I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    int-to-float v2, v2

    .line 100
    iput v2, v0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooOO0:F

    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 103
    .line 104
    .line 105
    iput-boolean v1, v0, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0oO:Z

    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 108
    .line 109
    .line 110
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooOO0:Lcom/cloud/tmc/miniapp/widget/badgeview/OooO00o;

    .line 111
    .line 112
    :cond_1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->getIvRed()Landroidx/appcompat/widget/AppCompatImageView;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->getVisible(Landroid/view/View;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_2

    .line 121
    .line 122
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->setUnreadVisible(Z)V

    .line 123
    .line 124
    .line 125
    :cond_2
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->getIvRedIcon()Landroidx/appcompat/widget/AppCompatImageView;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->getVisible(Landroid/view/View;)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_3

    .line 134
    .line 135
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->setUnreadIconVisible(Z)V

    .line 136
    .line 137
    .line 138
    :cond_3
    sget-object v0, Lkotlin/text/Charsets;->b:Ljava/nio/charset/Charset;

    .line 139
    .line 140
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    const-string v1, "this as java.lang.String).getBytes(charset)"

    .line 145
    .line 146
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    new-instance v1, Lkotlin/text/Regex;

    .line 150
    .line 151
    const-string v2, ".*[\\u4e00-\\u9fa5]+.*"

    .line 152
    .line 153
    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, p1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-eqz v1, :cond_4

    .line 161
    .line 162
    const/4 v1, 0x6

    .line 163
    goto :goto_0

    .line 164
    :cond_4
    const/4 v1, 0x4

    .line 165
    :goto_0
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooOO0:Lcom/cloud/tmc/miniapp/widget/badgeview/OooO00o;

    .line 166
    .line 167
    if-nez v2, :cond_5

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_5
    array-length v0, v0

    .line 171
    if-le v0, v1, :cond_6

    .line 172
    .line 173
    const-string p1, "..."

    .line 174
    .line 175
    :cond_6
    check-cast v2, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;

    .line 176
    .line 177
    iput-object p1, v2, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0o:Ljava/lang/String;

    .line 178
    .line 179
    const/4 p1, 0x1

    .line 180
    iput p1, v2, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0o0:I

    .line 181
    .line 182
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/widget/badgeview/OooO0o;->OooO0OO()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 186
    .line 187
    .line 188
    :goto_1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->getIvBadge()Landroidx/appcompat/widget/AppCompatImageView;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 193
    .line 194
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    :cond_7
    :goto_2
    return-void
.end method

.method public final setTabBarConfig(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO0oO:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    .line 2
    .line 3
    return-void
.end method

.method public final setTabBarList(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO0oo:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;

    .line 2
    .line 3
    return-void
.end method

.method public final setTabSelected(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooOO0O:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setUnreadIconVisible(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->getIvBadge()Landroidx/appcompat/widget/AppCompatImageView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO00o()V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->getIvRedIcon()Landroidx/appcompat/widget/AppCompatImageView;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0, p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisibleOrInvisible(Landroid/view/View;Z)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final setUnreadVisible(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->getIvBadge()Landroidx/appcompat/widget/AppCompatImageView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO00o()V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->getIvRed()Landroidx/appcompat/widget/AppCompatImageView;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0, p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisibleOrInvisible(Landroid/view/View;Z)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
