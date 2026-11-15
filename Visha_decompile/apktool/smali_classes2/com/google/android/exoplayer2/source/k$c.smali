.class public final Lcom/google/android/exoplayer2/source/k$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh19;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lh19;

.field public final b:J


# direct methods
.method public constructor <init>(Lh19;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/k$c;->a:Lh19;

    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/k$c;->b:J

    return-void
.end method


# virtual methods
.method public a(Lo44;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/k$c;->a:Lh19;

    invoke-interface {v0, p1, p2, p3}, Lh19;->a(Lo44;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result p1

    const/4 p3, -0x4

    if-ne p1, p3, :cond_0

    iget-wide v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->f:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/k$c;->b:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->f:J

    :cond_0
    return p1
.end method

.method public b()Lh19;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/k$c;->a:Lh19;

    return-object p0
.end method

.method public isReady()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/k$c;->a:Lh19;

    invoke-interface {p0}, Lh19;->isReady()Z

    move-result p0

    return p0
.end method

.method public maybeThrowError()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/k$c;->a:Lh19;

    invoke-interface {p0}, Lh19;->maybeThrowError()V

    return-void
.end method

.method public skipData(J)I
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/k$c;->a:Lh19;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/k$c;->b:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lh19;->skipData(J)I

    move-result p0

    return p0
.end method
