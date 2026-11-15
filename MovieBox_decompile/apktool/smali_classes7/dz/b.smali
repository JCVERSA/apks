.class public Ldz/b;
.super Lcz/b;
.source "source.java"


# instance fields
.field private final c:[B

.field private final d:I

.field private final e:I

.field private f:Z

.field private g:J

.field private h:J

.field private final i:Ljava/io/InputStream;

.field private j:Ldz/a;

.field private final k:Lorg/apache/commons/compress/archivers/zip/r;

.field final l:Ljava/lang/String;

.field private m:Ljava/util/Map;

.field private final n:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    const/16 v0, 0x2800

    const/16 v1, 0x200

    .line 1
    invoke-direct {p0, p1, v0, v1}, Ldz/b;-><init>(Ljava/io/InputStream;II)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Ldz/b;-><init>(Ljava/io/InputStream;IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IILjava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 3
    invoke-direct/range {v0 .. v5}, Ldz/b;-><init>(Ljava/io/InputStream;IILjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IILjava/lang/String;Z)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcz/b;-><init>()V

    const/16 v0, 0x100

    .line 5
    new-array v0, v0, [B

    iput-object v0, p0, Ldz/b;->c:[B

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldz/b;->m:Ljava/util/Map;

    .line 7
    iput-object p1, p0, Ldz/b;->i:Ljava/io/InputStream;

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Ldz/b;->f:Z

    .line 9
    iput-object p4, p0, Ldz/b;->l:Ljava/lang/String;

    .line 10
    invoke-static {p4}, Lorg/apache/commons/compress/archivers/zip/s;->a(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/r;

    move-result-object p1

    iput-object p1, p0, Ldz/b;->k:Lorg/apache/commons/compress/archivers/zip/r;

    .line 11
    iput p3, p0, Ldz/b;->d:I

    .line 12
    iput p2, p0, Ldz/b;->e:I

    .line 13
    iput-boolean p5, p0, Ldz/b;->n:Z

    return-void
.end method

.method private S()V
    .locals 7

    .line 1
    invoke-direct {p0}, Ldz/b;->r()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-wide v0, p0, Ldz/b;->g:J

    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    cmp-long v4, v0, v2

    .line 12
    .line 13
    if-lez v4, :cond_0

    .line 14
    .line 15
    iget v4, p0, Ldz/b;->d:I

    .line 16
    .line 17
    int-to-long v5, v4

    .line 18
    rem-long v5, v0, v5

    .line 19
    .line 20
    cmp-long v2, v5, v2

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    int-to-long v2, v4

    .line 25
    div-long v2, v0, v2

    .line 26
    .line 27
    const-wide/16 v5, 0x1

    .line 28
    .line 29
    add-long/2addr v2, v5

    .line 30
    int-to-long v4, v4

    .line 31
    mul-long/2addr v2, v4

    .line 32
    sub-long/2addr v2, v0

    .line 33
    iget-object v0, p0, Ldz/b;->i:Ljava/io/InputStream;

    .line 34
    .line 35
    invoke-static {v0, v2, v3}, Lez/c;->c(Ljava/io/InputStream;J)J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    invoke-virtual {p0, v0, v1}, Lcz/b;->f(J)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method private T()V
    .locals 4

    .line 1
    iget-object v0, p0, Ldz/b;->i:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Ldz/b;->i:Ljava/io/InputStream;

    .line 10
    .line 11
    iget v2, p0, Ldz/b;->d:I

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->mark(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ldz/b;->x()[B

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p0, v1}, Ldz/b;->s([B)Z

    .line 21
    .line 22
    .line 23
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget v0, p0, Ldz/b;->d:I

    .line 29
    .line 30
    int-to-long v0, v0

    .line 31
    invoke-virtual {p0, v0, v1}, Lcz/b;->j(J)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Ldz/b;->i:Ljava/io/InputStream;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void

    .line 40
    :catchall_0
    move-exception v1

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    iget v0, p0, Ldz/b;->d:I

    .line 44
    .line 45
    int-to-long v2, v0

    .line 46
    invoke-virtual {p0, v2, v3}, Lcz/b;->j(J)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Ldz/b;->i:Ljava/io/InputStream;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 52
    .line 53
    .line 54
    :cond_2
    throw v1
.end method

.method private k(Ljava/util/Map;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldz/b;->j:Ldz/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ldz/a;->C(Ljava/util/Map;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private l()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcz/b;->h()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget v2, p0, Ldz/b;->e:I

    .line 6
    .line 7
    int-to-long v3, v2

    .line 8
    rem-long/2addr v0, v3

    .line 9
    const-wide/16 v3, 0x0

    .line 10
    .line 11
    cmp-long v3, v0, v3

    .line 12
    .line 13
    if-lez v3, :cond_0

    .line 14
    .line 15
    iget-object v3, p0, Ldz/b;->i:Ljava/io/InputStream;

    .line 16
    .line 17
    int-to-long v4, v2

    .line 18
    sub-long/2addr v4, v0

    .line 19
    invoke-static {v3, v4, v5}, Lez/c;->c(Ljava/io/InputStream;J)J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    invoke-virtual {p0, v0, v1}, Lcz/b;->f(J)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method private p()[B
    .locals 2

    .line 1
    invoke-virtual {p0}, Ldz/b;->x()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Ldz/b;->s([B)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v1}, Ldz/b;->y(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Ldz/b;->q()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-direct {p0}, Ldz/b;->T()V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Ldz/b;->l()V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    :cond_0
    return-object v0
.end method

.method private r()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ldz/b;->j:Ldz/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ldz/a;->h()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method private u()V
    .locals 1

    .line 1
    invoke-virtual {p0, p0}, Ldz/b;->t(Ljava/io/InputStream;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ldz/b;->n()Lcz/a;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Ldz/b;->k(Ljava/util/Map;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private v()V
    .locals 1

    .line 1
    invoke-virtual {p0, p0}, Ldz/b;->t(Ljava/io/InputStream;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Ldz/b;->m:Ljava/util/Map;

    .line 6
    .line 7
    invoke-virtual {p0}, Ldz/b;->n()Lcz/a;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private w()V
    .locals 2

    .line 1
    iget-object v0, p0, Ldz/b;->j:Ldz/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ldz/a;->i()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    :cond_0
    invoke-direct {p0}, Ldz/b;->p()[B

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Ldz/b;->j:Ldz/a;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    new-instance v1, Ldz/c;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Ldz/c;-><init>([B)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ldz/c;->a()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 8

    .line 1
    invoke-direct {p0}, Ldz/b;->r()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    iget-wide v0, p0, Ldz/b;->g:J

    .line 10
    .line 11
    iget-wide v2, p0, Ldz/b;->h:J

    .line 12
    .line 13
    sub-long v4, v0, v2

    .line 14
    .line 15
    const-wide/32 v6, 0x7fffffff

    .line 16
    .line 17
    .line 18
    cmp-long v4, v4, v6

    .line 19
    .line 20
    if-lez v4, :cond_1

    .line 21
    .line 22
    const v0, 0x7fffffff

    .line 23
    .line 24
    .line 25
    return v0

    .line 26
    :cond_1
    sub-long/2addr v0, v2

    .line 27
    long-to-int v0, v0

    .line 28
    return v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Ldz/b;->i:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected m()[B
    .locals 4

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    :goto_0
    iget-object v1, p0, Ldz/b;->c:[B

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-ltz v1, :cond_0

    .line 14
    .line 15
    iget-object v3, p0, Ldz/b;->c:[B

    .line 16
    .line 17
    invoke-virtual {v0, v3, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Ldz/b;->n()Lcz/a;

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Ldz/b;->j:Ldz/a;

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    return-object v0

    .line 30
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    array-length v1, v0

    .line 35
    :goto_1
    if-lez v1, :cond_2

    .line 36
    .line 37
    add-int/lit8 v3, v1, -0x1

    .line 38
    .line 39
    aget-byte v3, v0, v3

    .line 40
    .line 41
    if-nez v3, :cond_2

    .line 42
    .line 43
    add-int/lit8 v1, v1, -0x1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    array-length v3, v0

    .line 47
    if-eq v1, v3, :cond_3

    .line 48
    .line 49
    new-array v3, v1, [B

    .line 50
    .line 51
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    .line 53
    .line 54
    move-object v0, v3

    .line 55
    :cond_3
    return-object v0
.end method

.method public mark(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public n()Lcz/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ldz/b;->o()Ldz/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public o()Ldz/a;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ldz/b;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    iget-object v0, p0, Ldz/b;->j:Ldz/a;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const-wide v2, 0x7fffffffffffffffL

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    invoke-static {p0, v2, v3}, Lez/c;->c(Ljava/io/InputStream;J)J

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ldz/b;->S()V

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-direct {p0}, Ldz/b;->p()[B

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    iput-object v1, p0, Ldz/b;->j:Ldz/a;

    .line 31
    .line 32
    return-object v1

    .line 33
    :cond_2
    :try_start_0
    new-instance v2, Ldz/a;

    .line 34
    .line 35
    iget-object v3, p0, Ldz/b;->k:Lorg/apache/commons/compress/archivers/zip/r;

    .line 36
    .line 37
    iget-boolean v4, p0, Ldz/b;->n:Z

    .line 38
    .line 39
    invoke-direct {v2, v0, v3, v4}, Ldz/a;-><init>([BLorg/apache/commons/compress/archivers/zip/r;Z)V

    .line 40
    .line 41
    .line 42
    iput-object v2, p0, Ldz/b;->j:Ldz/a;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    const-wide/16 v3, 0x0

    .line 45
    .line 46
    iput-wide v3, p0, Ldz/b;->h:J

    .line 47
    .line 48
    invoke-virtual {v2}, Ldz/a;->g()J

    .line 49
    .line 50
    .line 51
    move-result-wide v2

    .line 52
    iput-wide v2, p0, Ldz/b;->g:J

    .line 53
    .line 54
    iget-object v0, p0, Ldz/b;->j:Ldz/a;

    .line 55
    .line 56
    invoke-virtual {v0}, Ldz/a;->j()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    invoke-virtual {p0}, Ldz/b;->m()[B

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-nez v0, :cond_3

    .line 67
    .line 68
    return-object v1

    .line 69
    :cond_3
    iget-object v2, p0, Ldz/b;->j:Ldz/a;

    .line 70
    .line 71
    iget-object v3, p0, Ldz/b;->k:Lorg/apache/commons/compress/archivers/zip/r;

    .line 72
    .line 73
    invoke-interface {v3, v0}, Lorg/apache/commons/compress/archivers/zip/r;->a([B)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v2, v0}, Ldz/a;->w(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :cond_4
    iget-object v0, p0, Ldz/b;->j:Ldz/a;

    .line 81
    .line 82
    invoke-virtual {v0}, Ldz/a;->k()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_6

    .line 87
    .line 88
    invoke-virtual {p0}, Ldz/b;->m()[B

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    if-nez v0, :cond_5

    .line 93
    .line 94
    return-object v1

    .line 95
    :cond_5
    iget-object v1, p0, Ldz/b;->j:Ldz/a;

    .line 96
    .line 97
    iget-object v2, p0, Ldz/b;->k:Lorg/apache/commons/compress/archivers/zip/r;

    .line 98
    .line 99
    invoke-interface {v2, v0}, Lorg/apache/commons/compress/archivers/zip/r;->a([B)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v1, v0}, Ldz/a;->y(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :cond_6
    iget-object v0, p0, Ldz/b;->j:Ldz/a;

    .line 107
    .line 108
    invoke-virtual {v0}, Ldz/a;->l()Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_7

    .line 113
    .line 114
    invoke-direct {p0}, Ldz/b;->v()V

    .line 115
    .line 116
    .line 117
    :cond_7
    iget-object v0, p0, Ldz/b;->j:Ldz/a;

    .line 118
    .line 119
    invoke-virtual {v0}, Ldz/a;->n()Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_8

    .line 124
    .line 125
    invoke-direct {p0}, Ldz/b;->u()V

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_8
    iget-object v0, p0, Ldz/b;->m:Ljava/util/Map;

    .line 130
    .line 131
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-nez v0, :cond_9

    .line 136
    .line 137
    iget-object v0, p0, Ldz/b;->m:Ljava/util/Map;

    .line 138
    .line 139
    invoke-direct {p0, v0}, Ldz/b;->k(Ljava/util/Map;)V

    .line 140
    .line 141
    .line 142
    :cond_9
    :goto_0
    iget-object v0, p0, Ldz/b;->j:Ldz/a;

    .line 143
    .line 144
    invoke-virtual {v0}, Ldz/a;->m()Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_a

    .line 149
    .line 150
    invoke-direct {p0}, Ldz/b;->w()V

    .line 151
    .line 152
    .line 153
    :cond_a
    iget-object v0, p0, Ldz/b;->j:Ldz/a;

    .line 154
    .line 155
    invoke-virtual {v0}, Ldz/a;->g()J

    .line 156
    .line 157
    .line 158
    move-result-wide v0

    .line 159
    iput-wide v0, p0, Ldz/b;->g:J

    .line 160
    .line 161
    iget-object v0, p0, Ldz/b;->j:Ldz/a;

    .line 162
    .line 163
    return-object v0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    new-instance v1, Ljava/io/IOException;

    .line 166
    .line 167
    const-string v2, "Error detected parsing the header"

    .line 168
    .line 169
    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 170
    .line 171
    .line 172
    throw v1
.end method

.method protected final q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ldz/b;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public read([BII)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Ldz/b;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-nez v0, :cond_4

    .line 7
    .line 8
    invoke-direct {p0}, Ldz/b;->r()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_4

    .line 13
    .line 14
    iget-wide v2, p0, Ldz/b;->h:J

    .line 15
    .line 16
    iget-wide v4, p0, Ldz/b;->g:J

    .line 17
    .line 18
    cmp-long v0, v2, v4

    .line 19
    .line 20
    if-ltz v0, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget-object v0, p0, Ldz/b;->j:Ldz/a;

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    invoke-virtual {p0}, Ldz/b;->available()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    iget-object v0, p0, Ldz/b;->i:Ljava/io/InputStream;

    .line 36
    .line 37
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-ne p1, v1, :cond_2

    .line 42
    .line 43
    if-gtz p3, :cond_1

    .line 44
    .line 45
    const/4 p2, 0x1

    .line 46
    invoke-virtual {p0, p2}, Ldz/b;->y(Z)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 51
    .line 52
    const-string p2, "Truncated TAR archive"

    .line 53
    .line 54
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :cond_2
    invoke-virtual {p0, p1}, Lcz/b;->b(I)V

    .line 59
    .line 60
    .line 61
    iget-wide p2, p0, Ldz/b;->h:J

    .line 62
    .line 63
    int-to-long v0, p1

    .line 64
    add-long/2addr p2, v0

    .line 65
    iput-wide p2, p0, Ldz/b;->h:J

    .line 66
    .line 67
    :goto_0
    return p1

    .line 68
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 69
    .line 70
    const-string p2, "No current tar entry"

    .line 71
    .line 72
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1

    .line 76
    :cond_4
    :goto_1
    return v1
.end method

.method public declared-synchronized reset()V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    monitor-exit p0

    .line 3
    return-void
.end method

.method protected s([B)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget v0, p0, Ldz/b;->d:I

    .line 4
    .line 5
    invoke-static {p1, v0}, Lez/a;->a([BI)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 15
    :goto_1
    return p1
.end method

.method public skip(J)J
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-lez v2, :cond_1

    .line 6
    .line 7
    invoke-direct {p0}, Ldz/b;->r()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-wide v0, p0, Ldz/b;->g:J

    .line 15
    .line 16
    iget-wide v2, p0, Ldz/b;->h:J

    .line 17
    .line 18
    sub-long/2addr v0, v2

    .line 19
    iget-object v2, p0, Ldz/b;->i:Ljava/io/InputStream;

    .line 20
    .line 21
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 22
    .line 23
    .line 24
    move-result-wide p1

    .line 25
    invoke-static {v2, p1, p2}, Lez/c;->c(Ljava/io/InputStream;J)J

    .line 26
    .line 27
    .line 28
    move-result-wide p1

    .line 29
    invoke-virtual {p0, p1, p2}, Lcz/b;->f(J)V

    .line 30
    .line 31
    .line 32
    iget-wide v0, p0, Ldz/b;->h:J

    .line 33
    .line 34
    add-long/2addr v0, p1

    .line 35
    iput-wide v0, p0, Ldz/b;->h:J

    .line 36
    .line 37
    return-wide p1

    .line 38
    :cond_1
    :goto_0
    return-wide v0
.end method

.method t(Ljava/io/InputStream;)Ljava/util/Map;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    iget-object v1, p0, Ldz/b;->m:Ljava/util/Map;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    move v2, v1

    .line 10
    move v3, v2

    .line 11
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    const/4 v5, -0x1

    .line 16
    if-eq v4, v5, :cond_7

    .line 17
    .line 18
    const/4 v6, 0x1

    .line 19
    add-int/2addr v2, v6

    .line 20
    const/16 v7, 0xa

    .line 21
    .line 22
    if-ne v4, v7, :cond_1

    .line 23
    .line 24
    goto :goto_3

    .line 25
    :cond_1
    const/16 v7, 0x20

    .line 26
    .line 27
    if-ne v4, v7, :cond_6

    .line 28
    .line 29
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    .line 30
    .line 31
    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 32
    .line 33
    .line 34
    :goto_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    if-eq v7, v5, :cond_5

    .line 39
    .line 40
    add-int/2addr v2, v6

    .line 41
    const/16 v8, 0x3d

    .line 42
    .line 43
    if-ne v7, v8, :cond_4

    .line 44
    .line 45
    const-string v8, "UTF-8"

    .line 46
    .line 47
    invoke-virtual {v4, v8}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    sub-int/2addr v3, v2

    .line 52
    if-ne v3, v6, :cond_2

    .line 53
    .line 54
    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    new-array v2, v3, [B

    .line 59
    .line 60
    invoke-static {p1, v2}, Lez/c;->a(Ljava/io/InputStream;[B)I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-ne v6, v3, :cond_3

    .line 65
    .line 66
    new-instance v6, Ljava/lang/String;

    .line 67
    .line 68
    add-int/lit8 v3, v3, -0x1

    .line 69
    .line 70
    invoke-direct {v6, v2, v1, v3, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 78
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v1, "Failed to read Paxheader. Expected "

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v1, " bytes, read "

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p1

    .line 108
    :cond_4
    int-to-byte v7, v7

    .line 109
    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_5
    :goto_2
    move v4, v7

    .line 114
    goto :goto_3

    .line 115
    :cond_6
    mul-int/lit8 v3, v3, 0xa

    .line 116
    .line 117
    add-int/lit8 v4, v4, -0x30

    .line 118
    .line 119
    add-int/2addr v3, v4

    .line 120
    goto :goto_0

    .line 121
    :cond_7
    :goto_3
    if-ne v4, v5, :cond_0

    .line 122
    .line 123
    return-object v0
.end method

.method protected x()[B
    .locals 3

    .line 1
    iget v0, p0, Ldz/b;->d:I

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    iget-object v1, p0, Ldz/b;->i:Ljava/io/InputStream;

    .line 6
    .line 7
    invoke-static {v1, v0}, Lez/c;->a(Ljava/io/InputStream;[B)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {p0, v1}, Lcz/b;->b(I)V

    .line 12
    .line 13
    .line 14
    iget v2, p0, Ldz/b;->d:I

    .line 15
    .line 16
    if-eq v1, v2, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    :cond_0
    return-object v0
.end method

.method protected final y(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Ldz/b;->f:Z

    .line 2
    .line 3
    return-void
.end method
