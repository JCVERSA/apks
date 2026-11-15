.class Lcom/hunantv/media/alpha/MgtvAlphaVideoView$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;


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

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$8;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(II)Z
    .locals 4

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$8;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-virtual {v0}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",extra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$8;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    iget-object v1, v0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const v3, 0x6acfc6

    if-ne p1, v3, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->releaseNoStatus()V

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$8;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-static {v0, v2}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$800(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;I)V

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$8;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-static {v0, v2}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$1102(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;I)I

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$2000(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;)I

    move-result v0

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$8;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    iget-object v0, v0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->stop()V

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$8;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-static {v0, v3}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$800(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;I)V

    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$8;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-static {v0, v3}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$1102(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;I)I

    :goto_0
    iget-object v0, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$8;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    iput-object v1, v0, Lcom/hunantv/media/alpha/MgtvAlphaAbstractVideoView;->mProxyUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$2100(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;)Lcom/hunantv/media/widget/IVideoView$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/hunantv/media/alpha/MgtvAlphaVideoView$8;->this$0:Lcom/hunantv/media/alpha/MgtvAlphaVideoView;

    invoke-static {p0}, Lcom/hunantv/media/alpha/MgtvAlphaVideoView;->access$2100(Lcom/hunantv/media/alpha/MgtvAlphaVideoView;)Lcom/hunantv/media/widget/IVideoView$OnErrorListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/hunantv/media/widget/IVideoView$OnErrorListener;->onError(II)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v2
.end method
