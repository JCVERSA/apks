.class Lcom/hunantv/media/widget/MgtvLoopVideoView$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingTimeoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/widget/MgtvLoopVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/widget/MgtvLoopVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$11;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingTimeout(II)Z
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$11;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    iget-object v0, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMediaPlayer:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$11;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->access$2800(Lcom/hunantv/media/widget/MgtvLoopVideoView;I)V

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$11;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-static {v0, v1}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->access$202(Lcom/hunantv/media/widget/MgtvLoopVideoView;I)I

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$11;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    iput-object v1, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mProxyUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->access$3400(Lcom/hunantv/media/widget/MgtvLoopVideoView;)Lcom/hunantv/media/widget/IVideoView$OnErrorListener;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvLoopVideoView$11;->this$0:Lcom/hunantv/media/widget/MgtvLoopVideoView;

    invoke-static {p0}, Lcom/hunantv/media/widget/MgtvLoopVideoView;->access$3400(Lcom/hunantv/media/widget/MgtvLoopVideoView;)Lcom/hunantv/media/widget/IVideoView$OnErrorListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/hunantv/media/widget/IVideoView$OnErrorListener;->onError(II)Z

    :cond_1
    return v1
.end method
