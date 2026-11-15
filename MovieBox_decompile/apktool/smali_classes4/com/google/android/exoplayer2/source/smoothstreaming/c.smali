.class final Lcom/google/android/exoplayer2/source/smoothstreaming/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/n;
.implements Lcom/google/android/exoplayer2/source/b0$a;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;

.field private final b:Lcom/google/android/exoplayer2/upstream/k0;

.field private final c:Lcom/google/android/exoplayer2/upstream/a0;

.field private final d:Lcom/google/android/exoplayer2/drm/u;

.field private final e:Lcom/google/android/exoplayer2/drm/s$a;

.field private final f:Lcom/google/android/exoplayer2/upstream/z;

.field private final g:Lcom/google/android/exoplayer2/source/p$a;

.field private final h:Lcom/google/android/exoplayer2/upstream/b;

.field private final i:Lv9/y;

.field private final j:Lv9/d;

.field private k:Lcom/google/android/exoplayer2/source/n$a;

.field private l:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;

.field private m:[Lx9/i;

.field private n:Lcom/google/android/exoplayer2/source/b0;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;Lcom/google/android/exoplayer2/upstream/k0;Lv9/d;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/upstream/z;Lcom/google/android/exoplayer2/source/p$a;Lcom/google/android/exoplayer2/upstream/a0;Lcom/google/android/exoplayer2/upstream/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->l:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->a:Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->b:Lcom/google/android/exoplayer2/upstream/k0;

    .line 9
    .line 10
    iput-object p9, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->c:Lcom/google/android/exoplayer2/upstream/a0;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->d:Lcom/google/android/exoplayer2/drm/u;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->e:Lcom/google/android/exoplayer2/drm/s$a;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->f:Lcom/google/android/exoplayer2/upstream/z;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->g:Lcom/google/android/exoplayer2/source/p$a;

    .line 19
    .line 20
    iput-object p10, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->h:Lcom/google/android/exoplayer2/upstream/b;

    .line 21
    .line 22
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->j:Lv9/d;

    .line 23
    .line 24
    invoke-static {p1, p5}, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->c(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;Lcom/google/android/exoplayer2/drm/u;)Lv9/y;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->i:Lv9/y;

    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->i(I)[Lx9/i;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->m:[Lx9/i;

    .line 36
    .line 37
    invoke-interface {p4, p1}, Lv9/d;->a([Lcom/google/android/exoplayer2/source/b0;)Lcom/google/android/exoplayer2/source/b0;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->n:Lcom/google/android/exoplayer2/source/b0;

    .line 42
    .line 43
    return-void
.end method

.method private a(Lna/s;J)Lx9/i;
    .locals 15

    .line 1
    move-object v13, p0

    .line 2
    iget-object v0, v13, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->i:Lv9/y;

    .line 3
    .line 4
    invoke-interface/range {p1 .. p1}, Lna/v;->getTrackGroup()Lv9/w;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Lv9/y;->c(Lv9/w;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v2, v13, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->a:Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;

    .line 13
    .line 14
    iget-object v3, v13, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->c:Lcom/google/android/exoplayer2/upstream/a0;

    .line 15
    .line 16
    iget-object v4, v13, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->l:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;

    .line 17
    .line 18
    iget-object v7, v13, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->b:Lcom/google/android/exoplayer2/upstream/k0;

    .line 19
    .line 20
    move v5, v0

    .line 21
    move-object/from16 v6, p1

    .line 22
    .line 23
    invoke-interface/range {v2 .. v7}, Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;->a(Lcom/google/android/exoplayer2/upstream/a0;Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;ILna/s;Lcom/google/android/exoplayer2/upstream/k0;)Lcom/google/android/exoplayer2/source/smoothstreaming/b;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    new-instance v14, Lx9/i;

    .line 28
    .line 29
    iget-object v1, v13, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->l:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->f:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;

    .line 32
    .line 33
    aget-object v0, v1, v0

    .line 34
    .line 35
    iget v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->a:I

    .line 36
    .line 37
    iget-object v6, v13, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->h:Lcom/google/android/exoplayer2/upstream/b;

    .line 38
    .line 39
    iget-object v9, v13, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->d:Lcom/google/android/exoplayer2/drm/u;

    .line 40
    .line 41
    iget-object v10, v13, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->e:Lcom/google/android/exoplayer2/drm/s$a;

    .line 42
    .line 43
    iget-object v11, v13, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->f:Lcom/google/android/exoplayer2/upstream/z;

    .line 44
    .line 45
    iget-object v12, v13, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->g:Lcom/google/android/exoplayer2/source/p$a;

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    const/4 v3, 0x0

    .line 49
    move-object v0, v14

    .line 50
    move-object v5, p0

    .line 51
    move-wide/from16 v7, p2

    .line 52
    .line 53
    invoke-direct/range {v0 .. v12}, Lx9/i;-><init>(I[I[Lcom/google/android/exoplayer2/p1;Lx9/j;Lcom/google/android/exoplayer2/source/b0$a;Lcom/google/android/exoplayer2/upstream/b;JLcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/upstream/z;Lcom/google/android/exoplayer2/source/p$a;)V

    .line 54
    .line 55
    .line 56
    return-object v14
.end method

.method private static c(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;Lcom/google/android/exoplayer2/drm/u;)Lv9/y;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->f:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    new-array v0, v0, [Lv9/w;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->f:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;

    .line 9
    .line 10
    array-length v4, v3

    .line 11
    if-ge v2, v4, :cond_1

    .line 12
    .line 13
    aget-object v3, v3, v2

    .line 14
    .line 15
    iget-object v3, v3, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->j:[Lcom/google/android/exoplayer2/p1;

    .line 16
    .line 17
    array-length v4, v3

    .line 18
    new-array v4, v4, [Lcom/google/android/exoplayer2/p1;

    .line 19
    .line 20
    move v5, v1

    .line 21
    :goto_1
    array-length v6, v3

    .line 22
    if-ge v5, v6, :cond_0

    .line 23
    .line 24
    aget-object v6, v3, v5

    .line 25
    .line 26
    invoke-interface {p1, v6}, Lcom/google/android/exoplayer2/drm/u;->a(Lcom/google/android/exoplayer2/p1;)I

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/p1;->c(I)Lcom/google/android/exoplayer2/p1;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    aput-object v6, v4, v5

    .line 35
    .line 36
    add-int/lit8 v5, v5, 0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    new-instance v3, Lv9/w;

    .line 40
    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-direct {v3, v5, v4}, Lv9/w;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/p1;)V

    .line 46
    .line 47
    .line 48
    aput-object v3, v0, v2

    .line 49
    .line 50
    add-int/lit8 v2, v2, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    new-instance p0, Lv9/y;

    .line 54
    .line 55
    invoke-direct {p0, v0}, Lv9/y;-><init>([Lv9/w;)V

    .line 56
    .line 57
    .line 58
    return-object p0
.end method

.method private static i(I)[Lx9/i;
    .locals 0

    .line 1
    new-array p0, p0, [Lx9/i;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public b(JLcom/google/android/exoplayer2/d3;)J
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->m:[Lx9/i;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    iget v4, v3, Lx9/i;->a:I

    .line 10
    .line 11
    const/4 v5, 0x2

    .line 12
    if-ne v4, v5, :cond_0

    .line 13
    .line 14
    invoke-virtual {v3, p1, p2, p3}, Lx9/i;->b(JLcom/google/android/exoplayer2/d3;)J

    .line 15
    .line 16
    .line 17
    move-result-wide p1

    .line 18
    return-wide p1

    .line 19
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    return-wide p1
.end method

.method public continueLoading(J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->n:Lcom/google/android/exoplayer2/source/b0;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/b0;->continueLoading(J)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public discardBuffer(JZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->m:[Lx9/i;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    invoke-virtual {v3, p1, p2, p3}, Lx9/i;->discardBuffer(JZ)V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.method public e([Lna/s;[Z[Lv9/s;[ZJ)J
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    array-length v2, p1

    .line 8
    if-ge v1, v2, :cond_4

    .line 9
    .line 10
    aget-object v2, p3, v1

    .line 11
    .line 12
    if-eqz v2, :cond_2

    .line 13
    .line 14
    check-cast v2, Lx9/i;

    .line 15
    .line 16
    aget-object v3, p1, v1

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    aget-boolean v3, p2, v1

    .line 21
    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-virtual {v2}, Lx9/i;->q()Lx9/j;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lcom/google/android/exoplayer2/source/smoothstreaming/b;

    .line 30
    .line 31
    aget-object v4, p1, v1

    .line 32
    .line 33
    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/source/smoothstreaming/b;->a(Lna/s;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_1
    :goto_1
    invoke-virtual {v2}, Lx9/i;->B()V

    .line 41
    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    aput-object v2, p3, v1

    .line 45
    .line 46
    :cond_2
    :goto_2
    aget-object v2, p3, v1

    .line 47
    .line 48
    if-nez v2, :cond_3

    .line 49
    .line 50
    aget-object v2, p1, v1

    .line 51
    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    invoke-direct {p0, v2, p5, p6}, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->a(Lna/s;J)Lx9/i;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    aput-object v2, p3, v1

    .line 62
    .line 63
    const/4 v2, 0x1

    .line 64
    aput-boolean v2, p4, v1

    .line 65
    .line 66
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->i(I)[Lx9/i;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->m:[Lx9/i;

    .line 78
    .line 79
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->j:Lv9/d;

    .line 83
    .line 84
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->m:[Lx9/i;

    .line 85
    .line 86
    invoke-interface {p1, p2}, Lv9/d;->a([Lcom/google/android/exoplayer2/source/b0;)Lcom/google/android/exoplayer2/source/b0;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->n:Lcom/google/android/exoplayer2/source/b0;

    .line 91
    .line 92
    return-wide p5
.end method

.method public f(Lcom/google/android/exoplayer2/source/n$a;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->k:Lcom/google/android/exoplayer2/source/n$a;

    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/n$a;->h(Lcom/google/android/exoplayer2/source/n;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic g(Lcom/google/android/exoplayer2/source/b0;)V
    .locals 0

    .line 1
    check-cast p1, Lx9/i;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->j(Lx9/i;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->n:Lcom/google/android/exoplayer2/source/b0;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/b0;->getBufferedPositionUs()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->n:Lcom/google/android/exoplayer2/source/b0;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/b0;->getNextLoadPositionUs()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getTrackGroups()Lv9/y;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->i:Lv9/y;

    .line 2
    .line 3
    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->n:Lcom/google/android/exoplayer2/source/b0;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/b0;->isLoading()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public j(Lx9/i;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->k:Lcom/google/android/exoplayer2/source/n$a;

    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/b0$a;->g(Lcom/google/android/exoplayer2/source/b0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->m:[Lx9/i;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    invoke-virtual {v3}, Lx9/i;->B()V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->k:Lcom/google/android/exoplayer2/source/n$a;

    .line 17
    .line 18
    return-void
.end method

.method public l(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->l:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->m:[Lx9/i;

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_0

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    invoke-virtual {v3}, Lx9/i;->q()Lx9/j;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    check-cast v3, Lcom/google/android/exoplayer2/source/smoothstreaming/b;

    .line 16
    .line 17
    invoke-interface {v3, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/b;->c(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->k:Lcom/google/android/exoplayer2/source/n$a;

    .line 24
    .line 25
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/b0$a;->g(Lcom/google/android/exoplayer2/source/b0;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public maybeThrowPrepareError()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->c:Lcom/google/android/exoplayer2/upstream/a0;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/a0;->maybeThrowError()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->n:Lcom/google/android/exoplayer2/source/b0;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/b0;->reevaluateBuffer(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public seekToUs(J)J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->m:[Lx9/i;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    invoke-virtual {v3, p1, p2}, Lx9/i;->E(J)V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-wide p1
.end method
