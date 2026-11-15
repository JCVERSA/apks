.class public final Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$initView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;


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
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J1\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\r\u001a\u00020\n2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0019\u0010\u000f\u001a\u00020\n2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "com/transsion/audio/widgets/HalfOpenAudioPlayerLayout$initView$2",
        "Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;",
        "Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;",
        "seekBar",
        "",
        "progress",
        "",
        "v",
        "",
        "fromUser",
        "Lzfb;",
        "onProgressChanged",
        "(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;IFZ)V",
        "onStartTrackingTouch",
        "(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V",
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

    iput-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$initView$2;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;IFZ)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$initView$2;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getMTracking$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$initView$2;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getMDuration$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)J

    move-result-wide p3

    int-to-long p1, p2

    mul-long/2addr p3, p1

    const/16 p1, 0x64

    int-to-long p1, p1

    div-long/2addr p3, p1

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$initView$2;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getMDuration$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)J

    move-result-wide p1

    cmp-long p1, p3, p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$initView$2;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getMDuration$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)J

    move-result-wide p3

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->Q()I

    move-result p1

    int-to-long p3, p1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$initView$2;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getMTvCurrentProgress$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Landroid/widget/TextView;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "mTvCurrentProgress"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_2
    invoke-static {p3, p4}, Lwna;->d(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$initView$2;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$setMTracking$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Z)V

    return-void
.end method

.method public onStopTrackingTouch(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V
    .locals 4

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$initView$2;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$setMTracking$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Z)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$initView$2;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getMDuration$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)J

    move-result-wide v0

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$initView$2;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getMBottomSeekBar$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "mBottomSeekBar"

    invoke-static {p1}, Ly45;->B(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgress()I

    move-result p1

    int-to-long v2, p1

    mul-long/2addr v0, v2

    const/16 p1, 0x64

    int-to-long v2, p1

    div-long/2addr v0, v2

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$initView$2;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getPlayManager$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p0

    long-to-int p1, v0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/audio/player/MusicPlayManager;->n1(IZ)V

    const-string p0, "audio_play_seekbar"

    invoke-static {p0}, Lp06;->h0(Ljava/lang/String;)V

    return-void
.end method
