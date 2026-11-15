.class Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/widget/IVideoView$OnErrorListener;


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

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$10;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(II)Z
    .locals 5

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$10;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$10;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-object v2, v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_ErrorUrl_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$10;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-object v2, v2, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    invoke-interface {v2}, Lcom/hunantv/media/widget/IVideoView;->getErrorUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mErrorMsg:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$10;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-object v1, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isMgtvPlayer()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, ".00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$10;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mPlayerTick:Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;->d()V

    :cond_2
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$10;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-boolean v1, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isPlayOK:Z

    if-eqz v1, :cond_3

    :try_start_0
    iget-object v1, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->breakPointDao:Lcom/mgtv/thirdsdk/playcore/a/b;

    iget-object v2, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->videoId:Ljava/lang/String;

    iget-object v3, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->videoPath:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getCurrentPosition()I

    move-result v0

    iget-object v4, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$10;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    invoke-virtual {v4}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getDuration()I

    move-result v4

    invoke-static {v1, v2, v3, v0, v4}, Lcom/mgtv/thirdsdk/playcore/utils/c;->a(Lcom/mgtv/thirdsdk/playcore/a/b;Ljava/lang/String;Ljava/lang/String;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$10;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    invoke-virtual {v0, p1, p2}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->callbackError(II)V

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$10;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mNetStatusMonitor:Lcom/mgtv/thirdsdk/playcore/b/b;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->context:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/mgtv/thirdsdk/playcore/b/b;->b(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method
