.class Landroidx/media3/exoplayer/hls/r$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lk2/s0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/hls/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static final g:Landroidx/media3/common/r;

.field private static final h:Landroidx/media3/common/r;


# instance fields
.field private final a:Lv2/b;

.field private final b:Lk2/s0;

.field private final c:Landroidx/media3/common/r;

.field private d:Landroidx/media3/common/r;

.field private e:[B

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/common/r$b;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/media3/common/r$b;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "application/id3"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Landroidx/media3/exoplayer/hls/r$c;->g:Landroidx/media3/common/r;

    .line 17
    .line 18
    new-instance v0, Landroidx/media3/common/r$b;

    .line 19
    .line 20
    invoke-direct {v0}, Landroidx/media3/common/r$b;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v1, "application/x-emsg"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Landroidx/media3/exoplayer/hls/r$c;->h:Landroidx/media3/common/r;

    .line 34
    .line 35
    return-void
.end method

.method public constructor <init>(Lk2/s0;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lv2/b;

    .line 5
    .line 6
    invoke-direct {v0}, Lv2/b;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/media3/exoplayer/hls/r$c;->a:Lv2/b;

    .line 10
    .line 11
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/r$c;->b:Lk2/s0;

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    if-eq p2, p1, :cond_1

    .line 15
    .line 16
    const/4 p1, 0x3

    .line 17
    if-ne p2, p1, :cond_0

    .line 18
    .line 19
    sget-object p1, Landroidx/media3/exoplayer/hls/r$c;->h:Landroidx/media3/common/r;

    .line 20
    .line 21
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/r$c;->c:Landroidx/media3/common/r;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v1, "Unknown metadataType: "

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1

    .line 47
    :cond_1
    sget-object p1, Landroidx/media3/exoplayer/hls/r$c;->g:Landroidx/media3/common/r;

    .line 48
    .line 49
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/r$c;->c:Landroidx/media3/common/r;

    .line 50
    .line 51
    :goto_0
    const/4 p1, 0x0

    .line 52
    new-array p2, p1, [B

    .line 53
    .line 54
    iput-object p2, p0, Landroidx/media3/exoplayer/hls/r$c;->e:[B

    .line 55
    .line 56
    iput p1, p0, Landroidx/media3/exoplayer/hls/r$c;->f:I

    .line 57
    .line 58
    return-void
.end method

.method private h(Lv2/a;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lv2/a;->getWrappedMetadataFormat()Landroidx/media3/common/r;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r$c;->c:Landroidx/media3/common/r;

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 10
    .line 11
    iget-object p1, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    return p1
.end method

.method private i(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r$c;->e:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-ge v1, p1, :cond_0

    .line 5
    .line 6
    div-int/lit8 v1, p1, 0x2

    .line 7
    .line 8
    add-int/2addr p1, v1

    .line 9
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/r$c;->e:[B

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private j(II)Landroidx/media3/common/util/j0;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/hls/r$c;->f:I

    .line 2
    .line 3
    sub-int/2addr v0, p2

    .line 4
    sub-int p1, v0, p1

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/r$c;->e:[B

    .line 7
    .line 8
    invoke-static {v1, p1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance v1, Landroidx/media3/common/util/j0;

    .line 13
    .line 14
    invoke-direct {v1, p1}, Landroidx/media3/common/util/j0;-><init>([B)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r$c;->e:[B

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-static {p1, v0, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    .line 22
    .line 23
    iput p2, p0, Landroidx/media3/exoplayer/hls/r$c;->f:I

    .line 24
    .line 25
    return-object v1
.end method


# virtual methods
.method public a(Landroidx/media3/common/util/j0;II)V
    .locals 1

    .line 1
    iget p3, p0, Landroidx/media3/exoplayer/hls/r$c;->f:I

    .line 2
    .line 3
    add-int/2addr p3, p2

    .line 4
    invoke-direct {p0, p3}, Landroidx/media3/exoplayer/hls/r$c;->i(I)V

    .line 5
    .line 6
    .line 7
    iget-object p3, p0, Landroidx/media3/exoplayer/hls/r$c;->e:[B

    .line 8
    .line 9
    iget v0, p0, Landroidx/media3/exoplayer/hls/r$c;->f:I

    .line 10
    .line 11
    invoke-virtual {p1, p3, v0, p2}, Landroidx/media3/common/util/j0;->l([BII)V

    .line 12
    .line 13
    .line 14
    iget p1, p0, Landroidx/media3/exoplayer/hls/r$c;->f:I

    .line 15
    .line 16
    add-int/2addr p1, p2

    .line 17
    iput p1, p0, Landroidx/media3/exoplayer/hls/r$c;->f:I

    .line 18
    .line 19
    return-void
.end method

.method public b(JIIILk2/s0$a;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r$c;->d:Landroidx/media3/common/r;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p4, p5}, Landroidx/media3/exoplayer/hls/r$c;->j(II)Landroidx/media3/common/util/j0;

    .line 7
    .line 8
    .line 9
    move-result-object p4

    .line 10
    iget-object p5, p0, Landroidx/media3/exoplayer/hls/r$c;->d:Landroidx/media3/common/r;

    .line 11
    .line 12
    iget-object p5, p5, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r$c;->c:Landroidx/media3/common/r;

    .line 15
    .line 16
    iget-object v0, v0, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {p5, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p5

    .line 22
    if-eqz p5, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p5, p0, Landroidx/media3/exoplayer/hls/r$c;->d:Landroidx/media3/common/r;

    .line 26
    .line 27
    iget-object p5, p5, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 28
    .line 29
    const-string v0, "application/x-emsg"

    .line 30
    .line 31
    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p5

    .line 35
    const-string v0, "HlsSampleStreamWrapper"

    .line 36
    .line 37
    if-eqz p5, :cond_2

    .line 38
    .line 39
    iget-object p5, p0, Landroidx/media3/exoplayer/hls/r$c;->a:Lv2/b;

    .line 40
    .line 41
    invoke-virtual {p5, p4}, Lv2/b;->c(Landroidx/media3/common/util/j0;)Lv2/a;

    .line 42
    .line 43
    .line 44
    move-result-object p4

    .line 45
    invoke-direct {p0, p4}, Landroidx/media3/exoplayer/hls/r$c;->h(Lv2/a;)Z

    .line 46
    .line 47
    .line 48
    move-result p5

    .line 49
    if-nez p5, :cond_1

    .line 50
    .line 51
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r$c;->c:Landroidx/media3/common/r;

    .line 52
    .line 53
    iget-object p1, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p4}, Lv2/a;->getWrappedMetadataFormat()Landroidx/media3/common/r;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    const/4 p3, 0x2

    .line 60
    new-array p3, p3, [Ljava/lang/Object;

    .line 61
    .line 62
    const/4 p4, 0x0

    .line 63
    aput-object p1, p3, p4

    .line 64
    .line 65
    const/4 p1, 0x1

    .line 66
    aput-object p2, p3, p1

    .line 67
    .line 68
    const-string p1, "Ignoring EMSG. Expected it to contain wrapped %s but actual wrapped format: %s"

    .line 69
    .line 70
    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {v0, p1}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_1
    new-instance p5, Landroidx/media3/common/util/j0;

    .line 79
    .line 80
    invoke-virtual {p4}, Lv2/a;->getWrappedMetadataBytes()[B

    .line 81
    .line 82
    .line 83
    move-result-object p4

    .line 84
    invoke-static {p4}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p4

    .line 88
    check-cast p4, [B

    .line 89
    .line 90
    invoke-direct {p5, p4}, Landroidx/media3/common/util/j0;-><init>([B)V

    .line 91
    .line 92
    .line 93
    move-object p4, p5

    .line 94
    :goto_0
    invoke-virtual {p4}, Landroidx/media3/common/util/j0;->a()I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    iget-object p5, p0, Landroidx/media3/exoplayer/hls/r$c;->b:Lk2/s0;

    .line 99
    .line 100
    invoke-interface {p5, p4, v4}, Lk2/s0;->c(Landroidx/media3/common/util/j0;I)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r$c;->b:Lk2/s0;

    .line 104
    .line 105
    const/4 v5, 0x0

    .line 106
    move-wide v1, p1

    .line 107
    move v3, p3

    .line 108
    move-object v6, p6

    .line 109
    invoke-interface/range {v0 .. v6}, Lk2/s0;->b(JIIILk2/s0$a;)V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    const-string p2, "Ignoring sample for unsupported format: "

    .line 119
    .line 120
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget-object p2, p0, Landroidx/media3/exoplayer/hls/r$c;->d:Landroidx/media3/common/r;

    .line 124
    .line 125
    iget-object p2, p2, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-static {v0, p1}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    return-void
.end method

.method public synthetic c(Landroidx/media3/common/util/j0;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lk2/r0;->c(Lk2/s0;Landroidx/media3/common/util/j0;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public d(Landroidx/media3/common/r;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/r$c;->d:Landroidx/media3/common/r;

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/r$c;->b:Lk2/s0;

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/r$c;->c:Landroidx/media3/common/r;

    .line 6
    .line 7
    invoke-interface {p1, v0}, Lk2/s0;->d(Landroidx/media3/common/r;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public synthetic e(Landroidx/media3/common/j;IZ)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lk2/r0;->b(Lk2/s0;Landroidx/media3/common/j;IZ)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public synthetic f(J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lk2/r0;->a(Lk2/s0;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public g(Landroidx/media3/common/j;IZI)I
    .locals 1

    .line 1
    iget p4, p0, Landroidx/media3/exoplayer/hls/r$c;->f:I

    .line 2
    .line 3
    add-int/2addr p4, p2

    .line 4
    invoke-direct {p0, p4}, Landroidx/media3/exoplayer/hls/r$c;->i(I)V

    .line 5
    .line 6
    .line 7
    iget-object p4, p0, Landroidx/media3/exoplayer/hls/r$c;->e:[B

    .line 8
    .line 9
    iget v0, p0, Landroidx/media3/exoplayer/hls/r$c;->f:I

    .line 10
    .line 11
    invoke-interface {p1, p4, v0, p2}, Landroidx/media3/common/j;->read([BII)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 p2, -0x1

    .line 16
    if-ne p1, p2, :cond_1

    .line 17
    .line 18
    if-eqz p3, :cond_0

    .line 19
    .line 20
    return p2

    .line 21
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    iget p2, p0, Landroidx/media3/exoplayer/hls/r$c;->f:I

    .line 28
    .line 29
    add-int/2addr p2, p1

    .line 30
    iput p2, p0, Landroidx/media3/exoplayer/hls/r$c;->f:I

    .line 31
    .line 32
    return p1
.end method
