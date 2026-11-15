.class public Lcom/transsion/tools/covert/fragments/VideoPlayListConvertFragment;
.super Lcom/transsion/tools/covert/fragments/VideosSelectFragment;
.source "SourceFile"


# instance fields
.field public e0:Lcom/transsion/dbdata/database/VideoPlayList;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;-><init>()V

    return-void
.end method

.method public static synthetic V1(Lcom/transsion/tools/covert/fragments/VideoPlayListConvertFragment;Lcom/transsion/tools/covert/fragments/VideoPlayListConvertFragment;)Ljava/util/ArrayList;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/covert/fragments/VideoPlayListConvertFragment;->X1(Lcom/transsion/tools/covert/fragments/VideoPlayListConvertFragment;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic W1(Lcom/transsion/tools/covert/fragments/VideoPlayListConvertFragment;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/tools/covert/fragments/VideoPlayListConvertFragment;->Y1(Ljava/util/ArrayList;)V

    return-void
.end method

.method private synthetic Y1(Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->updateUiForDataChanged()V

    return-void
.end method


# virtual methods
.method public P0()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->P0()V

    return-void
.end method

.method public U1()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->U1()V

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/VideoPlayListConvertFragment;->e0:Lcom/transsion/dbdata/database/VideoPlayList;

    iget v0, v0, Lcom/transsion/dbdata/database/VideoPlayList;->playlistFlag:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortIv:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final synthetic X1(Lcom/transsion/tools/covert/fragments/VideoPlayListConvertFragment;)Ljava/util/ArrayList;
    .locals 2

    iget-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->I:Z

    if-eqz p1, :cond_0

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p1

    invoke-virtual {p1}, Ltpb;->S()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/tools/covert/fragments/VideoPlayListConvertFragment;->e0:Lcom/transsion/dbdata/database/VideoPlayList;

    iget p1, p1, Lcom/transsion/dbdata/database/VideoPlayList;->playlistFlag:I

    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p1

    invoke-virtual {p1}, Ltpb;->W()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->a0:Lcom/transsion/dbdata/beans/media/MediaBucket;

    iget-wide v0, v0, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    invoke-virtual {p1, v0, v1}, Ltpb;->E(J)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->F0(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public editMode(Z)V
    .locals 0

    return-void
.end method

.method public getActivityMenuSwitchFlag()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public loadData(ZZ)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "VideoPlayListConvertFragment loadData "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->I:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoPlayListConvertFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p1

    iget-boolean p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x320

    :goto_0
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, p2}, Lmc7;->i(JLjava/util/concurrent/TimeUnit;)Lmc7;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p2}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p1

    new-instance p2, Lhub;

    invoke-direct {p2, p0}, Lhub;-><init>(Lcom/transsion/tools/covert/fragments/VideoPlayListConvertFragment;)V

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

    new-instance p2, Liub;

    invoke-direct {p2, p0}, Liub;-><init>(Lcom/transsion/tools/covert/fragments/VideoPlayListConvertFragment;)V

    invoke-virtual {p1, p2}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->ingoreClickEvent()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFirstClickTime:J

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->onCreate(Landroid/os/Bundle;)V

    const/16 p1, 0x25

    iput p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    new-instance v0, Lcom/transsion/dbdata/database/VideoPlayList;

    invoke-direct {v0}, Lcom/transsion/dbdata/database/VideoPlayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/tools/covert/fragments/VideoPlayListConvertFragment;->e0:Lcom/transsion/dbdata/database/VideoPlayList;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->a0:Lcom/transsion/dbdata/beans/media/MediaBucket;

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setParentName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/VideoPlayListConvertFragment;->e0:Lcom/transsion/dbdata/database/VideoPlayList;

    const-string v1, "bucket_fragment_buicket_playlist_flag"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/transsion/dbdata/database/VideoPlayList;->playlistFlag:I

    :cond_0
    iget-object p1, p0, Lcom/transsion/tools/covert/fragments/VideoPlayListConvertFragment;->e0:Lcom/transsion/dbdata/database/VideoPlayList;

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->B:Ljava/lang/String;

    iput-object v0, p1, Lcom/transsion/dbdata/database/VideoPlayList;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->a0:Lcom/transsion/dbdata/beans/media/MediaBucket;

    iget-wide v0, v0, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    long-to-int v0, v0

    iput v0, p1, Lcom/transsion/dbdata/database/VideoPlayList;->id:I

    iget p1, p1, Lcom/transsion/dbdata/database/VideoPlayList;->playlistFlag:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->I:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of p0, p0, Lcom/transsion/magicvideo/activities/FarvoritesActivity;

    if-nez p0, :cond_2

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string p1, "playListFarvoriteRedSpot"

    invoke-virtual {p0, p1, v1}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    :cond_2
    return-void
.end method

.method public onFragmentAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAnimationEnd :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mDataUpdated:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "VideoPlayListConvertFragment"

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mbFragmentShowCompleted:Z

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mDataUpdated:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->updateShowUI()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mDataUpdated:Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->onResume()V

    iget-boolean p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->I:Z

    if-eqz p0, :cond_0

    const-string p0, "vd_nplaylist_favorite_show"

    invoke-static {p0}, Lp06;->d0(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
