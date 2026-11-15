.class Lcom/transsion/video_edit/EditBaseActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/video_edit/EditBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/video_edit/EditBaseActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/video_edit/EditBaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/video_edit/EditBaseActivity$1;->this$0:Lcom/transsion/video_edit/EditBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity$1;->this$0:Lcom/transsion/video_edit/EditBaseActivity;

    invoke-static {v0}, Lcom/transsion/video_edit/EditBaseActivity;->H0(Lcom/transsion/video_edit/EditBaseActivity;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity$1;->this$0:Lcom/transsion/video_edit/EditBaseActivity;

    invoke-static {v0}, Lcom/transsion/video_edit/EditBaseActivity;->H0(Lcom/transsion/video_edit/EditBaseActivity;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/Player;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity$1;->this$0:Lcom/transsion/video_edit/EditBaseActivity;

    invoke-static {v0}, Lcom/transsion/video_edit/EditBaseActivity;->H0(Lcom/transsion/video_edit/EditBaseActivity;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v0

    iget-object v2, p0, Lcom/transsion/video_edit/EditBaseActivity$1;->this$0:Lcom/transsion/video_edit/EditBaseActivity;

    invoke-static {v2}, Lcom/transsion/video_edit/EditBaseActivity;->J0(Lcom/transsion/video_edit/EditBaseActivity;)Lcom/transsion/video_edit/ThumbnailSelectorBar;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/transsion/video_edit/ThumbnailSelectorBar;->seekTime(J)V

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity$1;->this$0:Lcom/transsion/video_edit/EditBaseActivity;

    invoke-static {v0}, Lcom/transsion/video_edit/EditBaseActivity;->I0(Lcom/transsion/video_edit/EditBaseActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/video_edit/EditBaseActivity$1;->this$0:Lcom/transsion/video_edit/EditBaseActivity;

    invoke-static {p0}, Lcom/transsion/video_edit/EditBaseActivity;->G0(Lcom/transsion/video_edit/EditBaseActivity;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "run "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EditMainActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
