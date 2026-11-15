.class public final Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/action/StatusAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static isLoadStatusLoadingOrError(Lcom/cloud/tmc/miniapp/action/StatusAction;)Z
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0OO()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x1

    .line 13
    :goto_0
    return p0
.end method

.method public static setLoadingProgressConfig(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;)V
    .locals 1

    .line 1
    const-string v0, "progressConfig"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->setLoadingProgressConfig(Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public static showComplete(Lcom/cloud/tmc/miniapp/action/StatusAction;)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0OO()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return p0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO00o()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0O0()V

    .line 19
    .line 20
    .line 21
    :cond_1
    const/4 p0, 0x1

    .line 22
    return p0
.end method

.method public static showCustomErrorLayout(Lcom/cloud/tmc/miniapp/action/StatusAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 3

    .line 1
    const-class p6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 2
    .line 3
    invoke-static {p6}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p6

    .line 7
    check-cast p6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 8
    .line 9
    new-instance v0, Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "type"

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    const-string v1, "uncon_page_ex"

    .line 23
    .line 24
    invoke-interface {p6, p5, v1, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->recordForCommon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    .line 28
    .line 29
    .line 30
    move-result-object p5

    .line 31
    if-eqz p5, :cond_4

    .line 32
    .line 33
    invoke-virtual {p5}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO00o()V

    .line 34
    .line 35
    .line 36
    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getViewThemeMode()Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p5, p0}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0O0(Ljava/lang/Integer;)V

    .line 41
    .line 42
    .line 43
    const/4 p0, 0x1

    .line 44
    iput-boolean p0, p5, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooOOOo:Z

    .line 45
    .line 46
    iget-object p0, p5, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0oO:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 47
    .line 48
    const/16 p6, 0x8

    .line 49
    .line 50
    if-nez p0, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p0, p6}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    :goto_0
    iget-object p0, p5, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0o:Landroid/widget/LinearLayout;

    .line 57
    .line 58
    if-nez p0, :cond_1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    invoke-virtual {p0, p6}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    :goto_1
    :try_start_0
    iget-object p0, p5, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0oo:Lcom/cloud/tmc/miniapp/widget/LoadingTextView;

    .line 65
    .line 66
    if-eqz p0, :cond_2

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO00o()V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_3

    .line 74
    :cond_2
    :goto_2
    iget-object p0, p5, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooOOO0:Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;

    .line 75
    .line 76
    if-eqz p0, :cond_3

    .line 77
    .line 78
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;->OooO00o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .line 80
    .line 81
    goto :goto_4

    .line 82
    :goto_3
    const-string p1, "launcher step error"

    .line 83
    .line 84
    invoke-static {p1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    :goto_4
    invoke-virtual {p5, p4}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->setOnCustomNoNetWorkRetryListener(Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;)V

    .line 88
    .line 89
    .line 90
    :cond_4
    return-void
.end method

.method public static showError(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 6

    .line 1
    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getViewThemeMode()Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p4

    .line 5
    if-nez p4, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 9
    .line 10
    .line 11
    move-result p4

    .line 12
    const/4 v0, 0x2

    .line 13
    if-ne p4, v0, :cond_1

    .line 14
    .line 15
    sget p4, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_error_normal_mode:I

    .line 16
    .line 17
    :goto_0
    move v1, p4

    .line 18
    goto :goto_2

    .line 19
    :cond_1
    :goto_1
    sget p4, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_error:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :goto_2
    move-object v0, p0

    .line 23
    move v2, p2

    .line 24
    move-object v3, p1

    .line 25
    move-object v4, p3

    .line 26
    move-object v5, p5

    .line 27
    invoke-interface/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/action/StatusAction;->showErrorLayout(IILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static synthetic showError$default(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;ILjava/lang/Object;)V
    .locals 6

    .line 1
    if-nez p7, :cond_3

    .line 2
    .line 3
    and-int/lit8 p7, p6, 0x2

    .line 4
    .line 5
    if-eqz p7, :cond_0

    .line 6
    .line 7
    sget p2, Lcom/cloud/tmc/miniapp/R$string;->loading_error_tv:I

    .line 8
    .line 9
    :cond_0
    move v2, p2

    .line 10
    and-int/lit8 p2, p6, 0x4

    .line 11
    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    const-string p3, ""

    .line 15
    .line 16
    :cond_1
    move-object v3, p3

    .line 17
    and-int/lit8 p2, p6, 0x10

    .line 18
    .line 19
    if-eqz p2, :cond_2

    .line 20
    .line 21
    const/4 p5, 0x0

    .line 22
    :cond_2
    move-object v5, p5

    .line 23
    move-object v0, p0

    .line 24
    move-object v1, p1

    .line 25
    move-object v4, p4

    .line 26
    invoke-interface/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/action/StatusAction;->showError(Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 31
    .line 32
    const-string p1, "Super calls with default arguments not supported in this target, function: showError"

    .line 33
    .line 34
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public static showErrorLayout(Lcom/cloud/tmc/miniapp/action/StatusAction;IIILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 13

    .line 5
    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move v2, p1

    invoke-static {v1, p1}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move v2, p2

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v11, 0x10

    const/4 v12, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object/from16 v6, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    .line 9
    invoke-static/range {v2 .. v12}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showErrorLayout$default(Lcom/cloud/tmc/miniapp/action/StatusAction;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static showErrorLayout(Lcom/cloud/tmc/miniapp/action/StatusAction;IILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 8

    .line 1
    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, p0

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 4
    invoke-interface/range {v2 .. v7}, Lcom/cloud/tmc/miniapp/action/StatusAction;->showErrorLayout(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    :cond_0
    return-void
.end method

.method public static showErrorLayout(Lcom/cloud/tmc/miniapp/action/StatusAction;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 12

    .line 10
    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v10, 0x60

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    .line 11
    invoke-static/range {v1 .. v11}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showErrorLayout$default(Lcom/cloud/tmc/miniapp/action/StatusAction;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static showErrorLayout(Lcom/cloud/tmc/miniapp/action/StatusAction;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    .line 12
    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    move-result-object p8

    if-eqz p8, :cond_0

    .line 13
    invoke-virtual {p8}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO00o()V

    .line 14
    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getViewThemeMode()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p8, p0}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0O0(Ljava/lang/Integer;)V

    .line 15
    invoke-virtual {p8, p5, p6, p7}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO00o(Ljava/lang/String;ZZ)V

    .line 16
    invoke-virtual {p8, p1}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 17
    invoke-virtual {p8, p2}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 18
    invoke-virtual {p8, p3}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 19
    invoke-virtual {p8, p4}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->setOnRetryListener(Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;)V

    :cond_0
    return-void
.end method

.method public static synthetic showErrorLayout$default(Lcom/cloud/tmc/miniapp/action/StatusAction;IIILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;ILjava/lang/Object;)V
    .locals 9

    if-nez p9, :cond_3

    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    move v6, p5

    :goto_0
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v7, v0

    goto :goto_1

    :cond_1
    move v7, p6

    :goto_1
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move-object v8, v0

    goto :goto_2

    :cond_2
    move-object/from16 v8, p7

    :goto_2
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 3
    invoke-interface/range {v1 .. v8}, Lcom/cloud/tmc/miniapp/action/StatusAction;->showErrorLayout(IIILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void

    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: showErrorLayout"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic showErrorLayout$default(Lcom/cloud/tmc/miniapp/action/StatusAction;IILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;ILjava/lang/Object;)V
    .locals 6

    if-nez p7, :cond_2

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    .line 1
    const-string p4, ""

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const/4 p5, 0x0

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    .line 2
    invoke-interface/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/action/StatusAction;->showErrorLayout(IILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: showErrorLayout"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic showErrorLayout$default(Lcom/cloud/tmc/miniapp/action/StatusAction;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;ILjava/lang/Object;)V
    .locals 6

    if-nez p7, :cond_2

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    .line 4
    const-string p4, ""

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const/4 p5, 0x0

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 5
    invoke-interface/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/action/StatusAction;->showErrorLayout(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: showErrorLayout"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic showErrorLayout$default(Lcom/cloud/tmc/miniapp/action/StatusAction;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;ILjava/lang/Object;)V
    .locals 11

    move/from16 v0, p9

    if-nez p10, :cond_4

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    .line 6
    const-string v1, ""

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object/from16 v7, p5

    :goto_0
    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v8, v2

    goto :goto_1

    :cond_1
    move/from16 v8, p6

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    move v9, v2

    goto :goto_2

    :cond_2
    move/from16 v9, p7

    :goto_2
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    move-object v10, v0

    goto :goto_3

    :cond_3
    move-object/from16 v10, p8

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 7
    invoke-interface/range {v2 .. v10}, Lcom/cloud/tmc/miniapp/action/StatusAction;->showErrorLayout(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void

    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: showErrorLayout"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static showLoading(Lcom/cloud/tmc/miniapp/action/StatusAction;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getViewThemeMode()Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {v0, p0}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0O0(Ljava/lang/Integer;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0Oo()V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    invoke-virtual {v0, p0}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->setOnRetryListener(Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public static showLoadingLogo(Lcom/cloud/tmc/miniapp/action/StatusAction;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "appName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "logo"

    .line 7
    .line 8
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_9

    .line 16
    .line 17
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget v2, Lcom/cloud/tmc/miniapp/R$string;->dialog_loading_tv:I

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    const-string v0, "Loading..."

    .line 35
    .line 36
    :goto_0
    const-string v2, "try {\n            contex\u2026   \"Loading...\"\n        }"

    .line 37
    .line 38
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO:Landroid/widget/TextView;

    .line 48
    .line 49
    if-nez v0, :cond_0

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooOO0:Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;

    .line 56
    .line 57
    if-eqz p0, :cond_9

    .line 58
    .line 59
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :try_start_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO00o:Landroidx/appcompat/widget/AppCompatImageView;

    .line 63
    .line 64
    if-nez p1, :cond_2

    .line 65
    .line 66
    const-string p1, "mLoadingImg"

    .line 67
    .line 68
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const/4 p1, 0x0

    .line 72
    :cond_2
    move-object v3, p1

    .line 73
    goto :goto_2

    .line 74
    :catchall_1
    move-exception p1

    .line 75
    goto :goto_9

    .line 76
    :goto_2
    const-class p1, Lcom/cloud/tmc/integration/proxy/AnimtionProxy;

    .line 77
    .line 78
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Lcom/cloud/tmc/integration/proxy/AnimtionProxy;

    .line 83
    .line 84
    invoke-interface {p1}, Lcom/cloud/tmc/integration/proxy/AnimtionProxy;->enableLoadingAnimation()Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_3

    .line 89
    .line 90
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0o:Z

    .line 91
    .line 92
    if-nez p1, :cond_3

    .line 93
    .line 94
    const/4 p1, 0x1

    .line 95
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0oO:Z

    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO00o()V

    .line 98
    .line 99
    .line 100
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-nez p1, :cond_4

    .line 105
    .line 106
    goto :goto_a

    .line 107
    :cond_4
    const-class p1, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    .line 108
    .line 109
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    move-object v0, p1

    .line 114
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    .line 115
    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    const/16 p1, 0xe

    .line 121
    .line 122
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/CommonExtKt;->getDp2px(I)I

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0OO:Ljava/lang/Integer;

    .line 127
    .line 128
    const/4 v2, 0x2

    .line 129
    if-nez p1, :cond_5

    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-ne p1, v2, :cond_6

    .line 137
    .line 138
    sget p1, Lcom/cloud/tmc/miniapp/R$drawable;->drawable_app_icon_place_holder_normal_mode:I

    .line 139
    .line 140
    :goto_3
    move v5, p1

    .line 141
    goto :goto_5

    .line 142
    :cond_6
    :goto_4
    sget p1, Lcom/cloud/tmc/miniapp/R$drawable;->drawable_app_icon_place_holder:I

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :goto_5
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0OO:Ljava/lang/Integer;

    .line 146
    .line 147
    if-nez p1, :cond_7

    .line 148
    .line 149
    goto :goto_7

    .line 150
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    if-ne p1, v2, :cond_8

    .line 155
    .line 156
    sget p1, Lcom/cloud/tmc/miniapp/R$drawable;->drawable_app_icon_place_holder_normal_mode:I

    .line 157
    .line 158
    :goto_6
    move v6, p1

    .line 159
    goto :goto_8

    .line 160
    :cond_8
    :goto_7
    sget p1, Lcom/cloud/tmc/miniapp/R$drawable;->drawable_app_icon_place_holder:I

    .line 161
    .line 162
    goto :goto_6

    .line 163
    :goto_8
    move-object v2, p2

    .line 164
    invoke-interface/range {v0 .. v6}, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;->loadImgRoundCorners(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 165
    .line 166
    .line 167
    goto :goto_a

    .line 168
    :goto_9
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0Oo:Ljava/lang/String;

    .line 169
    .line 170
    invoke-static {p0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    .line 172
    .line 173
    :cond_9
    :goto_a
    return-void
.end method

.method public static showMainLayoutAlpha(Lcom/cloud/tmc/miniapp/action/StatusAction;F)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->setMainLayoutAlpha(F)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static showNoNetwork(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 10

    .line 1
    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-eqz p2, :cond_2

    .line 6
    .line 7
    const-class p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 8
    .line 9
    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 14
    .line 15
    new-instance p3, Landroid/os/Bundle;

    .line 16
    .line 17
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v0, "type"

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {p3, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 27
    .line 28
    const-string v0, "uncon_page_ex"

    .line 29
    .line 30
    invoke-interface {p2, p4, v0, p3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->recordForCommon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getViewThemeMode()Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    if-nez p2, :cond_0

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    const/4 p3, 0x2

    .line 45
    if-ne p2, p3, :cond_1

    .line 46
    .line 47
    sget p2, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_no_network_normal_mode:I

    .line 48
    .line 49
    :goto_0
    move v1, p2

    .line 50
    goto :goto_2

    .line 51
    :cond_1
    :goto_1
    sget p2, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_no_network:I

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :goto_2
    sget v2, Lcom/cloud/tmc/miniapp/R$string;->mini_no_network_info:I

    .line 55
    .line 56
    sget v3, Lcom/cloud/tmc/miniapp/R$string;->mini_no_network_connection:I

    .line 57
    .line 58
    const/16 v8, 0x30

    .line 59
    .line 60
    const/4 v9, 0x0

    .line 61
    const/4 v5, 0x0

    .line 62
    const/4 v6, 0x0

    .line 63
    move-object v0, p0

    .line 64
    move-object v4, p1

    .line 65
    move-object v7, p5

    .line 66
    invoke-static/range {v0 .. v9}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showErrorLayout$default(Lcom/cloud/tmc/miniapp/action/StatusAction;IIILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :cond_2
    return-void
.end method

.method public static synthetic showNoNetwork$default(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;ILjava/lang/Object;)V
    .locals 6

    .line 1
    if-nez p7, :cond_3

    .line 2
    .line 3
    and-int/lit8 p7, p6, 0x2

    .line 4
    .line 5
    if-eqz p7, :cond_0

    .line 6
    .line 7
    sget p2, Lcom/cloud/tmc/miniapp/R$string;->loading_error_tv:I

    .line 8
    .line 9
    :cond_0
    move v2, p2

    .line 10
    and-int/lit8 p2, p6, 0x4

    .line 11
    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    const-string p3, ""

    .line 15
    .line 16
    :cond_1
    move-object v3, p3

    .line 17
    and-int/lit8 p2, p6, 0x10

    .line 18
    .line 19
    if-eqz p2, :cond_2

    .line 20
    .line 21
    const/4 p5, 0x0

    .line 22
    :cond_2
    move-object v5, p5

    .line 23
    move-object v0, p0

    .line 24
    move-object v1, p1

    .line 25
    move-object v4, p4

    .line 26
    invoke-interface/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/action/StatusAction;->showNoNetwork(Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 31
    .line 32
    const-string p1, "Super calls with default arguments not supported in this target, function: showNoNetwork"

    .line 33
    .line 34
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public static showPhotoEmpty(Lcom/cloud/tmc/miniapp/action/StatusAction;IILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;)V
    .locals 10

    .line 1
    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1, p1}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const/16 v8, 0x18

    .line 24
    .line 25
    const/4 v9, 0x0

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v7, 0x0

    .line 28
    move-object v2, p0

    .line 29
    move-object v5, p3

    .line 30
    invoke-static/range {v2 .. v9}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showErrorLayout$default(Lcom/cloud/tmc/miniapp/action/StatusAction;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    sget p0, Lcom/cloud/tmc/miniapp/R$color;->mini_color_686c73:I

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->setHintColor(I)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public static showUnstableNetwork(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 8

    .line 1
    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-eqz p2, :cond_2

    .line 6
    .line 7
    const-class p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 8
    .line 9
    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 14
    .line 15
    new-instance p3, Landroid/os/Bundle;

    .line 16
    .line 17
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v0, "type"

    .line 21
    .line 22
    const/4 v1, 0x3

    .line 23
    invoke-virtual {p3, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 27
    .line 28
    const-string v0, "uncon_page_ex"

    .line 29
    .line 30
    invoke-interface {p2, p4, v0, p3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->recordForCommon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getViewThemeMode()Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    if-nez p2, :cond_0

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    const/4 p3, 0x2

    .line 45
    if-ne p2, p3, :cond_1

    .line 46
    .line 47
    sget p2, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_unstable_network_normal_mode:I

    .line 48
    .line 49
    :goto_0
    move v1, p2

    .line 50
    goto :goto_2

    .line 51
    :cond_1
    :goto_1
    sget p2, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_unstable_network:I

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :goto_2
    sget v2, Lcom/cloud/tmc/miniapp/R$string;->mini_unstable_network_info:I

    .line 55
    .line 56
    sget v3, Lcom/cloud/tmc/miniapp/R$string;->mini_unstable_network:I

    .line 57
    .line 58
    const/4 v5, 0x1

    .line 59
    const/4 v6, 0x1

    .line 60
    move-object v0, p0

    .line 61
    move-object v4, p1

    .line 62
    move-object v7, p5

    .line 63
    invoke-interface/range {v0 .. v7}, Lcom/cloud/tmc/miniapp/action/StatusAction;->showErrorLayout(IIILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    return-void
.end method

.method public static synthetic showUnstableNetwork$default(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;ILjava/lang/Object;)V
    .locals 6

    .line 1
    if-nez p7, :cond_3

    .line 2
    .line 3
    and-int/lit8 p7, p6, 0x2

    .line 4
    .line 5
    if-eqz p7, :cond_0

    .line 6
    .line 7
    sget p2, Lcom/cloud/tmc/miniapp/R$string;->loading_error_tv:I

    .line 8
    .line 9
    :cond_0
    move v2, p2

    .line 10
    and-int/lit8 p2, p6, 0x4

    .line 11
    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    const-string p3, ""

    .line 15
    .line 16
    :cond_1
    move-object v3, p3

    .line 17
    and-int/lit8 p2, p6, 0x10

    .line 18
    .line 19
    if-eqz p2, :cond_2

    .line 20
    .line 21
    const/4 p5, 0x0

    .line 22
    :cond_2
    move-object v5, p5

    .line 23
    move-object v0, p0

    .line 24
    move-object v1, p1

    .line 25
    move-object v4, p4

    .line 26
    invoke-interface/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/action/StatusAction;->showUnstableNetwork(Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 31
    .line 32
    const-string p1, "Super calls with default arguments not supported in this target, function: showUnstableNetwork"

    .line 33
    .line 34
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public static statusLayoutCreateShortCutsSuccess(Lcom/cloud/tmc/miniapp/action/StatusAction;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniapp/action/StatusAction;",
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
    const-string p2, "appId"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public static statusLayoutOnResume(Lcom/cloud/tmc/miniapp/action/StatusAction;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooOOO0:Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;->getLlOfflineApps()Landroid/widget/LinearLayout;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {p0, v0}, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt;->offlineAppOnResume(Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;Landroid/widget/LinearLayout;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public static updateStepAnimation(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/integration/activity/LoadStepAction;)V
    .locals 1

    .line 1
    const-string v0, "step"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0oo:Lcom/cloud/tmc/miniapp/widget/LoadingTextView;

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO00o(Lcom/cloud/tmc/integration/activity/LoadStepAction;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
