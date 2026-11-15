.class final Landroidx/media3/exoplayer/source/k$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lf2/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Landroidx/media3/exoplayer/source/k;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/source/k$a;->b:Landroidx/media3/exoplayer/source/k;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Landroidx/media3/exoplayer/source/k$a;->a:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public c(Landroidx/media3/exoplayer/s2;Landroidx/media3/decoder/DecoderInputBuffer;I)I
    .locals 8

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/source/k$a;->a:I

    .line 2
    .line 3
    const/4 v1, -0x4

    .line 4
    const/4 v2, 0x2

    .line 5
    if-ne v0, v2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x4

    .line 8
    invoke-virtual {p2, p1}, Landroidx/media3/decoder/a;->addFlag(I)V

    .line 9
    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    and-int/lit8 v3, p3, 0x2

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x1

    .line 16
    if-nez v3, :cond_5

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/source/k$a;->b:Landroidx/media3/exoplayer/source/k;

    .line 22
    .line 23
    invoke-static {p1}, Landroidx/media3/exoplayer/source/k;->c(Landroidx/media3/exoplayer/source/k;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_2

    .line 32
    .line 33
    const/4 p1, -0x3

    .line 34
    return p1

    .line 35
    :cond_2
    iget-object p1, p0, Landroidx/media3/exoplayer/source/k$a;->b:Landroidx/media3/exoplayer/source/k;

    .line 36
    .line 37
    invoke-static {p1}, Landroidx/media3/exoplayer/source/k;->h(Landroidx/media3/exoplayer/source/k;)[B

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    array-length p1, p1

    .line 42
    invoke-virtual {p2, v5}, Landroidx/media3/decoder/a;->addFlag(I)V

    .line 43
    .line 44
    .line 45
    const-wide/16 v6, 0x0

    .line 46
    .line 47
    iput-wide v6, p2, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    .line 48
    .line 49
    and-int/lit8 v0, p3, 0x4

    .line 50
    .line 51
    if-nez v0, :cond_3

    .line 52
    .line 53
    invoke-virtual {p2, p1}, Landroidx/media3/decoder/DecoderInputBuffer;->b(I)V

    .line 54
    .line 55
    .line 56
    iget-object p2, p2, Landroidx/media3/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    .line 57
    .line 58
    iget-object v0, p0, Landroidx/media3/exoplayer/source/k$a;->b:Landroidx/media3/exoplayer/source/k;

    .line 59
    .line 60
    invoke-static {v0}, Landroidx/media3/exoplayer/source/k;->h(Landroidx/media3/exoplayer/source/k;)[B

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p2, v0, v4, p1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 65
    .line 66
    .line 67
    :cond_3
    and-int/lit8 p1, p3, 0x1

    .line 68
    .line 69
    if-nez p1, :cond_4

    .line 70
    .line 71
    iput v2, p0, Landroidx/media3/exoplayer/source/k$a;->a:I

    .line 72
    .line 73
    :cond_4
    return v1

    .line 74
    :cond_5
    :goto_0
    iget-object p2, p0, Landroidx/media3/exoplayer/source/k$a;->b:Landroidx/media3/exoplayer/source/k;

    .line 75
    .line 76
    invoke-static {p2}, Landroidx/media3/exoplayer/source/k;->g(Landroidx/media3/exoplayer/source/k;)Lf2/z;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-virtual {p2, v4}, Lf2/z;->b(I)Landroidx/media3/common/f0;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-virtual {p2, v4}, Landroidx/media3/common/f0;->a(I)Landroidx/media3/common/r;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    iput-object p2, p1, Landroidx/media3/exoplayer/s2;->b:Landroidx/media3/common/r;

    .line 89
    .line 90
    iput v5, p0, Landroidx/media3/exoplayer/source/k$a;->a:I

    .line 91
    .line 92
    const/4 p1, -0x5

    .line 93
    return p1
.end method

.method public isReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/k$a;->b:Landroidx/media3/exoplayer/source/k;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/source/k;->c(Landroidx/media3/exoplayer/source/k;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public maybeThrowError()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/k$a;->b:Landroidx/media3/exoplayer/source/k;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/source/k;->d(Landroidx/media3/exoplayer/source/k;)Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Throwable;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v1, Ljava/io/IOException;

    .line 17
    .line 18
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    throw v1
.end method

.method public skipData(J)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method
