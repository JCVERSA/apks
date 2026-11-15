.class public final Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment;
.super Lcom/transsion/tools/covert/fragments/VideosSelectFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000 (2\u00020\u0001:\u0001)B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\'\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u000cj\u0008\u0012\u0004\u0012\u00020\u0004`\r2\u0006\u0010\u000b\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0014\u00a2\u0006\u0004\u0008\u0014\u0010\u0003J\u0017\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0015H\u0014\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001f\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0015\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0017\u0010\u001d\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u0006H\u0017\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ7\u0010#\u001a\u00020\u00132\u000e\u0010 \u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u001f2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010!\u001a\u00020\u00102\u0006\u0010\"\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008#\u0010$J\u000f\u0010%\u001a\u00020\u0013H\u0014\u00a2\u0006\u0004\u0008%\u0010\u0003J\u0017\u0010\'\u001a\u00020\u00132\u0006\u0010&\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\'\u0010\u001e\u00a8\u0006*"
    }
    d2 = {
        "Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment;",
        "Lcom/transsion/tools/covert/fragments/VideosSelectFragment;",
        "<init>",
        "()V",
        "Lcom/transsion/dbdata/beans/media/MediaItem;",
        "mediaItem",
        "",
        "playAll",
        "Lcom/transsion/dbdata/beans/media/PlayVideoData;",
        "c2",
        "(Lcom/transsion/dbdata/beans/media/MediaItem;Z)Lcom/transsion/dbdata/beans/media/PlayVideoData;",
        "preload",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "T1",
        "(Z)Ljava/util/ArrayList;",
        "",
        "onLayoutId",
        "()I",
        "Lzfb;",
        "K1",
        "Landroid/view/View;",
        "view",
        "initTitleBar",
        "(Landroid/view/View;)V",
        "mediaChange",
        "loadData",
        "(ZZ)V",
        "isVideo",
        "t",
        "(Z)V",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "adapter",
        "position",
        "child",
        "u1",
        "(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V",
        "x1",
        "isVisibleToUser",
        "setUserVisibleHint",
        "e0",
        "a",
        "tools_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final e0:Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment;->e0:Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;-><init>()V

    return-void
.end method

.method private final T1(Z)Ljava/util/ArrayList;
    .locals 3

    iget p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    sget-object p0, Ltpb;->b:Ltpb$a;

    invoke-virtual {p0}, Ltpb$a;->a()Ltpb;

    move-result-object v0

    const v1, 0x7fffffff

    if-eqz p1, :cond_0

    const/16 p1, 0x1e

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-virtual {v0, p1}, Ltpb;->U(I)Ljava/util/List;

    move-result-object p1

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    const-string v2, "have_video"

    invoke-virtual {v0, v2}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object v0

    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ltpb$a;->a()Ltpb;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v0}, Ltpb;->O(ZIZ)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    check-cast p1, Ljava/lang/Iterable;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p1, p0}, Li81;->F0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {p0}, Lcom/transsion/dbdata/utils/SortUtil;->z(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    return-object v0

    :cond_4
    const/16 p1, 0x63

    if-ne p0, p1, :cond_5

    sget-object p0, Ltpb;->b:Ltpb$a;

    invoke-virtual {p0}, Ltpb$a;->a()Ltpb;

    move-result-object p0

    sget-object p1, Lyx2;->l:Ljava/lang/String;

    const-string v0, "FILE_TRANS_FILE_RELATIVE_PATH"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ltpb;->f0(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    check-cast p0, Ljava/util/Collection;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    :cond_5
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static synthetic V1(Le74;Ljava/lang/Object;)Lld7;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment;->g2(Le74;Ljava/lang/Object;)Lld7;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic W1(Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment;ZLzfb;)Ljava/util/ArrayList;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment;->h2(Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment;ZLzfb;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic X1(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment;->k2(Le74;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic Y1(Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment;Ljava/util/ArrayList;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment;->j2(Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment;Ljava/util/ArrayList;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Z1(Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment;Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment;)Lld7;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment;->f2(Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment;Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment;)Lld7;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a2(Le74;Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment;->i2(Le74;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b2(Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment;->e2(Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method private final c2(Lcom/transsion/dbdata/beans/media/MediaItem;Z)Lcom/transsion/dbdata/beans/media/PlayVideoData;
    .locals 2

    invoke-static {p1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->convertToPlayVideoData(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->setShowPicInPic(Z)V

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->setNeedRecordVideoStates(Z)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->B:Ljava/lang/String;

    iput-object v0, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->folderName:Ljava/lang/String;

    iget v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    iput v0, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->listFlag:I

    iput-boolean p2, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->fromPlayAll:Z

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playPosition:J

    :cond_0
    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->a0:Lcom/transsion/dbdata/beans/media/MediaBucket;

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    iput-wide v0, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->bucketId:J

    :cond_1
    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    return-object p1
.end method

.method public static synthetic d2(Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment;Lcom/transsion/dbdata/beans/media/MediaItem;ZILjava/lang/Object;)Lcom/transsion/dbdata/beans/media/PlayVideoData;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment;->c2(Lcom/transsion/dbdata/beans/media/MediaItem;Z)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p0

    return-object p0
.end method

.method public static final e2(Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    const-string p2, "adapter"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->ingoreClickEvent()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFirstClickTime:J

    iget-boolean p2, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mIsDialogShowing:Z

    if-eqz p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p3, p2, :cond_7

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.transsion.dbdata.beans.media.MediaItem"

    invoke-static {p1, p2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-boolean p2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isTimeItem:Z

    if-eqz p2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1, p3}, Lcom/transsion/dbdata/beans/media/MediaItem;->setSelectedPos(I)V

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->c0()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p2

    invoke-static {p1, p2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/magicvideo/player/VideoPlayManager;->G:Z

    if-eqz p2, :cond_3

    move p2, p3

    goto :goto_0

    :cond_3
    move p2, v0

    :goto_0
    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->b0()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/transsion/dbdata/beans/media/PlayListData;->setPlayMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/PlayListData;

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p1

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p2, p0, p3, p3, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->m0(Landroid/content/Context;ZZZ)Landroid/content/Intent;

    move-result-object p0

    const-string p2, "launch_intent_video_player_activity"

    invoke-virtual {p1, p2, p0}, Lcom/transsion/eventbus/LiveEventBus;->c(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/magicvideo/player/VideoPlayManager;->G:Z

    if-eqz p2, :cond_5

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->y1()V

    :cond_5
    const/4 p2, 0x2

    const/4 p3, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment;->d2(Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment;Lcom/transsion/dbdata/beans/media/MediaItem;ZILjava/lang/Object;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p1

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p2

    iput-boolean v0, p2, Lcom/transsion/magicvideo/player/VideoPlayManager;->M:Z

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "startOpenVideo "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "VideosSelectFragment"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->x0()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->isAlertWindowPermissionGranted()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->o2(Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    goto :goto_1

    :cond_6
    invoke-static {p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivityInner;->G2(Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public static final f2(Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment;Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment;)Lld7;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/16 v0, 0x63

    if-ne p1, v0, :cond_0

    sget-object p1, Lts3;->a:Lts3;

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string v0, "mContext"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lts3;->e(Landroid/content/Context;)Lmc7;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lzfb;->a:Lzfb;

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p0

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public static final g2(Le74;Ljava/lang/Object;)Lld7;
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lld7;

    return-object p0
.end method

.method public static final h2(Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment;ZLzfb;)Ljava/util/ArrayList;
    .locals 1

    const-string v0, "it"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment;->T1(Z)Ljava/util/ArrayList;

    move-result-object p1

    iget p2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/16 v0, 0x63

    if-ne p2, v0, :cond_0

    sget-object p2, Lts3;->a:Lts3;

    invoke-virtual {p2, p1}, Lts3;->d(Ljava/lang/Iterable;)V

    :cond_0
    invoke-static {p1}, Lye6;->b(Ljava/util/List;)V

    invoke-static {p1}, Lls1;->a(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->F0(Ljava/util/ArrayList;)V

    return-object p1
.end method

.method public static final i2(Le74;Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final j2(Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment;Ljava/util/ArrayList;)Lzfb;
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mDataUpdated:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of v0, p1, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;

    invoke-virtual {p1}, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->j0()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->U1()V

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mbFragmentShowCompleted:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->U1()V

    :cond_2
    :goto_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static final k2(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public K1()V
    .locals 2

    iget v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/16 v1, 0x63

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    if-eqz v0, :cond_1

    new-instance v1, Lnu3;

    invoke-direct {v1, p0}, Lnu3;-><init>(Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->K1()V

    :cond_1
    :goto_0
    return-void
.end method

.method public initTitleBar(Landroid/view/View;)V
    .locals 0

    const-string p0, "view"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget p0, Lcom/transsion/tools/R$id;->title_bar:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type android.view.ViewStub"

    invoke-static {p0, p1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/ViewStub;

    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public loadData(ZZ)V
    .locals 3

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p2

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x320

    :goto_0
    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, v2}, Lmc7;->i(JLjava/util/concurrent/TimeUnit;)Lmc7;

    move-result-object p2

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxFragment;->bindToLifecycle()Lyk5;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p2

    new-instance v0, Lou3;

    invoke-direct {v0, p0}, Lou3;-><init>(Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment;)V

    new-instance v1, Lpu3;

    invoke-direct {v1, v0}, Lpu3;-><init>(Le74;)V

    invoke-virtual {p2, v1}, Lmc7;->w(Lt74;)Lmc7;

    move-result-object p2

    new-instance v0, Lqu3;

    invoke-direct {v0, p0, p1}, Lqu3;-><init>(Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment;Z)V

    new-instance p1, Lru3;

    invoke-direct {p1, v0}, Lru3;-><init>(Le74;)V

    invoke-virtual {p2, p1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance p2, Lsu3;

    invoke-direct {p2, p0}, Lsu3;-><init>(Lcom/transsion/tools/filetrans/fragments/FileTransVideoFragment;)V

    new-instance p0, Ltu3;

    invoke-direct {p0, p2}, Ltu3;-><init>(Le74;)V

    invoke-virtual {p1, p0}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public onLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/tools/R$layout;->medias_select_fragment:I

    return p0
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    if-eqz p0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public t(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->t(Z)V

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    const-string v1, "null cannot be cast to non-null type java.util.ArrayList<com.transsion.dbdata.beans.media.MediaItem>"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Lcom/transsion/dbdata/utils/SortUtil;->t(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->setNewData(Ljava/util/List;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TEST] onSortByChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mAdapter: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VideosSelectFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public u1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V
    .locals 1

    const-string p0, "adapter"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "view"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

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

    const-string v0, "null cannot be cast to non-null type com.transsion.dbdata.beans.media.MediaItem"

    invoke-static {p0, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/transsion/dbdata/beans/media/MediaItem;

    sget v0, Lcom/transsion/tools/R$id;->iv_bucket_fragment_checkBox:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    if-ne p4, p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    check-cast p1, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {p1, p0, p2, p3}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->T(Lcom/transsion/dbdata/beans/media/MediaItem;ZI)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    const/16 p2, 0x494

    invoke-virtual {p1, p2, p0}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method

.method public x1()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->x1()V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->q:Landroid/view/View;

    if-eqz v0, :cond_3

    if-eqz v0, :cond_0

    sget v1, Lcom/transsion/tools/R$id;->add_video_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->q:Landroid/view/View;

    if-eqz v0, :cond_1

    sget v1, Lcom/transsion/tools/R$id;->lottie_no_videos_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    sget v1, Lcom/transsion/common/R$drawable;->ic_video_empty_illustration:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->q:Landroid/view/View;

    if-eqz v0, :cond_3

    sget v1, Lcom/transsion/tools/R$id;->text_no_videos:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/16 v2, 0x63

    if-ne v1, v2, :cond_2

    sget v1, Lcom/transsion/tools/R$string;->no_have_history:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    sget v1, Lcom/transsion/tools/R$string;->no_video:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
