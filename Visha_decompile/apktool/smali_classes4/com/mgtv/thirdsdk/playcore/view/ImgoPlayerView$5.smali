.class Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/widget/IVideoView$OnPreparedListener;


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

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$5;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared()V
    .locals 3

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$5;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-boolean v1, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isFirstPlay:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mFirstPlay:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mFirstPlay:Z

    :cond_1
    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/utils/c;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$5;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-object v1, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->breakPointDao:Lcom/mgtv/thirdsdk/playcore/a/b;

    iget-object v2, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->videoId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mgtv/thirdsdk/playcore/utils/c;->a(Lcom/mgtv/thirdsdk/playcore/a/b;Ljava/lang/String;)Lcom/mgtv/thirdsdk/playcore/a/a;

    move-result-object v1

    iput-object v1, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->breakPoint:Lcom/mgtv/thirdsdk/playcore/a/a;

    :cond_2
    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/utils/c;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$5;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->breakPoint:Lcom/mgtv/thirdsdk/playcore/a/a;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/a/a;->e()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$5;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-boolean v1, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mPlayBreakPoint:Z

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->breakPoint:Lcom/mgtv/thirdsdk/playcore/a/a;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/a/a;->e()I

    move-result v0

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$5;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    invoke-virtual {v1, v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->seekTo(I)V

    :cond_3
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$5;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isPosPlay:Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$5;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->access$000(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$5;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-boolean v1, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isLive:Z

    if-nez v1, :cond_5

    iget-boolean v1, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mPlayBreakPoint:Z

    if-eqz v1, :cond_5

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->breakPoint:Lcom/mgtv/thirdsdk/playcore/a/a;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/a/a;->e()I

    move-result v0

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$5;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    invoke-virtual {v1, v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->seekTo(I)V

    :cond_5
    :goto_0
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$5;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mOnPreparedListener:Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnPreparedListener;

    if-eqz p0, :cond_6

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnPreparedListener;->onPrepared()V

    :cond_6
    return-void
.end method
