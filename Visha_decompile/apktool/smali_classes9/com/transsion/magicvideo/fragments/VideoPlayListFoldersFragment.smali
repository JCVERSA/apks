.class public Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;
.super Lcom/transsion/magicvideo/fragments/VideosBaseFragment;
.source "SourceFile"


# instance fields
.field public Z:Lcom/transsion/magicvideo/adapter/VideoPlayListBucketAdapter;

.field public a0:Lcom/transsion/utils/CustomGridLayoutManager;

.field public b0:Lcom/transsion/playercommon/utils/decoration/GridSpaceItemDecoration;

.field public c0:Landroid/view/View;

.field public d0:Landroid/view/View;

.field public e0:Z

.field public f0:Z

.field public g0:Ljwb;

.field public h0:Z

.field public final i0:Ljwb$d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->h0:Z

    new-instance v0, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment$b;

    invoke-direct {v0, p0}, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment$b;-><init>(Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->i0:Ljwb$d;

    return-void
.end method

.method public static synthetic D1(Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->T1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic E1(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->W1(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic F1(Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->S1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic G1(Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->Y1(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic H1(Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->a2(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic I1(Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->V1(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic J1(Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->b2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic K1(Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->Z1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic L1(Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;Lrc7;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->X1(Lrc7;)V

    return-void
.end method

.method public static synthetic M1(Ljava/lang/Integer;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->U1(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic N1(Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;Lcom/transsion/dbdata/database/VideoPlayList;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->O1(Lcom/transsion/dbdata/database/VideoPlayList;)V

    return-void
.end method

.method private P1()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->g0:Ljwb;

    if-nez v0, :cond_0

    new-instance v0, Ljwb;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Ljwb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->g0:Ljwb;

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->i0:Ljwb$d;

    invoke-virtual {v0, v1}, Ljwb;->L(Ljwb$d;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->g0:Ljwb;

    invoke-virtual {v0}, Ljwb;->M()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->h0:Z

    const-string p0, "vd_create_a_play_list_Icon"

    const-wide v0, 0xd91af2734fL

    const/4 v2, 0x0

    invoke-static {v2, p0, v0, v1}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private R1()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->Z:Lcom/transsion/magicvideo/adapter/VideoPlayListBucketAdapter;

    new-instance v1, Lmub;

    invoke-direct {v1, p0}, Lmub;-><init>(Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->Z:Lcom/transsion/magicvideo/adapter/VideoPlayListBucketAdapter;

    new-instance v1, Lnub;

    invoke-direct {v1, p0}, Lnub;-><init>(Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    return-void
.end method

.method private synthetic S1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setOnItemClickListener position:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemViewType(I)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x111

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x333

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x555

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "VideoPlayListFoldersFragment"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/database/VideoPlayList;

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->g2(Lcom/transsion/dbdata/database/VideoPlayList;)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    new-instance p2, Lcom/transsion/athena/data/TrackData;

    invoke-direct {p2}, Lcom/transsion/athena/data/TrackData;-><init>()V

    iget-object p3, p1, Lcom/transsion/dbdata/database/VideoPlayList;->name:Ljava/lang/String;

    const-string v0, "nplaylist_name"

    invoke-virtual {p0, v0, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/transsion/dbdata/database/VideoPlayList;->name:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string p1, "vd_nplaylist_cl"

    const-wide/16 v0, 0x246c

    invoke-static {p2, p0, p1, v0, v1}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method

.method private synthetic T1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/database/VideoPlayList;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    sget p3, Lcom/transsion/magicvideo/R$id;->iv_more:I

    if-ne p2, p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->g2(Lcom/transsion/dbdata/database/VideoPlayList;)V

    :cond_0
    return-void
.end method

.method public static synthetic U1(Ljava/lang/Integer;)Ljava/util/List;
    .locals 2

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ltpb;->u(Z)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playListFolderSet: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayListFoldersFragment"

    invoke-static {v1, v0}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic W1(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadData "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VideoPlayListFoldersFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic Y1(Ljava/util/List;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playLists:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoPlayListFoldersFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->postDelayLoadData()V

    return-void
.end method

.method private synthetic Z1(Ljava/lang/Boolean;)V
    .locals 1

    const-string p1, "VideoPlayListFoldersFragment"

    const-string v0, "getIsMediaItemChange"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->postDelayLoadData()V

    return-void
.end method

.method private d2()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->d0:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$layout;->main_empty_view:I

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->d0:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->Z:Lcom/transsion/magicvideo/adapter/VideoPlayListBucketAdapter;

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEmptyView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private f2()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->d0:Landroid/view/View;

    if-eqz p0, :cond_0

    sget v0, Lcom/transsion/magicvideo/R$id;->text_no_videos:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    sget v0, Lcom/transsion/magicvideo/R$string;->no_playlist:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final O1(Lcom/transsion/dbdata/database/VideoPlayList;)V
    .locals 4

    new-instance v0, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;

    invoke-direct {v0}, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->e2(ZZ)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, v2}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    check-cast v0, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-class v3, Lcom/transsion/playercommon/videomodel/VideoDataListModel;

    invoke-virtual {p0, v3}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/videomodel/VideoDataListModel;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v3}, Lcom/transsion/playercommon/videomodel/VideoDataListModel;->o(Ljava/util/List;)V

    iget p0, p1, Lcom/transsion/dbdata/database/VideoPlayList;->id:I

    const-string v3, "fragment_playlist_id"

    invoke-virtual {v2, v3, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "fragment_playlist_name"

    iget-object p1, p1, Lcom/transsion/dbdata/database/VideoPlayList;->name:Ljava/lang/String;

    invoke-virtual {v2, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-static {v0, v1, v1}, La64;->n(Lcom/transsion/playercommon/fragments/BaseFragment;ZZ)V

    return-void
.end method

.method public P0()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->P0()V

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->q:Landroid/view/View;

    if-eqz p0, :cond_0

    sget v0, Lcom/transsion/magicvideo/R$id;->text_no_videos:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    sget v0, Lcom/transsion/magicvideo/R$string;->no_playlist:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public final Q1(Lcom/transsion/dbdata/database/VideoPlayList;)Ljava/lang/String;
    .locals 2

    iget v0, p1, Lcom/transsion/dbdata/database/VideoPlayList;->mCategory:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object p0, p1, Lcom/transsion/dbdata/database/VideoPlayList;->name:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    sget p1, Lcom/transsion/magicvideo/R$string;->talkback_add_to_favorites:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    sget p1, Lcom/transsion/magicvideo/R$string;->recent_add:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic V1(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mbFragmentShowCompleted:Z

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->updateUiForDataChanged()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadData "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VideoPlayListFoldersFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final synthetic X1(Lrc7;)V
    .locals 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v3, "nplaylist_amount"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/transsion/magicvideo/data/VideoBucket;

    invoke-direct {v3}, Lcom/transsion/magicvideo/data/VideoBucket;-><init>()V

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/dbdata/database/VideoPlayList;

    iget v6, v5, Lcom/transsion/dbdata/database/VideoPlayList;->count:I

    invoke-virtual {v3, v6}, Lcom/transsion/magicvideo/data/VideoBucket;->setCnt(I)V

    iget-object v5, v5, Lcom/transsion/dbdata/database/VideoPlayList;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/transsion/magicvideo/data/VideoBucket;->setNplaylist_name(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p0, "single"

    invoke-virtual {v0, p0, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v1, p0, v0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Landroid/os/Bundle;)Lcom/transsion/athena/data/TrackData;

    const-string p0, "vd_playlist_show_p"

    const-wide/16 v2, 0x246c

    invoke-static {v1, v0, p0, v2, v3}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Lk93;->onNext(Ljava/lang/Object;)V

    invoke-interface {p1}, Lk93;->onComplete()V

    return-void
.end method

.method public final synthetic a2(Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/transsion/dbdata/database/VideoPlayList;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/transsion/dbdata/database/VideoPlayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v0, Lcom/transsion/dbdata/database/VideoPlayList;->count:I

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->Z:Lcom/transsion/magicvideo/adapter/VideoPlayListBucketAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result p1

    add-int/2addr p1, v1

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->Z:Lcom/transsion/magicvideo/adapter/VideoPlayListBucketAdapter;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->postDelayLoadData()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic b2(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->P1()V

    return-void
.end method

.method public c2()V
    .locals 1

    new-instance v0, Luub;

    invoke-direct {v0, p0}, Luub;-><init>(Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;)V

    invoke-static {v0}, Lmc7;->h(Led7;)Lmc7;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->bindFragmentToLifecycle()Lyk5;

    move-result-object p0

    invoke-virtual {v0, p0}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->d()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-virtual {p0}, Lmc7;->Y()Lrc2;

    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->didReceivedNotification(I[Ljava/lang/Object;)V

    const/16 p2, 0x41d

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->postDelayLoadData()V

    :goto_0
    return-void
.end method

.method public e2()V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->e0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->c0:Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$layout;->add_playlist_header:I

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->c0:Landroid/view/View;

    sget v1, Lcom/transsion/magicvideo/R$id;->ll_add_new_playList:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lha1;

    new-instance v2, Llub;

    invoke-direct {v2, p0}, Llub;-><init>(Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;)V

    invoke-direct {v1, v2}, Lha1;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHeaderView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->c0:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayListFoldersFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->Z:Lcom/transsion/magicvideo/adapter/VideoPlayListBucketAdapter;

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->c0:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setHeaderView(Landroid/view/View;)I

    iget-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->f0:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->h2()V

    :cond_2
    return-void
.end method

.method public editMode(Z)V
    .locals 0

    return-void
.end method

.method public g2(Lcom/transsion/dbdata/database/VideoPlayList;)V
    .locals 4

    if-nez p1, :cond_0

    const-string p0, "VideoPlayListFoldersFragment"

    const-string p1, "startShowPlaylist failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p1, Lcom/transsion/dbdata/database/VideoPlayList;->id:I

    int-to-long v1, v1

    const-string v3, "bucket_fragment_buicket_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "bucket_fragment_buicket_name"

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->Q1(Lcom/transsion/dbdata/database/VideoPlayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bucket_fragment_buicket_playlist_flag"

    iget p1, p1, Lcom/transsion/dbdata/database/VideoPlayList;->playlistFlag:I

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance p1, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;

    invoke-direct {p1}, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->baseActivity()Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    check-cast p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setNeedBg(Z)V

    const/16 v1, 0x1e

    invoke-virtual {p0, v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setArguments(Landroid/os/Bundle;I)V

    invoke-static {p0, p1, p1}, La64;->n(Lcom/transsion/playercommon/fragments/BaseFragment;ZZ)V

    return-void
.end method

.method public h2()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->c0:Landroid/view/View;

    if-eqz v0, :cond_1

    sget v1, Lcom/transsion/magicvideo/R$id;->ll_add_new_playList:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v3, v4}, Loc2;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Loc2;->a(Landroid/content/Context;F)I

    move-result v4

    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42cc0000    # 102.0f

    invoke-static {v2, v3}, Loc2;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v3}, Loc2;->a(Landroid/content/Context;F)I

    move-result v4

    move v3, v2

    :cond_0
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public initEvents()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->initEvents()V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v0, 0x41d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public loadData(ZZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->loadData(ZZ)V

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->bindFragmentToLifecycle()Lyk5;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p1

    new-instance p2, Loub;

    invoke-direct {p2}, Loub;-><init>()V

    invoke-virtual {p1, p2}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance p2, Lpub;

    invoke-direct {p2, p0}, Lpub;-><init>(Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;)V

    new-instance p0, Lqub;

    invoke-direct {p0}, Lqub;-><init>()V

    invoke-virtual {p1, p2, p0}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

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

    const-string p0, "vd_playlist_show"

    invoke-static {p1, p0}, Lr06;->c(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public markPointVisiable(Z)V
    .locals 3

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mAttach:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->c2()V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    const-string p1, "vd_playlist_show"

    const-wide/16 v0, 0x246c

    const/4 v2, 0x0

    invoke-static {p0, v2, p1, v0, v1}, Lr06;->e(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->f0:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->h2()V

    iget-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->h0:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->g0:Ljwb;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljwb;->t()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->h0:Z

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->O:Z

    new-instance v0, Lcom/transsion/magicvideo/adapter/VideoPlayListBucketAdapter;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/magicvideo/adapter/VideoPlayListBucketAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->Z:Lcom/transsion/magicvideo/adapter/VideoPlayListBucketAdapter;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setHeaderAndEmpty(Z)V

    const-class p1, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

    invoke-virtual {p1}, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;->g()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lrub;

    invoke-direct {v1, p0}, Lrub;-><init>(Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p1}, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;->f()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lsub;

    invoke-direct {v1, p0}, Lsub;-><init>(Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p1}, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;->e()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Ltub;

    invoke-direct {v0, p0}, Ltub;-><init>(Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->l:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->c0:Landroid/view/View;

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->d0:Landroid/view/View;

    return-void
.end method

.method public onLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/magicvideo/R$layout;->playlist_folders_fragment:I

    return p0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->onPause()V

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->u2(Lcom/transsion/magicvideo/player/VideoPlayManager$c;)V

    invoke-static {}, Lsq3;->a()Lsq3;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsq3;->c(Lsq3$a;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->onResume()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->U0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->postDelayLoadData()V

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->C1(Lcom/transsion/magicvideo/player/VideoPlayManager$c;)V

    invoke-static {}, Lsq3;->a()Lsq3;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsq3;->b(Lsq3$a;)V

    :cond_0
    return-void
.end method

.method public onSelectInViewPage()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onSelectInViewPage()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onStop()V

    return-void
.end method

.method public onUnSelectInViewPage()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onUnSelectInViewPage()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget v0, Lcom/transsion/magicvideo/R$id;->rv_main_fragment:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    sget v0, Lcom/transsion/magicvideo/R$id;->rv_fast_scroller:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->N:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    invoke-static {}, Lcom/transsion/utils/a;->A()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->f0:Z

    new-instance v0, Lcom/transsion/utils/CustomGridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/utils/CustomGridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->a0:Lcom/transsion/utils/CustomGridLayoutManager;

    new-instance v0, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/magicvideo/R$dimen;->video_operate_views_padding:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-direct {v0, p0, v2, v1}, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment$a;-><init>(Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;II)V

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->b0:Lcom/transsion/playercommon/utils/decoration/GridSpaceItemDecoration;

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->a0:Lcom/transsion/utils/CustomGridLayoutManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->a0:Lcom/transsion/utils/CustomGridLayoutManager;

    invoke-virtual {v0, v2}, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->Z:Lcom/transsion/magicvideo/adapter/VideoPlayListBucketAdapter;

    invoke-virtual {v0, v2}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSimpleOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    const-string v2, "video"

    invoke-virtual {v0, v2}, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;->setType(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->e2()V

    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->d2()V

    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->R1()V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;IZ)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mOverScrollDecor:Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mOverScrollListener:Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;->setOverScrollListener(Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mBounceListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mOverScrollDecor:Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    invoke-interface {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;->a(Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;)V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->onViewCreatedEnd(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public refresh()V
    .locals 1

    const-string p0, "VideoPlayListFoldersFragment"

    const-string v0, "refresh"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public scrollToTop()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->scrollToTop()V

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public t(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->postDelayLoadData()V

    :cond_0
    return-void
.end method

.method public updateShowUI()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->updateShowUI()V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->Z:Lcom/transsion/magicvideo/adapter/VideoPlayListBucketAdapter;

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->c2()V

    :cond_0
    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->f2()V

    return-void
.end method
