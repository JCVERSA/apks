.class Lcom/hunantv/media/alpha/MgtvAlphaVideoView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/alpha/MgtvAlphaVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$3;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(II)V
    .locals 3

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$3;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-virtual {v0}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$402(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$302(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;I)I

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$3;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    iget-object v1, v0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$602(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$502(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;I)I

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$3;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-static {v0}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$400(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$3;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-static {v0}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$600(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$3;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    iget-object v1, v0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mGLView:Lcom/hunantv/media/alpha/IAlphaRenderView;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$400(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;)I

    move-result v0

    iget-object v2, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$3;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-static {v2}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$600(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;)I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/hunantv/media/alpha/IAlphaRenderView;->setVideoSize(II)V

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$3;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$3;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-static {v0}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$700(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;)Lcom/hunantv/media/widget/IVideoView$OnVideoSizeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$3;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-static {p0}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$700(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;)Lcom/hunantv/media/widget/IVideoView$OnVideoSizeChangedListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/hunantv/media/widget/IVideoView$OnVideoSizeChangedListener;->onVideoSizeChanged(II)V

    :cond_2
    return-void
.end method
