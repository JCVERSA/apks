.class public Landroidx/media3/exoplayer/audio/x0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/audio/DefaultAudioSink$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/audio/x0$a;
    }
.end annotation


# instance fields
.field protected final b:I

.field protected final c:I

.field protected final d:I

.field protected final e:I

.field protected final f:I

.field public final g:I

.field public final h:I


# direct methods
.method protected constructor <init>(Landroidx/media3/exoplayer/audio/x0$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroidx/media3/exoplayer/audio/x0$a;->a(Landroidx/media3/exoplayer/audio/x0$a;)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput v0, p0, Landroidx/media3/exoplayer/audio/x0;->b:I

    .line 9
    .line 10
    invoke-static {p1}, Landroidx/media3/exoplayer/audio/x0$a;->b(Landroidx/media3/exoplayer/audio/x0$a;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Landroidx/media3/exoplayer/audio/x0;->c:I

    .line 15
    .line 16
    invoke-static {p1}, Landroidx/media3/exoplayer/audio/x0$a;->c(Landroidx/media3/exoplayer/audio/x0$a;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Landroidx/media3/exoplayer/audio/x0;->d:I

    .line 21
    .line 22
    invoke-static {p1}, Landroidx/media3/exoplayer/audio/x0$a;->d(Landroidx/media3/exoplayer/audio/x0$a;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput v0, p0, Landroidx/media3/exoplayer/audio/x0;->e:I

    .line 27
    .line 28
    invoke-static {p1}, Landroidx/media3/exoplayer/audio/x0$a;->e(Landroidx/media3/exoplayer/audio/x0$a;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput v0, p0, Landroidx/media3/exoplayer/audio/x0;->f:I

    .line 33
    .line 34
    invoke-static {p1}, Landroidx/media3/exoplayer/audio/x0$a;->f(Landroidx/media3/exoplayer/audio/x0$a;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput v0, p0, Landroidx/media3/exoplayer/audio/x0;->g:I

    .line 39
    .line 40
    invoke-static {p1}, Landroidx/media3/exoplayer/audio/x0$a;->g(Landroidx/media3/exoplayer/audio/x0$a;)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iput p1, p0, Landroidx/media3/exoplayer/audio/x0;->h:I

    .line 45
    .line 46
    return-void
.end method

.method protected static b(III)I
    .locals 2

    .line 1
    int-to-long v0, p0

    .line 2
    int-to-long p0, p1

    .line 3
    mul-long/2addr v0, p0

    .line 4
    int-to-long p0, p2

    .line 5
    mul-long/2addr v0, p0

    .line 6
    const-wide/32 p0, 0xf4240

    .line 7
    .line 8
    .line 9
    div-long/2addr v0, p0

    .line 10
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->d(J)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method protected static d(I)I
    .locals 1

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x1e

    .line 6
    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    packed-switch p0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    packed-switch p0, :pswitch_data_1

    .line 13
    .line 14
    .line 15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 18
    .line 19
    .line 20
    throw p0

    .line 21
    :pswitch_0
    const p0, 0x52080

    .line 22
    .line 23
    .line 24
    return p0

    .line 25
    :pswitch_1
    const p0, 0x3e800

    .line 26
    .line 27
    .line 28
    return p0

    .line 29
    :pswitch_2
    const/16 p0, 0x1f40

    .line 30
    .line 31
    return p0

    .line 32
    :pswitch_3
    const p0, 0x2ebae4

    .line 33
    .line 34
    .line 35
    return p0

    .line 36
    :pswitch_4
    const/16 p0, 0x1b58

    .line 37
    .line 38
    return p0

    .line 39
    :pswitch_5
    const/16 p0, 0x3e80

    .line 40
    .line 41
    return p0

    .line 42
    :pswitch_6
    const p0, 0x186a0

    .line 43
    .line 44
    .line 45
    return p0

    .line 46
    :pswitch_7
    const p0, 0x9c40

    .line 47
    .line 48
    .line 49
    return p0

    .line 50
    :pswitch_8
    const p0, 0x2ee00

    .line 51
    .line 52
    .line 53
    return p0

    .line 54
    :pswitch_9
    const p0, 0xbb800

    .line 55
    .line 56
    .line 57
    return p0

    .line 58
    :pswitch_a
    const p0, 0x13880

    .line 59
    .line 60
    .line 61
    return p0

    .line 62
    :cond_0
    :pswitch_b
    const p0, 0x225510

    .line 63
    .line 64
    .line 65
    return p0

    .line 66
    :cond_1
    const p0, 0xf906

    .line 67
    .line 68
    .line 69
    return p0

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_b
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public a(IIIIIID)I
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p6}, Landroidx/media3/exoplayer/audio/x0;->c(IIIIII)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    int-to-double p2, p2

    .line 6
    mul-double/2addr p2, p7

    .line 7
    double-to-int p2, p2

    .line 8
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    add-int/2addr p1, p4

    .line 13
    add-int/lit8 p1, p1, -0x1

    .line 14
    .line 15
    div-int/2addr p1, p4

    .line 16
    mul-int/2addr p1, p4

    .line 17
    return p1
.end method

.method protected c(IIIIII)I
    .locals 0

    .line 1
    if-eqz p3, :cond_2

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    if-eq p3, p1, :cond_1

    .line 5
    .line 6
    const/4 p1, 0x2

    .line 7
    if-ne p3, p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p2, p6}, Landroidx/media3/exoplayer/audio/x0;->f(II)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 17
    .line 18
    .line 19
    throw p1

    .line 20
    :cond_1
    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/audio/x0;->e(I)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1

    .line 25
    :cond_2
    invoke-virtual {p0, p1, p5, p4}, Landroidx/media3/exoplayer/audio/x0;->g(III)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1
.end method

.method protected e(I)I
    .locals 4

    .line 1
    invoke-static {p1}, Landroidx/media3/exoplayer/audio/x0;->d(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget v0, p0, Landroidx/media3/exoplayer/audio/x0;->f:I

    .line 6
    .line 7
    int-to-long v0, v0

    .line 8
    int-to-long v2, p1

    .line 9
    mul-long/2addr v0, v2

    .line 10
    const-wide/32 v2, 0xf4240

    .line 11
    .line 12
    .line 13
    div-long/2addr v0, v2

    .line 14
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->d(J)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method protected f(II)I
    .locals 3

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/audio/x0;->e:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/16 v2, 0x8

    .line 5
    .line 6
    if-ne p1, v1, :cond_0

    .line 7
    .line 8
    iget v1, p0, Landroidx/media3/exoplayer/audio/x0;->g:I

    .line 9
    .line 10
    :goto_0
    mul-int/2addr v0, v1

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    if-ne p1, v2, :cond_1

    .line 13
    .line 14
    iget v1, p0, Landroidx/media3/exoplayer/audio/x0;->h:I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    :goto_1
    const/4 v1, -0x1

    .line 18
    if-eq p2, v1, :cond_2

    .line 19
    .line 20
    sget-object p1, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 21
    .line 22
    invoke-static {p2, v2, p1}, Lcom/google/common/math/d;->c(IILjava/math/RoundingMode;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    invoke-static {p1}, Landroidx/media3/exoplayer/audio/x0;->d(I)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    :goto_2
    int-to-long v0, v0

    .line 32
    int-to-long p1, p1

    .line 33
    mul-long/2addr v0, p1

    .line 34
    const-wide/32 p1, 0xf4240

    .line 35
    .line 36
    .line 37
    div-long/2addr v0, p1

    .line 38
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->d(J)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    return p1
.end method

.method protected g(III)I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/audio/x0;->d:I

    .line 2
    .line 3
    mul-int/2addr p1, v0

    .line 4
    iget v0, p0, Landroidx/media3/exoplayer/audio/x0;->b:I

    .line 5
    .line 6
    invoke-static {v0, p2, p3}, Landroidx/media3/exoplayer/audio/x0;->b(III)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget v1, p0, Landroidx/media3/exoplayer/audio/x0;->c:I

    .line 11
    .line 12
    invoke-static {v1, p2, p3}, Landroidx/media3/exoplayer/audio/x0;->b(III)I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    invoke-static {p1, v0, p2}, Landroidx/media3/common/util/a1;->p(III)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1
.end method
