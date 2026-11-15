.class final Lh3/v;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lk2/s0;


# instance fields
.field private final a:Lk2/s0;

.field private final b:Lh3/s$a;

.field private final c:Lh3/d;

.field private final d:Landroidx/media3/common/util/j0;

.field private e:I

.field private f:I

.field private g:[B

.field private h:Lh3/s;

.field private i:Landroidx/media3/common/r;

.field private j:Z


# direct methods
.method public constructor <init>(Lk2/s0;Lh3/s$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh3/v;->a:Lk2/s0;

    .line 5
    .line 6
    iput-object p2, p0, Lh3/v;->b:Lh3/s$a;

    .line 7
    .line 8
    new-instance p1, Lh3/d;

    .line 9
    .line 10
    invoke-direct {p1}, Lh3/d;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lh3/v;->c:Lh3/d;

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lh3/v;->e:I

    .line 17
    .line 18
    iput p1, p0, Lh3/v;->f:I

    .line 19
    .line 20
    sget-object p1, Landroidx/media3/common/util/a1;->f:[B

    .line 21
    .line 22
    iput-object p1, p0, Lh3/v;->g:[B

    .line 23
    .line 24
    new-instance p1, Landroidx/media3/common/util/j0;

    .line 25
    .line 26
    invoke-direct {p1}, Landroidx/media3/common/util/j0;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lh3/v;->d:Landroidx/media3/common/util/j0;

    .line 30
    .line 31
    return-void
.end method

.method public static synthetic h(Lh3/v;JILh3/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lh3/v;->j(JILh3/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private i(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lh3/v;->g:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    iget v1, p0, Lh3/v;->f:I

    .line 5
    .line 6
    sub-int/2addr v0, v1

    .line 7
    if-lt v0, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v0, p0, Lh3/v;->e:I

    .line 11
    .line 12
    sub-int/2addr v1, v0

    .line 13
    mul-int/lit8 v0, v1, 0x2

    .line 14
    .line 15
    add-int/2addr p1, v1

    .line 16
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iget-object v0, p0, Lh3/v;->g:[B

    .line 21
    .line 22
    array-length v2, v0

    .line 23
    if-gt p1, v2, :cond_1

    .line 24
    .line 25
    move-object p1, v0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    new-array p1, p1, [B

    .line 28
    .line 29
    :goto_0
    iget v2, p0, Lh3/v;->e:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-static {v0, v2, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    .line 34
    .line 35
    iput v3, p0, Lh3/v;->e:I

    .line 36
    .line 37
    iput v1, p0, Lh3/v;->f:I

    .line 38
    .line 39
    iput-object p1, p0, Lh3/v;->g:[B

    .line 40
    .line 41
    return-void
.end method

.method private synthetic j(JILh3/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p4, p1, p2, p3}, Lh3/v;->k(Lh3/e;JI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private k(Lh3/e;JI)V
    .locals 11

    .line 1
    iget-object v0, p0, Lh3/v;->i:Landroidx/media3/common/r;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lh3/v;->c:Lh3/d;

    .line 7
    .line 8
    iget-object v1, p1, Lh3/e;->a:Lcom/google/common/collect/ImmutableList;

    .line 9
    .line 10
    iget-wide v2, p1, Lh3/e;->c:J

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2, v3}, Lh3/d;->a(Ljava/util/List;J)[B

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lh3/v;->d:Landroidx/media3/common/util/j0;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroidx/media3/common/util/j0;->T([B)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lh3/v;->a:Lk2/s0;

    .line 22
    .line 23
    iget-object v2, p0, Lh3/v;->d:Landroidx/media3/common/util/j0;

    .line 24
    .line 25
    array-length v3, v0

    .line 26
    invoke-interface {v1, v2, v3}, Lk2/s0;->c(Landroidx/media3/common/util/j0;I)V

    .line 27
    .line 28
    .line 29
    iget-wide v1, p1, Lh3/e;->b:J

    .line 30
    .line 31
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    cmp-long p1, v1, v3

    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    const-wide v4, 0x7fffffffffffffffL

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    if-nez p1, :cond_1

    .line 45
    .line 46
    iget-object p1, p0, Lh3/v;->i:Landroidx/media3/common/r;

    .line 47
    .line 48
    iget-wide v1, p1, Landroidx/media3/common/r;->t:J

    .line 49
    .line 50
    cmp-long p1, v1, v4

    .line 51
    .line 52
    if-nez p1, :cond_0

    .line 53
    .line 54
    move p1, v3

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/4 p1, 0x0

    .line 57
    :goto_0
    invoke-static {p1}, Landroidx/media3/common/util/a;->g(Z)V

    .line 58
    .line 59
    .line 60
    :goto_1
    move-wide v5, p2

    .line 61
    goto :goto_2

    .line 62
    :cond_1
    iget-object p1, p0, Lh3/v;->i:Landroidx/media3/common/r;

    .line 63
    .line 64
    iget-wide v6, p1, Landroidx/media3/common/r;->t:J

    .line 65
    .line 66
    cmp-long p1, v6, v4

    .line 67
    .line 68
    if-nez p1, :cond_2

    .line 69
    .line 70
    add-long/2addr p2, v1

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    add-long p2, v1, v6

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :goto_2
    iget-object v4, p0, Lh3/v;->a:Lk2/s0;

    .line 76
    .line 77
    or-int/lit8 v7, p4, 0x1

    .line 78
    .line 79
    array-length v8, v0

    .line 80
    const/4 v9, 0x0

    .line 81
    const/4 v10, 0x0

    .line 82
    invoke-interface/range {v4 .. v10}, Lk2/s0;->b(JIIILk2/s0$a;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/common/util/j0;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lh3/v;->h:Lh3/s;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lh3/v;->a:Lk2/s0;

    .line 6
    .line 7
    invoke-interface {v0, p1, p2, p3}, Lk2/s0;->a(Landroidx/media3/common/util/j0;II)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-direct {p0, p2}, Lh3/v;->i(I)V

    .line 12
    .line 13
    .line 14
    iget-object p3, p0, Lh3/v;->g:[B

    .line 15
    .line 16
    iget v0, p0, Lh3/v;->f:I

    .line 17
    .line 18
    invoke-virtual {p1, p3, v0, p2}, Landroidx/media3/common/util/j0;->l([BII)V

    .line 19
    .line 20
    .line 21
    iget p1, p0, Lh3/v;->f:I

    .line 22
    .line 23
    add-int/2addr p1, p2

    .line 24
    iput p1, p0, Lh3/v;->f:I

    .line 25
    .line 26
    return-void
.end method

.method public b(JIIILk2/s0$a;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lh3/v;->h:Lh3/s;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lh3/v;->a:Lk2/s0;

    .line 6
    .line 7
    move-wide v2, p1

    .line 8
    move v4, p3

    .line 9
    move v5, p4

    .line 10
    move v6, p5

    .line 11
    move-object v7, p6

    .line 12
    invoke-interface/range {v1 .. v7}, Lk2/s0;->b(JIIILk2/s0$a;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    if-nez p6, :cond_1

    .line 18
    .line 19
    const/4 p6, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move p6, v0

    .line 22
    :goto_0
    const-string v1, "DRM on subtitles is not supported"

    .line 23
    .line 24
    invoke-static {p6, v1}, Landroidx/media3/common/util/a;->b(ZLjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget p6, p0, Lh3/v;->f:I

    .line 28
    .line 29
    sub-int/2addr p6, p5

    .line 30
    sub-int/2addr p6, p4

    .line 31
    :try_start_0
    iget-object v1, p0, Lh3/v;->h:Lh3/s;

    .line 32
    .line 33
    iget-object v2, p0, Lh3/v;->g:[B

    .line 34
    .line 35
    invoke-static {}, Lh3/s$b;->b()Lh3/s$b;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    new-instance v6, Lh3/u;

    .line 40
    .line 41
    invoke-direct {v6, p0, p1, p2, p3}, Lh3/u;-><init>(Lh3/v;JI)V

    .line 42
    .line 43
    .line 44
    move v3, p6

    .line 45
    move v4, p4

    .line 46
    invoke-interface/range {v1 .. v6}, Lh3/s;->b([BIILh3/s$b;Landroidx/media3/common/util/m;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :catch_0
    move-exception p1

    .line 51
    iget-boolean p2, p0, Lh3/v;->j:Z

    .line 52
    .line 53
    if-eqz p2, :cond_3

    .line 54
    .line 55
    const-string p2, "SubtitleTranscodingTO"

    .line 56
    .line 57
    const-string p3, "Parsing subtitles failed, ignoring sample."

    .line 58
    .line 59
    invoke-static {p2, p3, p1}, Landroidx/media3/common/util/u;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    :goto_1
    add-int/2addr p6, p4

    .line 63
    iput p6, p0, Lh3/v;->e:I

    .line 64
    .line 65
    iget p1, p0, Lh3/v;->f:I

    .line 66
    .line 67
    if-ne p6, p1, :cond_2

    .line 68
    .line 69
    iput v0, p0, Lh3/v;->e:I

    .line 70
    .line 71
    iput v0, p0, Lh3/v;->f:I

    .line 72
    .line 73
    :cond_2
    return-void

    .line 74
    :cond_3
    throw p1
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
    .locals 4

    .line 1
    iget-object v0, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0}, Landroidx/media3/common/y;->k(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x3

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->a(Z)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lh3/v;->i:Landroidx/media3/common/r;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroidx/media3/common/r;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    iput-object p1, p0, Lh3/v;->i:Landroidx/media3/common/r;

    .line 30
    .line 31
    iget-object v0, p0, Lh3/v;->b:Lh3/s$a;

    .line 32
    .line 33
    invoke-interface {v0, p1}, Lh3/s$a;->a(Landroidx/media3/common/r;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lh3/v;->b:Lh3/s$a;

    .line 40
    .line 41
    invoke-interface {v0, p1}, Lh3/s$a;->c(Landroidx/media3/common/r;)Lh3/s;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/4 v0, 0x0

    .line 47
    :goto_1
    iput-object v0, p0, Lh3/v;->h:Lh3/s;

    .line 48
    .line 49
    :cond_2
    iget-object v0, p0, Lh3/v;->h:Lh3/s;

    .line 50
    .line 51
    if-nez v0, :cond_3

    .line 52
    .line 53
    iget-object v0, p0, Lh3/v;->a:Lk2/s0;

    .line 54
    .line 55
    invoke-interface {v0, p1}, Lk2/s0;->d(Landroidx/media3/common/r;)V

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    iget-object v0, p0, Lh3/v;->a:Lk2/s0;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroidx/media3/common/r;->b()Landroidx/media3/common/r$b;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const-string v2, "application/x-media3-cues"

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    iget-object v2, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Landroidx/media3/common/r$b;->S(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const-wide v2, 0x7fffffffffffffffL

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2, v3}, Landroidx/media3/common/r$b;->y0(J)Landroidx/media3/common/r$b;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    iget-object v2, p0, Lh3/v;->b:Lh3/s$a;

    .line 87
    .line 88
    invoke-interface {v2, p1}, Lh3/s$a;->b(Landroidx/media3/common/r;)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    invoke-virtual {v1, p1}, Landroidx/media3/common/r$b;->W(I)Landroidx/media3/common/r$b;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p1}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-interface {v0, p1}, Lk2/s0;->d(Landroidx/media3/common/r;)V

    .line 101
    .line 102
    .line 103
    :goto_2
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
    iget-object v0, p0, Lh3/v;->h:Lh3/s;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lh3/v;->a:Lk2/s0;

    .line 6
    .line 7
    invoke-interface {v0, p1, p2, p3, p4}, Lk2/s0;->g(Landroidx/media3/common/j;IZI)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    invoke-direct {p0, p2}, Lh3/v;->i(I)V

    .line 13
    .line 14
    .line 15
    iget-object p4, p0, Lh3/v;->g:[B

    .line 16
    .line 17
    iget v0, p0, Lh3/v;->f:I

    .line 18
    .line 19
    invoke-interface {p1, p4, v0, p2}, Landroidx/media3/common/j;->read([BII)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const/4 p2, -0x1

    .line 24
    if-ne p1, p2, :cond_2

    .line 25
    .line 26
    if-eqz p3, :cond_1

    .line 27
    .line 28
    return p2

    .line 29
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 32
    .line 33
    .line 34
    throw p1

    .line 35
    :cond_2
    iget p2, p0, Lh3/v;->f:I

    .line 36
    .line 37
    add-int/2addr p2, p1

    .line 38
    iput p2, p0, Lh3/v;->f:I

    .line 39
    .line 40
    return p1
.end method

.method public l(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lh3/v;->j:Z

    .line 2
    .line 3
    return-void
.end method
