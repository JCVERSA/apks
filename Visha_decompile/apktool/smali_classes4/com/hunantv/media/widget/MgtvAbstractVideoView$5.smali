.class Lcom/hunantv/media/widget/MgtvAbstractVideoView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoStringListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/widget/MgtvAbstractVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/widget/MgtvAbstractVideoView;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/widget/MgtvAbstractVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$5;->this$0:Lcom/hunantv/media/widget/MgtvAbstractVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(ILjava/lang/String;)Z
    .locals 3

    const/16 v0, 0xb2c

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb36

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$5;->this$0:Lcom/hunantv/media/widget/MgtvAbstractVideoView;

    invoke-interface {v0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnInfoStringListener what: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", extra is "

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$5;->this$0:Lcom/hunantv/media/widget/MgtvAbstractVideoView;

    invoke-interface {v0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MEDIA_INFO_VIDEO_STREAM_CODEC_INFO: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$5;->this$0:Lcom/hunantv/media/widget/MgtvAbstractVideoView;

    iget-object v0, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isHDR()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$5;->this$0:Lcom/hunantv/media/widget/MgtvAbstractVideoView;

    iget v1, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mRenderViewType:I

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEDIA_INFO_VIDEO_STREAM_CODEC_INFO check the source is HDR. try to change to surfaceview"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$5$1;

    invoke-direct {v0, p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView$5$1;-><init>(Lcom/hunantv/media/widget/MgtvAbstractVideoView$5;)V

    invoke-static {v0}, Lcom/hunantv/media/player/utils/ThreadUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$5;->this$0:Lcom/hunantv/media/widget/MgtvAbstractVideoView;

    invoke-interface {v0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MEDIA_INFO_SEI_SYS_TIMESTAMP: "

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$5;->this$0:Lcom/hunantv/media/widget/MgtvAbstractVideoView;

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mOnInfoStringListener:Lcom/hunantv/media/widget/IVideoView$OnInfoStringListener;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1, p2}, Lcom/hunantv/media/widget/IVideoView$OnInfoStringListener;->onInfo(ILjava/lang/String;)Z

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
