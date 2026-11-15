.class Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/widget/IVideoView$OnUpdateStatusListener;


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

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$3;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateStatus()V
    .locals 3

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$3;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-object v1, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mOnUpdateStatusListener:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnUpdateStatusListener;

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isPlaying()Z

    move-result v0

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$3;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-object v2, v2, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    invoke-interface {v2}, Lcom/hunantv/media/widget/IVideoView;->isPrepared()Z

    move-result v2

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$3;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mVideoView:Lcom/hunantv/media/widget/IVideoView;

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView;->isCompletion()Z

    move-result p0

    invoke-interface {v1, v0, v2, p0}, Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnUpdateStatusListener;->onUpdateStatus(ZZZ)V

    :cond_0
    return-void
.end method
