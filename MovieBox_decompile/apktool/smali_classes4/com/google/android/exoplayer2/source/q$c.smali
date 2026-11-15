.class final Lcom/google/android/exoplayer2/source/q$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lv9/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Lv9/s;

.field private final b:J


# direct methods
.method public constructor <init>(Lv9/s;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/q$c;->a:Lv9/s;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/q$c;->b:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/q1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q$c;->a:Lv9/s;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lv9/s;->a(Lcom/google/android/exoplayer2/q1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 p3, -0x4

    .line 8
    if-ne p1, p3, :cond_0

    .line 9
    .line 10
    iget-wide v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    .line 11
    .line 12
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/q$c;->b:J

    .line 13
    .line 14
    add-long/2addr v0, v2

    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    iput-wide v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    .line 22
    .line 23
    :cond_0
    return p1
.end method

.method public b()Lv9/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q$c;->a:Lv9/s;

    .line 2
    .line 3
    return-object v0
.end method

.method public isReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q$c;->a:Lv9/s;

    .line 2
    .line 3
    invoke-interface {v0}, Lv9/s;->isReady()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public maybeThrowError()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q$c;->a:Lv9/s;

    .line 2
    .line 3
    invoke-interface {v0}, Lv9/s;->maybeThrowError()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public skipData(J)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q$c;->a:Lv9/s;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/q$c;->b:J

    .line 4
    .line 5
    sub-long/2addr p1, v1

    .line 6
    invoke-interface {v0, p1, p2}, Lv9/s;->skipData(J)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method
