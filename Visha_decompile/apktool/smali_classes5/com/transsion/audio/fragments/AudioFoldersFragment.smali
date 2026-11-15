.class public Lcom/transsion/audio/fragments/AudioFoldersFragment;
.super Lcom/transsion/audio/fragments/AudioBaseFragment;
.source "SourceFile"


# instance fields
.field public V:Lcom/transsion/audio/adapter/AudioBucketAdapter;

.field public W:Lcom/transsion/utils/CustomGridLayoutManager;

.field public X:Z

.field public final Y:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;-><init>()V

    new-instance v0, Lcom/transsion/audio/fragments/AudioFoldersFragment$2;

    invoke-direct {v0, p0}, Lcom/transsion/audio/fragments/AudioFoldersFragment$2;-><init>(Lcom/transsion/audio/fragments/AudioFoldersFragment;)V

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioFoldersFragment;->Y:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic F1(Lcom/transsion/audio/fragments/AudioFoldersFragment;Lcom/transsion/audio/fragments/AudioFoldersFragment;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioFoldersFragment;->a2(Lcom/transsion/audio/fragments/AudioFoldersFragment;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic G1(Lcom/transsion/audio/fragments/AudioFoldersFragment;Lcom/transsion/audio/fragments/AudioFoldersFragment;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioFoldersFragment;->b2(Lcom/transsion/audio/fragments/AudioFoldersFragment;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic H1(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/fragments/AudioFoldersFragment;->Z1(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic I1(Ljava/lang/Integer;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/fragments/AudioFoldersFragment;->X1(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic J1(Lcom/transsion/audio/fragments/AudioFoldersFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/audio/fragments/AudioFoldersFragment;->V1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic K1(Lcom/transsion/audio/fragments/AudioFoldersFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioFoldersFragment;->Y1(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic L1(Lcom/transsion/audio/fragments/AudioFoldersFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/audio/fragments/AudioFoldersFragment;->W1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static bridge synthetic M1(Lcom/transsion/audio/fragments/AudioFoldersFragment;)Lcom/transsion/audio/adapter/AudioBucketAdapter;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioFoldersFragment;->V:Lcom/transsion/audio/adapter/AudioBucketAdapter;

    return-object p0
.end method

.method public static synthetic N1(Lcom/transsion/audio/fragments/AudioFoldersFragment;)Lcom/transsion/playercommon/activities/BaseActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    return-object p0
.end method

.method public static synthetic O1(Lcom/transsion/audio/fragments/AudioFoldersFragment;)Lcom/transsion/playercommon/activities/BaseActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    return-object p0
.end method

.method public static synthetic P1(Lcom/transsion/audio/fragments/AudioFoldersFragment;)Lcom/transsion/playercommon/activities/BaseActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    return-object p0
.end method

.method private Q1(Lcom/transsion/dbdata/beans/media/MediaBucket;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-wide v1, p1, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    const-string v3, "bucket_fragment_buicket_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "bucket_fragment_buicket_name"

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/MediaBucket;->getParentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bucket_fragment_buicket_path"

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/MediaBucket;->getParentPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "audio_drop_animation_by_itself"

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p1, Lcom/transsion/audio/fragments/AudiosFragment;

    invoke-direct {p1}, Lcom/transsion/audio/fragments/AudiosFragment;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->baseActivity()Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p1

    check-cast p1, Lcom/transsion/audio/fragments/AudiosFragment;

    invoke-virtual {p1, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setNeedBg(Z)V

    iget p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v2, 0x1b

    if-ne p0, v2, :cond_0

    const/16 p0, 0x16

    :cond_0
    invoke-virtual {p1, v0, p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setArguments(Landroid/os/Bundle;I)V

    invoke-static {p1, v1, v1}, La64;->n(Lcom/transsion/playercommon/fragments/BaseFragment;ZZ)V

    return-void
.end method

.method private S1()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioFoldersFragment;->V:Lcom/transsion/audio/adapter/AudioBucketAdapter;

    new-instance v1, Liq;

    invoke-direct {v1, p0}, Liq;-><init>(Lcom/transsion/audio/fragments/AudioFoldersFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioFoldersFragment;->V:Lcom/transsion/audio/adapter/AudioBucketAdapter;

    new-instance v1, Ljq;

    invoke-direct {v1, p0}, Ljq;-><init>(Lcom/transsion/audio/fragments/AudioFoldersFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    return-void
.end method

.method private T1(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/AudioFoldersFragment;->X:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->O0(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setRvOverScrollDecorListener(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private synthetic V1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-direct {p0, p1}, Lcom/transsion/audio/fragments/AudioFoldersFragment;->Q1(Lcom/transsion/dbdata/beans/media/MediaBucket;)V

    invoke-direct {p0, p1}, Lcom/transsion/audio/fragments/AudioFoldersFragment;->c2(Lcom/transsion/dbdata/beans/media/MediaBucket;)V

    return-void
.end method

.method private synthetic W1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    sget p3, Lcom/transsion/audio/R$id;->iv_more:I

    if-ne p2, p3, :cond_0

    invoke-direct {p0, p1}, Lcom/transsion/audio/fragments/AudioFoldersFragment;->Q1(Lcom/transsion/dbdata/beans/media/MediaBucket;)V

    :cond_0
    return-void
.end method

.method public static synthetic X1(Ljava/lang/Integer;)Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0x1b

    if-ne p0, v0, :cond_0

    invoke-static {}, Lao;->U()Lao;

    move-result-object p0

    invoke-virtual {p0}, Lao;->z()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lao;->U()Lao;

    move-result-object p0

    invoke-virtual {p0}, Lao;->v()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Z1(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "FoldersFragment"

    const-string v1, "<load folder data error>"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private c2(Lcom/transsion/dbdata/beans/media/MediaBucket;)V
    .locals 8

    new-instance v0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v2, 0x19

    const-wide/16 v3, 0x246c

    if-ne p0, v2, :cond_0

    iget-object p0, p1, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentName:Ljava/lang/String;

    const-string v2, "album_name"

    invoke-virtual {v0, v2, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    iget-object p0, p1, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentName:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "vd_albumlist_album_cl"

    invoke-static {v0, v1, p0, v3, v4}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentName:Ljava/lang/String;

    const-string v2, "folder_name"

    invoke-virtual {v0, v2, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    iget-object p0, p1, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentName:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/transsion/dbdata/beans/media/MediaBucket;->count:I

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v5, "audio_amount"

    invoke-virtual {v0, v5, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    iget-object p0, p1, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentPath:Ljava/lang/String;

    const-string v6, "audio_path"

    invoke-virtual {v0, v6, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Lcom/transsion/dbdata/beans/media/MediaBucket;->count:I

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v5, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentPath:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v6, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "vd_audio_foldermg_cl"

    invoke-static {v0, v1, p0, v3, v4}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    :goto_0
    return-void
.end method

.method public static f2(I)Lcom/transsion/audio/fragments/AudioFoldersFragment;
    .locals 3

    new-instance v0, Lcom/transsion/audio/fragments/AudioFoldersFragment;

    invoke-direct {v0}, Lcom/transsion/audio/fragments/AudioFoldersFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "list_flag"

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public final R1()V
    .locals 2

    invoke-static {}, Lzdc;->f()I

    move-result v0

    sget v1, Lzdc;->a:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/PlayListData;->isCurrentListEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioFoldersFragment;->V:Lcom/transsion/audio/adapter/AudioBucketAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/audio/adapter/AudioBucketAdapter;->s()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioFoldersFragment;->V:Lcom/transsion/audio/adapter/AudioBucketAdapter;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/audio/adapter/AudioBucketAdapter;->B(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    goto :goto_0

    :cond_0
    sget p0, Lzdc;->b:I

    if-ne v0, p0, :cond_1

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->isCurrentListEmpty()Z

    :cond_1
    :goto_0
    return-void
.end method

.method public U1()V
    .locals 2

    iget v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/audio/fragments/AudioFoldersFragment;->g2(Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/utils/CustomLinearLayoutManager;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/utils/CustomLinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v1, v0}, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :goto_0
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSimpleOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioFoldersFragment;->V:Lcom/transsion/audio/adapter/AudioBucketAdapter;

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;->setType(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final synthetic Y1(Ljava/util/List;)V
    .locals 3

    new-instance v0, Lcom/transsion/audio/MediaBucketDiffCallBack;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-direct {v0, v1, p1}, Lcom/transsion/audio/MediaBucketDiffCallBack;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-static {v0}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioFoldersFragment;->V:Lcom/transsion/audio/adapter/AudioBucketAdapter;

    invoke-virtual {v1, v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewDiffData(Landroidx/recyclerview/widget/DiffUtil$DiffResult;Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioFoldersFragment;->V:Lcom/transsion/audio/adapter/AudioBucketAdapter;

    invoke-virtual {v0}, Lcom/transsion/audio/adapter/AudioBucketAdapter;->k()V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioFoldersFragment;->R1()V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/MediaBucket;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/MediaBucket;->clone()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    new-instance v0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "main_floder_count"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const-string v1, "num"

    invoke-virtual {v0, v1, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->A1()V

    iget p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioFoldersFragment;->e2()V

    goto :goto_1

    :cond_1
    const/16 v0, 0x19

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioFoldersFragment;->d2()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final synthetic a2(Lcom/transsion/audio/fragments/AudioFoldersFragment;)Ljava/lang/Boolean;
    .locals 6

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    new-instance v0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "album_amount"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/transsion/audio/data/AudioBucket;

    invoke-direct {v2}, Lcom/transsion/audio/data/AudioBucket;-><init>()V

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/beans/media/MediaBucket;

    iget v5, v4, Lcom/transsion/dbdata/beans/media/MediaBucket;->count:I

    invoke-virtual {v2, v5}, Lcom/transsion/audio/data/AudioBucket;->setCnt(I)V

    iget-object v4, v4, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/transsion/audio/data/AudioBucket;->setAlbum_name(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p0, "single"

    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, p0, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Landroid/os/Bundle;)Lcom/transsion/athena/data/TrackData;

    const-string p0, "vd_albumlist_show_p"

    const-wide/16 v1, 0x246c

    invoke-static {v0, p1, p0, v1, v2}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final synthetic b2(Lcom/transsion/audio/fragments/AudioFoldersFragment;)Ljava/lang/Boolean;
    .locals 6

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    new-instance v0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "folder_amount"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/transsion/audio/data/AudioBucket;

    invoke-direct {v2}, Lcom/transsion/audio/data/AudioBucket;-><init>()V

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/beans/media/MediaBucket;

    iget v5, v4, Lcom/transsion/dbdata/beans/media/MediaBucket;->count:I

    invoke-virtual {v2, v5}, Lcom/transsion/audio/data/AudioBucket;->setCnt(I)V

    iget-object v4, v4, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/transsion/audio/data/AudioBucket;->setNplaylist_name(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p0, "single"

    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, p0, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Landroid/os/Bundle;)Lcom/transsion/athena/data/TrackData;

    const-string p0, "vd_audio_folder_show_p"

    const-wide/16 v1, 0x246c

    invoke-static {v0, p1, p0, v1, v2}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public d2()V
    .locals 2

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->baseActivity()Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lkq;

    invoke-direct {v1, p0}, Lkq;-><init>(Lcom/transsion/audio/fragments/AudioFoldersFragment;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

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
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/transsion/audio/fragments/AudioBaseFragment;->didReceivedNotification(I[Ljava/lang/Object;)V

    const/16 p2, 0x42e

    if-ne p1, p2, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioFoldersFragment;->Y:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const/16 p2, 0x455

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioFoldersFragment;->refresh()V

    :cond_1
    :goto_0
    return-void
.end method

.method public e2()V
    .locals 2

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->baseActivity()Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Leq;

    invoke-direct {v1, p0}, Leq;-><init>(Lcom/transsion/audio/fragments/AudioFoldersFragment;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

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

.method public editMode(Z)V
    .locals 0

    return-void
.end method

.method public final g2(Z)V
    .locals 4

    iget v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {v0}, Lb39;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    const/high16 v1, 0x41880000    # 17.0f

    invoke-static {p1, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p1

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v1, p1, v2, p1, v3}, Landroid/view/View;->setPadding(IIII)V

    new-instance p1, Lcom/transsion/audio/fragments/AudioFoldersFragment$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, p0, v1, v0}, Lcom/transsion/audio/fragments/AudioFoldersFragment$a;-><init>(Lcom/transsion/audio/fragments/AudioFoldersFragment;Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioFoldersFragment;->W:Lcom/transsion/utils/CustomGridLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioFoldersFragment;->W:Lcom/transsion/utils/CustomGridLayoutManager;

    invoke-virtual {p1, p0}, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioFoldersFragment;->W:Lcom/transsion/utils/CustomGridLayoutManager;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public getActivityMenuSwitchFlag()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getDefaultListFlag()I
    .locals 0

    const/16 p0, 0x1b

    return p0
.end method

.method public initEvents()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->initEvents()V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x42e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v0, 0x455

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public initTitleBar(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->initTitleBar(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mTitleBarLayout:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mTitleTv:Landroid/widget/TextView;

    sget p1, Lcom/transsion/audio/R$string;->artists:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public loadData(ZZ)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->loadData(ZZ)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "FoldersFragment"

    const-string p2, "loadData"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p1

    iget-boolean p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz p2, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x320

    :goto_0
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, p2}, Lmc7;->i(JLjava/util/concurrent/TimeUnit;)Lmc7;

    move-result-object p1

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxFragment;->bindToLifecycle()Lyk5;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p1

    new-instance p2, Lfq;

    invoke-direct {p2}, Lfq;-><init>()V

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

    new-instance p2, Lgq;

    invoke-direct {p2, p0}, Lgq;-><init>(Lcom/transsion/audio/fragments/AudioFoldersFragment;)V

    new-instance p0, Lhq;

    invoke-direct {p0}, Lhq;-><init>()V

    invoke-virtual {p1, p2, p0}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void
.end method

.method public markPointScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->markPointScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mAttach:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz v0, :cond_2

    iget p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v0, 0x19

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1b

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "vd_audio_folder_show"

    invoke-static {p1, p0}, Lr06;->c(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "vd_albumlist_show"

    invoke-static {p1, p0}, Lr06;->c(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public markPointVisiable(Z)V
    .locals 3

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mAttach:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioFoldersFragment;->e2()V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    const-string p1, "vd_audio_folder_show"

    const-wide v0, 0xd91af2733bL

    const/4 v2, 0x0

    invoke-static {p0, v2, p1, v0, v1}, Lr06;->e(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/16 p1, 0x1b

    iput p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "list_flag"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->J:Z

    new-instance v1, Lcom/transsion/audio/adapter/AudioBucketAdapter;

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-direct {v1, v2, v3}, Lcom/transsion/audio/adapter/AudioBucketAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/transsion/audio/fragments/AudioFoldersFragment;->V:Lcom/transsion/audio/adapter/AudioBucketAdapter;

    iget v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    if-eq v1, p1, :cond_2

    const/16 p1, 0x19

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcom/transsion/audio/fragments/AudioFoldersFragment;->X:Z

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/audio/player/MusicPlayManager;->e1(Lcom/transsion/audio/player/MusicPlayManager$c;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->o:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioFoldersFragment;->V:Lcom/transsion/audio/adapter/AudioBucketAdapter;

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/audio/player/MusicPlayManager;->E1(Lcom/transsion/audio/player/MusicPlayManager$c;)V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioFoldersFragment;->Y:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onFragmentScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->onFragmentScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioFoldersFragment;->g2(Z)V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->onHiddenChanged(Z)V

    iget v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_0

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-nez p1, :cond_0

    const-string p0, "vd_albumlist_show"

    const-wide/16 v0, 0x246c

    const/4 p1, 0x0

    invoke-static {p1, p0, v0, v1}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public onLayoutId()I
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audio/fragments/AudioFoldersFragment;->X:Z

    if-eqz p0, :cond_0

    sget p0, Lcom/transsion/audio/R$layout;->audio_folders_fragment_pull_damping:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/audio/R$layout;->audio_folders_fragment:I

    :goto_0
    return p0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->m:Z

    return-void
.end method

.method public onPlayItemChanged(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 2

    iget v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioFoldersFragment;->V:Lcom/transsion/audio/adapter/AudioBucketAdapter;

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    invoke-virtual {v0, p1, p0}, Lcom/transsion/audio/adapter/AudioBucketAdapter;->C(Lcom/transsion/dbdata/beans/media/AudioItem;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioFoldersFragment;->V:Lcom/transsion/audio/adapter/AudioBucketAdapter;

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsHide:Z

    invoke-virtual {v0, p1, p0}, Lcom/transsion/audio/adapter/AudioBucketAdapter;->C(Lcom/transsion/dbdata/beans/media/AudioItem;Z)V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->onResume()V

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

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/transsion/audio/fragments/AudioBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget v0, Lcom/transsion/audio/R$id;->rv_main_fragment:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    sget v0, Lcom/transsion/audio/R$id;->rv_fast_scroller:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->I:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioFoldersFragment;->U1()V

    invoke-direct {p0, p1}, Lcom/transsion/audio/fragments/AudioFoldersFragment;->T1(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/transsion/audio/fragments/AudioFoldersFragment;->S1()V

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioFoldersFragment;->initTitleBar(Landroid/view/View;)V

    iget v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_0

    const-string v0, "vd_albumlist_show"

    const-wide/16 v1, 0x246c

    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/transsion/audio/fragments/AudioBaseFragment;->onViewCreatedEnd(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public refresh()V
    .locals 2

    const-string v0, "FoldersFragment"

    const-string v1, "refresh"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->loadData(Z)V

    return-void
.end method

.method public scrollToTop()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->scrollToTop()V

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public t(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->loadData(Z)V

    :cond_0
    return-void
.end method
