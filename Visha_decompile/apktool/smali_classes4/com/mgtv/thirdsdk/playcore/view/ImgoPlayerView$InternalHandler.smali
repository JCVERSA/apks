.class public Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$InternalHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalHandler"
.end annotation


# instance fields
.field wrObj:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$InternalHandler;->wrObj:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$InternalHandler;->wrObj:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$InternalHandler;->wrObj:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xe

    if-eq p1, v1, :cond_5

    const/16 p0, 0xf

    if-eq p1, p0, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean p1, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mBuffering:Z

    if-eqz p1, :cond_6

    iget-object p1, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mBufferListener:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnBufferListener;

    if-eqz p1, :cond_2

    iget-object v1, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/hunantv/media/widget/IVideoView;->getDLSpeedB()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1, v1}, Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnBufferListener;->onBuffering(I)V

    :cond_2
    iget-object p1, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mBufferListener:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnBufferListener;

    if-eqz p1, :cond_4

    iget-object v1, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/hunantv/media/widget/IVideoView;->getBufferingPercentage()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const-string v1, "0"

    :goto_1
    invoke-interface {p1, v1}, Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnBufferListener;->onBufferUpdate(Ljava/lang/String;)V

    :cond_4
    iget-object p1, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->handler:Landroid/os/Handler;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    :cond_5
    iget-boolean p1, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mBuffering:Z

    if-eqz p1, :cond_6

    iget-object p1, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->context:Landroid/content/Context;

    const/high16 v1, 0x10a0000

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    new-instance v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$InternalHandler$1;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$InternalHandler$1;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$InternalHandler;)V

    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p0, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mBufferingView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_6
    :goto_2
    return-void
.end method
