.class public Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;
.super Lcom/transsion/playercommon/activities/BasePermissionActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity$a;,
        Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity$b;
    }
.end annotation


# static fields
.field protected static final HANDLE_WHAT_AUDIO_BUCKET:I = 0x2

.field protected static final HANDLE_WHAT_VIDEO_BUCKET:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BaseShowAudioVideoListActivity"


# instance fields
.field externalUri:Landroid/net/Uri;

.field protected final mAudioPlayListBucket:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/dbdata/database/PlayList;",
            ">;"
        }
    .end annotation
.end field

.field protected mAudioPlayListViewModel:Lcom/transsion/playercommon/videomodel/PlayListModel;

.field private mContentChanged:Z

.field protected final mUpdateDataHandler:Landroid/os/Handler;

.field private mUriFileObserver:Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity$b;

.field private mUriObserve:Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity$a;

.field protected final mVideoPlayListBucket:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/dbdata/database/VideoPlayList;",
            ">;"
        }
    .end annotation
.end field

.field protected mVideoPlayListViewModel:Lcom/transsion/playercommon/videomodel/VideoPlayListModel;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->mVideoPlayListBucket:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->mAudioPlayListBucket:Ljava/util/ArrayList;

    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->externalUri:Landroid/net/Uri;

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lic0;

    invoke-direct {v1, p0}, Lic0;-><init>(Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->mUpdateDataHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic B0(Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->V0(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static synthetic C0(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->U0(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic D0(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->R0(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic E0(Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->N0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic F0(Lrc7;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->P0(Lrc7;)V

    return-void
.end method

.method public static synthetic G0(Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->T0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic H0(Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->O0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic I0(Lrc7;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->S0(Lrc7;)V

    return-void
.end method

.method public static synthetic J0(Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->M0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic K0(Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->Q0(Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic L0(Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->mContentChanged:Z

    return-void
.end method

.method public static synthetic P0(Lrc7;)V
    .locals 1

    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    invoke-virtual {v0}, Lao;->Z()Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Lk93;->onNext(Ljava/lang/Object;)V

    invoke-interface {p0}, Lk93;->onComplete()V

    return-void
.end method

.method public static synthetic R0(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadPlayListList "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BaseShowAudioVideoListActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic S0(Lrc7;)V
    .locals 2

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltpb;->u(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Lk93;->onNext(Ljava/lang/Object;)V

    invoke-interface {p0}, Lk93;->onComplete()V

    return-void
.end method

.method public static synthetic U0(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadPlayListList "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BaseShowAudioVideoListActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic V0(Landroid/os/Message;)Z
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->W0()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->X0()V

    :goto_0
    return v0
.end method


# virtual methods
.method public final synthetic M0(Ljava/util/List;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAudioPlayListViewModel-->getAudioPlayListLiveData=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseShowAudioVideoListActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->postDelayLoadData(I)V

    return-void
.end method

.method public final synthetic N0(Ljava/util/List;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAudioPlayListViewModel-->getAllPlayListWithOutRecentFavoriteLiveData=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseShowAudioVideoListActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->postDelayLoadData(I)V

    return-void
.end method

.method public final synthetic O0(Ljava/util/List;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->postDelayLoadData(I)V

    return-void
.end method

.method public final synthetic Q0(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->mAudioPlayListBucket:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->mAudioPlayListBucket:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->mAudioPlayListViewModel:Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {p0}, Lcom/transsion/playercommon/videomodel/PlayListModel;->d()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic T0(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->mVideoPlayListBucket:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->mVideoPlayListBucket:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIsMediaItemChange-->loadVideoBucketList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n data==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseShowAudioVideoListActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->mVideoPlayListViewModel:Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

    invoke-virtual {p0}, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;->h()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final W0()V
    .locals 2

    new-instance v0, Ljc0;

    invoke-direct {v0}, Ljc0;-><init>()V

    invoke-static {v0}, Lmc7;->h(Led7;)Lmc7;

    move-result-object v0

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lkc0;

    invoke-direct {v1, p0}, Lkc0;-><init>(Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;)V

    new-instance p0, Llc0;

    invoke-direct {p0}, Llc0;-><init>()V

    invoke-virtual {v0, v1, p0}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void
.end method

.method public final X0()V
    .locals 2

    new-instance v0, Lmc0;

    invoke-direct {v0}, Lmc0;-><init>()V

    invoke-static {v0}, Lmc7;->h(Led7;)Lmc7;

    move-result-object v0

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lnc0;

    invoke-direct {v1, p0}, Lnc0;-><init>(Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;)V

    new-instance p0, Loc0;

    invoke-direct {p0}, Loc0;-><init>()V

    invoke-virtual {v0, v1, p0}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void
.end method

.method public initPlayListViewModel()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->mAudioPlayListViewModel:Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {v0}, Lcom/transsion/playercommon/videomodel/PlayListModel;->m()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lfc0;

    invoke-direct {v1, p0}, Lfc0;-><init>(Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->mAudioPlayListViewModel:Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {v0}, Lcom/transsion/playercommon/videomodel/PlayListModel;->i()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lgc0;

    invoke-direct {v1, p0}, Lgc0;-><init>(Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->mVideoPlayListViewModel:Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

    invoke-virtual {v0}, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;->g()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lhc0;

    invoke-direct {v1, p0}, Lhc0;-><init>(Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity$a;

    invoke-direct {p1, p0}, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity$a;-><init>(Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;)V

    iput-object p1, p0, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->mUriObserve:Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity$a;

    new-instance p1, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity$b;

    invoke-direct {p1, p0}, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity$b;-><init>(Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;)V

    iput-object p1, p0, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->mUriFileObserver:Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity$b;

    const-class p1, Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->getViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/videomodel/PlayListModel;

    iput-object p1, p0, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->mAudioPlayListViewModel:Lcom/transsion/playercommon/videomodel/PlayListModel;

    const-class p1, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->getViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

    iput-object p1, p0, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->mVideoPlayListViewModel:Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->initPlayListViewModel()V

    iget-object p1, p0, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->mUriObserve:Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity$a;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->mUriObserve:Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity$a;

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->mUriObserve:Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity$a;

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->mUriFileObserver:Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity$b;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->externalUri:Landroid/net/Uri;

    iget-object p0, p0, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->mUriFileObserver:Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity$b;

    invoke-virtual {p1, v1, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->onDestroy()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->mUriObserve:Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity$a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lchc;->c()V

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->mUriObserve:Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity$a;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v0, p0, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->mUriObserve:Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    iget-object v1, p0, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->mUriFileObserver:Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity$b;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lchc;->c()V

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->mUriFileObserver:Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity$b;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v0, p0, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->mUriFileObserver:Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity$b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iget-object p0, p0, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->mUpdateDataHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->onResume()V

    iget-boolean v0, p0, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->mContentChanged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->mContentChanged:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->postDelayLoadData(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->postDelayLoadData(I)V

    :cond_0
    return-void
.end method

.method public postDelayLoadData(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->mUpdateDataHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/transsion/playercommon/activities/BaseShowAudioVideoListActivity;->mUpdateDataHandler:Landroid/os/Handler;

    invoke-static {}, Loa1;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x7d0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x64

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
