.class Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/widget/IVideoView$SurfaceHolderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;


# direct methods
.method public constructor <init>(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$14;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged()V
    .locals 1

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "mSurfaceHolderListener surfaceChanged "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public surfaceCreated()V
    .locals 1

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "mSurfaceHolderListener surfaceCreated "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public surfaceDestroyed()V
    .locals 4

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$14;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-boolean v1, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isPlayOK:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    invoke-interface {v0}, Lcom/hunantv/media/widget/IVideoView;->isCompletion()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$14;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-object v1, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->breakPointDao:Lcom/mgtv/thirdsdk/playcore/a/b;

    iget-object v2, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->videoId:Ljava/lang/String;

    iget-object v3, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->videoPath:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getCurrentPosition()I

    move-result v0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$14;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getDuration()I

    move-result p0

    invoke-static {v1, v2, v3, v0, p0}, Lcom/mgtv/thirdsdk/playcore/utils/c;->a(Lcom/mgtv/thirdsdk/playcore/a/b;Ljava/lang/String;Ljava/lang/String;II)Z

    :cond_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "mSurfaceHolderListener surfaceDestroyed "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
