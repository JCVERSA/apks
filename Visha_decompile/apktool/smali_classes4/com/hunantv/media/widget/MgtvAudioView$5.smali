.class Lcom/hunantv/media/widget/MgtvAudioView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/MgtvPlayerListener$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/widget/MgtvAudioView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/widget/MgtvAudioView;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/widget/MgtvAudioView;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvAudioView$5;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared()V
    .locals 4

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAudioView$5;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/hunantv/media/widget/MgtvAudioView;->access$2700(Lcom/hunantv/media/widget/MgtvAudioView;I)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAudioView$5;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    iget-object v1, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/hunantv/media/widget/MgtvAudioView;->access$2102(Lcom/hunantv/media/widget/MgtvAudioView;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/hunantv/media/widget/MgtvAudioView;->access$2002(Lcom/hunantv/media/widget/MgtvAudioView;I)I

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAudioView$5;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    iget-object v1, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/hunantv/media/widget/MgtvAudioView;->access$2302(Lcom/hunantv/media/widget/MgtvAudioView;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/hunantv/media/widget/MgtvAudioView;->access$2202(Lcom/hunantv/media/widget/MgtvAudioView;I)I

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAudioView$5;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {v0}, Lcom/hunantv/media/widget/MgtvAudioView;->access$2100(Lcom/hunantv/media/widget/MgtvAudioView;)I

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAudioView$5;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {v0}, Lcom/hunantv/media/widget/MgtvAudioView;->access$2300(Lcom/hunantv/media/widget/MgtvAudioView;)I

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/widget/MgtvAudioView$5;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {v2}, Lcom/hunantv/media/widget/MgtvAudioView;->access$2100(Lcom/hunantv/media/widget/MgtvAudioView;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/widget/MgtvAudioView$5;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {v2}, Lcom/hunantv/media/widget/MgtvAudioView;->access$2300(Lcom/hunantv/media/widget/MgtvAudioView;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "@@@@"

    invoke-static {v2, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAudioView$5;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {v0}, Lcom/hunantv/media/widget/MgtvAudioView;->access$100(Lcom/hunantv/media/widget/MgtvAudioView;)Lcom/hunantv/media/player/MgtvRenderView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAudioView$5;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {v0}, Lcom/hunantv/media/widget/MgtvAudioView;->access$100(Lcom/hunantv/media/widget/MgtvAudioView;)Lcom/hunantv/media/player/MgtvRenderView;

    move-result-object v0

    iget-object v2, p0, Lcom/hunantv/media/widget/MgtvAudioView$5;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {v2}, Lcom/hunantv/media/widget/MgtvAudioView;->access$2100(Lcom/hunantv/media/widget/MgtvAudioView;)I

    move-result v2

    iget-object v3, p0, Lcom/hunantv/media/widget/MgtvAudioView$5;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {v3}, Lcom/hunantv/media/widget/MgtvAudioView;->access$2300(Lcom/hunantv/media/widget/MgtvAudioView;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/hunantv/media/player/MgtvRenderView;->setVideoSize(II)V

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAudioView$5;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {v0}, Lcom/hunantv/media/widget/MgtvAudioView;->access$100(Lcom/hunantv/media/widget/MgtvAudioView;)Lcom/hunantv/media/player/MgtvRenderView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAudioView$5;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {v0}, Lcom/hunantv/media/widget/MgtvAudioView;->access$100(Lcom/hunantv/media/widget/MgtvAudioView;)Lcom/hunantv/media/player/MgtvRenderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvRenderView;->shouldWaitForResize()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAudioView$5;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {v0}, Lcom/hunantv/media/widget/MgtvAudioView;->access$2800(Lcom/hunantv/media/widget/MgtvAudioView;)I

    move-result v0

    iget-object v2, p0, Lcom/hunantv/media/widget/MgtvAudioView$5;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {v2}, Lcom/hunantv/media/widget/MgtvAudioView;->access$2100(Lcom/hunantv/media/widget/MgtvAudioView;)I

    move-result v2

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAudioView$5;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {v0}, Lcom/hunantv/media/widget/MgtvAudioView;->access$2900(Lcom/hunantv/media/widget/MgtvAudioView;)I

    move-result v0

    iget-object v2, p0, Lcom/hunantv/media/widget/MgtvAudioView$5;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {v2}, Lcom/hunantv/media/widget/MgtvAudioView;->access$2300(Lcom/hunantv/media/widget/MgtvAudioView;)I

    move-result v2

    if-ne v0, v2, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAudioView$5;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {v0}, Lcom/hunantv/media/widget/MgtvAudioView;->access$3000(Lcom/hunantv/media/widget/MgtvAudioView;)I

    move-result v0

    if-ne v0, v1, :cond_4

    :goto_0
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAudioView$5;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-virtual {v0}, Lcom/hunantv/media/widget/MgtvAudioView;->start()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAudioView$5;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {v0}, Lcom/hunantv/media/widget/MgtvAudioView;->access$3000(Lcom/hunantv/media/widget/MgtvAudioView;)I

    move-result v0

    if-ne v0, v1, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAudioView$5;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {v0}, Lcom/hunantv/media/widget/MgtvAudioView;->access$3100(Lcom/hunantv/media/widget/MgtvAudioView;)Lcom/hunantv/media/widget/IVideoView$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAudioView$5;->this$0:Lcom/hunantv/media/widget/MgtvAudioView;

    invoke-static {p0}, Lcom/hunantv/media/widget/MgtvAudioView;->access$3100(Lcom/hunantv/media/widget/MgtvAudioView;)Lcom/hunantv/media/widget/IVideoView$OnPreparedListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/hunantv/media/widget/IVideoView$OnPreparedListener;->onPrepared()V

    :cond_5
    return-void
.end method
