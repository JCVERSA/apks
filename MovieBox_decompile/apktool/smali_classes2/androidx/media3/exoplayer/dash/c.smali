.class final Landroidx/media3/exoplayer/dash/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/q;
.implements Landroidx/media3/exoplayer/source/f0$a;
.implements Lg2/h$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/dash/c$a;
    }
.end annotation


# static fields
.field private static final A:Ljava/util/regex/Pattern;

.field private static final B:Ljava/util/regex/Pattern;


# instance fields
.field final a:I

.field private final b:Landroidx/media3/exoplayer/dash/a$a;

.field private final c:Lw1/n;

.field private final d:Landroidx/media3/exoplayer/drm/t;

.field private final e:Landroidx/media3/exoplayer/upstream/m;

.field private final f:Ly1/b;

.field private final g:J

.field private final h:Landroidx/media3/exoplayer/upstream/p;

.field private final i:Landroidx/media3/exoplayer/upstream/b;

.field private final j:Lf2/z;

.field private final k:[Landroidx/media3/exoplayer/dash/c$a;

.field private final l:Lf2/e;

.field private final m:Landroidx/media3/exoplayer/dash/f;

.field private final n:Ljava/util/IdentityHashMap;

.field private final o:Landroidx/media3/exoplayer/source/s$a;

.field private final p:Landroidx/media3/exoplayer/drm/r$a;

.field private final q:Lx1/f4;

.field private r:Landroidx/media3/exoplayer/source/q$a;

.field private s:[Lg2/h;

.field private t:[Landroidx/media3/exoplayer/dash/e;

.field private u:Landroidx/media3/exoplayer/source/f0;

.field private v:Lz1/c;

.field private w:I

.field private x:Ljava/util/List;

.field private y:Z

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "CC([1-4])=(.+)"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/media3/exoplayer/dash/c;->A:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    const-string v0, "([1-4])=lang:(\\w+)(,.+)?"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Landroidx/media3/exoplayer/dash/c;->B:Ljava/util/regex/Pattern;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(ILz1/c;Ly1/b;ILandroidx/media3/exoplayer/dash/a$a;Lw1/n;Landroidx/media3/exoplayer/upstream/f;Landroidx/media3/exoplayer/drm/t;Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/exoplayer/upstream/m;Landroidx/media3/exoplayer/source/s$a;JLandroidx/media3/exoplayer/upstream/p;Landroidx/media3/exoplayer/upstream/b;Lf2/e;Landroidx/media3/exoplayer/dash/f$b;Lx1/f4;)V
    .locals 9

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move-object v3, p5

    move-object/from16 v4, p8

    move-object/from16 v5, p15

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v6, p1

    .line 2
    iput v6, v0, Landroidx/media3/exoplayer/dash/c;->a:I

    .line 3
    iput-object v1, v0, Landroidx/media3/exoplayer/dash/c;->v:Lz1/c;

    move-object v6, p3

    .line 4
    iput-object v6, v0, Landroidx/media3/exoplayer/dash/c;->f:Ly1/b;

    .line 5
    iput v2, v0, Landroidx/media3/exoplayer/dash/c;->w:I

    .line 6
    iput-object v3, v0, Landroidx/media3/exoplayer/dash/c;->b:Landroidx/media3/exoplayer/dash/a$a;

    move-object v6, p6

    .line 7
    iput-object v6, v0, Landroidx/media3/exoplayer/dash/c;->c:Lw1/n;

    .line 8
    iput-object v4, v0, Landroidx/media3/exoplayer/dash/c;->d:Landroidx/media3/exoplayer/drm/t;

    move-object/from16 v6, p9

    .line 9
    iput-object v6, v0, Landroidx/media3/exoplayer/dash/c;->p:Landroidx/media3/exoplayer/drm/r$a;

    move-object/from16 v6, p10

    .line 10
    iput-object v6, v0, Landroidx/media3/exoplayer/dash/c;->e:Landroidx/media3/exoplayer/upstream/m;

    move-object/from16 v6, p11

    .line 11
    iput-object v6, v0, Landroidx/media3/exoplayer/dash/c;->o:Landroidx/media3/exoplayer/source/s$a;

    move-wide/from16 v6, p12

    .line 12
    iput-wide v6, v0, Landroidx/media3/exoplayer/dash/c;->g:J

    move-object/from16 v6, p14

    .line 13
    iput-object v6, v0, Landroidx/media3/exoplayer/dash/c;->h:Landroidx/media3/exoplayer/upstream/p;

    .line 14
    iput-object v5, v0, Landroidx/media3/exoplayer/dash/c;->i:Landroidx/media3/exoplayer/upstream/b;

    move-object/from16 v6, p16

    .line 15
    iput-object v6, v0, Landroidx/media3/exoplayer/dash/c;->l:Lf2/e;

    move-object/from16 v7, p18

    .line 16
    iput-object v7, v0, Landroidx/media3/exoplayer/dash/c;->q:Lx1/f4;

    const/4 v7, 0x1

    .line 17
    iput-boolean v7, v0, Landroidx/media3/exoplayer/dash/c;->y:Z

    .line 18
    new-instance v7, Landroidx/media3/exoplayer/dash/f;

    move-object/from16 v8, p17

    invoke-direct {v7, p2, v8, v5}, Landroidx/media3/exoplayer/dash/f;-><init>(Lz1/c;Landroidx/media3/exoplayer/dash/f$b;Landroidx/media3/exoplayer/upstream/b;)V

    iput-object v7, v0, Landroidx/media3/exoplayer/dash/c;->m:Landroidx/media3/exoplayer/dash/f;

    const/4 v5, 0x0

    .line 19
    invoke-static {v5}, Landroidx/media3/exoplayer/dash/c;->z(I)[Lg2/h;

    move-result-object v7

    iput-object v7, v0, Landroidx/media3/exoplayer/dash/c;->s:[Lg2/h;

    .line 20
    new-array v5, v5, [Landroidx/media3/exoplayer/dash/e;

    iput-object v5, v0, Landroidx/media3/exoplayer/dash/c;->t:[Landroidx/media3/exoplayer/dash/e;

    .line 21
    new-instance v5, Ljava/util/IdentityHashMap;

    invoke-direct {v5}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v5, v0, Landroidx/media3/exoplayer/dash/c;->n:Ljava/util/IdentityHashMap;

    .line 22
    invoke-interface/range {p16 .. p16}, Lf2/e;->b()Landroidx/media3/exoplayer/source/f0;

    move-result-object v5

    iput-object v5, v0, Landroidx/media3/exoplayer/dash/c;->u:Landroidx/media3/exoplayer/source/f0;

    .line 23
    invoke-virtual {p2, p4}, Lz1/c;->c(I)Lz1/g;

    move-result-object v1

    .line 24
    iget-object v2, v1, Lz1/g;->d:Ljava/util/List;

    iput-object v2, v0, Landroidx/media3/exoplayer/dash/c;->x:Ljava/util/List;

    .line 25
    iget-object v1, v1, Lz1/g;->c:Ljava/util/List;

    .line 26
    invoke-static {v4, p5, v1, v2}, Landroidx/media3/exoplayer/dash/c;->m(Landroidx/media3/exoplayer/drm/t;Landroidx/media3/exoplayer/dash/a$a;Ljava/util/List;Ljava/util/List;)Landroid/util/Pair;

    move-result-object v1

    .line 27
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lf2/z;

    iput-object v2, v0, Landroidx/media3/exoplayer/dash/c;->j:Lf2/z;

    .line 28
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Landroidx/media3/exoplayer/dash/c$a;

    iput-object v1, v0, Landroidx/media3/exoplayer/dash/c;->k:[Landroidx/media3/exoplayer/dash/c$a;

    return-void
.end method

.method private static B(Lz1/e;Ljava/util/regex/Pattern;Landroidx/media3/common/r;)[Landroidx/media3/common/r;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object p0, p0, Lz1/e;->b:Ljava/lang/String;

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    new-array p0, v1, [Landroidx/media3/common/r;

    .line 8
    .line 9
    aput-object p2, p0, v0

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const-string v2, ";"

    .line 13
    .line 14
    invoke-static {p0, v2}, Landroidx/media3/common/util/a1;->o1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    array-length v2, p0

    .line 19
    new-array v2, v2, [Landroidx/media3/common/r;

    .line 20
    .line 21
    move v3, v0

    .line 22
    :goto_0
    array-length v4, p0

    .line 23
    if-ge v3, v4, :cond_2

    .line 24
    .line 25
    aget-object v4, p0, v3

    .line 26
    .line 27
    invoke-virtual {p1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-nez v5, :cond_1

    .line 36
    .line 37
    new-array p0, v1, [Landroidx/media3/common/r;

    .line 38
    .line 39
    aput-object p2, p0, v0

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_1
    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    invoke-virtual {p2}, Landroidx/media3/common/r;->b()Landroidx/media3/common/r$b;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    new-instance v7, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    iget-object v8, p2, Landroidx/media3/common/r;->a:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v8, ":"

    .line 65
    .line 66
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    invoke-virtual {v6, v7}, Landroidx/media3/common/r$b;->f0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    invoke-virtual {v6, v5}, Landroidx/media3/common/r$b;->O(I)Landroidx/media3/common/r$b;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    const/4 v6, 0x2

    .line 85
    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v5, v4}, Landroidx/media3/common/r$b;->j0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v4}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    aput-object v4, v2, v3

    .line 98
    .line 99
    add-int/2addr v3, v1

    .line 100
    goto :goto_0

    .line 101
    :cond_2
    return-object v2
.end method

.method private D([Li2/z;[Z[Lf2/u;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    .line 3
    if-ge v0, v1, :cond_4

    .line 4
    .line 5
    aget-object v1, p1, v0

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    aget-boolean v1, p2, v0

    .line 10
    .line 11
    if-nez v1, :cond_3

    .line 12
    .line 13
    :cond_0
    aget-object v1, p3, v0

    .line 14
    .line 15
    instance-of v2, v1, Lg2/h;

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    check-cast v1, Lg2/h;

    .line 20
    .line 21
    invoke-virtual {v1, p0}, Lg2/h;->G(Lg2/h$b;)V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    instance-of v2, v1, Lg2/h$a;

    .line 26
    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    check-cast v1, Lg2/h$a;

    .line 30
    .line 31
    invoke-virtual {v1}, Lg2/h$a;->b()V

    .line 32
    .line 33
    .line 34
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 35
    aput-object v1, p3, v0

    .line 36
    .line 37
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_4
    return-void
.end method

.method private E([Li2/z;[Lf2/u;[I)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    array-length v2, p1

    .line 4
    if-ge v1, v2, :cond_5

    .line 5
    .line 6
    aget-object v2, p2, v1

    .line 7
    .line 8
    instance-of v3, v2, Lf2/h;

    .line 9
    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    instance-of v2, v2, Lg2/h$a;

    .line 13
    .line 14
    if-eqz v2, :cond_4

    .line 15
    .line 16
    :cond_0
    invoke-direct {p0, v1, p3}, Landroidx/media3/exoplayer/dash/c;->t(I[I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, -0x1

    .line 21
    if-ne v2, v3, :cond_1

    .line 22
    .line 23
    aget-object v2, p2, v1

    .line 24
    .line 25
    instance-of v2, v2, Lf2/h;

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    aget-object v3, p2, v1

    .line 29
    .line 30
    instance-of v4, v3, Lg2/h$a;

    .line 31
    .line 32
    if-eqz v4, :cond_2

    .line 33
    .line 34
    check-cast v3, Lg2/h$a;

    .line 35
    .line 36
    iget-object v3, v3, Lg2/h$a;->a:Lg2/h;

    .line 37
    .line 38
    aget-object v2, p2, v2

    .line 39
    .line 40
    if-ne v3, v2, :cond_2

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move v2, v0

    .line 45
    :goto_1
    if-nez v2, :cond_4

    .line 46
    .line 47
    aget-object v2, p2, v1

    .line 48
    .line 49
    instance-of v3, v2, Lg2/h$a;

    .line 50
    .line 51
    if-eqz v3, :cond_3

    .line 52
    .line 53
    check-cast v2, Lg2/h$a;

    .line 54
    .line 55
    invoke-virtual {v2}, Lg2/h$a;->b()V

    .line 56
    .line 57
    .line 58
    :cond_3
    const/4 v2, 0x0

    .line 59
    aput-object v2, p2, v1

    .line 60
    .line 61
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_5
    return-void
.end method

.method private F([Li2/z;[Lf2/u;[ZJ[I)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    array-length v2, p1

    .line 4
    const/4 v3, 0x1

    .line 5
    if-ge v1, v2, :cond_4

    .line 6
    .line 7
    aget-object v2, p1, v1

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    aget-object v4, p2, v1

    .line 13
    .line 14
    if-nez v4, :cond_2

    .line 15
    .line 16
    aput-boolean v3, p3, v1

    .line 17
    .line 18
    aget v3, p6, v1

    .line 19
    .line 20
    iget-object v4, p0, Landroidx/media3/exoplayer/dash/c;->k:[Landroidx/media3/exoplayer/dash/c$a;

    .line 21
    .line 22
    aget-object v3, v4, v3

    .line 23
    .line 24
    iget v4, v3, Landroidx/media3/exoplayer/dash/c$a;->c:I

    .line 25
    .line 26
    if-nez v4, :cond_1

    .line 27
    .line 28
    invoke-direct {p0, v3, v2, p4, p5}, Landroidx/media3/exoplayer/dash/c;->l(Landroidx/media3/exoplayer/dash/c$a;Li2/z;J)Lg2/h;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    aput-object v2, p2, v1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/4 v5, 0x2

    .line 36
    if-ne v4, v5, :cond_3

    .line 37
    .line 38
    iget-object v4, p0, Landroidx/media3/exoplayer/dash/c;->x:Ljava/util/List;

    .line 39
    .line 40
    iget v3, v3, Landroidx/media3/exoplayer/dash/c$a;->d:I

    .line 41
    .line 42
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Lz1/f;

    .line 47
    .line 48
    invoke-interface {v2}, Li2/c0;->getTrackGroup()Landroidx/media3/common/f0;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2, v0}, Landroidx/media3/common/f0;->a(I)Landroidx/media3/common/r;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    new-instance v4, Landroidx/media3/exoplayer/dash/e;

    .line 57
    .line 58
    iget-object v5, p0, Landroidx/media3/exoplayer/dash/c;->v:Lz1/c;

    .line 59
    .line 60
    iget-boolean v5, v5, Lz1/c;->d:Z

    .line 61
    .line 62
    invoke-direct {v4, v3, v2, v5}, Landroidx/media3/exoplayer/dash/e;-><init>(Lz1/f;Landroidx/media3/common/r;Z)V

    .line 63
    .line 64
    .line 65
    aput-object v4, p2, v1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    instance-of v3, v4, Lg2/h;

    .line 69
    .line 70
    if-eqz v3, :cond_3

    .line 71
    .line 72
    check-cast v4, Lg2/h;

    .line 73
    .line 74
    invoke-virtual {v4}, Lg2/h;->u()Lg2/i;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Landroidx/media3/exoplayer/dash/a;

    .line 79
    .line 80
    invoke-interface {v3, v2}, Landroidx/media3/exoplayer/dash/a;->a(Li2/z;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_4
    :goto_2
    array-length p3, p1

    .line 87
    if-ge v0, p3, :cond_7

    .line 88
    .line 89
    aget-object p3, p2, v0

    .line 90
    .line 91
    if-nez p3, :cond_6

    .line 92
    .line 93
    aget-object p3, p1, v0

    .line 94
    .line 95
    if-eqz p3, :cond_6

    .line 96
    .line 97
    aget p3, p6, v0

    .line 98
    .line 99
    iget-object v1, p0, Landroidx/media3/exoplayer/dash/c;->k:[Landroidx/media3/exoplayer/dash/c$a;

    .line 100
    .line 101
    aget-object p3, v1, p3

    .line 102
    .line 103
    iget v1, p3, Landroidx/media3/exoplayer/dash/c$a;->c:I

    .line 104
    .line 105
    if-ne v1, v3, :cond_6

    .line 106
    .line 107
    invoke-direct {p0, v0, p6}, Landroidx/media3/exoplayer/dash/c;->t(I[I)I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    const/4 v2, -0x1

    .line 112
    if-ne v1, v2, :cond_5

    .line 113
    .line 114
    new-instance p3, Lf2/h;

    .line 115
    .line 116
    invoke-direct {p3}, Lf2/h;-><init>()V

    .line 117
    .line 118
    .line 119
    aput-object p3, p2, v0

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_5
    aget-object v1, p2, v1

    .line 123
    .line 124
    check-cast v1, Lg2/h;

    .line 125
    .line 126
    iget p3, p3, Landroidx/media3/exoplayer/dash/c$a;->b:I

    .line 127
    .line 128
    invoke-virtual {v1, p4, p5, p3}, Lg2/h;->J(JI)Lg2/h$a;

    .line 129
    .line 130
    .line 131
    move-result-object p3

    .line 132
    aput-object p3, p2, v0

    .line 133
    .line 134
    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_7
    return-void
.end method

.method public static synthetic i(Lg2/h;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/dash/c;->x(Lg2/h;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static j(Ljava/util/List;[Landroidx/media3/common/f0;[Landroidx/media3/exoplayer/dash/c$a;I)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v3

    .line 8
    if-ge v2, v3, :cond_0

    .line 9
    .line 10
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    check-cast v3, Lz1/f;

    .line 15
    .line 16
    new-instance v4, Landroidx/media3/common/r$b;

    .line 17
    .line 18
    invoke-direct {v4}, Landroidx/media3/common/r$b;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Lz1/f;->a()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {v4, v5}, Landroidx/media3/common/r$b;->f0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const-string v5, "application/x-emsg"

    .line 30
    .line 31
    invoke-virtual {v4, v5}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v4}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    new-instance v5, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Lz1/f;->a()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v3, ":"

    .line 52
    .line 53
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    new-instance v5, Landroidx/media3/common/f0;

    .line 64
    .line 65
    new-array v6, v0, [Landroidx/media3/common/r;

    .line 66
    .line 67
    aput-object v4, v6, v1

    .line 68
    .line 69
    invoke-direct {v5, v3, v6}, Landroidx/media3/common/f0;-><init>(Ljava/lang/String;[Landroidx/media3/common/r;)V

    .line 70
    .line 71
    .line 72
    aput-object v5, p1, p3

    .line 73
    .line 74
    add-int/lit8 v3, p3, 0x1

    .line 75
    .line 76
    invoke-static {v2}, Landroidx/media3/exoplayer/dash/c$a;->c(I)Landroidx/media3/exoplayer/dash/c$a;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    aput-object v4, p2, p3

    .line 81
    .line 82
    add-int/2addr v2, v0

    .line 83
    move p3, v3

    .line 84
    goto :goto_0

    .line 85
    :cond_0
    return-void
.end method

.method private static k(Landroidx/media3/exoplayer/drm/t;Landroidx/media3/exoplayer/dash/a$a;Ljava/util/List;[[II[Z[[Landroidx/media3/common/r;[Landroidx/media3/common/f0;[Landroidx/media3/exoplayer/dash/c$a;)I
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    move/from16 v4, p4

    .line 8
    .line 9
    move v5, v3

    .line 10
    move v6, v5

    .line 11
    :goto_0
    if-ge v5, v4, :cond_7

    .line 12
    .line 13
    aget-object v7, p3, v5

    .line 14
    .line 15
    new-instance v8, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    array-length v9, v7

    .line 21
    move v10, v3

    .line 22
    :goto_1
    if-ge v10, v9, :cond_0

    .line 23
    .line 24
    aget v11, v7, v10

    .line 25
    .line 26
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v11

    .line 30
    check-cast v11, Lz1/a;

    .line 31
    .line 32
    iget-object v11, v11, Lz1/a;->c:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v8, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    .line 36
    .line 37
    add-int/2addr v10, v2

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result v9

    .line 43
    new-array v10, v9, [Landroidx/media3/common/r;

    .line 44
    .line 45
    move v11, v3

    .line 46
    :goto_2
    if-ge v11, v9, :cond_1

    .line 47
    .line 48
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v12

    .line 52
    check-cast v12, Lz1/j;

    .line 53
    .line 54
    iget-object v12, v12, Lz1/j;->b:Landroidx/media3/common/r;

    .line 55
    .line 56
    invoke-virtual {v12}, Landroidx/media3/common/r;->b()Landroidx/media3/common/r$b;

    .line 57
    .line 58
    .line 59
    move-result-object v13

    .line 60
    move-object/from16 v14, p0

    .line 61
    .line 62
    invoke-interface {v14, v12}, Landroidx/media3/exoplayer/drm/t;->b(Landroidx/media3/common/r;)I

    .line 63
    .line 64
    .line 65
    move-result v12

    .line 66
    invoke-virtual {v13, v12}, Landroidx/media3/common/r$b;->V(I)Landroidx/media3/common/r$b;

    .line 67
    .line 68
    .line 69
    move-result-object v12

    .line 70
    invoke-virtual {v12}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 71
    .line 72
    .line 73
    move-result-object v12

    .line 74
    aput-object v12, v10, v11

    .line 75
    .line 76
    add-int/2addr v11, v2

    .line 77
    goto :goto_2

    .line 78
    :cond_1
    move-object/from16 v14, p0

    .line 79
    .line 80
    aget v8, v7, v3

    .line 81
    .line 82
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    check-cast v8, Lz1/a;

    .line 87
    .line 88
    iget-wide v11, v8, Lz1/a;->a:J

    .line 89
    .line 90
    const-wide/16 v15, -0x1

    .line 91
    .line 92
    cmp-long v9, v11, v15

    .line 93
    .line 94
    if-eqz v9, :cond_2

    .line 95
    .line 96
    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    goto :goto_3

    .line 101
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string v11, "unset:"

    .line 107
    .line 108
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v9

    .line 118
    :goto_3
    add-int/lit8 v11, v6, 0x1

    .line 119
    .line 120
    aget-boolean v12, p5, v5

    .line 121
    .line 122
    const/4 v13, -0x1

    .line 123
    if-eqz v12, :cond_3

    .line 124
    .line 125
    add-int/lit8 v12, v6, 0x2

    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_3
    move v12, v11

    .line 129
    move v11, v13

    .line 130
    :goto_4
    aget-object v15, p6, v5

    .line 131
    .line 132
    array-length v15, v15

    .line 133
    if-eqz v15, :cond_4

    .line 134
    .line 135
    add-int/lit8 v15, v12, 0x1

    .line 136
    .line 137
    goto :goto_5

    .line 138
    :cond_4
    move v15, v12

    .line 139
    move v12, v13

    .line 140
    :goto_5
    invoke-static {v0, v10}, Landroidx/media3/exoplayer/dash/c;->y(Landroidx/media3/exoplayer/dash/a$a;[Landroidx/media3/common/r;)V

    .line 141
    .line 142
    .line 143
    new-instance v3, Landroidx/media3/common/f0;

    .line 144
    .line 145
    invoke-direct {v3, v9, v10}, Landroidx/media3/common/f0;-><init>(Ljava/lang/String;[Landroidx/media3/common/r;)V

    .line 146
    .line 147
    .line 148
    aput-object v3, p7, v6

    .line 149
    .line 150
    iget v3, v8, Lz1/a;->b:I

    .line 151
    .line 152
    invoke-static {v3, v7, v6, v11, v12}, Landroidx/media3/exoplayer/dash/c$a;->d(I[IIII)Landroidx/media3/exoplayer/dash/c$a;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    aput-object v3, p8, v6

    .line 157
    .line 158
    if-eq v11, v13, :cond_5

    .line 159
    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v8, ":emsg"

    .line 169
    .line 170
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    new-instance v8, Landroidx/media3/common/r$b;

    .line 178
    .line 179
    invoke-direct {v8}, Landroidx/media3/common/r$b;-><init>()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v8, v3}, Landroidx/media3/common/r$b;->f0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 183
    .line 184
    .line 185
    move-result-object v8

    .line 186
    const-string v10, "application/x-emsg"

    .line 187
    .line 188
    invoke-virtual {v8, v10}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    invoke-virtual {v8}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 193
    .line 194
    .line 195
    move-result-object v8

    .line 196
    new-instance v10, Landroidx/media3/common/f0;

    .line 197
    .line 198
    new-array v13, v2, [Landroidx/media3/common/r;

    .line 199
    .line 200
    const/16 v16, 0x0

    .line 201
    .line 202
    aput-object v8, v13, v16

    .line 203
    .line 204
    invoke-direct {v10, v3, v13}, Landroidx/media3/common/f0;-><init>(Ljava/lang/String;[Landroidx/media3/common/r;)V

    .line 205
    .line 206
    .line 207
    aput-object v10, p7, v11

    .line 208
    .line 209
    invoke-static {v7, v6}, Landroidx/media3/exoplayer/dash/c$a;->b([II)Landroidx/media3/exoplayer/dash/c$a;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    aput-object v3, p8, v11

    .line 214
    .line 215
    const/4 v3, -0x1

    .line 216
    goto :goto_6

    .line 217
    :cond_5
    const/16 v16, 0x0

    .line 218
    .line 219
    move v3, v13

    .line 220
    :goto_6
    if-eq v12, v3, :cond_6

    .line 221
    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    const-string v8, ":cc"

    .line 231
    .line 232
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    aget-object v8, p6, v5

    .line 240
    .line 241
    invoke-static {v8}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 242
    .line 243
    .line 244
    move-result-object v8

    .line 245
    invoke-static {v7, v6, v8}, Landroidx/media3/exoplayer/dash/c$a;->a([IILcom/google/common/collect/ImmutableList;)Landroidx/media3/exoplayer/dash/c$a;

    .line 246
    .line 247
    .line 248
    move-result-object v6

    .line 249
    aput-object v6, p8, v12

    .line 250
    .line 251
    aget-object v6, p6, v5

    .line 252
    .line 253
    invoke-static {v0, v6}, Landroidx/media3/exoplayer/dash/c;->y(Landroidx/media3/exoplayer/dash/a$a;[Landroidx/media3/common/r;)V

    .line 254
    .line 255
    .line 256
    new-instance v6, Landroidx/media3/common/f0;

    .line 257
    .line 258
    aget-object v7, p6, v5

    .line 259
    .line 260
    invoke-direct {v6, v3, v7}, Landroidx/media3/common/f0;-><init>(Ljava/lang/String;[Landroidx/media3/common/r;)V

    .line 261
    .line 262
    .line 263
    aput-object v6, p7, v12

    .line 264
    .line 265
    :cond_6
    add-int/2addr v5, v2

    .line 266
    move v6, v15

    .line 267
    move/from16 v3, v16

    .line 268
    .line 269
    goto/16 :goto_0

    .line 270
    .line 271
    :cond_7
    return v6
.end method

.method private l(Landroidx/media3/exoplayer/dash/c$a;Li2/z;J)Lg2/h;
    .locals 34

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget v1, v0, Landroidx/media3/exoplayer/dash/c$a;->f:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, -0x1

    .line 10
    if-eq v1, v4, :cond_0

    .line 11
    .line 12
    move/from16 v26, v2

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move/from16 v26, v3

    .line 16
    .line 17
    :goto_0
    const/4 v5, 0x0

    .line 18
    if-eqz v26, :cond_1

    .line 19
    .line 20
    iget-object v6, v15, Landroidx/media3/exoplayer/dash/c;->j:Lf2/z;

    .line 21
    .line 22
    invoke-virtual {v6, v1}, Lf2/z;->b(I)Landroidx/media3/common/f0;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    move v6, v2

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v6, v3

    .line 29
    move-object v1, v5

    .line 30
    :goto_1
    iget v7, v0, Landroidx/media3/exoplayer/dash/c$a;->g:I

    .line 31
    .line 32
    if-eq v7, v4, :cond_2

    .line 33
    .line 34
    iget-object v4, v15, Landroidx/media3/exoplayer/dash/c;->k:[Landroidx/media3/exoplayer/dash/c$a;

    .line 35
    .line 36
    aget-object v4, v4, v7

    .line 37
    .line 38
    iget-object v4, v4, Landroidx/media3/exoplayer/dash/c$a;->h:Lcom/google/common/collect/ImmutableList;

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    :goto_2
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    add-int/2addr v6, v7

    .line 50
    new-array v7, v6, [Landroidx/media3/common/r;

    .line 51
    .line 52
    new-array v6, v6, [I

    .line 53
    .line 54
    if-eqz v26, :cond_3

    .line 55
    .line 56
    invoke-virtual {v1, v3}, Landroidx/media3/common/f0;->a(I)Landroidx/media3/common/r;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    aput-object v1, v7, v3

    .line 61
    .line 62
    const/4 v1, 0x5

    .line 63
    aput v1, v6, v3

    .line 64
    .line 65
    move v1, v2

    .line 66
    goto :goto_3

    .line 67
    :cond_3
    move v1, v3

    .line 68
    :goto_3
    new-instance v8, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .line 72
    .line 73
    :goto_4
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    if-ge v3, v9, :cond_4

    .line 78
    .line 79
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    check-cast v9, Landroidx/media3/common/r;

    .line 84
    .line 85
    aput-object v9, v7, v1

    .line 86
    .line 87
    const/4 v10, 0x3

    .line 88
    aput v10, v6, v1

    .line 89
    .line 90
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    add-int/2addr v1, v2

    .line 94
    add-int/lit8 v3, v3, 0x1

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_4
    iget-object v1, v15, Landroidx/media3/exoplayer/dash/c;->v:Lz1/c;

    .line 98
    .line 99
    iget-boolean v1, v1, Lz1/c;->d:Z

    .line 100
    .line 101
    if-eqz v1, :cond_5

    .line 102
    .line 103
    if-eqz v26, :cond_5

    .line 104
    .line 105
    iget-object v1, v15, Landroidx/media3/exoplayer/dash/c;->m:Landroidx/media3/exoplayer/dash/f;

    .line 106
    .line 107
    invoke-virtual {v1}, Landroidx/media3/exoplayer/dash/f;->k()Landroidx/media3/exoplayer/dash/f$c;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    :cond_5
    move-object v14, v5

    .line 112
    iget-object v1, v15, Landroidx/media3/exoplayer/dash/c;->b:Landroidx/media3/exoplayer/dash/a$a;

    .line 113
    .line 114
    iget-object v2, v15, Landroidx/media3/exoplayer/dash/c;->h:Landroidx/media3/exoplayer/upstream/p;

    .line 115
    .line 116
    iget-object v3, v15, Landroidx/media3/exoplayer/dash/c;->v:Lz1/c;

    .line 117
    .line 118
    iget-object v4, v15, Landroidx/media3/exoplayer/dash/c;->f:Ly1/b;

    .line 119
    .line 120
    iget v5, v15, Landroidx/media3/exoplayer/dash/c;->w:I

    .line 121
    .line 122
    iget-object v9, v0, Landroidx/media3/exoplayer/dash/c$a;->a:[I

    .line 123
    .line 124
    iget v10, v0, Landroidx/media3/exoplayer/dash/c$a;->b:I

    .line 125
    .line 126
    iget-wide v11, v15, Landroidx/media3/exoplayer/dash/c;->g:J

    .line 127
    .line 128
    iget-object v13, v15, Landroidx/media3/exoplayer/dash/c;->c:Lw1/n;

    .line 129
    .line 130
    move-object/from16 v32, v7

    .line 131
    .line 132
    iget-object v7, v15, Landroidx/media3/exoplayer/dash/c;->q:Lx1/f4;

    .line 133
    .line 134
    const/16 v31, 0x0

    .line 135
    .line 136
    move-object/from16 v16, v1

    .line 137
    .line 138
    move-object/from16 v17, v2

    .line 139
    .line 140
    move-object/from16 v18, v3

    .line 141
    .line 142
    move-object/from16 v19, v4

    .line 143
    .line 144
    move/from16 v20, v5

    .line 145
    .line 146
    move-object/from16 v21, v9

    .line 147
    .line 148
    move-object/from16 v22, p2

    .line 149
    .line 150
    move/from16 v23, v10

    .line 151
    .line 152
    move-wide/from16 v24, v11

    .line 153
    .line 154
    move-object/from16 v27, v8

    .line 155
    .line 156
    move-object/from16 v28, v14

    .line 157
    .line 158
    move-object/from16 v29, v13

    .line 159
    .line 160
    move-object/from16 v30, v7

    .line 161
    .line 162
    invoke-interface/range {v16 .. v31}, Landroidx/media3/exoplayer/dash/a$a;->e(Landroidx/media3/exoplayer/upstream/p;Lz1/c;Ly1/b;I[ILi2/z;IJZLjava/util/List;Landroidx/media3/exoplayer/dash/f$c;Lw1/n;Lx1/f4;Landroidx/media3/exoplayer/upstream/f;)Landroidx/media3/exoplayer/dash/a;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    new-instance v13, Lg2/h;

    .line 167
    .line 168
    iget v2, v0, Landroidx/media3/exoplayer/dash/c$a;->b:I

    .line 169
    .line 170
    iget-object v7, v15, Landroidx/media3/exoplayer/dash/c;->i:Landroidx/media3/exoplayer/upstream/b;

    .line 171
    .line 172
    iget-object v10, v15, Landroidx/media3/exoplayer/dash/c;->d:Landroidx/media3/exoplayer/drm/t;

    .line 173
    .line 174
    iget-object v11, v15, Landroidx/media3/exoplayer/dash/c;->p:Landroidx/media3/exoplayer/drm/r$a;

    .line 175
    .line 176
    iget-object v12, v15, Landroidx/media3/exoplayer/dash/c;->e:Landroidx/media3/exoplayer/upstream/m;

    .line 177
    .line 178
    iget-object v0, v15, Landroidx/media3/exoplayer/dash/c;->o:Landroidx/media3/exoplayer/source/s$a;

    .line 179
    .line 180
    iget-boolean v8, v15, Landroidx/media3/exoplayer/dash/c;->y:Z

    .line 181
    .line 182
    const/16 v16, 0x0

    .line 183
    .line 184
    move-object v1, v13

    .line 185
    move-object v3, v6

    .line 186
    move-object/from16 v4, v32

    .line 187
    .line 188
    move-object/from16 v6, p0

    .line 189
    .line 190
    move/from16 v17, v8

    .line 191
    .line 192
    move-wide/from16 v8, p3

    .line 193
    .line 194
    move-object/from16 v33, v13

    .line 195
    .line 196
    move-object v13, v0

    .line 197
    move-object v0, v14

    .line 198
    move/from16 v14, v17

    .line 199
    .line 200
    move-object/from16 v15, v16

    .line 201
    .line 202
    invoke-direct/range {v1 .. v15}, Lg2/h;-><init>(I[I[Landroidx/media3/common/r;Lg2/i;Landroidx/media3/exoplayer/source/f0$a;Landroidx/media3/exoplayer/upstream/b;JLandroidx/media3/exoplayer/drm/t;Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/exoplayer/upstream/m;Landroidx/media3/exoplayer/source/s$a;ZLandroidx/media3/exoplayer/util/c;)V

    .line 203
    .line 204
    .line 205
    move-object/from16 v1, p0

    .line 206
    .line 207
    monitor-enter p0

    .line 208
    :try_start_0
    iget-object v2, v1, Landroidx/media3/exoplayer/dash/c;->n:Ljava/util/IdentityHashMap;

    .line 209
    .line 210
    move-object/from16 v3, v33

    .line 211
    .line 212
    invoke-virtual {v2, v3, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    monitor-exit p0

    .line 216
    return-object v3

    .line 217
    :catchall_0
    move-exception v0

    .line 218
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    throw v0
.end method

.method private static m(Landroidx/media3/exoplayer/drm/t;Landroidx/media3/exoplayer/dash/a$a;Ljava/util/List;Ljava/util/List;)Landroid/util/Pair;
    .locals 11

    .line 1
    invoke-static {p2}, Landroidx/media3/exoplayer/dash/c;->s(Ljava/util/List;)[[I

    .line 2
    .line 3
    .line 4
    move-result-object v3

    .line 5
    array-length v4, v3

    .line 6
    new-array v5, v4, [Z

    .line 7
    .line 8
    new-array v6, v4, [[Landroidx/media3/common/r;

    .line 9
    .line 10
    invoke-static {v4, p2, v3, v5, v6}, Landroidx/media3/exoplayer/dash/c;->w(ILjava/util/List;[[I[Z[[Landroidx/media3/common/r;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    add-int/2addr v0, v4

    .line 15
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    add-int/2addr v0, v1

    .line 20
    new-array v9, v0, [Landroidx/media3/common/f0;

    .line 21
    .line 22
    new-array v10, v0, [Landroidx/media3/exoplayer/dash/c$a;

    .line 23
    .line 24
    move-object v0, p0

    .line 25
    move-object v1, p1

    .line 26
    move-object v2, p2

    .line 27
    move-object v7, v9

    .line 28
    move-object v8, v10

    .line 29
    invoke-static/range {v0 .. v8}, Landroidx/media3/exoplayer/dash/c;->k(Landroidx/media3/exoplayer/drm/t;Landroidx/media3/exoplayer/dash/a$a;Ljava/util/List;[[II[Z[[Landroidx/media3/common/r;[Landroidx/media3/common/f0;[Landroidx/media3/exoplayer/dash/c$a;)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    invoke-static {p3, v9, v10, p0}, Landroidx/media3/exoplayer/dash/c;->j(Ljava/util/List;[Landroidx/media3/common/f0;[Landroidx/media3/exoplayer/dash/c$a;I)V

    .line 34
    .line 35
    .line 36
    new-instance p0, Lf2/z;

    .line 37
    .line 38
    invoke-direct {p0, v9}, Lf2/z;-><init>([Landroidx/media3/common/f0;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method private static n(Lz1/a;Lz1/a;)Z
    .locals 4

    .line 1
    iget v0, p0, Lz1/a;->b:I

    .line 2
    .line 3
    iget v1, p1, Lz1/a;->b:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    iget-object v0, p0, Lz1/a;->c:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-nez v0, :cond_3

    .line 17
    .line 18
    iget-object v0, p1, Lz1/a;->c:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object p0, p0, Lz1/a;->c:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Lz1/j;

    .line 34
    .line 35
    iget-object p0, p0, Lz1/j;->b:Landroidx/media3/common/r;

    .line 36
    .line 37
    iget-object p1, p1, Lz1/a;->c:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lz1/j;

    .line 44
    .line 45
    iget-object p1, p1, Lz1/j;->b:Landroidx/media3/common/r;

    .line 46
    .line 47
    iget-object v0, p0, Landroidx/media3/common/r;->d:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v3, p1, Landroidx/media3/common/r;->d:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    iget p0, p0, Landroidx/media3/common/r;->f:I

    .line 58
    .line 59
    iget p1, p1, Landroidx/media3/common/r;->f:I

    .line 60
    .line 61
    if-ne p0, p1, :cond_2

    .line 62
    .line 63
    move v2, v1

    .line 64
    :cond_2
    return v2

    .line 65
    :cond_3
    :goto_0
    return v1
.end method

.method private static o(Ljava/util/List;)Lz1/e;
    .locals 1

    .line 1
    const-string v0, "urn:mpeg:dash:adaptation-set-switching:2016"

    .line 2
    .line 3
    invoke-static {p0, v0}, Landroidx/media3/exoplayer/dash/c;->p(Ljava/util/List;Ljava/lang/String;)Lz1/e;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static p(Ljava/util/List;Ljava/lang/String;)Lz1/e;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lz1/e;

    .line 13
    .line 14
    iget-object v2, v1, Lz1/e;->a:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method private static q(Ljava/util/List;)Lz1/e;
    .locals 1

    .line 1
    const-string v0, "http://dashif.org/guidelines/trickmode"

    .line 2
    .line 3
    invoke-static {p0, v0}, Landroidx/media3/exoplayer/dash/c;->p(Ljava/util/List;Ljava/lang/String;)Lz1/e;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static r(Ljava/util/List;[I)[Landroidx/media3/common/r;
    .locals 9

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_3

    .line 5
    .line 6
    aget v3, p1, v2

    .line 7
    .line 8
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    check-cast v4, Lz1/a;

    .line 13
    .line 14
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lz1/a;

    .line 19
    .line 20
    iget-object v3, v3, Lz1/a;->d:Ljava/util/List;

    .line 21
    .line 22
    move v5, v1

    .line 23
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    if-ge v5, v6, :cond_2

    .line 28
    .line 29
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    check-cast v6, Lz1/e;

    .line 34
    .line 35
    iget-object v7, v6, Lz1/e;->a:Ljava/lang/String;

    .line 36
    .line 37
    const-string v8, "urn:scte:dash:cc:cea-608:2015"

    .line 38
    .line 39
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    if-eqz v7, :cond_0

    .line 44
    .line 45
    new-instance p0, Landroidx/media3/common/r$b;

    .line 46
    .line 47
    invoke-direct {p0}, Landroidx/media3/common/r$b;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string p1, "application/cea-608"

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    iget-wide v0, v4, Lz1/a;->a:J

    .line 62
    .line 63
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v0, ":cea608"

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p0, p1}, Landroidx/media3/common/r$b;->f0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {p0}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    sget-object p1, Landroidx/media3/exoplayer/dash/c;->A:Ljava/util/regex/Pattern;

    .line 84
    .line 85
    invoke-static {v6, p1, p0}, Landroidx/media3/exoplayer/dash/c;->B(Lz1/e;Ljava/util/regex/Pattern;Landroidx/media3/common/r;)[Landroidx/media3/common/r;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    return-object p0

    .line 90
    :cond_0
    const-string v7, "urn:scte:dash:cc:cea-708:2015"

    .line 91
    .line 92
    iget-object v8, v6, Lz1/e;->a:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    if-eqz v7, :cond_1

    .line 99
    .line 100
    new-instance p0, Landroidx/media3/common/r$b;

    .line 101
    .line 102
    invoke-direct {p0}, Landroidx/media3/common/r$b;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string p1, "application/cea-708"

    .line 106
    .line 107
    invoke-virtual {p0, p1}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    iget-wide v0, v4, Lz1/a;->a:J

    .line 117
    .line 118
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v0, ":cea708"

    .line 122
    .line 123
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p0, p1}, Landroidx/media3/common/r$b;->f0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-virtual {p0}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    sget-object p1, Landroidx/media3/exoplayer/dash/c;->B:Ljava/util/regex/Pattern;

    .line 139
    .line 140
    invoke-static {v6, p1, p0}, Landroidx/media3/exoplayer/dash/c;->B(Lz1/e;Ljava/util/regex/Pattern;Landroidx/media3/common/r;)[Landroidx/media3/common/r;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    return-object p0

    .line 145
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 149
    .line 150
    goto/16 :goto_0

    .line 151
    .line 152
    :cond_3
    new-array p0, v1, [Landroidx/media3/common/r;

    .line 153
    .line 154
    return-object p0
.end method

.method private static s(Ljava/util/List;)[[I
    .locals 13

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcom/google/common/collect/Maps;->p(I)Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    new-instance v3, Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-direct {v3, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 17
    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    move v5, v4

    .line 21
    :goto_0
    if-ge v5, v0, :cond_0

    .line 22
    .line 23
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    check-cast v6, Lz1/a;

    .line 28
    .line 29
    iget-wide v6, v6, Lz1/a;->a:J

    .line 30
    .line 31
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    new-instance v6, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    add-int/lit8 v5, v5, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    move v5, v4

    .line 64
    :goto_1
    if-ge v5, v0, :cond_6

    .line 65
    .line 66
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    check-cast v6, Lz1/a;

    .line 71
    .line 72
    iget-object v7, v6, Lz1/a;->e:Ljava/util/List;

    .line 73
    .line 74
    invoke-static {v7}, Landroidx/media3/exoplayer/dash/c;->q(Ljava/util/List;)Lz1/e;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    if-nez v7, :cond_1

    .line 79
    .line 80
    iget-object v7, v6, Lz1/a;->f:Ljava/util/List;

    .line 81
    .line 82
    invoke-static {v7}, Landroidx/media3/exoplayer/dash/c;->q(Ljava/util/List;)Lz1/e;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    :cond_1
    if-eqz v7, :cond_2

    .line 87
    .line 88
    iget-object v7, v7, Lz1/e;->b:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 91
    .line 92
    .line 93
    move-result-wide v7

    .line 94
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    check-cast v7, Ljava/lang/Integer;

    .line 103
    .line 104
    if-eqz v7, :cond_2

    .line 105
    .line 106
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    goto :goto_2

    .line 111
    :cond_2
    move v7, v5

    .line 112
    :goto_2
    if-ne v7, v5, :cond_4

    .line 113
    .line 114
    iget-object v8, v6, Lz1/a;->f:Ljava/util/List;

    .line 115
    .line 116
    invoke-static {v8}, Landroidx/media3/exoplayer/dash/c;->o(Ljava/util/List;)Lz1/e;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    if-eqz v8, :cond_4

    .line 121
    .line 122
    iget-object v8, v8, Lz1/e;->b:Ljava/lang/String;

    .line 123
    .line 124
    const-string v9, ","

    .line 125
    .line 126
    invoke-static {v8, v9}, Landroidx/media3/common/util/a1;->o1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    array-length v9, v8

    .line 131
    move v10, v4

    .line 132
    :goto_3
    if-ge v10, v9, :cond_4

    .line 133
    .line 134
    aget-object v11, v8, v10

    .line 135
    .line 136
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 137
    .line 138
    .line 139
    move-result-wide v11

    .line 140
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 141
    .line 142
    .line 143
    move-result-object v11

    .line 144
    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v11

    .line 148
    check-cast v11, Ljava/lang/Integer;

    .line 149
    .line 150
    if-eqz v11, :cond_3

    .line 151
    .line 152
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 153
    .line 154
    .line 155
    move-result v12

    .line 156
    invoke-interface {p0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v12

    .line 160
    check-cast v12, Lz1/a;

    .line 161
    .line 162
    invoke-static {v6, v12}, Landroidx/media3/exoplayer/dash/c;->n(Lz1/a;Lz1/a;)Z

    .line 163
    .line 164
    .line 165
    move-result v12

    .line 166
    if-eqz v12, :cond_3

    .line 167
    .line 168
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 169
    .line 170
    .line 171
    move-result v11

    .line 172
    invoke-static {v7, v11}, Ljava/lang/Math;->min(II)I

    .line 173
    .line 174
    .line 175
    move-result v7

    .line 176
    :cond_3
    add-int/lit8 v10, v10, 0x1

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_4
    if-eq v7, v5, :cond_5

    .line 180
    .line 181
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    check-cast v6, Ljava/util/List;

    .line 186
    .line 187
    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v7

    .line 191
    check-cast v7, Ljava/util/List;

    .line 192
    .line 193
    invoke-interface {v7, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 194
    .line 195
    .line 196
    invoke-virtual {v3, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    invoke-interface {v2, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 203
    .line 204
    goto/16 :goto_1

    .line 205
    .line 206
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 207
    .line 208
    .line 209
    move-result p0

    .line 210
    new-array v0, p0, [[I

    .line 211
    .line 212
    :goto_4
    if-ge v4, p0, :cond_7

    .line 213
    .line 214
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    check-cast v1, Ljava/util/Collection;

    .line 219
    .line 220
    invoke-static {v1}, Lcom/google/common/primitives/Ints;->o(Ljava/util/Collection;)[I

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    aput-object v1, v0, v4

    .line 225
    .line 226
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    .line 227
    .line 228
    .line 229
    add-int/lit8 v4, v4, 0x1

    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_7
    return-object v0
.end method

.method private t(I[I)I
    .locals 4

    .line 1
    aget p1, p2, p1

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/dash/c;->k:[Landroidx/media3/exoplayer/dash/c$a;

    .line 8
    .line 9
    aget-object p1, v1, p1

    .line 10
    .line 11
    iget p1, p1, Landroidx/media3/exoplayer/dash/c$a;->e:I

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    array-length v2, p2

    .line 15
    if-ge v1, v2, :cond_2

    .line 16
    .line 17
    aget v2, p2, v1

    .line 18
    .line 19
    if-ne v2, p1, :cond_1

    .line 20
    .line 21
    iget-object v3, p0, Landroidx/media3/exoplayer/dash/c;->k:[Landroidx/media3/exoplayer/dash/c$a;

    .line 22
    .line 23
    aget-object v2, v3, v2

    .line 24
    .line 25
    iget v2, v2, Landroidx/media3/exoplayer/dash/c$a;->c:I

    .line 26
    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    return v1

    .line 30
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    return v0
.end method

.method private u([Li2/z;)[I
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p1

    .line 6
    if-ge v1, v2, :cond_1

    .line 7
    .line 8
    aget-object v2, p1, v1

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    iget-object v3, p0, Landroidx/media3/exoplayer/dash/c;->j:Lf2/z;

    .line 13
    .line 14
    invoke-interface {v2}, Li2/c0;->getTrackGroup()Landroidx/media3/common/f0;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v3, v2}, Lf2/z;->d(Landroidx/media3/common/f0;)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    aput v2, v0, v1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const/4 v2, -0x1

    .line 26
    aput v2, v0, v1

    .line 27
    .line 28
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return-object v0
.end method

.method private static v(Ljava/util/List;[I)Z
    .locals 6

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_2

    .line 5
    .line 6
    aget v3, p1, v2

    .line 7
    .line 8
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    check-cast v3, Lz1/a;

    .line 13
    .line 14
    iget-object v3, v3, Lz1/a;->c:Ljava/util/List;

    .line 15
    .line 16
    move v4, v1

    .line 17
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    if-ge v4, v5, :cond_1

    .line 22
    .line 23
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    check-cast v5, Lz1/j;

    .line 28
    .line 29
    iget-object v5, v5, Lz1/j;->e:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-nez v5, :cond_0

    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    return p0

    .line 39
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    return v1
.end method

.method private static w(ILjava/util/List;[[I[Z[[Landroidx/media3/common/r;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    if-ge v0, p0, :cond_2

    .line 4
    .line 5
    aget-object v2, p2, v0

    .line 6
    .line 7
    invoke-static {p1, v2}, Landroidx/media3/exoplayer/dash/c;->v(Ljava/util/List;[I)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    aput-boolean v2, p3, v0

    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    :cond_0
    aget-object v2, p2, v0

    .line 19
    .line 20
    invoke-static {p1, v2}, Landroidx/media3/exoplayer/dash/c;->r(Ljava/util/List;[I)[Landroidx/media3/common/r;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    aput-object v2, p4, v0

    .line 25
    .line 26
    array-length v2, v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return v1
.end method

.method private static synthetic x(Lg2/h;)Ljava/util/List;
    .locals 0

    .line 1
    iget p0, p0, Lg2/h;->a:I

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private static y(Landroidx/media3/exoplayer/dash/a$a;[Landroidx/media3/common/r;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    .line 3
    if-ge v0, v1, :cond_0

    .line 4
    .line 5
    aget-object v1, p1, v0

    .line 6
    .line 7
    invoke-interface {p0, v1}, Landroidx/media3/exoplayer/dash/a$a;->d(Landroidx/media3/common/r;)Landroidx/media3/common/r;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    aput-object v1, p1, v0

    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-void
.end method

.method private static z(I)[Lg2/h;
    .locals 0

    .line 1
    new-array p0, p0, [Lg2/h;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public A(Lg2/h;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/media3/exoplayer/dash/c;->r:Landroidx/media3/exoplayer/source/q$a;

    .line 2
    .line 3
    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/f0$a;->h(Landroidx/media3/exoplayer/source/f0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public C()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/c;->m:Landroidx/media3/exoplayer/dash/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/dash/f;->o()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/c;->s:[Lg2/h;

    .line 7
    .line 8
    array-length v1, v0

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_0

    .line 11
    .line 12
    aget-object v3, v0, v2

    .line 13
    .line 14
    invoke-virtual {v3, p0}, Lg2/h;->G(Lg2/h$b;)V

    .line 15
    .line 16
    .line 17
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Landroidx/media3/exoplayer/dash/c;->r:Landroidx/media3/exoplayer/source/q$a;

    .line 22
    .line 23
    return-void
.end method

.method public G(Lz1/c;I)V
    .locals 9

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/c;->v:Lz1/c;

    .line 2
    .line 3
    iput p2, p0, Landroidx/media3/exoplayer/dash/c;->w:I

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/c;->m:Landroidx/media3/exoplayer/dash/f;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/dash/f;->q(Lz1/c;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/c;->s:[Lg2/h;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    array-length v2, v0

    .line 16
    move v3, v1

    .line 17
    :goto_0
    if-ge v3, v2, :cond_0

    .line 18
    .line 19
    aget-object v4, v0, v3

    .line 20
    .line 21
    invoke-virtual {v4}, Lg2/h;->u()Lg2/i;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Landroidx/media3/exoplayer/dash/a;

    .line 26
    .line 27
    invoke-interface {v4, p1, p2}, Landroidx/media3/exoplayer/dash/a;->g(Lz1/c;I)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v3, v3, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/c;->r:Landroidx/media3/exoplayer/source/q$a;

    .line 34
    .line 35
    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/source/f0$a;->h(Landroidx/media3/exoplayer/source/f0;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p1, p2}, Lz1/c;->c(I)Lz1/g;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v0, v0, Lz1/g;->d:Ljava/util/List;

    .line 43
    .line 44
    iput-object v0, p0, Landroidx/media3/exoplayer/dash/c;->x:Ljava/util/List;

    .line 45
    .line 46
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/c;->t:[Landroidx/media3/exoplayer/dash/e;

    .line 47
    .line 48
    array-length v2, v0

    .line 49
    move v3, v1

    .line 50
    :goto_1
    if-ge v3, v2, :cond_5

    .line 51
    .line 52
    aget-object v4, v0, v3

    .line 53
    .line 54
    iget-object v5, p0, Landroidx/media3/exoplayer/dash/c;->x:Ljava/util/List;

    .line 55
    .line 56
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-eqz v6, :cond_4

    .line 65
    .line 66
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    check-cast v6, Lz1/f;

    .line 71
    .line 72
    invoke-virtual {v6}, Lz1/f;->a()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    invoke-virtual {v4}, Landroidx/media3/exoplayer/dash/e;->a()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    if-eqz v7, :cond_2

    .line 85
    .line 86
    invoke-virtual {p1}, Lz1/c;->d()I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    const/4 v7, 0x1

    .line 91
    sub-int/2addr v5, v7

    .line 92
    iget-boolean v8, p1, Lz1/c;->d:Z

    .line 93
    .line 94
    if-eqz v8, :cond_3

    .line 95
    .line 96
    if-ne p2, v5, :cond_3

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_3
    move v7, v1

    .line 100
    :goto_2
    invoke-virtual {v4, v6, v7}, Landroidx/media3/exoplayer/dash/e;->d(Lz1/f;Z)V

    .line 101
    .line 102
    .line 103
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_5
    return-void
.end method

.method public a(Landroidx/media3/exoplayer/v2;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/c;->u:Landroidx/media3/exoplayer/source/f0;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/f0;->a(Landroidx/media3/exoplayer/v2;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public b(JLandroidx/media3/exoplayer/c4;)J
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/c;->s:[Lg2/h;

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
    iget v4, v3, Lg2/h;->a:I

    .line 10
    .line 11
    const/4 v5, 0x2

    .line 12
    if-ne v4, v5, :cond_0

    .line 13
    .line 14
    invoke-virtual {v3, p1, p2, p3}, Lg2/h;->b(JLandroidx/media3/exoplayer/c4;)J

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

.method public declared-synchronized c(Lg2/h;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/c;->n:Ljava/util/IdentityHashMap;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Landroidx/media3/exoplayer/dash/f$c;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/media3/exoplayer/dash/f$c;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw p1
.end method

.method public discardBuffer(JZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/c;->s:[Lg2/h;

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
    invoke-virtual {v3, p1, p2, p3}, Lg2/h;->discardBuffer(JZ)V

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

.method public e([Li2/z;[Z[Lf2/u;[ZJ)J
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/dash/c;->u([Li2/z;)[I

    .line 2
    .line 3
    .line 4
    move-result-object v6

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/dash/c;->D([Li2/z;[Z[Lf2/u;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1, p3, v6}, Landroidx/media3/exoplayer/dash/c;->E([Li2/z;[Lf2/u;[I)V

    .line 9
    .line 10
    .line 11
    move-object v0, p0

    .line 12
    move-object v1, p1

    .line 13
    move-object v2, p3

    .line 14
    move-object v3, p4

    .line 15
    move-wide v4, p5

    .line 16
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/dash/c;->F([Li2/z;[Lf2/u;[ZJ[I)V

    .line 17
    .line 18
    .line 19
    new-instance p1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance p2, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    array-length p4, p3

    .line 30
    const/4 v0, 0x0

    .line 31
    move v1, v0

    .line 32
    :goto_0
    if-ge v1, p4, :cond_2

    .line 33
    .line 34
    aget-object v2, p3, v1

    .line 35
    .line 36
    instance-of v3, v2, Lg2/h;

    .line 37
    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    check-cast v2, Lg2/h;

    .line 41
    .line 42
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    instance-of v3, v2, Landroidx/media3/exoplayer/dash/e;

    .line 47
    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    check-cast v2, Landroidx/media3/exoplayer/dash/e;

    .line 51
    .line 52
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 59
    .line 60
    .line 61
    move-result p3

    .line 62
    invoke-static {p3}, Landroidx/media3/exoplayer/dash/c;->z(I)[Lg2/h;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    iput-object p3, p0, Landroidx/media3/exoplayer/dash/c;->s:[Lg2/h;

    .line 67
    .line 68
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 72
    .line 73
    .line 74
    move-result p3

    .line 75
    new-array p3, p3, [Landroidx/media3/exoplayer/dash/e;

    .line 76
    .line 77
    iput-object p3, p0, Landroidx/media3/exoplayer/dash/c;->t:[Landroidx/media3/exoplayer/dash/e;

    .line 78
    .line 79
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    iget-object p2, p0, Landroidx/media3/exoplayer/dash/c;->l:Lf2/e;

    .line 83
    .line 84
    new-instance p3, Landroidx/media3/exoplayer/dash/b;

    .line 85
    .line 86
    invoke-direct {p3}, Landroidx/media3/exoplayer/dash/b;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-static {p1, p3}, Lcom/google/common/collect/Lists;->o(Ljava/util/List;Lcom/google/common/base/f;)Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    invoke-interface {p2, p1, p3}, Lf2/e;->a(Ljava/util/List;Ljava/util/List;)Landroidx/media3/exoplayer/source/f0;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/c;->u:Landroidx/media3/exoplayer/source/f0;

    .line 98
    .line 99
    iget-boolean p1, p0, Landroidx/media3/exoplayer/dash/c;->y:Z

    .line 100
    .line 101
    if-eqz p1, :cond_3

    .line 102
    .line 103
    iput-boolean v0, p0, Landroidx/media3/exoplayer/dash/c;->y:Z

    .line 104
    .line 105
    iput-wide p5, p0, Landroidx/media3/exoplayer/dash/c;->z:J

    .line 106
    .line 107
    :cond_3
    return-wide p5
.end method

.method public f(Landroidx/media3/exoplayer/source/q$a;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/c;->r:Landroidx/media3/exoplayer/source/q$a;

    .line 2
    .line 3
    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/q$a;->g(Landroidx/media3/exoplayer/source/q;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/c;->u:Landroidx/media3/exoplayer/source/f0;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/f0;->getBufferedPositionUs()J

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
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/c;->u:Landroidx/media3/exoplayer/source/f0;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/f0;->getNextLoadPositionUs()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getTrackGroups()Lf2/z;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/c;->j:Lf2/z;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic h(Landroidx/media3/exoplayer/source/f0;)V
    .locals 0

    .line 1
    check-cast p1, Lg2/h;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/dash/c;->A(Lg2/h;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/c;->u:Landroidx/media3/exoplayer/source/f0;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/f0;->isLoading()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public maybeThrowPrepareError()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/c;->h:Landroidx/media3/exoplayer/upstream/p;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/upstream/p;->maybeThrowError()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public readDiscontinuity()J
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/c;->s:[Lg2/h;

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
    invoke-virtual {v3}, Lg2/h;->m()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    iget-wide v0, p0, Landroidx/media3/exoplayer/dash/c;->z:J

    .line 16
    .line 17
    return-wide v0

    .line 18
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/c;->s:[Lg2/h;

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
    invoke-virtual {v3}, Lg2/h;->isLoading()Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-nez v4, :cond_0

    .line 14
    .line 15
    iget-object v4, p0, Landroidx/media3/exoplayer/dash/c;->v:Lz1/c;

    .line 16
    .line 17
    iget v5, p0, Landroidx/media3/exoplayer/dash/c;->w:I

    .line 18
    .line 19
    invoke-virtual {v4, v5}, Lz1/c;->f(I)J

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    invoke-virtual {v3, v4, v5}, Lg2/h;->t(J)V

    .line 24
    .line 25
    .line 26
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/c;->u:Landroidx/media3/exoplayer/source/f0;

    .line 30
    .line 31
    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/source/f0;->reevaluateBuffer(J)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public seekToUs(J)J
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/c;->s:[Lg2/h;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    if-ge v3, v1, :cond_0

    .line 7
    .line 8
    aget-object v4, v0, v3

    .line 9
    .line 10
    invoke-virtual {v4, p1, p2}, Lg2/h;->I(J)V

    .line 11
    .line 12
    .line 13
    add-int/lit8 v3, v3, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/c;->t:[Landroidx/media3/exoplayer/dash/e;

    .line 17
    .line 18
    array-length v1, v0

    .line 19
    :goto_1
    if-ge v2, v1, :cond_1

    .line 20
    .line 21
    aget-object v3, v0, v2

    .line 22
    .line 23
    invoke-virtual {v3, p1, p2}, Landroidx/media3/exoplayer/dash/e;->b(J)V

    .line 24
    .line 25
    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    return-wide p1
.end method
