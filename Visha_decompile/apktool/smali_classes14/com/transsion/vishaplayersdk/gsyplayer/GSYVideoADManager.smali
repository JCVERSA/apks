.class public Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoADManager;
.super Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;
.source "SourceFile"


# static fields
.field public static final FULLSCREEN_ID:I

.field public static final SMALL_ID:I

.field public static TAG:Ljava/lang/String;

.field private static videoManager:Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoADManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/transsion/vishaplayersdk/R$id;->ad_small_id:I

    sput v0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoADManager;->SMALL_ID:I

    sget v0, Lcom/transsion/vishaplayersdk/R$id;->ad_full_id:I

    sput v0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoADManager;->FULLSCREEN_ID:I

    const-string v0, "GSYVideoADManager"

    sput-object v0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoADManager;->TAG:Ljava/lang/String;

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

    sget v1, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoADManager;->FULLSCREEN_ID:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/CommonUtil;->hideNavKey(Landroid/content/Context;)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoADManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoADManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->lastListener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoADManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoADManager;

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

.method public static declared-synchronized instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoADManager;
    .locals 2

    const-class v0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoADManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoADManager;->videoManager:Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoADManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoADManager;

    invoke-direct {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoADManager;-><init>()V

    sput-object v1, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoADManager;->videoManager:Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoADManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoADManager;->videoManager:Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoADManager;
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

    sget v0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoADManager;->FULLSCREEN_ID:I

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

.method public static onPause()V
    .locals 1

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoADManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoADManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoADManager;

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
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoADManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoADManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoADManager;

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
    .locals 1

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoADManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoADManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;->onCompletion()V

    :cond_0
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoADManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->releaseMediaPlayer()V

    return-void
.end method


# virtual methods
.method public OnVideoFirstFrameShow(Lcom/transsion/vishaplayersdk/gsyplayer/base/ijk/IMediaPlayer;)V
    .locals 0

    return-void
.end method

.method public backToFront()V
    .locals 0

    return-void
.end method

.method public changeAreaLanguage(IZ)V
    .locals 0

    return-void
.end method

.method public getCurrentSpeed()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getVideoDefinitions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public gotoBackground()V
    .locals 0

    return-void
.end method

.method public noticePlayViewMode(I)V
    .locals 0

    return-void
.end method

.method public onActivityStart(Z)V
    .locals 0

    return-void
.end method

.method public onActivityStop()V
    .locals 0

    return-void
.end method

.method public setAspectRatio(I)V
    .locals 0

    return-void
.end method

.method public setVideoDefinitions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoDefinition;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public switchResolution(I)V
    .locals 0

    return-void
.end method

.method public switchSubtitleSource(I)V
    .locals 0

    return-void
.end method
