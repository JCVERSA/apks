.class public Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;
.super Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;
.source "SourceFile"


# instance fields
.field public H:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;-><init>()V

    return-void
.end method

.method public static synthetic Q0(Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;->d1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic R0(Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;->g1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic S0(Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;->e1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic T0(Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;->f1(Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic U0(Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;)Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;->H:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    return-object p0
.end method

.method public static synthetic V0(Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;)Lcom/transsion/playercommon/activities/BaseActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    return-object p0
.end method

.method public static synthetic W0(Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;)Lcom/transsion/playercommon/activities/BaseActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    return-object p0
.end method

.method public static synthetic X0(Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;)Lcom/transsion/playercommon/activities/BaseActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    return-object p0
.end method

.method public static synthetic Y0(Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    return p0
.end method

.method public static synthetic Z0(Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->ingoreClickEvent()Z

    move-result p0

    return p0
.end method

.method public static synthetic a1(Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    return p0
.end method

.method public static synthetic b1(Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;J)J
    .locals 0

    iput-wide p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFirstClickTime:J

    return-wide p1
.end method

.method public static synthetic c1(Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    return p0
.end method

.method private synthetic d1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;->i1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    invoke-virtual {p1}, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->isHeaderTask()Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    :cond_2
    iget-object p2, p1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget p2, p2, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 p3, 0x4

    if-ne p2, p3, :cond_3

    return-void

    :cond_3
    sget p3, Lcom/transsion/playercommon/core/MainApp;->w:I

    if-nez p3, :cond_4

    sget p0, Lcom/transsion/sniffer_load/R$string;->net_media_play_network_error:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void

    :cond_4
    invoke-virtual {p0, p2}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->L0(I)I

    move-result p3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const-string v2, "status"

    invoke-virtual {v0, v2, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, p3}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    const/4 p3, 0x2

    if-eq p2, p3, :cond_8

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    const/4 p3, 0x6

    const/4 v2, 0x1

    if-eq p2, p3, :cond_6

    const/4 p3, 0x7

    if-eq p2, p3, :cond_6

    const/4 p3, 0x3

    if-eq p2, p3, :cond_6

    if-ne p2, v2, :cond_9

    :cond_6
    sget-boolean p2, Lcom/transsion/playercommon/core/MainApp;->h:Z

    if-nez p2, :cond_7

    sget p2, Lcom/transsion/playercommon/core/MainApp;->w:I

    invoke-static {p2}, Lpz6;->c(I)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;->j1(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)V

    return-void

    :cond_7
    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object p2

    invoke-virtual {p2, p1, v2}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->A(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;Z)V

    goto :goto_1

    :cond_8
    :goto_0
    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->E(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)V

    :cond_9
    :goto_1
    iget-object p1, p1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget p1, p1, Lcom/lzy/okgo/model/Progress;->status:I

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->L0(I)I

    move-result p0

    const-string p1, "status_0"

    invoke-virtual {v0, p1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, p1, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    const-string p0, "dl_manager_downloading_video_cl"

    const-wide/16 p1, 0x246c

    invoke-static {v1, v0, p0, p1, p2}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    :goto_2
    return-void
.end method

.method private synthetic e1(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;->H:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->D:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->A(Z)V

    :cond_0
    return-void
.end method

.method private synthetic f1(Ljava/util/List;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addObserverDownloadingGroupTasks: taskList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "visha_cloud_DownloadingFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->P0(Ljava/util/List;)V

    return-void
.end method

.method public static h1(Z)Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;
    .locals 3

    new-instance v0, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;

    invoke-direct {v0}, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "support_theme_background"

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "transmit_upload_type"

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public N0(I)V
    .locals 4

    invoke-super {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->N0(I)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->D:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;->H:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    invoke-virtual {v3}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->t()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne p1, v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEditModeListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;->H:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    invoke-virtual {v3}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->u()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;->H:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->t()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ne p1, p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-interface {v0, v3, v1, v2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;->b(Ljava/util/ArrayList;ZZ)V

    :cond_3
    return-void
.end method

.method public c(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->c(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;->H:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    invoke-virtual {v0}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->u()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;->N0(I)V

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->D:Landroid/widget/CheckBox;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public editMode(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;->H:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v0, v1}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->A(Z)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;->H:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    invoke-virtual {v0, p1}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->C(Z)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;->H:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    invoke-virtual {v0, v1}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->A(Z)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;->H:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    invoke-super {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->editMode(Z)V

    return-void
.end method

.method public final synthetic g1(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->n:Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->j()V

    :cond_0
    return-void
.end method

.method public i1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V
    .locals 1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    sget v0, Lcom/transsion/magicvideo/R$id;->iv_bucket_fragment_checkBox:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    check-cast p1, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    if-ne p4, p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p0, p2, p3}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->B(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;ZI)V

    return-void
.end method

.method public initTitleBar(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->initTitleBar(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->D:Landroid/widget/CheckBox;

    new-instance v0, Lj23;

    invoke-direct {v0, p0}, Lj23;-><init>(Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->initView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->l:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;->H:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    invoke-virtual {p1, p0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public final j1(Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)V
    .locals 3

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/transsion/utils/a;->A()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/transsion/playercommon/R$string;->tablet_visha_non_wifi_download_warning:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/transsion/playercommon/R$string;->visha_non_wifi_download_warning:I

    :goto_0
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->j(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$string;->cancel:I

    new-instance v2, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment$d;

    invoke-direct {v2, p0}, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment$d;-><init>(Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$string;->ok:I

    new-instance v2, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment$c;

    invoke-direct {v2, p0, p1}, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment$c;-><init>(Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->n:Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    invoke-direct {p1, v0, v1}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;-><init>(Landroid/content/Context;Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;)V

    iput-object p1, p0, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;->H:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->n:Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    new-instance v0, Lg23;

    invoke-direct {v0, p0}, Lg23;-><init>(Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;)V

    invoke-virtual {p1, p0, v0}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->f(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p1

    const-string v0, "download_task_restore"

    invoke-virtual {p1, v0}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object p1

    new-instance v0, Lh23;

    invoke-direct {v0, p0}, Lh23;-><init>(Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;)V

    invoke-virtual {p1, p0, v0}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->z:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-static {v0, v1}, Lw6c;->H(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-static {}, Lcom/transsion/sniffer_load/viewmodel/DownloadViewModel;->d()V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->n:Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->y(Landroidx/lifecycle/LifecycleOwner;)V

    :cond_0
    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onDestroyView()V

    const-string p0, "visha_cloud_DownloadingFragment"

    invoke-static {p0}, Lcom/transsion/playercommon/core/MainApp;->s(Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/sniffer_load/R$dimen;->video_main_activity_fragment_top_padding:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->backgroundFollowBaseWindowByPx(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->n:Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    invoke-virtual {p1}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->k()V

    new-instance p1, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment$1;

    invoke-direct {p1, p0}, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment$1;-><init>(Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;)V

    const-string p0, "visha_cloud_DownloadingFragment"

    invoke-static {p0, p1}, Lcom/transsion/playercommon/core/MainApp;->d(Ljava/lang/String;Lvz6;)V

    return-void
.end method

.method public r0(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->r0(I)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;->H:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    invoke-virtual {p1}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->u()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->O0(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public s0()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->s0()V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->E:Lcom/transsion/cloud/updownload/widgets/TransferOperationBar;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;->H:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->u()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeItemEnable(IZ)V

    :cond_0
    return-void
.end method

.method public selectAll(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;->H:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->A(Z)V

    return-void
.end method

.method public t0(Ljava/util/List;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->t0(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;->H:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    invoke-virtual {v0}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->u()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz p1, :cond_2

    iget v1, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->B:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->B:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->A:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->A:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->A:I

    check-cast v2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;->H:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    invoke-virtual {p0, v1}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->E(Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method public updateShowUI()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->updateShowUI()V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;->H:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->setNewData(Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->w0(Z)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->l:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x8

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public x0()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/cloud/updownload/fragment/TransmittingBaseFragment;->x0()V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;->H:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    invoke-virtual {v0, p0}, Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;->D(Lcu4;)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;->H:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    new-instance v1, Li23;

    invoke-direct {v1, p0}, Li23;-><init>(Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;->H:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    new-instance v1, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment$a;

    invoke-direct {v1, p0}, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment$a;-><init>(Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemLongClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;->H:Lcom/transsion/cloud/updownload/adapter/DownloadingAdapter;

    new-instance v1, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment$b;

    invoke-direct {v1, p0}, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment$b;-><init>(Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    return-void
.end method
