.class public Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;
.super Lcom/transsion/playercommon/fragments/BaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public l:Lcom/transsion/playercommon/videomodel/MainViewModel;

.field public m:Landroid/widget/Switch;

.field public n:Ljava/lang/String;

.field public o:Landroid/widget/ImageView;

.field public p:Lcom/transsion/WindowInfoViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;-><init>()V

    return-void
.end method

.method public static synthetic P(Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;->T(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic Q(Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;)Landroid/widget/Switch;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;->m:Landroid/widget/Switch;

    return-object p0
.end method

.method public static synthetic R(Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;)Lcom/transsion/playercommon/activities/BaseActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    return-object p0
.end method

.method private synthetic T(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method private W()V
    .locals 3

    const-string v0, "setup_setuppage_locmusic_pop"

    invoke-static {v0}, Lhb0;->markDirect(Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/transsion/tools/R$string;->setting_overlay_screen_title:I

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->A(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/tools/R$string;->setting_overlay_screen_message:I

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->j(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/tools/R$string;->setting_overlay_screen_ok:I

    new-instance v2, Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment$b;

    invoke-direct {v2, p0}, Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment$b;-><init>(Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/tools/R$string;->cancel:I

    new-instance v2, Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment$a;

    invoke-direct {v2, p0}, Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment$a;-><init>(Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/dialog/d$a;->f(Z)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    return-void
.end method


# virtual methods
.method public S(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/transsion/playercommon/R$id;->title_bar_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/transsion/playercommon/R$id;->title_bar_back:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Ljp5;

    invoke-direct {v1, p0}, Ljp5;-><init>(Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/playercommon/R$string;->setting_lock_screen_player:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public U(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;->n:Ljava/lang/String;

    return-void
.end method

.method public final declared-synchronized V(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;->o:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public X(Z)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;->W()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;->l:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string v1, "show_lock_screen_player_mode"

    invoke-static {v0, v1, p1}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    sget-boolean v0, Lcom/transsion/playercommon/core/MainApp;->q:Z

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_1

    sget v0, Lcom/transsion/tools/R$string;->setting_lock_screen_player_toast:I

    invoke-static {v0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "on"

    goto :goto_0

    :cond_2
    const-string v0, "off"

    :goto_0
    const-string v1, "setup_setuppage_locmusic_switch"

    const-string v2, "switch"

    invoke-static {v1, v2, v0}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sput-boolean p1, Lcom/transsion/playercommon/core/MainApp;->q:Z

    invoke-virtual {p0, p1}, Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;->V(Z)V

    :goto_1
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/tools/R$id;->switch_for_lock_screen_player:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;->X(Z)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/tools/R$id;->ll_lock_screen_setting:I

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;->m:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onFinishRequestPermission(IZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onFinishRequestPermission(IZ)V

    const/16 p2, 0x4d2

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;->m:Landroid/widget/Switch;

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p2}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;->V(Z)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p1

    sput-boolean p1, Lcom/transsion/playercommon/core/MainApp;->q:Z

    iget-object p1, p0, Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;->l:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object p1, p1, Lcom/transsion/playercommon/videomodel/MainViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    sget-boolean p2, Lcom/transsion/playercommon/core/MainApp;->q:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "switch"

    const-string p1, "on"

    const-string p2, "setup_setuppage_locmusic_switch"

    invoke-static {p2, p0, p1}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/tools/R$layout;->fragment_lock_screen_preview:I

    return p0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onResume()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/transsion/playercommon/core/MainApp;->q:Z

    iget-object v0, p0, Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;->m:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;->m:Landroid/widget/Switch;

    sget-boolean v1, Lcom/transsion/playercommon/core/MainApp;->q:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    sget-boolean v0, Lcom/transsion/playercommon/core/MainApp;->q:Z

    invoke-virtual {p0, v0}, Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;->V(Z)V

    iget-object p0, p0, Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;->l:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/MainViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    sget-boolean v0, Lcom/transsion/playercommon/core/MainApp;->q:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;->S(Landroid/view/View;)V

    sget p2, Lcom/transsion/tools/R$id;->ll_lock_screen_setting:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-class p2, Lcom/transsion/playercommon/videomodel/MainViewModel;

    invoke-virtual {p0, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p2

    check-cast p2, Lcom/transsion/playercommon/videomodel/MainViewModel;

    iput-object p2, p0, Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;->l:Lcom/transsion/playercommon/videomodel/MainViewModel;

    const-class p2, Lcom/transsion/WindowInfoViewModel;

    invoke-virtual {p0, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p2

    check-cast p2, Lcom/transsion/WindowInfoViewModel;

    iput-object p2, p0, Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;->p:Lcom/transsion/WindowInfoViewModel;

    sget p2, Lcom/transsion/tools/R$id;->switch_for_lock_screen_player:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    iput-object p2, p0, Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;->m:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    sput-boolean v0, Lcom/transsion/playercommon/core/MainApp;->q:Z

    :cond_0
    iget-object p2, p0, Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;->m:Landroid/widget/Switch;

    sget-boolean v1, Lcom/transsion/playercommon/core/MainApp;->q:Z

    invoke-virtual {p2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object p2, p0, Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;->m:Landroid/widget/Switch;

    invoke-virtual {p2, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget p2, Lcom/transsion/tools/R$id;->iv_preview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;->o:Landroid/widget/ImageView;

    sget p2, Lcom/transsion/tools/R$id;->fl_skin:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;->p:Lcom/transsion/WindowInfoViewModel;

    iget-object v1, v1, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwoc;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lwoc;->b()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x43a4570a    # 328.68f

    invoke-static {v2, v4}, Loc2;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v2, v3}, Loc2;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v0, v2, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;->o:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/audio/R$drawable;->bg_lockscreen_guide_port:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lwoc;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x438f970a    # 287.18f

    invoke-static {v2, v4}, Loc2;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-static {v2, v3}, Loc2;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v0, v2, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;->o:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/audio/R$drawable;->bg_lockscreen_guide_land:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    :goto_0
    sget-boolean p2, Lcom/transsion/playercommon/core/MainApp;->q:Z

    invoke-virtual {p0, p2}, Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;->V(Z)V

    iget-boolean p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->needBg:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/tools/R$dimen;->video_main_activity_fragment_top_padding:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->backgroundFollowBaseWindowByPx(Landroid/view/View;I)V

    :cond_3
    const-string p1, "from"

    iget-object p0, p0, Lcom/transsion/tools/fragments/LockScreenPlayerPreviewFragment;->n:Ljava/lang/String;

    const-string p2, "setup_setuppage_locmusic_show"

    invoke-static {p2, p1, p0}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
