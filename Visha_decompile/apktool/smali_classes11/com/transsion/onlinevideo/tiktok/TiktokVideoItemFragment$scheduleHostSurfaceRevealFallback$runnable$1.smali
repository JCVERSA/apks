.class public final Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$scheduleHostSurfaceRevealFallback$runnable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->v2(Lcom/transsion/onlinevideo/tiktok/widget/TiktokShortVideoPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004R\"\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "com/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$scheduleHostSurfaceRevealFallback$runnable$1",
        "Ljava/lang/Runnable;",
        "Lzfb;",
        "run",
        "()V",
        "",
        "attempts",
        "I",
        "getAttempts",
        "()I",
        "setAttempts",
        "(I)V",
        "onlinevideo_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $player:Lcom/transsion/onlinevideo/tiktok/widget/TiktokShortVideoPlayer;

.field private attempts:I

.field final synthetic this$0:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Lcom/transsion/onlinevideo/tiktok/widget/TiktokShortVideoPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$scheduleHostSurfaceRevealFallback$runnable$1;->this$0:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    iput-object p2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$scheduleHostSurfaceRevealFallback$runnable$1;->$player:Lcom/transsion/onlinevideo/tiktok/widget/TiktokShortVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAttempts()I
    .locals 0

    iget p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$scheduleHostSurfaceRevealFallback$runnable$1;->attempts:I

    return p0
.end method

.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$scheduleHostSurfaceRevealFallback$runnable$1;->this$0:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->h0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)Ljava/lang/Runnable;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$scheduleHostSurfaceRevealFallback$runnable$1;->this$0:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->i0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$scheduleHostSurfaceRevealFallback$runnable$1;->this$0:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->f0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$scheduleHostSurfaceRevealFallback$runnable$1;->this$0:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->v0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$scheduleHostSurfaceRevealFallback$runnable$1;->this$0:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->d0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$scheduleHostSurfaceRevealFallback$runnable$1;->this$0:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p0, v1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->E0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Ljava/lang/Runnable;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$scheduleHostSurfaceRevealFallback$runnable$1;->$player:Lcom/transsion/onlinevideo/tiktok/widget/TiktokShortVideoPlayer;

    invoke-virtual {v2}, Lcom/transsion/onlinevideo/tiktok/widget/TiktokShortVideoPlayer;->getPlaybackPositionMs()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2, v0}, Lwn8;->d(II)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget-object v2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$scheduleHostSurfaceRevealFallback$runnable$1;->this$0:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    const-string v3, "host_resume_fallback"

    invoke-static {v2, v3, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->O0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$scheduleHostSurfaceRevealFallback$runnable$1;->this$0:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {v2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->d0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$scheduleHostSurfaceRevealFallback$runnable$1;->this$0:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p0, v1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->E0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Ljava/lang/Runnable;)V

    return-void

    :cond_3
    iget v2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$scheduleHostSurfaceRevealFallback$runnable$1;->attempts:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$scheduleHostSurfaceRevealFallback$runnable$1;->attempts:I

    const/16 v3, 0xc

    if-ge v2, v3, :cond_4

    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$scheduleHostSurfaceRevealFallback$runnable$1;->$player:Lcom/transsion/onlinevideo/tiktok/widget/TiktokShortVideoPlayer;

    const-wide/16 v1, 0x140

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$scheduleHostSurfaceRevealFallback$runnable$1;->this$0:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {v2, v1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->E0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$scheduleHostSurfaceRevealFallback$runnable$1;->this$0:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {v1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->q0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$scheduleHostSurfaceRevealFallback$runnable$1;->$player:Lcom/transsion/onlinevideo/tiktok/widget/TiktokShortVideoPlayer;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getCurrentState()I

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "first frame reveal gave up mVideoTitle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pos="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", state="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TiktokVideoItemFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$scheduleHostSurfaceRevealFallback$runnable$1;->this$0:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p0, v1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->E0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setAttempts(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$scheduleHostSurfaceRevealFallback$runnable$1;->attempts:I

    return-void
.end method
