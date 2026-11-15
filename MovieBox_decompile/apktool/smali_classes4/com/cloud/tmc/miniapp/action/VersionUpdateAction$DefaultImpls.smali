.class public final Lcom/cloud/tmc/miniapp/action/VersionUpdateAction$DefaultImpls;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/action/VersionUpdateAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static isLoadStatusLoadingOrError(Lcom/cloud/tmc/miniapp/action/VersionUpdateAction;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->isLoadStatusLoadingOrError(Lcom/cloud/tmc/miniapp/action/StatusAction;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static setLoadingProgressConfig(Lcom/cloud/tmc/miniapp/action/VersionUpdateAction;Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;)V
    .locals 1

    .line 1
    const-string v0, "progressConfig"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->setLoadingProgressConfig(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static showComplete(Lcom/cloud/tmc/miniapp/action/VersionUpdateAction;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showComplete(Lcom/cloud/tmc/miniapp/action/StatusAction;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static showCustomErrorLayout(Lcom/cloud/tmc/miniapp/action/VersionUpdateAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showCustomErrorLayout(Lcom/cloud/tmc/miniapp/action/StatusAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static showError(Lcom/cloud/tmc/miniapp/action/VersionUpdateAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showError(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static showErrorLayout(Lcom/cloud/tmc/miniapp/action/VersionUpdateAction;IIILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showErrorLayout(Lcom/cloud/tmc/miniapp/action/StatusAction;IIILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void
.end method

.method public static showErrorLayout(Lcom/cloud/tmc/miniapp/action/VersionUpdateAction;IILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    .line 2
    invoke-static/range {p0 .. p5}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showErrorLayout(Lcom/cloud/tmc/miniapp/action/StatusAction;IILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void
.end method

.method public static showErrorLayout(Lcom/cloud/tmc/miniapp/action/VersionUpdateAction;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    .line 3
    invoke-static/range {p0 .. p5}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showErrorLayout(Lcom/cloud/tmc/miniapp/action/StatusAction;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void
.end method

.method public static showErrorLayout(Lcom/cloud/tmc/miniapp/action/VersionUpdateAction;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    .line 4
    invoke-static/range {p0 .. p8}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showErrorLayout(Lcom/cloud/tmc/miniapp/action/StatusAction;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void
.end method

.method public static showLoading(Lcom/cloud/tmc/miniapp/action/VersionUpdateAction;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showLoading(Lcom/cloud/tmc/miniapp/action/StatusAction;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static showLoadingLogo(Lcom/cloud/tmc/miniapp/action/VersionUpdateAction;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "appName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "logo"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showLoadingLogo(Lcom/cloud/tmc/miniapp/action/StatusAction;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static showMainLayoutAlpha(Lcom/cloud/tmc/miniapp/action/VersionUpdateAction;F)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showMainLayoutAlpha(Lcom/cloud/tmc/miniapp/action/StatusAction;F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static showNoNetwork(Lcom/cloud/tmc/miniapp/action/VersionUpdateAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showNoNetwork(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static showPhotoEmpty(Lcom/cloud/tmc/miniapp/action/VersionUpdateAction;IILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showPhotoEmpty(Lcom/cloud/tmc/miniapp/action/StatusAction;IILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static showUnstableNetwork(Lcom/cloud/tmc/miniapp/action/VersionUpdateAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showUnstableNetwork(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static showUpgradeHintView(Lcom/cloud/tmc/miniapp/action/VersionUpdateAction;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_3

    .line 6
    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooOO0O:Lcom/cloud/tmc/miniapp/widget/UpgradeHostAppPromptLayout;

    .line 17
    .line 18
    if-eqz p0, :cond_3

    .line 19
    .line 20
    const-string v0, "appId"

    .line 21
    .line 22
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/UpgradeHostAppPromptLayout;->OooO0O0:Ljava/lang/String;

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/UpgradeHostAppPromptLayout;->OooO00o:Landroid/view/View;

    .line 32
    .line 33
    if-nez p1, :cond_3

    .line 34
    .line 35
    if-nez p2, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    const/4 p2, 0x2

    .line 43
    if-ne p1, p2, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    sget p2, Lcom/cloud/tmc/miniapp/R$layout;->app_layout_view_upgrade_host_app_prompt_normal_mode:I

    .line 54
    .line 55
    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/UpgradeHostAppPromptLayout;->OooO00o:Landroid/view/View;

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    sget p2, Lcom/cloud/tmc/miniapp/R$layout;->app_layout_view_upgrade_host_app_prompt:I

    .line 71
    .line 72
    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/UpgradeHostAppPromptLayout;->OooO00o:Landroid/view/View;

    .line 77
    .line 78
    :goto_1
    sget p1, Lcom/cloud/tmc/miniapp/R$id;->tv_open_store:I

    .line 79
    .line 80
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Landroid/widget/TextView;

    .line 85
    .line 86
    if-eqz p1, :cond_3

    .line 87
    .line 88
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    .line 90
    .line 91
    :cond_3
    :goto_2
    return-void
.end method

.method public static synthetic showUpgradeHintView$default(Lcom/cloud/tmc/miniapp/action/VersionUpdateAction;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p4, :cond_1

    .line 2
    .line 3
    and-int/lit8 p3, p3, 0x2

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x1

    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/cloud/tmc/miniapp/action/VersionUpdateAction;->showUpgradeHintView(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 17
    .line 18
    const-string p1, "Super calls with default arguments not supported in this target, function: showUpgradeHintView"

    .line 19
    .line 20
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method

.method public static statusLayoutCreateShortCutsSuccess(Lcom/cloud/tmc/miniapp/action/VersionUpdateAction;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniapp/action/VersionUpdateAction;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "appId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->statusLayoutCreateShortCutsSuccess(Lcom/cloud/tmc/miniapp/action/StatusAction;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static statusLayoutOnResume(Lcom/cloud/tmc/miniapp/action/VersionUpdateAction;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->statusLayoutOnResume(Lcom/cloud/tmc/miniapp/action/StatusAction;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static updateStepAnimation(Lcom/cloud/tmc/miniapp/action/VersionUpdateAction;Lcom/cloud/tmc/integration/activity/LoadStepAction;)V
    .locals 1

    .line 1
    const-string v0, "step"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->updateStepAnimation(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/integration/activity/LoadStepAction;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
