.class public Lcom/transsion/sniffer_load/fragment/MultiWebFragment;
.super Lcom/transsion/playercommon/fragments/PlayBaseFragment;
.source "SourceFile"


# instance fields
.field public A:Z

.field public B:Ljava/lang/Runnable;

.field public C:Landroidx/activity/OnBackPressedCallback;

.field public l:Landroid/widget/ImageView;

.field public m:Landroid/widget/ImageView;

.field public n:Landroidx/recyclerview/widget/RecyclerView;

.field public o:Landroid/view/View;

.field public p:Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;

.field public q:Lnic;

.field public r:Lcom/transsion/widgetslib/dialog/d;

.field public s:Landroid/view/View;

.field public t:I

.field public u:I

.field public v:I

.field public w:Z

.field public x:Z

.field public y:Lcom/transsion/utils/CustomGridLayoutManager;

.field public z:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->x:Z

    iput-boolean v0, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->A:Z

    new-instance v0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment$1;

    invoke-direct {v0, p0}, Lcom/transsion/sniffer_load/fragment/MultiWebFragment$1;-><init>(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;)V

    iput-object v0, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->B:Ljava/lang/Runnable;

    new-instance v0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment$a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/transsion/sniffer_load/fragment/MultiWebFragment$a;-><init>(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;Z)V

    iput-object v0, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->C:Landroidx/activity/OnBackPressedCallback;

    return-void
.end method

.method public static bridge synthetic f0(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;)Lnic;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->q:Lnic;

    return-object p0
.end method

.method public static bridge synthetic g0(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;)Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->p:Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;

    return-object p0
.end method

.method public static bridge synthetic h0(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->x:Z

    return-void
.end method

.method public static bridge synthetic i0(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->A:Z

    return-void
.end method

.method public static bridge synthetic j0(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->o0(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static bridge synthetic k0(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->q0()V

    return-void
.end method

.method public static synthetic l0(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;)Lcom/transsion/playercommon/activities/BaseActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    return-object p0
.end method

.method public static synthetic m0(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;)Lcom/transsion/playercommon/activities/BaseActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    return-object p0
.end method

.method public static synthetic n0(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;)Lcom/transsion/playercommon/activities/BaseActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    return-object p0
.end method


# virtual methods
.method public markPointScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->markPointScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mAttach:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz p0, :cond_0

    const-string p0, "dl_brower_rp_multi_show"

    invoke-static {p1, p0}, Lr06;->c(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final o0(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->p0()V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "web_url"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "need_new_web"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p3, :cond_0

    const-string p2, "dl_brower_rp_multi_new_cl"

    goto :goto_0

    :cond_0
    const-string p2, "dl_brower_rp_multi_win_open"

    :goto_0
    const-string p3, "web_url_from"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->q:Lnic;

    invoke-virtual {p0}, Lnic;->m()I

    move-result p0

    const-string p2, "page_index"

    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p0

    const-string p2, "need_load_new_web"

    invoke-virtual {p0, p2, p1}, Lcom/transsion/eventbus/LiveEventBus;->c(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->C:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {p1, p0, v0}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lnic;->q(Landroid/content/Context;)Lnic;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->q:Lnic;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/sniffer_load/R$id;->iv_back:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iput-boolean v1, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->A:Z

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->p0()V

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/sniffer_load/R$id;->iv_clear:I

    if-ne p1, v0, :cond_1

    const-string p1, "dl_brower_rp_multi_del_cl"

    invoke-static {p1}, Lp06;->d0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->q0()V

    goto :goto_0

    :cond_1
    sget v0, Lcom/transsion/sniffer_load/R$id;->ll_add_new:I

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->q:Lnic;

    invoke-virtual {p1}, Lnic;->p()I

    move-result p1

    const/16 v0, 0x9

    if-lt p1, v0, :cond_2

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    sget p1, Lcom/transsion/sniffer_load/R$string;->window_up_to_limit:I

    invoke-static {p0, p1}, Lcom/transsion/utils/ToastUtils;->u(Landroid/content/Context;I)V

    return-void

    :cond_2
    const-string p1, "dl_brower_rp_multi_new_cl"

    invoke-static {p1}, Lp06;->d0(Ljava/lang/String;)V

    sput-object p1, Lcom/transsion/sniffer_load/WebActivity;->M0:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->q:Lnic;

    const/4 v0, 0x0

    const-string v2, "https://www.google.com"

    invoke-virtual {p1, v2, v0}, Lnic;->e(Ljava/lang/String;Lcom/transsion/sniffer_load/webview/SniffWebViewContainer;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->q:Lnic;

    invoke-virtual {p1}, Lnic;->v()V

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->q:Lnic;

    invoke-virtual {p1}, Lnic;->w()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v1}, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->o0(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lb39;->b(Landroid/content/Context;)Z

    move-result p1

    iget-boolean v0, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->w:Z

    if-ne v0, p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->x:Z

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->r:Lcom/transsion/widgetslib/dialog/d;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->r:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lb39;->b(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->w:Z

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->z:Landroid/os/Handler;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->B:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->z:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->B:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->z:Landroid/os/Handler;

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lb39;->b(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->w:Z

    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/transsion/sniffer_load/R$anim;->multi_preview_enter:I

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    new-instance p2, Lcom/transsion/sniffer_load/fragment/MultiWebFragment$e;

    invoke-direct {p2, p0}, Lcom/transsion/sniffer_load/fragment/MultiWebFragment$e;-><init>(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/transsion/sniffer_load/R$anim;->multi_preview_out:I

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    :goto_0
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    iget-object p3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->q:Lnic;

    invoke-virtual {v0}, Lnic;->p()I

    move-result v0

    const-string v1, "dl_brower_rp_multi_show"

    const-string v2, "num"

    invoke-static {p3, v1, v2, v0}, Lr06;->f(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;Ljava/lang/String;Ljava/lang/String;I)V

    sget p3, Lcom/transsion/sniffer_load/R$layout;->fragment_multi_web:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->s:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->z:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onMultiWindowModeChanged(Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->x:Z

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onPause()V

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->C:Landroidx/activity/OnBackPressedCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->u:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->t:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget p0, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->v:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onResume()V

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->C:Landroidx/activity/OnBackPressedCallback;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getStatusBarColor()I

    move-result v0

    iput v0, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->t:I

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getStatusBarColor()I

    move-result v0

    iput v0, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->u:I

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    iput v0, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->v:I

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget p2, Lcom/transsion/sniffer_load/R$id;->iv_back:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->l:Landroid/widget/ImageView;

    sget p2, Lcom/transsion/sniffer_load/R$id;->iv_clear:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->m:Landroid/widget/ImageView;

    sget p2, Lcom/transsion/sniffer_load/R$id;->rv_web_window:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->n:Landroidx/recyclerview/widget/RecyclerView;

    sget p2, Lcom/transsion/sniffer_load/R$id;->ll_add_new:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->o:Landroid/view/View;

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->l:Landroid/widget/ImageView;

    new-instance p2, Lys6;

    invoke-direct {p2, p0}, Lys6;-><init>(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->m:Landroid/widget/ImageView;

    new-instance p2, Lys6;

    invoke-direct {p2, p0}, Lys6;-><init>(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->o:Landroid/view/View;

    new-instance p2, Lys6;

    invoke-direct {p2, p0}, Lys6;-><init>(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/transsion/utils/CustomGridLayoutManager;

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/4 v0, 0x2

    invoke-direct {p1, p2, v0}, Lcom/transsion/utils/CustomGridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->y:Lcom/transsion/utils/CustomGridLayoutManager;

    iget-object p2, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->n:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p1, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment$b;

    invoke-direct {v0, p0}, Lcom/transsion/sniffer_load/fragment/MultiWebFragment$b;-><init>(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;)V

    invoke-direct {p1, p2, v0}, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;-><init>(Landroid/content/Context;Lcom/transsion/sniffer_load/adapter/MultiWebAdapter$a;)V

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->p:Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;

    iget-object p2, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->n:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->p:Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;

    iget-object p2, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->q:Lnic;

    invoke-virtual {p2}, Lnic;->o()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;->h(Ljava/util/List;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->n:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p2}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->p:Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;

    iget-object p2, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->q:Lnic;

    invoke-virtual {p2}, Lnic;->o()Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->q:Lnic;

    invoke-virtual {v0}, Lnic;->m()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/transsion/sniffer_load/adapter/MultiWebAdapter;->s(Ljava/util/List;I)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getStatusBarColor()I

    move-result p1

    iput p1, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->t:I

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    iput p1, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->v:I

    return-void
.end method

.method public p0()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->q:Lnic;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnic;->G()V

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->A:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "is_from_multiweb_back"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/eventbus/LiveEventBus;->c(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final q0()V
    .locals 3

    sget v0, Lcom/transsion/playercommon/R$string;->clear_all_web:I

    iget-object v1, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->r:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->r:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    new-instance v1, Lcom/transsion/widgetslib/dialog/d$a;

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/dialog/d$a;->j(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$string;->clear_empty:I

    new-instance v2, Lcom/transsion/sniffer_load/fragment/MultiWebFragment$d;

    invoke-direct {v2, p0}, Lcom/transsion/sniffer_load/fragment/MultiWebFragment$d;-><init>(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$string;->cancel:I

    new-instance v2, Lcom/transsion/sniffer_load/fragment/MultiWebFragment$c;

    invoke-direct {v2, p0}, Lcom/transsion/sniffer_load/fragment/MultiWebFragment$c;-><init>(Lcom/transsion/sniffer_load/fragment/MultiWebFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/fragment/MultiWebFragment;->r:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    const-string p0, "dl_brower_rp_multi_del_pop_show"

    invoke-static {p0}, Lp06;->d0(Ljava/lang/String;)V

    return-void
.end method
