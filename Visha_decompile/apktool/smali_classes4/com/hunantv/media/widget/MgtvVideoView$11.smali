.class Lcom/hunantv/media/widget/MgtvVideoView$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingTimeoutListener;


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

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvVideoView$11;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingTimeout(II)Z
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView$11;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    iget-object v0, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView$11;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/hunantv/media/widget/MgtvVideoView;->access$2700(Lcom/hunantv/media/widget/MgtvVideoView;I)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView$11;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-static {v0, v1}, Lcom/hunantv/media/widget/MgtvVideoView;->access$3202(Lcom/hunantv/media/widget/MgtvVideoView;I)I

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView$11;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-virtual {v0}, Lcom/hunantv/media/widget/MgtvVideoView;->cleanUri()V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvVideoView$11;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-static {v0}, Lcom/hunantv/media/widget/MgtvVideoView;->access$4000(Lcom/hunantv/media/widget/MgtvVideoView;)Lcom/hunantv/media/widget/IVideoView$OnErrorListener;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvVideoView$11;->this$0:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-static {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->access$4000(Lcom/hunantv/media/widget/MgtvVideoView;)Lcom/hunantv/media/widget/IVideoView$OnErrorListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/hunantv/media/widget/IVideoView$OnErrorListener;->onError(II)Z

    :cond_1
    return v1
.end method
