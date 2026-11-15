.class public Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public final a:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

.field public final b:Lcom/google/android/exoplayer2/audio/j;

.field public final c:Lcom/google/android/exoplayer2/audio/k;


# direct methods
.method public varargs constructor <init>([Lcom/google/android/exoplayer2/audio/AudioProcessor;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/audio/j;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/j;-><init>()V

    new-instance v1, Lcom/google/android/exoplayer2/audio/k;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/audio/k;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;-><init>([Lcom/google/android/exoplayer2/audio/AudioProcessor;Lcom/google/android/exoplayer2/audio/j;Lcom/google/android/exoplayer2/audio/k;)V

    return-void
.end method

.method public constructor <init>([Lcom/google/android/exoplayer2/audio/AudioProcessor;Lcom/google/android/exoplayer2/audio/j;Lcom/google/android/exoplayer2/audio/k;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;->a:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    const/4 v1, 0x0

    .line 4
    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iput-object p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;->b:Lcom/google/android/exoplayer2/audio/j;

    .line 6
    iput-object p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;->c:Lcom/google/android/exoplayer2/audio/k;

    .line 7
    array-length p0, p1

    aput-object p2, v0, p0

    .line 8
    array-length p0, p1

    add-int/lit8 p0, p0, 0x1

    aput-object p3, v0, p0

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/s;)Lcom/google/android/exoplayer2/s;
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;->c:Lcom/google/android/exoplayer2/audio/k;

    iget v1, p1, Lcom/google/android/exoplayer2/s;->b:F

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/k;->d(F)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;->c:Lcom/google/android/exoplayer2/audio/k;

    iget v0, p1, Lcom/google/android/exoplayer2/s;->c:F

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/audio/k;->c(F)V

    return-object p1
.end method

.method public applySkipSilenceEnabled(Z)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;->b:Lcom/google/android/exoplayer2/audio/j;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/audio/j;->q(Z)V

    return p1
.end method

.method public getAudioProcessors()[Lcom/google/android/exoplayer2/audio/AudioProcessor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;->a:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    return-object p0
.end method

.method public getMediaDuration(J)J
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;->c:Lcom/google/android/exoplayer2/audio/k;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/k;->b(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public getSkippedOutputFrameCount()J
    .locals 2

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;->b:Lcom/google/android/exoplayer2/audio/j;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/j;->k()J

    move-result-wide v0

    return-wide v0
.end method
