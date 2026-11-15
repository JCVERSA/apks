.class public Lcom/transsion/video_edit/EditBaseActivity$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/video_edit/EditBaseActivity;->X0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/video_edit/EditBaseActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/video_edit/EditBaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/video_edit/EditBaseActivity$a;->b:Lcom/transsion/video_edit/EditBaseActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity$a;->b:Lcom/transsion/video_edit/EditBaseActivity;

    invoke-static {v0}, Lcom/transsion/video_edit/EditBaseActivity;->H0(Lcom/transsion/video_edit/EditBaseActivity;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/Player;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity$a;->b:Lcom/transsion/video_edit/EditBaseActivity;

    invoke-static {v0}, Lcom/transsion/video_edit/EditBaseActivity;->F0(Lcom/transsion/video_edit/EditBaseActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity$a;->b:Lcom/transsion/video_edit/EditBaseActivity;

    invoke-static {v0}, Lcom/transsion/video_edit/EditBaseActivity;->H0(Lcom/transsion/video_edit/EditBaseActivity;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/Player;->pause()V

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity$a;->b:Lcom/transsion/video_edit/EditBaseActivity;

    invoke-static {v0}, Lcom/transsion/video_edit/EditBaseActivity;->I0(Lcom/transsion/video_edit/EditBaseActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/video_edit/EditBaseActivity$a;->b:Lcom/transsion/video_edit/EditBaseActivity;

    invoke-static {p0}, Lcom/transsion/video_edit/EditBaseActivity;->G0(Lcom/transsion/video_edit/EditBaseActivity;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDoubleTap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EditMainActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return p1
.end method
