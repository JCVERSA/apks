.class public Lcom/transsion/audio/activities/LyricEditActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audio/activities/LyricEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/audio/activities/LyricEditActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/activities/LyricEditActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/activities/LyricEditActivity$c;->a:Lcom/transsion/audio/activities/LyricEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;IFZ)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/audio/activities/LyricEditActivity$c;->a:Lcom/transsion/audio/activities/LyricEditActivity;

    iget-boolean p3, p1, Lcom/transsion/audio/activities/LyricEditActivity;->P:Z

    if-eqz p3, :cond_1

    iget-wide p3, p1, Lcom/transsion/audio/activities/LyricEditActivity;->O:J

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
    iget-object p0, p0, Lcom/transsion/audio/activities/LyricEditActivity$c;->a:Lcom/transsion/audio/activities/LyricEditActivity;

    iget-object p0, p0, Lcom/transsion/audio/activities/LyricEditActivity;->R:Landroid/widget/TextView;

    invoke-static {p3, p4}, Lwna;->d(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/activities/LyricEditActivity$c;->a:Lcom/transsion/audio/activities/LyricEditActivity;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/audio/activities/LyricEditActivity;->P:Z

    return-void
.end method

.method public onStopTrackingTouch(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V
    .locals 5

    iget-object p1, p0, Lcom/transsion/audio/activities/LyricEditActivity$c;->a:Lcom/transsion/audio/activities/LyricEditActivity;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/transsion/audio/activities/LyricEditActivity;->P:Z

    iget-wide v1, p1, Lcom/transsion/audio/activities/LyricEditActivity;->O:J

    iget-object p1, p1, Lcom/transsion/audio/activities/LyricEditActivity;->N:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgress()I

    move-result p1

    int-to-long v3, p1

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x64

    div-long/2addr v1, v3

    iget-object p1, p0, Lcom/transsion/audio/activities/LyricEditActivity$c;->a:Lcom/transsion/audio/activities/LyricEditActivity;

    invoke-static {p1}, Lcom/transsion/audio/activities/LyricEditActivity;->r0(Lcom/transsion/audio/activities/LyricEditActivity;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    long-to-int v1, v1

    invoke-virtual {p1, v1}, Lcom/transsion/audio/player/MusicPlayManager;->m1(I)V

    iget-object p1, p0, Lcom/transsion/audio/activities/LyricEditActivity$c;->a:Lcom/transsion/audio/activities/LyricEditActivity;

    invoke-static {p1}, Lcom/transsion/audio/activities/LyricEditActivity;->r0(Lcom/transsion/audio/activities/LyricEditActivity;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->b0()I

    move-result p1

    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/activities/LyricEditActivity$c;->a:Lcom/transsion/audio/activities/LyricEditActivity;

    invoke-static {p0}, Lcom/transsion/audio/activities/LyricEditActivity;->r0(Lcom/transsion/audio/activities/LyricEditActivity;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audio/player/MusicPlayManager;->A1(ZZ)V

    :cond_0
    const/4 p0, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "vd_audio_lyrics_edit_play"

    const-string v0, "action"

    invoke-static {p1, v0, p0}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
