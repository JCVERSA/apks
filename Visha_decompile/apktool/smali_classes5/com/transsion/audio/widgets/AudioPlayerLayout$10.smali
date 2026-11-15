.class Lcom/transsion/audio/widgets/AudioPlayerLayout$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audio/widgets/AudioPlayerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$10;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;IFZ)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$10;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    iget-boolean p3, p1, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mTracking:Z

    if-eqz p3, :cond_1

    iget-wide p3, p1, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mDuration:J

    int-to-long p1, p2

    mul-long/2addr p1, p3

    const-wide/16 v0, 0x64

    div-long/2addr p1, v0

    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move-wide p3, p1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->Q()I

    move-result p1

    int-to-long p3, p1

    :goto_0
    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$10;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mTvCurrentProgress:Landroid/widget/TextView;

    invoke-static {p3, p4}, Lwna;->d(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$10;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mTracking:Z

    return-void
.end method

.method public onStopTrackingTouch(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V
    .locals 4

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$10;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mTracking:Z

    iget-wide v0, p1, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mDuration:J

    iget-object p1, p1, Lcom/transsion/audio/widgets/AudioPlayerLayout;->mBottomSeekBar:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgress()I

    move-result p1

    int-to-long v2, p1

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$10;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->H(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p0

    long-to-int p1, v0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/audio/player/MusicPlayManager;->n1(IZ)V

    const-string p0, "audio_play_seekbar"

    invoke-static {p0}, Lp06;->h0(Ljava/lang/String;)V

    return-void
.end method
