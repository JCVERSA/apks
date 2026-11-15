.class public Lh3/n;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lk2/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh3/n$b;
    }
.end annotation


# instance fields
.field private final a:Lh3/s;

.field private final b:Lh3/d;

.field private final c:Landroidx/media3/common/r;

.field private final d:Ljava/util/List;

.field private final e:Landroidx/media3/common/util/j0;

.field private f:[B

.field private g:Lk2/s0;

.field private h:I

.field private i:I

.field private j:[J

.field private k:J


# direct methods
.method public constructor <init>(Lh3/s;Landroidx/media3/common/r;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh3/n;->a:Lh3/s;

    .line 5
    .line 6
    new-instance v0, Lh3/d;

    .line 7
    .line 8
    invoke-direct {v0}, Lh3/d;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lh3/n;->b:Lh3/d;

    .line 12
    .line 13
    sget-object v0, Landroidx/media3/common/util/a1;->f:[B

    .line 14
    .line 15
    iput-object v0, p0, Lh3/n;->f:[B

    .line 16
    .line 17
    new-instance v0, Landroidx/media3/common/util/j0;

    .line 18
    .line 19
    invoke-direct {v0}, Landroidx/media3/common/util/j0;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lh3/n;->e:Landroidx/media3/common/util/j0;

    .line 23
    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    invoke-virtual {p2}, Landroidx/media3/common/r;->b()Landroidx/media3/common/r$b;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "application/x-media3-cues"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object p2, p2, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, p2}, Landroidx/media3/common/r$b;->S(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-interface {p1}, Lh3/s;->c()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-virtual {p2, p1}, Landroidx/media3/common/r$b;->W(I)Landroidx/media3/common/r$b;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 p1, 0x0

    .line 56
    :goto_0
    iput-object p1, p0, Lh3/n;->c:Landroidx/media3/common/r;

    .line 57
    .line 58
    new-instance p1, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object p1, p0, Lh3/n;->d:Ljava/util/List;

    .line 64
    .line 65
    const/4 p1, 0x0

    .line 66
    iput p1, p0, Lh3/n;->i:I

    .line 67
    .line 68
    sget-object p1, Landroidx/media3/common/util/a1;->g:[J

    .line 69
    .line 70
    iput-object p1, p0, Lh3/n;->j:[J

    .line 71
    .line 72
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    iput-wide p1, p0, Lh3/n;->k:J

    .line 78
    .line 79
    return-void
.end method

.method public static synthetic a(Lh3/n;Lh3/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lh3/n;->g(Lh3/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic g(Lh3/e;)V
    .locals 7

    .line 1
    new-instance v0, Lh3/n$b;

    .line 2
    .line 3
    iget-wide v1, p1, Lh3/e;->b:J

    .line 4
    .line 5
    iget-object v3, p0, Lh3/n;->b:Lh3/d;

    .line 6
    .line 7
    iget-object v4, p1, Lh3/e;->a:Lcom/google/common/collect/ImmutableList;

    .line 8
    .line 9
    iget-wide v5, p1, Lh3/e;->c:J

    .line 10
    .line 11
    invoke-virtual {v3, v4, v5, v6}, Lh3/d;->a(Ljava/util/List;J)[B

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-direct {v0, v1, v2, v3, v4}, Lh3/n$b;-><init>(J[BLh3/n$a;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lh3/n;->d:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    iget-wide v1, p0, Lh3/n;->k:J

    .line 25
    .line 26
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    cmp-long v3, v1, v3

    .line 32
    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    iget-wide v3, p1, Lh3/e;->b:J

    .line 36
    .line 37
    cmp-long p1, v3, v1

    .line 38
    .line 39
    if-ltz p1, :cond_1

    .line 40
    .line 41
    :cond_0
    invoke-direct {p0, v0}, Lh3/n;->l(Lh3/n$b;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method private h()V
    .locals 7

    .line 1
    :try_start_0
    iget-wide v0, p0, Lh3/n;->k:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v2, v0, v2

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    invoke-static {v0, v1}, Lh3/s$b;->c(J)Lh3/s$b;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    move-object v5, v0

    .line 17
    goto :goto_1

    .line 18
    :catch_0
    move-exception v0

    .line 19
    goto :goto_3

    .line 20
    :cond_0
    invoke-static {}, Lh3/s$b;->b()Lh3/s$b;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :goto_1
    iget-object v1, p0, Lh3/n;->a:Lh3/s;

    .line 26
    .line 27
    iget-object v2, p0, Lh3/n;->f:[B

    .line 28
    .line 29
    iget v4, p0, Lh3/n;->h:I

    .line 30
    .line 31
    new-instance v6, Lh3/m;

    .line 32
    .line 33
    invoke-direct {v6, p0}, Lh3/m;-><init>(Lh3/n;)V

    .line 34
    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-interface/range {v1 .. v6}, Lh3/s;->b([BIILh3/s$b;Landroidx/media3/common/util/m;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lh3/n;->d:Ljava/util/List;

    .line 41
    .line 42
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lh3/n;->d:Ljava/util/List;

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    new-array v0, v0, [J

    .line 52
    .line 53
    iput-object v0, p0, Lh3/n;->j:[J

    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    :goto_2
    iget-object v1, p0, Lh3/n;->d:Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-ge v0, v1, :cond_1

    .line 63
    .line 64
    iget-object v1, p0, Lh3/n;->j:[J

    .line 65
    .line 66
    iget-object v2, p0, Lh3/n;->d:Ljava/util/List;

    .line 67
    .line 68
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Lh3/n$b;

    .line 73
    .line 74
    invoke-static {v2}, Lh3/n$b;->a(Lh3/n$b;)J

    .line 75
    .line 76
    .line 77
    move-result-wide v2

    .line 78
    aput-wide v2, v1, v0

    .line 79
    .line 80
    add-int/lit8 v0, v0, 0x1

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_1
    sget-object v0, Landroidx/media3/common/util/a1;->f:[B

    .line 84
    .line 85
    iput-object v0, p0, Lh3/n;->f:[B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    return-void

    .line 88
    :goto_3
    const-string v1, "SubtitleParser failed."

    .line 89
    .line 90
    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    throw v0
.end method

.method private i(Lk2/s;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lh3/n;->f:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    iget v2, p0, Lh3/n;->h:I

    .line 5
    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    .line 8
    array-length v1, v0

    .line 9
    add-int/lit16 v1, v1, 0x400

    .line 10
    .line 11
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lh3/n;->f:[B

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lh3/n;->f:[B

    .line 18
    .line 19
    iget v1, p0, Lh3/n;->h:I

    .line 20
    .line 21
    array-length v2, v0

    .line 22
    sub-int/2addr v2, v1

    .line 23
    invoke-interface {p1, v0, v1, v2}, Lk2/s;->read([BII)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, -0x1

    .line 28
    if-eq v0, v1, :cond_1

    .line 29
    .line 30
    iget v2, p0, Lh3/n;->h:I

    .line 31
    .line 32
    add-int/2addr v2, v0

    .line 33
    iput v2, p0, Lh3/n;->h:I

    .line 34
    .line 35
    :cond_1
    invoke-interface {p1}, Lk2/s;->getLength()J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    const-wide/16 v4, -0x1

    .line 40
    .line 41
    cmp-long p1, v2, v4

    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    iget p1, p0, Lh3/n;->h:I

    .line 46
    .line 47
    int-to-long v4, p1

    .line 48
    cmp-long p1, v4, v2

    .line 49
    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    :cond_2
    if-ne v0, v1, :cond_4

    .line 53
    .line 54
    :cond_3
    const/4 p1, 0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_4
    const/4 p1, 0x0

    .line 57
    :goto_0
    return p1
.end method

.method private j(Lk2/s;)Z
    .locals 4

    .line 1
    invoke-interface {p1}, Lk2/s;->getLength()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, -0x1

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Lk2/s;->getLength()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->d(J)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/16 v0, 0x400

    .line 21
    .line 22
    :goto_0
    invoke-interface {p1, v0}, Lk2/s;->skip(I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/4 v0, -0x1

    .line 27
    if-ne p1, v0, :cond_1

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/4 p1, 0x0

    .line 32
    :goto_1
    return p1
.end method

.method private k()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lh3/n;->k:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v2, v0, v2

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v2, p0, Lh3/n;->j:[J

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-static {v2, v0, v1, v3, v3}, Landroidx/media3/common/util/a1;->h([JJZZ)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    :goto_0
    iget-object v1, p0, Lh3/n;->d:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-ge v0, v1, :cond_1

    .line 28
    .line 29
    iget-object v1, p0, Lh3/n;->d:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lh3/n$b;

    .line 36
    .line 37
    invoke-direct {p0, v1}, Lh3/n;->l(Lh3/n$b;)V

    .line 38
    .line 39
    .line 40
    add-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    return-void
.end method

.method private l(Lh3/n$b;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lh3/n;->g:Lk2/s0;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lh3/n$b;->b(Lh3/n$b;)[B

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    array-length v5, v0

    .line 11
    iget-object v0, p0, Lh3/n;->e:Landroidx/media3/common/util/j0;

    .line 12
    .line 13
    invoke-static {p1}, Lh3/n$b;->b(Lh3/n$b;)[B

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/j0;->T([B)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lh3/n;->g:Lk2/s0;

    .line 21
    .line 22
    iget-object v1, p0, Lh3/n;->e:Landroidx/media3/common/util/j0;

    .line 23
    .line 24
    invoke-interface {v0, v1, v5}, Lk2/s0;->c(Landroidx/media3/common/util/j0;I)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lh3/n;->g:Lk2/s0;

    .line 28
    .line 29
    invoke-static {p1}, Lh3/n$b;->a(Lh3/n$b;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v7, 0x0

    .line 35
    const/4 v4, 0x1

    .line 36
    invoke-interface/range {v1 .. v7}, Lk2/s0;->b(JIIILk2/s0$a;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public b(Lk2/s;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method public synthetic c()Lk2/r;
    .locals 1

    .line 1
    invoke-static {p0}, Lk2/q;->b(Lk2/r;)Lk2/r;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public d(Lk2/s;Lk2/l0;)I
    .locals 7

    .line 1
    iget p2, p0, Lh3/n;->i:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 v2, 0x5

    .line 8
    if-eq p2, v2, :cond_0

    .line 9
    .line 10
    move p2, v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move p2, v1

    .line 13
    :goto_0
    invoke-static {p2}, Landroidx/media3/common/util/a;->g(Z)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Lh3/n;->i:I

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    if-ne p2, v0, :cond_3

    .line 20
    .line 21
    invoke-interface {p1}, Lk2/s;->getLength()J

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    const-wide/16 v5, -0x1

    .line 26
    .line 27
    cmp-long p2, v3, v5

    .line 28
    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    invoke-interface {p1}, Lk2/s;->getLength()J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    invoke-static {v3, v4}, Lcom/google/common/primitives/Ints;->d(J)I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/16 p2, 0x400

    .line 41
    .line 42
    :goto_1
    iget-object v0, p0, Lh3/n;->f:[B

    .line 43
    .line 44
    array-length v0, v0

    .line 45
    if-le p2, v0, :cond_2

    .line 46
    .line 47
    new-array p2, p2, [B

    .line 48
    .line 49
    iput-object p2, p0, Lh3/n;->f:[B

    .line 50
    .line 51
    :cond_2
    iput v1, p0, Lh3/n;->h:I

    .line 52
    .line 53
    iput v2, p0, Lh3/n;->i:I

    .line 54
    .line 55
    :cond_3
    iget p2, p0, Lh3/n;->i:I

    .line 56
    .line 57
    const/4 v0, 0x4

    .line 58
    if-ne p2, v2, :cond_4

    .line 59
    .line 60
    invoke-direct {p0, p1}, Lh3/n;->i(Lk2/s;)Z

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    if-eqz p2, :cond_4

    .line 65
    .line 66
    invoke-direct {p0}, Lh3/n;->h()V

    .line 67
    .line 68
    .line 69
    iput v0, p0, Lh3/n;->i:I

    .line 70
    .line 71
    :cond_4
    iget p2, p0, Lh3/n;->i:I

    .line 72
    .line 73
    const/4 v2, 0x3

    .line 74
    if-ne p2, v2, :cond_5

    .line 75
    .line 76
    invoke-direct {p0, p1}, Lh3/n;->j(Lk2/s;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_5

    .line 81
    .line 82
    invoke-direct {p0}, Lh3/n;->k()V

    .line 83
    .line 84
    .line 85
    iput v0, p0, Lh3/n;->i:I

    .line 86
    .line 87
    :cond_5
    iget p1, p0, Lh3/n;->i:I

    .line 88
    .line 89
    if-ne p1, v0, :cond_6

    .line 90
    .line 91
    const/4 p1, -0x1

    .line 92
    return p1

    .line 93
    :cond_6
    return v1
.end method

.method public e(Lk2/t;)V
    .locals 7

    .line 1
    iget v0, p0, Lh3/n;->i:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    invoke-interface {p1, v1, v0}, Lk2/t;->track(II)Lk2/s0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lh3/n;->g:Lk2/s0;

    .line 19
    .line 20
    iget-object v3, p0, Lh3/n;->c:Landroidx/media3/common/r;

    .line 21
    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    invoke-interface {v0, v3}, Lk2/s0;->d(Landroidx/media3/common/r;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Lk2/t;->endTracks()V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lk2/h0;

    .line 31
    .line 32
    const-wide/16 v3, 0x0

    .line 33
    .line 34
    new-array v5, v2, [J

    .line 35
    .line 36
    aput-wide v3, v5, v1

    .line 37
    .line 38
    new-array v6, v2, [J

    .line 39
    .line 40
    aput-wide v3, v6, v1

    .line 41
    .line 42
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    invoke-direct {v0, v5, v6, v3, v4}, Lk2/h0;-><init>([J[JJ)V

    .line 48
    .line 49
    .line 50
    invoke-interface {p1, v0}, Lk2/t;->d(Lk2/m0;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    iput v2, p0, Lh3/n;->i:I

    .line 54
    .line 55
    return-void
.end method

.method public synthetic f()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {p0}, Lk2/q;->a(Lk2/r;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public release()V
    .locals 2

    .line 1
    iget v0, p0, Lh3/n;->i:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lh3/n;->a:Lh3/s;

    .line 8
    .line 9
    invoke-interface {v0}, Lh3/s;->reset()V

    .line 10
    .line 11
    .line 12
    iput v1, p0, Lh3/n;->i:I

    .line 13
    .line 14
    return-void
.end method

.method public seek(JJ)V
    .locals 1

    .line 1
    iget p1, p0, Lh3/n;->i:I

    .line 2
    .line 3
    const/4 p2, 0x1

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x5

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    move p1, p2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    invoke-static {p1}, Landroidx/media3/common/util/a;->g(Z)V

    .line 13
    .line 14
    .line 15
    iput-wide p3, p0, Lh3/n;->k:J

    .line 16
    .line 17
    iget p1, p0, Lh3/n;->i:I

    .line 18
    .line 19
    const/4 p3, 0x2

    .line 20
    if-ne p1, p3, :cond_1

    .line 21
    .line 22
    iput p2, p0, Lh3/n;->i:I

    .line 23
    .line 24
    :cond_1
    iget p1, p0, Lh3/n;->i:I

    .line 25
    .line 26
    const/4 p2, 0x4

    .line 27
    if-ne p1, p2, :cond_2

    .line 28
    .line 29
    const/4 p1, 0x3

    .line 30
    iput p1, p0, Lh3/n;->i:I

    .line 31
    .line 32
    :cond_2
    return-void
.end method
