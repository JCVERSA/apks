.class public final Lcom/cloud/tmc/miniapp/widget/StatusLayout;
.super Landroid/widget/FrameLayout;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;,
        Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field public OooO:Landroid/widget/TextView;

.field public OooO00o:Landroid/view/ViewGroup;

.field public OooO0O0:Landroid/widget/TextView;

.field public OooO0OO:Landroid/widget/TextView;

.field public OooO0Oo:Landroidx/appcompat/widget/AppCompatImageView;

.field public OooO0o:Landroid/widget/LinearLayout;

.field public OooO0o0:Landroid/widget/TextView;

.field public OooO0oO:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public OooO0oo:Lcom/cloud/tmc/miniapp/widget/LoadingTextView;

.field public OooOO0:Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;

.field public OooOO0O:Lcom/cloud/tmc/miniapp/widget/UpgradeHostAppPromptLayout;

.field public OooOO0o:Landroid/widget/TextView;

.field public OooOOO:Landroid/widget/TextView;

.field public OooOOO0:Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;

.field public OooOOOO:Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;

.field public OooOOOo:Z

.field public final OooOOo:Landroid/view/View$OnClickListener;

.field public OooOOo0:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 6
    new-instance p1, Lcom/cloud/tmc/miniapp/widget/q;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/widget/q;-><init>(Lcom/cloud/tmc/miniapp/widget/StatusLayout;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooOOo:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    .line 4
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/widget/StatusLayout;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0o0:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooOOOO:Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;->onRetry(Lcom/cloud/tmc/miniapp/widget/StatusLayout;)V

    :cond_0
    return-void
.end method

.method public static final OooO0O0(Lcom/cloud/tmc/miniapp/widget/StatusLayout;Landroid/view/View;)V
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 2
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 3
    const-string v0, "settings_click"

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4
    iget-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooOOo0:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "location"

    if-eqz v2, :cond_0

    .line 5
    :try_start_1
    const-string v2, "1"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    const-string v2, "0"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :goto_0
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    const/4 v2, 0x0

    .line 8
    invoke-interface {p1, v2, v0, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->recordForCommon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 9
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->isWifiConnected()Z

    move-result p1

    const/high16 v0, 0x10000000

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 11
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 14
    :cond_1
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->isMobileData()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 16
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.settings.NETWORK_OPERATOR_SETTINGS"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 19
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 20
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :goto_1
    return-void
.end method


# virtual methods
.method public final OooO00o()V
    .locals 3

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooOO0:Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 40
    :try_start_1
    iput v1, v0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0o0:I

    .line 41
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO:Landroid/view/animation/TranslateAnimation;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/animation/Animation;->cancel()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 42
    :cond_0
    :goto_0
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0oo:Landroid/view/animation/AnimationSet;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/animation/Animation;->cancel()V

    .line 43
    :cond_1
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooOO0:Ljava/lang/Runnable;

    invoke-static {v2}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->removeOnMain(Ljava/lang/Runnable;)V

    const/4 v2, 0x0

    .line 44
    iput-object v2, v0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO:Landroid/view/animation/TranslateAnimation;

    .line 45
    iput-object v2, v0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0oo:Landroid/view/animation/AnimationSet;

    .line 46
    iput-boolean v1, v0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0o:Z

    .line 47
    iput-boolean v1, v0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0oO:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 48
    :goto_1
    :try_start_2
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0Oo:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_2
    :goto_2
    return-void
.end method

.method public final OooO00o(Ljava/lang/Integer;)V
    .locals 5

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 3
    sget v4, Lcom/cloud/tmc/miniapp/R$layout;->widget_status_layout_normal_mode:I

    invoke-virtual {v3, v4, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 4
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO00o:Landroid/view/ViewGroup;

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 6
    sget v4, Lcom/cloud/tmc/miniapp/R$layout;->widget_status_layout:I

    invoke-virtual {v3, v4, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 7
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO00o:Landroid/view/ViewGroup;

    .line 8
    :goto_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO00o:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    sget v4, Lcom/cloud/tmc/miniapp/R$id;->tv_status_title:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_2

    :cond_2
    move-object v0, v3

    :goto_2
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0O0:Landroid/widget/TextView;

    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO00o:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    sget v4, Lcom/cloud/tmc/miniapp/R$id;->tv_status_text:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_3

    :cond_3
    move-object v0, v3

    :goto_3
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0OO:Landroid/widget/TextView;

    .line 10
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO00o:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    sget v4, Lcom/cloud/tmc/miniapp/R$id;->iv_error_icon:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    goto :goto_4

    :cond_4
    move-object v0, v3

    :goto_4
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0Oo:Landroidx/appcompat/widget/AppCompatImageView;

    .line 11
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO00o:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    sget v4, Lcom/cloud/tmc/miniapp/R$id;->tv_status_retry:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_5

    :cond_5
    move-object v0, v3

    :goto_5
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0o0:Landroid/widget/TextView;

    .line 12
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO00o:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    sget v4, Lcom/cloud/tmc/miniapp/R$id;->ll_error_layout:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    goto :goto_6

    :cond_6
    move-object v0, v3

    :goto_6
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0oO:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 13
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO00o:Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    sget v4, Lcom/cloud/tmc/miniapp/R$id;->ll_loading_layout:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    goto :goto_7

    :cond_7
    move-object v0, v3

    :goto_7
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0o:Landroid/widget/LinearLayout;

    .line 14
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO00o:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    sget v4, Lcom/cloud/tmc/miniapp/R$id;->cl_launcher_loading:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;

    goto :goto_8

    :cond_8
    move-object v0, v3

    :goto_8
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooOO0:Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;

    if-eqz v0, :cond_b

    .line 15
    iput-object p1, v0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0OO:Ljava/lang/Integer;

    if-nez p1, :cond_9

    goto :goto_9

    .line 16
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_a

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 18
    sget v4, Lcom/cloud/tmc/miniapp/R$layout;->layout_miniapp_launch_normal_mode:I

    invoke-virtual {v2, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_a

    .line 19
    :cond_a
    :goto_9
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 20
    sget v4, Lcom/cloud/tmc/miniapp/R$layout;->layout_miniapp_launch:I

    invoke-virtual {v2, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 21
    :goto_a
    sget v2, Lcom/cloud/tmc/miniapp/R$id;->iv_loading_img:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v4, "findViewById(R.id.iv_loading_img)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v2, v0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO00o:Landroidx/appcompat/widget/AppCompatImageView;

    .line 22
    sget v2, Lcom/cloud/tmc/miniapp/R$id;->ll_bottom:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v4, "findViewById(R.id.ll_bottom)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/appcompat/widget/LinearLayoutCompat;

    iput-object v2, v0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0O0:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 23
    :cond_b
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO00o:Landroid/view/ViewGroup;

    if-eqz v0, :cond_c

    sget v2, Lcom/cloud/tmc/miniapp/R$id;->tv_loading_name:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_b

    :cond_c
    move-object v0, v3

    :goto_b
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO:Landroid/widget/TextView;

    .line 24
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO00o:Landroid/view/ViewGroup;

    if-eqz v0, :cond_d

    sget v2, Lcom/cloud/tmc/miniapp/R$id;->tv_loading_progress:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;

    goto :goto_c

    :cond_d
    move-object v0, v3

    :goto_c
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0oo:Lcom/cloud/tmc/miniapp/widget/LoadingTextView;

    .line 25
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO00o:Landroid/view/ViewGroup;

    if-eqz v0, :cond_e

    sget v2, Lcom/cloud/tmc/miniapp/R$id;->tv_error_msg:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_d

    :cond_e
    move-object v0, v3

    :goto_d
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooOO0o:Landroid/widget/TextView;

    .line 26
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO00o:Landroid/view/ViewGroup;

    if-eqz v0, :cond_f

    sget v2, Lcom/cloud/tmc/miniapp/R$id;->tv_go_setting:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_e

    :cond_f
    move-object v0, v3

    :goto_e
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooOOO:Landroid/widget/TextView;

    .line 27
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO00o:Landroid/view/ViewGroup;

    if-eqz v0, :cond_10

    sget v2, Lcom/cloud/tmc/miniapp/R$id;->cl_no_network_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;

    goto :goto_f

    :cond_10
    move-object v0, v3

    :goto_f
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooOOO0:Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;

    if-eqz v0, :cond_11

    .line 28
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;->OooO00o(Ljava/lang/Integer;)V

    .line 29
    :cond_11
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO00o:Landroid/view/ViewGroup;

    if-eqz p1, :cond_12

    sget v0, Lcom/cloud/tmc/miniapp/R$id;->ul_upgrade:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/widget/UpgradeHostAppPromptLayout;

    goto :goto_10

    :cond_12
    move-object p1, v3

    :goto_10
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooOO0O:Lcom/cloud/tmc/miniapp/widget/UpgradeHostAppPromptLayout;

    .line 30
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO00o:Landroid/view/ViewGroup;

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_13
    if-nez v3, :cond_16

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x1010054

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string v0, "context.obtainStyledAttr\u2026R.attr.windowBackground))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO00o:Landroid/view/ViewGroup;

    if-nez v0, :cond_14

    goto :goto_11

    :cond_14
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 33
    :goto_11
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO00o:Landroid/view/ViewGroup;

    if-nez v0, :cond_15

    goto :goto_12

    :cond_15
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 34
    :goto_12
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 35
    :cond_16
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooOOO:Landroid/widget/TextView;

    if-eqz p1, :cond_17

    new-instance v0, Lcom/cloud/tmc/miniapp/widget/p;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/widget/p;-><init>(Lcom/cloud/tmc/miniapp/widget/StatusLayout;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    :cond_17
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0o0:Landroid/widget/TextView;

    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooOOo:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    :cond_18
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO00o:Landroid/view/ViewGroup;

    if-eqz p1, :cond_19

    invoke-static {}, Lcom/cloud/tmc/integration/utils/MiniBarUtils;->getStatusHeight()I

    move-result v0

    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v2}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1, v1, v2, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 38
    :cond_19
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO00o:Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->removeSelf(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final OooO00o(Ljava/lang/String;ZZ)V
    .locals 3

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooOOOo:Z

    .line 50
    iput-boolean p3, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooOOo0:Z

    .line 51
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0oO:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    :goto_0
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0o:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 53
    :goto_1
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooOOO0:Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;

    if-eqz p3, :cond_2

    .line 54
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 55
    :cond_2
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0o0:Landroid/widget/TextView;

    if-eqz p3, :cond_4

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooOOOO:Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    invoke-static {p3, v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisibleOrInvisible(Landroid/view/View;Z)V

    :cond_4
    if-eqz p2, :cond_5

    .line 56
    :try_start_0
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooOOO:Landroid/widget/TextView;

    if-eqz p2, :cond_6

    invoke-static {p2}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisible(Landroid/view/View;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_6

    .line 57
    :cond_5
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooOOO:Landroid/widget/TextView;

    if-eqz p2, :cond_6

    invoke-static {p2}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toGone(Landroid/view/View;)V

    .line 58
    :cond_6
    :goto_3
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0oo:Lcom/cloud/tmc/miniapp/widget/LoadingTextView;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO00o()V

    .line 59
    :cond_7
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/AppDynamicBuildConfig;->getDEV_MODE()Z

    move-result p2

    if-eqz p2, :cond_a

    if-eqz p1, :cond_9

    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_8

    goto :goto_4

    .line 61
    :cond_8
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooOO0o:Landroid/widget/TextView;

    if-eqz p2, :cond_a

    .line 62
    invoke-static {p2}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisible(Landroid/view/View;)V

    .line 63
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 64
    :cond_9
    :goto_4
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooOO0o:Landroid/widget/TextView;

    if-eqz p2, :cond_a

    invoke-static {p2}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toInvisible(Landroid/view/View;)V

    :cond_a
    :goto_5
    if-eqz p1, :cond_b

    .line 65
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "launch step error:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    .line 66
    :goto_6
    const-string p2, "launcher step error"

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    :goto_7
    return-void
.end method

.method public final OooO0O0()V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO00o:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0OO()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooOOOo:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO00o:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0oo:Lcom/cloud/tmc/miniapp/widget/LoadingTextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->OooO00o()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final OooO0O0(Ljava/lang/Integer;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO00o:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 24
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO00o(Ljava/lang/Integer;)V

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0OO()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 26
    :cond_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO00o:Landroid/view/ViewGroup;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final OooO0OO()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO00o:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public final OooO0Oo()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooOOOo:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0o:Landroid/widget/LinearLayout;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0oO:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 13
    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    :goto_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooOOO0:Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    :cond_2
    return-void
.end method

.method public final setHint(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setHint(Ljava/lang/CharSequence;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0OO:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public final setHintColor(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0OO:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1, p1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final setIcon(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0Oo:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public final setLoadingProgressConfig(Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;)V
    .locals 1

    .line 1
    const-string v0, "progressConfig"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0oo:Lcom/cloud/tmc/miniapp/widget/LoadingTextView;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView;->setProgressConfigModel(Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public final setMainLayoutAlpha(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO00o:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 7
    .line 8
    .line 9
    :goto_0
    return-void
.end method

.method public final setOnCustomNoNetWorkOnPinForLaterListener(Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setOnCustomNoNetWorkRetryListener(Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooOOO0:Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;->setOnRetryListener(Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final setOnPinForLaterListener(Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setOnRetryListener(Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooOOOO:Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0OO()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0o0:Landroid/widget/TextView;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooOOOO:Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    :cond_2
    :goto_1
    return-void
.end method

.method public final setTitle(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0O0:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :goto_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0O0:Landroid/widget/TextView;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    if-nez p1, :cond_3

    const-string p1, ""

    :cond_3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method public final setTitleColor(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0O0:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1, p1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
