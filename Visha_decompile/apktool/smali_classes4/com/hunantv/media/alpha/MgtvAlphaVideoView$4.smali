.class Lcom/hunantv/media/alpha/MgtvAlphaVideoView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/MgtvPlayerListener$OnPreparedListener;


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

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$4;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared()V
    .locals 4

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$4;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$800(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;I)V

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$4;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-virtual {v0}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$402(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$302(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;I)I

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$4;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    iget-object v1, v0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$602(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$502(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;I)I

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$4;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-static {v0}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$400(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;)I

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$4;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-static {v0}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$600(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$4;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-static {v2}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$400(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$4;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-static {v2}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$600(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "@@@@"

    invoke-static {v2, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$4;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    iget-object v2, v0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mGLView:Lcom/hunantv/media/alpha/IAlphaRenderView;

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$400(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;)I

    move-result v0

    iget-object v3, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$4;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-static {v3}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$600(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;)I

    move-result v3

    invoke-interface {v2, v0, v3}, Lcom/hunantv/media/alpha/IAlphaRenderView;->setVideoSize(II)V

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$4;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-static {v0}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$900(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;)I

    move-result v0

    iget-object v2, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$4;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-static {v2}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$400(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;)I

    move-result v2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$4;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-static {v0}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$1000(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;)I

    move-result v0

    iget-object v2, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$4;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-static {v2}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$600(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;)I

    move-result v2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$4;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-static {v0}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$1100(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;)I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$4;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-virtual {v0}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->start()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$4;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-static {v0}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$1100(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;)I

    move-result v0

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$4;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-static {v0}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$1200(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;)Lcom/hunantv/media/widget/IVideoView$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$4;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-static {p0}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$1200(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;)Lcom/hunantv/media/widget/IVideoView$OnPreparedListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView$OnPreparedListener;->onPrepared()V

    :cond_3
    return-void
.end method
