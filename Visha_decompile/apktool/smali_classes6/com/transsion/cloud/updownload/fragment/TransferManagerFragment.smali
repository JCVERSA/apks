.class public Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;
.super Lcom/transsion/playercommon/fragments/BaseFragment;
.source "SourceFile"


# instance fields
.field public A:Z

.field public B:Ljava/lang/String;

.field public C:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public D:I

.field public E:Z

.field public F:Z

.field public G:Landroid/widget/FrameLayout;

.field public H:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field public final I:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

.field public l:Landroid/view/View;

.field public m:[Ljava/lang/String;

.field public n:Lcom/transsion/playercommon/adapter/RtlPageAdapter;

.field public o:Ljava/util/List;

.field public p:Lcom/transsion/widgets/CustomViewPager;

.field public q:Lcom/transsion/widgets/CustomTabLayout;

.field public r:Landroid/widget/TextView;

.field public s:Landroid/widget/TextView;

.field public t:Landroid/view/View;

.field public u:Landroid/view/View;

.field public v:Ljava/lang/String;

.field public w:Lcom/transsion/widgets/BubbleTextView;

.field public x:Landroid/view/View;

.field public y:Landroid/widget/CheckBox;

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;-><init>()V

    const-string v0, "0"

    iput-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->B:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->D:I

    new-instance v0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment$a;

    invoke-direct {v0, p0}, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment$a;-><init>(Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;)V

    iput-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->H:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    new-instance v0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment$b;

    invoke-direct {v0, p0}, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment$b;-><init>(Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;)V

    iput-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->I:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    return-void
.end method

.method public static synthetic P(Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->e0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q(Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;ZLandroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->h0(ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic R(Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->f0()V

    return-void
.end method

.method public static synthetic S(Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->g0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic T(Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->d0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic U(Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;Lcom/transsion/moduleservice/IBtDownloadService;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->c0(Lcom/transsion/moduleservice/IBtDownloadService;Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic V(Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->r:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic W(Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->D:I

    return-void
.end method

.method private synthetic d0(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method private synthetic e0(Landroid/view/View;)V
    .locals 5

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "web_start_url"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/16 v3, 0x4db

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object v0

    const-string v1, "/tools/settingfragment"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/fragments/BaseFragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    const/4 p0, 0x1

    invoke-static {v0, p0, p0}, La64;->n(Lcom/transsion/playercommon/fragments/BaseFragment;ZZ)V

    :cond_2
    const-string p0, "cloud_transfer_setting_cl"

    invoke-static {p0}, Lcz5;->e(Ljava/lang/String;)V

    return-void
.end method

.method private i0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    const-string v1, "dl_manager_show"

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->B:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lr06;->b(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static j0(Ljava/lang/String;IZZ)Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;
    .locals 3

    new-instance v0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;

    invoke-direct {v0}, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "from"

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "go_download"

    invoke-virtual {v1, p0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "need_scroll"

    invoke-virtual {v1, p0, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "support_theme_background"

    invoke-virtual {v1, p0, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private updateBackIcon(Z)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->t:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    sget v1, Lcom/transsion/playercommon/R$string;->os_close:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/transsion/playercommon/R$string;->os_back:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->t:Landroid/view/View;

    if-eqz p1, :cond_1

    sget p1, Lcom/transsion/playercommon/R$string;->talkback_close:I

    goto :goto_1

    :cond_1
    sget p1, Lcom/transsion/playercommon/R$string;->talkback_back:I

    :goto_1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public X()I
    .locals 0

    iget p0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->D:I

    return p0
.end method

.method public final Y(I)Lcom/transsion/playercommon/fragments/BaseFragment;
    .locals 1

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->o:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->o:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/fragments/BaseFragment;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final Z(Landroid/view/View;)V
    .locals 6

    invoke-static {}, Lcom/transsion/moduleservice/IBtDownloadService$ServiceInstance;->getService()Lcom/transsion/moduleservice/IBtDownloadService;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "get bt download service failed"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "visha_cloud_TransferManagerFragment"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "mmkv_key_magnet_init"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/transsion/sniffer_load/GlobalDownloadManger;->d:Z

    if-nez v1, :cond_1

    return-void

    :cond_1
    sget v1, Lcom/transsion/sniffer_load/R$id;->fl_bt_enter:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->G:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    sget v1, Lcom/transsion/sniffer_load/R$id;->iv_bt_tag:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->x:Landroid/view/View;

    sget v1, Lcom/transsion/sniffer_load/R$id;->iv_bt:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    sget v1, Lcom/transsion/sniffer_load/R$drawable;->ic_bt_enter:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "show_bt_guide"

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "vd_dl_manager_bt_show"

    const-string v5, "type"

    invoke-static {v4, v5, v1}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lx5b;

    invoke-direct {v1, p0, v0}, Lx5b;-><init>(Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;Lcom/transsion/moduleservice/IBtDownloadService;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {v0}, Lcom/transsion/moduleservice/IBtDownloadService;->hasTaskRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->w:Lcom/transsion/widgets/BubbleTextView;

    if-eqz v1, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->w:Lcom/transsion/widgets/BubbleTextView;

    invoke-virtual {p1, v3, v3}, Landroid/view/View;->measure(II)V

    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->w:Lcom/transsion/widgets/BubbleTextView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/high16 v1, 0x42a00000    # 80.0f

    invoke-static {v0, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v1, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    add-int/2addr p1, v1

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->w:Lcom/transsion/widgets/BubbleTextView;

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/BubbleTextView;->setTriangleOffset(I)V

    :cond_4
    return-void
.end method

.method public final a0()V
    .locals 0

    return-void
.end method

.method public b0(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/transsion/sniffer_load/R$id;->title_bar_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->r:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lzz0;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/transsion/playercommon/R$string;->visha_transfer_management:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/transsion/playercommon/R$string;->download_manager:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->v:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/transsion/sniffer_load/R$id;->title_bar_back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->t:Landroid/view/View;

    sget v1, Lcom/transsion/playercommon/R$string;->talkback_back:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->t:Landroid/view/View;

    new-instance v1, Lv5b;

    invoke-direct {v1, p0}, Lv5b;-><init>(Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/sniffer_load/R$id;->iv_setting:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->u:Landroid/view/View;

    new-instance v0, Lw5b;

    invoke-direct {v0, p0}, Lw5b;-><init>(Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->u:Landroid/view/View;

    sget v0, Lcom/transsion/playercommon/R$string;->talkback_settings:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->u:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final synthetic c0(Lcom/transsion/moduleservice/IBtDownloadService;Landroid/view/View;)V
    .locals 3

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-interface {p1, p2}, Lcom/transsion/moduleservice/IBtDownloadService;->gotoTorrentDownloadActivity(Landroid/content/Context;)V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string p2, "show_bt_guide"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "vd_dl_manager_bt_cl"

    const-string v2, "type"

    invoke-static {v1, v2, p1}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->w:Lcom/transsion/widgets/BubbleTextView;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    invoke-virtual {p0, p2, v0}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    :cond_0
    return-void
.end method

.method public final synthetic f0()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->k0()V

    return-void
.end method

.method public final synthetic g0(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->p:Lcom/transsion/widgets/CustomViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->Y(I)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p1

    instance-of v0, p1, Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->y:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->selectAll(Z)V

    :cond_0
    return-void
.end method

.method public final synthetic h0(ZLandroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->m0(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public k0()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->E:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->p:Lcom/transsion/widgets/CustomViewPager;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

.method public final l0()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->o:Ljava/util/List;

    invoke-static {}, Lzz0;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->A:Z

    invoke-static {v0, v1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->u1(ZZ)Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, v2}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    check-cast v0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    iget-object v2, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->I:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    invoke-virtual {v0, v2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setEditModeListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;)V

    iget-object v2, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->C:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setDragAnimationView(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget v2, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->D:I

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->F:Z

    invoke-virtual {v0, v2}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->x1(Z)V

    :cond_0
    iget-object v2, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->o:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->A:Z

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->u1(ZZ)Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, v2}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    check-cast v0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    iget-object v2, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->I:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    invoke-virtual {v0, v2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setEditModeListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;)V

    iget-object v2, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->C:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setDragAnimationView(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget v2, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->D:I

    if-ne v2, v1, :cond_2

    iget-boolean v2, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->F:Z

    invoke-virtual {v0, v2}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->x1(Z)V

    :cond_2
    iget-object v2, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->o:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/sniffer_load/R$array;->kt_menu:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->m:[Ljava/lang/String;

    new-instance v0, Lcom/transsion/playercommon/adapter/RtlPageAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->o:Ljava/util/List;

    iget-object v4, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->m:[Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4}, Lcom/transsion/playercommon/adapter/RtlPageAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->n:Lcom/transsion/playercommon/adapter/RtlPageAdapter;

    iget-object v2, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->p:Lcom/transsion/widgets/CustomViewPager;

    invoke-virtual {v0}, Lcom/transsion/playercommon/adapter/RtlPageAdapter;->getCount()I

    move-result v0

    invoke-virtual {v2, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->p:Lcom/transsion/widgets/CustomViewPager;

    iget-object v2, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->n:Lcom/transsion/playercommon/adapter/RtlPageAdapter;

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->q:Lcom/transsion/widgets/CustomTabLayout;

    iget-object v2, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->p:Lcom/transsion/widgets/CustomViewPager;

    invoke-virtual {v0, v2}, Lcom/transsion/widgets/CustomTabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->q:Lcom/transsion/widgets/CustomTabLayout;

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomTabLayout;->isFirstLevelTab(Z)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->p:Lcom/transsion/widgets/CustomViewPager;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->H:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->p:Lcom/transsion/widgets/CustomViewPager;

    iget v1, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->D:I

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->p:Lcom/transsion/widgets/CustomViewPager;

    new-instance v1, La6b;

    invoke-direct {v1, p0}, La6b;-><init>(Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public m0(Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startEditMode: enter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "visha_cloud_TransferManagerFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->z:Z

    const-class v0, Lcom/transsion/playercommon/videomodel/MainViewModel;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->p:Lcom/transsion/widgets/CustomViewPager;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomViewPager;->setCanScroll(Z)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->q:Lcom/transsion/widgets/CustomTabLayout;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomTabLayout;->setTabChildEnable(Z)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->q:Lcom/transsion/widgets/CustomTabLayout;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez p1, :cond_1

    invoke-static {}, Lzz0;->d()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->u:Landroid/view/View;

    if-eqz p1, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->y:Landroid/widget/CheckBox;

    if-eqz p1, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    move v3, v1

    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->G:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    if-nez p1, :cond_7

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->p:Lcom/transsion/widgets/CustomViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->Y(I)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    instance-of v1, v0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    if-eqz v1, :cond_6

    check-cast v0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    invoke-virtual {v0, v2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->editMode(Z)V

    :cond_6
    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->y:Landroid/widget/CheckBox;

    new-instance v1, Ly5b;

    invoke-direct {v1, p0}, Ly5b;-><init>(Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->t:Landroid/view/View;

    if-eqz v0, :cond_8

    invoke-direct {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->updateBackIcon(Z)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->t:Landroid/view/View;

    new-instance v1, Lz5b;

    invoke-direct {v1, p0, p1}, Lz5b;-><init>(Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    return-void
.end method

.method public markPointScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->markPointScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mAttach:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz p0, :cond_0

    const-string p0, "dl_manager_show"

    invoke-static {p1, p0}, Lr06;->c(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public n0(IZ)V
    .locals 4

    const-string v0, "visha_cloud_TransferManagerFragment"

    invoke-static {}, Lzz0;->d()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move p1, v2

    :cond_0
    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->o:Ljava/util/List;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->p:Lcom/transsion/widgets/CustomViewPager;

    if-eqz p2, :cond_1

    :try_start_0
    const-string p2, "switchItem reset"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->m0(Z)V

    iget-object p2, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->p:Lcom/transsion/widgets/CustomViewPager;

    invoke-virtual {p2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->Y(I)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p2

    instance-of v1, p2, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;

    if-eqz v1, :cond_1

    check-cast p2, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;

    invoke-virtual {p2, v2}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->editMode(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchItem "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->p:Lcom/transsion/widgets/CustomViewPager;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_2
    return-void
.end method

.method public o0()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {v0}, Lt08;->c(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->q:Lcom/transsion/widgets/CustomTabLayout;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-static {}, Lzz0;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->p:Lcom/transsion/widgets/CustomViewPager;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v1, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->u:Landroid/view/View;

    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    iget-boolean p0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->z:Z

    if-nez p0, :cond_4

    move v2, v3

    :cond_4
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->z:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->m0(Z)V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "from"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->B:Ljava/lang/String;

    const-string v0, "go_download"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->D:I

    invoke-static {}, Lzz0;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput v1, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->D:I

    :cond_0
    const-string v0, "need_scroll"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->E:Z

    const-string v0, "go_transfer_working"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->F:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNeedStartWorkingFragment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->F:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    const-string v0, "support_theme_background"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->A:Z

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->l:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 4

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->l:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    instance-of v3, v2, Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    invoke-virtual {v2, v0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setEditModeListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;)V

    invoke-virtual {v2, v0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setDragAnimationView(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->o:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_2
    iget-object v1, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->p:Lcom/transsion/widgets/CustomViewPager;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->p:Lcom/transsion/widgets/CustomViewPager;

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->H:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    :cond_3
    return-void
.end method

.method public onLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/sniffer_load/R$layout;->fragment_download_manager:I

    return p0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onResume()V

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->x:Landroid/view/View;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-boolean p2, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->A:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/sniffer_load/R$dimen;->video_main_activity_fragment_top_padding:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->backgroundFollowBaseWindowByPx(Landroid/view/View;I)V

    :cond_0
    sget p2, Lcom/transsion/sniffer_load/R$id;->cl_drag_animation_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->C:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget p2, Lcom/transsion/sniffer_load/R$id;->viewpager:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/widgets/CustomViewPager;

    iput-object p2, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->p:Lcom/transsion/widgets/CustomViewPager;

    sget p2, Lcom/transsion/sniffer_load/R$id;->tab_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/widgets/CustomTabLayout;

    iput-object p2, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->q:Lcom/transsion/widgets/CustomTabLayout;

    sget p2, Lcom/transsion/sniffer_load/R$id;->title_bar_checkBox:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->y:Landroid/widget/CheckBox;

    sget p2, Lcom/transsion/sniffer_load/R$id;->tv_size_info:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->s:Landroid/widget/TextView;

    sget p2, Lcom/transsion/sniffer_load/R$id;->bt_guide_bubble:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/widgets/BubbleTextView;

    iput-object p2, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->w:Lcom/transsion/widgets/BubbleTextView;

    iget-object p2, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->s:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lzz0;->d()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->q:Lcom/transsion/widgets/CustomTabLayout;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->b0(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->l0()V

    invoke-direct {p0}, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->i0()V

    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->a0()V

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->Z(Landroid/view/View;)V

    return-void
.end method

.method public setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    return-object p0
.end method
