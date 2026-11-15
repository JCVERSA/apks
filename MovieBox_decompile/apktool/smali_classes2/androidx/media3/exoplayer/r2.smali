.class final Landroidx/media3/exoplayer/r2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroidx/media3/exoplayer/source/q$a;
.implements Li2/e0$a;
.implements Landroidx/media3/exoplayer/q3$d;
.implements Landroidx/media3/exoplayer/n$a;
.implements Landroidx/media3/exoplayer/t3$a;
.implements Landroidx/media3/exoplayer/h$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/r2$f;,
        Landroidx/media3/exoplayer/r2$e;,
        Landroidx/media3/exoplayer/r2$h;,
        Landroidx/media3/exoplayer/r2$b;,
        Landroidx/media3/exoplayer/r2$c;,
        Landroidx/media3/exoplayer/r2$d;,
        Landroidx/media3/exoplayer/r2$g;
    }
.end annotation


# static fields
.field private static final e0:J


# instance fields
.field private final A:Z

.field private final B:Landroidx/media3/exoplayer/h;

.field private C:Landroidx/media3/exoplayer/c4;

.field private D:Landroidx/media3/exoplayer/r3;

.field private E:Landroidx/media3/exoplayer/r2$e;

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:J

.field private K:Z

.field private L:I

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:I

.field private R:Landroidx/media3/exoplayer/r2$h;

.field private S:J

.field private T:J

.field private U:I

.field private V:Z

.field private W:Landroidx/media3/exoplayer/ExoPlaybackException;

.field private X:J

.field private Y:J

.field private Z:Landroidx/media3/exoplayer/ExoPlayer$c;

.field private final a:[Landroidx/media3/exoplayer/a4;

.field private a0:Landroidx/media3/common/e0;

.field private final b:[Landroidx/media3/exoplayer/y3;

.field private b0:J

.field private final c:[Z

.field private c0:Z

.field private final d:Li2/e0;

.field private d0:F

.field private final e:Li2/f0;

.field private final f:Landroidx/media3/exoplayer/u2;

.field private final g:Landroidx/media3/exoplayer/upstream/e;

.field private final h:Landroidx/media3/common/util/p;

.field private final i:Landroidx/media3/exoplayer/s3;

.field private final j:Landroid/os/Looper;

.field private final k:Landroidx/media3/common/e0$c;

.field private final l:Landroidx/media3/common/e0$b;

.field private final m:J

.field private final n:Z

.field private final o:Landroidx/media3/exoplayer/n;

.field private final p:Ljava/util/ArrayList;

.field private final q:Landroidx/media3/common/util/i;

.field private final r:Landroidx/media3/exoplayer/r2$f;

.field private final s:Landroidx/media3/exoplayer/b3;

.field private final t:Landroidx/media3/exoplayer/q3;

.field private final u:Landroidx/media3/exoplayer/t2;

.field private final v:J

.field private final w:Lx1/f4;

.field private final x:Z

.field private final y:Lx1/a;

.field private final z:Landroidx/media3/common/util/p;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x2710

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->y1(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    sput-wide v0, Landroidx/media3/exoplayer/r2;->e0:J

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Landroidx/media3/exoplayer/w3;[Landroidx/media3/exoplayer/w3;Li2/e0;Li2/f0;Landroidx/media3/exoplayer/u2;Landroidx/media3/exoplayer/upstream/e;IZLx1/a;Landroidx/media3/exoplayer/c4;Landroidx/media3/exoplayer/t2;JZZLandroid/os/Looper;Landroidx/media3/common/util/i;Landroidx/media3/exoplayer/r2$f;Lx1/f4;Landroidx/media3/exoplayer/s3;Landroidx/media3/exoplayer/ExoPlayer$c;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p10

    move-wide/from16 v6, p13

    move-object/from16 v8, p18

    move-object/from16 v9, p20

    move-object/from16 v10, p22

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    iput-wide v11, v0, Landroidx/media3/exoplayer/r2;->b0:J

    move-object/from16 v13, p19

    .line 3
    iput-object v13, v0, Landroidx/media3/exoplayer/r2;->r:Landroidx/media3/exoplayer/r2$f;

    .line 4
    iput-object v2, v0, Landroidx/media3/exoplayer/r2;->d:Li2/e0;

    move-object/from16 v13, p5

    .line 5
    iput-object v13, v0, Landroidx/media3/exoplayer/r2;->e:Li2/f0;

    .line 6
    iput-object v3, v0, Landroidx/media3/exoplayer/r2;->f:Landroidx/media3/exoplayer/u2;

    .line 7
    iput-object v4, v0, Landroidx/media3/exoplayer/r2;->g:Landroidx/media3/exoplayer/upstream/e;

    move/from16 v14, p8

    .line 8
    iput v14, v0, Landroidx/media3/exoplayer/r2;->L:I

    move/from16 v14, p9

    .line 9
    iput-boolean v14, v0, Landroidx/media3/exoplayer/r2;->M:Z

    move-object/from16 v14, p11

    .line 10
    iput-object v14, v0, Landroidx/media3/exoplayer/r2;->C:Landroidx/media3/exoplayer/c4;

    move-object/from16 v14, p12

    .line 11
    iput-object v14, v0, Landroidx/media3/exoplayer/r2;->u:Landroidx/media3/exoplayer/t2;

    .line 12
    iput-wide v6, v0, Landroidx/media3/exoplayer/r2;->v:J

    .line 13
    iput-wide v6, v0, Landroidx/media3/exoplayer/r2;->X:J

    move/from16 v6, p15

    .line 14
    iput-boolean v6, v0, Landroidx/media3/exoplayer/r2;->G:Z

    move/from16 v6, p16

    .line 15
    iput-boolean v6, v0, Landroidx/media3/exoplayer/r2;->x:Z

    .line 16
    iput-object v8, v0, Landroidx/media3/exoplayer/r2;->q:Landroidx/media3/common/util/i;

    .line 17
    iput-object v9, v0, Landroidx/media3/exoplayer/r2;->w:Lx1/f4;

    .line 18
    iput-object v10, v0, Landroidx/media3/exoplayer/r2;->Z:Landroidx/media3/exoplayer/ExoPlayer$c;

    .line 19
    iput-object v5, v0, Landroidx/media3/exoplayer/r2;->y:Lx1/a;

    const/high16 v6, 0x3f800000    # 1.0f

    .line 20
    iput v6, v0, Landroidx/media3/exoplayer/r2;->d0:F

    .line 21
    iput-wide v11, v0, Landroidx/media3/exoplayer/r2;->Y:J

    .line 22
    iput-wide v11, v0, Landroidx/media3/exoplayer/r2;->J:J

    .line 23
    invoke-interface {v3, v9}, Landroidx/media3/exoplayer/u2;->i(Lx1/f4;)J

    move-result-wide v6

    iput-wide v6, v0, Landroidx/media3/exoplayer/r2;->m:J

    .line 24
    invoke-interface {v3, v9}, Landroidx/media3/exoplayer/u2;->h(Lx1/f4;)Z

    move-result v3

    iput-boolean v3, v0, Landroidx/media3/exoplayer/r2;->n:Z

    .line 25
    sget-object v3, Landroidx/media3/common/e0;->a:Landroidx/media3/common/e0;

    iput-object v3, v0, Landroidx/media3/exoplayer/r2;->a0:Landroidx/media3/common/e0;

    .line 26
    invoke-static/range {p5 .. p5}, Landroidx/media3/exoplayer/r3;->k(Li2/f0;)Landroidx/media3/exoplayer/r3;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 27
    new-instance v6, Landroidx/media3/exoplayer/r2$e;

    invoke-direct {v6, v3}, Landroidx/media3/exoplayer/r2$e;-><init>(Landroidx/media3/exoplayer/r3;)V

    iput-object v6, v0, Landroidx/media3/exoplayer/r2;->E:Landroidx/media3/exoplayer/r2$e;

    .line 28
    array-length v3, v1

    new-array v3, v3, [Landroidx/media3/exoplayer/y3;

    iput-object v3, v0, Landroidx/media3/exoplayer/r2;->b:[Landroidx/media3/exoplayer/y3;

    .line 29
    array-length v3, v1

    new-array v3, v3, [Z

    iput-object v3, v0, Landroidx/media3/exoplayer/r2;->c:[Z

    .line 30
    invoke-virtual/range {p4 .. p4}, Li2/e0;->d()Landroidx/media3/exoplayer/y3$a;

    move-result-object v3

    .line 31
    array-length v6, v1

    new-array v6, v6, [Landroidx/media3/exoplayer/a4;

    iput-object v6, v0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    const/4 v6, 0x0

    move v7, v6

    .line 32
    :goto_0
    array-length v11, v1

    const/4 v12, 0x1

    if-ge v6, v11, :cond_2

    .line 33
    aget-object v11, v1, v6

    invoke-interface {v11, v6, v9, v8}, Landroidx/media3/exoplayer/w3;->i(ILx1/f4;Landroidx/media3/common/util/i;)V

    .line 34
    iget-object v11, v0, Landroidx/media3/exoplayer/r2;->b:[Landroidx/media3/exoplayer/y3;

    aget-object v13, v1, v6

    invoke-interface {v13}, Landroidx/media3/exoplayer/w3;->getCapabilities()Landroidx/media3/exoplayer/y3;

    move-result-object v13

    aput-object v13, v11, v6

    if-eqz v3, :cond_0

    .line 35
    iget-object v11, v0, Landroidx/media3/exoplayer/r2;->b:[Landroidx/media3/exoplayer/y3;

    aget-object v11, v11, v6

    invoke-interface {v11, v3}, Landroidx/media3/exoplayer/y3;->o(Landroidx/media3/exoplayer/y3$a;)V

    .line 36
    :cond_0
    aget-object v11, p3, v6

    if-eqz v11, :cond_1

    .line 37
    array-length v7, v1

    add-int/2addr v7, v6

    invoke-interface {v11, v7, v9, v8}, Landroidx/media3/exoplayer/w3;->i(ILx1/f4;Landroidx/media3/common/util/i;)V

    move v7, v12

    .line 38
    :cond_1
    iget-object v11, v0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    new-instance v12, Landroidx/media3/exoplayer/a4;

    aget-object v13, v1, v6

    aget-object v14, p3, v6

    invoke-direct {v12, v13, v14, v6}, Landroidx/media3/exoplayer/a4;-><init>(Landroidx/media3/exoplayer/w3;Landroidx/media3/exoplayer/w3;I)V

    aput-object v12, v11, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 39
    :cond_2
    iput-boolean v7, v0, Landroidx/media3/exoplayer/r2;->A:Z

    .line 40
    new-instance v1, Landroidx/media3/exoplayer/n;

    invoke-direct {v1, p0, v8}, Landroidx/media3/exoplayer/n;-><init>(Landroidx/media3/exoplayer/n$a;Landroidx/media3/common/util/i;)V

    iput-object v1, v0, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/media3/exoplayer/r2;->p:Ljava/util/ArrayList;

    .line 42
    new-instance v1, Landroidx/media3/common/e0$c;

    invoke-direct {v1}, Landroidx/media3/common/e0$c;-><init>()V

    iput-object v1, v0, Landroidx/media3/exoplayer/r2;->k:Landroidx/media3/common/e0$c;

    .line 43
    new-instance v1, Landroidx/media3/common/e0$b;

    invoke-direct {v1}, Landroidx/media3/common/e0$b;-><init>()V

    iput-object v1, v0, Landroidx/media3/exoplayer/r2;->l:Landroidx/media3/common/e0$b;

    .line 44
    invoke-virtual {v2, p0, v4}, Li2/e0;->e(Li2/e0$a;Landroidx/media3/exoplayer/upstream/e;)V

    .line 45
    iput-boolean v12, v0, Landroidx/media3/exoplayer/r2;->V:Z

    const/4 v1, 0x0

    move-object/from16 v2, p17

    .line 46
    invoke-interface {v8, v2, v1}, Landroidx/media3/common/util/i;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/p;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/r2;->z:Landroidx/media3/common/util/p;

    .line 47
    new-instance v2, Landroidx/media3/exoplayer/b3;

    new-instance v3, Landroidx/media3/exoplayer/o2;

    invoke-direct {v3, p0}, Landroidx/media3/exoplayer/o2;-><init>(Landroidx/media3/exoplayer/r2;)V

    invoke-direct {v2, v5, v1, v3, v10}, Landroidx/media3/exoplayer/b3;-><init>(Lx1/a;Landroidx/media3/common/util/p;Landroidx/media3/exoplayer/y2$a;Landroidx/media3/exoplayer/ExoPlayer$c;)V

    iput-object v2, v0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 48
    new-instance v2, Landroidx/media3/exoplayer/q3;

    invoke-direct {v2, p0, v5, v1, v9}, Landroidx/media3/exoplayer/q3;-><init>(Landroidx/media3/exoplayer/q3$d;Lx1/a;Landroidx/media3/common/util/p;Lx1/f4;)V

    iput-object v2, v0, Landroidx/media3/exoplayer/r2;->t:Landroidx/media3/exoplayer/q3;

    if-nez p21, :cond_3

    .line 49
    new-instance v1, Landroidx/media3/exoplayer/s3;

    invoke-direct {v1}, Landroidx/media3/exoplayer/s3;-><init>()V

    goto :goto_1

    :cond_3
    move-object/from16 v1, p21

    :goto_1
    iput-object v1, v0, Landroidx/media3/exoplayer/r2;->i:Landroidx/media3/exoplayer/s3;

    .line 50
    invoke-virtual {v1}, Landroidx/media3/exoplayer/s3;->a()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/r2;->j:Landroid/os/Looper;

    .line 51
    invoke-interface {v8, v1, p0}, Landroidx/media3/common/util/i;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/p;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    .line 52
    new-instance v2, Landroidx/media3/exoplayer/h;

    move-object/from16 v3, p1

    invoke-direct {v2, v3, v1, p0}, Landroidx/media3/exoplayer/h;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroidx/media3/exoplayer/h$a;)V

    iput-object v2, v0, Landroidx/media3/exoplayer/r2;->B:Landroidx/media3/exoplayer/h;

    return-void
.end method

.method private A()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/media3/exoplayer/r2;->q:Landroidx/media3/common/util/i;

    .line 4
    .line 5
    invoke-interface {v1}, Landroidx/media3/common/util/i;->uptimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    iget-object v3, v0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    .line 10
    .line 11
    const/4 v4, 0x2

    .line 12
    invoke-interface {v3, v4}, Landroidx/media3/common/util/p;->removeMessages(I)V

    .line 13
    .line 14
    .line 15
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->O1()V

    .line 16
    .line 17
    .line 18
    iget-object v3, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 19
    .line 20
    iget v3, v3, Landroidx/media3/exoplayer/r3;->e:I

    .line 21
    .line 22
    const/4 v5, 0x1

    .line 23
    if-eq v3, v5, :cond_1c

    .line 24
    .line 25
    const/4 v6, 0x4

    .line 26
    if-ne v3, v6, :cond_0

    .line 27
    .line 28
    goto/16 :goto_b

    .line 29
    .line 30
    :cond_0
    iget-object v3, v0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 31
    .line 32
    invoke-virtual {v3}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    if-nez v3, :cond_1

    .line 37
    .line 38
    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/r2;->T0(J)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    const-string v7, "doSomeWork"

    .line 43
    .line 44
    invoke-static {v7}, Landroidx/media3/common/util/q0;->a(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->T1()V

    .line 48
    .line 49
    .line 50
    iget-boolean v7, v3, Landroidx/media3/exoplayer/y2;->f:Z

    .line 51
    .line 52
    const/4 v8, 0x0

    .line 53
    if-eqz v7, :cond_6

    .line 54
    .line 55
    iget-object v7, v0, Landroidx/media3/exoplayer/r2;->q:Landroidx/media3/common/util/i;

    .line 56
    .line 57
    invoke-interface {v7}, Landroidx/media3/common/util/i;->elapsedRealtime()J

    .line 58
    .line 59
    .line 60
    move-result-wide v9

    .line 61
    invoke-static {v9, v10}, Landroidx/media3/common/util/a1;->R0(J)J

    .line 62
    .line 63
    .line 64
    move-result-wide v9

    .line 65
    iput-wide v9, v0, Landroidx/media3/exoplayer/r2;->T:J

    .line 66
    .line 67
    iget-object v7, v3, Landroidx/media3/exoplayer/y2;->a:Landroidx/media3/exoplayer/source/q;

    .line 68
    .line 69
    iget-object v9, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 70
    .line 71
    iget-wide v9, v9, Landroidx/media3/exoplayer/r3;->s:J

    .line 72
    .line 73
    iget-wide v11, v0, Landroidx/media3/exoplayer/r2;->m:J

    .line 74
    .line 75
    sub-long/2addr v9, v11

    .line 76
    iget-boolean v11, v0, Landroidx/media3/exoplayer/r2;->n:Z

    .line 77
    .line 78
    invoke-interface {v7, v9, v10, v11}, Landroidx/media3/exoplayer/source/q;->discardBuffer(JZ)V

    .line 79
    .line 80
    .line 81
    move v9, v5

    .line 82
    move v10, v9

    .line 83
    move v7, v8

    .line 84
    :goto_0
    iget-object v11, v0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 85
    .line 86
    array-length v12, v11

    .line 87
    if-ge v7, v12, :cond_7

    .line 88
    .line 89
    aget-object v11, v11, v7

    .line 90
    .line 91
    invoke-virtual {v11}, Landroidx/media3/exoplayer/a4;->h()I

    .line 92
    .line 93
    .line 94
    move-result v12

    .line 95
    if-nez v12, :cond_2

    .line 96
    .line 97
    invoke-direct {v0, v7, v8}, Landroidx/media3/exoplayer/r2;->m0(IZ)V

    .line 98
    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_2
    iget-wide v12, v0, Landroidx/media3/exoplayer/r2;->S:J

    .line 102
    .line 103
    iget-wide v14, v0, Landroidx/media3/exoplayer/r2;->T:J

    .line 104
    .line 105
    invoke-virtual {v11, v12, v13, v14, v15}, Landroidx/media3/exoplayer/a4;->I(JJ)V

    .line 106
    .line 107
    .line 108
    if-eqz v9, :cond_3

    .line 109
    .line 110
    invoke-virtual {v11}, Landroidx/media3/exoplayer/a4;->t()Z

    .line 111
    .line 112
    .line 113
    move-result v9

    .line 114
    if-eqz v9, :cond_3

    .line 115
    .line 116
    move v9, v5

    .line 117
    goto :goto_1

    .line 118
    :cond_3
    move v9, v8

    .line 119
    :goto_1
    invoke-virtual {v11, v3}, Landroidx/media3/exoplayer/a4;->a(Landroidx/media3/exoplayer/y2;)Z

    .line 120
    .line 121
    .line 122
    move-result v11

    .line 123
    invoke-direct {v0, v7, v11}, Landroidx/media3/exoplayer/r2;->m0(IZ)V

    .line 124
    .line 125
    .line 126
    if-eqz v10, :cond_4

    .line 127
    .line 128
    if-eqz v11, :cond_4

    .line 129
    .line 130
    move v10, v5

    .line 131
    goto :goto_2

    .line 132
    :cond_4
    move v10, v8

    .line 133
    :goto_2
    if-nez v11, :cond_5

    .line 134
    .line 135
    invoke-direct {v0, v7}, Landroidx/media3/exoplayer/r2;->l0(I)V

    .line 136
    .line 137
    .line 138
    :cond_5
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_6
    iget-object v7, v3, Landroidx/media3/exoplayer/y2;->a:Landroidx/media3/exoplayer/source/q;

    .line 142
    .line 143
    invoke-interface {v7}, Landroidx/media3/exoplayer/source/q;->maybeThrowPrepareError()V

    .line 144
    .line 145
    .line 146
    move v9, v5

    .line 147
    move v10, v9

    .line 148
    :cond_7
    iget-object v7, v3, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 149
    .line 150
    iget-wide v11, v7, Landroidx/media3/exoplayer/z2;->e:J

    .line 151
    .line 152
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    if-eqz v9, :cond_9

    .line 158
    .line 159
    iget-boolean v7, v3, Landroidx/media3/exoplayer/y2;->f:Z

    .line 160
    .line 161
    if-eqz v7, :cond_9

    .line 162
    .line 163
    cmp-long v7, v11, v13

    .line 164
    .line 165
    if-eqz v7, :cond_8

    .line 166
    .line 167
    iget-object v7, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 168
    .line 169
    iget-wide v13, v7, Landroidx/media3/exoplayer/r3;->s:J

    .line 170
    .line 171
    cmp-long v7, v11, v13

    .line 172
    .line 173
    if-gtz v7, :cond_9

    .line 174
    .line 175
    :cond_8
    move v7, v5

    .line 176
    goto :goto_4

    .line 177
    :cond_9
    move v7, v8

    .line 178
    :goto_4
    if-eqz v7, :cond_a

    .line 179
    .line 180
    iget-boolean v9, v0, Landroidx/media3/exoplayer/r2;->H:Z

    .line 181
    .line 182
    if-eqz v9, :cond_a

    .line 183
    .line 184
    iput-boolean v8, v0, Landroidx/media3/exoplayer/r2;->H:Z

    .line 185
    .line 186
    iget-object v9, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 187
    .line 188
    iget v9, v9, Landroidx/media3/exoplayer/r3;->n:I

    .line 189
    .line 190
    const/4 v11, 0x5

    .line 191
    invoke-direct {v0, v8, v9, v8, v11}, Landroidx/media3/exoplayer/r2;->m1(ZIZI)V

    .line 192
    .line 193
    .line 194
    :cond_a
    const/4 v9, 0x3

    .line 195
    if-eqz v7, :cond_b

    .line 196
    .line 197
    iget-object v7, v3, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 198
    .line 199
    iget-boolean v7, v7, Landroidx/media3/exoplayer/z2;->j:Z

    .line 200
    .line 201
    if-eqz v7, :cond_b

    .line 202
    .line 203
    invoke-direct {v0, v6}, Landroidx/media3/exoplayer/r2;->w1(I)V

    .line 204
    .line 205
    .line 206
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->J1()V

    .line 207
    .line 208
    .line 209
    goto :goto_5

    .line 210
    :cond_b
    iget-object v7, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 211
    .line 212
    iget v7, v7, Landroidx/media3/exoplayer/r3;->e:I

    .line 213
    .line 214
    if-ne v7, v4, :cond_c

    .line 215
    .line 216
    invoke-direct {v0, v10}, Landroidx/media3/exoplayer/r2;->E1(Z)Z

    .line 217
    .line 218
    .line 219
    move-result v7

    .line 220
    if-eqz v7, :cond_c

    .line 221
    .line 222
    invoke-direct {v0, v9}, Landroidx/media3/exoplayer/r2;->w1(I)V

    .line 223
    .line 224
    .line 225
    const/4 v7, 0x0

    .line 226
    iput-object v7, v0, Landroidx/media3/exoplayer/r2;->W:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 227
    .line 228
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->D1()Z

    .line 229
    .line 230
    .line 231
    move-result v7

    .line 232
    if-eqz v7, :cond_10

    .line 233
    .line 234
    invoke-direct {v0, v8, v8}, Landroidx/media3/exoplayer/r2;->W1(ZZ)V

    .line 235
    .line 236
    .line 237
    iget-object v7, v0, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    .line 238
    .line 239
    invoke-virtual {v7}, Landroidx/media3/exoplayer/n;->f()V

    .line 240
    .line 241
    .line 242
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->G1()V

    .line 243
    .line 244
    .line 245
    goto :goto_5

    .line 246
    :cond_c
    iget-object v7, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 247
    .line 248
    iget v7, v7, Landroidx/media3/exoplayer/r3;->e:I

    .line 249
    .line 250
    if-ne v7, v9, :cond_10

    .line 251
    .line 252
    iget v7, v0, Landroidx/media3/exoplayer/r2;->Q:I

    .line 253
    .line 254
    if-nez v7, :cond_d

    .line 255
    .line 256
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->b0()Z

    .line 257
    .line 258
    .line 259
    move-result v7

    .line 260
    if-eqz v7, :cond_e

    .line 261
    .line 262
    goto :goto_5

    .line 263
    :cond_d
    if-nez v10, :cond_10

    .line 264
    .line 265
    :cond_e
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->D1()Z

    .line 266
    .line 267
    .line 268
    move-result v7

    .line 269
    invoke-direct {v0, v7, v8}, Landroidx/media3/exoplayer/r2;->W1(ZZ)V

    .line 270
    .line 271
    .line 272
    invoke-direct {v0, v4}, Landroidx/media3/exoplayer/r2;->w1(I)V

    .line 273
    .line 274
    .line 275
    iget-boolean v7, v0, Landroidx/media3/exoplayer/r2;->I:Z

    .line 276
    .line 277
    if-eqz v7, :cond_f

    .line 278
    .line 279
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->z0()V

    .line 280
    .line 281
    .line 282
    iget-object v7, v0, Landroidx/media3/exoplayer/r2;->u:Landroidx/media3/exoplayer/t2;

    .line 283
    .line 284
    invoke-interface {v7}, Landroidx/media3/exoplayer/t2;->c()V

    .line 285
    .line 286
    .line 287
    :cond_f
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->J1()V

    .line 288
    .line 289
    .line 290
    :cond_10
    :goto_5
    iget-object v7, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 291
    .line 292
    iget v7, v7, Landroidx/media3/exoplayer/r3;->e:I

    .line 293
    .line 294
    if-ne v7, v4, :cond_15

    .line 295
    .line 296
    move v7, v8

    .line 297
    :goto_6
    iget-object v10, v0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 298
    .line 299
    array-length v11, v10

    .line 300
    if-ge v7, v11, :cond_12

    .line 301
    .line 302
    aget-object v10, v10, v7

    .line 303
    .line 304
    invoke-virtual {v10, v3}, Landroidx/media3/exoplayer/a4;->w(Landroidx/media3/exoplayer/y2;)Z

    .line 305
    .line 306
    .line 307
    move-result v10

    .line 308
    if-eqz v10, :cond_11

    .line 309
    .line 310
    invoke-direct {v0, v7}, Landroidx/media3/exoplayer/r2;->l0(I)V

    .line 311
    .line 312
    .line 313
    :cond_11
    add-int/lit8 v7, v7, 0x1

    .line 314
    .line 315
    goto :goto_6

    .line 316
    :cond_12
    iget-object v3, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 317
    .line 318
    iget-boolean v7, v3, Landroidx/media3/exoplayer/r3;->g:Z

    .line 319
    .line 320
    if-nez v7, :cond_15

    .line 321
    .line 322
    iget-wide v10, v3, Landroidx/media3/exoplayer/r3;->r:J

    .line 323
    .line 324
    const-wide/32 v12, 0x7a120

    .line 325
    .line 326
    .line 327
    cmp-long v3, v10, v12

    .line 328
    .line 329
    if-gez v3, :cond_15

    .line 330
    .line 331
    iget-object v3, v0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 332
    .line 333
    invoke-virtual {v3}, Landroidx/media3/exoplayer/b3;->n()Landroidx/media3/exoplayer/y2;

    .line 334
    .line 335
    .line 336
    move-result-object v3

    .line 337
    invoke-direct {v0, v3}, Landroidx/media3/exoplayer/r2;->a0(Landroidx/media3/exoplayer/y2;)Z

    .line 338
    .line 339
    .line 340
    move-result v3

    .line 341
    if-eqz v3, :cond_15

    .line 342
    .line 343
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->D1()Z

    .line 344
    .line 345
    .line 346
    move-result v3

    .line 347
    if-eqz v3, :cond_15

    .line 348
    .line 349
    iget-wide v10, v0, Landroidx/media3/exoplayer/r2;->Y:J

    .line 350
    .line 351
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    cmp-long v3, v10, v12

    .line 357
    .line 358
    if-nez v3, :cond_13

    .line 359
    .line 360
    iget-object v3, v0, Landroidx/media3/exoplayer/r2;->q:Landroidx/media3/common/util/i;

    .line 361
    .line 362
    invoke-interface {v3}, Landroidx/media3/common/util/i;->elapsedRealtime()J

    .line 363
    .line 364
    .line 365
    move-result-wide v10

    .line 366
    iput-wide v10, v0, Landroidx/media3/exoplayer/r2;->Y:J

    .line 367
    .line 368
    goto :goto_7

    .line 369
    :cond_13
    iget-object v3, v0, Landroidx/media3/exoplayer/r2;->q:Landroidx/media3/common/util/i;

    .line 370
    .line 371
    invoke-interface {v3}, Landroidx/media3/common/util/i;->elapsedRealtime()J

    .line 372
    .line 373
    .line 374
    move-result-wide v10

    .line 375
    iget-wide v12, v0, Landroidx/media3/exoplayer/r2;->Y:J

    .line 376
    .line 377
    sub-long/2addr v10, v12

    .line 378
    const-wide/16 v12, 0xfa0

    .line 379
    .line 380
    cmp-long v3, v10, v12

    .line 381
    .line 382
    if-gez v3, :cond_14

    .line 383
    .line 384
    goto :goto_7

    .line 385
    :cond_14
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 386
    .line 387
    const-string v2, "Playback stuck buffering and not loading"

    .line 388
    .line 389
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    throw v1

    .line 393
    :cond_15
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    iput-wide v10, v0, Landroidx/media3/exoplayer/r2;->Y:J

    .line 399
    .line 400
    :goto_7
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->D1()Z

    .line 401
    .line 402
    .line 403
    move-result v3

    .line 404
    if-eqz v3, :cond_16

    .line 405
    .line 406
    iget-object v3, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 407
    .line 408
    iget v3, v3, Landroidx/media3/exoplayer/r3;->e:I

    .line 409
    .line 410
    if-ne v3, v9, :cond_16

    .line 411
    .line 412
    move v3, v5

    .line 413
    goto :goto_8

    .line 414
    :cond_16
    move v3, v8

    .line 415
    :goto_8
    iget-boolean v7, v0, Landroidx/media3/exoplayer/r2;->P:Z

    .line 416
    .line 417
    if-eqz v7, :cond_17

    .line 418
    .line 419
    iget-boolean v7, v0, Landroidx/media3/exoplayer/r2;->O:Z

    .line 420
    .line 421
    if-eqz v7, :cond_17

    .line 422
    .line 423
    if-eqz v3, :cond_17

    .line 424
    .line 425
    goto :goto_9

    .line 426
    :cond_17
    move v5, v8

    .line 427
    :goto_9
    iget-object v7, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 428
    .line 429
    iget-boolean v10, v7, Landroidx/media3/exoplayer/r3;->p:Z

    .line 430
    .line 431
    if-eq v10, v5, :cond_18

    .line 432
    .line 433
    invoke-virtual {v7, v5}, Landroidx/media3/exoplayer/r3;->i(Z)Landroidx/media3/exoplayer/r3;

    .line 434
    .line 435
    .line 436
    move-result-object v7

    .line 437
    iput-object v7, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 438
    .line 439
    :cond_18
    iput-boolean v8, v0, Landroidx/media3/exoplayer/r2;->O:Z

    .line 440
    .line 441
    if-nez v5, :cond_1b

    .line 442
    .line 443
    iget-object v5, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 444
    .line 445
    iget v5, v5, Landroidx/media3/exoplayer/r3;->e:I

    .line 446
    .line 447
    if-ne v5, v6, :cond_19

    .line 448
    .line 449
    goto :goto_a

    .line 450
    :cond_19
    if-nez v3, :cond_1a

    .line 451
    .line 452
    if-eq v5, v4, :cond_1a

    .line 453
    .line 454
    if-ne v5, v9, :cond_1b

    .line 455
    .line 456
    iget v3, v0, Landroidx/media3/exoplayer/r2;->Q:I

    .line 457
    .line 458
    if-eqz v3, :cond_1b

    .line 459
    .line 460
    :cond_1a
    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/r2;->T0(J)V

    .line 461
    .line 462
    .line 463
    :cond_1b
    :goto_a
    invoke-static {}, Landroidx/media3/common/util/q0;->b()V

    .line 464
    .line 465
    .line 466
    :cond_1c
    :goto_b
    return-void
.end method

.method private A1(F)V
    .locals 4

    .line 1
    iput p1, p0, Landroidx/media3/exoplayer/r2;->d0:F

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->B:Landroidx/media3/exoplayer/h;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/h;->f()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    mul-float/2addr p1, v0

    .line 10
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 11
    .line 12
    array-length v1, v0

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v1, :cond_0

    .line 15
    .line 16
    aget-object v3, v0, v2

    .line 17
    .line 18
    invoke-virtual {v3, p1}, Landroidx/media3/exoplayer/a4;->T(F)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method private B(Landroidx/media3/exoplayer/y2;IZJ)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 6
    .line 7
    aget-object v2, v2, p2

    .line 8
    .line 9
    invoke-virtual {v2}, Landroidx/media3/exoplayer/a4;->x()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v3, v0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 17
    .line 18
    invoke-virtual {v3}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x1

    .line 24
    if-ne v1, v3, :cond_1

    .line 25
    .line 26
    move/from16 v17, v5

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move/from16 v17, v4

    .line 30
    .line 31
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/y2;->p()Li2/f0;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget-object v6, v3, Li2/f0;->b:[Landroidx/media3/exoplayer/z3;

    .line 36
    .line 37
    aget-object v6, v6, p2

    .line 38
    .line 39
    iget-object v3, v3, Li2/f0;->c:[Li2/z;

    .line 40
    .line 41
    aget-object v7, v3, p2

    .line 42
    .line 43
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->D1()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    iget-object v3, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 50
    .line 51
    iget v3, v3, Landroidx/media3/exoplayer/r3;->e:I

    .line 52
    .line 53
    const/4 v8, 0x3

    .line 54
    if-ne v3, v8, :cond_2

    .line 55
    .line 56
    move/from16 v18, v5

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    move/from16 v18, v4

    .line 60
    .line 61
    :goto_1
    if-nez p3, :cond_3

    .line 62
    .line 63
    if-eqz v18, :cond_3

    .line 64
    .line 65
    move v9, v5

    .line 66
    goto :goto_2

    .line 67
    :cond_3
    move v9, v4

    .line 68
    :goto_2
    iget v3, v0, Landroidx/media3/exoplayer/r2;->Q:I

    .line 69
    .line 70
    add-int/2addr v3, v5

    .line 71
    iput v3, v0, Landroidx/media3/exoplayer/r2;->Q:I

    .line 72
    .line 73
    iget-object v3, v1, Landroidx/media3/exoplayer/y2;->c:[Lf2/u;

    .line 74
    .line 75
    aget-object v8, v3, p2

    .line 76
    .line 77
    iget-wide v10, v0, Landroidx/media3/exoplayer/r2;->S:J

    .line 78
    .line 79
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/y2;->m()J

    .line 80
    .line 81
    .line 82
    move-result-wide v13

    .line 83
    iget-object v3, v1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 84
    .line 85
    iget-object v15, v3, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    .line 86
    .line 87
    iget-object v12, v0, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    .line 88
    .line 89
    move-object v3, v2

    .line 90
    move-object v4, v6

    .line 91
    move-object v5, v7

    .line 92
    move-object v6, v8

    .line 93
    move-wide v7, v10

    .line 94
    move/from16 v10, v17

    .line 95
    .line 96
    move-object/from16 v16, v12

    .line 97
    .line 98
    move-wide/from16 v11, p4

    .line 99
    .line 100
    invoke-virtual/range {v3 .. v16}, Landroidx/media3/exoplayer/a4;->e(Landroidx/media3/exoplayer/z3;Li2/z;Lf2/u;JZZJJLandroidx/media3/exoplayer/source/r$b;Landroidx/media3/exoplayer/n;)V

    .line 101
    .line 102
    .line 103
    new-instance v3, Landroidx/media3/exoplayer/r2$a;

    .line 104
    .line 105
    invoke-direct {v3, v0}, Landroidx/media3/exoplayer/r2$a;-><init>(Landroidx/media3/exoplayer/r2;)V

    .line 106
    .line 107
    .line 108
    const/16 v4, 0xb

    .line 109
    .line 110
    invoke-virtual {v2, v4, v3, v1}, Landroidx/media3/exoplayer/a4;->n(ILjava/lang/Object;Landroidx/media3/exoplayer/y2;)V

    .line 111
    .line 112
    .line 113
    if-eqz v18, :cond_4

    .line 114
    .line 115
    if-eqz v17, :cond_4

    .line 116
    .line 117
    invoke-virtual {v2}, Landroidx/media3/exoplayer/a4;->U()V

    .line 118
    .line 119
    .line 120
    :cond_4
    return-void
.end method

.method private B1()Z
    .locals 6

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->D1()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/r2;->H:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    return v1

    .line 14
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    return v1

    .line 23
    :cond_2
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    iget-wide v2, p0, Landroidx/media3/exoplayer/r2;->S:J

    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->n()J

    .line 32
    .line 33
    .line 34
    move-result-wide v4

    .line 35
    cmp-long v2, v2, v4

    .line 36
    .line 37
    if-ltz v2, :cond_3

    .line 38
    .line 39
    iget-boolean v0, v0, Landroidx/media3/exoplayer/y2;->i:Z

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    :cond_3
    return v1
.end method

.method private C()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    new-array v0, v0, [Z

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/media3/exoplayer/b3;->y()Landroidx/media3/exoplayer/y2;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroidx/media3/exoplayer/y2;->n()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/exoplayer/r2;->D([ZJ)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private C0()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->E:Landroidx/media3/exoplayer/r2$e;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/r2$e;->b(I)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0, v0, v0, v1}, Landroidx/media3/exoplayer/r2;->K0(ZZZZ)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->f:Landroidx/media3/exoplayer/u2;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->w:Lx1/f4;

    .line 14
    .line 15
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/u2;->f(Lx1/f4;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 19
    .line 20
    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/media3/common/e0;->q()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x2

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v0, v1

    .line 32
    :goto_0
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/r2;->w1(I)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->Q1()V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->t:Landroidx/media3/exoplayer/q3;

    .line 39
    .line 40
    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->g:Landroidx/media3/exoplayer/upstream/e;

    .line 41
    .line 42
    invoke-interface {v2}, Landroidx/media3/exoplayer/upstream/e;->b()Lw1/n;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/q3;->w(Lw1/n;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    .line 50
    .line 51
    invoke-interface {v0, v1}, Landroidx/media3/common/util/p;->sendEmptyMessage(I)Z

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private C1()Z
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/media3/exoplayer/b3;->n()Landroidx/media3/exoplayer/y2;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/r2;->a0(Landroidx/media3/exoplayer/y2;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    return v2

    .line 17
    :cond_0
    iget-object v1, v0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/media3/exoplayer/b3;->n()Landroidx/media3/exoplayer/y2;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Landroidx/media3/exoplayer/y2;->l()J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    invoke-direct {v0, v3, v4}, Landroidx/media3/exoplayer/r2;->M(J)J

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    iget-object v5, v0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 32
    .line 33
    invoke-virtual {v5}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    if-ne v1, v5, :cond_1

    .line 38
    .line 39
    iget-wide v5, v0, Landroidx/media3/exoplayer/r2;->S:J

    .line 40
    .line 41
    invoke-virtual {v1, v5, v6}, Landroidx/media3/exoplayer/y2;->C(J)J

    .line 42
    .line 43
    .line 44
    move-result-wide v5

    .line 45
    :goto_0
    move-wide v9, v5

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    iget-wide v5, v0, Landroidx/media3/exoplayer/r2;->S:J

    .line 48
    .line 49
    invoke-virtual {v1, v5, v6}, Landroidx/media3/exoplayer/y2;->C(J)J

    .line 50
    .line 51
    .line 52
    move-result-wide v5

    .line 53
    iget-object v7, v1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 54
    .line 55
    iget-wide v7, v7, Landroidx/media3/exoplayer/z2;->b:J

    .line 56
    .line 57
    sub-long/2addr v5, v7

    .line 58
    goto :goto_0

    .line 59
    :goto_1
    iget-object v5, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 60
    .line 61
    iget-object v5, v5, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    .line 62
    .line 63
    iget-object v6, v1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 64
    .line 65
    iget-object v6, v6, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    .line 66
    .line 67
    invoke-direct {v0, v5, v6}, Landroidx/media3/exoplayer/r2;->F1(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;)Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_2

    .line 72
    .line 73
    iget-object v5, v0, Landroidx/media3/exoplayer/r2;->u:Landroidx/media3/exoplayer/t2;

    .line 74
    .line 75
    invoke-interface {v5}, Landroidx/media3/exoplayer/t2;->b()J

    .line 76
    .line 77
    .line 78
    move-result-wide v5

    .line 79
    :goto_2
    move-wide/from16 v16, v5

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_2
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :goto_3
    new-instance v15, Landroidx/media3/exoplayer/u2$a;

    .line 89
    .line 90
    iget-object v6, v0, Landroidx/media3/exoplayer/r2;->w:Lx1/f4;

    .line 91
    .line 92
    iget-object v5, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 93
    .line 94
    iget-object v7, v5, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    .line 95
    .line 96
    iget-object v1, v1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 97
    .line 98
    iget-object v8, v1, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    .line 99
    .line 100
    iget-object v1, v0, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    .line 101
    .line 102
    invoke-virtual {v1}, Landroidx/media3/exoplayer/n;->getPlaybackParameters()Landroidx/media3/common/z;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    iget v13, v1, Landroidx/media3/common/z;->a:F

    .line 107
    .line 108
    iget-object v1, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 109
    .line 110
    iget-boolean v14, v1, Landroidx/media3/exoplayer/r3;->l:Z

    .line 111
    .line 112
    iget-boolean v1, v0, Landroidx/media3/exoplayer/r2;->I:Z

    .line 113
    .line 114
    iget-wide v11, v0, Landroidx/media3/exoplayer/r2;->J:J

    .line 115
    .line 116
    move-object v5, v15

    .line 117
    move-wide/from16 v18, v11

    .line 118
    .line 119
    move-wide v11, v3

    .line 120
    move-object v2, v15

    .line 121
    move v15, v1

    .line 122
    invoke-direct/range {v5 .. v19}, Landroidx/media3/exoplayer/u2$a;-><init>(Lx1/f4;Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;JJFZZJJ)V

    .line 123
    .line 124
    .line 125
    iget-object v1, v0, Landroidx/media3/exoplayer/r2;->f:Landroidx/media3/exoplayer/u2;

    .line 126
    .line 127
    invoke-interface {v1, v2}, Landroidx/media3/exoplayer/u2;->g(Landroidx/media3/exoplayer/u2$a;)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    iget-object v5, v0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 132
    .line 133
    invoke-virtual {v5}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    if-nez v1, :cond_4

    .line 138
    .line 139
    iget-boolean v6, v5, Landroidx/media3/exoplayer/y2;->f:Z

    .line 140
    .line 141
    if-eqz v6, :cond_4

    .line 142
    .line 143
    const-wide/32 v6, 0x7a120

    .line 144
    .line 145
    .line 146
    cmp-long v3, v3, v6

    .line 147
    .line 148
    if-gez v3, :cond_4

    .line 149
    .line 150
    iget-wide v3, v0, Landroidx/media3/exoplayer/r2;->m:J

    .line 151
    .line 152
    const-wide/16 v6, 0x0

    .line 153
    .line 154
    cmp-long v3, v3, v6

    .line 155
    .line 156
    if-gtz v3, :cond_3

    .line 157
    .line 158
    iget-boolean v3, v0, Landroidx/media3/exoplayer/r2;->n:Z

    .line 159
    .line 160
    if-eqz v3, :cond_4

    .line 161
    .line 162
    :cond_3
    iget-object v1, v5, Landroidx/media3/exoplayer/y2;->a:Landroidx/media3/exoplayer/source/q;

    .line 163
    .line 164
    iget-object v3, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 165
    .line 166
    iget-wide v3, v3, Landroidx/media3/exoplayer/r3;->s:J

    .line 167
    .line 168
    const/4 v5, 0x0

    .line 169
    invoke-interface {v1, v3, v4, v5}, Landroidx/media3/exoplayer/source/q;->discardBuffer(JZ)V

    .line 170
    .line 171
    .line 172
    iget-object v1, v0, Landroidx/media3/exoplayer/r2;->f:Landroidx/media3/exoplayer/u2;

    .line 173
    .line 174
    invoke-interface {v1, v2}, Landroidx/media3/exoplayer/u2;->g(Landroidx/media3/exoplayer/u2$a;)Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    :cond_4
    return v1
.end method

.method private D([ZJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->y()Landroidx/media3/exoplayer/y2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->p()Li2/f0;

    .line 8
    .line 9
    .line 10
    move-result-object v7

    .line 11
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 14
    .line 15
    array-length v3, v3

    .line 16
    if-ge v2, v3, :cond_1

    .line 17
    .line 18
    invoke-virtual {v7, v2}, Li2/f0;->c(I)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    iget-object v3, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 25
    .line 26
    aget-object v3, v3, v2

    .line 27
    .line 28
    invoke-virtual {v3}, Landroidx/media3/exoplayer/a4;->L()V

    .line 29
    .line 30
    .line 31
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move v8, v1

    .line 35
    :goto_1
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 36
    .line 37
    array-length v1, v1

    .line 38
    if-ge v8, v1, :cond_3

    .line 39
    .line 40
    invoke-virtual {v7, v8}, Li2/f0;->c(I)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 47
    .line 48
    aget-object v1, v1, v8

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/a4;->w(Landroidx/media3/exoplayer/y2;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_2

    .line 55
    .line 56
    aget-boolean v4, p1, v8

    .line 57
    .line 58
    move-object v1, p0

    .line 59
    move-object v2, v0

    .line 60
    move v3, v8

    .line 61
    move-wide v5, p2

    .line 62
    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/r2;->B(Landroidx/media3/exoplayer/y2;IZJ)V

    .line 63
    .line 64
    .line 65
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    return-void
.end method

.method private D1()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/media3/exoplayer/r3;->l:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget v0, v0, Landroidx/media3/exoplayer/r3;->n:I

    .line 8
    .line 9
    if-nez v0, :cond_0

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

.method private E0()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    :try_start_0
    invoke-direct {p0, v1, v0, v1, v0}, Landroidx/media3/exoplayer/r2;->K0(ZZZZ)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->F0()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->f:Landroidx/media3/exoplayer/u2;

    .line 10
    .line 11
    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->w:Lx1/f4;

    .line 12
    .line 13
    invoke-interface {v0, v2}, Landroidx/media3/exoplayer/u2;->d(Lx1/f4;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->B:Landroidx/media3/exoplayer/h;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/media3/exoplayer/h;->i()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->d:Li2/e0;

    .line 22
    .line 23
    invoke-virtual {v0}, Li2/e0;->j()V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/r2;->w1(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->i:Landroidx/media3/exoplayer/s3;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/media3/exoplayer/s3;->b()V

    .line 32
    .line 33
    .line 34
    monitor-enter p0

    .line 35
    :try_start_1
    iput-boolean v1, p0, Landroidx/media3/exoplayer/r2;->F:Z

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 38
    .line 39
    .line 40
    monitor-exit p0

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    throw v0

    .line 45
    :catchall_1
    move-exception v0

    .line 46
    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->i:Landroidx/media3/exoplayer/s3;

    .line 47
    .line 48
    invoke-virtual {v2}, Landroidx/media3/exoplayer/s3;->b()V

    .line 49
    .line 50
    .line 51
    monitor-enter p0

    .line 52
    :try_start_2
    iput-boolean v1, p0, Landroidx/media3/exoplayer/r2;->F:Z

    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 55
    .line 56
    .line 57
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 58
    throw v0

    .line 59
    :catchall_2
    move-exception v0

    .line 60
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 61
    throw v0
.end method

.method private E1(Z)Z
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/media3/exoplayer/r2;->Q:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->b0()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    return v1

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    iget-object v2, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 17
    .line 18
    iget-boolean v2, v2, Landroidx/media3/exoplayer/r3;->g:Z

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    if-nez v2, :cond_2

    .line 22
    .line 23
    return v3

    .line 24
    :cond_2
    iget-object v2, v0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iget-object v4, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 31
    .line 32
    iget-object v4, v4, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    .line 33
    .line 34
    iget-object v5, v2, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 35
    .line 36
    iget-object v5, v5, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    .line 37
    .line 38
    invoke-direct {v0, v4, v5}, Landroidx/media3/exoplayer/r2;->F1(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_3

    .line 43
    .line 44
    iget-object v4, v0, Landroidx/media3/exoplayer/r2;->u:Landroidx/media3/exoplayer/t2;

    .line 45
    .line 46
    invoke-interface {v4}, Landroidx/media3/exoplayer/t2;->b()J

    .line 47
    .line 48
    .line 49
    move-result-wide v4

    .line 50
    :goto_0
    move-wide/from16 v17, v4

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :goto_1
    iget-object v4, v0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 60
    .line 61
    invoke-virtual {v4}, Landroidx/media3/exoplayer/b3;->n()Landroidx/media3/exoplayer/y2;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v4}, Landroidx/media3/exoplayer/y2;->s()Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_4

    .line 70
    .line 71
    iget-object v5, v4, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 72
    .line 73
    iget-boolean v5, v5, Landroidx/media3/exoplayer/z2;->j:Z

    .line 74
    .line 75
    if-eqz v5, :cond_4

    .line 76
    .line 77
    move v5, v3

    .line 78
    goto :goto_2

    .line 79
    :cond_4
    move v5, v1

    .line 80
    :goto_2
    iget-object v6, v4, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 81
    .line 82
    iget-object v6, v6, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    .line 83
    .line 84
    invoke-virtual {v6}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-eqz v6, :cond_5

    .line 89
    .line 90
    iget-boolean v6, v4, Landroidx/media3/exoplayer/y2;->f:Z

    .line 91
    .line 92
    if-nez v6, :cond_5

    .line 93
    .line 94
    move v1, v3

    .line 95
    :cond_5
    if-nez v5, :cond_7

    .line 96
    .line 97
    if-eqz v1, :cond_6

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_6
    invoke-virtual {v4}, Landroidx/media3/exoplayer/y2;->j()J

    .line 101
    .line 102
    .line 103
    move-result-wide v3

    .line 104
    invoke-direct {v0, v3, v4}, Landroidx/media3/exoplayer/r2;->M(J)J

    .line 105
    .line 106
    .line 107
    move-result-wide v12

    .line 108
    iget-object v1, v0, Landroidx/media3/exoplayer/r2;->f:Landroidx/media3/exoplayer/u2;

    .line 109
    .line 110
    new-instance v3, Landroidx/media3/exoplayer/u2$a;

    .line 111
    .line 112
    iget-object v7, v0, Landroidx/media3/exoplayer/r2;->w:Lx1/f4;

    .line 113
    .line 114
    iget-object v4, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 115
    .line 116
    iget-object v8, v4, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    .line 117
    .line 118
    iget-object v4, v2, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 119
    .line 120
    iget-object v9, v4, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    .line 121
    .line 122
    iget-wide v4, v0, Landroidx/media3/exoplayer/r2;->S:J

    .line 123
    .line 124
    invoke-virtual {v2, v4, v5}, Landroidx/media3/exoplayer/y2;->C(J)J

    .line 125
    .line 126
    .line 127
    move-result-wide v10

    .line 128
    iget-object v2, v0, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    .line 129
    .line 130
    invoke-virtual {v2}, Landroidx/media3/exoplayer/n;->getPlaybackParameters()Landroidx/media3/common/z;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    iget v14, v2, Landroidx/media3/common/z;->a:F

    .line 135
    .line 136
    iget-object v2, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 137
    .line 138
    iget-boolean v15, v2, Landroidx/media3/exoplayer/r3;->l:Z

    .line 139
    .line 140
    iget-boolean v2, v0, Landroidx/media3/exoplayer/r2;->I:Z

    .line 141
    .line 142
    iget-wide v4, v0, Landroidx/media3/exoplayer/r2;->J:J

    .line 143
    .line 144
    move-object v6, v3

    .line 145
    move/from16 v16, v2

    .line 146
    .line 147
    move-wide/from16 v19, v4

    .line 148
    .line 149
    invoke-direct/range {v6 .. v20}, Landroidx/media3/exoplayer/u2$a;-><init>(Lx1/f4;Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;JJFZZJJ)V

    .line 150
    .line 151
    .line 152
    invoke-interface {v1, v3}, Landroidx/media3/exoplayer/u2;->a(Landroidx/media3/exoplayer/u2$a;)Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    return v1

    .line 157
    :cond_7
    :goto_3
    return v3
.end method

.method private F([Li2/z;)Lcom/google/common/collect/ImmutableList;
    .locals 7

    .line 1
    new-instance v0, Lcom/google/common/collect/ImmutableList$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$a;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v1, p1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    move v4, v3

    .line 10
    :goto_0
    if-ge v3, v1, :cond_2

    .line 11
    .line 12
    aget-object v5, p1, v3

    .line 13
    .line 14
    if-eqz v5, :cond_1

    .line 15
    .line 16
    invoke-interface {v5, v2}, Li2/c0;->getFormat(I)Landroidx/media3/common/r;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    iget-object v5, v5, Landroidx/media3/common/r;->l:Landroidx/media3/common/x;

    .line 21
    .line 22
    if-nez v5, :cond_0

    .line 23
    .line 24
    new-instance v5, Landroidx/media3/common/x;

    .line 25
    .line 26
    new-array v6, v2, [Landroidx/media3/common/x$a;

    .line 27
    .line 28
    invoke-direct {v5, v6}, Landroidx/media3/common/x;-><init>([Landroidx/media3/common/x$a;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v5}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    invoke-virtual {v0, v5}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    .line 36
    .line 37
    .line 38
    const/4 v4, 0x1

    .line 39
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    if-eqz v4, :cond_3

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    goto :goto_2

    .line 49
    :cond_3
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    :goto_2
    return-object p1
.end method

.method private F0()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 3
    .line 4
    array-length v1, v1

    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->b:[Landroidx/media3/exoplayer/y3;

    .line 8
    .line 9
    aget-object v1, v1, v0

    .line 10
    .line 11
    invoke-interface {v1}, Landroidx/media3/exoplayer/y3;->f()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 15
    .line 16
    aget-object v1, v1, v0

    .line 17
    .line 18
    invoke-virtual {v1}, Landroidx/media3/exoplayer/a4;->H()V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method private F1(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;)Z
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/media3/common/e0;->q()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p2, p2, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->l:Landroidx/media3/common/e0$b;

    .line 18
    .line 19
    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    iget p2, p2, Landroidx/media3/common/e0$b;->c:I

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->k:Landroidx/media3/common/e0$c;

    .line 26
    .line 27
    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->k:Landroidx/media3/common/e0$c;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/media3/common/e0$c;->f()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->k:Landroidx/media3/common/e0$c;

    .line 39
    .line 40
    iget-boolean p2, p1, Landroidx/media3/common/e0$c;->i:Z

    .line 41
    .line 42
    if-eqz p2, :cond_1

    .line 43
    .line 44
    iget-wide p1, p1, Landroidx/media3/common/e0$c;->f:J

    .line 45
    .line 46
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    cmp-long p1, p1, v2

    .line 52
    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    const/4 v1, 0x1

    .line 56
    :cond_1
    :goto_0
    return v1
.end method

.method private G()J
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    .line 6
    .line 7
    iget-object v2, v2, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 8
    .line 9
    iget-wide v3, v0, Landroidx/media3/exoplayer/r3;->s:J

    .line 10
    .line 11
    invoke-direct {p0, v1, v2, v3, v4}, Landroidx/media3/exoplayer/r2;->H(Landroidx/media3/common/e0;Ljava/lang/Object;J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    return-wide v0
.end method

.method private G0(IILf2/v;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->E:Landroidx/media3/exoplayer/r2$e;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/r2$e;->b(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->t:Landroidx/media3/exoplayer/q3;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/exoplayer/q3;->A(IILf2/v;)Landroidx/media3/common/e0;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 p2, 0x0

    .line 14
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/r2;->T(Landroidx/media3/common/e0;Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private G1()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->p()Li2/f0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 16
    .line 17
    array-length v2, v2

    .line 18
    if-ge v1, v2, :cond_2

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Li2/f0;->c(I)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 28
    .line 29
    aget-object v2, v2, v1

    .line 30
    .line 31
    invoke-virtual {v2}, Landroidx/media3/exoplayer/a4;->U()V

    .line 32
    .line 33
    .line 34
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return-void
.end method

.method private H(Landroidx/media3/common/e0;Ljava/lang/Object;J)J
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->l:Landroidx/media3/common/e0$b;

    .line 2
    .line 3
    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iget p2, p2, Landroidx/media3/common/e0$b;->c:I

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->k:Landroidx/media3/common/e0$c;

    .line 10
    .line 11
    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->k:Landroidx/media3/common/e0$c;

    .line 15
    .line 16
    iget-wide v0, p1, Landroidx/media3/common/e0$c;->f:J

    .line 17
    .line 18
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    cmp-long p2, v0, v2

    .line 24
    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/media3/common/e0$c;->f()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->k:Landroidx/media3/common/e0$c;

    .line 34
    .line 35
    iget-boolean p2, p1, Landroidx/media3/common/e0$c;->i:Z

    .line 36
    .line 37
    if-nez p2, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/e0$c;->a()J

    .line 41
    .line 42
    .line 43
    move-result-wide p1

    .line 44
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->k:Landroidx/media3/common/e0$c;

    .line 45
    .line 46
    iget-wide v0, v0, Landroidx/media3/common/e0$c;->f:J

    .line 47
    .line 48
    sub-long/2addr p1, v0

    .line 49
    invoke-static {p1, p2}, Landroidx/media3/common/util/a1;->R0(J)J

    .line 50
    .line 51
    .line 52
    move-result-wide p1

    .line 53
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->l:Landroidx/media3/common/e0$b;

    .line 54
    .line 55
    invoke-virtual {v0}, Landroidx/media3/common/e0$b;->o()J

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    add-long/2addr p3, v0

    .line 60
    sub-long/2addr p1, p3

    .line 61
    return-wide p1

    .line 62
    :cond_1
    :goto_0
    return-wide v2
.end method

.method private I(Landroidx/media3/exoplayer/y2;)J
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    return-wide v0

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/exoplayer/y2;->m()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-boolean v2, p1, Landroidx/media3/exoplayer/y2;->f:Z

    .line 11
    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    return-wide v0

    .line 15
    :cond_1
    const/4 v2, 0x0

    .line 16
    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 17
    .line 18
    array-length v4, v3

    .line 19
    if-ge v2, v4, :cond_4

    .line 20
    .line 21
    aget-object v3, v3, v2

    .line 22
    .line 23
    invoke-virtual {v3, p1}, Landroidx/media3/exoplayer/a4;->w(Landroidx/media3/exoplayer/y2;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_2

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    iget-object v3, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 31
    .line 32
    aget-object v3, v3, v2

    .line 33
    .line 34
    invoke-virtual {v3, p1}, Landroidx/media3/exoplayer/a4;->k(Landroidx/media3/exoplayer/y2;)J

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    const-wide/high16 v5, -0x8000000000000000L

    .line 39
    .line 40
    cmp-long v7, v3, v5

    .line 41
    .line 42
    if-nez v7, :cond_3

    .line 43
    .line 44
    return-wide v5

    .line 45
    :cond_3
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_4
    return-wide v0
.end method

.method private I0()V
    .locals 18

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    iget-object v0, v10, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/n;->getPlaybackParameters()Landroidx/media3/common/z;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroidx/media3/common/z;->a:F

    .line 10
    .line 11
    iget-object v1, v10, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, v10, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroidx/media3/exoplayer/b3;->y()Landroidx/media3/exoplayer/y2;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const/4 v11, 0x1

    .line 24
    const/4 v3, 0x0

    .line 25
    move v4, v11

    .line 26
    :goto_0
    if-eqz v1, :cond_d

    .line 27
    .line 28
    iget-boolean v5, v1, Landroidx/media3/exoplayer/y2;->f:Z

    .line 29
    .line 30
    if-nez v5, :cond_0

    .line 31
    .line 32
    goto/16 :goto_5

    .line 33
    .line 34
    :cond_0
    iget-object v5, v10, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 35
    .line 36
    iget-object v6, v5, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    .line 37
    .line 38
    iget-boolean v5, v5, Landroidx/media3/exoplayer/r3;->l:Z

    .line 39
    .line 40
    invoke-virtual {v1, v0, v6, v5}, Landroidx/media3/exoplayer/y2;->z(FLandroidx/media3/common/e0;Z)Li2/f0;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    iget-object v6, v10, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 45
    .line 46
    invoke-virtual {v6}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    if-ne v1, v6, :cond_1

    .line 51
    .line 52
    move-object v3, v5

    .line 53
    :cond_1
    invoke-virtual {v1}, Landroidx/media3/exoplayer/y2;->p()Li2/f0;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-virtual {v5, v6}, Li2/f0;->a(Li2/f0;)Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-nez v6, :cond_b

    .line 62
    .line 63
    const/4 v13, 0x4

    .line 64
    if-eqz v4, :cond_7

    .line 65
    .line 66
    iget-object v0, v10, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 67
    .line 68
    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    .line 69
    .line 70
    .line 71
    move-result-object v14

    .line 72
    iget-object v0, v10, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 73
    .line 74
    invoke-virtual {v0, v14}, Landroidx/media3/exoplayer/b3;->O(Landroidx/media3/exoplayer/y2;)I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    and-int/2addr v0, v11

    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    move v8, v11

    .line 82
    goto :goto_1

    .line 83
    :cond_2
    const/4 v8, 0x0

    .line 84
    :goto_1
    iget-object v0, v10, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 85
    .line 86
    array-length v0, v0

    .line 87
    new-array v15, v0, [Z

    .line 88
    .line 89
    invoke-static {v3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    move-object v5, v0

    .line 94
    check-cast v5, Li2/f0;

    .line 95
    .line 96
    iget-object v0, v10, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 97
    .line 98
    iget-wide v6, v0, Landroidx/media3/exoplayer/r3;->s:J

    .line 99
    .line 100
    move-object v4, v14

    .line 101
    move-object v9, v15

    .line 102
    invoke-virtual/range {v4 .. v9}, Landroidx/media3/exoplayer/y2;->b(Li2/f0;JZ[Z)J

    .line 103
    .line 104
    .line 105
    move-result-wide v8

    .line 106
    iget-object v0, v10, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 107
    .line 108
    iget v1, v0, Landroidx/media3/exoplayer/r3;->e:I

    .line 109
    .line 110
    if-eq v1, v13, :cond_3

    .line 111
    .line 112
    iget-wide v0, v0, Landroidx/media3/exoplayer/r3;->s:J

    .line 113
    .line 114
    cmp-long v0, v8, v0

    .line 115
    .line 116
    if-eqz v0, :cond_3

    .line 117
    .line 118
    move/from16 v16, v11

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_3
    const/16 v16, 0x0

    .line 122
    .line 123
    :goto_2
    iget-object v0, v10, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 124
    .line 125
    iget-object v1, v0, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    .line 126
    .line 127
    iget-wide v4, v0, Landroidx/media3/exoplayer/r3;->c:J

    .line 128
    .line 129
    iget-wide v6, v0, Landroidx/media3/exoplayer/r3;->d:J

    .line 130
    .line 131
    const/16 v17, 0x5

    .line 132
    .line 133
    move-object/from16 v0, p0

    .line 134
    .line 135
    move-wide v2, v8

    .line 136
    move-wide v11, v8

    .line 137
    move/from16 v8, v16

    .line 138
    .line 139
    move/from16 v9, v17

    .line 140
    .line 141
    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/r2;->X(Landroidx/media3/exoplayer/source/r$b;JJJZI)Landroidx/media3/exoplayer/r3;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    iput-object v0, v10, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 146
    .line 147
    if-eqz v16, :cond_4

    .line 148
    .line 149
    invoke-direct {v10, v11, v12}, Landroidx/media3/exoplayer/r2;->M0(J)V

    .line 150
    .line 151
    .line 152
    :cond_4
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->x()V

    .line 153
    .line 154
    .line 155
    iget-object v0, v10, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 156
    .line 157
    array-length v0, v0

    .line 158
    new-array v0, v0, [Z

    .line 159
    .line 160
    const/4 v1, 0x0

    .line 161
    :goto_3
    iget-object v2, v10, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 162
    .line 163
    array-length v3, v2

    .line 164
    if-ge v1, v3, :cond_6

    .line 165
    .line 166
    aget-object v2, v2, v1

    .line 167
    .line 168
    invoke-virtual {v2}, Landroidx/media3/exoplayer/a4;->h()I

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    iget-object v3, v10, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 173
    .line 174
    aget-object v3, v3, v1

    .line 175
    .line 176
    invoke-virtual {v3}, Landroidx/media3/exoplayer/a4;->x()Z

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    aput-boolean v3, v0, v1

    .line 181
    .line 182
    iget-object v3, v10, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 183
    .line 184
    aget-object v4, v3, v1

    .line 185
    .line 186
    iget-object v3, v14, Landroidx/media3/exoplayer/y2;->c:[Lf2/u;

    .line 187
    .line 188
    aget-object v5, v3, v1

    .line 189
    .line 190
    iget-object v6, v10, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    .line 191
    .line 192
    iget-wide v7, v10, Landroidx/media3/exoplayer/r2;->S:J

    .line 193
    .line 194
    aget-boolean v9, v15, v1

    .line 195
    .line 196
    invoke-virtual/range {v4 .. v9}, Landroidx/media3/exoplayer/a4;->B(Lf2/u;Landroidx/media3/exoplayer/n;JZ)V

    .line 197
    .line 198
    .line 199
    iget-object v3, v10, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 200
    .line 201
    aget-object v3, v3, v1

    .line 202
    .line 203
    invoke-virtual {v3}, Landroidx/media3/exoplayer/a4;->h()I

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    sub-int v3, v2, v3

    .line 208
    .line 209
    if-lez v3, :cond_5

    .line 210
    .line 211
    const/4 v3, 0x0

    .line 212
    invoke-direct {v10, v1, v3}, Landroidx/media3/exoplayer/r2;->m0(IZ)V

    .line 213
    .line 214
    .line 215
    :cond_5
    iget v3, v10, Landroidx/media3/exoplayer/r2;->Q:I

    .line 216
    .line 217
    iget-object v4, v10, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 218
    .line 219
    aget-object v4, v4, v1

    .line 220
    .line 221
    invoke-virtual {v4}, Landroidx/media3/exoplayer/a4;->h()I

    .line 222
    .line 223
    .line 224
    move-result v4

    .line 225
    sub-int/2addr v2, v4

    .line 226
    sub-int/2addr v3, v2

    .line 227
    iput v3, v10, Landroidx/media3/exoplayer/r2;->Q:I

    .line 228
    .line 229
    add-int/lit8 v1, v1, 0x1

    .line 230
    .line 231
    goto :goto_3

    .line 232
    :cond_6
    iget-wide v1, v10, Landroidx/media3/exoplayer/r2;->S:J

    .line 233
    .line 234
    invoke-direct {v10, v0, v1, v2}, Landroidx/media3/exoplayer/r2;->D([ZJ)V

    .line 235
    .line 236
    .line 237
    const/4 v0, 0x1

    .line 238
    iput-boolean v0, v14, Landroidx/media3/exoplayer/y2;->i:Z

    .line 239
    .line 240
    move v5, v0

    .line 241
    goto :goto_4

    .line 242
    :cond_7
    iget-object v0, v10, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 243
    .line 244
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/b3;->O(Landroidx/media3/exoplayer/y2;)I

    .line 245
    .line 246
    .line 247
    iget-boolean v0, v1, Landroidx/media3/exoplayer/y2;->f:Z

    .line 248
    .line 249
    if-eqz v0, :cond_9

    .line 250
    .line 251
    iget-object v0, v1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 252
    .line 253
    iget-wide v2, v0, Landroidx/media3/exoplayer/z2;->b:J

    .line 254
    .line 255
    iget-wide v6, v10, Landroidx/media3/exoplayer/r2;->S:J

    .line 256
    .line 257
    invoke-virtual {v1, v6, v7}, Landroidx/media3/exoplayer/y2;->C(J)J

    .line 258
    .line 259
    .line 260
    move-result-wide v6

    .line 261
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 262
    .line 263
    .line 264
    move-result-wide v2

    .line 265
    iget-boolean v0, v10, Landroidx/media3/exoplayer/r2;->A:Z

    .line 266
    .line 267
    if-eqz v0, :cond_8

    .line 268
    .line 269
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->r()Z

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    if-eqz v0, :cond_8

    .line 274
    .line 275
    iget-object v0, v10, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 276
    .line 277
    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->x()Landroidx/media3/exoplayer/y2;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    if-ne v0, v1, :cond_8

    .line 282
    .line 283
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->x()V

    .line 284
    .line 285
    .line 286
    :cond_8
    const/4 v6, 0x0

    .line 287
    invoke-virtual {v1, v5, v2, v3, v6}, Landroidx/media3/exoplayer/y2;->a(Li2/f0;JZ)J

    .line 288
    .line 289
    .line 290
    :cond_9
    const/4 v5, 0x1

    .line 291
    :goto_4
    invoke-direct {v10, v5}, Landroidx/media3/exoplayer/r2;->R(Z)V

    .line 292
    .line 293
    .line 294
    iget-object v0, v10, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 295
    .line 296
    iget v0, v0, Landroidx/media3/exoplayer/r3;->e:I

    .line 297
    .line 298
    if-eq v0, v13, :cond_a

    .line 299
    .line 300
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->g0()V

    .line 301
    .line 302
    .line 303
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->T1()V

    .line 304
    .line 305
    .line 306
    iget-object v0, v10, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    .line 307
    .line 308
    const/4 v1, 0x2

    .line 309
    invoke-interface {v0, v1}, Landroidx/media3/common/util/p;->sendEmptyMessage(I)Z

    .line 310
    .line 311
    .line 312
    :cond_a
    return-void

    .line 313
    :cond_b
    move v5, v11

    .line 314
    const/4 v6, 0x0

    .line 315
    if-ne v1, v2, :cond_c

    .line 316
    .line 317
    move v4, v6

    .line 318
    :cond_c
    invoke-virtual {v1}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    move v11, v5

    .line 323
    goto/16 :goto_0

    .line 324
    .line 325
    :cond_d
    :goto_5
    return-void
.end method

.method private I1(ZZ)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    iget-boolean p1, p0, Landroidx/media3/exoplayer/r2;->N:Z

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move p1, v0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    move p1, v1

    .line 13
    :goto_1
    invoke-direct {p0, p1, v0, v1, v0}, Landroidx/media3/exoplayer/r2;->K0(ZZZZ)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->E:Landroidx/media3/exoplayer/r2$e;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/r2$e;->b(I)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->f:Landroidx/media3/exoplayer/u2;

    .line 22
    .line 23
    iget-object p2, p0, Landroidx/media3/exoplayer/r2;->w:Lx1/f4;

    .line 24
    .line 25
    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/u2;->b(Lx1/f4;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->B:Landroidx/media3/exoplayer/h;

    .line 29
    .line 30
    iget-object p2, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 31
    .line 32
    iget-boolean p2, p2, Landroidx/media3/exoplayer/r3;->l:Z

    .line 33
    .line 34
    invoke-virtual {p1, p2, v1}, Landroidx/media3/exoplayer/h;->o(ZI)I

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/r2;->w1(I)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private J(Landroidx/media3/common/e0;)Landroid/util/Pair;
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroidx/media3/common/e0;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroidx/media3/exoplayer/r3;->l()Landroidx/media3/exoplayer/source/r$b;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/r2;->M:Z

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroidx/media3/common/e0;->a(Z)I

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    iget-object v4, p0, Landroidx/media3/exoplayer/r2;->k:Landroidx/media3/common/e0$c;

    .line 29
    .line 30
    iget-object v5, p0, Landroidx/media3/exoplayer/r2;->l:Landroidx/media3/common/e0$b;

    .line 31
    .line 32
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    move-object v3, p1

    .line 38
    invoke-virtual/range {v3 .. v8}, Landroidx/media3/common/e0;->j(Landroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;IJ)Landroid/util/Pair;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v3, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 43
    .line 44
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 45
    .line 46
    invoke-virtual {v3, p1, v4, v1, v2}, Landroidx/media3/exoplayer/b3;->R(Landroidx/media3/common/e0;Ljava/lang/Object;J)Landroidx/media3/exoplayer/source/r$b;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v0, Ljava/lang/Long;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 55
    .line 56
    .line 57
    move-result-wide v4

    .line 58
    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    iget-object v0, v3, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 65
    .line 66
    iget-object v4, p0, Landroidx/media3/exoplayer/r2;->l:Landroidx/media3/common/e0$b;

    .line 67
    .line 68
    invoke-virtual {p1, v0, v4}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    .line 69
    .line 70
    .line 71
    iget p1, v3, Landroidx/media3/exoplayer/source/r$b;->c:I

    .line 72
    .line 73
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->l:Landroidx/media3/common/e0$b;

    .line 74
    .line 75
    iget v4, v3, Landroidx/media3/exoplayer/source/r$b;->b:I

    .line 76
    .line 77
    invoke-virtual {v0, v4}, Landroidx/media3/common/e0$b;->l(I)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-ne p1, v0, :cond_1

    .line 82
    .line 83
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->l:Landroidx/media3/common/e0$b;

    .line 84
    .line 85
    invoke-virtual {p1}, Landroidx/media3/common/e0$b;->g()J

    .line 86
    .line 87
    .line 88
    move-result-wide v1

    .line 89
    :cond_1
    move-wide v4, v1

    .line 90
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-static {v3, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    return-object p1
.end method

.method private J0()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->I0()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/r2;->V0(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private J1()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/n;->g()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

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
    invoke-virtual {v3}, Landroidx/media3/exoplayer/a4;->W()V

    .line 15
    .line 16
    .line 17
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-void
.end method

.method private K0(ZZZZ)V
    .locals 33

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "ExoPlayerImplInternal"

    .line 4
    .line 5
    iget-object v0, v1, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    invoke-interface {v0, v3}, Landroidx/media3/common/util/p;->removeMessages(I)V

    .line 9
    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    iput-object v3, v1, Landroidx/media3/exoplayer/r2;->W:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x1

    .line 16
    invoke-direct {v1, v4, v5}, Landroidx/media3/exoplayer/r2;->W1(ZZ)V

    .line 17
    .line 18
    .line 19
    iget-object v0, v1, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/media3/exoplayer/n;->g()V

    .line 22
    .line 23
    .line 24
    const-wide v6, 0xe8d4a51000L

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    iput-wide v6, v1, Landroidx/media3/exoplayer/r2;->S:J

    .line 30
    .line 31
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->z()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :catch_0
    move-exception v0

    .line 36
    goto :goto_0

    .line 37
    :catch_1
    move-exception v0

    .line 38
    :goto_0
    const-string v6, "Disable failed."

    .line 39
    .line 40
    invoke-static {v2, v6, v0}, Landroidx/media3/common/util/u;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    :goto_1
    if-eqz p1, :cond_0

    .line 44
    .line 45
    iget-object v6, v1, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 46
    .line 47
    array-length v7, v6

    .line 48
    move v8, v4

    .line 49
    :goto_2
    if-ge v8, v7, :cond_0

    .line 50
    .line 51
    aget-object v0, v6, v8

    .line 52
    .line 53
    :try_start_1
    invoke-virtual {v0}, Landroidx/media3/exoplayer/a4;->L()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 54
    .line 55
    .line 56
    goto :goto_3

    .line 57
    :catch_2
    move-exception v0

    .line 58
    move-object v9, v0

    .line 59
    const-string v0, "Reset failed."

    .line 60
    .line 61
    invoke-static {v2, v0, v9}, Landroidx/media3/common/util/u;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_0
    iput v4, v1, Landroidx/media3/exoplayer/r2;->Q:I

    .line 68
    .line 69
    iget-object v0, v1, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 70
    .line 71
    iget-object v2, v0, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    .line 72
    .line 73
    iget-wide v6, v0, Landroidx/media3/exoplayer/r3;->s:J

    .line 74
    .line 75
    iget-object v0, v1, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 76
    .line 77
    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_2

    .line 84
    .line 85
    iget-object v0, v1, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 86
    .line 87
    iget-object v8, v1, Landroidx/media3/exoplayer/r2;->l:Landroidx/media3/common/e0$b;

    .line 88
    .line 89
    invoke-static {v0, v8}, Landroidx/media3/exoplayer/r2;->c0(Landroidx/media3/exoplayer/r3;Landroidx/media3/common/e0$b;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_1

    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_1
    iget-object v0, v1, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 97
    .line 98
    iget-wide v8, v0, Landroidx/media3/exoplayer/r3;->s:J

    .line 99
    .line 100
    goto :goto_5

    .line 101
    :cond_2
    :goto_4
    iget-object v0, v1, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 102
    .line 103
    iget-wide v8, v0, Landroidx/media3/exoplayer/r3;->c:J

    .line 104
    .line 105
    :goto_5
    if-eqz p2, :cond_3

    .line 106
    .line 107
    iput-object v3, v1, Landroidx/media3/exoplayer/r2;->R:Landroidx/media3/exoplayer/r2$h;

    .line 108
    .line 109
    iget-object v0, v1, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 110
    .line 111
    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    .line 112
    .line 113
    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/r2;->J(Landroidx/media3/common/e0;)Landroid/util/Pair;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v2, Landroidx/media3/exoplayer/source/r$b;

    .line 120
    .line 121
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v0, Ljava/lang/Long;

    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 126
    .line 127
    .line 128
    move-result-wide v6

    .line 129
    iget-object v0, v1, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 130
    .line 131
    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    .line 132
    .line 133
    invoke-virtual {v2, v0}, Landroidx/media3/exoplayer/source/r$b;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    if-nez v0, :cond_3

    .line 143
    .line 144
    :goto_6
    move-wide/from16 v28, v6

    .line 145
    .line 146
    move-wide v9, v8

    .line 147
    goto :goto_7

    .line 148
    :cond_3
    move v5, v4

    .line 149
    goto :goto_6

    .line 150
    :goto_7
    iget-object v0, v1, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 151
    .line 152
    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->g()V

    .line 153
    .line 154
    .line 155
    iput-boolean v4, v1, Landroidx/media3/exoplayer/r2;->K:Z

    .line 156
    .line 157
    iget-object v0, v1, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 158
    .line 159
    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    .line 160
    .line 161
    if-eqz p3, :cond_4

    .line 162
    .line 163
    instance-of v4, v0, Landroidx/media3/exoplayer/u3;

    .line 164
    .line 165
    if-eqz v4, :cond_4

    .line 166
    .line 167
    check-cast v0, Landroidx/media3/exoplayer/u3;

    .line 168
    .line 169
    iget-object v4, v1, Landroidx/media3/exoplayer/r2;->t:Landroidx/media3/exoplayer/q3;

    .line 170
    .line 171
    invoke-virtual {v4}, Landroidx/media3/exoplayer/q3;->q()Lf2/v;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    invoke-virtual {v0, v4}, Landroidx/media3/exoplayer/u3;->E(Lf2/v;)Landroidx/media3/exoplayer/u3;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    iget v4, v2, Landroidx/media3/exoplayer/source/r$b;->b:I

    .line 180
    .line 181
    const/4 v6, -0x1

    .line 182
    if-eq v4, v6, :cond_4

    .line 183
    .line 184
    iget-object v4, v2, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 185
    .line 186
    iget-object v6, v1, Landroidx/media3/exoplayer/r2;->l:Landroidx/media3/common/e0$b;

    .line 187
    .line 188
    invoke-virtual {v0, v4, v6}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    .line 189
    .line 190
    .line 191
    iget-object v4, v1, Landroidx/media3/exoplayer/r2;->l:Landroidx/media3/common/e0$b;

    .line 192
    .line 193
    iget v4, v4, Landroidx/media3/common/e0$b;->c:I

    .line 194
    .line 195
    iget-object v6, v1, Landroidx/media3/exoplayer/r2;->k:Landroidx/media3/common/e0$c;

    .line 196
    .line 197
    invoke-virtual {v0, v4, v6}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    invoke-virtual {v4}, Landroidx/media3/common/e0$c;->f()Z

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    if-eqz v4, :cond_4

    .line 206
    .line 207
    new-instance v4, Landroidx/media3/exoplayer/source/r$b;

    .line 208
    .line 209
    iget-object v6, v2, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 210
    .line 211
    iget-wide v7, v2, Landroidx/media3/exoplayer/source/r$b;->d:J

    .line 212
    .line 213
    invoke-direct {v4, v6, v7, v8}, Landroidx/media3/exoplayer/source/r$b;-><init>(Ljava/lang/Object;J)V

    .line 214
    .line 215
    .line 216
    move-object v7, v0

    .line 217
    move-object/from16 v19, v4

    .line 218
    .line 219
    goto :goto_8

    .line 220
    :cond_4
    move-object v7, v0

    .line 221
    move-object/from16 v19, v2

    .line 222
    .line 223
    :goto_8
    new-instance v0, Landroidx/media3/exoplayer/r3;

    .line 224
    .line 225
    iget-object v2, v1, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 226
    .line 227
    iget v13, v2, Landroidx/media3/exoplayer/r3;->e:I

    .line 228
    .line 229
    if-eqz p4, :cond_5

    .line 230
    .line 231
    :goto_9
    move-object v14, v3

    .line 232
    goto :goto_a

    .line 233
    :cond_5
    iget-object v3, v2, Landroidx/media3/exoplayer/r3;->f:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 234
    .line 235
    goto :goto_9

    .line 236
    :goto_a
    if-eqz v5, :cond_6

    .line 237
    .line 238
    sget-object v3, Lf2/z;->d:Lf2/z;

    .line 239
    .line 240
    :goto_b
    move-object/from16 v16, v3

    .line 241
    .line 242
    goto :goto_c

    .line 243
    :cond_6
    iget-object v3, v2, Landroidx/media3/exoplayer/r3;->h:Lf2/z;

    .line 244
    .line 245
    goto :goto_b

    .line 246
    :goto_c
    if-eqz v5, :cond_7

    .line 247
    .line 248
    iget-object v3, v1, Landroidx/media3/exoplayer/r2;->e:Li2/f0;

    .line 249
    .line 250
    :goto_d
    move-object/from16 v17, v3

    .line 251
    .line 252
    goto :goto_e

    .line 253
    :cond_7
    iget-object v3, v2, Landroidx/media3/exoplayer/r3;->i:Li2/f0;

    .line 254
    .line 255
    goto :goto_d

    .line 256
    :goto_e
    if-eqz v5, :cond_8

    .line 257
    .line 258
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    :goto_f
    move-object/from16 v18, v2

    .line 263
    .line 264
    goto :goto_10

    .line 265
    :cond_8
    iget-object v2, v2, Landroidx/media3/exoplayer/r3;->j:Ljava/util/List;

    .line 266
    .line 267
    goto :goto_f

    .line 268
    :goto_10
    iget-object v2, v1, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 269
    .line 270
    iget-boolean v3, v2, Landroidx/media3/exoplayer/r3;->l:Z

    .line 271
    .line 272
    move/from16 v20, v3

    .line 273
    .line 274
    iget v3, v2, Landroidx/media3/exoplayer/r3;->m:I

    .line 275
    .line 276
    move/from16 v21, v3

    .line 277
    .line 278
    iget v3, v2, Landroidx/media3/exoplayer/r3;->n:I

    .line 279
    .line 280
    move/from16 v22, v3

    .line 281
    .line 282
    iget-object v2, v2, Landroidx/media3/exoplayer/r3;->o:Landroidx/media3/common/z;

    .line 283
    .line 284
    move-object/from16 v23, v2

    .line 285
    .line 286
    const-wide/16 v30, 0x0

    .line 287
    .line 288
    const/16 v32, 0x0

    .line 289
    .line 290
    const/4 v15, 0x0

    .line 291
    const-wide/16 v26, 0x0

    .line 292
    .line 293
    move-object v6, v0

    .line 294
    move-object/from16 v8, v19

    .line 295
    .line 296
    move-wide/from16 v11, v28

    .line 297
    .line 298
    move-wide/from16 v24, v28

    .line 299
    .line 300
    invoke-direct/range {v6 .. v32}, Landroidx/media3/exoplayer/r3;-><init>(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;JJILandroidx/media3/exoplayer/ExoPlaybackException;ZLf2/z;Li2/f0;Ljava/util/List;Landroidx/media3/exoplayer/source/r$b;ZIILandroidx/media3/common/z;JJJJZ)V

    .line 301
    .line 302
    .line 303
    iput-object v0, v1, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 304
    .line 305
    if-eqz p3, :cond_9

    .line 306
    .line 307
    iget-object v0, v1, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 308
    .line 309
    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->N()V

    .line 310
    .line 311
    .line 312
    iget-object v0, v1, Landroidx/media3/exoplayer/r2;->t:Landroidx/media3/exoplayer/q3;

    .line 313
    .line 314
    invoke-virtual {v0}, Landroidx/media3/exoplayer/q3;->y()V

    .line 315
    .line 316
    .line 317
    :cond_9
    return-void
.end method

.method private K1()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->n()Landroidx/media3/exoplayer/y2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Landroidx/media3/exoplayer/r2;->K:Z

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, v0, Landroidx/media3/exoplayer/y2;->a:Landroidx/media3/exoplayer/source/q;

    .line 14
    .line 15
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/q;->isLoading()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 25
    :goto_1
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 26
    .line 27
    iget-boolean v2, v1, Landroidx/media3/exoplayer/r3;->g:Z

    .line 28
    .line 29
    if-eq v0, v2, :cond_2

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/r3;->b(Z)Landroidx/media3/exoplayer/r3;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 36
    .line 37
    :cond_2
    return-void
.end method

.method private L()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 2
    .line 3
    iget-wide v0, v0, Landroidx/media3/exoplayer/r3;->q:J

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/r2;->M(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method private L0()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 10
    .line 11
    iget-boolean v0, v0, Landroidx/media3/exoplayer/z2;->i:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-boolean v0, p0, Landroidx/media3/exoplayer/r2;->G:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    iput-boolean v0, p0, Landroidx/media3/exoplayer/r2;->H:Z

    .line 23
    .line 24
    return-void
.end method

.method private L1(Landroidx/media3/exoplayer/source/r$b;Lf2/z;Li2/f0;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/media3/exoplayer/b3;->n()Landroidx/media3/exoplayer/y2;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroidx/media3/exoplayer/y2;

    .line 14
    .line 15
    iget-object v2, v0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-ne v1, v2, :cond_0

    .line 22
    .line 23
    iget-wide v2, v0, Landroidx/media3/exoplayer/r2;->S:J

    .line 24
    .line 25
    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/y2;->C(J)J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    :goto_0
    move-wide v8, v2

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    iget-wide v2, v0, Landroidx/media3/exoplayer/r2;->S:J

    .line 32
    .line 33
    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/y2;->C(J)J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    iget-object v4, v1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 38
    .line 39
    iget-wide v4, v4, Landroidx/media3/exoplayer/z2;->b:J

    .line 40
    .line 41
    sub-long/2addr v2, v4

    .line 42
    goto :goto_0

    .line 43
    :goto_1
    invoke-virtual {v1}, Landroidx/media3/exoplayer/y2;->j()J

    .line 44
    .line 45
    .line 46
    move-result-wide v2

    .line 47
    invoke-direct {v0, v2, v3}, Landroidx/media3/exoplayer/r2;->M(J)J

    .line 48
    .line 49
    .line 50
    move-result-wide v10

    .line 51
    iget-object v2, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 52
    .line 53
    iget-object v2, v2, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    .line 54
    .line 55
    iget-object v1, v1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 56
    .line 57
    iget-object v1, v1, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    .line 58
    .line 59
    invoke-direct {v0, v2, v1}, Landroidx/media3/exoplayer/r2;->F1(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    iget-object v1, v0, Landroidx/media3/exoplayer/r2;->u:Landroidx/media3/exoplayer/t2;

    .line 66
    .line 67
    invoke-interface {v1}, Landroidx/media3/exoplayer/t2;->b()J

    .line 68
    .line 69
    .line 70
    move-result-wide v1

    .line 71
    :goto_2
    move-wide v15, v1

    .line 72
    goto :goto_3

    .line 73
    :cond_1
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :goto_3
    iget-object v1, v0, Landroidx/media3/exoplayer/r2;->f:Landroidx/media3/exoplayer/u2;

    .line 80
    .line 81
    new-instance v2, Landroidx/media3/exoplayer/u2$a;

    .line 82
    .line 83
    iget-object v5, v0, Landroidx/media3/exoplayer/r2;->w:Lx1/f4;

    .line 84
    .line 85
    iget-object v3, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 86
    .line 87
    iget-object v6, v3, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    .line 88
    .line 89
    iget-object v3, v0, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    .line 90
    .line 91
    invoke-virtual {v3}, Landroidx/media3/exoplayer/n;->getPlaybackParameters()Landroidx/media3/common/z;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    iget v12, v3, Landroidx/media3/common/z;->a:F

    .line 96
    .line 97
    iget-object v3, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 98
    .line 99
    iget-boolean v13, v3, Landroidx/media3/exoplayer/r3;->l:Z

    .line 100
    .line 101
    iget-boolean v14, v0, Landroidx/media3/exoplayer/r2;->I:Z

    .line 102
    .line 103
    iget-wide v3, v0, Landroidx/media3/exoplayer/r2;->J:J

    .line 104
    .line 105
    move-wide/from16 v17, v3

    .line 106
    .line 107
    move-object v4, v2

    .line 108
    move-object/from16 v7, p1

    .line 109
    .line 110
    invoke-direct/range {v4 .. v18}, Landroidx/media3/exoplayer/u2$a;-><init>(Lx1/f4;Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;JJFZZJJ)V

    .line 111
    .line 112
    .line 113
    move-object/from16 v3, p3

    .line 114
    .line 115
    iget-object v3, v3, Li2/f0;->c:[Li2/z;

    .line 116
    .line 117
    move-object/from16 v4, p2

    .line 118
    .line 119
    invoke-interface {v1, v2, v4, v3}, Landroidx/media3/exoplayer/u2;->c(Landroidx/media3/exoplayer/u2$a;Lf2/z;[Li2/z;)V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method private M(J)J
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->n()Landroidx/media3/exoplayer/y2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-wide v1

    .line 12
    :cond_0
    iget-wide v3, p0, Landroidx/media3/exoplayer/r2;->S:J

    .line 13
    .line 14
    invoke-virtual {v0, v3, v4}, Landroidx/media3/exoplayer/y2;->C(J)J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    sub-long/2addr p1, v3

    .line 19
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 20
    .line 21
    .line 22
    move-result-wide p1

    .line 23
    return-wide p1
.end method

.method private M0(J)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-wide v1, 0xe8d4a51000L

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    add-long/2addr p1, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/y2;->D(J)J

    .line 17
    .line 18
    .line 19
    move-result-wide p1

    .line 20
    :goto_0
    iput-wide p1, p0, Landroidx/media3/exoplayer/r2;->S:J

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    .line 23
    .line 24
    invoke-virtual {v1, p1, p2}, Landroidx/media3/exoplayer/n;->d(J)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 28
    .line 29
    array-length p2, p1

    .line 30
    const/4 v1, 0x0

    .line 31
    :goto_1
    if-ge v1, p2, :cond_1

    .line 32
    .line 33
    aget-object v2, p1, v1

    .line 34
    .line 35
    iget-wide v3, p0, Landroidx/media3/exoplayer/r2;->S:J

    .line 36
    .line 37
    invoke-virtual {v2, v0, v3, v4}, Landroidx/media3/exoplayer/a4;->M(Landroidx/media3/exoplayer/y2;J)V

    .line 38
    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->x0()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private N(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/media3/exoplayer/r3;->l:Z

    .line 4
    .line 5
    iget v2, v0, Landroidx/media3/exoplayer/r3;->n:I

    .line 6
    .line 7
    iget v0, v0, Landroidx/media3/exoplayer/r3;->m:I

    .line 8
    .line 9
    invoke-direct {p0, v1, p1, v2, v0}, Landroidx/media3/exoplayer/r2;->S1(ZIII)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private static N0(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/r2$d;Landroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;)V
    .locals 4

    .line 1
    iget-object v0, p1, Landroidx/media3/exoplayer/r2$d;->d:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p3}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Landroidx/media3/common/e0$b;->c:I

    .line 8
    .line 9
    invoke-virtual {p0, v0, p2}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    iget p2, p2, Landroidx/media3/common/e0$c;->o:I

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p0, p2, p3, v0}, Landroidx/media3/common/e0;->g(ILandroidx/media3/common/e0$b;Z)Landroidx/media3/common/e0$b;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    iget-object p0, p0, Landroidx/media3/common/e0$b;->b:Ljava/lang/Object;

    .line 21
    .line 22
    iget-wide v0, p3, Landroidx/media3/common/e0$b;->d:J

    .line 23
    .line 24
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    cmp-long p3, v0, v2

    .line 30
    .line 31
    if-eqz p3, :cond_0

    .line 32
    .line 33
    const-wide/16 v2, 0x1

    .line 34
    .line 35
    sub-long/2addr v0, v2

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-virtual {p1, p2, v0, v1, p0}, Landroidx/media3/exoplayer/r2$d;->b(IJLjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private N1(IILjava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->E:Landroidx/media3/exoplayer/r2$e;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/r2$e;->b(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->t:Landroidx/media3/exoplayer/q3;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/exoplayer/q3;->E(IILjava/util/List;)Landroidx/media3/common/e0;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 p2, 0x0

    .line 14
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/r2;->T(Landroidx/media3/common/e0;Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private O()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/r2;->d0:F

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/r2;->A1(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static O0(Landroidx/media3/exoplayer/r2$d;Landroidx/media3/common/e0;Landroidx/media3/common/e0;IZLandroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;)Z
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v8, p1

    .line 3
    .line 4
    move-object/from16 v1, p2

    .line 5
    .line 6
    move-object/from16 v9, p5

    .line 7
    .line 8
    move-object/from16 v10, p6

    .line 9
    .line 10
    iget-object v2, v0, Landroidx/media3/exoplayer/r2$d;->d:Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v11, 0x0

    .line 13
    const/4 v12, 0x1

    .line 14
    const-wide/high16 v13, -0x8000000000000000L

    .line 15
    .line 16
    if-nez v2, :cond_3

    .line 17
    .line 18
    iget-object v1, v0, Landroidx/media3/exoplayer/r2$d;->a:Landroidx/media3/exoplayer/t3;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/media3/exoplayer/t3;->e()J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    cmp-long v1, v1, v13

    .line 25
    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v1, v0, Landroidx/media3/exoplayer/r2$d;->a:Landroidx/media3/exoplayer/t3;

    .line 35
    .line 36
    invoke-virtual {v1}, Landroidx/media3/exoplayer/t3;->e()J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    invoke-static {v1, v2}, Landroidx/media3/common/util/a1;->R0(J)J

    .line 41
    .line 42
    .line 43
    move-result-wide v1

    .line 44
    :goto_0
    new-instance v3, Landroidx/media3/exoplayer/r2$h;

    .line 45
    .line 46
    iget-object v4, v0, Landroidx/media3/exoplayer/r2$d;->a:Landroidx/media3/exoplayer/t3;

    .line 47
    .line 48
    invoke-virtual {v4}, Landroidx/media3/exoplayer/t3;->g()Landroidx/media3/common/e0;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    iget-object v5, v0, Landroidx/media3/exoplayer/r2$d;->a:Landroidx/media3/exoplayer/t3;

    .line 53
    .line 54
    invoke-virtual {v5}, Landroidx/media3/exoplayer/t3;->c()I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    invoke-direct {v3, v4, v5, v1, v2}, Landroidx/media3/exoplayer/r2$h;-><init>(Landroidx/media3/common/e0;IJ)V

    .line 59
    .line 60
    .line 61
    const/4 v4, 0x0

    .line 62
    move-object/from16 v1, p1

    .line 63
    .line 64
    move-object v2, v3

    .line 65
    move v3, v4

    .line 66
    move/from16 v4, p3

    .line 67
    .line 68
    move/from16 v5, p4

    .line 69
    .line 70
    move-object/from16 v6, p5

    .line 71
    .line 72
    move-object/from16 v7, p6

    .line 73
    .line 74
    invoke-static/range {v1 .. v7}, Landroidx/media3/exoplayer/r2;->R0(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/r2$h;ZIZLandroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;)Landroid/util/Pair;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    if-nez v1, :cond_1

    .line 79
    .line 80
    return v11

    .line 81
    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 82
    .line 83
    invoke-virtual {v8, v2}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v3, Ljava/lang/Long;

    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 92
    .line 93
    .line 94
    move-result-wide v3

    .line 95
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 96
    .line 97
    invoke-virtual {p0, v2, v3, v4, v1}, Landroidx/media3/exoplayer/r2$d;->b(IJLjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    iget-object v1, v0, Landroidx/media3/exoplayer/r2$d;->a:Landroidx/media3/exoplayer/t3;

    .line 101
    .line 102
    invoke-virtual {v1}, Landroidx/media3/exoplayer/t3;->e()J

    .line 103
    .line 104
    .line 105
    move-result-wide v1

    .line 106
    cmp-long v1, v1, v13

    .line 107
    .line 108
    if-nez v1, :cond_2

    .line 109
    .line 110
    invoke-static {v8, p0, v9, v10}, Landroidx/media3/exoplayer/r2;->N0(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/r2$d;Landroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;)V

    .line 111
    .line 112
    .line 113
    :cond_2
    return v12

    .line 114
    :cond_3
    invoke-virtual {v8, v2}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    const/4 v3, -0x1

    .line 119
    if-ne v2, v3, :cond_4

    .line 120
    .line 121
    return v11

    .line 122
    :cond_4
    iget-object v3, v0, Landroidx/media3/exoplayer/r2$d;->a:Landroidx/media3/exoplayer/t3;

    .line 123
    .line 124
    invoke-virtual {v3}, Landroidx/media3/exoplayer/t3;->e()J

    .line 125
    .line 126
    .line 127
    move-result-wide v3

    .line 128
    cmp-long v3, v3, v13

    .line 129
    .line 130
    if-nez v3, :cond_5

    .line 131
    .line 132
    invoke-static {v8, p0, v9, v10}, Landroidx/media3/exoplayer/r2;->N0(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/r2$d;Landroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;)V

    .line 133
    .line 134
    .line 135
    return v12

    .line 136
    :cond_5
    iput v2, v0, Landroidx/media3/exoplayer/r2$d;->b:I

    .line 137
    .line 138
    iget-object v2, v0, Landroidx/media3/exoplayer/r2$d;->d:Ljava/lang/Object;

    .line 139
    .line 140
    invoke-virtual {v1, v2, v10}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    .line 141
    .line 142
    .line 143
    iget-boolean v2, v10, Landroidx/media3/common/e0$b;->f:Z

    .line 144
    .line 145
    if-eqz v2, :cond_6

    .line 146
    .line 147
    iget v2, v10, Landroidx/media3/common/e0$b;->c:I

    .line 148
    .line 149
    invoke-virtual {v1, v2, v9}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    iget v2, v2, Landroidx/media3/common/e0$c;->n:I

    .line 154
    .line 155
    iget-object v3, v0, Landroidx/media3/exoplayer/r2$d;->d:Ljava/lang/Object;

    .line 156
    .line 157
    invoke-virtual {v1, v3}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-ne v2, v1, :cond_6

    .line 162
    .line 163
    iget-wide v1, v0, Landroidx/media3/exoplayer/r2$d;->c:J

    .line 164
    .line 165
    invoke-virtual/range {p6 .. p6}, Landroidx/media3/common/e0$b;->o()J

    .line 166
    .line 167
    .line 168
    move-result-wide v3

    .line 169
    add-long v5, v1, v3

    .line 170
    .line 171
    iget-object v1, v0, Landroidx/media3/exoplayer/r2$d;->d:Ljava/lang/Object;

    .line 172
    .line 173
    invoke-virtual {v8, v1, v10}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    iget v4, v1, Landroidx/media3/common/e0$b;->c:I

    .line 178
    .line 179
    move-object/from16 v1, p1

    .line 180
    .line 181
    move-object/from16 v2, p5

    .line 182
    .line 183
    move-object/from16 v3, p6

    .line 184
    .line 185
    invoke-virtual/range {v1 .. v6}, Landroidx/media3/common/e0;->j(Landroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;IJ)Landroid/util/Pair;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 190
    .line 191
    invoke-virtual {v8, v2}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 196
    .line 197
    check-cast v3, Ljava/lang/Long;

    .line 198
    .line 199
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 200
    .line 201
    .line 202
    move-result-wide v3

    .line 203
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 204
    .line 205
    invoke-virtual {p0, v2, v3, v4, v1}, Landroidx/media3/exoplayer/r2$d;->b(IJLjava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    :cond_6
    return v12
.end method

.method private O1()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/common/e0;->q()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->t:Landroidx/media3/exoplayer/q3;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/media3/exoplayer/q3;->t()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->o0()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->s0()V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->t0()V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->u0()V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->q0()V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/r2;->r0(Z)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    return-void
.end method

.method private P(Landroidx/media3/exoplayer/source/q;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/b3;->F(Landroidx/media3/exoplayer/source/q;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 10
    .line 11
    iget-wide v0, p0, Landroidx/media3/exoplayer/r2;->S:J

    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Landroidx/media3/exoplayer/b3;->L(J)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->g0()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/b3;->G(Landroidx/media3/exoplayer/source/q;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->h0()V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    return-void
.end method

.method private P0(Landroidx/media3/common/e0;Landroidx/media3/common/e0;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroidx/media3/common/e0;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Landroidx/media3/common/e0;->q()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->p:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    add-int/lit8 v0, v0, -0x1

    .line 21
    .line 22
    :goto_0
    if-ltz v0, :cond_2

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->p:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    move-object v2, v1

    .line 31
    check-cast v2, Landroidx/media3/exoplayer/r2$d;

    .line 32
    .line 33
    iget v5, p0, Landroidx/media3/exoplayer/r2;->L:I

    .line 34
    .line 35
    iget-boolean v6, p0, Landroidx/media3/exoplayer/r2;->M:Z

    .line 36
    .line 37
    iget-object v7, p0, Landroidx/media3/exoplayer/r2;->k:Landroidx/media3/common/e0$c;

    .line 38
    .line 39
    iget-object v8, p0, Landroidx/media3/exoplayer/r2;->l:Landroidx/media3/common/e0$b;

    .line 40
    .line 41
    move-object v3, p1

    .line 42
    move-object v4, p2

    .line 43
    invoke-static/range {v2 .. v8}, Landroidx/media3/exoplayer/r2;->O0(Landroidx/media3/exoplayer/r2$d;Landroidx/media3/common/e0;Landroidx/media3/common/e0;IZLandroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_1

    .line 48
    .line 49
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->p:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Landroidx/media3/exoplayer/r2$d;

    .line 56
    .line 57
    iget-object v1, v1, Landroidx/media3/exoplayer/r2$d;->a:Landroidx/media3/exoplayer/t3;

    .line 58
    .line 59
    const/4 v2, 0x0

    .line 60
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/t3;->j(Z)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->p:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->p:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method private static P1(II)I
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    return v1

    .line 6
    :cond_0
    if-ne p1, v1, :cond_1

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :cond_1
    return p1
.end method

.method private Q(Ljava/io/IOException;I)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/ExoPlaybackException;->createForSource(Ljava/io/IOException;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 6
    .line 7
    invoke-virtual {p2}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    iget-object p2, p2, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 14
    .line 15
    iget-object p2, p2, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/ExoPlaybackException;->copyWithMediaPeriodId(Landroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :cond_0
    const-string p2, "ExoPlayerImplInternal"

    .line 22
    .line 23
    const-string v0, "Playback error"

    .line 24
    .line 25
    invoke-static {p2, v0, p1}, Landroidx/media3/common/util/u;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    const/4 p2, 0x0

    .line 29
    invoke-direct {p0, p2, p2}, Landroidx/media3/exoplayer/r2;->I1(ZZ)V

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 33
    .line 34
    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/r3;->f(Landroidx/media3/exoplayer/ExoPlaybackException;)Landroidx/media3/exoplayer/r3;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 39
    .line 40
    return-void
.end method

.method private static Q0(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/r3;Landroidx/media3/exoplayer/r2$h;Landroidx/media3/exoplayer/b3;IZLandroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;)Landroidx/media3/exoplayer/r2$g;
    .locals 30

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    move/from16 v10, p5

    .line 8
    .line 9
    move-object/from16 v11, p7

    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/e0;->q()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Landroidx/media3/exoplayer/r2$g;

    .line 18
    .line 19
    invoke-static {}, Landroidx/media3/exoplayer/r3;->l()Landroidx/media3/exoplayer/source/r$b;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const/4 v8, 0x1

    .line 24
    const/4 v9, 0x0

    .line 25
    const-wide/16 v3, 0x0

    .line 26
    .line 27
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    move-object v1, v0

    .line 34
    invoke-direct/range {v1 .. v9}, Landroidx/media3/exoplayer/r2$g;-><init>(Landroidx/media3/exoplayer/source/r$b;JJZZZ)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_0
    iget-object v14, v8, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    .line 39
    .line 40
    iget-object v12, v14, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 41
    .line 42
    invoke-static {v8, v11}, Landroidx/media3/exoplayer/r2;->c0(Landroidx/media3/exoplayer/r3;Landroidx/media3/common/e0$b;)Z

    .line 43
    .line 44
    .line 45
    move-result v13

    .line 46
    iget-object v0, v8, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    if-eqz v13, :cond_1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    iget-wide v0, v8, Landroidx/media3/exoplayer/r3;->s:J

    .line 58
    .line 59
    :goto_0
    move-wide v15, v0

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    :goto_1
    iget-wide v0, v8, Landroidx/media3/exoplayer/r3;->c:J

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :goto_2
    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    const/16 v19, 0x0

    .line 70
    .line 71
    const/4 v6, -0x1

    .line 72
    const/16 v20, 0x1

    .line 73
    .line 74
    if-eqz v9, :cond_6

    .line 75
    .line 76
    const/4 v2, 0x1

    .line 77
    move-object/from16 v0, p0

    .line 78
    .line 79
    move-object/from16 v1, p2

    .line 80
    .line 81
    move/from16 v3, p4

    .line 82
    .line 83
    move/from16 v4, p5

    .line 84
    .line 85
    move-object/from16 v5, p6

    .line 86
    .line 87
    move-object/from16 v21, v14

    .line 88
    .line 89
    move v14, v6

    .line 90
    move-object/from16 v6, p7

    .line 91
    .line 92
    invoke-static/range {v0 .. v6}, Landroidx/media3/exoplayer/r2;->R0(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/r2$h;ZIZLandroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;)Landroid/util/Pair;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-nez v0, :cond_3

    .line 97
    .line 98
    invoke-virtual {v7, v10}, Landroidx/media3/common/e0;->a(Z)I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    move v6, v0

    .line 103
    move-wide v0, v15

    .line 104
    move/from16 v2, v19

    .line 105
    .line 106
    move v3, v2

    .line 107
    move/from16 v4, v20

    .line 108
    .line 109
    goto :goto_5

    .line 110
    :cond_3
    iget-wide v1, v9, Landroidx/media3/exoplayer/r2$h;->c:J

    .line 111
    .line 112
    cmp-long v1, v1, v17

    .line 113
    .line 114
    if-nez v1, :cond_4

    .line 115
    .line 116
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 117
    .line 118
    invoke-virtual {v7, v0, v11}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iget v6, v0, Landroidx/media3/common/e0$b;->c:I

    .line 123
    .line 124
    move-wide v0, v15

    .line 125
    move/from16 v2, v19

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_4
    iget-object v12, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 129
    .line 130
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v0, Ljava/lang/Long;

    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 135
    .line 136
    .line 137
    move-result-wide v0

    .line 138
    move v6, v14

    .line 139
    move/from16 v2, v20

    .line 140
    .line 141
    :goto_3
    iget v3, v8, Landroidx/media3/exoplayer/r3;->e:I

    .line 142
    .line 143
    const/4 v4, 0x4

    .line 144
    if-ne v3, v4, :cond_5

    .line 145
    .line 146
    move/from16 v3, v20

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_5
    move/from16 v3, v19

    .line 150
    .line 151
    :goto_4
    move/from16 v4, v19

    .line 152
    .line 153
    :goto_5
    move-object/from16 v9, p6

    .line 154
    .line 155
    move/from16 v29, v2

    .line 156
    .line 157
    move/from16 v27, v3

    .line 158
    .line 159
    move/from16 v28, v4

    .line 160
    .line 161
    move v3, v6

    .line 162
    :goto_6
    move-object/from16 v6, v21

    .line 163
    .line 164
    goto/16 :goto_a

    .line 165
    .line 166
    :cond_6
    move-object/from16 v21, v14

    .line 167
    .line 168
    move v14, v6

    .line 169
    iget-object v0, v8, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    .line 170
    .line 171
    invoke-virtual {v0}, Landroidx/media3/common/e0;->q()Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-eqz v0, :cond_7

    .line 176
    .line 177
    invoke-virtual {v7, v10}, Landroidx/media3/common/e0;->a(Z)I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    :goto_7
    move-object/from16 v9, p6

    .line 182
    .line 183
    move v3, v0

    .line 184
    move-wide v0, v15

    .line 185
    move/from16 v27, v19

    .line 186
    .line 187
    move/from16 v28, v27

    .line 188
    .line 189
    move/from16 v29, v28

    .line 190
    .line 191
    goto :goto_6

    .line 192
    :cond_7
    invoke-virtual {v7, v12}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-ne v0, v14, :cond_9

    .line 197
    .line 198
    iget-object v5, v8, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    .line 199
    .line 200
    move-object/from16 v0, p6

    .line 201
    .line 202
    move-object/from16 v1, p7

    .line 203
    .line 204
    move/from16 v2, p4

    .line 205
    .line 206
    move/from16 v3, p5

    .line 207
    .line 208
    move-object v4, v12

    .line 209
    move-object/from16 v6, p0

    .line 210
    .line 211
    invoke-static/range {v0 .. v6}, Landroidx/media3/exoplayer/r2;->S0(Landroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;IZLjava/lang/Object;Landroidx/media3/common/e0;Landroidx/media3/common/e0;)I

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-ne v0, v14, :cond_8

    .line 216
    .line 217
    invoke-virtual {v7, v10}, Landroidx/media3/common/e0;->a(Z)I

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    move/from16 v4, v20

    .line 222
    .line 223
    goto :goto_8

    .line 224
    :cond_8
    move/from16 v4, v19

    .line 225
    .line 226
    :goto_8
    move-object/from16 v9, p6

    .line 227
    .line 228
    move v3, v0

    .line 229
    move/from16 v28, v4

    .line 230
    .line 231
    move-wide v0, v15

    .line 232
    move/from16 v27, v19

    .line 233
    .line 234
    move/from16 v29, v27

    .line 235
    .line 236
    goto :goto_6

    .line 237
    :cond_9
    cmp-long v0, v15, v17

    .line 238
    .line 239
    if-nez v0, :cond_a

    .line 240
    .line 241
    invoke-virtual {v7, v12, v11}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    iget v0, v0, Landroidx/media3/common/e0$b;->c:I

    .line 246
    .line 247
    goto :goto_7

    .line 248
    :cond_a
    if-eqz v13, :cond_c

    .line 249
    .line 250
    iget-object v0, v8, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    .line 251
    .line 252
    move-object/from16 v6, v21

    .line 253
    .line 254
    iget-object v1, v6, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 255
    .line 256
    invoke-virtual {v0, v1, v11}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    .line 257
    .line 258
    .line 259
    iget-object v0, v8, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    .line 260
    .line 261
    iget v1, v11, Landroidx/media3/common/e0$b;->c:I

    .line 262
    .line 263
    move-object/from16 v9, p6

    .line 264
    .line 265
    invoke-virtual {v0, v1, v9}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    iget v0, v0, Landroidx/media3/common/e0$c;->n:I

    .line 270
    .line 271
    iget-object v1, v8, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    .line 272
    .line 273
    iget-object v2, v6, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 274
    .line 275
    invoke-virtual {v1, v2}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    if-ne v0, v1, :cond_b

    .line 280
    .line 281
    invoke-virtual/range {p7 .. p7}, Landroidx/media3/common/e0$b;->o()J

    .line 282
    .line 283
    .line 284
    move-result-wide v0

    .line 285
    add-long v4, v15, v0

    .line 286
    .line 287
    invoke-virtual {v7, v12, v11}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    iget v3, v0, Landroidx/media3/common/e0$b;->c:I

    .line 292
    .line 293
    move-object/from16 v0, p0

    .line 294
    .line 295
    move-object/from16 v1, p6

    .line 296
    .line 297
    move-object/from16 v2, p7

    .line 298
    .line 299
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/e0;->j(Landroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;IJ)Landroid/util/Pair;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    iget-object v12, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 304
    .line 305
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 306
    .line 307
    check-cast v0, Ljava/lang/Long;

    .line 308
    .line 309
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 310
    .line 311
    .line 312
    move-result-wide v0

    .line 313
    goto :goto_9

    .line 314
    :cond_b
    move-wide v0, v15

    .line 315
    :goto_9
    move v3, v14

    .line 316
    move/from16 v27, v19

    .line 317
    .line 318
    move/from16 v28, v27

    .line 319
    .line 320
    move/from16 v29, v20

    .line 321
    .line 322
    goto :goto_a

    .line 323
    :cond_c
    move-object/from16 v9, p6

    .line 324
    .line 325
    move-object/from16 v6, v21

    .line 326
    .line 327
    move v3, v14

    .line 328
    move-wide v0, v15

    .line 329
    move/from16 v27, v19

    .line 330
    .line 331
    move/from16 v28, v27

    .line 332
    .line 333
    move/from16 v29, v28

    .line 334
    .line 335
    :goto_a
    if-eq v3, v14, :cond_d

    .line 336
    .line 337
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    move-object/from16 v0, p0

    .line 343
    .line 344
    move-object/from16 v1, p6

    .line 345
    .line 346
    move-object/from16 v2, p7

    .line 347
    .line 348
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/e0;->j(Landroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;IJ)Landroid/util/Pair;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    iget-object v12, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 353
    .line 354
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 355
    .line 356
    check-cast v0, Ljava/lang/Long;

    .line 357
    .line 358
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 359
    .line 360
    .line 361
    move-result-wide v0

    .line 362
    move-object/from16 v2, p3

    .line 363
    .line 364
    move-wide/from16 v25, v17

    .line 365
    .line 366
    goto :goto_b

    .line 367
    :cond_d
    move-object/from16 v2, p3

    .line 368
    .line 369
    move-wide/from16 v25, v0

    .line 370
    .line 371
    :goto_b
    invoke-virtual {v2, v7, v12, v0, v1}, Landroidx/media3/exoplayer/b3;->R(Landroidx/media3/common/e0;Ljava/lang/Object;J)Landroidx/media3/exoplayer/source/r$b;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    iget v3, v2, Landroidx/media3/exoplayer/source/r$b;->e:I

    .line 376
    .line 377
    if-eq v3, v14, :cond_f

    .line 378
    .line 379
    iget v4, v6, Landroidx/media3/exoplayer/source/r$b;->e:I

    .line 380
    .line 381
    if-eq v4, v14, :cond_e

    .line 382
    .line 383
    if-lt v3, v4, :cond_e

    .line 384
    .line 385
    goto :goto_c

    .line 386
    :cond_e
    move/from16 v3, v19

    .line 387
    .line 388
    goto :goto_d

    .line 389
    :cond_f
    :goto_c
    move/from16 v3, v20

    .line 390
    .line 391
    :goto_d
    iget-object v4, v6, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 392
    .line 393
    invoke-virtual {v4, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 394
    .line 395
    .line 396
    move-result v4

    .line 397
    if-eqz v4, :cond_10

    .line 398
    .line 399
    invoke-virtual {v6}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    .line 400
    .line 401
    .line 402
    move-result v4

    .line 403
    if-nez v4, :cond_10

    .line 404
    .line 405
    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    .line 406
    .line 407
    .line 408
    move-result v4

    .line 409
    if-nez v4, :cond_10

    .line 410
    .line 411
    if-eqz v3, :cond_10

    .line 412
    .line 413
    goto :goto_e

    .line 414
    :cond_10
    move/from16 v20, v19

    .line 415
    .line 416
    :goto_e
    invoke-virtual {v7, v12, v11}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    .line 417
    .line 418
    .line 419
    move-result-object v17

    .line 420
    move v12, v13

    .line 421
    move-object v13, v6

    .line 422
    move-object v3, v6

    .line 423
    move-wide v14, v15

    .line 424
    move-object/from16 v16, v2

    .line 425
    .line 426
    move-wide/from16 v18, v25

    .line 427
    .line 428
    invoke-static/range {v12 .. v19}, Landroidx/media3/exoplayer/r2;->Z(ZLandroidx/media3/exoplayer/source/r$b;JLandroidx/media3/exoplayer/source/r$b;Landroidx/media3/common/e0$b;J)Z

    .line 429
    .line 430
    .line 431
    move-result v4

    .line 432
    if-nez v20, :cond_11

    .line 433
    .line 434
    if-eqz v4, :cond_12

    .line 435
    .line 436
    :cond_11
    move-object v2, v3

    .line 437
    :cond_12
    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    .line 438
    .line 439
    .line 440
    move-result v4

    .line 441
    if-eqz v4, :cond_13

    .line 442
    .line 443
    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/source/r$b;->equals(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    move-result v0

    .line 447
    if-eqz v0, :cond_14

    .line 448
    .line 449
    iget-wide v0, v8, Landroidx/media3/exoplayer/r3;->s:J

    .line 450
    .line 451
    :cond_13
    :goto_f
    move-wide/from16 v23, v0

    .line 452
    .line 453
    goto :goto_10

    .line 454
    :cond_14
    iget-object v0, v2, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 455
    .line 456
    invoke-virtual {v7, v0, v11}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    .line 457
    .line 458
    .line 459
    iget v0, v2, Landroidx/media3/exoplayer/source/r$b;->c:I

    .line 460
    .line 461
    iget v1, v2, Landroidx/media3/exoplayer/source/r$b;->b:I

    .line 462
    .line 463
    invoke-virtual {v11, v1}, Landroidx/media3/common/e0$b;->l(I)I

    .line 464
    .line 465
    .line 466
    move-result v1

    .line 467
    if-ne v0, v1, :cond_15

    .line 468
    .line 469
    invoke-virtual/range {p7 .. p7}, Landroidx/media3/common/e0$b;->g()J

    .line 470
    .line 471
    .line 472
    move-result-wide v0

    .line 473
    goto :goto_f

    .line 474
    :cond_15
    const-wide/16 v0, 0x0

    .line 475
    .line 476
    goto :goto_f

    .line 477
    :goto_10
    new-instance v0, Landroidx/media3/exoplayer/r2$g;

    .line 478
    .line 479
    move-object/from16 v21, v0

    .line 480
    .line 481
    move-object/from16 v22, v2

    .line 482
    .line 483
    invoke-direct/range {v21 .. v29}, Landroidx/media3/exoplayer/r2$g;-><init>(Landroidx/media3/exoplayer/source/r$b;JJZZZ)V

    .line 484
    .line 485
    .line 486
    return-object v0
.end method

.method private Q1()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/media3/exoplayer/r3;->l:Z

    .line 4
    .line 5
    iget v2, v0, Landroidx/media3/exoplayer/r3;->n:I

    .line 6
    .line 7
    iget v0, v0, Landroidx/media3/exoplayer/r3;->m:I

    .line 8
    .line 9
    invoke-direct {p0, v1, v2, v0}, Landroidx/media3/exoplayer/r2;->R1(ZII)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private R(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->n()Landroidx/media3/exoplayer/y2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 10
    .line 11
    iget-object v1, v1, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 15
    .line 16
    iget-object v1, v1, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    .line 17
    .line 18
    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 19
    .line 20
    iget-object v2, v2, Landroidx/media3/exoplayer/r3;->k:Landroidx/media3/exoplayer/source/r$b;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/source/r$b;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    iget-object v3, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 29
    .line 30
    invoke-virtual {v3, v1}, Landroidx/media3/exoplayer/r3;->c(Landroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/r3;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iput-object v1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 35
    .line 36
    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    iget-wide v3, v1, Landroidx/media3/exoplayer/r3;->s:J

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->j()J

    .line 44
    .line 45
    .line 46
    move-result-wide v3

    .line 47
    :goto_1
    iput-wide v3, v1, Landroidx/media3/exoplayer/r3;->q:J

    .line 48
    .line 49
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 50
    .line 51
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->L()J

    .line 52
    .line 53
    .line 54
    move-result-wide v3

    .line 55
    iput-wide v3, v1, Landroidx/media3/exoplayer/r3;->r:J

    .line 56
    .line 57
    if-eqz v2, :cond_3

    .line 58
    .line 59
    if-eqz p1, :cond_4

    .line 60
    .line 61
    :cond_3
    if-eqz v0, :cond_4

    .line 62
    .line 63
    iget-boolean p1, v0, Landroidx/media3/exoplayer/y2;->f:Z

    .line 64
    .line 65
    if-eqz p1, :cond_4

    .line 66
    .line 67
    iget-object p1, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 68
    .line 69
    iget-object p1, p1, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->o()Lf2/z;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->p()Li2/f0;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-direct {p0, p1, v1, v0}, Landroidx/media3/exoplayer/r2;->L1(Landroidx/media3/exoplayer/source/r$b;Lf2/z;Li2/f0;)V

    .line 80
    .line 81
    .line 82
    :cond_4
    return-void
.end method

.method private static R0(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/r2$h;ZIZLandroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;)Landroid/util/Pair;
    .locals 13

    .line 1
    move-object v7, p0

    .line 2
    move-object v0, p1

    .line 3
    move-object/from16 v8, p6

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/media3/exoplayer/r2$h;->a:Landroidx/media3/common/e0;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/media3/common/e0;->q()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v9, 0x0

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    return-object v9

    .line 15
    :cond_0
    invoke-virtual {v1}, Landroidx/media3/common/e0;->q()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    move-object v10, v7

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move-object v10, v1

    .line 24
    :goto_0
    :try_start_0
    iget v4, v0, Landroidx/media3/exoplayer/r2$h;->b:I

    .line 25
    .line 26
    iget-wide v5, v0, Landroidx/media3/exoplayer/r2$h;->c:J

    .line 27
    .line 28
    move-object v1, v10

    .line 29
    move-object/from16 v2, p5

    .line 30
    .line 31
    move-object/from16 v3, p6

    .line 32
    .line 33
    invoke-virtual/range {v1 .. v6}, Landroidx/media3/common/e0;->j(Landroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;IJ)Landroid/util/Pair;

    .line 34
    .line 35
    .line 36
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    invoke-virtual {p0, v10}, Landroidx/media3/common/e0;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    return-object v1

    .line 44
    :cond_2
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 45
    .line 46
    invoke-virtual {p0, v2}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    const/4 v11, -0x1

    .line 51
    if-eq v2, v11, :cond_4

    .line 52
    .line 53
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 54
    .line 55
    invoke-virtual {v10, v2, v8}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    iget-boolean v2, v2, Landroidx/media3/common/e0$b;->f:Z

    .line 60
    .line 61
    if-eqz v2, :cond_3

    .line 62
    .line 63
    iget v2, v8, Landroidx/media3/common/e0$b;->c:I

    .line 64
    .line 65
    move-object/from16 v12, p5

    .line 66
    .line 67
    invoke-virtual {v10, v2, v12}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iget v2, v2, Landroidx/media3/common/e0$c;->n:I

    .line 72
    .line 73
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 74
    .line 75
    invoke-virtual {v10, v3}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-ne v2, v3, :cond_3

    .line 80
    .line 81
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 82
    .line 83
    invoke-virtual {p0, v1, v8}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    iget v3, v1, Landroidx/media3/common/e0$b;->c:I

    .line 88
    .line 89
    iget-wide v4, v0, Landroidx/media3/exoplayer/r2$h;->c:J

    .line 90
    .line 91
    move-object v0, p0

    .line 92
    move-object/from16 v1, p5

    .line 93
    .line 94
    move-object/from16 v2, p6

    .line 95
    .line 96
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/e0;->j(Landroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;IJ)Landroid/util/Pair;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    :cond_3
    return-object v1

    .line 101
    :cond_4
    move-object/from16 v12, p5

    .line 102
    .line 103
    if-eqz p2, :cond_5

    .line 104
    .line 105
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 106
    .line 107
    move-object/from16 v0, p5

    .line 108
    .line 109
    move-object/from16 v1, p6

    .line 110
    .line 111
    move/from16 v2, p3

    .line 112
    .line 113
    move/from16 v3, p4

    .line 114
    .line 115
    move-object v5, v10

    .line 116
    move-object v6, p0

    .line 117
    invoke-static/range {v0 .. v6}, Landroidx/media3/exoplayer/r2;->S0(Landroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;IZLjava/lang/Object;Landroidx/media3/common/e0;Landroidx/media3/common/e0;)I

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-eq v3, v11, :cond_5

    .line 122
    .line 123
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    move-object v0, p0

    .line 129
    move-object/from16 v1, p5

    .line 130
    .line 131
    move-object/from16 v2, p6

    .line 132
    .line 133
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/e0;->j(Landroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;IJ)Landroid/util/Pair;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    return-object v0

    .line 138
    :catch_0
    :cond_5
    return-object v9
.end method

.method private R1(ZII)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->B:Landroidx/media3/exoplayer/h;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 4
    .line 5
    iget v1, v1, Landroidx/media3/exoplayer/r3;->e:I

    .line 6
    .line 7
    invoke-virtual {v0, p1, v1}, Landroidx/media3/exoplayer/h;->o(ZI)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-direct {p0, p1, v0, p2, p3}, Landroidx/media3/exoplayer/r2;->S1(ZIII)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private S(Landroidx/media3/exoplayer/y2;)V
    .locals 11

    .line 1
    iget-boolean v0, p1, Landroidx/media3/exoplayer/y2;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/media3/exoplayer/n;->getPlaybackParameters()Landroidx/media3/common/z;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v0, v0, Landroidx/media3/common/z;->a:F

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 14
    .line 15
    iget-object v2, v1, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    .line 16
    .line 17
    iget-boolean v1, v1, Landroidx/media3/exoplayer/r3;->l:Z

    .line 18
    .line 19
    invoke-virtual {p1, v0, v2, v1}, Landroidx/media3/exoplayer/y2;->q(FLandroidx/media3/common/e0;Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 23
    .line 24
    iget-object v0, v0, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/media3/exoplayer/y2;->o()Lf2/z;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p1}, Landroidx/media3/exoplayer/y2;->p()Li2/f0;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/exoplayer/r2;->L1(Landroidx/media3/exoplayer/source/r$b;Lf2/z;Li2/f0;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-ne p1, v0, :cond_1

    .line 44
    .line 45
    iget-object v0, p1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 46
    .line 47
    iget-wide v0, v0, Landroidx/media3/exoplayer/z2;->b:J

    .line 48
    .line 49
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/r2;->M0(J)V

    .line 50
    .line 51
    .line 52
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->C()V

    .line 53
    .line 54
    .line 55
    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p1, Landroidx/media3/exoplayer/y2;->i:Z

    .line 57
    .line 58
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 59
    .line 60
    iget-object v2, v0, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    .line 61
    .line 62
    iget-object p1, p1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 63
    .line 64
    iget-wide v7, p1, Landroidx/media3/exoplayer/z2;->b:J

    .line 65
    .line 66
    iget-wide v5, v0, Landroidx/media3/exoplayer/r3;->c:J

    .line 67
    .line 68
    const/4 v9, 0x0

    .line 69
    const/4 v10, 0x5

    .line 70
    move-object v1, p0

    .line 71
    move-wide v3, v7

    .line 72
    invoke-direct/range {v1 .. v10}, Landroidx/media3/exoplayer/r2;->X(Landroidx/media3/exoplayer/source/r$b;JJJZI)Landroidx/media3/exoplayer/r3;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iput-object p1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 77
    .line 78
    :cond_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->g0()V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method static S0(Landroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;IZLjava/lang/Object;Landroidx/media3/common/e0;Landroidx/media3/common/e0;)I
    .locals 9

    .line 1
    invoke-virtual {p5, p4, p1}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v0, v0, Landroidx/media3/common/e0$b;->c:I

    .line 6
    .line 7
    invoke-virtual {p5, v0, p0}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Landroidx/media3/common/e0$c;->a:Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    move v2, v1

    .line 15
    :goto_0
    invoke-virtual {p6}, Landroidx/media3/common/e0;->p()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-ge v2, v3, :cond_1

    .line 20
    .line 21
    invoke-virtual {p6, v2, p0}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object v3, v3, Landroidx/media3/common/e0$c;->a:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    return v2

    .line 34
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p5, p4}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    .line 38
    .line 39
    .line 40
    move-result p4

    .line 41
    invoke-virtual {p5}, Landroidx/media3/common/e0;->i()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v2, -0x1

    .line 46
    move v4, p4

    .line 47
    move p4, v2

    .line 48
    :goto_1
    if-ge v1, v0, :cond_3

    .line 49
    .line 50
    if-ne p4, v2, :cond_3

    .line 51
    .line 52
    move-object v3, p5

    .line 53
    move-object v5, p1

    .line 54
    move-object v6, p0

    .line 55
    move v7, p2

    .line 56
    move v8, p3

    .line 57
    invoke-virtual/range {v3 .. v8}, Landroidx/media3/common/e0;->d(ILandroidx/media3/common/e0$b;Landroidx/media3/common/e0$c;IZ)I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-ne v4, v2, :cond_2

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    invoke-virtual {p5, v4}, Landroidx/media3/common/e0;->m(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p4

    .line 68
    invoke-virtual {p6, p4}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    .line 69
    .line 70
    .line 71
    move-result p4

    .line 72
    add-int/lit8 v1, v1, 0x1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    :goto_2
    if-ne p4, v2, :cond_4

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_4
    invoke-virtual {p6, p4, p1}, Landroidx/media3/common/e0;->f(ILandroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    iget v2, p0, Landroidx/media3/common/e0$b;->c:I

    .line 83
    .line 84
    :goto_3
    return v2
.end method

.method private S1(ZIII)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    const/4 p1, -0x1

    .line 5
    if-eq p2, p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move p1, v0

    .line 10
    :goto_0
    invoke-static {p2, p4}, Landroidx/media3/exoplayer/r2;->P1(II)I

    .line 11
    .line 12
    .line 13
    move-result p4

    .line 14
    invoke-static {p2, p3}, Landroidx/media3/exoplayer/r2;->V1(II)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    iget-object p3, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 19
    .line 20
    iget-boolean v1, p3, Landroidx/media3/exoplayer/r3;->l:Z

    .line 21
    .line 22
    if-ne v1, p1, :cond_1

    .line 23
    .line 24
    iget v1, p3, Landroidx/media3/exoplayer/r3;->n:I

    .line 25
    .line 26
    if-ne v1, p2, :cond_1

    .line 27
    .line 28
    iget v1, p3, Landroidx/media3/exoplayer/r3;->m:I

    .line 29
    .line 30
    if-ne v1, p4, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    invoke-virtual {p3, p1, p4, p2}, Landroidx/media3/exoplayer/r3;->e(ZII)Landroidx/media3/exoplayer/r3;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    iput-object p2, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 38
    .line 39
    invoke-direct {p0, v0, v0}, Landroidx/media3/exoplayer/r2;->W1(ZZ)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/r2;->y0(Z)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->D1()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_2

    .line 50
    .line 51
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->J1()V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->T1()V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 58
    .line 59
    iget-wide p2, p0, Landroidx/media3/exoplayer/r2;->S:J

    .line 60
    .line 61
    invoke-virtual {p1, p2, p3}, Landroidx/media3/exoplayer/b3;->L(J)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 66
    .line 67
    iget p1, p1, Landroidx/media3/exoplayer/r3;->e:I

    .line 68
    .line 69
    const/4 p2, 0x3

    .line 70
    const/4 p3, 0x2

    .line 71
    if-ne p1, p2, :cond_3

    .line 72
    .line 73
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    .line 74
    .line 75
    invoke-virtual {p1}, Landroidx/media3/exoplayer/n;->f()V

    .line 76
    .line 77
    .line 78
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->G1()V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    .line 82
    .line 83
    invoke-interface {p1, p3}, Landroidx/media3/common/util/p;->sendEmptyMessage(I)Z

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    if-ne p1, p3, :cond_4

    .line 88
    .line 89
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    .line 90
    .line 91
    invoke-interface {p1, p3}, Landroidx/media3/common/util/p;->sendEmptyMessage(I)Z

    .line 92
    .line 93
    .line 94
    :cond_4
    :goto_1
    return-void
.end method

.method private T(Landroidx/media3/common/e0;Z)V
    .locals 25

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    move-object/from16 v12, p1

    .line 4
    .line 5
    iget-object v2, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 6
    .line 7
    iget-object v3, v11, Landroidx/media3/exoplayer/r2;->R:Landroidx/media3/exoplayer/r2$h;

    .line 8
    .line 9
    iget-object v4, v11, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 10
    .line 11
    iget v5, v11, Landroidx/media3/exoplayer/r2;->L:I

    .line 12
    .line 13
    iget-boolean v6, v11, Landroidx/media3/exoplayer/r2;->M:Z

    .line 14
    .line 15
    iget-object v7, v11, Landroidx/media3/exoplayer/r2;->k:Landroidx/media3/common/e0$c;

    .line 16
    .line 17
    iget-object v8, v11, Landroidx/media3/exoplayer/r2;->l:Landroidx/media3/common/e0$b;

    .line 18
    .line 19
    move-object/from16 v1, p1

    .line 20
    .line 21
    invoke-static/range {v1 .. v8}, Landroidx/media3/exoplayer/r2;->Q0(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/r3;Landroidx/media3/exoplayer/r2$h;Landroidx/media3/exoplayer/b3;IZLandroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;)Landroidx/media3/exoplayer/r2$g;

    .line 22
    .line 23
    .line 24
    move-result-object v9

    .line 25
    iget-object v10, v9, Landroidx/media3/exoplayer/r2$g;->a:Landroidx/media3/exoplayer/source/r$b;

    .line 26
    .line 27
    iget-wide v13, v9, Landroidx/media3/exoplayer/r2$g;->c:J

    .line 28
    .line 29
    iget-boolean v0, v9, Landroidx/media3/exoplayer/r2$g;->d:Z

    .line 30
    .line 31
    iget-wide v7, v9, Landroidx/media3/exoplayer/r2$g;->b:J

    .line 32
    .line 33
    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 34
    .line 35
    iget-object v1, v1, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    .line 36
    .line 37
    invoke-virtual {v1, v10}, Landroidx/media3/exoplayer/source/r$b;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/4 v15, 0x1

    .line 42
    const/4 v5, 0x0

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 46
    .line 47
    iget-wide v1, v1, Landroidx/media3/exoplayer/r3;->s:J

    .line 48
    .line 49
    cmp-long v1, v7, v1

    .line 50
    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    move/from16 v16, v5

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    :goto_0
    move/from16 v16, v15

    .line 58
    .line 59
    :goto_1
    const/4 v6, 0x0

    .line 60
    const/16 v17, 0x3

    .line 61
    .line 62
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    const/4 v2, 0x4

    .line 68
    :try_start_0
    iget-boolean v1, v9, Landroidx/media3/exoplayer/r2$g;->e:Z

    .line 69
    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 73
    .line 74
    iget v1, v1, Landroidx/media3/exoplayer/r3;->e:I

    .line 75
    .line 76
    if-eq v1, v15, :cond_2

    .line 77
    .line 78
    invoke-direct {v11, v2}, Landroidx/media3/exoplayer/r2;->w1(I)V

    .line 79
    .line 80
    .line 81
    goto :goto_3

    .line 82
    :catchall_0
    move-exception v0

    .line 83
    move/from16 v20, v2

    .line 84
    .line 85
    move v15, v5

    .line 86
    move-wide/from16 v21, v13

    .line 87
    .line 88
    :goto_2
    move-wide v13, v7

    .line 89
    move-object v8, v6

    .line 90
    goto/16 :goto_d

    .line 91
    .line 92
    :cond_2
    :goto_3
    invoke-direct {v11, v5, v5, v5, v15}, Landroidx/media3/exoplayer/r2;->K0(ZZZZ)V

    .line 93
    .line 94
    .line 95
    :cond_3
    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .line 97
    :try_start_1
    array-length v2, v1

    .line 98
    move v3, v5

    .line 99
    :goto_4
    if-ge v3, v2, :cond_4

    .line 100
    .line 101
    aget-object v4, v1, v3

    .line 102
    .line 103
    invoke-virtual {v4, v12}, Landroidx/media3/exoplayer/a4;->R(Landroidx/media3/common/e0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 104
    .line 105
    .line 106
    add-int/lit8 v3, v3, 0x1

    .line 107
    .line 108
    goto :goto_4

    .line 109
    :catchall_1
    move-exception v0

    .line 110
    move v15, v5

    .line 111
    move-wide/from16 v21, v13

    .line 112
    .line 113
    const/16 v20, 0x4

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_4
    if-nez v16, :cond_9

    .line 117
    .line 118
    :try_start_2
    iget-object v0, v11, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 119
    .line 120
    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->y()Landroidx/media3/exoplayer/y2;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    const-wide/16 v1, 0x0

    .line 125
    .line 126
    if-nez v0, :cond_5

    .line 127
    .line 128
    move-wide/from16 v21, v1

    .line 129
    .line 130
    goto :goto_5

    .line 131
    :cond_5
    iget-object v0, v11, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 132
    .line 133
    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->y()Landroidx/media3/exoplayer/y2;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-direct {v11, v0}, Landroidx/media3/exoplayer/r2;->I(Landroidx/media3/exoplayer/y2;)J

    .line 138
    .line 139
    .line 140
    move-result-wide v3

    .line 141
    move-wide/from16 v21, v3

    .line 142
    .line 143
    :goto_5
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->r()Z

    .line 144
    .line 145
    .line 146
    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 147
    if-eqz v0, :cond_7

    .line 148
    .line 149
    :try_start_3
    iget-object v0, v11, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 150
    .line 151
    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->x()Landroidx/media3/exoplayer/y2;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    if-nez v0, :cond_6

    .line 156
    .line 157
    goto :goto_6

    .line 158
    :cond_6
    iget-object v0, v11, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 159
    .line 160
    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->x()Landroidx/media3/exoplayer/y2;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-direct {v11, v0}, Landroidx/media3/exoplayer/r2;->I(Landroidx/media3/exoplayer/y2;)J

    .line 165
    .line 166
    .line 167
    move-result-wide v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 168
    move-wide/from16 v23, v0

    .line 169
    .line 170
    goto :goto_7

    .line 171
    :cond_7
    :goto_6
    move-wide/from16 v23, v1

    .line 172
    .line 173
    :goto_7
    :try_start_4
    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 174
    .line 175
    iget-wide v3, v11, Landroidx/media3/exoplayer/r2;->S:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 176
    .line 177
    const/16 v20, 0x4

    .line 178
    .line 179
    move-object/from16 v2, p1

    .line 180
    .line 181
    const/4 v15, 0x2

    .line 182
    move v15, v5

    .line 183
    move-wide/from16 v5, v21

    .line 184
    .line 185
    move-wide/from16 v21, v13

    .line 186
    .line 187
    move-wide v13, v7

    .line 188
    move-wide/from16 v7, v23

    .line 189
    .line 190
    :try_start_5
    invoke-virtual/range {v1 .. v8}, Landroidx/media3/exoplayer/b3;->X(Landroidx/media3/common/e0;JJJ)I

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    and-int/lit8 v1, v0, 0x1

    .line 195
    .line 196
    if-eqz v1, :cond_8

    .line 197
    .line 198
    invoke-direct {v11, v15}, Landroidx/media3/exoplayer/r2;->V0(Z)V

    .line 199
    .line 200
    .line 201
    goto :goto_a

    .line 202
    :catchall_2
    move-exception v0

    .line 203
    :goto_8
    const/4 v8, 0x0

    .line 204
    goto/16 :goto_d

    .line 205
    .line 206
    :cond_8
    const/4 v1, 0x2

    .line 207
    and-int/2addr v0, v1

    .line 208
    if-eqz v0, :cond_c

    .line 209
    .line 210
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->x()V

    .line 211
    .line 212
    .line 213
    goto :goto_a

    .line 214
    :catchall_3
    move-exception v0

    .line 215
    move v15, v5

    .line 216
    move-wide/from16 v21, v13

    .line 217
    .line 218
    const/16 v20, 0x4

    .line 219
    .line 220
    move-wide v13, v7

    .line 221
    goto :goto_8

    .line 222
    :cond_9
    move v15, v5

    .line 223
    move-wide/from16 v21, v13

    .line 224
    .line 225
    const/16 v20, 0x4

    .line 226
    .line 227
    move-wide v13, v7

    .line 228
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/e0;->q()Z

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    if-nez v1, :cond_c

    .line 233
    .line 234
    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 235
    .line 236
    invoke-virtual {v1}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    :goto_9
    if-eqz v1, :cond_b

    .line 241
    .line 242
    iget-object v2, v1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 243
    .line 244
    iget-object v2, v2, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    .line 245
    .line 246
    invoke-virtual {v2, v10}, Landroidx/media3/exoplayer/source/r$b;->equals(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    if-eqz v2, :cond_a

    .line 251
    .line 252
    iget-object v2, v11, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 253
    .line 254
    iget-object v3, v1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 255
    .line 256
    invoke-virtual {v2, v12, v3}, Landroidx/media3/exoplayer/b3;->z(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/z2;)Landroidx/media3/exoplayer/z2;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    iput-object v2, v1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 261
    .line 262
    invoke-virtual {v1}, Landroidx/media3/exoplayer/y2;->E()V

    .line 263
    .line 264
    .line 265
    :cond_a
    invoke-virtual {v1}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    goto :goto_9

    .line 270
    :cond_b
    invoke-direct {v11, v10, v13, v14, v0}, Landroidx/media3/exoplayer/r2;->X0(Landroidx/media3/exoplayer/source/r$b;JZ)J

    .line 271
    .line 272
    .line 273
    move-result-wide v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 274
    move-wide v13, v0

    .line 275
    :cond_c
    :goto_a
    iget-object v0, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 276
    .line 277
    iget-object v4, v0, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    .line 278
    .line 279
    iget-object v5, v0, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    .line 280
    .line 281
    iget-boolean v0, v9, Landroidx/media3/exoplayer/r2$g;->f:Z

    .line 282
    .line 283
    if-eqz v0, :cond_d

    .line 284
    .line 285
    move-wide v6, v13

    .line 286
    goto :goto_b

    .line 287
    :cond_d
    move-wide/from16 v6, v18

    .line 288
    .line 289
    :goto_b
    const/4 v8, 0x0

    .line 290
    move-object/from16 v1, p0

    .line 291
    .line 292
    move-object/from16 v2, p1

    .line 293
    .line 294
    move-object v3, v10

    .line 295
    invoke-direct/range {v1 .. v8}, Landroidx/media3/exoplayer/r2;->U1(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;JZ)V

    .line 296
    .line 297
    .line 298
    if-nez v16, :cond_e

    .line 299
    .line 300
    iget-object v0, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 301
    .line 302
    iget-wide v0, v0, Landroidx/media3/exoplayer/r3;->c:J

    .line 303
    .line 304
    cmp-long v0, v21, v0

    .line 305
    .line 306
    if-eqz v0, :cond_11

    .line 307
    .line 308
    :cond_e
    iget-object v0, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 309
    .line 310
    iget-object v1, v0, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    .line 311
    .line 312
    iget-object v1, v1, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 313
    .line 314
    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    .line 315
    .line 316
    if-eqz v16, :cond_f

    .line 317
    .line 318
    if-eqz p2, :cond_f

    .line 319
    .line 320
    invoke-virtual {v0}, Landroidx/media3/common/e0;->q()Z

    .line 321
    .line 322
    .line 323
    move-result v2

    .line 324
    if-nez v2, :cond_f

    .line 325
    .line 326
    iget-object v2, v11, Landroidx/media3/exoplayer/r2;->l:Landroidx/media3/common/e0$b;

    .line 327
    .line 328
    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    iget-boolean v0, v0, Landroidx/media3/common/e0$b;->f:Z

    .line 333
    .line 334
    if-nez v0, :cond_f

    .line 335
    .line 336
    const/4 v9, 0x1

    .line 337
    goto :goto_c

    .line 338
    :cond_f
    move v9, v15

    .line 339
    :goto_c
    iget-object v0, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 340
    .line 341
    iget-wide v7, v0, Landroidx/media3/exoplayer/r3;->d:J

    .line 342
    .line 343
    invoke-virtual {v12, v1}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    const/4 v1, -0x1

    .line 348
    if-ne v0, v1, :cond_10

    .line 349
    .line 350
    move/from16 v17, v20

    .line 351
    .line 352
    :cond_10
    move-object/from16 v1, p0

    .line 353
    .line 354
    move-object v2, v10

    .line 355
    move-wide v3, v13

    .line 356
    move-wide/from16 v5, v21

    .line 357
    .line 358
    move/from16 v10, v17

    .line 359
    .line 360
    invoke-direct/range {v1 .. v10}, Landroidx/media3/exoplayer/r2;->X(Landroidx/media3/exoplayer/source/r$b;JJJZI)Landroidx/media3/exoplayer/r3;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    iput-object v0, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 365
    .line 366
    :cond_11
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->L0()V

    .line 367
    .line 368
    .line 369
    iget-object v0, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 370
    .line 371
    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    .line 372
    .line 373
    invoke-direct {v11, v12, v0}, Landroidx/media3/exoplayer/r2;->P0(Landroidx/media3/common/e0;Landroidx/media3/common/e0;)V

    .line 374
    .line 375
    .line 376
    iget-object v0, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 377
    .line 378
    invoke-virtual {v0, v12}, Landroidx/media3/exoplayer/r3;->j(Landroidx/media3/common/e0;)Landroidx/media3/exoplayer/r3;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    iput-object v0, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 383
    .line 384
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/e0;->q()Z

    .line 385
    .line 386
    .line 387
    move-result v0

    .line 388
    if-nez v0, :cond_12

    .line 389
    .line 390
    const/4 v8, 0x0

    .line 391
    iput-object v8, v11, Landroidx/media3/exoplayer/r2;->R:Landroidx/media3/exoplayer/r2$h;

    .line 392
    .line 393
    :cond_12
    invoke-direct {v11, v15}, Landroidx/media3/exoplayer/r2;->R(Z)V

    .line 394
    .line 395
    .line 396
    iget-object v0, v11, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    .line 397
    .line 398
    const/4 v1, 0x2

    .line 399
    invoke-interface {v0, v1}, Landroidx/media3/common/util/p;->sendEmptyMessage(I)Z

    .line 400
    .line 401
    .line 402
    return-void

    .line 403
    :goto_d
    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 404
    .line 405
    iget-object v4, v1, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    .line 406
    .line 407
    iget-object v5, v1, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    .line 408
    .line 409
    iget-boolean v1, v9, Landroidx/media3/exoplayer/r2$g;->f:Z

    .line 410
    .line 411
    if-eqz v1, :cond_13

    .line 412
    .line 413
    move-wide v6, v13

    .line 414
    goto :goto_e

    .line 415
    :cond_13
    move-wide/from16 v6, v18

    .line 416
    .line 417
    :goto_e
    const/4 v9, 0x0

    .line 418
    move-object/from16 v1, p0

    .line 419
    .line 420
    move-object/from16 v2, p1

    .line 421
    .line 422
    move-object v3, v10

    .line 423
    move-object v15, v8

    .line 424
    move v8, v9

    .line 425
    invoke-direct/range {v1 .. v8}, Landroidx/media3/exoplayer/r2;->U1(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;JZ)V

    .line 426
    .line 427
    .line 428
    if-nez v16, :cond_14

    .line 429
    .line 430
    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 431
    .line 432
    iget-wide v1, v1, Landroidx/media3/exoplayer/r3;->c:J

    .line 433
    .line 434
    cmp-long v1, v21, v1

    .line 435
    .line 436
    if-eqz v1, :cond_17

    .line 437
    .line 438
    :cond_14
    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 439
    .line 440
    iget-object v2, v1, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    .line 441
    .line 442
    iget-object v2, v2, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 443
    .line 444
    iget-object v1, v1, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    .line 445
    .line 446
    if-eqz v16, :cond_15

    .line 447
    .line 448
    if-eqz p2, :cond_15

    .line 449
    .line 450
    invoke-virtual {v1}, Landroidx/media3/common/e0;->q()Z

    .line 451
    .line 452
    .line 453
    move-result v3

    .line 454
    if-nez v3, :cond_15

    .line 455
    .line 456
    iget-object v3, v11, Landroidx/media3/exoplayer/r2;->l:Landroidx/media3/common/e0$b;

    .line 457
    .line 458
    invoke-virtual {v1, v2, v3}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    iget-boolean v1, v1, Landroidx/media3/common/e0$b;->f:Z

    .line 463
    .line 464
    if-nez v1, :cond_15

    .line 465
    .line 466
    const/4 v9, 0x1

    .line 467
    goto :goto_f

    .line 468
    :cond_15
    const/4 v9, 0x0

    .line 469
    :goto_f
    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 470
    .line 471
    iget-wide v7, v1, Landroidx/media3/exoplayer/r3;->d:J

    .line 472
    .line 473
    invoke-virtual {v12, v2}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    .line 474
    .line 475
    .line 476
    move-result v1

    .line 477
    const/4 v2, -0x1

    .line 478
    if-ne v1, v2, :cond_16

    .line 479
    .line 480
    move/from16 v17, v20

    .line 481
    .line 482
    :cond_16
    move-object/from16 v1, p0

    .line 483
    .line 484
    move-object v2, v10

    .line 485
    move-wide v3, v13

    .line 486
    move-wide/from16 v5, v21

    .line 487
    .line 488
    move/from16 v10, v17

    .line 489
    .line 490
    invoke-direct/range {v1 .. v10}, Landroidx/media3/exoplayer/r2;->X(Landroidx/media3/exoplayer/source/r$b;JJJZI)Landroidx/media3/exoplayer/r3;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    iput-object v1, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 495
    .line 496
    :cond_17
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->L0()V

    .line 497
    .line 498
    .line 499
    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 500
    .line 501
    iget-object v1, v1, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    .line 502
    .line 503
    invoke-direct {v11, v12, v1}, Landroidx/media3/exoplayer/r2;->P0(Landroidx/media3/common/e0;Landroidx/media3/common/e0;)V

    .line 504
    .line 505
    .line 506
    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 507
    .line 508
    invoke-virtual {v1, v12}, Landroidx/media3/exoplayer/r3;->j(Landroidx/media3/common/e0;)Landroidx/media3/exoplayer/r3;

    .line 509
    .line 510
    .line 511
    move-result-object v1

    .line 512
    iput-object v1, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 513
    .line 514
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/e0;->q()Z

    .line 515
    .line 516
    .line 517
    move-result v1

    .line 518
    if-nez v1, :cond_18

    .line 519
    .line 520
    iput-object v15, v11, Landroidx/media3/exoplayer/r2;->R:Landroidx/media3/exoplayer/r2$h;

    .line 521
    .line 522
    :cond_18
    const/4 v1, 0x0

    .line 523
    invoke-direct {v11, v1}, Landroidx/media3/exoplayer/r2;->R(Z)V

    .line 524
    .line 525
    .line 526
    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    .line 527
    .line 528
    const/4 v2, 0x2

    .line 529
    invoke-interface {v1, v2}, Landroidx/media3/common/util/p;->sendEmptyMessage(I)Z

    .line 530
    .line 531
    .line 532
    throw v0
.end method

.method private T0(J)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 2
    .line 3
    iget v0, v0, Landroidx/media3/exoplayer/r3;->e:I

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    iget-boolean v0, p0, Landroidx/media3/exoplayer/r2;->x:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->D1()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    :cond_0
    const-wide/16 v0, 0x3e8

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    sget-wide v0, Landroidx/media3/exoplayer/r2;->e0:J

    .line 22
    .line 23
    :goto_0
    iget-boolean v2, p0, Landroidx/media3/exoplayer/r2;->x:Z

    .line 24
    .line 25
    if-eqz v2, :cond_4

    .line 26
    .line 27
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->D1()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_4

    .line 32
    .line 33
    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 34
    .line 35
    array-length v3, v2

    .line 36
    const/4 v4, 0x0

    .line 37
    :goto_1
    if-ge v4, v3, :cond_2

    .line 38
    .line 39
    aget-object v5, v2, v4

    .line 40
    .line 41
    iget-wide v6, p0, Landroidx/media3/exoplayer/r2;->S:J

    .line 42
    .line 43
    iget-wide v8, p0, Landroidx/media3/exoplayer/r2;->T:J

    .line 44
    .line 45
    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/media3/exoplayer/a4;->j(JJ)J

    .line 46
    .line 47
    .line 48
    move-result-wide v5

    .line 49
    invoke-static {v5, v6}, Landroidx/media3/common/util/a1;->y1(J)J

    .line 50
    .line 51
    .line 52
    move-result-wide v5

    .line 53
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 54
    .line 55
    .line 56
    move-result-wide v0

    .line 57
    add-int/lit8 v4, v4, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 61
    .line 62
    invoke-virtual {v2}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    if-eqz v2, :cond_3

    .line 67
    .line 68
    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 69
    .line 70
    invoke-virtual {v2}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v2}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    goto :goto_2

    .line 79
    :cond_3
    const/4 v2, 0x0

    .line 80
    :goto_2
    if-eqz v2, :cond_4

    .line 81
    .line 82
    iget-wide v3, p0, Landroidx/media3/exoplayer/r2;->S:J

    .line 83
    .line 84
    long-to-float v3, v3

    .line 85
    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->R0(J)J

    .line 86
    .line 87
    .line 88
    move-result-wide v4

    .line 89
    long-to-float v4, v4

    .line 90
    iget-object v5, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 91
    .line 92
    iget-object v5, v5, Landroidx/media3/exoplayer/r3;->o:Landroidx/media3/common/z;

    .line 93
    .line 94
    iget v5, v5, Landroidx/media3/common/z;->a:F

    .line 95
    .line 96
    mul-float/2addr v4, v5

    .line 97
    add-float/2addr v3, v4

    .line 98
    invoke-virtual {v2}, Landroidx/media3/exoplayer/y2;->n()J

    .line 99
    .line 100
    .line 101
    move-result-wide v4

    .line 102
    long-to-float v2, v4

    .line 103
    cmpl-float v2, v3, v2

    .line 104
    .line 105
    if-ltz v2, :cond_4

    .line 106
    .line 107
    sget-wide v2, Landroidx/media3/exoplayer/r2;->e0:J

    .line 108
    .line 109
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 110
    .line 111
    .line 112
    move-result-wide v0

    .line 113
    :cond_4
    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    .line 114
    .line 115
    const/4 v3, 0x2

    .line 116
    add-long/2addr p1, v0

    .line 117
    invoke-interface {v2, v3, p1, p2}, Landroidx/media3/common/util/p;->sendEmptyMessageAtTime(IJ)Z

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method private T1()V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-boolean v1, v0, Landroidx/media3/exoplayer/y2;->f:Z

    .line 11
    .line 12
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object v1, v0, Landroidx/media3/exoplayer/y2;->a:Landroidx/media3/exoplayer/source/q;

    .line 20
    .line 21
    invoke-interface {v1}, Landroidx/media3/exoplayer/source/q;->readDiscontinuity()J

    .line 22
    .line 23
    .line 24
    move-result-wide v4

    .line 25
    move-wide v6, v4

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move-wide v6, v2

    .line 28
    :goto_0
    cmp-long v1, v6, v2

    .line 29
    .line 30
    const/4 v10, 0x0

    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->s()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/b3;->O(Landroidx/media3/exoplayer/y2;)I

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v10}, Landroidx/media3/exoplayer/r2;->R(Z)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->g0()V

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-direct {p0, v6, v7}, Landroidx/media3/exoplayer/r2;->M0(J)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 54
    .line 55
    iget-wide v0, v0, Landroidx/media3/exoplayer/r3;->s:J

    .line 56
    .line 57
    cmp-long v0, v6, v0

    .line 58
    .line 59
    if-eqz v0, :cond_6

    .line 60
    .line 61
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 62
    .line 63
    iget-object v1, v0, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    .line 64
    .line 65
    iget-wide v4, v0, Landroidx/media3/exoplayer/r3;->c:J

    .line 66
    .line 67
    const/4 v8, 0x1

    .line 68
    const/4 v9, 0x5

    .line 69
    move-object v0, p0

    .line 70
    move-wide v2, v6

    .line 71
    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/r2;->X(Landroidx/media3/exoplayer/source/r$b;JJJZI)Landroidx/media3/exoplayer/r3;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iput-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_3
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    .line 79
    .line 80
    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 81
    .line 82
    invoke-virtual {v2}, Landroidx/media3/exoplayer/b3;->y()Landroidx/media3/exoplayer/y2;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    const/4 v3, 0x1

    .line 87
    if-eq v0, v2, :cond_4

    .line 88
    .line 89
    move v2, v3

    .line 90
    goto :goto_1

    .line 91
    :cond_4
    move v2, v10

    .line 92
    :goto_1
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/n;->i(Z)J

    .line 93
    .line 94
    .line 95
    move-result-wide v1

    .line 96
    iput-wide v1, p0, Landroidx/media3/exoplayer/r2;->S:J

    .line 97
    .line 98
    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/y2;->C(J)J

    .line 99
    .line 100
    .line 101
    move-result-wide v6

    .line 102
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 103
    .line 104
    iget-wide v0, v0, Landroidx/media3/exoplayer/r3;->s:J

    .line 105
    .line 106
    invoke-direct {p0, v0, v1, v6, v7}, Landroidx/media3/exoplayer/r2;->n0(JJ)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    .line 110
    .line 111
    invoke-virtual {v0}, Landroidx/media3/exoplayer/n;->h()Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_5

    .line 116
    .line 117
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->E:Landroidx/media3/exoplayer/r2$e;

    .line 118
    .line 119
    iget-boolean v0, v0, Landroidx/media3/exoplayer/r2$e;->d:Z

    .line 120
    .line 121
    xor-int/lit8 v8, v0, 0x1

    .line 122
    .line 123
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 124
    .line 125
    iget-object v1, v0, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    .line 126
    .line 127
    iget-wide v4, v0, Landroidx/media3/exoplayer/r3;->c:J

    .line 128
    .line 129
    const/4 v9, 0x6

    .line 130
    move-object v0, p0

    .line 131
    move-wide v2, v6

    .line 132
    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/r2;->X(Landroidx/media3/exoplayer/source/r$b;JJJZI)Landroidx/media3/exoplayer/r3;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    iput-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_5
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 140
    .line 141
    invoke-virtual {v0, v6, v7}, Landroidx/media3/exoplayer/r3;->o(J)V

    .line 142
    .line 143
    .line 144
    :cond_6
    :goto_2
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 145
    .line 146
    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->n()Landroidx/media3/exoplayer/y2;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 151
    .line 152
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->j()J

    .line 153
    .line 154
    .line 155
    move-result-wide v2

    .line 156
    iput-wide v2, v1, Landroidx/media3/exoplayer/r3;->q:J

    .line 157
    .line 158
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 159
    .line 160
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->L()J

    .line 161
    .line 162
    .line 163
    move-result-wide v1

    .line 164
    iput-wide v1, v0, Landroidx/media3/exoplayer/r3;->r:J

    .line 165
    .line 166
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 167
    .line 168
    iget-boolean v1, v0, Landroidx/media3/exoplayer/r3;->l:Z

    .line 169
    .line 170
    if-eqz v1, :cond_7

    .line 171
    .line 172
    iget v1, v0, Landroidx/media3/exoplayer/r3;->e:I

    .line 173
    .line 174
    const/4 v2, 0x3

    .line 175
    if-ne v1, v2, :cond_7

    .line 176
    .line 177
    iget-object v1, v0, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    .line 178
    .line 179
    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    .line 180
    .line 181
    invoke-direct {p0, v1, v0}, Landroidx/media3/exoplayer/r2;->F1(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;)Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-eqz v0, :cond_7

    .line 186
    .line 187
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 188
    .line 189
    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->o:Landroidx/media3/common/z;

    .line 190
    .line 191
    iget v0, v0, Landroidx/media3/common/z;->a:F

    .line 192
    .line 193
    const/high16 v1, 0x3f800000    # 1.0f

    .line 194
    .line 195
    cmpl-float v0, v0, v1

    .line 196
    .line 197
    if-nez v0, :cond_7

    .line 198
    .line 199
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->u:Landroidx/media3/exoplayer/t2;

    .line 200
    .line 201
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->G()J

    .line 202
    .line 203
    .line 204
    move-result-wide v1

    .line 205
    iget-object v3, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 206
    .line 207
    iget-wide v3, v3, Landroidx/media3/exoplayer/r3;->r:J

    .line 208
    .line 209
    invoke-interface {v0, v1, v2, v3, v4}, Landroidx/media3/exoplayer/t2;->a(JJ)F

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    .line 214
    .line 215
    invoke-virtual {v1}, Landroidx/media3/exoplayer/n;->getPlaybackParameters()Landroidx/media3/common/z;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    iget v1, v1, Landroidx/media3/common/z;->a:F

    .line 220
    .line 221
    cmpl-float v1, v1, v0

    .line 222
    .line 223
    if-eqz v1, :cond_7

    .line 224
    .line 225
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 226
    .line 227
    iget-object v1, v1, Landroidx/media3/exoplayer/r3;->o:Landroidx/media3/common/z;

    .line 228
    .line 229
    invoke-virtual {v1, v0}, Landroidx/media3/common/z;->b(F)Landroidx/media3/common/z;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/r2;->g1(Landroidx/media3/common/z;)V

    .line 234
    .line 235
    .line 236
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 237
    .line 238
    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->o:Landroidx/media3/common/z;

    .line 239
    .line 240
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    .line 241
    .line 242
    invoke-virtual {v1}, Landroidx/media3/exoplayer/n;->getPlaybackParameters()Landroidx/media3/common/z;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    iget v1, v1, Landroidx/media3/common/z;->a:F

    .line 247
    .line 248
    invoke-direct {p0, v0, v1, v10, v10}, Landroidx/media3/exoplayer/r2;->V(Landroidx/media3/common/z;FZZ)V

    .line 249
    .line 250
    .line 251
    :cond_7
    return-void
.end method

.method private U(Landroidx/media3/exoplayer/source/q;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/b3;->F(Landroidx/media3/exoplayer/source/q;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/media3/exoplayer/b3;->n()Landroidx/media3/exoplayer/y2;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Landroidx/media3/exoplayer/y2;

    .line 20
    .line 21
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/r2;->S(Landroidx/media3/exoplayer/y2;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/b3;->v(Landroidx/media3/exoplayer/source/q;)Landroidx/media3/exoplayer/y2;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-boolean v1, v0, Landroidx/media3/exoplayer/y2;->f:Z

    .line 34
    .line 35
    xor-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    invoke-static {v1}, Landroidx/media3/common/util/a;->g(Z)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    .line 41
    .line 42
    invoke-virtual {v1}, Landroidx/media3/exoplayer/n;->getPlaybackParameters()Landroidx/media3/common/z;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iget v1, v1, Landroidx/media3/common/z;->a:F

    .line 47
    .line 48
    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 49
    .line 50
    iget-object v3, v2, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    .line 51
    .line 52
    iget-boolean v2, v2, Landroidx/media3/exoplayer/r3;->l:Z

    .line 53
    .line 54
    invoke-virtual {v0, v1, v3, v2}, Landroidx/media3/exoplayer/y2;->q(FLandroidx/media3/common/e0;Z)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/b3;->G(Landroidx/media3/exoplayer/source/q;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->h0()V

    .line 66
    .line 67
    .line 68
    :cond_1
    :goto_0
    return-void
.end method

.method private U1(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;JZ)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/r2;->F1(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p2}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    sget-object p1, Landroidx/media3/common/z;->d:Landroidx/media3/common/z;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 17
    .line 18
    iget-object p1, p1, Landroidx/media3/exoplayer/r3;->o:Landroidx/media3/common/z;

    .line 19
    .line 20
    :goto_0
    iget-object p2, p0, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    .line 21
    .line 22
    invoke-virtual {p2}, Landroidx/media3/exoplayer/n;->getPlaybackParameters()Landroidx/media3/common/z;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p2, p1}, Landroidx/media3/common/z;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-nez p2, :cond_1

    .line 31
    .line 32
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/r2;->g1(Landroidx/media3/common/z;)V

    .line 33
    .line 34
    .line 35
    iget-object p2, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 36
    .line 37
    iget-object p2, p2, Landroidx/media3/exoplayer/r3;->o:Landroidx/media3/common/z;

    .line 38
    .line 39
    iget p1, p1, Landroidx/media3/common/z;->a:F

    .line 40
    .line 41
    const/4 p3, 0x0

    .line 42
    invoke-direct {p0, p2, p1, p3, p3}, Landroidx/media3/exoplayer/r2;->V(Landroidx/media3/common/z;FZZ)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void

    .line 46
    :cond_2
    iget-object v0, p2, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 47
    .line 48
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->l:Landroidx/media3/common/e0$b;

    .line 49
    .line 50
    invoke-virtual {p1, v0, v1}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget v0, v0, Landroidx/media3/common/e0$b;->c:I

    .line 55
    .line 56
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->k:Landroidx/media3/common/e0$c;

    .line 57
    .line 58
    invoke-virtual {p1, v0, v1}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->u:Landroidx/media3/exoplayer/t2;

    .line 62
    .line 63
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->k:Landroidx/media3/common/e0$c;

    .line 64
    .line 65
    iget-object v1, v1, Landroidx/media3/common/e0$c;->j:Landroidx/media3/common/t$g;

    .line 66
    .line 67
    invoke-static {v1}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Landroidx/media3/common/t$g;

    .line 72
    .line 73
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/t2;->e(Landroidx/media3/common/t$g;)V

    .line 74
    .line 75
    .line 76
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    cmp-long v2, p5, v0

    .line 82
    .line 83
    if-eqz v2, :cond_3

    .line 84
    .line 85
    iget-object p3, p0, Landroidx/media3/exoplayer/r2;->u:Landroidx/media3/exoplayer/t2;

    .line 86
    .line 87
    iget-object p2, p2, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 88
    .line 89
    invoke-direct {p0, p1, p2, p5, p6}, Landroidx/media3/exoplayer/r2;->H(Landroidx/media3/common/e0;Ljava/lang/Object;J)J

    .line 90
    .line 91
    .line 92
    move-result-wide p1

    .line 93
    invoke-interface {p3, p1, p2}, Landroidx/media3/exoplayer/t2;->d(J)V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_3
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->k:Landroidx/media3/common/e0$c;

    .line 98
    .line 99
    iget-object p1, p1, Landroidx/media3/common/e0$c;->a:Ljava/lang/Object;

    .line 100
    .line 101
    invoke-virtual {p3}, Landroidx/media3/common/e0;->q()Z

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    if-nez p2, :cond_4

    .line 106
    .line 107
    iget-object p2, p4, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 108
    .line 109
    iget-object p4, p0, Landroidx/media3/exoplayer/r2;->l:Landroidx/media3/common/e0$b;

    .line 110
    .line 111
    invoke-virtual {p3, p2, p4}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    iget p2, p2, Landroidx/media3/common/e0$b;->c:I

    .line 116
    .line 117
    iget-object p4, p0, Landroidx/media3/exoplayer/r2;->k:Landroidx/media3/common/e0$c;

    .line 118
    .line 119
    invoke-virtual {p3, p2, p4}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    iget-object p2, p2, Landroidx/media3/common/e0$c;->a:Ljava/lang/Object;

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_4
    const/4 p2, 0x0

    .line 127
    :goto_1
    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-eqz p1, :cond_5

    .line 132
    .line 133
    if-eqz p7, :cond_6

    .line 134
    .line 135
    :cond_5
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->u:Landroidx/media3/exoplayer/t2;

    .line 136
    .line 137
    invoke-interface {p1, v0, v1}, Landroidx/media3/exoplayer/t2;->d(J)V

    .line 138
    .line 139
    .line 140
    :cond_6
    :goto_2
    return-void
.end method

.method private V(Landroidx/media3/common/z;FZZ)V
    .locals 3

    .line 1
    if-eqz p3, :cond_1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    iget-object p3, p0, Landroidx/media3/exoplayer/r2;->E:Landroidx/media3/exoplayer/r2$e;

    .line 6
    .line 7
    const/4 p4, 0x1

    .line 8
    invoke-virtual {p3, p4}, Landroidx/media3/exoplayer/r2$e;->b(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object p3, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 12
    .line 13
    invoke-virtual {p3, p1}, Landroidx/media3/exoplayer/r3;->g(Landroidx/media3/common/z;)Landroidx/media3/exoplayer/r3;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    iput-object p3, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 18
    .line 19
    :cond_1
    iget p3, p1, Landroidx/media3/common/z;->a:F

    .line 20
    .line 21
    invoke-direct {p0, p3}, Landroidx/media3/exoplayer/r2;->Y1(F)V

    .line 22
    .line 23
    .line 24
    iget-object p3, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 25
    .line 26
    array-length p4, p3

    .line 27
    const/4 v0, 0x0

    .line 28
    :goto_0
    if-ge v0, p4, :cond_2

    .line 29
    .line 30
    aget-object v1, p3, v0

    .line 31
    .line 32
    iget v2, p1, Landroidx/media3/common/z;->a:F

    .line 33
    .line 34
    invoke-virtual {v1, p2, v2}, Landroidx/media3/exoplayer/a4;->Q(FF)V

    .line 35
    .line 36
    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    return-void
.end method

.method private V0(Z)V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 12
    .line 13
    iget-wide v3, v1, Landroidx/media3/exoplayer/r3;->s:J

    .line 14
    .line 15
    const/4 v5, 0x1

    .line 16
    const/4 v6, 0x0

    .line 17
    move-object v1, p0

    .line 18
    move-object v2, v0

    .line 19
    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/r2;->Y0(Landroidx/media3/exoplayer/source/r$b;JZZ)J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 24
    .line 25
    iget-wide v1, v1, Landroidx/media3/exoplayer/r3;->s:J

    .line 26
    .line 27
    cmp-long v1, v3, v1

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 32
    .line 33
    iget-wide v5, v1, Landroidx/media3/exoplayer/r3;->c:J

    .line 34
    .line 35
    iget-wide v7, v1, Landroidx/media3/exoplayer/r3;->d:J

    .line 36
    .line 37
    const/4 v10, 0x5

    .line 38
    move-object v1, p0

    .line 39
    move-object v2, v0

    .line 40
    move v9, p1

    .line 41
    invoke-direct/range {v1 .. v10}, Landroidx/media3/exoplayer/r2;->X(Landroidx/media3/exoplayer/source/r$b;JJJZI)Landroidx/media3/exoplayer/r3;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method private static V1(II)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    if-ne p1, v0, :cond_1

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_1
    return p1
.end method

.method private W(Landroidx/media3/common/z;Z)V
    .locals 2

    .line 1
    iget v0, p1, Landroidx/media3/common/z;->a:F

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {p0, p1, v0, v1, p2}, Landroidx/media3/exoplayer/r2;->V(Landroidx/media3/common/z;FZZ)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private W0(Landroidx/media3/exoplayer/r2$h;)V
    .locals 18

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->E:Landroidx/media3/exoplayer/r2$e;

    .line 6
    .line 7
    const/4 v8, 0x1

    .line 8
    invoke-virtual {v1, v8}, Landroidx/media3/exoplayer/r2$e;->b(I)V

    .line 9
    .line 10
    .line 11
    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 12
    .line 13
    iget-object v1, v1, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    .line 14
    .line 15
    iget v4, v11, Landroidx/media3/exoplayer/r2;->L:I

    .line 16
    .line 17
    iget-boolean v5, v11, Landroidx/media3/exoplayer/r2;->M:Z

    .line 18
    .line 19
    iget-object v6, v11, Landroidx/media3/exoplayer/r2;->k:Landroidx/media3/common/e0$c;

    .line 20
    .line 21
    iget-object v7, v11, Landroidx/media3/exoplayer/r2;->l:Landroidx/media3/common/e0$b;

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    move-object/from16 v2, p1

    .line 25
    .line 26
    invoke-static/range {v1 .. v7}, Landroidx/media3/exoplayer/r2;->R0(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/r2$h;ZIZLandroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;)Landroid/util/Pair;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-wide/16 v2, 0x0

    .line 31
    .line 32
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    const/4 v6, 0x0

    .line 38
    if-nez v1, :cond_0

    .line 39
    .line 40
    iget-object v7, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 41
    .line 42
    iget-object v7, v7, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    .line 43
    .line 44
    invoke-direct {v11, v7}, Landroidx/media3/exoplayer/r2;->J(Landroidx/media3/common/e0;)Landroid/util/Pair;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v9, Landroidx/media3/exoplayer/source/r$b;

    .line 51
    .line 52
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v7, Ljava/lang/Long;

    .line 55
    .line 56
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 57
    .line 58
    .line 59
    move-result-wide v12

    .line 60
    iget-object v7, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 61
    .line 62
    iget-object v7, v7, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    .line 63
    .line 64
    invoke-virtual {v7}, Landroidx/media3/common/e0;->q()Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    xor-int/2addr v7, v8

    .line 69
    move v10, v7

    .line 70
    move-wide/from16 v16, v4

    .line 71
    .line 72
    :goto_0
    move-wide v4, v12

    .line 73
    move-wide/from16 v12, v16

    .line 74
    .line 75
    goto/16 :goto_4

    .line 76
    .line 77
    :cond_0
    iget-object v7, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 78
    .line 79
    iget-object v9, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v9, Ljava/lang/Long;

    .line 82
    .line 83
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 84
    .line 85
    .line 86
    move-result-wide v12

    .line 87
    iget-wide v9, v0, Landroidx/media3/exoplayer/r2$h;->c:J

    .line 88
    .line 89
    cmp-long v9, v9, v4

    .line 90
    .line 91
    if-nez v9, :cond_1

    .line 92
    .line 93
    move-wide v9, v4

    .line 94
    goto :goto_1

    .line 95
    :cond_1
    move-wide v9, v12

    .line 96
    :goto_1
    iget-object v14, v11, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 97
    .line 98
    iget-object v15, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 99
    .line 100
    iget-object v15, v15, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    .line 101
    .line 102
    invoke-virtual {v14, v15, v7, v12, v13}, Landroidx/media3/exoplayer/b3;->R(Landroidx/media3/common/e0;Ljava/lang/Object;J)Landroidx/media3/exoplayer/source/r$b;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    invoke-virtual {v7}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    .line 107
    .line 108
    .line 109
    move-result v14

    .line 110
    if-eqz v14, :cond_3

    .line 111
    .line 112
    iget-object v4, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 113
    .line 114
    iget-object v4, v4, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    .line 115
    .line 116
    iget-object v5, v7, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 117
    .line 118
    iget-object v12, v11, Landroidx/media3/exoplayer/r2;->l:Landroidx/media3/common/e0$b;

    .line 119
    .line 120
    invoke-virtual {v4, v5, v12}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    .line 121
    .line 122
    .line 123
    iget-object v4, v11, Landroidx/media3/exoplayer/r2;->l:Landroidx/media3/common/e0$b;

    .line 124
    .line 125
    iget v5, v7, Landroidx/media3/exoplayer/source/r$b;->b:I

    .line 126
    .line 127
    invoke-virtual {v4, v5}, Landroidx/media3/common/e0$b;->l(I)I

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    iget v5, v7, Landroidx/media3/exoplayer/source/r$b;->c:I

    .line 132
    .line 133
    if-ne v4, v5, :cond_2

    .line 134
    .line 135
    iget-object v4, v11, Landroidx/media3/exoplayer/r2;->l:Landroidx/media3/common/e0$b;

    .line 136
    .line 137
    invoke-virtual {v4}, Landroidx/media3/common/e0$b;->g()J

    .line 138
    .line 139
    .line 140
    move-result-wide v4

    .line 141
    move-wide v12, v4

    .line 142
    goto :goto_2

    .line 143
    :cond_2
    move-wide v12, v2

    .line 144
    :goto_2
    move-wide v4, v12

    .line 145
    move-wide v12, v9

    .line 146
    move-object v9, v7

    .line 147
    move v10, v8

    .line 148
    goto :goto_4

    .line 149
    :cond_3
    iget-wide v14, v0, Landroidx/media3/exoplayer/r2$h;->c:J

    .line 150
    .line 151
    cmp-long v4, v14, v4

    .line 152
    .line 153
    if-nez v4, :cond_4

    .line 154
    .line 155
    move v4, v8

    .line 156
    goto :goto_3

    .line 157
    :cond_4
    move v4, v6

    .line 158
    :goto_3
    move-wide/from16 v16, v9

    .line 159
    .line 160
    move v10, v4

    .line 161
    move-object v9, v7

    .line 162
    goto :goto_0

    .line 163
    :goto_4
    :try_start_0
    iget-object v7, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 164
    .line 165
    iget-object v7, v7, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    .line 166
    .line 167
    invoke-virtual {v7}, Landroidx/media3/common/e0;->q()Z

    .line 168
    .line 169
    .line 170
    move-result v7

    .line 171
    if-eqz v7, :cond_5

    .line 172
    .line 173
    iput-object v0, v11, Landroidx/media3/exoplayer/r2;->R:Landroidx/media3/exoplayer/r2$h;

    .line 174
    .line 175
    goto :goto_5

    .line 176
    :catchall_0
    move-exception v0

    .line 177
    move-wide v7, v4

    .line 178
    goto/16 :goto_a

    .line 179
    .line 180
    :cond_5
    const/4 v0, 0x4

    .line 181
    if-nez v1, :cond_7

    .line 182
    .line 183
    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 184
    .line 185
    iget v1, v1, Landroidx/media3/exoplayer/r3;->e:I

    .line 186
    .line 187
    if-eq v1, v8, :cond_6

    .line 188
    .line 189
    invoke-direct {v11, v0}, Landroidx/media3/exoplayer/r2;->w1(I)V

    .line 190
    .line 191
    .line 192
    :cond_6
    invoke-direct {v11, v6, v8, v6, v8}, Landroidx/media3/exoplayer/r2;->K0(ZZZZ)V

    .line 193
    .line 194
    .line 195
    :goto_5
    move-wide v7, v4

    .line 196
    goto/16 :goto_9

    .line 197
    .line 198
    :cond_7
    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 199
    .line 200
    iget-object v1, v1, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    .line 201
    .line 202
    invoke-virtual {v9, v1}, Landroidx/media3/exoplayer/source/r$b;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-eqz v1, :cond_a

    .line 207
    .line 208
    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 209
    .line 210
    invoke-virtual {v1}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    if-eqz v1, :cond_8

    .line 215
    .line 216
    iget-boolean v7, v1, Landroidx/media3/exoplayer/y2;->f:Z

    .line 217
    .line 218
    if-eqz v7, :cond_8

    .line 219
    .line 220
    cmp-long v2, v4, v2

    .line 221
    .line 222
    if-eqz v2, :cond_8

    .line 223
    .line 224
    iget-object v1, v1, Landroidx/media3/exoplayer/y2;->a:Landroidx/media3/exoplayer/source/q;

    .line 225
    .line 226
    iget-object v2, v11, Landroidx/media3/exoplayer/r2;->C:Landroidx/media3/exoplayer/c4;

    .line 227
    .line 228
    invoke-interface {v1, v4, v5, v2}, Landroidx/media3/exoplayer/source/q;->b(JLandroidx/media3/exoplayer/c4;)J

    .line 229
    .line 230
    .line 231
    move-result-wide v1

    .line 232
    goto :goto_6

    .line 233
    :cond_8
    move-wide v1, v4

    .line 234
    :goto_6
    invoke-static {v1, v2}, Landroidx/media3/common/util/a1;->y1(J)J

    .line 235
    .line 236
    .line 237
    move-result-wide v14

    .line 238
    iget-object v3, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 239
    .line 240
    iget-wide v6, v3, Landroidx/media3/exoplayer/r3;->s:J

    .line 241
    .line 242
    invoke-static {v6, v7}, Landroidx/media3/common/util/a1;->y1(J)J

    .line 243
    .line 244
    .line 245
    move-result-wide v6

    .line 246
    cmp-long v3, v14, v6

    .line 247
    .line 248
    if-nez v3, :cond_b

    .line 249
    .line 250
    iget-object v3, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 251
    .line 252
    iget v6, v3, Landroidx/media3/exoplayer/r3;->e:I

    .line 253
    .line 254
    const/4 v7, 0x2

    .line 255
    if-eq v6, v7, :cond_9

    .line 256
    .line 257
    const/4 v7, 0x3

    .line 258
    if-ne v6, v7, :cond_b

    .line 259
    .line 260
    :cond_9
    iget-wide v7, v3, Landroidx/media3/exoplayer/r3;->s:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    .line 262
    const/4 v0, 0x2

    .line 263
    move-object/from16 v1, p0

    .line 264
    .line 265
    move-object v2, v9

    .line 266
    move-wide v3, v7

    .line 267
    move-wide v5, v12

    .line 268
    move v9, v10

    .line 269
    move v10, v0

    .line 270
    invoke-direct/range {v1 .. v10}, Landroidx/media3/exoplayer/r2;->X(Landroidx/media3/exoplayer/source/r$b;JJJZI)Landroidx/media3/exoplayer/r3;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    iput-object v0, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 275
    .line 276
    return-void

    .line 277
    :cond_a
    move-wide v1, v4

    .line 278
    :cond_b
    :try_start_1
    iget-object v3, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 279
    .line 280
    iget v3, v3, Landroidx/media3/exoplayer/r3;->e:I

    .line 281
    .line 282
    if-ne v3, v0, :cond_c

    .line 283
    .line 284
    move v0, v8

    .line 285
    goto :goto_7

    .line 286
    :cond_c
    const/4 v0, 0x0

    .line 287
    :goto_7
    invoke-direct {v11, v9, v1, v2, v0}, Landroidx/media3/exoplayer/r2;->X0(Landroidx/media3/exoplayer/source/r$b;JZ)J

    .line 288
    .line 289
    .line 290
    move-result-wide v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    cmp-long v0, v4, v14

    .line 292
    .line 293
    if-eqz v0, :cond_d

    .line 294
    .line 295
    goto :goto_8

    .line 296
    :cond_d
    const/4 v8, 0x0

    .line 297
    :goto_8
    or-int/2addr v10, v8

    .line 298
    :try_start_2
    iget-object v0, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 299
    .line 300
    iget-object v4, v0, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    .line 301
    .line 302
    iget-object v5, v0, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    .line 303
    .line 304
    const/4 v8, 0x1

    .line 305
    move-object/from16 v1, p0

    .line 306
    .line 307
    move-object v2, v4

    .line 308
    move-object v3, v9

    .line 309
    move-wide v6, v12

    .line 310
    invoke-direct/range {v1 .. v8}, Landroidx/media3/exoplayer/r2;->U1(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;JZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 311
    .line 312
    .line 313
    move-wide v7, v14

    .line 314
    :goto_9
    const/4 v0, 0x2

    .line 315
    move-object/from16 v1, p0

    .line 316
    .line 317
    move-object v2, v9

    .line 318
    move-wide v3, v7

    .line 319
    move-wide v5, v12

    .line 320
    move v9, v10

    .line 321
    move v10, v0

    .line 322
    invoke-direct/range {v1 .. v10}, Landroidx/media3/exoplayer/r2;->X(Landroidx/media3/exoplayer/source/r$b;JJJZI)Landroidx/media3/exoplayer/r3;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    iput-object v0, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 327
    .line 328
    return-void

    .line 329
    :catchall_1
    move-exception v0

    .line 330
    move-wide v7, v14

    .line 331
    :goto_a
    const/4 v14, 0x2

    .line 332
    move-object/from16 v1, p0

    .line 333
    .line 334
    move-object v2, v9

    .line 335
    move-wide v3, v7

    .line 336
    move-wide v5, v12

    .line 337
    move v9, v10

    .line 338
    move v10, v14

    .line 339
    invoke-direct/range {v1 .. v10}, Landroidx/media3/exoplayer/r2;->X(Landroidx/media3/exoplayer/source/r$b;JJJZI)Landroidx/media3/exoplayer/r3;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    iput-object v1, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 344
    .line 345
    throw v0
.end method

.method private W1(ZZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/exoplayer/r2;->I:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->q:Landroidx/media3/common/util/i;

    .line 8
    .line 9
    invoke-interface {p1}, Landroidx/media3/common/util/i;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    :goto_0
    iput-wide p1, p0, Landroidx/media3/exoplayer/r2;->J:J

    .line 20
    .line 21
    return-void
.end method

.method private X(Landroidx/media3/exoplayer/source/r$b;JJJZI)Landroidx/media3/exoplayer/r3;
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object v2, p1

    .line 3
    move-wide/from16 v5, p4

    .line 4
    .line 5
    iget-boolean v1, v0, Landroidx/media3/exoplayer/r2;->V:Z

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    iget-object v1, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 10
    .line 11
    iget-wide v3, v1, Landroidx/media3/exoplayer/r3;->s:J

    .line 12
    .line 13
    cmp-long v1, p2, v3

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    iget-object v1, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 18
    .line 19
    iget-object v1, v1, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/source/r$b;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 31
    :goto_1
    iput-boolean v1, v0, Landroidx/media3/exoplayer/r2;->V:Z

    .line 32
    .line 33
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->L0()V

    .line 34
    .line 35
    .line 36
    iget-object v1, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 37
    .line 38
    iget-object v3, v1, Landroidx/media3/exoplayer/r3;->h:Lf2/z;

    .line 39
    .line 40
    iget-object v4, v1, Landroidx/media3/exoplayer/r3;->i:Li2/f0;

    .line 41
    .line 42
    iget-object v1, v1, Landroidx/media3/exoplayer/r3;->j:Ljava/util/List;

    .line 43
    .line 44
    iget-object v7, v0, Landroidx/media3/exoplayer/r2;->t:Landroidx/media3/exoplayer/q3;

    .line 45
    .line 46
    invoke-virtual {v7}, Landroidx/media3/exoplayer/q3;->t()Z

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    if-eqz v7, :cond_5

    .line 51
    .line 52
    iget-object v1, v0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 53
    .line 54
    invoke-virtual {v1}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-nez v1, :cond_2

    .line 59
    .line 60
    sget-object v3, Lf2/z;->d:Lf2/z;

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    invoke-virtual {v1}, Landroidx/media3/exoplayer/y2;->o()Lf2/z;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    :goto_2
    if-nez v1, :cond_3

    .line 68
    .line 69
    iget-object v4, v0, Landroidx/media3/exoplayer/r2;->e:Li2/f0;

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_3
    invoke-virtual {v1}, Landroidx/media3/exoplayer/y2;->p()Li2/f0;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    :goto_3
    iget-object v7, v4, Li2/f0;->c:[Li2/z;

    .line 77
    .line 78
    invoke-direct {p0, v7}, Landroidx/media3/exoplayer/r2;->F([Li2/z;)Lcom/google/common/collect/ImmutableList;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    if-eqz v1, :cond_4

    .line 83
    .line 84
    iget-object v8, v1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 85
    .line 86
    iget-wide v9, v8, Landroidx/media3/exoplayer/z2;->c:J

    .line 87
    .line 88
    cmp-long v9, v9, v5

    .line 89
    .line 90
    if-eqz v9, :cond_4

    .line 91
    .line 92
    invoke-virtual {v8, v5, v6}, Landroidx/media3/exoplayer/z2;->a(J)Landroidx/media3/exoplayer/z2;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    iput-object v8, v1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 97
    .line 98
    :cond_4
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->p0()V

    .line 99
    .line 100
    .line 101
    move-object v11, v3

    .line 102
    move-object v12, v4

    .line 103
    move-object v13, v7

    .line 104
    goto :goto_4

    .line 105
    :cond_5
    iget-object v7, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 106
    .line 107
    iget-object v7, v7, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    .line 108
    .line 109
    invoke-virtual {p1, v7}, Landroidx/media3/exoplayer/source/r$b;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v7

    .line 113
    if-nez v7, :cond_6

    .line 114
    .line 115
    sget-object v1, Lf2/z;->d:Lf2/z;

    .line 116
    .line 117
    iget-object v3, v0, Landroidx/media3/exoplayer/r2;->e:Li2/f0;

    .line 118
    .line 119
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    move-object v11, v1

    .line 124
    move-object v12, v3

    .line 125
    move-object v13, v4

    .line 126
    goto :goto_4

    .line 127
    :cond_6
    move-object v13, v1

    .line 128
    move-object v11, v3

    .line 129
    move-object v12, v4

    .line 130
    :goto_4
    if-eqz p8, :cond_7

    .line 131
    .line 132
    iget-object v1, v0, Landroidx/media3/exoplayer/r2;->E:Landroidx/media3/exoplayer/r2$e;

    .line 133
    .line 134
    move/from16 v3, p9

    .line 135
    .line 136
    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/r2$e;->d(I)V

    .line 137
    .line 138
    .line 139
    :cond_7
    iget-object v1, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 140
    .line 141
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->L()J

    .line 142
    .line 143
    .line 144
    move-result-wide v9

    .line 145
    move-object v2, p1

    .line 146
    move-wide/from16 v3, p2

    .line 147
    .line 148
    move-wide/from16 v5, p4

    .line 149
    .line 150
    move-wide/from16 v7, p6

    .line 151
    .line 152
    invoke-virtual/range {v1 .. v13}, Landroidx/media3/exoplayer/r3;->d(Landroidx/media3/exoplayer/source/r$b;JJJJLf2/z;Li2/f0;Ljava/util/List;)Landroidx/media3/exoplayer/r3;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    return-object v1
.end method

.method private X0(Landroidx/media3/exoplayer/source/r$b;JZ)J
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/media3/exoplayer/b3;->y()Landroidx/media3/exoplayer/y2;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    :goto_0
    move v5, v0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_0

    .line 20
    :goto_1
    move-object v1, p0

    .line 21
    move-object v2, p1

    .line 22
    move-wide v3, p2

    .line 23
    move v6, p4

    .line 24
    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/r2;->Y0(Landroidx/media3/exoplayer/source/r$b;JZZ)J

    .line 25
    .line 26
    .line 27
    move-result-wide p1

    .line 28
    return-wide p1
.end method

.method private X1()Z
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->y()Landroidx/media3/exoplayer/y2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->p()Li2/f0;

    .line 8
    .line 9
    .line 10
    move-result-object v7

    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    move v8, v1

    .line 14
    move v3, v2

    .line 15
    :goto_0
    iget-object v4, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 16
    .line 17
    array-length v5, v4

    .line 18
    if-ge v3, v5, :cond_2

    .line 19
    .line 20
    aget-object v4, v4, v3

    .line 21
    .line 22
    invoke-virtual {v4}, Landroidx/media3/exoplayer/a4;->h()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    iget-object v5, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 27
    .line 28
    aget-object v5, v5, v3

    .line 29
    .line 30
    iget-object v6, p0, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    .line 31
    .line 32
    invoke-virtual {v5, v0, v7, v6}, Landroidx/media3/exoplayer/a4;->J(Landroidx/media3/exoplayer/y2;Li2/f0;Landroidx/media3/exoplayer/n;)I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    and-int/lit8 v6, v5, 0x2

    .line 37
    .line 38
    if-eqz v6, :cond_0

    .line 39
    .line 40
    iget-boolean v6, p0, Landroidx/media3/exoplayer/r2;->P:Z

    .line 41
    .line 42
    if-eqz v6, :cond_0

    .line 43
    .line 44
    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/r2;->j1(Z)V

    .line 45
    .line 46
    .line 47
    :cond_0
    iget v6, p0, Landroidx/media3/exoplayer/r2;->Q:I

    .line 48
    .line 49
    iget-object v9, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 50
    .line 51
    aget-object v9, v9, v3

    .line 52
    .line 53
    invoke-virtual {v9}, Landroidx/media3/exoplayer/a4;->h()I

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    sub-int/2addr v4, v9

    .line 58
    sub-int/2addr v6, v4

    .line 59
    iput v6, p0, Landroidx/media3/exoplayer/r2;->Q:I

    .line 60
    .line 61
    and-int/lit8 v4, v5, 0x1

    .line 62
    .line 63
    if-eqz v4, :cond_1

    .line 64
    .line 65
    move v4, v1

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    move v4, v2

    .line 68
    :goto_1
    and-int/2addr v8, v4

    .line 69
    add-int/lit8 v3, v3, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    if-eqz v8, :cond_4

    .line 73
    .line 74
    move v9, v2

    .line 75
    :goto_2
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 76
    .line 77
    array-length v1, v1

    .line 78
    if-ge v9, v1, :cond_4

    .line 79
    .line 80
    invoke-virtual {v7, v9}, Li2/f0;->c(I)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_3

    .line 85
    .line 86
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 87
    .line 88
    aget-object v1, v1, v9

    .line 89
    .line 90
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/a4;->w(Landroidx/media3/exoplayer/y2;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_3

    .line 95
    .line 96
    const/4 v4, 0x0

    .line 97
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->n()J

    .line 98
    .line 99
    .line 100
    move-result-wide v5

    .line 101
    move-object v1, p0

    .line 102
    move-object v2, v0

    .line 103
    move v3, v9

    .line 104
    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/r2;->B(Landroidx/media3/exoplayer/y2;IZJ)V

    .line 105
    .line 106
    .line 107
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_4
    return v8
.end method

.method private Y()Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->y()Landroidx/media3/exoplayer/y2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, v0, Landroidx/media3/exoplayer/y2;->f:Z

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    move v1, v2

    .line 14
    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 15
    .line 16
    array-length v4, v3

    .line 17
    if-ge v1, v4, :cond_2

    .line 18
    .line 19
    aget-object v3, v3, v1

    .line 20
    .line 21
    invoke-virtual {v3, v0}, Landroidx/media3/exoplayer/a4;->o(Landroidx/media3/exoplayer/y2;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_1

    .line 26
    .line 27
    return v2

    .line 28
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const/4 v0, 0x1

    .line 32
    return v0
.end method

.method private Y0(Landroidx/media3/exoplayer/source/r$b;JZZ)J
    .locals 6

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->J1()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/r2;->W1(ZZ)V

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    if-nez p5, :cond_0

    .line 11
    .line 12
    iget-object p5, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 13
    .line 14
    iget p5, p5, Landroidx/media3/exoplayer/r3;->e:I

    .line 15
    .line 16
    const/4 v3, 0x3

    .line 17
    if-ne p5, v3, :cond_1

    .line 18
    .line 19
    :cond_0
    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/r2;->w1(I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object p5, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 23
    .line 24
    invoke-virtual {p5}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    .line 25
    .line 26
    .line 27
    move-result-object p5

    .line 28
    move-object v3, p5

    .line 29
    :goto_0
    if-eqz v3, :cond_3

    .line 30
    .line 31
    iget-object v4, v3, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 32
    .line 33
    iget-object v4, v4, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    .line 34
    .line 35
    invoke-virtual {p1, v4}, Landroidx/media3/exoplayer/source/r$b;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_2

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    invoke-virtual {v3}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    goto :goto_0

    .line 47
    :cond_3
    :goto_1
    if-nez p4, :cond_4

    .line 48
    .line 49
    if-ne p5, v3, :cond_4

    .line 50
    .line 51
    if-eqz v3, :cond_6

    .line 52
    .line 53
    invoke-virtual {v3, p2, p3}, Landroidx/media3/exoplayer/y2;->D(J)J

    .line 54
    .line 55
    .line 56
    move-result-wide p4

    .line 57
    const-wide/16 v4, 0x0

    .line 58
    .line 59
    cmp-long p1, p4, v4

    .line 60
    .line 61
    if-gez p1, :cond_6

    .line 62
    .line 63
    :cond_4
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->z()V

    .line 64
    .line 65
    .line 66
    if-eqz v3, :cond_6

    .line 67
    .line 68
    :goto_2
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 69
    .line 70
    invoke-virtual {p1}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-eq p1, v3, :cond_5

    .line 75
    .line 76
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 77
    .line 78
    invoke-virtual {p1}, Landroidx/media3/exoplayer/b3;->b()Landroidx/media3/exoplayer/y2;

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_5
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 83
    .line 84
    invoke-virtual {p1, v3}, Landroidx/media3/exoplayer/b3;->O(Landroidx/media3/exoplayer/y2;)I

    .line 85
    .line 86
    .line 87
    const-wide p4, 0xe8d4a51000L

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, p4, p5}, Landroidx/media3/exoplayer/y2;->B(J)V

    .line 93
    .line 94
    .line 95
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->C()V

    .line 96
    .line 97
    .line 98
    iput-boolean v1, v3, Landroidx/media3/exoplayer/y2;->i:Z

    .line 99
    .line 100
    :cond_6
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->x()V

    .line 101
    .line 102
    .line 103
    if-eqz v3, :cond_9

    .line 104
    .line 105
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 106
    .line 107
    invoke-virtual {p1, v3}, Landroidx/media3/exoplayer/b3;->O(Landroidx/media3/exoplayer/y2;)I

    .line 108
    .line 109
    .line 110
    iget-boolean p1, v3, Landroidx/media3/exoplayer/y2;->f:Z

    .line 111
    .line 112
    if-nez p1, :cond_7

    .line 113
    .line 114
    iget-object p1, v3, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 115
    .line 116
    invoke-virtual {p1, p2, p3}, Landroidx/media3/exoplayer/z2;->b(J)Landroidx/media3/exoplayer/z2;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iput-object p1, v3, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_7
    iget-boolean p1, v3, Landroidx/media3/exoplayer/y2;->g:Z

    .line 124
    .line 125
    if-eqz p1, :cond_8

    .line 126
    .line 127
    iget-object p1, v3, Landroidx/media3/exoplayer/y2;->a:Landroidx/media3/exoplayer/source/q;

    .line 128
    .line 129
    invoke-interface {p1, p2, p3}, Landroidx/media3/exoplayer/source/q;->seekToUs(J)J

    .line 130
    .line 131
    .line 132
    move-result-wide p2

    .line 133
    iget-object p1, v3, Landroidx/media3/exoplayer/y2;->a:Landroidx/media3/exoplayer/source/q;

    .line 134
    .line 135
    iget-wide p4, p0, Landroidx/media3/exoplayer/r2;->m:J

    .line 136
    .line 137
    sub-long p4, p2, p4

    .line 138
    .line 139
    iget-boolean v1, p0, Landroidx/media3/exoplayer/r2;->n:Z

    .line 140
    .line 141
    invoke-interface {p1, p4, p5, v1}, Landroidx/media3/exoplayer/source/q;->discardBuffer(JZ)V

    .line 142
    .line 143
    .line 144
    :cond_8
    :goto_3
    invoke-direct {p0, p2, p3}, Landroidx/media3/exoplayer/r2;->M0(J)V

    .line 145
    .line 146
    .line 147
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->g0()V

    .line 148
    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_9
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 152
    .line 153
    invoke-virtual {p1}, Landroidx/media3/exoplayer/b3;->g()V

    .line 154
    .line 155
    .line 156
    invoke-direct {p0, p2, p3}, Landroidx/media3/exoplayer/r2;->M0(J)V

    .line 157
    .line 158
    .line 159
    :goto_4
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/r2;->R(Z)V

    .line 160
    .line 161
    .line 162
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    .line 163
    .line 164
    invoke-interface {p1, v2}, Landroidx/media3/common/util/p;->sendEmptyMessage(I)Z

    .line 165
    .line 166
    .line 167
    return-wide p2
.end method

.method private Y1(F)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->p()Li2/f0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v1, v1, Li2/f0;->c:[Li2/z;

    .line 14
    .line 15
    array-length v2, v1

    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_1
    if-ge v3, v2, :cond_1

    .line 18
    .line 19
    aget-object v4, v1, v3

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    invoke-interface {v4, p1}, Li2/z;->onPlaybackSpeed(F)V

    .line 24
    .line 25
    .line 26
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return-void
.end method

.method private static Z(ZLandroidx/media3/exoplayer/source/r$b;JLandroidx/media3/exoplayer/source/r$b;Landroidx/media3/common/e0$b;J)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_3

    .line 3
    .line 4
    cmp-long p0, p2, p6

    .line 5
    .line 6
    if-nez p0, :cond_3

    .line 7
    .line 8
    iget-object p0, p1, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object p2, p4, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    const/4 p2, 0x1

    .line 24
    if-eqz p0, :cond_2

    .line 25
    .line 26
    iget p0, p1, Landroidx/media3/exoplayer/source/r$b;->b:I

    .line 27
    .line 28
    invoke-virtual {p5, p0}, Landroidx/media3/common/e0$b;->s(I)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_2

    .line 33
    .line 34
    iget p0, p1, Landroidx/media3/exoplayer/source/r$b;->b:I

    .line 35
    .line 36
    iget p3, p1, Landroidx/media3/exoplayer/source/r$b;->c:I

    .line 37
    .line 38
    invoke-virtual {p5, p0, p3}, Landroidx/media3/common/e0$b;->h(II)I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    const/4 p3, 0x4

    .line 43
    if-eq p0, p3, :cond_1

    .line 44
    .line 45
    iget p0, p1, Landroidx/media3/exoplayer/source/r$b;->b:I

    .line 46
    .line 47
    iget p1, p1, Landroidx/media3/exoplayer/source/r$b;->c:I

    .line 48
    .line 49
    invoke-virtual {p5, p0, p1}, Landroidx/media3/common/e0$b;->h(II)I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    const/4 p1, 0x2

    .line 54
    if-eq p0, p1, :cond_1

    .line 55
    .line 56
    move v0, p2

    .line 57
    :cond_1
    return v0

    .line 58
    :cond_2
    invoke-virtual {p4}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-eqz p0, :cond_3

    .line 63
    .line 64
    iget p0, p4, Landroidx/media3/exoplayer/source/r$b;->b:I

    .line 65
    .line 66
    invoke-virtual {p5, p0}, Landroidx/media3/common/e0$b;->s(I)Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    if-eqz p0, :cond_3

    .line 71
    .line 72
    move v0, p2

    .line 73
    :cond_3
    :goto_0
    return v0
.end method

.method private Z0(Landroidx/media3/exoplayer/t3;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroidx/media3/exoplayer/t3;->e()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/r2;->a1(Landroidx/media3/exoplayer/t3;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 19
    .line 20
    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/media3/common/e0;->q()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->p:Ljava/util/ArrayList;

    .line 29
    .line 30
    new-instance v1, Landroidx/media3/exoplayer/r2$d;

    .line 31
    .line 32
    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/r2$d;-><init>(Landroidx/media3/exoplayer/t3;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    new-instance v0, Landroidx/media3/exoplayer/r2$d;

    .line 40
    .line 41
    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/r2$d;-><init>(Landroidx/media3/exoplayer/t3;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 45
    .line 46
    iget-object v4, v1, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    .line 47
    .line 48
    iget v5, p0, Landroidx/media3/exoplayer/r2;->L:I

    .line 49
    .line 50
    iget-boolean v6, p0, Landroidx/media3/exoplayer/r2;->M:Z

    .line 51
    .line 52
    iget-object v7, p0, Landroidx/media3/exoplayer/r2;->k:Landroidx/media3/common/e0$c;

    .line 53
    .line 54
    iget-object v8, p0, Landroidx/media3/exoplayer/r2;->l:Landroidx/media3/common/e0$b;

    .line 55
    .line 56
    move-object v2, v0

    .line 57
    move-object v3, v4

    .line 58
    invoke-static/range {v2 .. v8}, Landroidx/media3/exoplayer/r2;->O0(Landroidx/media3/exoplayer/r2$d;Landroidx/media3/common/e0;Landroidx/media3/common/e0;IZLandroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->p:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->p:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    const/4 v0, 0x0

    .line 76
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/t3;->j(Z)V

    .line 77
    .line 78
    .line 79
    :goto_0
    return-void
.end method

.method private declared-synchronized Z1(Lcom/google/common/base/q;J)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->q:Landroidx/media3/common/util/i;

    .line 3
    .line 4
    invoke-interface {v0}, Landroidx/media3/common/util/i;->elapsedRealtime()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    add-long/2addr v0, p2

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    invoke-interface {p1}, Lcom/google/common/base/q;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    check-cast v3, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    const-wide/16 v3, 0x0

    .line 23
    .line 24
    cmp-long v3, p2, v3

    .line 25
    .line 26
    if-lez v3, :cond_0

    .line 27
    .line 28
    :try_start_1
    iget-object v3, p0, Landroidx/media3/exoplayer/r2;->q:Landroidx/media3/common/util/i;

    .line 29
    .line 30
    invoke-interface {v3}, Landroidx/media3/common/util/i;->a()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto :goto_2

    .line 39
    :catch_0
    const/4 p2, 0x1

    .line 40
    move v2, p2

    .line 41
    :goto_1
    :try_start_2
    iget-object p2, p0, Landroidx/media3/exoplayer/r2;->q:Landroidx/media3/common/util/i;

    .line 42
    .line 43
    invoke-interface {p2}, Landroidx/media3/common/util/i;->elapsedRealtime()J

    .line 44
    .line 45
    .line 46
    move-result-wide p2

    .line 47
    sub-long p2, v0, p2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    if-eqz v2, :cond_1

    .line 51
    .line 52
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    .line 58
    .line 59
    :cond_1
    monitor-exit p0

    .line 60
    return-void

    .line 61
    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    throw p1
.end method

.method private a0(Landroidx/media3/exoplayer/y2;)Z
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/media3/exoplayer/y2;->r()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/media3/exoplayer/y2;->l()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    const-wide/high16 v2, -0x8000000000000000L

    .line 14
    .line 15
    cmp-long p1, v0, v2

    .line 16
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

.method private a1(Landroidx/media3/exoplayer/t3;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/media3/exoplayer/t3;->b()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->j:Landroid/os/Looper;

    .line 6
    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/r2;->w(Landroidx/media3/exoplayer/t3;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 13
    .line 14
    iget p1, p1, Landroidx/media3/exoplayer/r3;->e:I

    .line 15
    .line 16
    const/4 v0, 0x3

    .line 17
    const/4 v1, 0x2

    .line 18
    if-eq p1, v0, :cond_0

    .line 19
    .line 20
    if-ne p1, v1, :cond_2

    .line 21
    .line 22
    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    .line 23
    .line 24
    invoke-interface {p1, v1}, Landroidx/media3/common/util/p;->sendEmptyMessage(I)Z

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    .line 29
    .line 30
    const/16 v1, 0xf

    .line 31
    .line 32
    invoke-interface {v0, v1, p1}, Landroidx/media3/common/util/p;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/p$a;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-interface {p1}, Landroidx/media3/common/util/p$a;->a()V

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_0
    return-void
.end method

.method private b0()Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 8
    .line 9
    iget-wide v1, v1, Landroidx/media3/exoplayer/z2;->e:J

    .line 10
    .line 11
    iget-boolean v0, v0, Landroidx/media3/exoplayer/y2;->f:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    cmp-long v0, v1, v3

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 25
    .line 26
    iget-wide v3, v0, Landroidx/media3/exoplayer/r3;->s:J

    .line 27
    .line 28
    cmp-long v0, v3, v1

    .line 29
    .line 30
    if-ltz v0, :cond_0

    .line 31
    .line 32
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->D1()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    :cond_0
    const/4 v0, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, 0x0

    .line 41
    :goto_0
    return v0
.end method

.method private b1(Landroidx/media3/exoplayer/t3;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroidx/media3/exoplayer/t3;->b()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string v0, "TAG"

    .line 16
    .line 17
    const-string v1, "Trying to send message on a dead thread."

    .line 18
    .line 19
    invoke-static {v0, v1}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/t3;->j(Z)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->q:Landroidx/media3/common/util/i;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-interface {v1, v0, v2}, Landroidx/media3/common/util/i;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/p;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Landroidx/media3/exoplayer/q2;

    .line 35
    .line 36
    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/q2;-><init>(Landroidx/media3/exoplayer/r2;Landroidx/media3/exoplayer/t3;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, v1}, Landroidx/media3/common/util/p;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private static c0(Landroidx/media3/exoplayer/r3;Landroidx/media3/common/e0$b;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/media3/common/e0;->q()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    iget-object v0, v0, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-virtual {p0, v0, p1}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    iget-boolean p0, p0, Landroidx/media3/common/e0$b;->f:Z

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 25
    :goto_1
    return p0
.end method

.method private c1(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

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
    invoke-virtual {v3, p1, p2}, Landroidx/media3/exoplayer/a4;->N(J)V

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

.method private synthetic d0(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->y:Lx1/a;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 4
    .line 5
    aget-object v1, v1, p1

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/media3/exoplayer/a4;->m()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-interface {v0, p1, v1, p2}, Lx1/a;->D(IIZ)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static synthetic e(Landroidx/media3/exoplayer/r2;Landroidx/media3/exoplayer/z2;J)Landroidx/media3/exoplayer/y2;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/r2;->v(Landroidx/media3/exoplayer/z2;J)Landroidx/media3/exoplayer/y2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private synthetic e0()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/r2;->F:Z

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private e1(Landroidx/media3/common/c;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->d:Li2/e0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Li2/e0;->l(Landroidx/media3/common/c;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->B:Landroidx/media3/exoplayer/h;

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/h;->l(Landroidx/media3/common/c;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->Q1()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static synthetic f(Landroidx/media3/exoplayer/r2;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/r2;->d0(IZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic f0(Landroidx/media3/exoplayer/t3;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/r2;->w(Landroidx/media3/exoplayer/t3;)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catch_0
    move-exception p1

    .line 6
    const-string v0, "ExoPlayerImplInternal"

    .line 7
    .line 8
    const-string v1, "Unexpected error delivering message on external thread."

    .line 9
    .line 10
    invoke-static {v0, v1, p1}, Landroidx/media3/common/util/u;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Ljava/lang/RuntimeException;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method private f1(ZLjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/r2;->N:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Landroidx/media3/exoplayer/r2;->N:Z

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 10
    .line 11
    array-length v0, p1

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_0

    .line 14
    .line 15
    aget-object v2, p1, v1

    .line 16
    .line 17
    invoke-virtual {v2}, Landroidx/media3/exoplayer/a4;->L()V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    if-eqz p2, :cond_1

    .line 24
    .line 25
    monitor-enter p0

    .line 26
    const/4 p1, 0x1

    .line 27
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 31
    .line 32
    .line 33
    monitor-exit p0

    .line 34
    goto :goto_1

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p1

    .line 38
    :cond_1
    :goto_1
    return-void
.end method

.method private g0()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->C1()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput-boolean v0, p0, Landroidx/media3/exoplayer/r2;->K:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->n()Landroidx/media3/exoplayer/y2;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroidx/media3/exoplayer/y2;

    .line 20
    .line 21
    new-instance v1, Landroidx/media3/exoplayer/v2$b;

    .line 22
    .line 23
    invoke-direct {v1}, Landroidx/media3/exoplayer/v2$b;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-wide v2, p0, Landroidx/media3/exoplayer/r2;->S:J

    .line 27
    .line 28
    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/y2;->C(J)J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/v2$b;->f(J)Landroidx/media3/exoplayer/v2$b;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    .line 37
    .line 38
    invoke-virtual {v2}, Landroidx/media3/exoplayer/n;->getPlaybackParameters()Landroidx/media3/common/z;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iget v2, v2, Landroidx/media3/common/z;->a:F

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/v2$b;->g(F)Landroidx/media3/exoplayer/v2$b;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-wide v2, p0, Landroidx/media3/exoplayer/r2;->J:J

    .line 49
    .line 50
    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/v2$b;->e(J)Landroidx/media3/exoplayer/v2$b;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1}, Landroidx/media3/exoplayer/v2$b;->d()Landroidx/media3/exoplayer/v2;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/y2;->e(Landroidx/media3/exoplayer/v2;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->K1()V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method private g1(Landroidx/media3/common/z;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    invoke-interface {v0, v1}, Landroidx/media3/common/util/p;->removeMessages(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/n;->b(Landroidx/media3/common/z;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private h0()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->J()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->w()Landroidx/media3/exoplayer/y2;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_4

    .line 13
    .line 14
    iget-boolean v1, v0, Landroidx/media3/exoplayer/y2;->e:Z

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-boolean v1, v0, Landroidx/media3/exoplayer/y2;->f:Z

    .line 19
    .line 20
    if-eqz v1, :cond_4

    .line 21
    .line 22
    :cond_0
    iget-object v1, v0, Landroidx/media3/exoplayer/y2;->a:Landroidx/media3/exoplayer/source/q;

    .line 23
    .line 24
    invoke-interface {v1}, Landroidx/media3/exoplayer/source/q;->isLoading()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_4

    .line 29
    .line 30
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->f:Landroidx/media3/exoplayer/u2;

    .line 31
    .line 32
    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 33
    .line 34
    iget-object v2, v2, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    .line 35
    .line 36
    iget-object v3, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 37
    .line 38
    iget-object v3, v3, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    .line 39
    .line 40
    iget-boolean v4, v0, Landroidx/media3/exoplayer/y2;->f:Z

    .line 41
    .line 42
    if-eqz v4, :cond_1

    .line 43
    .line 44
    iget-object v4, v0, Landroidx/media3/exoplayer/y2;->a:Landroidx/media3/exoplayer/source/q;

    .line 45
    .line 46
    invoke-interface {v4}, Landroidx/media3/exoplayer/source/q;->getBufferedPositionUs()J

    .line 47
    .line 48
    .line 49
    move-result-wide v4

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const-wide/16 v4, 0x0

    .line 52
    .line 53
    :goto_0
    invoke-interface {v1, v2, v3, v4, v5}, Landroidx/media3/exoplayer/u2;->e(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;J)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_2

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    iget-boolean v1, v0, Landroidx/media3/exoplayer/y2;->e:Z

    .line 61
    .line 62
    if-nez v1, :cond_3

    .line 63
    .line 64
    iget-object v1, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 65
    .line 66
    iget-wide v1, v1, Landroidx/media3/exoplayer/z2;->b:J

    .line 67
    .line 68
    invoke-virtual {v0, p0, v1, v2}, Landroidx/media3/exoplayer/y2;->v(Landroidx/media3/exoplayer/source/q$a;J)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    new-instance v1, Landroidx/media3/exoplayer/v2$b;

    .line 73
    .line 74
    invoke-direct {v1}, Landroidx/media3/exoplayer/v2$b;-><init>()V

    .line 75
    .line 76
    .line 77
    iget-wide v2, p0, Landroidx/media3/exoplayer/r2;->S:J

    .line 78
    .line 79
    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/y2;->C(J)J

    .line 80
    .line 81
    .line 82
    move-result-wide v2

    .line 83
    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/v2$b;->f(J)Landroidx/media3/exoplayer/v2$b;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    .line 88
    .line 89
    invoke-virtual {v2}, Landroidx/media3/exoplayer/n;->getPlaybackParameters()Landroidx/media3/common/z;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    iget v2, v2, Landroidx/media3/common/z;->a:F

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/v2$b;->g(F)Landroidx/media3/exoplayer/v2$b;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    iget-wide v2, p0, Landroidx/media3/exoplayer/r2;->J:J

    .line 100
    .line 101
    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/v2$b;->e(J)Landroidx/media3/exoplayer/v2$b;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v1}, Landroidx/media3/exoplayer/v2$b;->d()Landroidx/media3/exoplayer/v2;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/y2;->e(Landroidx/media3/exoplayer/v2;)V

    .line 110
    .line 111
    .line 112
    :cond_4
    :goto_1
    return-void
.end method

.method private h1(Landroidx/media3/exoplayer/r2$b;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->E:Landroidx/media3/exoplayer/r2$e;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/r2$e;->b(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroidx/media3/exoplayer/r2$b;->a(Landroidx/media3/exoplayer/r2$b;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, -0x1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    new-instance v0, Landroidx/media3/exoplayer/r2$h;

    .line 15
    .line 16
    new-instance v1, Landroidx/media3/exoplayer/u3;

    .line 17
    .line 18
    invoke-static {p1}, Landroidx/media3/exoplayer/r2$b;->b(Landroidx/media3/exoplayer/r2$b;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {p1}, Landroidx/media3/exoplayer/r2$b;->c(Landroidx/media3/exoplayer/r2$b;)Lf2/v;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-direct {v1, v2, v3}, Landroidx/media3/exoplayer/u3;-><init>(Ljava/util/Collection;Lf2/v;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Landroidx/media3/exoplayer/r2$b;->a(Landroidx/media3/exoplayer/r2$b;)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-static {p1}, Landroidx/media3/exoplayer/r2$b;->d(Landroidx/media3/exoplayer/r2$b;)J

    .line 34
    .line 35
    .line 36
    move-result-wide v3

    .line 37
    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/media3/exoplayer/r2$h;-><init>(Landroidx/media3/common/e0;IJ)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Landroidx/media3/exoplayer/r2;->R:Landroidx/media3/exoplayer/r2$h;

    .line 41
    .line 42
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->t:Landroidx/media3/exoplayer/q3;

    .line 43
    .line 44
    invoke-static {p1}, Landroidx/media3/exoplayer/r2$b;->b(Landroidx/media3/exoplayer/r2$b;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {p1}, Landroidx/media3/exoplayer/r2$b;->c(Landroidx/media3/exoplayer/r2$b;)Lf2/v;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v0, v1, p1}, Landroidx/media3/exoplayer/q3;->C(Ljava/util/List;Lf2/v;)Landroidx/media3/common/e0;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/r2;->T(Landroidx/media3/common/e0;Z)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public static synthetic i(Landroidx/media3/exoplayer/r2;Landroidx/media3/exoplayer/t3;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/r2;->f0(Landroidx/media3/exoplayer/t3;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private i0()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

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
    invoke-virtual {v3}, Landroidx/media3/exoplayer/a4;->D()V

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

.method public static synthetic j(Landroidx/media3/exoplayer/r2;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->e0()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private j0()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->E:Landroidx/media3/exoplayer/r2$e;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/r2$e;->c(Landroidx/media3/exoplayer/r3;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->E:Landroidx/media3/exoplayer/r2$e;

    .line 9
    .line 10
    invoke-static {v0}, Landroidx/media3/exoplayer/r2$e;->a(Landroidx/media3/exoplayer/r2$e;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->r:Landroidx/media3/exoplayer/r2$f;

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->E:Landroidx/media3/exoplayer/r2$e;

    .line 19
    .line 20
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/r2$f;->a(Landroidx/media3/exoplayer/r2$e;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Landroidx/media3/exoplayer/r2$e;

    .line 24
    .line 25
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 26
    .line 27
    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/r2$e;-><init>(Landroidx/media3/exoplayer/r3;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Landroidx/media3/exoplayer/r2;->E:Landroidx/media3/exoplayer/r2$e;

    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method private j1(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/r2;->P:Z

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Landroidx/media3/exoplayer/r2;->P:Z

    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 11
    .line 12
    iget-boolean p1, p1, Landroidx/media3/exoplayer/r3;->p:Z

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    invoke-interface {p1, v0}, Landroidx/media3/common/util/p;->sendEmptyMessage(I)Z

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method static synthetic k(Landroidx/media3/exoplayer/r2;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/exoplayer/r2;->O:Z

    .line 2
    .line 3
    return p1
.end method

.method private k0()V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->x()Landroidx/media3/exoplayer/y2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->p()Li2/f0;

    .line 11
    .line 12
    .line 13
    move-result-object v7

    .line 14
    const/4 v8, 0x0

    .line 15
    move v9, v8

    .line 16
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 17
    .line 18
    array-length v1, v1

    .line 19
    if-ge v9, v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {v7, v9}, Li2/f0;->c(I)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 28
    .line 29
    aget-object v1, v1, v9

    .line 30
    .line 31
    invoke-virtual {v1}, Landroidx/media3/exoplayer/a4;->s()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 38
    .line 39
    aget-object v1, v1, v9

    .line 40
    .line 41
    invoke-virtual {v1}, Landroidx/media3/exoplayer/a4;->u()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_1

    .line 46
    .line 47
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 48
    .line 49
    aget-object v1, v1, v9

    .line 50
    .line 51
    invoke-virtual {v1}, Landroidx/media3/exoplayer/a4;->V()V

    .line 52
    .line 53
    .line 54
    const/4 v4, 0x0

    .line 55
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->n()J

    .line 56
    .line 57
    .line 58
    move-result-wide v5

    .line 59
    move-object v1, p0

    .line 60
    move-object v2, v0

    .line 61
    move v3, v9

    .line 62
    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/r2;->B(Landroidx/media3/exoplayer/y2;IZJ)V

    .line 63
    .line 64
    .line 65
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->r()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    iget-object v1, v0, Landroidx/media3/exoplayer/y2;->a:Landroidx/media3/exoplayer/source/q;

    .line 75
    .line 76
    invoke-interface {v1}, Landroidx/media3/exoplayer/source/q;->readDiscontinuity()J

    .line 77
    .line 78
    .line 79
    move-result-wide v1

    .line 80
    iput-wide v1, p0, Landroidx/media3/exoplayer/r2;->b0:J

    .line 81
    .line 82
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->s()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-nez v1, :cond_3

    .line 87
    .line 88
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 89
    .line 90
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/b3;->O(Landroidx/media3/exoplayer/y2;)I

    .line 91
    .line 92
    .line 93
    invoke-direct {p0, v8}, Landroidx/media3/exoplayer/r2;->R(Z)V

    .line 94
    .line 95
    .line 96
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->g0()V

    .line 97
    .line 98
    .line 99
    :cond_3
    return-void
.end method

.method private k1(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Landroidx/media3/exoplayer/r2;->G:Z

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->L0()V

    .line 4
    .line 5
    .line 6
    iget-boolean p1, p0, Landroidx/media3/exoplayer/r2;->H:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/media3/exoplayer/b3;->y()Landroidx/media3/exoplayer/y2;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eq p1, v0, :cond_0

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/r2;->V0(Z)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/r2;->R(Z)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method static synthetic l(Landroidx/media3/exoplayer/r2;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/exoplayer/r2;->x:Z

    .line 2
    .line 3
    return p0
.end method

.method private l0(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 2
    .line 3
    aget-object v0, v0, p1

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroidx/media3/exoplayer/y2;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/a4;->G(Landroidx/media3/exoplayer/y2;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_2

    .line 21
    :catch_0
    move-exception v1

    .line 22
    goto :goto_0

    .line 23
    :catch_1
    move-exception v1

    .line 24
    :goto_0
    invoke-virtual {v0}, Landroidx/media3/exoplayer/a4;->m()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v2, 0x3

    .line 29
    if-eq v0, v2, :cond_1

    .line 30
    .line 31
    const/4 v2, 0x5

    .line 32
    if-ne v0, v2, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    throw v1

    .line 36
    :cond_1
    :goto_1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->p()Li2/f0;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v3, "Disabling track due to error: "

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v3, v0, Li2/f0;->c:[Li2/z;

    .line 57
    .line 58
    aget-object v3, v3, p1

    .line 59
    .line 60
    invoke-interface {v3}, Li2/z;->getSelectedFormat()Landroidx/media3/common/r;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-static {v3}, Landroidx/media3/common/r;->i(Landroidx/media3/common/r;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    const-string v3, "ExoPlayerImplInternal"

    .line 76
    .line 77
    invoke-static {v3, v2, v1}, Landroidx/media3/common/util/u;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    new-instance v1, Li2/f0;

    .line 81
    .line 82
    iget-object v2, v0, Li2/f0;->b:[Landroidx/media3/exoplayer/z3;

    .line 83
    .line 84
    invoke-virtual {v2}, [Landroidx/media3/exoplayer/z3;->clone()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    check-cast v2, [Landroidx/media3/exoplayer/z3;

    .line 89
    .line 90
    iget-object v3, v0, Li2/f0;->c:[Li2/z;

    .line 91
    .line 92
    invoke-virtual {v3}, [Li2/z;->clone()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    check-cast v3, [Li2/z;

    .line 97
    .line 98
    iget-object v4, v0, Li2/f0;->d:Landroidx/media3/common/i0;

    .line 99
    .line 100
    iget-object v0, v0, Li2/f0;->e:Ljava/lang/Object;

    .line 101
    .line 102
    invoke-direct {v1, v2, v3, v4, v0}, Li2/f0;-><init>([Landroidx/media3/exoplayer/z3;[Li2/z;Landroidx/media3/common/i0;Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    iget-object v0, v1, Li2/f0;->b:[Landroidx/media3/exoplayer/z3;

    .line 106
    .line 107
    const/4 v2, 0x0

    .line 108
    aput-object v2, v0, p1

    .line 109
    .line 110
    iget-object v0, v1, Li2/f0;->c:[Li2/z;

    .line 111
    .line 112
    aput-object v2, v0, p1

    .line 113
    .line 114
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/r2;->y(I)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 118
    .line 119
    invoke-virtual {p1}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 124
    .line 125
    iget-wide v2, v0, Landroidx/media3/exoplayer/r3;->s:J

    .line 126
    .line 127
    const/4 v0, 0x0

    .line 128
    invoke-virtual {p1, v1, v2, v3, v0}, Landroidx/media3/exoplayer/y2;->a(Li2/f0;JZ)J

    .line 129
    .line 130
    .line 131
    :goto_2
    return-void
.end method

.method static synthetic m(Landroidx/media3/exoplayer/r2;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/exoplayer/r2;->P:Z

    .line 2
    .line 3
    return p0
.end method

.method private m0(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->c:[Z

    .line 2
    .line 3
    aget-boolean v1, v0, p1

    .line 4
    .line 5
    if-eq v1, p2, :cond_0

    .line 6
    .line 7
    aput-boolean p2, v0, p1

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->z:Landroidx/media3/common/util/p;

    .line 10
    .line 11
    new-instance v1, Landroidx/media3/exoplayer/n2;

    .line 12
    .line 13
    invoke-direct {v1, p0, p1, p2}, Landroidx/media3/exoplayer/n2;-><init>(Landroidx/media3/exoplayer/r2;IZ)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v1}, Landroidx/media3/common/util/p;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private m1(ZIZI)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->E:Landroidx/media3/exoplayer/r2$e;

    .line 2
    .line 3
    invoke-virtual {v0, p3}, Landroidx/media3/exoplayer/r2$e;->b(I)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2, p4}, Landroidx/media3/exoplayer/r2;->R1(ZII)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method static synthetic n(Landroidx/media3/exoplayer/r2;)Landroidx/media3/common/util/p;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    .line 2
    .line 3
    return-object p0
.end method

.method private n0(JJ)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->p:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_f

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 10
    .line 11
    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto/16 :goto_6

    .line 20
    .line 21
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/r2;->V:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const-wide/16 v0, 0x1

    .line 26
    .line 27
    sub-long/2addr p1, v0

    .line 28
    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Landroidx/media3/exoplayer/r2;->V:Z

    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 32
    .line 33
    iget-object v1, v0, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    .line 34
    .line 35
    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    .line 36
    .line 37
    iget-object v0, v0, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iget v1, p0, Landroidx/media3/exoplayer/r2;->U:I

    .line 44
    .line 45
    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->p:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    const/4 v2, 0x0

    .line 56
    if-lez v1, :cond_2

    .line 57
    .line 58
    iget-object v3, p0, Landroidx/media3/exoplayer/r2;->p:Ljava/util/ArrayList;

    .line 59
    .line 60
    add-int/lit8 v4, v1, -0x1

    .line 61
    .line 62
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Landroidx/media3/exoplayer/r2$d;

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    move-object v3, v2

    .line 70
    :goto_0
    if-eqz v3, :cond_5

    .line 71
    .line 72
    iget v4, v3, Landroidx/media3/exoplayer/r2$d;->b:I

    .line 73
    .line 74
    if-gt v4, v0, :cond_3

    .line 75
    .line 76
    if-ne v4, v0, :cond_5

    .line 77
    .line 78
    iget-wide v3, v3, Landroidx/media3/exoplayer/r2$d;->c:J

    .line 79
    .line 80
    cmp-long v3, v3, p1

    .line 81
    .line 82
    if-lez v3, :cond_5

    .line 83
    .line 84
    :cond_3
    add-int/lit8 v3, v1, -0x1

    .line 85
    .line 86
    if-lez v3, :cond_4

    .line 87
    .line 88
    iget-object v4, p0, Landroidx/media3/exoplayer/r2;->p:Ljava/util/ArrayList;

    .line 89
    .line 90
    add-int/lit8 v1, v1, -0x2

    .line 91
    .line 92
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    check-cast v1, Landroidx/media3/exoplayer/r2$d;

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_4
    move-object v1, v2

    .line 100
    :goto_1
    move v7, v3

    .line 101
    move-object v3, v1

    .line 102
    move v1, v7

    .line 103
    goto :goto_0

    .line 104
    :cond_5
    iget-object v3, p0, Landroidx/media3/exoplayer/r2;->p:Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-ge v1, v3, :cond_6

    .line 111
    .line 112
    iget-object v3, p0, Landroidx/media3/exoplayer/r2;->p:Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    check-cast v3, Landroidx/media3/exoplayer/r2$d;

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_6
    move-object v3, v2

    .line 122
    :goto_2
    if-eqz v3, :cond_8

    .line 123
    .line 124
    iget-object v4, v3, Landroidx/media3/exoplayer/r2$d;->d:Ljava/lang/Object;

    .line 125
    .line 126
    if-eqz v4, :cond_8

    .line 127
    .line 128
    iget v4, v3, Landroidx/media3/exoplayer/r2$d;->b:I

    .line 129
    .line 130
    if-lt v4, v0, :cond_7

    .line 131
    .line 132
    if-ne v4, v0, :cond_8

    .line 133
    .line 134
    iget-wide v4, v3, Landroidx/media3/exoplayer/r2$d;->c:J

    .line 135
    .line 136
    cmp-long v4, v4, p1

    .line 137
    .line 138
    if-gtz v4, :cond_8

    .line 139
    .line 140
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 141
    .line 142
    iget-object v3, p0, Landroidx/media3/exoplayer/r2;->p:Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    if-ge v1, v3, :cond_6

    .line 149
    .line 150
    iget-object v3, p0, Landroidx/media3/exoplayer/r2;->p:Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    check-cast v3, Landroidx/media3/exoplayer/r2$d;

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_8
    :goto_3
    if-eqz v3, :cond_e

    .line 160
    .line 161
    iget-object v4, v3, Landroidx/media3/exoplayer/r2$d;->d:Ljava/lang/Object;

    .line 162
    .line 163
    if-eqz v4, :cond_e

    .line 164
    .line 165
    iget v4, v3, Landroidx/media3/exoplayer/r2$d;->b:I

    .line 166
    .line 167
    if-ne v4, v0, :cond_e

    .line 168
    .line 169
    iget-wide v4, v3, Landroidx/media3/exoplayer/r2$d;->c:J

    .line 170
    .line 171
    cmp-long v6, v4, p1

    .line 172
    .line 173
    if-lez v6, :cond_e

    .line 174
    .line 175
    cmp-long v4, v4, p3

    .line 176
    .line 177
    if-gtz v4, :cond_e

    .line 178
    .line 179
    :try_start_0
    iget-object v4, v3, Landroidx/media3/exoplayer/r2$d;->a:Landroidx/media3/exoplayer/t3;

    .line 180
    .line 181
    invoke-direct {p0, v4}, Landroidx/media3/exoplayer/r2;->a1(Landroidx/media3/exoplayer/t3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    .line 183
    .line 184
    iget-object v4, v3, Landroidx/media3/exoplayer/r2$d;->a:Landroidx/media3/exoplayer/t3;

    .line 185
    .line 186
    invoke-virtual {v4}, Landroidx/media3/exoplayer/t3;->a()Z

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    if-nez v4, :cond_a

    .line 191
    .line 192
    iget-object v3, v3, Landroidx/media3/exoplayer/r2$d;->a:Landroidx/media3/exoplayer/t3;

    .line 193
    .line 194
    invoke-virtual {v3}, Landroidx/media3/exoplayer/t3;->i()Z

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    if-eqz v3, :cond_9

    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_9
    add-int/lit8 v1, v1, 0x1

    .line 202
    .line 203
    goto :goto_5

    .line 204
    :cond_a
    :goto_4
    iget-object v3, p0, Landroidx/media3/exoplayer/r2;->p:Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    :goto_5
    iget-object v3, p0, Landroidx/media3/exoplayer/r2;->p:Ljava/util/ArrayList;

    .line 210
    .line 211
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    if-ge v1, v3, :cond_b

    .line 216
    .line 217
    iget-object v3, p0, Landroidx/media3/exoplayer/r2;->p:Ljava/util/ArrayList;

    .line 218
    .line 219
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    check-cast v3, Landroidx/media3/exoplayer/r2$d;

    .line 224
    .line 225
    goto :goto_3

    .line 226
    :cond_b
    move-object v3, v2

    .line 227
    goto :goto_3

    .line 228
    :catchall_0
    move-exception p1

    .line 229
    iget-object p2, v3, Landroidx/media3/exoplayer/r2$d;->a:Landroidx/media3/exoplayer/t3;

    .line 230
    .line 231
    invoke-virtual {p2}, Landroidx/media3/exoplayer/t3;->a()Z

    .line 232
    .line 233
    .line 234
    move-result p2

    .line 235
    if-nez p2, :cond_c

    .line 236
    .line 237
    iget-object p2, v3, Landroidx/media3/exoplayer/r2$d;->a:Landroidx/media3/exoplayer/t3;

    .line 238
    .line 239
    invoke-virtual {p2}, Landroidx/media3/exoplayer/t3;->i()Z

    .line 240
    .line 241
    .line 242
    move-result p2

    .line 243
    if-eqz p2, :cond_d

    .line 244
    .line 245
    :cond_c
    iget-object p2, p0, Landroidx/media3/exoplayer/r2;->p:Ljava/util/ArrayList;

    .line 246
    .line 247
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    :cond_d
    throw p1

    .line 251
    :cond_e
    iput v1, p0, Landroidx/media3/exoplayer/r2;->U:I

    .line 252
    .line 253
    :cond_f
    :goto_6
    return-void
.end method

.method private o(Landroidx/media3/exoplayer/r2$b;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->E:Landroidx/media3/exoplayer/r2$e;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/r2$e;->b(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->t:Landroidx/media3/exoplayer/q3;

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    if-ne p2, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/media3/exoplayer/q3;->r()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    :cond_0
    invoke-static {p1}, Landroidx/media3/exoplayer/r2$b;->b(Landroidx/media3/exoplayer/r2$b;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {p1}, Landroidx/media3/exoplayer/r2$b;->c(Landroidx/media3/exoplayer/r2$b;)Lf2/v;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0, p2, v1, p1}, Landroidx/media3/exoplayer/q3;->f(ILjava/util/List;Lf2/v;)Landroidx/media3/common/e0;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 p2, 0x0

    .line 29
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/r2;->T(Landroidx/media3/common/e0;Z)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private o0()Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 2
    .line 3
    iget-wide v1, p0, Landroidx/media3/exoplayer/r2;->S:J

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/b3;->L(J)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->U()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 18
    .line 19
    iget-wide v2, p0, Landroidx/media3/exoplayer/r2;->S:J

    .line 20
    .line 21
    iget-object v4, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 22
    .line 23
    invoke-virtual {v0, v2, v3, v4}, Landroidx/media3/exoplayer/b3;->t(JLandroidx/media3/exoplayer/r3;)Landroidx/media3/exoplayer/z2;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 30
    .line 31
    invoke-virtual {v2, v0}, Landroidx/media3/exoplayer/b3;->h(Landroidx/media3/exoplayer/z2;)Landroidx/media3/exoplayer/y2;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget-boolean v3, v2, Landroidx/media3/exoplayer/y2;->e:Z

    .line 36
    .line 37
    if-nez v3, :cond_0

    .line 38
    .line 39
    iget-wide v3, v0, Landroidx/media3/exoplayer/z2;->b:J

    .line 40
    .line 41
    invoke-virtual {v2, p0, v3, v4}, Landroidx/media3/exoplayer/y2;->v(Landroidx/media3/exoplayer/source/q$a;J)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-boolean v3, v2, Landroidx/media3/exoplayer/y2;->f:Z

    .line 46
    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    iget-object v3, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    .line 50
    .line 51
    const/16 v4, 0x8

    .line 52
    .line 53
    iget-object v5, v2, Landroidx/media3/exoplayer/y2;->a:Landroidx/media3/exoplayer/source/q;

    .line 54
    .line 55
    invoke-interface {v3, v4, v5}, Landroidx/media3/common/util/p;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/p$a;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-interface {v3}, Landroidx/media3/common/util/p$a;->a()V

    .line 60
    .line 61
    .line 62
    :cond_1
    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 63
    .line 64
    invoke-virtual {v3}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    if-ne v3, v2, :cond_2

    .line 69
    .line 70
    iget-wide v2, v0, Landroidx/media3/exoplayer/z2;->b:J

    .line 71
    .line 72
    invoke-direct {p0, v2, v3}, Landroidx/media3/exoplayer/r2;->M0(J)V

    .line 73
    .line 74
    .line 75
    :cond_2
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/r2;->R(Z)V

    .line 76
    .line 77
    .line 78
    const/4 v1, 0x1

    .line 79
    :cond_3
    iget-boolean v0, p0, Landroidx/media3/exoplayer/r2;->K:Z

    .line 80
    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 84
    .line 85
    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->n()Landroidx/media3/exoplayer/y2;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/r2;->a0(Landroidx/media3/exoplayer/y2;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    iput-boolean v0, p0, Landroidx/media3/exoplayer/r2;->K:Z

    .line 94
    .line 95
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->K1()V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_4
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->g0()V

    .line 100
    .line 101
    .line 102
    :goto_1
    return v1
.end method

.method private o1(Landroidx/media3/common/z;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/r2;->g1(Landroidx/media3/common/z;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/media3/exoplayer/n;->getPlaybackParameters()Landroidx/media3/common/z;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/r2;->W(Landroidx/media3/common/z;Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private p0()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/media3/exoplayer/b3;->y()Landroidx/media3/exoplayer/y2;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_5

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->p()Li2/f0;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x0

    .line 29
    move v2, v1

    .line 30
    move v3, v2

    .line 31
    :goto_0
    iget-object v4, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 32
    .line 33
    array-length v4, v4

    .line 34
    const/4 v5, 0x1

    .line 35
    if-ge v2, v4, :cond_3

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Li2/f0;->c(I)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    iget-object v4, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 44
    .line 45
    aget-object v4, v4, v2

    .line 46
    .line 47
    invoke-virtual {v4}, Landroidx/media3/exoplayer/a4;->m()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eq v4, v5, :cond_1

    .line 52
    .line 53
    move v0, v1

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    iget-object v4, v0, Li2/f0;->b:[Landroidx/media3/exoplayer/z3;

    .line 56
    .line 57
    aget-object v4, v4, v2

    .line 58
    .line 59
    iget v4, v4, Landroidx/media3/exoplayer/z3;->a:I

    .line 60
    .line 61
    if-eqz v4, :cond_2

    .line 62
    .line 63
    move v3, v5

    .line 64
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    move v0, v5

    .line 68
    :goto_1
    if-eqz v3, :cond_4

    .line 69
    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    move v1, v5

    .line 73
    :cond_4
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/r2;->j1(Z)V

    .line 74
    .line 75
    .line 76
    :cond_5
    return-void
.end method

.method private p1(Landroidx/media3/exoplayer/ExoPlayer$c;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/r2;->Z:Landroidx/media3/exoplayer/ExoPlayer$c;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 6
    .line 7
    iget-object v1, v1, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Landroidx/media3/exoplayer/b3;->W(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/ExoPlayer$c;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private q()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->p()Li2/f0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 13
    .line 14
    array-length v2, v2

    .line 15
    if-ge v1, v2, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Li2/f0;->c(I)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 25
    .line 26
    aget-object v2, v2, v1

    .line 27
    .line 28
    invoke-virtual {v2}, Landroidx/media3/exoplayer/a4;->f()V

    .line 29
    .line 30
    .line 31
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-void
.end method

.method private q0()V
    .locals 15

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->B1()Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-eqz v2, :cond_4

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->j0()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iput-boolean v0, p0, Landroidx/media3/exoplayer/r2;->c0:Z

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroidx/media3/exoplayer/b3;->b()Landroidx/media3/exoplayer/y2;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroidx/media3/exoplayer/y2;

    .line 27
    .line 28
    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 29
    .line 30
    iget-object v2, v2, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    .line 31
    .line 32
    iget-object v2, v2, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 33
    .line 34
    iget-object v3, v1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 35
    .line 36
    iget-object v3, v3, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    .line 37
    .line 38
    iget-object v3, v3, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const/4 v3, 0x1

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 48
    .line 49
    iget-object v2, v2, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    .line 50
    .line 51
    iget v4, v2, Landroidx/media3/exoplayer/source/r$b;->b:I

    .line 52
    .line 53
    const/4 v5, -0x1

    .line 54
    if-ne v4, v5, :cond_1

    .line 55
    .line 56
    iget-object v4, v1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 57
    .line 58
    iget-object v4, v4, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    .line 59
    .line 60
    iget v6, v4, Landroidx/media3/exoplayer/source/r$b;->b:I

    .line 61
    .line 62
    if-ne v6, v5, :cond_1

    .line 63
    .line 64
    iget v2, v2, Landroidx/media3/exoplayer/source/r$b;->e:I

    .line 65
    .line 66
    iget v4, v4, Landroidx/media3/exoplayer/source/r$b;->e:I

    .line 67
    .line 68
    if-eq v2, v4, :cond_1

    .line 69
    .line 70
    move v2, v3

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    move v2, v0

    .line 73
    :goto_1
    iget-object v4, v1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 74
    .line 75
    iget-object v6, v4, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    .line 76
    .line 77
    iget-wide v11, v4, Landroidx/media3/exoplayer/z2;->b:J

    .line 78
    .line 79
    iget-wide v9, v4, Landroidx/media3/exoplayer/z2;->c:J

    .line 80
    .line 81
    xor-int/lit8 v13, v2, 0x1

    .line 82
    .line 83
    const/4 v14, 0x0

    .line 84
    move-object v5, p0

    .line 85
    move-wide v7, v11

    .line 86
    invoke-direct/range {v5 .. v14}, Landroidx/media3/exoplayer/r2;->X(Landroidx/media3/exoplayer/source/r$b;JJJZI)Landroidx/media3/exoplayer/r3;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    iput-object v2, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 91
    .line 92
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->L0()V

    .line 93
    .line 94
    .line 95
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->T1()V

    .line 96
    .line 97
    .line 98
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->r()Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-eqz v2, :cond_2

    .line 103
    .line 104
    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 105
    .line 106
    invoke-virtual {v2}, Landroidx/media3/exoplayer/b3;->x()Landroidx/media3/exoplayer/y2;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    if-ne v1, v2, :cond_2

    .line 111
    .line 112
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->i0()V

    .line 113
    .line 114
    .line 115
    :cond_2
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 116
    .line 117
    iget v1, v1, Landroidx/media3/exoplayer/r3;->e:I

    .line 118
    .line 119
    const/4 v2, 0x3

    .line 120
    if-ne v1, v2, :cond_3

    .line 121
    .line 122
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->G1()V

    .line 123
    .line 124
    .line 125
    :cond_3
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->q()V

    .line 126
    .line 127
    .line 128
    move v1, v3

    .line 129
    goto :goto_0

    .line 130
    :cond_4
    return-void
.end method

.method private r()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/r2;->A:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 8
    .line 9
    array-length v2, v0

    .line 10
    move v3, v1

    .line 11
    :goto_0
    if-ge v3, v2, :cond_2

    .line 12
    .line 13
    aget-object v4, v0, v3

    .line 14
    .line 15
    invoke-virtual {v4}, Landroidx/media3/exoplayer/a4;->u()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    return v0

    .line 23
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    return v1
.end method

.method private r0(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->Z:Landroidx/media3/exoplayer/ExoPlayer$c;

    .line 2
    .line 3
    iget-wide v0, v0, Landroidx/media3/exoplayer/ExoPlayer$c;->a:J

    .line 4
    .line 5
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    if-nez p1, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 18
    .line 19
    iget-object p1, p1, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->a0:Landroidx/media3/common/e0;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroidx/media3/common/e0;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_2

    .line 28
    .line 29
    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 30
    .line 31
    iget-object p1, p1, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    .line 32
    .line 33
    iput-object p1, p0, Landroidx/media3/exoplayer/r2;->a0:Landroidx/media3/common/e0;

    .line 34
    .line 35
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/b3;->B(Landroidx/media3/common/e0;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->h0()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private r1(I)V
    .locals 2

    .line 1
    iput p1, p0, Landroidx/media3/exoplayer/r2;->L:I

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 6
    .line 7
    iget-object v1, v1, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Landroidx/media3/exoplayer/b3;->Y(Landroidx/media3/common/e0;I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    and-int/lit8 v0, p1, 0x1

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/r2;->V0(Z)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    and-int/lit8 p1, p1, 0x2

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->x()V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 30
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/r2;->R(Z)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private s0()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/r2;->H:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/media3/exoplayer/r2;->A:Z

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-boolean v0, p0, Landroidx/media3/exoplayer/r2;->c0:Z

    .line 10
    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->r()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->x()Landroidx/media3/exoplayer/y2;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroidx/media3/exoplayer/b3;->y()Landroidx/media3/exoplayer/y2;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-ne v0, v1, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-boolean v0, v0, Landroidx/media3/exoplayer/y2;->f:Z

    .line 47
    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->c()Landroidx/media3/exoplayer/y2;

    .line 54
    .line 55
    .line 56
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->k0()V

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_0
    return-void
.end method

.method private s1(Landroidx/media3/exoplayer/c4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/r2;->C:Landroidx/media3/exoplayer/c4;

    .line 2
    .line 3
    return-void
.end method

.method private t()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->J0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private t0()V
    .locals 14

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->y()Landroidx/media3/exoplayer/y2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    const/4 v10, 0x0

    .line 20
    if-eqz v1, :cond_e

    .line 21
    .line 22
    iget-boolean v1, p0, Landroidx/media3/exoplayer/r2;->H:Z

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    goto/16 :goto_5

    .line 27
    .line 28
    :cond_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->Y()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_2

    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->r()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 42
    .line 43
    invoke-virtual {v1}, Landroidx/media3/exoplayer/b3;->x()Landroidx/media3/exoplayer/y2;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 48
    .line 49
    invoke-virtual {v2}, Landroidx/media3/exoplayer/b3;->y()Landroidx/media3/exoplayer/y2;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    if-ne v1, v2, :cond_3

    .line 54
    .line 55
    return-void

    .line 56
    :cond_3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    iget-boolean v1, v1, Landroidx/media3/exoplayer/y2;->f:Z

    .line 61
    .line 62
    if-nez v1, :cond_4

    .line 63
    .line 64
    iget-wide v1, p0, Landroidx/media3/exoplayer/r2;->S:J

    .line 65
    .line 66
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v3}, Landroidx/media3/exoplayer/y2;->n()J

    .line 71
    .line 72
    .line 73
    move-result-wide v3

    .line 74
    cmp-long v1, v1, v3

    .line 75
    .line 76
    if-gez v1, :cond_4

    .line 77
    .line 78
    return-void

    .line 79
    :cond_4
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->p()Li2/f0;

    .line 80
    .line 81
    .line 82
    move-result-object v11

    .line 83
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 84
    .line 85
    invoke-virtual {v1}, Landroidx/media3/exoplayer/b3;->d()Landroidx/media3/exoplayer/y2;

    .line 86
    .line 87
    .line 88
    move-result-object v12

    .line 89
    invoke-virtual {v12}, Landroidx/media3/exoplayer/y2;->p()Li2/f0;

    .line 90
    .line 91
    .line 92
    move-result-object v13

    .line 93
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 94
    .line 95
    iget-object v3, v1, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    .line 96
    .line 97
    iget-object v1, v12, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 98
    .line 99
    iget-object v2, v1, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    .line 100
    .line 101
    iget-object v0, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 102
    .line 103
    iget-object v4, v0, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    .line 104
    .line 105
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    const/4 v7, 0x0

    .line 111
    move-object v0, p0

    .line 112
    move-object v1, v3

    .line 113
    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/r2;->U1(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;JZ)V

    .line 114
    .line 115
    .line 116
    iget-boolean v0, v12, Landroidx/media3/exoplayer/y2;->f:Z

    .line 117
    .line 118
    if-eqz v0, :cond_c

    .line 119
    .line 120
    iget-boolean v0, p0, Landroidx/media3/exoplayer/r2;->A:Z

    .line 121
    .line 122
    if-eqz v0, :cond_5

    .line 123
    .line 124
    iget-wide v0, p0, Landroidx/media3/exoplayer/r2;->b0:J

    .line 125
    .line 126
    cmp-long v0, v0, v8

    .line 127
    .line 128
    if-nez v0, :cond_6

    .line 129
    .line 130
    :cond_5
    iget-object v0, v12, Landroidx/media3/exoplayer/y2;->a:Landroidx/media3/exoplayer/source/q;

    .line 131
    .line 132
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/q;->readDiscontinuity()J

    .line 133
    .line 134
    .line 135
    move-result-wide v0

    .line 136
    cmp-long v0, v0, v8

    .line 137
    .line 138
    if-eqz v0, :cond_c

    .line 139
    .line 140
    :cond_6
    iput-wide v8, p0, Landroidx/media3/exoplayer/r2;->b0:J

    .line 141
    .line 142
    iget-boolean v0, p0, Landroidx/media3/exoplayer/r2;->A:Z

    .line 143
    .line 144
    if-eqz v0, :cond_7

    .line 145
    .line 146
    iget-boolean v0, p0, Landroidx/media3/exoplayer/r2;->c0:Z

    .line 147
    .line 148
    if-nez v0, :cond_7

    .line 149
    .line 150
    const/4 v0, 0x1

    .line 151
    goto :goto_0

    .line 152
    :cond_7
    move v0, v10

    .line 153
    :goto_0
    if-eqz v0, :cond_a

    .line 154
    .line 155
    move v1, v10

    .line 156
    :goto_1
    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 157
    .line 158
    array-length v2, v2

    .line 159
    if-ge v1, v2, :cond_a

    .line 160
    .line 161
    invoke-virtual {v13, v1}, Li2/f0;->c(I)Z

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-nez v2, :cond_8

    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_8
    iget-object v2, v13, Li2/f0;->c:[Li2/z;

    .line 169
    .line 170
    aget-object v2, v2, v1

    .line 171
    .line 172
    invoke-interface {v2}, Li2/z;->getSelectedFormat()Landroidx/media3/common/r;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    iget-object v2, v2, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 177
    .line 178
    iget-object v3, v13, Li2/f0;->c:[Li2/z;

    .line 179
    .line 180
    aget-object v3, v3, v1

    .line 181
    .line 182
    invoke-interface {v3}, Li2/z;->getSelectedFormat()Landroidx/media3/common/r;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    iget-object v3, v3, Landroidx/media3/common/r;->k:Ljava/lang/String;

    .line 187
    .line 188
    invoke-static {v2, v3}, Landroidx/media3/common/y;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    if-nez v2, :cond_9

    .line 193
    .line 194
    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 195
    .line 196
    aget-object v2, v2, v1

    .line 197
    .line 198
    invoke-virtual {v2}, Landroidx/media3/exoplayer/a4;->u()Z

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    if-nez v2, :cond_9

    .line 203
    .line 204
    move v0, v10

    .line 205
    goto :goto_3

    .line 206
    :cond_9
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 207
    .line 208
    goto :goto_1

    .line 209
    :cond_a
    :goto_3
    if-nez v0, :cond_c

    .line 210
    .line 211
    invoke-virtual {v12}, Landroidx/media3/exoplayer/y2;->n()J

    .line 212
    .line 213
    .line 214
    move-result-wide v0

    .line 215
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/r2;->c1(J)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v12}, Landroidx/media3/exoplayer/y2;->s()Z

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    if-nez v0, :cond_b

    .line 223
    .line 224
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 225
    .line 226
    invoke-virtual {v0, v12}, Landroidx/media3/exoplayer/b3;->O(Landroidx/media3/exoplayer/y2;)I

    .line 227
    .line 228
    .line 229
    invoke-direct {p0, v10}, Landroidx/media3/exoplayer/r2;->R(Z)V

    .line 230
    .line 231
    .line 232
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->g0()V

    .line 233
    .line 234
    .line 235
    :cond_b
    return-void

    .line 236
    :cond_c
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 237
    .line 238
    array-length v1, v0

    .line 239
    :goto_4
    if-ge v10, v1, :cond_d

    .line 240
    .line 241
    aget-object v2, v0, v10

    .line 242
    .line 243
    invoke-virtual {v12}, Landroidx/media3/exoplayer/y2;->n()J

    .line 244
    .line 245
    .line 246
    move-result-wide v3

    .line 247
    invoke-virtual {v2, v11, v13, v3, v4}, Landroidx/media3/exoplayer/a4;->F(Li2/f0;Li2/f0;J)V

    .line 248
    .line 249
    .line 250
    add-int/lit8 v10, v10, 0x1

    .line 251
    .line 252
    goto :goto_4

    .line 253
    :cond_d
    return-void

    .line 254
    :cond_e
    :goto_5
    iget-object v1, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 255
    .line 256
    iget-boolean v1, v1, Landroidx/media3/exoplayer/z2;->j:Z

    .line 257
    .line 258
    if-nez v1, :cond_f

    .line 259
    .line 260
    iget-boolean v1, p0, Landroidx/media3/exoplayer/r2;->H:Z

    .line 261
    .line 262
    if-eqz v1, :cond_13

    .line 263
    .line 264
    :cond_f
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 265
    .line 266
    array-length v2, v1

    .line 267
    :goto_6
    if-ge v10, v2, :cond_13

    .line 268
    .line 269
    aget-object v3, v1, v10

    .line 270
    .line 271
    invoke-virtual {v3, v0}, Landroidx/media3/exoplayer/a4;->w(Landroidx/media3/exoplayer/y2;)Z

    .line 272
    .line 273
    .line 274
    move-result v4

    .line 275
    if-nez v4, :cond_10

    .line 276
    .line 277
    goto :goto_8

    .line 278
    :cond_10
    invoke-virtual {v3, v0}, Landroidx/media3/exoplayer/a4;->r(Landroidx/media3/exoplayer/y2;)Z

    .line 279
    .line 280
    .line 281
    move-result v4

    .line 282
    if-eqz v4, :cond_12

    .line 283
    .line 284
    iget-object v4, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 285
    .line 286
    iget-wide v4, v4, Landroidx/media3/exoplayer/z2;->e:J

    .line 287
    .line 288
    cmp-long v6, v4, v8

    .line 289
    .line 290
    if-eqz v6, :cond_11

    .line 291
    .line 292
    const-wide/high16 v6, -0x8000000000000000L

    .line 293
    .line 294
    cmp-long v4, v4, v6

    .line 295
    .line 296
    if-eqz v4, :cond_11

    .line 297
    .line 298
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->m()J

    .line 299
    .line 300
    .line 301
    move-result-wide v4

    .line 302
    iget-object v6, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 303
    .line 304
    iget-wide v6, v6, Landroidx/media3/exoplayer/z2;->e:J

    .line 305
    .line 306
    add-long/2addr v4, v6

    .line 307
    goto :goto_7

    .line 308
    :cond_11
    move-wide v4, v8

    .line 309
    :goto_7
    invoke-virtual {v3, v0, v4, v5}, Landroidx/media3/exoplayer/a4;->O(Landroidx/media3/exoplayer/y2;J)V

    .line 310
    .line 311
    .line 312
    :cond_12
    :goto_8
    add-int/lit8 v10, v10, 0x1

    .line 313
    .line 314
    goto :goto_6

    .line 315
    :cond_13
    return-void
.end method

.method private u0()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->y()Landroidx/media3/exoplayer/y2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eq v1, v0, :cond_1

    .line 16
    .line 17
    iget-boolean v0, v0, Landroidx/media3/exoplayer/y2;->i:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->X1()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->y()Landroidx/media3/exoplayer/y2;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x1

    .line 35
    iput-boolean v1, v0, Landroidx/media3/exoplayer/y2;->i:Z

    .line 36
    .line 37
    :cond_1
    :goto_0
    return-void
.end method

.method private u1(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Landroidx/media3/exoplayer/r2;->M:Z

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 6
    .line 7
    iget-object v1, v1, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Landroidx/media3/exoplayer/b3;->Z(Landroidx/media3/common/e0;Z)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    and-int/lit8 v0, p1, 0x1

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/r2;->V0(Z)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    and-int/lit8 p1, p1, 0x2

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->x()V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 30
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/r2;->R(Z)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private v(Landroidx/media3/exoplayer/z2;J)Landroidx/media3/exoplayer/y2;
    .locals 12

    .line 1
    new-instance v11, Landroidx/media3/exoplayer/y2;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->b:[Landroidx/media3/exoplayer/y3;

    .line 4
    .line 5
    iget-object v4, p0, Landroidx/media3/exoplayer/r2;->d:Li2/e0;

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->f:Landroidx/media3/exoplayer/u2;

    .line 8
    .line 9
    invoke-interface {v0}, Landroidx/media3/exoplayer/u2;->getAllocator()Landroidx/media3/exoplayer/upstream/b;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    iget-object v6, p0, Landroidx/media3/exoplayer/r2;->t:Landroidx/media3/exoplayer/q3;

    .line 14
    .line 15
    iget-object v8, p0, Landroidx/media3/exoplayer/r2;->e:Li2/f0;

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->Z:Landroidx/media3/exoplayer/ExoPlayer$c;

    .line 18
    .line 19
    iget-wide v9, v0, Landroidx/media3/exoplayer/ExoPlayer$c;->a:J

    .line 20
    .line 21
    move-object v0, v11

    .line 22
    move-wide v2, p2

    .line 23
    move-object v7, p1

    .line 24
    invoke-direct/range {v0 .. v10}, Landroidx/media3/exoplayer/y2;-><init>([Landroidx/media3/exoplayer/y3;JLi2/e0;Landroidx/media3/exoplayer/upstream/b;Landroidx/media3/exoplayer/q3;Landroidx/media3/exoplayer/z2;Li2/f0;J)V

    .line 25
    .line 26
    .line 27
    return-object v11
.end method

.method private v0()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->t:Landroidx/media3/exoplayer/q3;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/q3;->i()Landroidx/media3/common/e0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/r2;->T(Landroidx/media3/common/e0;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private v1(Lf2/v;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->E:Landroidx/media3/exoplayer/r2$e;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/r2$e;->b(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->t:Landroidx/media3/exoplayer/q3;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/q3;->D(Lf2/v;)Landroidx/media3/common/e0;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/r2;->T(Landroidx/media3/common/e0;Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private w(Landroidx/media3/exoplayer/t3;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroidx/media3/exoplayer/t3;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    :try_start_0
    invoke-virtual {p1}, Landroidx/media3/exoplayer/t3;->f()Landroidx/media3/exoplayer/t3$b;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p1}, Landroidx/media3/exoplayer/t3;->h()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {p1}, Landroidx/media3/exoplayer/t3;->d()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-interface {v1, v2, v3}, Landroidx/media3/exoplayer/t3$b;->handleMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/t3;->j(Z)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/t3;->j(Z)V

    .line 30
    .line 31
    .line 32
    throw v1
.end method

.method private w0(Landroidx/media3/exoplayer/r2$c;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->E:Landroidx/media3/exoplayer/r2$e;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/r2$e;->b(I)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    throw p1
.end method

.method private w1(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 2
    .line 3
    iget v1, v0, Landroidx/media3/exoplayer/r3;->e:I

    .line 4
    .line 5
    if-eq v1, p1, :cond_1

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    if-eq p1, v1, :cond_0

    .line 9
    .line 10
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    iput-wide v1, p0, Landroidx/media3/exoplayer/r2;->Y:J

    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/r3;->h(I)Landroidx/media3/exoplayer/r3;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method private x()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/r2;->A:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->r()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 13
    .line 14
    array-length v1, v0

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    if-ge v2, v1, :cond_1

    .line 17
    .line 18
    aget-object v3, v0, v2

    .line 19
    .line 20
    invoke-virtual {v3}, Landroidx/media3/exoplayer/a4;->h()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    iget-object v5, p0, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    .line 25
    .line 26
    invoke-virtual {v3, v5}, Landroidx/media3/exoplayer/a4;->c(Landroidx/media3/exoplayer/n;)V

    .line 27
    .line 28
    .line 29
    iget v5, p0, Landroidx/media3/exoplayer/r2;->Q:I

    .line 30
    .line 31
    invoke-virtual {v3}, Landroidx/media3/exoplayer/a4;->h()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    sub-int/2addr v4, v3

    .line 36
    sub-int/2addr v5, v4

    .line 37
    iput v5, p0, Landroidx/media3/exoplayer/r2;->Q:I

    .line 38
    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    iput-wide v0, p0, Landroidx/media3/exoplayer/r2;->b0:J

    .line 48
    .line 49
    :cond_2
    :goto_1
    return-void
.end method

.method private x0()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->p()Li2/f0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v1, v1, Li2/f0;->c:[Li2/z;

    .line 14
    .line 15
    array-length v2, v1

    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_1
    if-ge v3, v2, :cond_1

    .line 18
    .line 19
    aget-object v4, v1, v3

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    invoke-interface {v4}, Li2/z;->a()V

    .line 24
    .line 25
    .line 26
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return-void
.end method

.method private y(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 2
    .line 3
    aget-object v0, v0, p1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/a4;->h()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 10
    .line 11
    aget-object v1, v1, p1

    .line 12
    .line 13
    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/a4;->b(Landroidx/media3/exoplayer/n;)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0, p1, v1}, Landroidx/media3/exoplayer/r2;->m0(IZ)V

    .line 20
    .line 21
    .line 22
    iget p1, p0, Landroidx/media3/exoplayer/r2;->Q:I

    .line 23
    .line 24
    sub-int/2addr p1, v0

    .line 25
    iput p1, p0, Landroidx/media3/exoplayer/r2;->Q:I

    .line 26
    .line 27
    return-void
.end method

.method private y0(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->p()Li2/f0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v1, v1, Li2/f0;->c:[Li2/z;

    .line 14
    .line 15
    array-length v2, v1

    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_1
    if-ge v3, v2, :cond_1

    .line 18
    .line 19
    aget-object v4, v1, v3

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    invoke-interface {v4, p1}, Li2/z;->b(Z)V

    .line 24
    .line 25
    .line 26
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return-void
.end method

.method private y1(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

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
    invoke-virtual {v3, p1}, Landroidx/media3/exoplayer/a4;->S(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 16
    .line 17
    iget p1, p1, Landroidx/media3/exoplayer/r3;->e:I

    .line 18
    .line 19
    const/4 v0, 0x3

    .line 20
    const/4 v1, 0x2

    .line 21
    if-eq p1, v0, :cond_1

    .line 22
    .line 23
    if-ne p1, v1, :cond_2

    .line 24
    .line 25
    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    .line 26
    .line 27
    invoke-interface {p1, v1}, Landroidx/media3/common/util/p;->sendEmptyMessage(I)Z

    .line 28
    .line 29
    .line 30
    :cond_2
    if-eqz p2, :cond_3

    .line 31
    .line 32
    monitor-enter p0

    .line 33
    const/4 p1, 0x1

    .line 34
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 38
    .line 39
    .line 40
    monitor-exit p0

    .line 41
    goto :goto_1

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p1

    .line 45
    :cond_3
    :goto_1
    return-void
.end method

.method private z()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 3
    .line 4
    array-length v1, v1

    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/r2;->y(I)V

    .line 8
    .line 9
    .line 10
    add-int/lit8 v0, v0, 0x1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    iput-wide v0, p0, Landroidx/media3/exoplayer/r2;->b0:J

    .line 19
    .line 20
    return-void
.end method

.method private z0()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->p()Li2/f0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v1, v1, Li2/f0;->c:[Li2/z;

    .line 14
    .line 15
    array-length v2, v1

    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_1
    if-ge v3, v2, :cond_1

    .line 18
    .line 19
    aget-object v4, v1, v3

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    invoke-interface {v4}, Li2/z;->c()V

    .line 24
    .line 25
    .line 26
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return-void
.end method


# virtual methods
.method public A0(Landroidx/media3/exoplayer/source/q;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Landroidx/media3/common/util/p;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/p$a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Landroidx/media3/common/util/p$a;->a()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public B0()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    invoke-interface {v0, v1}, Landroidx/media3/common/util/p;->obtainMessage(I)Landroidx/media3/common/util/p$a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Landroidx/media3/common/util/p$a;->a()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public declared-synchronized D0()Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/r2;->F:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->j:Landroid/os/Looper;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    .line 20
    .line 21
    const/4 v1, 0x7

    .line 22
    invoke-interface {v0, v1}, Landroidx/media3/common/util/p;->sendEmptyMessage(I)Z

    .line 23
    .line 24
    .line 25
    new-instance v0, Landroidx/media3/exoplayer/m2;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/m2;-><init>(Landroidx/media3/exoplayer/r2;)V

    .line 28
    .line 29
    .line 30
    iget-wide v1, p0, Landroidx/media3/exoplayer/r2;->v:J

    .line 31
    .line 32
    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/exoplayer/r2;->Z1(Lcom/google/common/base/q;J)V

    .line 33
    .line 34
    .line 35
    iget-boolean v0, p0, Landroidx/media3/exoplayer/r2;->F:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    monitor-exit p0

    .line 38
    return v0

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    monitor-exit p0

    .line 42
    const/4 v0, 0x1

    .line 43
    return v0

    .line 44
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    throw v0
.end method

.method public E(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/media3/exoplayer/r2;->X:J

    .line 2
    .line 3
    return-void
.end method

.method public H0(IILf2/v;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    .line 2
    .line 3
    const/16 v1, 0x14

    .line 4
    .line 5
    invoke-interface {v0, v1, p1, p2, p3}, Landroidx/media3/common/util/p;->obtainMessage(IIILjava/lang/Object;)Landroidx/media3/common/util/p$a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Landroidx/media3/common/util/p$a;->a()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public H1()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-interface {v0, v1}, Landroidx/media3/common/util/p;->obtainMessage(I)Landroidx/media3/common/util/p$a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Landroidx/media3/common/util/p$a;->a()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public K()Landroid/os/Looper;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->j:Landroid/os/Looper;

    .line 2
    .line 3
    return-object v0
.end method

.method public M1(IILjava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    .line 2
    .line 3
    const/16 v1, 0x1b

    .line 4
    .line 5
    invoke-interface {v0, v1, p1, p2, p3}, Landroidx/media3/common/util/p;->obtainMessage(IIILjava/lang/Object;)Landroidx/media3/common/util/p$a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Landroidx/media3/common/util/p$a;->a()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public U0(Landroidx/media3/common/e0;IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    .line 2
    .line 3
    new-instance v1, Landroidx/media3/exoplayer/r2$h;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2, p3, p4}, Landroidx/media3/exoplayer/r2$h;-><init>(Landroidx/media3/common/e0;IJ)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x3

    .line 9
    invoke-interface {v0, p1, v1}, Landroidx/media3/common/util/p;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/p$a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1}, Landroidx/media3/common/util/p$a;->a()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-interface {v0, v1}, Landroidx/media3/common/util/p;->removeMessages(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    .line 8
    .line 9
    const/16 v1, 0x16

    .line 10
    .line 11
    invoke-interface {v0, v1}, Landroidx/media3/common/util/p;->sendEmptyMessage(I)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public b(Landroidx/media3/exoplayer/w3;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    .line 2
    .line 3
    const/16 v0, 0x1a

    .line 4
    .line 5
    invoke-interface {p1, v0}, Landroidx/media3/common/util/p;->sendEmptyMessage(I)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public declared-synchronized c(Landroidx/media3/exoplayer/t3;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/r2;->F:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->j:Landroid/os/Looper;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    .line 20
    .line 21
    const/16 v1, 0xe

    .line 22
    .line 23
    invoke-interface {v0, v1, p1}, Landroidx/media3/common/util/p;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/p$a;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p1}, Landroidx/media3/common/util/p$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "ExoPlayerImplInternal"

    .line 35
    .line 36
    const-string v1, "Ignoring messages sent after release."

    .line 37
    .line 38
    invoke-static {v0, v1}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/t3;->j(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    monitor-exit p0

    .line 46
    return-void

    .line 47
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    throw p1
.end method

.method public d1(Landroidx/media3/common/c;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x1f

    .line 5
    .line 6
    invoke-interface {v0, v2, p2, v1, p1}, Landroidx/media3/common/util/p;->obtainMessage(IIILjava/lang/Object;)Landroidx/media3/common/util/p$a;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Landroidx/media3/common/util/p$a;->a()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public g(Landroidx/media3/exoplayer/source/q;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Landroidx/media3/common/util/p;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/p$a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Landroidx/media3/common/util/p$a;->a()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public bridge synthetic h(Landroidx/media3/exoplayer/source/f0;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/media3/exoplayer/source/q;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/r2;->A0(Landroidx/media3/exoplayer/source/q;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 17

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v12, "Playback error"

    .line 6
    .line 7
    const-string v13, "ExoPlayerImplInternal"

    .line 8
    .line 9
    const/16 v2, 0x3e8

    .line 10
    .line 11
    const/4 v3, 0x4

    .line 12
    const/4 v14, 0x0

    .line 13
    const/4 v15, 0x1

    .line 14
    :try_start_0
    iget v4, v1, Landroid/os/Message;->what:I

    .line 15
    .line 16
    packed-switch v4, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    :pswitch_0
    return v14

    .line 20
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->O()V

    .line 21
    .line 22
    .line 23
    goto/16 :goto_11

    .line 24
    .line 25
    :catch_0
    move-exception v0

    .line 26
    move-object v1, v0

    .line 27
    goto/16 :goto_5

    .line 28
    .line 29
    :catch_1
    move-exception v0

    .line 30
    move-object v1, v0

    .line 31
    goto/16 :goto_6

    .line 32
    .line 33
    :catch_2
    move-exception v0

    .line 34
    move-object v1, v0

    .line 35
    goto/16 :goto_7

    .line 36
    .line 37
    :catch_3
    move-exception v0

    .line 38
    move-object v1, v0

    .line 39
    goto/16 :goto_8

    .line 40
    .line 41
    :catch_4
    move-exception v0

    .line 42
    move-object v1, v0

    .line 43
    goto/16 :goto_9

    .line 44
    .line 45
    :catch_5
    move-exception v0

    .line 46
    move-object v1, v0

    .line 47
    goto/16 :goto_b

    .line 48
    .line 49
    :catch_6
    move-exception v0

    .line 50
    move-object v1, v0

    .line 51
    goto/16 :goto_c

    .line 52
    .line 53
    :pswitch_2
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 54
    .line 55
    invoke-direct {v11, v1}, Landroidx/media3/exoplayer/r2;->N(I)V

    .line 56
    .line 57
    .line 58
    goto/16 :goto_11

    .line 59
    .line 60
    :pswitch_3
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v1, Ljava/lang/Float;

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-direct {v11, v1}, Landroidx/media3/exoplayer/r2;->A1(F)V

    .line 69
    .line 70
    .line 71
    goto/16 :goto_11

    .line 72
    .line 73
    :pswitch_4
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v4, Landroidx/media3/common/c;

    .line 76
    .line 77
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 78
    .line 79
    if-eqz v1, :cond_0

    .line 80
    .line 81
    move v1, v15

    .line 82
    goto :goto_0

    .line 83
    :cond_0
    move v1, v14

    .line 84
    :goto_0
    invoke-direct {v11, v4, v1}, Landroidx/media3/exoplayer/r2;->e1(Landroidx/media3/common/c;Z)V

    .line 85
    .line 86
    .line 87
    goto/16 :goto_11

    .line 88
    .line 89
    :pswitch_5
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v1, Landroid/util/Pair;

    .line 92
    .line 93
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 94
    .line 95
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 98
    .line 99
    invoke-direct {v11, v4, v1}, Landroidx/media3/exoplayer/r2;->y1(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 100
    .line 101
    .line 102
    goto/16 :goto_11

    .line 103
    .line 104
    :pswitch_6
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->C0()V

    .line 105
    .line 106
    .line 107
    goto/16 :goto_11

    .line 108
    .line 109
    :pswitch_7
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v1, Landroidx/media3/exoplayer/ExoPlayer$c;

    .line 112
    .line 113
    invoke-direct {v11, v1}, Landroidx/media3/exoplayer/r2;->p1(Landroidx/media3/exoplayer/ExoPlayer$c;)V

    .line 114
    .line 115
    .line 116
    goto/16 :goto_11

    .line 117
    .line 118
    :pswitch_8
    iget v4, v1, Landroid/os/Message;->arg1:I

    .line 119
    .line 120
    iget v5, v1, Landroid/os/Message;->arg2:I

    .line 121
    .line 122
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v1, Ljava/util/List;

    .line 125
    .line 126
    invoke-direct {v11, v4, v5, v1}, Landroidx/media3/exoplayer/r2;->N1(IILjava/util/List;)V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_11

    .line 130
    .line 131
    :pswitch_9
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->J0()V

    .line 132
    .line 133
    .line 134
    goto/16 :goto_11

    .line 135
    .line 136
    :pswitch_a
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->t()V

    .line 137
    .line 138
    .line 139
    goto/16 :goto_11

    .line 140
    .line 141
    :pswitch_b
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 142
    .line 143
    if-eqz v1, :cond_1

    .line 144
    .line 145
    move v1, v15

    .line 146
    goto :goto_1

    .line 147
    :cond_1
    move v1, v14

    .line 148
    :goto_1
    invoke-direct {v11, v1}, Landroidx/media3/exoplayer/r2;->k1(Z)V

    .line 149
    .line 150
    .line 151
    goto/16 :goto_11

    .line 152
    .line 153
    :pswitch_c
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->v0()V

    .line 154
    .line 155
    .line 156
    goto/16 :goto_11

    .line 157
    .line 158
    :pswitch_d
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v1, Lf2/v;

    .line 161
    .line 162
    invoke-direct {v11, v1}, Landroidx/media3/exoplayer/r2;->v1(Lf2/v;)V

    .line 163
    .line 164
    .line 165
    goto/16 :goto_11

    .line 166
    .line 167
    :pswitch_e
    iget v4, v1, Landroid/os/Message;->arg1:I

    .line 168
    .line 169
    iget v5, v1, Landroid/os/Message;->arg2:I

    .line 170
    .line 171
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast v1, Lf2/v;

    .line 174
    .line 175
    invoke-direct {v11, v4, v5, v1}, Landroidx/media3/exoplayer/r2;->G0(IILf2/v;)V

    .line 176
    .line 177
    .line 178
    goto/16 :goto_11

    .line 179
    .line 180
    :pswitch_f
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 181
    .line 182
    invoke-static {v1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    const/4 v1, 0x0

    .line 186
    invoke-direct {v11, v1}, Landroidx/media3/exoplayer/r2;->w0(Landroidx/media3/exoplayer/r2$c;)V

    .line 187
    .line 188
    .line 189
    goto/16 :goto_11

    .line 190
    .line 191
    :pswitch_10
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast v4, Landroidx/media3/exoplayer/r2$b;

    .line 194
    .line 195
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 196
    .line 197
    invoke-direct {v11, v4, v1}, Landroidx/media3/exoplayer/r2;->o(Landroidx/media3/exoplayer/r2$b;I)V

    .line 198
    .line 199
    .line 200
    goto/16 :goto_11

    .line 201
    .line 202
    :pswitch_11
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 203
    .line 204
    check-cast v1, Landroidx/media3/exoplayer/r2$b;

    .line 205
    .line 206
    invoke-direct {v11, v1}, Landroidx/media3/exoplayer/r2;->h1(Landroidx/media3/exoplayer/r2$b;)V

    .line 207
    .line 208
    .line 209
    goto/16 :goto_11

    .line 210
    .line 211
    :pswitch_12
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 212
    .line 213
    check-cast v1, Landroidx/media3/common/z;

    .line 214
    .line 215
    invoke-direct {v11, v1, v14}, Landroidx/media3/exoplayer/r2;->W(Landroidx/media3/common/z;Z)V

    .line 216
    .line 217
    .line 218
    goto/16 :goto_11

    .line 219
    .line 220
    :pswitch_13
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 221
    .line 222
    check-cast v1, Landroidx/media3/exoplayer/t3;

    .line 223
    .line 224
    invoke-direct {v11, v1}, Landroidx/media3/exoplayer/r2;->b1(Landroidx/media3/exoplayer/t3;)V

    .line 225
    .line 226
    .line 227
    goto/16 :goto_11

    .line 228
    .line 229
    :pswitch_14
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 230
    .line 231
    check-cast v1, Landroidx/media3/exoplayer/t3;

    .line 232
    .line 233
    invoke-direct {v11, v1}, Landroidx/media3/exoplayer/r2;->Z0(Landroidx/media3/exoplayer/t3;)V

    .line 234
    .line 235
    .line 236
    goto/16 :goto_11

    .line 237
    .line 238
    :pswitch_15
    iget v4, v1, Landroid/os/Message;->arg1:I

    .line 239
    .line 240
    if-eqz v4, :cond_2

    .line 241
    .line 242
    move v4, v15

    .line 243
    goto :goto_2

    .line 244
    :cond_2
    move v4, v14

    .line 245
    :goto_2
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 246
    .line 247
    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 248
    .line 249
    invoke-direct {v11, v4, v1}, Landroidx/media3/exoplayer/r2;->f1(ZLjava/util/concurrent/atomic/AtomicBoolean;)V

    .line 250
    .line 251
    .line 252
    goto/16 :goto_11

    .line 253
    .line 254
    :pswitch_16
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 255
    .line 256
    if-eqz v1, :cond_3

    .line 257
    .line 258
    move v1, v15

    .line 259
    goto :goto_3

    .line 260
    :cond_3
    move v1, v14

    .line 261
    :goto_3
    invoke-direct {v11, v1}, Landroidx/media3/exoplayer/r2;->u1(Z)V

    .line 262
    .line 263
    .line 264
    goto/16 :goto_11

    .line 265
    .line 266
    :pswitch_17
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 267
    .line 268
    invoke-direct {v11, v1}, Landroidx/media3/exoplayer/r2;->r1(I)V

    .line 269
    .line 270
    .line 271
    goto/16 :goto_11

    .line 272
    .line 273
    :pswitch_18
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->I0()V

    .line 274
    .line 275
    .line 276
    goto/16 :goto_11

    .line 277
    .line 278
    :pswitch_19
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 279
    .line 280
    check-cast v1, Landroidx/media3/exoplayer/source/q;

    .line 281
    .line 282
    invoke-direct {v11, v1}, Landroidx/media3/exoplayer/r2;->P(Landroidx/media3/exoplayer/source/q;)V

    .line 283
    .line 284
    .line 285
    goto/16 :goto_11

    .line 286
    .line 287
    :pswitch_1a
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 288
    .line 289
    check-cast v1, Landroidx/media3/exoplayer/source/q;

    .line 290
    .line 291
    invoke-direct {v11, v1}, Landroidx/media3/exoplayer/r2;->U(Landroidx/media3/exoplayer/source/q;)V

    .line 292
    .line 293
    .line 294
    goto/16 :goto_11

    .line 295
    .line 296
    :pswitch_1b
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->E0()V

    .line 297
    .line 298
    .line 299
    return v15

    .line 300
    :pswitch_1c
    invoke-direct {v11, v14, v15}, Landroidx/media3/exoplayer/r2;->I1(ZZ)V

    .line 301
    .line 302
    .line 303
    goto/16 :goto_11

    .line 304
    .line 305
    :pswitch_1d
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 306
    .line 307
    check-cast v1, Landroidx/media3/exoplayer/c4;

    .line 308
    .line 309
    invoke-direct {v11, v1}, Landroidx/media3/exoplayer/r2;->s1(Landroidx/media3/exoplayer/c4;)V

    .line 310
    .line 311
    .line 312
    goto/16 :goto_11

    .line 313
    .line 314
    :pswitch_1e
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 315
    .line 316
    check-cast v1, Landroidx/media3/common/z;

    .line 317
    .line 318
    invoke-direct {v11, v1}, Landroidx/media3/exoplayer/r2;->o1(Landroidx/media3/common/z;)V

    .line 319
    .line 320
    .line 321
    goto/16 :goto_11

    .line 322
    .line 323
    :pswitch_1f
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 324
    .line 325
    check-cast v1, Landroidx/media3/exoplayer/r2$h;

    .line 326
    .line 327
    invoke-direct {v11, v1}, Landroidx/media3/exoplayer/r2;->W0(Landroidx/media3/exoplayer/r2$h;)V

    .line 328
    .line 329
    .line 330
    goto/16 :goto_11

    .line 331
    .line 332
    :pswitch_20
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->A()V

    .line 333
    .line 334
    .line 335
    goto/16 :goto_11

    .line 336
    .line 337
    :pswitch_21
    iget v4, v1, Landroid/os/Message;->arg1:I

    .line 338
    .line 339
    if-eqz v4, :cond_4

    .line 340
    .line 341
    move v4, v15

    .line 342
    goto :goto_4

    .line 343
    :cond_4
    move v4, v14

    .line 344
    :goto_4
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 345
    .line 346
    shr-int/lit8 v5, v1, 0x4

    .line 347
    .line 348
    and-int/lit8 v1, v1, 0xf

    .line 349
    .line 350
    invoke-direct {v11, v4, v5, v15, v1}, Landroidx/media3/exoplayer/r2;->m1(ZIZI)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroidx/media3/datasource/DataSourceException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroidx/media3/exoplayer/source/BehindLiveWindowException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    .line 352
    .line 353
    goto/16 :goto_11

    .line 354
    .line 355
    :goto_5
    instance-of v3, v1, Ljava/lang/IllegalStateException;

    .line 356
    .line 357
    if-nez v3, :cond_5

    .line 358
    .line 359
    instance-of v3, v1, Ljava/lang/IllegalArgumentException;

    .line 360
    .line 361
    if-eqz v3, :cond_6

    .line 362
    .line 363
    :cond_5
    const/16 v2, 0x3ec

    .line 364
    .line 365
    :cond_6
    invoke-static {v1, v2}, Landroidx/media3/exoplayer/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    invoke-static {v13, v12, v1}, Landroidx/media3/common/util/u;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 370
    .line 371
    .line 372
    invoke-direct {v11, v15, v14}, Landroidx/media3/exoplayer/r2;->I1(ZZ)V

    .line 373
    .line 374
    .line 375
    iget-object v2, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 376
    .line 377
    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/r3;->f(Landroidx/media3/exoplayer/ExoPlaybackException;)Landroidx/media3/exoplayer/r3;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    iput-object v1, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 382
    .line 383
    goto/16 :goto_11

    .line 384
    .line 385
    :goto_6
    const/16 v2, 0x7d0

    .line 386
    .line 387
    invoke-direct {v11, v1, v2}, Landroidx/media3/exoplayer/r2;->Q(Ljava/io/IOException;I)V

    .line 388
    .line 389
    .line 390
    goto/16 :goto_11

    .line 391
    .line 392
    :goto_7
    const/16 v2, 0x3ea

    .line 393
    .line 394
    invoke-direct {v11, v1, v2}, Landroidx/media3/exoplayer/r2;->Q(Ljava/io/IOException;I)V

    .line 395
    .line 396
    .line 397
    goto/16 :goto_11

    .line 398
    .line 399
    :goto_8
    iget v2, v1, Landroidx/media3/datasource/DataSourceException;->reason:I

    .line 400
    .line 401
    invoke-direct {v11, v1, v2}, Landroidx/media3/exoplayer/r2;->Q(Ljava/io/IOException;I)V

    .line 402
    .line 403
    .line 404
    goto/16 :goto_11

    .line 405
    .line 406
    :goto_9
    iget v4, v1, Landroidx/media3/common/ParserException;->dataType:I

    .line 407
    .line 408
    if-ne v4, v15, :cond_8

    .line 409
    .line 410
    iget-boolean v2, v1, Landroidx/media3/common/ParserException;->contentIsMalformed:Z

    .line 411
    .line 412
    if-eqz v2, :cond_7

    .line 413
    .line 414
    const/16 v2, 0xbb9

    .line 415
    .line 416
    goto :goto_a

    .line 417
    :cond_7
    const/16 v2, 0xbbb

    .line 418
    .line 419
    goto :goto_a

    .line 420
    :cond_8
    if-ne v4, v3, :cond_a

    .line 421
    .line 422
    iget-boolean v2, v1, Landroidx/media3/common/ParserException;->contentIsMalformed:Z

    .line 423
    .line 424
    if-eqz v2, :cond_9

    .line 425
    .line 426
    const/16 v2, 0xbba

    .line 427
    .line 428
    goto :goto_a

    .line 429
    :cond_9
    const/16 v2, 0xbbc

    .line 430
    .line 431
    :cond_a
    :goto_a
    invoke-direct {v11, v1, v2}, Landroidx/media3/exoplayer/r2;->Q(Ljava/io/IOException;I)V

    .line 432
    .line 433
    .line 434
    goto/16 :goto_11

    .line 435
    .line 436
    :goto_b
    iget v2, v1, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;->errorCode:I

    .line 437
    .line 438
    invoke-direct {v11, v1, v2}, Landroidx/media3/exoplayer/r2;->Q(Ljava/io/IOException;I)V

    .line 439
    .line 440
    .line 441
    goto/16 :goto_11

    .line 442
    .line 443
    :goto_c
    iget v2, v1, Landroidx/media3/exoplayer/ExoPlaybackException;->type:I

    .line 444
    .line 445
    if-ne v2, v15, :cond_c

    .line 446
    .line 447
    iget-object v2, v11, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 448
    .line 449
    invoke-virtual {v2}, Landroidx/media3/exoplayer/b3;->y()Landroidx/media3/exoplayer/y2;

    .line 450
    .line 451
    .line 452
    move-result-object v2

    .line 453
    if-eqz v2, :cond_c

    .line 454
    .line 455
    iget-object v4, v11, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 456
    .line 457
    iget v5, v1, Landroidx/media3/exoplayer/ExoPlaybackException;->rendererIndex:I

    .line 458
    .line 459
    array-length v6, v4

    .line 460
    rem-int v6, v5, v6

    .line 461
    .line 462
    aget-object v4, v4, v6

    .line 463
    .line 464
    invoke-virtual {v4, v5}, Landroidx/media3/exoplayer/a4;->z(I)Z

    .line 465
    .line 466
    .line 467
    move-result v4

    .line 468
    if-eqz v4, :cond_b

    .line 469
    .line 470
    invoke-virtual {v2}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    .line 471
    .line 472
    .line 473
    move-result-object v4

    .line 474
    if-eqz v4, :cond_b

    .line 475
    .line 476
    invoke-virtual {v2}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    iget-object v2, v2, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 481
    .line 482
    iget-object v2, v2, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    .line 483
    .line 484
    goto :goto_d

    .line 485
    :cond_b
    iget-object v2, v2, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 486
    .line 487
    iget-object v2, v2, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    .line 488
    .line 489
    :goto_d
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/ExoPlaybackException;->copyWithMediaPeriodId(Landroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 490
    .line 491
    .line 492
    move-result-object v1

    .line 493
    :cond_c
    iget v2, v1, Landroidx/media3/exoplayer/ExoPlaybackException;->type:I

    .line 494
    .line 495
    if-ne v2, v15, :cond_e

    .line 496
    .line 497
    iget-object v2, v11, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    .line 498
    .line 499
    iget v4, v1, Landroidx/media3/exoplayer/ExoPlaybackException;->rendererIndex:I

    .line 500
    .line 501
    array-length v5, v2

    .line 502
    rem-int v5, v4, v5

    .line 503
    .line 504
    aget-object v2, v2, v5

    .line 505
    .line 506
    invoke-virtual {v2, v4}, Landroidx/media3/exoplayer/a4;->z(I)Z

    .line 507
    .line 508
    .line 509
    move-result v2

    .line 510
    if-eqz v2, :cond_e

    .line 511
    .line 512
    iput-boolean v15, v11, Landroidx/media3/exoplayer/r2;->c0:Z

    .line 513
    .line 514
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->x()V

    .line 515
    .line 516
    .line 517
    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 518
    .line 519
    invoke-virtual {v1}, Landroidx/media3/exoplayer/b3;->x()Landroidx/media3/exoplayer/y2;

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    iget-object v2, v11, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 524
    .line 525
    invoke-virtual {v2}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    .line 526
    .line 527
    .line 528
    move-result-object v2

    .line 529
    iget-object v4, v11, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 530
    .line 531
    invoke-virtual {v4}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    .line 532
    .line 533
    .line 534
    move-result-object v4

    .line 535
    if-eq v4, v1, :cond_d

    .line 536
    .line 537
    :goto_e
    if-eqz v2, :cond_d

    .line 538
    .line 539
    invoke-virtual {v2}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    .line 540
    .line 541
    .line 542
    move-result-object v4

    .line 543
    if-eq v4, v1, :cond_d

    .line 544
    .line 545
    invoke-virtual {v2}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    .line 546
    .line 547
    .line 548
    move-result-object v2

    .line 549
    goto :goto_e

    .line 550
    :cond_d
    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 551
    .line 552
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/b3;->O(Landroidx/media3/exoplayer/y2;)I

    .line 553
    .line 554
    .line 555
    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 556
    .line 557
    iget v1, v1, Landroidx/media3/exoplayer/r3;->e:I

    .line 558
    .line 559
    if-eq v1, v3, :cond_15

    .line 560
    .line 561
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->g0()V

    .line 562
    .line 563
    .line 564
    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    .line 565
    .line 566
    const/4 v2, 0x2

    .line 567
    invoke-interface {v1, v2}, Landroidx/media3/common/util/p;->sendEmptyMessage(I)Z

    .line 568
    .line 569
    .line 570
    goto/16 :goto_11

    .line 571
    .line 572
    :cond_e
    iget-object v2, v11, Landroidx/media3/exoplayer/r2;->W:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 573
    .line 574
    if-eqz v2, :cond_f

    .line 575
    .line 576
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 577
    .line 578
    .line 579
    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->W:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 580
    .line 581
    :cond_f
    move-object v10, v1

    .line 582
    iget v1, v10, Landroidx/media3/exoplayer/ExoPlaybackException;->type:I

    .line 583
    .line 584
    if-ne v1, v15, :cond_11

    .line 585
    .line 586
    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 587
    .line 588
    invoke-virtual {v1}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    .line 589
    .line 590
    .line 591
    move-result-object v1

    .line 592
    iget-object v2, v11, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 593
    .line 594
    invoke-virtual {v2}, Landroidx/media3/exoplayer/b3;->y()Landroidx/media3/exoplayer/y2;

    .line 595
    .line 596
    .line 597
    move-result-object v2

    .line 598
    if-eq v1, v2, :cond_11

    .line 599
    .line 600
    :goto_f
    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 601
    .line 602
    invoke-virtual {v1}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    .line 603
    .line 604
    .line 605
    move-result-object v1

    .line 606
    iget-object v2, v11, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 607
    .line 608
    invoke-virtual {v2}, Landroidx/media3/exoplayer/b3;->y()Landroidx/media3/exoplayer/y2;

    .line 609
    .line 610
    .line 611
    move-result-object v2

    .line 612
    if-eq v1, v2, :cond_10

    .line 613
    .line 614
    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 615
    .line 616
    invoke-virtual {v1}, Landroidx/media3/exoplayer/b3;->b()Landroidx/media3/exoplayer/y2;

    .line 617
    .line 618
    .line 619
    goto :goto_f

    .line 620
    :cond_10
    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    .line 621
    .line 622
    invoke-virtual {v1}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    .line 623
    .line 624
    .line 625
    move-result-object v1

    .line 626
    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    .line 628
    .line 629
    move-result-object v1

    .line 630
    check-cast v1, Landroidx/media3/exoplayer/y2;

    .line 631
    .line 632
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->j0()V

    .line 633
    .line 634
    .line 635
    iget-object v1, v1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    .line 636
    .line 637
    iget-object v2, v1, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    .line 638
    .line 639
    iget-wide v7, v1, Landroidx/media3/exoplayer/z2;->b:J

    .line 640
    .line 641
    iget-wide v5, v1, Landroidx/media3/exoplayer/z2;->c:J

    .line 642
    .line 643
    const/4 v9, 0x1

    .line 644
    const/16 v16, 0x0

    .line 645
    .line 646
    move-object/from16 v1, p0

    .line 647
    .line 648
    move-wide v3, v7

    .line 649
    move-object v14, v10

    .line 650
    move/from16 v10, v16

    .line 651
    .line 652
    invoke-direct/range {v1 .. v10}, Landroidx/media3/exoplayer/r2;->X(Landroidx/media3/exoplayer/source/r$b;JJJZI)Landroidx/media3/exoplayer/r3;

    .line 653
    .line 654
    .line 655
    move-result-object v1

    .line 656
    iput-object v1, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 657
    .line 658
    goto :goto_10

    .line 659
    :cond_11
    move-object v14, v10

    .line 660
    :goto_10
    iget-boolean v1, v14, Landroidx/media3/exoplayer/ExoPlaybackException;->isRecoverable:Z

    .line 661
    .line 662
    if-eqz v1, :cond_14

    .line 663
    .line 664
    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->W:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 665
    .line 666
    if-eqz v1, :cond_12

    .line 667
    .line 668
    iget v1, v14, Landroidx/media3/common/PlaybackException;->errorCode:I

    .line 669
    .line 670
    const/16 v2, 0x138c

    .line 671
    .line 672
    if-eq v1, v2, :cond_12

    .line 673
    .line 674
    const/16 v2, 0x138b

    .line 675
    .line 676
    if-ne v1, v2, :cond_14

    .line 677
    .line 678
    :cond_12
    const-string v1, "Recoverable renderer error"

    .line 679
    .line 680
    invoke-static {v13, v1, v14}, Landroidx/media3/common/util/u;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 681
    .line 682
    .line 683
    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->W:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 684
    .line 685
    if-nez v1, :cond_13

    .line 686
    .line 687
    iput-object v14, v11, Landroidx/media3/exoplayer/r2;->W:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 688
    .line 689
    :cond_13
    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    .line 690
    .line 691
    const/16 v2, 0x19

    .line 692
    .line 693
    invoke-interface {v1, v2, v14}, Landroidx/media3/common/util/p;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/p$a;

    .line 694
    .line 695
    .line 696
    move-result-object v2

    .line 697
    invoke-interface {v1, v2}, Landroidx/media3/common/util/p;->b(Landroidx/media3/common/util/p$a;)Z

    .line 698
    .line 699
    .line 700
    goto :goto_11

    .line 701
    :cond_14
    invoke-static {v13, v12, v14}, Landroidx/media3/common/util/u;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 702
    .line 703
    .line 704
    const/4 v1, 0x0

    .line 705
    invoke-direct {v11, v15, v1}, Landroidx/media3/exoplayer/r2;->I1(ZZ)V

    .line 706
    .line 707
    .line 708
    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 709
    .line 710
    invoke-virtual {v1, v14}, Landroidx/media3/exoplayer/r3;->f(Landroidx/media3/exoplayer/ExoPlaybackException;)Landroidx/media3/exoplayer/r3;

    .line 711
    .line 712
    .line 713
    move-result-object v1

    .line 714
    iput-object v1, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    .line 715
    .line 716
    :cond_15
    :goto_11
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->j0()V

    .line 717
    .line 718
    .line 719
    return v15

    .line 720
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public i1(Ljava/util/List;IJLf2/v;)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    .line 2
    .line 3
    new-instance v8, Landroidx/media3/exoplayer/r2$b;

    .line 4
    .line 5
    const/4 v7, 0x0

    .line 6
    move-object v1, v8

    .line 7
    move-object v2, p1

    .line 8
    move-object v3, p5

    .line 9
    move v4, p2

    .line 10
    move-wide v5, p3

    .line 11
    invoke-direct/range {v1 .. v7}, Landroidx/media3/exoplayer/r2$b;-><init>(Ljava/util/List;Lf2/v;IJLandroidx/media3/exoplayer/r2$a;)V

    .line 12
    .line 13
    .line 14
    const/16 p1, 0x11

    .line 15
    .line 16
    invoke-interface {v0, p1, v8}, Landroidx/media3/common/util/p;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/p$a;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p1}, Landroidx/media3/common/util/p$a;->a()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public l1(ZII)V
    .locals 1

    .line 1
    shl-int/lit8 p3, p3, 0x4

    .line 2
    .line 3
    or-int/2addr p2, p3

    .line 4
    iget-object p3, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-interface {p3, v0, p1, p2}, Landroidx/media3/common/util/p;->obtainMessage(III)Landroidx/media3/common/util/p$a;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p1}, Landroidx/media3/common/util/p$a;->a()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public n1(Landroidx/media3/common/z;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-interface {v0, v1, p1}, Landroidx/media3/common/util/p;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/p$a;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-interface {p1}, Landroidx/media3/common/util/p$a;->a()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onPlaybackParametersChanged(Landroidx/media3/common/z;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Landroidx/media3/common/util/p;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/p$a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Landroidx/media3/common/util/p$a;->a()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onTrackSelectionsInvalidated()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-interface {v0, v1}, Landroidx/media3/common/util/p;->sendEmptyMessage(I)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public p(ILjava/util/List;Lf2/v;)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    .line 2
    .line 3
    new-instance v8, Landroidx/media3/exoplayer/r2$b;

    .line 4
    .line 5
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    const/4 v7, 0x0

    .line 11
    const/4 v4, -0x1

    .line 12
    move-object v1, v8

    .line 13
    move-object v2, p2

    .line 14
    move-object v3, p3

    .line 15
    invoke-direct/range {v1 .. v7}, Landroidx/media3/exoplayer/r2$b;-><init>(Ljava/util/List;Lf2/v;IJLandroidx/media3/exoplayer/r2$a;)V

    .line 16
    .line 17
    .line 18
    const/16 p2, 0x12

    .line 19
    .line 20
    const/4 p3, 0x0

    .line 21
    invoke-interface {v0, p2, p1, p3, v8}, Landroidx/media3/common/util/p;->obtainMessage(IIILjava/lang/Object;)Landroidx/media3/common/util/p$a;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p1}, Landroidx/media3/common/util/p$a;->a()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public q1(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-interface {v0, v1, p1, v2}, Landroidx/media3/common/util/p;->obtainMessage(III)Landroidx/media3/common/util/p$a;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Landroidx/media3/common/util/p$a;->a()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public s(F)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    .line 2
    .line 3
    const/16 v0, 0x22

    .line 4
    .line 5
    invoke-interface {p1, v0}, Landroidx/media3/common/util/p;->sendEmptyMessage(I)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public t1(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0xc

    .line 5
    .line 6
    invoke-interface {v0, v2, p1, v1}, Landroidx/media3/common/util/p;->obtainMessage(III)Landroidx/media3/common/util/p$a;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Landroidx/media3/common/util/p$a;->a()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public u(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    .line 2
    .line 3
    const/16 v1, 0x21

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-interface {v0, v1, p1, v2}, Landroidx/media3/common/util/p;->obtainMessage(III)Landroidx/media3/common/util/p$a;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Landroidx/media3/common/util/p$a;->a()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public declared-synchronized x1(Ljava/lang/Object;J)Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/r2;->F:Z

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->j:Landroid/os/Looper;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    .line 26
    .line 27
    new-instance v3, Landroid/util/Pair;

    .line 28
    .line 29
    invoke-direct {v3, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    const/16 p1, 0x1e

    .line 33
    .line 34
    invoke-interface {v2, p1, v3}, Landroidx/media3/common/util/p;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/p$a;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-interface {p1}, Landroidx/media3/common/util/p$a;->a()V

    .line 39
    .line 40
    .line 41
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    cmp-long p1, p2, v2

    .line 47
    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    new-instance p1, Landroidx/media3/exoplayer/p2;

    .line 51
    .line 52
    invoke-direct {p1, v0}, Landroidx/media3/exoplayer/p2;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/r2;->Z1(Lcom/google/common/base/q;J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 59
    .line 60
    .line 61
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    .line 63
    return p1

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    monitor-exit p0

    .line 67
    return v1

    .line 68
    :cond_2
    :goto_0
    monitor-exit p0

    .line 69
    return v1

    .line 70
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    throw p1
.end method

.method public z1(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/16 v1, 0x20

    .line 8
    .line 9
    invoke-interface {v0, v1, p1}, Landroidx/media3/common/util/p;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/p$a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1}, Landroidx/media3/common/util/p$a;->a()V

    .line 14
    .line 15
    .line 16
    return-void
.end method
