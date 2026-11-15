.class public final Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$initView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\'\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\r\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "com/transsion/audio/widgets/HalfOpenAudioPlayerLayout$initView$3",
        "Landroid/widget/SeekBar$OnSeekBarChangeListener;",
        "Landroid/widget/SeekBar;",
        "seekBar",
        "",
        "progress",
        "",
        "fromUser",
        "Lzfb;",
        "onProgressChanged",
        "(Landroid/widget/SeekBar;IZ)V",
        "onStartTrackingTouch",
        "(Landroid/widget/SeekBar;)V",
        "onStopTrackingTouch",
        "audio_release"
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
.field final synthetic this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$initView$3;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$initView$3;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {p3}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getMAudioOpStatus$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Lcom/transsion/audio/data/AudioOpStatus;

    move-result-object p3

    if-nez p3, :cond_0

    const-string p3, "mAudioOpStatus"

    invoke-static {p3}, Ly45;->B(Ljava/lang/String;)V

    const/4 p3, 0x0

    :cond_0
    int-to-float p2, p2

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p2, v0

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMax()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$initView$3;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getPlayManager$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p0

    invoke-static {p3, p2, p0}, Law6;->c(Lcom/transsion/audio/data/AudioOpStatus;FLcom/transsion/audio/player/MusicPlayManager;)V

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$initView$3;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getHideVolBarRunnable$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$initView$3;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {v0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getHideVolBarRunnable$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$initView$3;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$updateVolumeSeekBar(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V

    return-void
.end method
