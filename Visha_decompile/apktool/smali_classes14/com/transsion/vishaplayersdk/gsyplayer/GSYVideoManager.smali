.class public Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;
.super Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;
.source "SourceFile"


# static fields
.field public static final FULLSCREEN_ID:I

.field public static final SMALL_ID:I

.field public static TAG:Ljava/lang/String;

.field private static videoManager:Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/transsion/vishaplayersdk/R$id;->small_id:I

    sput v0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->SMALL_ID:I

    sget v0, Lcom/transsion/vishaplayersdk/R$id;->full_id:I

    sput v0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->FULLSCREEN_ID:I

    const-string v0, "GSYVideoManager"

    sput-object v0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->init()V

    return-void
.end method

.method public static backFromWindowFull(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/CommonUtil;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->FULLSCREEN_ID:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/CommonUtil;->hideNavKey(Landroid/content/Context;)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->lastListener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->lastListener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;->onBackFullscreen()V

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static declared-synchronized instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;
    .locals 2

    const-class v0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->videoManager:Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    invoke-direct {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;-><init>()V

    sput-object v1, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->videoManager:Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->videoManager:Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static isFullState(Landroid/app/Activity;)Z
    .locals 1

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/CommonUtil;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    sget v0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->FULLSCREEN_ID:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private static synthetic lambda$onLossAudio$0()V
    .locals 1

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;->onVideoPause()V

    :cond_0
    return-void
.end method

.method public static onPause()V
    .locals 1

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;->onVideoPause()V

    :cond_0
    return-void
.end method

.method public static onResume()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;->onVideoResume()V

    :cond_0
    return-void
.end method

.method public static onResume(Z)V
    .locals 1

    .line 3
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;->onVideoResume(Z)V

    :cond_0
    return-void
.end method

.method public static releaseAllVideos()V
    .locals 2

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;->onCompletion()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->TAG:Ljava/lang/String;

    const-string v1, "releaseMediaPlayer"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->releaseMediaPlayer()V

    :goto_0
    return-void
.end method

.method public static synthetic u()V
    .locals 0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->lambda$onLossAudio$0()V

    return-void
.end method


# virtual methods
.method public OnVideoFirstFrameShow(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;)V
    .locals 0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;->onVideoFirstFrameShow()V

    :cond_0
    return-void
.end method

.method public onLossAudio()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->onLossAudio()V

    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lgc4;

    invoke-direct {v0}, Lgc4;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setVideoDefinitions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mVideoDefinitions:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mVideoDefinitions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method
