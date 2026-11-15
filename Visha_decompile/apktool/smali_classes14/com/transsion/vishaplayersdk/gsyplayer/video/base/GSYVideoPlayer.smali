.class public abstract Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;
.super Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public backFromFull(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->backFromWindowFull(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public getFullId()I
    .locals 0

    sget p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->FULLSCREEN_ID:I

    return p0
.end method

.method public getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;
    .locals 1

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->initContext(Landroid/content/Context;)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object p0

    return-object p0
.end method

.method public getSmallId()I
    .locals 0

    sget p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->SMALL_ID:I

    return p0
.end method

.method public releaseVideos()V
    .locals 0

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->releaseAllVideos()V

    return-void
.end method
