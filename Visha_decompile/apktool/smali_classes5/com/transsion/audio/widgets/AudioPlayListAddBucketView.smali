.class public Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "AudioPlayListAddBucketView"


# instance fields
.field public fromPage:Ljava/lang/String;

.field private final isAddAll:Z

.field private final mAudioItems:[Lcom/transsion/dbdata/beans/media/AudioItem;

.field private final mContext:Landroid/content/Context;

.field private mCreateNewBucketTv:Landroid/widget/LinearLayout;

.field private mPlayBucketRv:Landroidx/recyclerview/widget/RecyclerView;

.field private mPlayListAdapter:Lcom/transsion/audio/adapter/PlayListBucketAdapter;

.field private final mPlayLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayList;",
            ">;"
        }
    .end annotation
.end field

.field private mPromptDialog:Lcom/transsion/widgetslib/dialog/d;


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;Ljava/util/List;Z[Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/PlayList;",
            ">;Z[",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->mPromptDialog:Lcom/transsion/widgetslib/dialog/d;

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->fromPage:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->mAudioItems:[Lcom/transsion/dbdata/beans/media/AudioItem;

    iput-object p2, p0, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->mPlayLists:Ljava/util/List;

    iput-boolean p3, p0, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->isAddAll:Z

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->lambda$addNewPlayList$8(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method private addNewPlayList(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->canAddNewPlayList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;

    invoke-static {v0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->bindToLifecycle()Lyk5;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lut;

    invoke-direct {v1, p1}, Lut;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lvt;

    invoke-direct {v1, p0, p1}, Lvt;-><init>(Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lmc7;->Z(Lzf1;)Lrc2;

    :cond_0
    return-void
.end method

.method private addToPlayList(Lcom/transsion/dbdata/database/PlayList;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->bindToLifecycle()Lyk5;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v1

    new-instance v2, Lqt;

    invoke-direct {v2, p0, p1}, Lqt;-><init>(Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;Lcom/transsion/dbdata/database/PlayList;)V

    invoke-virtual {v1, v2}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object v1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v1

    new-instance v2, Lrt;

    invoke-direct {v2, p0, p1, v0}, Lrt;-><init>(Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;Lcom/transsion/dbdata/database/PlayList;Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;)V

    invoke-virtual {v1, v2}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;)Ljava/lang/Long;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->lambda$addNewPlayList$7(Ljava/lang/String;Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;Lcom/transsion/dbdata/database/PlayList;Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->lambda$addToPlayList$1(Lcom/transsion/dbdata/database/PlayList;Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private canAddNewPlayList(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->mPlayLists:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->mPlayLists:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/database/PlayList;

    iget-object v0, v0, Lcom/transsion/dbdata/database/PlayList;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget p0, Lcom/transsion/audio/R$string;->playlists_has:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic d(Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->lambda$showAddEditDialog$6(Landroid/widget/EditText;Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic e(Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->lambda$showAddEditDialog$5(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic f(Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->lambda$showAddEditDialog$4(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic g(Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;Lcom/transsion/dbdata/database/PlayList;Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->lambda$addToPlayList$3(Lcom/transsion/dbdata/database/PlayList;Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;Ljava/lang/Boolean;)V

    return-void
.end method

.method private getPlaylistDisplayName(Lcom/transsion/dbdata/database/PlayList;)Ljava/lang/String;
    .locals 2

    iget v0, p1, Lcom/transsion/dbdata/database/PlayList;->mCategory:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object p0, p1, Lcom/transsion/dbdata/database/PlayList;->name:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->mContext:Landroid/content/Context;

    sget p1, Lcom/transsion/audio/R$string;->talkback_add_to_favorites:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->mContext:Landroid/content/Context;

    sget p1, Lcom/transsion/audio/R$string;->recent_add:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->lambda$addToPlayList$2(Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;)V

    return-void
.end method

.method public static synthetic i(Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->lambda$init$0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->isAddAll:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/transsion/audio/R$layout;->audio_playlist_bucket_list_all:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/transsion/audio/R$layout;->add_playlist_bucket_list:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :goto_0
    sget v0, Lcom/transsion/audio/R$id;->tv_create_new_list:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->mCreateNewBucketTv:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView$1;

    invoke-direct {v1, p0}, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView$1;-><init>(Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/audio/R$id;->rv_video_play_filelist:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->mPlayBucketRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/transsion/utils/CustomLinearLayoutManager;

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/utils/CustomLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p1, Lcom/transsion/audio/adapter/PlayListBucketAdapter;

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/transsion/audio/adapter/PlayListBucketAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->mPlayListAdapter:Lcom/transsion/audio/adapter/PlayListBucketAdapter;

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->mPlayBucketRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->mPlayBucketRv:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->mPlayLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/database/PlayList;

    iget v2, v1, Lcom/transsion/dbdata/database/PlayList;->mCategory:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->mPlayListAdapter:Lcom/transsion/audio/adapter/PlayListBucketAdapter;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->mPlayListAdapter:Lcom/transsion/audio/adapter/PlayListBucketAdapter;

    new-instance v0, Lst;

    invoke-direct {v0, p0}, Lst;-><init>(Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;)V

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    return-void
.end method

.method public static bridge synthetic j(Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->setButtonEnable(Z)V

    return-void
.end method

.method private static synthetic lambda$addNewPlayList$7(Ljava/lang/String;Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;)Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Laf9;->c:J

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lao;->U()Lao;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lao;->m0(Ljava/lang/String;Z)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$addNewPlayList$8(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new Playlist:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioPlayListAddBucketView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/transsion/dbdata/database/PlayList;

    invoke-direct {v0, p1}, Lcom/transsion/dbdata/database/PlayList;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toIntExact(J)I

    move-result p1

    iput p1, v0, Lcom/transsion/dbdata/database/PlayList;->id:I

    invoke-direct {p0, v0}, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->addToPlayList(Lcom/transsion/dbdata/database/PlayList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$addToPlayList$1(Lcom/transsion/dbdata/database/PlayList;Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;)Ljava/lang/Boolean;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->mAudioItems:[Lcom/transsion/dbdata/beans/media/AudioItem;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_0
    const/16 v9, 0x21

    const/4 v10, 0x1

    if-ge v5, v3, :cond_3

    aget-object v11, v2, v5

    iget-boolean v12, v11, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    if-eqz v12, :cond_0

    move v6, v10

    goto :goto_1

    :cond_0
    move v7, v10

    :goto_1
    if-nez v8, :cond_2

    invoke-static {}, Lao;->U()Lao;

    move-result-object v12

    iget v13, v1, Lcom/transsion/dbdata/database/PlayList;->id:I

    iget v14, v11, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget v15, v1, Lcom/transsion/dbdata/database/PlayList;->listFlag:I

    if-ne v15, v9, :cond_1

    move v9, v10

    goto :goto_2

    :cond_1
    move v9, v4

    :goto_2
    invoke-virtual {v12, v13, v14, v11, v9}, Lao;->a0(IILcom/transsion/dbdata/beans/media/AudioItem;Z)Lcom/transsion/dbdata/database/PlayListMediaItem;

    move-result-object v9

    if-nez v9, :cond_2

    move v8, v10

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    if-eqz v6, :cond_4

    if-nez v7, :cond_4

    const-string v2, "mv"

    goto :goto_3

    :cond_4
    if-eqz v7, :cond_5

    if-nez v6, :cond_5

    const-string v2, "audio"

    goto :goto_3

    :cond_5
    const-string v2, "all"

    :goto_3
    iget-object v3, v0, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->fromPage:Ljava/lang/String;

    invoke-static {v2, v3}, Lp06;->t0(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->mAudioItems:[Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lao;->U()Lao;

    move-result-object v11

    iget v0, v1, Lcom/transsion/dbdata/database/PlayList;->id:I

    int-to-long v13, v0

    iget v0, v1, Lcom/transsion/dbdata/database/PlayList;->listFlag:I

    if-ne v0, v9, :cond_6

    move/from16 v16, v10

    goto :goto_4

    :cond_6
    move/from16 v16, v4

    :goto_4
    const-string v12, ""

    invoke-virtual/range {v11 .. v16}, Lao;->o0(Ljava/lang/String;JLjava/util/ArrayList;Z)Ljava/util/List;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$addToPlayList$2(Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$addToPlayList$3(Lcom/transsion/dbdata/database/PlayList;Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget v0, p1, Lcom/transsion/dbdata/database/PlayList;->listFlag:I

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x41f

    invoke-virtual {v0, v2, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/audio/R$string;->add_to_playlist_toast:I

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->getPlaylistDisplayName(Lcom/transsion/dbdata/database/PlayList;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/transsion/utils/ToastUtils;->v(Landroid/content/Context;Ljava/lang/CharSequence;)V

    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance p1, Ltt;

    invoke-direct {p1, p2}, Ltt;-><init>(Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;)V

    const-wide/16 p2, 0xfa

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    sget p0, Lcom/transsion/audio/R$string;->song_existed:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    invoke-virtual {p2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$init$0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->mPlayListAdapter:Lcom/transsion/audio/adapter/PlayListBucketAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/database/PlayList;

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->addToPlayList(Lcom/transsion/dbdata/database/PlayList;)V

    return-void
.end method

.method private synthetic lambda$showAddEditDialog$4(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->mPromptDialog:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->addNewPlayList(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget p0, Lcom/transsion/audio/R$string;->empty_text:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$showAddEditDialog$5(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->mPromptDialog:Lcom/transsion/widgetslib/dialog/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$showAddEditDialog$6(Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 0

    return-void
.end method

.method private setButtonEnable(Z)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->mPromptDialog:Lcom/transsion/widgetslib/dialog/d;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/dialog/d;->e(I)Landroid/widget/Button;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->mPromptDialog:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->mPromptDialog:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/d;->g(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public showAddEditDialog()V
    .locals 6

    new-instance v0, Lcom/transsion/widgetslib/dialog/InputDialog;

    iget-object v1, p0, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/transsion/audio/R$string;->new_playlist:I

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->A(I)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v0

    sget v1, Lcom/transsion/audio/R$string;->Save:I

    new-instance v2, Lnt;

    invoke-direct {v2, p0}, Lnt;-><init>(Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/InputDialog;->s(ILcom/transsion/widgetslib/dialog/InputDialog$g;)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v0

    sget v1, Lcom/transsion/audio/R$string;->cancel:I

    new-instance v2, Lot;

    invoke-direct {v2, p0}, Lot;-><init>(Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/InputDialog;->x(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->z(Z)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->r(Z)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/audio/R$string;->search_hint:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lpt;

    invoke-direct {v3}, Lpt;-><init>()V

    const-string v4, ""

    const/16 v5, 0x3d

    invoke-virtual {v0, v4, v2, v5, v3}, Lcom/transsion/widgetslib/dialog/InputDialog;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILcom/transsion/widgetslib/dialog/InputDialog$f;)Lcom/transsion/widgetslib/dialog/InputDialog;

    new-instance v2, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView$2;

    invoke-direct {v2, p0}, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView$2;-><init>(Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;)V

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/dialog/InputDialog;->setTextWatcher(Landroid/text/TextWatcher;)V

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->m()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->mPromptDialog:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/dialog/d;->show()V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->w(Z)Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-direct {p0, v1}, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->setButtonEnable(Z)V

    return-void
.end method
