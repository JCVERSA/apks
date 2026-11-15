.class final Landroidx/media3/exoplayer/source/g0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/q;
.implements Landroidx/media3/exoplayer/upstream/Loader$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/g0$b;,
        Landroidx/media3/exoplayer/source/g0$c;
    }
.end annotation


# instance fields
.field private final a:Lw1/h;

.field private final b:Landroidx/media3/datasource/a$a;

.field private final c:Lw1/n;

.field private final d:Landroidx/media3/exoplayer/upstream/m;

.field private final e:Landroidx/media3/exoplayer/source/s$a;

.field private final f:Lf2/z;

.field private final g:Ljava/util/ArrayList;

.field private final h:J

.field final i:Landroidx/media3/exoplayer/upstream/Loader;

.field final j:Landroidx/media3/common/r;

.field final k:Z

.field l:Z

.field m:[B

.field n:I


# direct methods
.method public constructor <init>(Lw1/h;Landroidx/media3/datasource/a$a;Lw1/n;Landroidx/media3/common/r;JLandroidx/media3/exoplayer/upstream/m;Landroidx/media3/exoplayer/source/s$a;ZLandroidx/media3/exoplayer/util/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/source/g0;->a:Lw1/h;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/source/g0;->b:Landroidx/media3/datasource/a$a;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/media3/exoplayer/source/g0;->c:Lw1/n;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/media3/exoplayer/source/g0;->j:Landroidx/media3/common/r;

    .line 11
    .line 12
    iput-wide p5, p0, Landroidx/media3/exoplayer/source/g0;->h:J

    .line 13
    .line 14
    iput-object p7, p0, Landroidx/media3/exoplayer/source/g0;->d:Landroidx/media3/exoplayer/upstream/m;

    .line 15
    .line 16
    iput-object p8, p0, Landroidx/media3/exoplayer/source/g0;->e:Landroidx/media3/exoplayer/source/s$a;

    .line 17
    .line 18
    iput-boolean p9, p0, Landroidx/media3/exoplayer/source/g0;->k:Z

    .line 19
    .line 20
    new-instance p1, Lf2/z;

    .line 21
    .line 22
    new-instance p2, Landroidx/media3/common/f0;

    .line 23
    .line 24
    const/4 p3, 0x1

    .line 25
    new-array p5, p3, [Landroidx/media3/common/r;

    .line 26
    .line 27
    const/4 p6, 0x0

    .line 28
    aput-object p4, p5, p6

    .line 29
    .line 30
    invoke-direct {p2, p5}, Landroidx/media3/common/f0;-><init>([Landroidx/media3/common/r;)V

    .line 31
    .line 32
    .line 33
    new-array p3, p3, [Landroidx/media3/common/f0;

    .line 34
    .line 35
    aput-object p2, p3, p6

    .line 36
    .line 37
    invoke-direct {p1, p3}, Lf2/z;-><init>([Landroidx/media3/common/f0;)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Landroidx/media3/exoplayer/source/g0;->f:Lf2/z;

    .line 41
    .line 42
    new-instance p1, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Landroidx/media3/exoplayer/source/g0;->g:Ljava/util/ArrayList;

    .line 48
    .line 49
    if-eqz p10, :cond_0

    .line 50
    .line 51
    new-instance p1, Landroidx/media3/exoplayer/upstream/Loader;

    .line 52
    .line 53
    invoke-direct {p1, p10}, Landroidx/media3/exoplayer/upstream/Loader;-><init>(Landroidx/media3/exoplayer/util/c;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    new-instance p1, Landroidx/media3/exoplayer/upstream/Loader;

    .line 58
    .line 59
    const-string p2, "SingleSampleMediaPeriod"

    .line 60
    .line 61
    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    iput-object p1, p0, Landroidx/media3/exoplayer/source/g0;->i:Landroidx/media3/exoplayer/upstream/Loader;

    .line 65
    .line 66
    return-void
.end method

.method static synthetic c(Landroidx/media3/exoplayer/source/g0;)Landroidx/media3/exoplayer/source/s$a;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/source/g0;->e:Landroidx/media3/exoplayer/source/s$a;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a(Landroidx/media3/exoplayer/v2;)Z
    .locals 3

    .line 1
    iget-boolean p1, p0, Landroidx/media3/exoplayer/source/g0;->l:Z

    .line 2
    .line 3
    if-nez p1, :cond_2

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/media3/exoplayer/source/g0;->i:Landroidx/media3/exoplayer/upstream/Loader;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/media3/exoplayer/upstream/Loader;->i()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_2

    .line 12
    .line 13
    iget-object p1, p0, Landroidx/media3/exoplayer/source/g0;->i:Landroidx/media3/exoplayer/upstream/Loader;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/media3/exoplayer/upstream/Loader;->h()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/source/g0;->b:Landroidx/media3/datasource/a$a;

    .line 23
    .line 24
    invoke-interface {p1}, Landroidx/media3/datasource/a$a;->createDataSource()Landroidx/media3/datasource/a;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object v0, p0, Landroidx/media3/exoplayer/source/g0;->c:Lw1/n;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-interface {p1, v0}, Landroidx/media3/datasource/a;->c(Lw1/n;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    new-instance v0, Landroidx/media3/exoplayer/source/g0$c;

    .line 36
    .line 37
    iget-object v1, p0, Landroidx/media3/exoplayer/source/g0;->a:Lw1/h;

    .line 38
    .line 39
    invoke-direct {v0, v1, p1}, Landroidx/media3/exoplayer/source/g0$c;-><init>(Lw1/h;Landroidx/media3/datasource/a;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Landroidx/media3/exoplayer/source/g0;->i:Landroidx/media3/exoplayer/upstream/Loader;

    .line 43
    .line 44
    iget-object v1, p0, Landroidx/media3/exoplayer/source/g0;->d:Landroidx/media3/exoplayer/upstream/m;

    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    invoke-interface {v1, v2}, Landroidx/media3/exoplayer/upstream/m;->a(I)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-virtual {p1, v0, p0, v1}, Landroidx/media3/exoplayer/upstream/Loader;->m(Landroidx/media3/exoplayer/upstream/Loader$d;Landroidx/media3/exoplayer/upstream/Loader$b;I)J

    .line 52
    .line 53
    .line 54
    return v2

    .line 55
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 56
    return p1
.end method

.method public b(JLandroidx/media3/exoplayer/c4;)J
    .locals 0

    .line 1
    return-wide p1
.end method

.method public d(Landroidx/media3/exoplayer/source/g0$c;JJZ)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-static/range {p1 .. p1}, Landroidx/media3/exoplayer/source/g0$c;->a(Landroidx/media3/exoplayer/source/g0$c;)Lw1/l;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    new-instance v15, Lf2/i;

    .line 10
    .line 11
    iget-wide v4, v1, Landroidx/media3/exoplayer/source/g0$c;->a:J

    .line 12
    .line 13
    iget-object v6, v1, Landroidx/media3/exoplayer/source/g0$c;->b:Lw1/h;

    .line 14
    .line 15
    invoke-virtual {v2}, Lw1/l;->e()Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object v7

    .line 19
    invoke-virtual {v2}, Lw1/l;->f()Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object v8

    .line 23
    invoke-virtual {v2}, Lw1/l;->d()J

    .line 24
    .line 25
    .line 26
    move-result-wide v13

    .line 27
    move-object v3, v15

    .line 28
    move-wide/from16 v9, p2

    .line 29
    .line 30
    move-wide/from16 v11, p4

    .line 31
    .line 32
    invoke-direct/range {v3 .. v14}, Lf2/i;-><init>(JLw1/h;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 33
    .line 34
    .line 35
    iget-object v2, v0, Landroidx/media3/exoplayer/source/g0;->d:Landroidx/media3/exoplayer/upstream/m;

    .line 36
    .line 37
    iget-wide v3, v1, Landroidx/media3/exoplayer/source/g0$c;->a:J

    .line 38
    .line 39
    invoke-interface {v2, v3, v4}, Landroidx/media3/exoplayer/upstream/m;->b(J)V

    .line 40
    .line 41
    .line 42
    iget-object v3, v0, Landroidx/media3/exoplayer/source/g0;->e:Landroidx/media3/exoplayer/source/s$a;

    .line 43
    .line 44
    const-wide/16 v10, 0x0

    .line 45
    .line 46
    iget-wide v12, v0, Landroidx/media3/exoplayer/source/g0;->h:J

    .line 47
    .line 48
    const/4 v5, 0x1

    .line 49
    const/4 v6, -0x1

    .line 50
    const/4 v7, 0x0

    .line 51
    const/4 v8, 0x0

    .line 52
    const/4 v9, 0x0

    .line 53
    move-object v4, v15

    .line 54
    invoke-virtual/range {v3 .. v13}, Landroidx/media3/exoplayer/source/s$a;->t(Lf2/i;IILandroidx/media3/common/r;ILjava/lang/Object;JJ)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public discardBuffer(JZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public e([Li2/z;[Z[Lf2/u;[ZJ)J
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    .line 3
    if-ge v0, v1, :cond_3

    .line 4
    .line 5
    aget-object v1, p3, v0

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    aget-object v3, p1, v0

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    aget-boolean v3, p2, v0

    .line 15
    .line 16
    if-nez v3, :cond_1

    .line 17
    .line 18
    :cond_0
    iget-object v3, p0, Landroidx/media3/exoplayer/source/g0;->g:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    aput-object v2, p3, v0

    .line 24
    .line 25
    :cond_1
    aget-object v1, p3, v0

    .line 26
    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    aget-object v1, p1, v0

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    new-instance v1, Landroidx/media3/exoplayer/source/g0$b;

    .line 34
    .line 35
    invoke-direct {v1, p0, v2}, Landroidx/media3/exoplayer/source/g0$b;-><init>(Landroidx/media3/exoplayer/source/g0;Landroidx/media3/exoplayer/source/g0$a;)V

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Landroidx/media3/exoplayer/source/g0;->g:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    aput-object v1, p3, v0

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    aput-boolean v1, p4, v0

    .line 47
    .line 48
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    return-wide p5
.end method

.method public f(Landroidx/media3/exoplayer/source/q$a;J)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/q$a;->g(Landroidx/media3/exoplayer/source/q;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public g(Landroidx/media3/exoplayer/source/g0$c;JJ)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-static/range {p1 .. p1}, Landroidx/media3/exoplayer/source/g0$c;->a(Landroidx/media3/exoplayer/source/g0$c;)Lw1/l;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lw1/l;->d()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    long-to-int v2, v2

    .line 14
    iput v2, v0, Landroidx/media3/exoplayer/source/g0;->n:I

    .line 15
    .line 16
    invoke-static/range {p1 .. p1}, Landroidx/media3/exoplayer/source/g0$c;->b(Landroidx/media3/exoplayer/source/g0$c;)[B

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, [B

    .line 25
    .line 26
    iput-object v2, v0, Landroidx/media3/exoplayer/source/g0;->m:[B

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    iput-boolean v2, v0, Landroidx/media3/exoplayer/source/g0;->l:Z

    .line 30
    .line 31
    invoke-static/range {p1 .. p1}, Landroidx/media3/exoplayer/source/g0$c;->a(Landroidx/media3/exoplayer/source/g0$c;)Lw1/l;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    new-instance v15, Lf2/i;

    .line 36
    .line 37
    iget-wide v4, v1, Landroidx/media3/exoplayer/source/g0$c;->a:J

    .line 38
    .line 39
    iget-object v6, v1, Landroidx/media3/exoplayer/source/g0$c;->b:Lw1/h;

    .line 40
    .line 41
    invoke-virtual {v2}, Lw1/l;->e()Landroid/net/Uri;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    invoke-virtual {v2}, Lw1/l;->f()Ljava/util/Map;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    iget v2, v0, Landroidx/media3/exoplayer/source/g0;->n:I

    .line 50
    .line 51
    int-to-long v13, v2

    .line 52
    move-object v3, v15

    .line 53
    move-wide/from16 v9, p2

    .line 54
    .line 55
    move-wide/from16 v11, p4

    .line 56
    .line 57
    invoke-direct/range {v3 .. v14}, Lf2/i;-><init>(JLw1/h;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 58
    .line 59
    .line 60
    iget-object v2, v0, Landroidx/media3/exoplayer/source/g0;->d:Landroidx/media3/exoplayer/upstream/m;

    .line 61
    .line 62
    iget-wide v3, v1, Landroidx/media3/exoplayer/source/g0$c;->a:J

    .line 63
    .line 64
    invoke-interface {v2, v3, v4}, Landroidx/media3/exoplayer/upstream/m;->b(J)V

    .line 65
    .line 66
    .line 67
    iget-object v3, v0, Landroidx/media3/exoplayer/source/g0;->e:Landroidx/media3/exoplayer/source/s$a;

    .line 68
    .line 69
    iget-object v7, v0, Landroidx/media3/exoplayer/source/g0;->j:Landroidx/media3/common/r;

    .line 70
    .line 71
    const-wide/16 v10, 0x0

    .line 72
    .line 73
    iget-wide v12, v0, Landroidx/media3/exoplayer/source/g0;->h:J

    .line 74
    .line 75
    const/4 v5, 0x1

    .line 76
    const/4 v6, -0x1

    .line 77
    const/4 v8, 0x0

    .line 78
    const/4 v9, 0x0

    .line 79
    move-object v4, v15

    .line 80
    invoke-virtual/range {v3 .. v13}, Landroidx/media3/exoplayer/source/s$a;->w(Lf2/i;IILandroidx/media3/common/r;ILjava/lang/Object;JJ)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/g0;->l:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-wide/high16 v0, -0x8000000000000000L

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    :goto_0
    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/g0;->l:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/source/g0;->i:Landroidx/media3/exoplayer/upstream/Loader;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->i()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    const-wide/high16 v0, -0x8000000000000000L

    .line 18
    .line 19
    :goto_1
    return-wide v0
.end method

.method public getTrackGroups()Lf2/z;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/g0;->f:Lf2/z;

    .line 2
    .line 3
    return-object v0
.end method

.method public h(Landroidx/media3/exoplayer/source/g0$c;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$c;
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v13, p6

    .line 6
    .line 7
    move/from16 v2, p7

    .line 8
    .line 9
    invoke-static/range {p1 .. p1}, Landroidx/media3/exoplayer/source/g0$c;->a(Landroidx/media3/exoplayer/source/g0$c;)Lw1/l;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    new-instance v4, Lf2/i;

    .line 14
    .line 15
    iget-wide v5, v1, Landroidx/media3/exoplayer/source/g0$c;->a:J

    .line 16
    .line 17
    iget-object v7, v1, Landroidx/media3/exoplayer/source/g0$c;->b:Lw1/h;

    .line 18
    .line 19
    invoke-virtual {v3}, Lw1/l;->e()Landroid/net/Uri;

    .line 20
    .line 21
    .line 22
    move-result-object v18

    .line 23
    invoke-virtual {v3}, Lw1/l;->f()Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    move-result-object v19

    .line 27
    invoke-virtual {v3}, Lw1/l;->d()J

    .line 28
    .line 29
    .line 30
    move-result-wide v24

    .line 31
    move-object v14, v4

    .line 32
    move-wide v15, v5

    .line 33
    move-object/from16 v17, v7

    .line 34
    .line 35
    move-wide/from16 v20, p2

    .line 36
    .line 37
    move-wide/from16 v22, p4

    .line 38
    .line 39
    invoke-direct/range {v14 .. v25}, Lf2/i;-><init>(JLw1/h;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 40
    .line 41
    .line 42
    new-instance v3, Lf2/j;

    .line 43
    .line 44
    iget-object v5, v0, Landroidx/media3/exoplayer/source/g0;->j:Landroidx/media3/common/r;

    .line 45
    .line 46
    iget-wide v6, v0, Landroidx/media3/exoplayer/source/g0;->h:J

    .line 47
    .line 48
    invoke-static {v6, v7}, Landroidx/media3/common/util/a1;->y1(J)J

    .line 49
    .line 50
    .line 51
    move-result-wide v34

    .line 52
    const/16 v27, 0x1

    .line 53
    .line 54
    const/16 v28, -0x1

    .line 55
    .line 56
    const/16 v30, 0x0

    .line 57
    .line 58
    const/16 v31, 0x0

    .line 59
    .line 60
    const-wide/16 v32, 0x0

    .line 61
    .line 62
    move-object/from16 v26, v3

    .line 63
    .line 64
    move-object/from16 v29, v5

    .line 65
    .line 66
    invoke-direct/range {v26 .. v35}, Lf2/j;-><init>(IILandroidx/media3/common/r;ILjava/lang/Object;JJ)V

    .line 67
    .line 68
    .line 69
    iget-object v5, v0, Landroidx/media3/exoplayer/source/g0;->d:Landroidx/media3/exoplayer/upstream/m;

    .line 70
    .line 71
    new-instance v6, Landroidx/media3/exoplayer/upstream/m$c;

    .line 72
    .line 73
    invoke-direct {v6, v4, v3, v13, v2}, Landroidx/media3/exoplayer/upstream/m$c;-><init>(Lf2/i;Lf2/j;Ljava/io/IOException;I)V

    .line 74
    .line 75
    .line 76
    invoke-interface {v5, v6}, Landroidx/media3/exoplayer/upstream/m;->c(Landroidx/media3/exoplayer/upstream/m$c;)J

    .line 77
    .line 78
    .line 79
    move-result-wide v5

    .line 80
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    cmp-long v3, v5, v7

    .line 86
    .line 87
    const/4 v7, 0x0

    .line 88
    const/4 v8, 0x1

    .line 89
    if-eqz v3, :cond_1

    .line 90
    .line 91
    iget-object v9, v0, Landroidx/media3/exoplayer/source/g0;->d:Landroidx/media3/exoplayer/upstream/m;

    .line 92
    .line 93
    invoke-interface {v9, v8}, Landroidx/media3/exoplayer/upstream/m;->a(I)I

    .line 94
    .line 95
    .line 96
    move-result v9

    .line 97
    if-lt v2, v9, :cond_0

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_0
    move v2, v7

    .line 101
    goto :goto_1

    .line 102
    :cond_1
    :goto_0
    move v2, v8

    .line 103
    :goto_1
    iget-boolean v9, v0, Landroidx/media3/exoplayer/source/g0;->k:Z

    .line 104
    .line 105
    if-eqz v9, :cond_2

    .line 106
    .line 107
    if-eqz v2, :cond_2

    .line 108
    .line 109
    const-string v2, "SingleSampleMediaPeriod"

    .line 110
    .line 111
    const-string v3, "Loading failed, treating as end-of-stream."

    .line 112
    .line 113
    invoke-static {v2, v3, v13}, Landroidx/media3/common/util/u;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    iput-boolean v8, v0, Landroidx/media3/exoplayer/source/g0;->l:Z

    .line 117
    .line 118
    sget-object v2, Landroidx/media3/exoplayer/upstream/Loader;->f:Landroidx/media3/exoplayer/upstream/Loader$c;

    .line 119
    .line 120
    :goto_2
    move-object v15, v2

    .line 121
    goto :goto_3

    .line 122
    :cond_2
    if-eqz v3, :cond_3

    .line 123
    .line 124
    invoke-static {v7, v5, v6}, Landroidx/media3/exoplayer/upstream/Loader;->g(ZJ)Landroidx/media3/exoplayer/upstream/Loader$c;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    goto :goto_2

    .line 129
    :cond_3
    sget-object v2, Landroidx/media3/exoplayer/upstream/Loader;->g:Landroidx/media3/exoplayer/upstream/Loader$c;

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :goto_3
    invoke-virtual {v15}, Landroidx/media3/exoplayer/upstream/Loader$c;->c()Z

    .line 133
    .line 134
    .line 135
    move-result v16

    .line 136
    xor-int/lit8 v14, v16, 0x1

    .line 137
    .line 138
    iget-object v2, v0, Landroidx/media3/exoplayer/source/g0;->e:Landroidx/media3/exoplayer/source/s$a;

    .line 139
    .line 140
    iget-object v6, v0, Landroidx/media3/exoplayer/source/g0;->j:Landroidx/media3/common/r;

    .line 141
    .line 142
    const-wide/16 v9, 0x0

    .line 143
    .line 144
    iget-wide v11, v0, Landroidx/media3/exoplayer/source/g0;->h:J

    .line 145
    .line 146
    const/4 v5, 0x1

    .line 147
    const/4 v7, -0x1

    .line 148
    const/4 v8, 0x0

    .line 149
    const/16 v17, 0x0

    .line 150
    .line 151
    move-object v3, v4

    .line 152
    move v4, v5

    .line 153
    move v5, v7

    .line 154
    move v7, v8

    .line 155
    move-object/from16 v8, v17

    .line 156
    .line 157
    move-object/from16 v13, p6

    .line 158
    .line 159
    invoke-virtual/range {v2 .. v14}, Landroidx/media3/exoplayer/source/s$a;->y(Lf2/i;IILandroidx/media3/common/r;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    .line 160
    .line 161
    .line 162
    if-nez v16, :cond_4

    .line 163
    .line 164
    iget-object v2, v0, Landroidx/media3/exoplayer/source/g0;->d:Landroidx/media3/exoplayer/upstream/m;

    .line 165
    .line 166
    iget-wide v3, v1, Landroidx/media3/exoplayer/source/g0$c;->a:J

    .line 167
    .line 168
    invoke-interface {v2, v3, v4}, Landroidx/media3/exoplayer/upstream/m;->b(J)V

    .line 169
    .line 170
    .line 171
    :cond_4
    return-object v15
.end method

.method public i(Landroidx/media3/exoplayer/source/g0$c;JJI)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-static/range {p1 .. p1}, Landroidx/media3/exoplayer/source/g0$c;->a(Landroidx/media3/exoplayer/source/g0$c;)Lw1/l;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    if-nez p6, :cond_0

    .line 10
    .line 11
    new-instance v2, Lf2/i;

    .line 12
    .line 13
    iget-wide v4, v1, Landroidx/media3/exoplayer/source/g0$c;->a:J

    .line 14
    .line 15
    iget-object v6, v1, Landroidx/media3/exoplayer/source/g0$c;->b:Lw1/h;

    .line 16
    .line 17
    move-object v3, v2

    .line 18
    move-wide/from16 v7, p2

    .line 19
    .line 20
    invoke-direct/range {v3 .. v8}, Lf2/i;-><init>(JLw1/h;J)V

    .line 21
    .line 22
    .line 23
    move-object/from16 v20, v2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Lf2/i;

    .line 27
    .line 28
    iget-wide v8, v1, Landroidx/media3/exoplayer/source/g0$c;->a:J

    .line 29
    .line 30
    iget-object v10, v1, Landroidx/media3/exoplayer/source/g0$c;->b:Lw1/h;

    .line 31
    .line 32
    invoke-virtual {v2}, Lw1/l;->e()Landroid/net/Uri;

    .line 33
    .line 34
    .line 35
    move-result-object v11

    .line 36
    invoke-virtual {v2}, Lw1/l;->f()Ljava/util/Map;

    .line 37
    .line 38
    .line 39
    move-result-object v12

    .line 40
    invoke-virtual {v2}, Lw1/l;->d()J

    .line 41
    .line 42
    .line 43
    move-result-wide v17

    .line 44
    move-object v7, v3

    .line 45
    move-wide/from16 v13, p2

    .line 46
    .line 47
    move-wide/from16 v15, p4

    .line 48
    .line 49
    invoke-direct/range {v7 .. v18}, Lf2/i;-><init>(JLw1/h;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 50
    .line 51
    .line 52
    move-object/from16 v20, v3

    .line 53
    .line 54
    :goto_0
    iget-object v1, v0, Landroidx/media3/exoplayer/source/g0;->e:Landroidx/media3/exoplayer/source/s$a;

    .line 55
    .line 56
    iget-object v2, v0, Landroidx/media3/exoplayer/source/g0;->j:Landroidx/media3/common/r;

    .line 57
    .line 58
    const-wide/16 v26, 0x0

    .line 59
    .line 60
    iget-wide v3, v0, Landroidx/media3/exoplayer/source/g0;->h:J

    .line 61
    .line 62
    const/16 v21, 0x1

    .line 63
    .line 64
    const/16 v22, -0x1

    .line 65
    .line 66
    const/16 v24, 0x0

    .line 67
    .line 68
    const/16 v25, 0x0

    .line 69
    .line 70
    move-object/from16 v19, v1

    .line 71
    .line 72
    move-object/from16 v23, v2

    .line 73
    .line 74
    move-wide/from16 v28, v3

    .line 75
    .line 76
    move/from16 v30, p6

    .line 77
    .line 78
    invoke-virtual/range {v19 .. v30}, Landroidx/media3/exoplayer/source/s$a;->C(Lf2/i;IILandroidx/media3/common/r;ILjava/lang/Object;JJI)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/g0;->i:Landroidx/media3/exoplayer/upstream/Loader;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->i()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/g0;->i:Landroidx/media3/exoplayer/upstream/Loader;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->k()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic k(Landroidx/media3/exoplayer/upstream/Loader$d;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$c;
    .locals 0

    .line 1
    check-cast p1, Landroidx/media3/exoplayer/source/g0$c;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p7}, Landroidx/media3/exoplayer/source/g0;->h(Landroidx/media3/exoplayer/source/g0$c;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public maybeThrowPrepareError()V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic o(Landroidx/media3/exoplayer/upstream/Loader$d;JJI)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/media3/exoplayer/source/g0$c;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p6}, Landroidx/media3/exoplayer/source/g0;->i(Landroidx/media3/exoplayer/source/g0$c;JJI)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic p(Landroidx/media3/exoplayer/upstream/Loader$d;JJ)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/media3/exoplayer/source/g0$c;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Landroidx/media3/exoplayer/source/g0;->g(Landroidx/media3/exoplayer/source/g0$c;JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic q(Landroidx/media3/exoplayer/upstream/Loader$d;JJZ)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/media3/exoplayer/source/g0$c;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p6}, Landroidx/media3/exoplayer/source/g0;->d(Landroidx/media3/exoplayer/source/g0$c;JJZ)V

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
    .locals 0

    .line 1
    return-void
.end method

.method public seekToUs(J)J
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/g0;->g:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/media3/exoplayer/source/g0;->g:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroidx/media3/exoplayer/source/g0$b;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/g0$b;->b()V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-wide p1
.end method
