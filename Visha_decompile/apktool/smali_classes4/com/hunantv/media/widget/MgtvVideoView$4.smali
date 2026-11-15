.class Lcom/hunantv/media/widget/MgtvVideoView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/widget/MgtvVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/widget/MgtvVideoView;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/widget/MgtvVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvVideoView$4;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(II)V
    .locals 3

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView$4;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    iget-object v1, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/hunantv/media/widget/MgtvVideoView;->access$2102(Lcom/hunantv/media/widget/MgtvVideoView;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/hunantv/media/widget/MgtvVideoView;->access$2002(Lcom/hunantv/media/widget/MgtvVideoView;I)I

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView$4;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    iget-object v1, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/hunantv/media/widget/MgtvVideoView;->access$2302(Lcom/hunantv/media/widget/MgtvVideoView;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/hunantv/media/widget/MgtvVideoView;->access$2202(Lcom/hunantv/media/widget/MgtvVideoView;I)I

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView$4;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    iget-object v1, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getVideoSarNum()I

    move-result v1

    invoke-static {v0, v1}, Lcom/hunantv/media/widget/MgtvVideoView;->access$2402(Lcom/hunantv/media/widget/MgtvVideoView;I)I

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView$4;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    iget-object v1, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getVideoSarDen()I

    move-result v1

    invoke-static {v0, v1}, Lcom/hunantv/media/widget/MgtvVideoView;->access$2502(Lcom/hunantv/media/widget/MgtvVideoView;I)I

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView$4;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-static {v0}, Lcom/hunantv/media/widget/MgtvVideoView;->access$2100(Lcom/hunantv/media/widget/MgtvVideoView;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView$4;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-static {v0}, Lcom/hunantv/media/widget/MgtvVideoView;->access$2300(Lcom/hunantv/media/widget/MgtvVideoView;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView$4;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-static {v0}, Lcom/hunantv/media/widget/MgtvVideoView;->access$100(Lcom/hunantv/media/widget/MgtvVideoView;)Lcom/hunantv/media/player/MgtvRenderView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView$4;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-static {v0}, Lcom/hunantv/media/widget/MgtvVideoView;->access$100(Lcom/hunantv/media/widget/MgtvVideoView;)Lcom/hunantv/media/player/MgtvRenderView;

    move-result-object v0

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvVideoView$4;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-static {v1}, Lcom/hunantv/media/widget/MgtvVideoView;->access$2100(Lcom/hunantv/media/widget/MgtvVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/hunantv/media/widget/MgtvVideoView$4;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-static {v2}, Lcom/hunantv/media/widget/MgtvVideoView;->access$2300(Lcom/hunantv/media/widget/MgtvVideoView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/media/player/MgtvRenderView;->setVideoSize(II)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView$4;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-static {v0}, Lcom/hunantv/media/widget/MgtvVideoView;->access$2400(Lcom/hunantv/media/widget/MgtvVideoView;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView$4;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-static {v0}, Lcom/hunantv/media/widget/MgtvVideoView;->access$2500(Lcom/hunantv/media/widget/MgtvVideoView;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView$4;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-static {v0}, Lcom/hunantv/media/widget/MgtvVideoView;->access$100(Lcom/hunantv/media/widget/MgtvVideoView;)Lcom/hunantv/media/player/MgtvRenderView;

    move-result-object v0

    iget-object v1, p0, Lcom/hunantv/media/widget/MgtvVideoView$4;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-static {v1}, Lcom/hunantv/media/widget/MgtvVideoView;->access$2400(Lcom/hunantv/media/widget/MgtvVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/hunantv/media/widget/MgtvVideoView$4;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-static {v2}, Lcom/hunantv/media/widget/MgtvVideoView;->access$2500(Lcom/hunantv/media/widget/MgtvVideoView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/media/player/MgtvRenderView;->setVideoSampleAspectRatio(II)V

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView$4;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView$4;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-static {v0}, Lcom/hunantv/media/widget/MgtvVideoView;->access$2600(Lcom/hunantv/media/widget/MgtvVideoView;)Lcom/hunantv/media/widget/IVideoView$OnVideoSizeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView$4;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-static {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->access$2600(Lcom/hunantv/media/widget/MgtvVideoView;)Lcom/hunantv/media/widget/IVideoView$OnVideoSizeChangedListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/hunantv/media/widget/IVideoView$OnVideoSizeChangedListener;->onVideoSizeChanged(II)V

    :cond_2
    return-void
.end method
