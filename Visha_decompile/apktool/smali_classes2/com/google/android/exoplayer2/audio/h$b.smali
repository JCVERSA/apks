.class public final Lcom/google/android/exoplayer2/audio/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioSink$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/audio/h;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/audio/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/h$b;->a:Lcom/google/android/exoplayer2/audio/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/h;Lcom/google/android/exoplayer2/audio/h$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/h$b;-><init>(Lcom/google/android/exoplayer2/audio/h;)V

    return-void
.end method


# virtual methods
.method public onAudioSinkError(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "MediaCodecAudioRenderer"

    const-string v1, "Audio sink error"

    invoke-static {v0, v1, p1}, Lop5;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/h$b;->a:Lcom/google/android/exoplayer2/audio/h;

    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/h;->V0(Lcom/google/android/exoplayer2/audio/h;)Lcom/google/android/exoplayer2/audio/b$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/audio/b$a;->l(Ljava/lang/Exception;)V

    return-void
.end method

.method public onOffloadBufferEmptying()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/h$b;->a:Lcom/google/android/exoplayer2/audio/h;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/h;->W0(Lcom/google/android/exoplayer2/audio/h;)Lcom/google/android/exoplayer2/w$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/h$b;->a:Lcom/google/android/exoplayer2/audio/h;

    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/h;->W0(Lcom/google/android/exoplayer2/audio/h;)Lcom/google/android/exoplayer2/w$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/w$a;->onWakeup()V

    :cond_0
    return-void
.end method

.method public onOffloadBufferFull()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/h$b;->a:Lcom/google/android/exoplayer2/audio/h;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/h;->W0(Lcom/google/android/exoplayer2/audio/h;)Lcom/google/android/exoplayer2/w$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/h$b;->a:Lcom/google/android/exoplayer2/audio/h;

    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/h;->W0(Lcom/google/android/exoplayer2/audio/h;)Lcom/google/android/exoplayer2/w$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/w$a;->onSleep()V

    :cond_0
    return-void
.end method

.method public onPositionAdvancing(J)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/h$b;->a:Lcom/google/android/exoplayer2/audio/h;

    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/h;->V0(Lcom/google/android/exoplayer2/audio/h;)Lcom/google/android/exoplayer2/audio/b$a;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/b$a;->B(J)V

    return-void
.end method

.method public onPositionDiscontinuity()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/h$b;->a:Lcom/google/android/exoplayer2/audio/h;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/h;->d1()V

    return-void
.end method

.method public onSkipSilenceEnabledChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/h$b;->a:Lcom/google/android/exoplayer2/audio/h;

    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/h;->V0(Lcom/google/android/exoplayer2/audio/h;)Lcom/google/android/exoplayer2/audio/b$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/audio/b$a;->C(Z)V

    return-void
.end method

.method public onUnderrun(IJJ)V
    .locals 6

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/h$b;->a:Lcom/google/android/exoplayer2/audio/h;

    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/h;->V0(Lcom/google/android/exoplayer2/audio/h;)Lcom/google/android/exoplayer2/audio/b$a;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/b$a;->D(IJJ)V

    return-void
.end method
