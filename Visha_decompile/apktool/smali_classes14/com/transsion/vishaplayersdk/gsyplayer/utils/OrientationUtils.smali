.class public Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LAND_TYPE_NORMAL:I = 0x1

.field private static final LAND_TYPE_NULL:I = 0x0

.field private static final LAND_TYPE_REVERSE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "visha_playersdk_OrientationUtils"


# instance fields
.field private mActivityWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mClick:Z

.field private mClickLand:Z

.field private mClickPort:Z

.field private mEnable:Z

.field private mIsLand:I

.field private mIsPause:Z

.field private mOrientationEventListener:Landroid/view/OrientationEventListener;

.field public mOrientationLandWhenPip:Z

.field private mRotateWithSystem:Z

.field private mScreenType:I

.field private mVideoPlayer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mScreenType:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mIsLand:I

    iput-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mClick:Z

    iput-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mClickLand:Z

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mEnable:Z

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mRotateWithSystem:Z

    iput-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mIsPause:Z

    iput-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mOrientationLandWhenPip:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mActivityWR:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mVideoPlayer:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->init()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mActivityWR:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mClick:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mClickLand:Z

    return p0
.end method

.method public static bridge synthetic d(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mClickPort:Z

    return p0
.end method

.method public static bridge synthetic e(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;)I
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mIsLand:I

    return p0
.end method

.method public static bridge synthetic f(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mIsPause:Z

    return p0
.end method

.method public static bridge synthetic g(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mRotateWithSystem:Z

    return p0
.end method

.method public static bridge synthetic h(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mVideoPlayer:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mClick:Z

    return-void
.end method

.method private init()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mActivityWR:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mActivityWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;-><init>(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    :try_start_0
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IllegalStateException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "visha_playersdk_OrientationUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static bridge synthetic j(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mClickLand:Z

    return-void
.end method

.method public static bridge synthetic k(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mClickPort:Z

    return-void
.end method

.method public static bridge synthetic l(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mIsLand:I

    return-void
.end method

.method public static bridge synthetic m(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mScreenType:I

    return-void
.end method


# virtual methods
.method public backToProtVideo()I
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SourceLockedOrientationActivity"
        }
    .end annotation

    iget v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mIsLand:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mClick:Z

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mActivityWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mVideoPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getEnlargeImageRes()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iput v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mIsLand:I

    iput-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mClickPort:Z

    const/16 p0, 0x1f4

    return p0

    :cond_1
    return v1
.end method

.method public getIsLand()I
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mIsLand:I

    return p0
.end method

.method public getScreenType()I
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mScreenType:I

    return p0
.end method

.method public isClick()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mClick:Z

    return p0
.end method

.method public isClickLand()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mClickLand:Z

    return p0
.end method

.method public isClickPort()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mClickPort:Z

    return p0
.end method

.method public isEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mEnable:Z

    return p0
.end method

.method public isPause()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mIsPause:Z

    return p0
.end method

.method public isRotateWithSystem()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mRotateWithSystem:Z

    return p0
.end method

.method public releaseListener()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_0
    return-void
.end method

.method public resolveByClick()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SourceLockedOrientationActivity"
        }
    .end annotation

    iget v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mIsLand:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mVideoPlayer:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mVideoPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->isVerticalFullByVideoSize()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mClick:Z

    iget v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mIsLand:I

    const/4 v2, 0x0

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mActivityWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_1

    iput v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mScreenType:I

    goto :goto_0

    :cond_1
    iput v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mScreenType:I

    :goto_0
    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mActivityWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget v3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mScreenType:I

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mVideoPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getShrinkImageRes()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    iput v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mIsLand:I

    iput-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mClickLand:Z

    goto :goto_2

    :cond_3
    iput v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mScreenType:I

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mActivityWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mVideoPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isIfCurrentIsFullscreen()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getShrinkImageRes()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getEnlargeImageRes()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    :goto_1
    iput v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mIsLand:I

    iput-boolean v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mClickPort:Z

    :goto_2
    return-void
.end method

.method public restoreOrientation()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mVideoPlayer:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mVideoPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->isVerticalFullByVideoSize()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mOrientationLandWhenPip:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mActivityWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    iput v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mScreenType:I

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mScreenType:I

    :goto_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mActivityWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mScreenType:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mVideoPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getShrinkImageRes()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    iput-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mOrientationLandWhenPip:Z

    :cond_3
    return-void
.end method

.method public setClick(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mClick:Z

    return-void
.end method

.method public setClickLand(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mClickLand:Z

    return-void
.end method

.method public setClickPort(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mClickPort:Z

    return-void
.end method

.method public setEnable(Z)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->isEnable()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->enable()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mEnable:Z

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->isEnable()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->disable()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mEnable:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IllegalStateException: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "visha_playersdk_OrientationUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public setIsLand(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mIsLand:I

    return-void
.end method

.method public setIsPause(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mIsPause:Z

    return-void
.end method

.method public setRotateWithSystem(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mRotateWithSystem:Z

    return-void
.end method

.method public setScreenType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mScreenType:I

    return-void
.end method

.method public updateLandStatusWhenPip()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mVideoPlayer:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mVideoPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isIfCurrentIsFullscreen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->mOrientationLandWhenPip:Z

    :cond_1
    :goto_0
    return-void
.end method
