.class final Lcom/google/android/exoplayer2/source/rtsp/p$f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lv9/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/rtsp/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "f"
.end annotation


# instance fields
.field private final a:I

.field final synthetic b:Lcom/google/android/exoplayer2/source/rtsp/p;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/p;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/p$f;->b:Lcom/google/android/exoplayer2/source/rtsp/p;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/exoplayer2/source/rtsp/p$f;->a:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/q1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p$f;->b:Lcom/google/android/exoplayer2/source/rtsp/p;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p$f;->a:I

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/exoplayer2/source/rtsp/p;->L(ILcom/google/android/exoplayer2/q1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public isReady()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p$f;->b:Lcom/google/android/exoplayer2/source/rtsp/p;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p$f;->a:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/p;->H(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public maybeThrowError()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p$f;->b:Lcom/google/android/exoplayer2/source/rtsp/p;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/p;->c(Lcom/google/android/exoplayer2/source/rtsp/p;)Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p$f;->b:Lcom/google/android/exoplayer2/source/rtsp/p;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/p;->c(Lcom/google/android/exoplayer2/source/rtsp/p;)Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    throw v0
.end method

.method public skipData(J)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/p$f;->b:Lcom/google/android/exoplayer2/source/rtsp/p;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/exoplayer2/source/rtsp/p$f;->a:I

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/source/rtsp/p;->P(IJ)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
