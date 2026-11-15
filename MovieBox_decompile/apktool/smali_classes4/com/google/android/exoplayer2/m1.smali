.class final Lcom/google/android/exoplayer2/m1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/google/android/exoplayer2/source/n$a;
.implements Lna/b0$a;
.implements Lcom/google/android/exoplayer2/i2$d;
.implements Lcom/google/android/exoplayer2/o$a;
.implements Lcom/google/android/exoplayer2/t2$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/m1$c;,
        Lcom/google/android/exoplayer2/m1$b;,
        Lcom/google/android/exoplayer2/m1$d;,
        Lcom/google/android/exoplayer2/m1$g;,
        Lcom/google/android/exoplayer2/m1$h;,
        Lcom/google/android/exoplayer2/m1$f;,
        Lcom/google/android/exoplayer2/m1$e;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:I

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:I

.field private K:Lcom/google/android/exoplayer2/m1$h;

.field private L:J

.field private M:I

.field private N:Z

.field private O:Lcom/google/android/exoplayer2/ExoPlaybackException;

.field private P:J

.field private Q:J

.field private final a:[Lcom/google/android/exoplayer2/y2;

.field private final b:Ljava/util/Set;

.field private final c:[Lcom/google/android/exoplayer2/a3;

.field private final d:Lna/b0;

.field private final e:Lna/c0;

.field private final f:Lcom/google/android/exoplayer2/u1;

.field private final g:Lcom/google/android/exoplayer2/upstream/e;

.field private final h:Lcom/google/android/exoplayer2/util/o;

.field private final i:Landroid/os/HandlerThread;

.field private final j:Landroid/os/Looper;

.field private final k:Lcom/google/android/exoplayer2/l3$d;

.field private final l:Lcom/google/android/exoplayer2/l3$b;

.field private final m:J

.field private final n:Z

.field private final o:Lcom/google/android/exoplayer2/o;

.field private final p:Ljava/util/ArrayList;

.field private final q:Lcom/google/android/exoplayer2/util/e;

.field private final r:Lcom/google/android/exoplayer2/m1$f;

.field private final s:Lcom/google/android/exoplayer2/f2;

.field private final t:Lcom/google/android/exoplayer2/i2;

.field private final u:Lcom/google/android/exoplayer2/t1;

.field private final v:J

.field private w:Lcom/google/android/exoplayer2/d3;

.field private x:Lcom/google/android/exoplayer2/m2;

.field private y:Lcom/google/android/exoplayer2/m1$e;

.field private z:Z


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/y2;Lna/b0;Lna/c0;Lcom/google/android/exoplayer2/u1;Lcom/google/android/exoplayer2/upstream/e;IZLg9/a;Lcom/google/android/exoplayer2/d3;Lcom/google/android/exoplayer2/t1;JZLandroid/os/Looper;Lcom/google/android/exoplayer2/util/e;Lcom/google/android/exoplayer2/m1$f;Lg9/u1;)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p8

    move-wide/from16 v5, p11

    move-object/from16 v7, p15

    move-object/from16 v8, p17

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v9, p16

    .line 2
    iput-object v9, v0, Lcom/google/android/exoplayer2/m1;->r:Lcom/google/android/exoplayer2/m1$f;

    .line 3
    iput-object v1, v0, Lcom/google/android/exoplayer2/m1;->a:[Lcom/google/android/exoplayer2/y2;

    .line 4
    iput-object v2, v0, Lcom/google/android/exoplayer2/m1;->d:Lna/b0;

    move-object v9, p3

    .line 5
    iput-object v9, v0, Lcom/google/android/exoplayer2/m1;->e:Lna/c0;

    move-object/from16 v10, p4

    .line 6
    iput-object v10, v0, Lcom/google/android/exoplayer2/m1;->f:Lcom/google/android/exoplayer2/u1;

    .line 7
    iput-object v3, v0, Lcom/google/android/exoplayer2/m1;->g:Lcom/google/android/exoplayer2/upstream/e;

    move/from16 v11, p6

    .line 8
    iput v11, v0, Lcom/google/android/exoplayer2/m1;->E:I

    move/from16 v11, p7

    .line 9
    iput-boolean v11, v0, Lcom/google/android/exoplayer2/m1;->F:Z

    move-object/from16 v11, p9

    .line 10
    iput-object v11, v0, Lcom/google/android/exoplayer2/m1;->w:Lcom/google/android/exoplayer2/d3;

    move-object/from16 v11, p10

    .line 11
    iput-object v11, v0, Lcom/google/android/exoplayer2/m1;->u:Lcom/google/android/exoplayer2/t1;

    .line 12
    iput-wide v5, v0, Lcom/google/android/exoplayer2/m1;->v:J

    .line 13
    iput-wide v5, v0, Lcom/google/android/exoplayer2/m1;->P:J

    move/from16 v5, p13

    .line 14
    iput-boolean v5, v0, Lcom/google/android/exoplayer2/m1;->A:Z

    .line 15
    iput-object v7, v0, Lcom/google/android/exoplayer2/m1;->q:Lcom/google/android/exoplayer2/util/e;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 16
    iput-wide v5, v0, Lcom/google/android/exoplayer2/m1;->Q:J

    .line 17
    invoke-interface/range {p4 .. p4}, Lcom/google/android/exoplayer2/u1;->getBackBufferDurationUs()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/exoplayer2/m1;->m:J

    .line 18
    invoke-interface/range {p4 .. p4}, Lcom/google/android/exoplayer2/u1;->retainBackBufferFromKeyframe()Z

    move-result v5

    iput-boolean v5, v0, Lcom/google/android/exoplayer2/m1;->n:Z

    .line 19
    invoke-static {p3}, Lcom/google/android/exoplayer2/m2;->j(Lna/c0;)Lcom/google/android/exoplayer2/m2;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 20
    new-instance v6, Lcom/google/android/exoplayer2/m1$e;

    invoke-direct {v6, v5}, Lcom/google/android/exoplayer2/m1$e;-><init>(Lcom/google/android/exoplayer2/m2;)V

    iput-object v6, v0, Lcom/google/android/exoplayer2/m1;->y:Lcom/google/android/exoplayer2/m1$e;

    .line 21
    array-length v5, v1

    new-array v5, v5, [Lcom/google/android/exoplayer2/a3;

    iput-object v5, v0, Lcom/google/android/exoplayer2/m1;->c:[Lcom/google/android/exoplayer2/a3;

    const/4 v5, 0x0

    .line 22
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_0

    .line 23
    aget-object v6, v1, v5

    invoke-interface {v6, v5, v8}, Lcom/google/android/exoplayer2/y2;->h(ILg9/u1;)V

    .line 24
    iget-object v6, v0, Lcom/google/android/exoplayer2/m1;->c:[Lcom/google/android/exoplayer2/a3;

    aget-object v9, v1, v5

    invoke-interface {v9}, Lcom/google/android/exoplayer2/y2;->getCapabilities()Lcom/google/android/exoplayer2/a3;

    move-result-object v9

    aput-object v9, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 25
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/o;

    invoke-direct {v1, p0, v7}, Lcom/google/android/exoplayer2/o;-><init>(Lcom/google/android/exoplayer2/o$a;Lcom/google/android/exoplayer2/util/e;)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/m1;->o:Lcom/google/android/exoplayer2/o;

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplayer2/m1;->p:Ljava/util/ArrayList;

    .line 27
    invoke-static {}, Lcom/google/common/collect/Sets;->h()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/m1;->b:Ljava/util/Set;

    .line 28
    new-instance v1, Lcom/google/android/exoplayer2/l3$d;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/l3$d;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplayer2/m1;->k:Lcom/google/android/exoplayer2/l3$d;

    .line 29
    new-instance v1, Lcom/google/android/exoplayer2/l3$b;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/l3$b;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplayer2/m1;->l:Lcom/google/android/exoplayer2/l3$b;

    .line 30
    invoke-virtual {p2, p0, v3}, Lna/b0;->c(Lna/b0$a;Lcom/google/android/exoplayer2/upstream/e;)V

    const/4 v1, 0x1

    .line 31
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/m1;->N:Z

    .line 32
    new-instance v1, Landroid/os/Handler;

    move-object/from16 v2, p14

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 33
    new-instance v2, Lcom/google/android/exoplayer2/f2;

    invoke-direct {v2, v4, v1}, Lcom/google/android/exoplayer2/f2;-><init>(Lg9/a;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 34
    new-instance v2, Lcom/google/android/exoplayer2/i2;

    invoke-direct {v2, p0, v4, v1, v8}, Lcom/google/android/exoplayer2/i2;-><init>(Lcom/google/android/exoplayer2/i2$d;Lg9/a;Landroid/os/Handler;Lg9/u1;)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/m1;->t:Lcom/google/android/exoplayer2/i2;

    .line 35
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ExoPlayer:Playback"

    const/16 v3, -0x10

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/m1;->i:Landroid/os/HandlerThread;

    .line 36
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 37
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/m1;->j:Landroid/os/Looper;

    .line 38
    invoke-interface {v7, v1, p0}, Lcom/google/android/exoplayer2/util/e;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/o;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/m1;->h:Lcom/google/android/exoplayer2/util/o;

    return-void
.end method

.method private A()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 2
    .line 3
    iget-wide v0, v0, Lcom/google/android/exoplayer2/m2;->p:J

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/m1;->B(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method private A0(Lcom/google/android/exoplayer2/m1$h;)V
    .locals 18

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v1, v11, Lcom/google/android/exoplayer2/m1;->y:Lcom/google/android/exoplayer2/m1$e;

    .line 6
    .line 7
    const/4 v8, 0x1

    .line 8
    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/m1$e;->b(I)V

    .line 9
    .line 10
    .line 11
    iget-object v1, v11, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 14
    .line 15
    iget v4, v11, Lcom/google/android/exoplayer2/m1;->E:I

    .line 16
    .line 17
    iget-boolean v5, v11, Lcom/google/android/exoplayer2/m1;->F:Z

    .line 18
    .line 19
    iget-object v6, v11, Lcom/google/android/exoplayer2/m1;->k:Lcom/google/android/exoplayer2/l3$d;

    .line 20
    .line 21
    iget-object v7, v11, Lcom/google/android/exoplayer2/m1;->l:Lcom/google/android/exoplayer2/l3$b;

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    move-object/from16 v2, p1

    .line 25
    .line 26
    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/m1;->v0(Lcom/google/android/exoplayer2/l3;Lcom/google/android/exoplayer2/m1$h;ZIZLcom/google/android/exoplayer2/l3$d;Lcom/google/android/exoplayer2/l3$b;)Landroid/util/Pair;

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
    iget-object v7, v11, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 41
    .line 42
    iget-object v7, v7, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 43
    .line 44
    invoke-direct {v11, v7}, Lcom/google/android/exoplayer2/m1;->y(Lcom/google/android/exoplayer2/l3;)Landroid/util/Pair;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v9, Lcom/google/android/exoplayer2/source/o$b;

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
    iget-object v7, v11, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 61
    .line 62
    iget-object v7, v7, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 63
    .line 64
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/l3;->u()Z

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
    iget-wide v9, v0, Lcom/google/android/exoplayer2/m1$h;->c:J

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
    iget-object v14, v11, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 97
    .line 98
    iget-object v15, v11, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 99
    .line 100
    iget-object v15, v15, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 101
    .line 102
    invoke-virtual {v14, v15, v7, v12, v13}, Lcom/google/android/exoplayer2/f2;->B(Lcom/google/android/exoplayer2/l3;Ljava/lang/Object;J)Lcom/google/android/exoplayer2/source/o$b;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    invoke-virtual {v7}, Lv9/j;->b()Z

    .line 107
    .line 108
    .line 109
    move-result v14

    .line 110
    if-eqz v14, :cond_3

    .line 111
    .line 112
    iget-object v4, v11, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 113
    .line 114
    iget-object v4, v4, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 115
    .line 116
    iget-object v5, v7, Lv9/j;->a:Ljava/lang/Object;

    .line 117
    .line 118
    iget-object v12, v11, Lcom/google/android/exoplayer2/m1;->l:Lcom/google/android/exoplayer2/l3$b;

    .line 119
    .line 120
    invoke-virtual {v4, v5, v12}, Lcom/google/android/exoplayer2/l3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/l3$b;)Lcom/google/android/exoplayer2/l3$b;

    .line 121
    .line 122
    .line 123
    iget-object v4, v11, Lcom/google/android/exoplayer2/m1;->l:Lcom/google/android/exoplayer2/l3$b;

    .line 124
    .line 125
    iget v5, v7, Lv9/j;->b:I

    .line 126
    .line 127
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/l3$b;->n(I)I

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    iget v5, v7, Lv9/j;->c:I

    .line 132
    .line 133
    if-ne v4, v5, :cond_2

    .line 134
    .line 135
    iget-object v4, v11, Lcom/google/android/exoplayer2/m1;->l:Lcom/google/android/exoplayer2/l3$b;

    .line 136
    .line 137
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/l3$b;->j()J

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
    iget-wide v14, v0, Lcom/google/android/exoplayer2/m1$h;->c:J

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
    iget-object v7, v11, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 164
    .line 165
    iget-object v7, v7, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 166
    .line 167
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/l3;->u()Z

    .line 168
    .line 169
    .line 170
    move-result v7

    .line 171
    if-eqz v7, :cond_5

    .line 172
    .line 173
    iput-object v0, v11, Lcom/google/android/exoplayer2/m1;->K:Lcom/google/android/exoplayer2/m1$h;

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
    iget-object v1, v11, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 184
    .line 185
    iget v1, v1, Lcom/google/android/exoplayer2/m2;->e:I

    .line 186
    .line 187
    if-eq v1, v8, :cond_6

    .line 188
    .line 189
    invoke-direct {v11, v0}, Lcom/google/android/exoplayer2/m1;->X0(I)V

    .line 190
    .line 191
    .line 192
    :cond_6
    invoke-direct {v11, v6, v8, v6, v8}, Lcom/google/android/exoplayer2/m1;->o0(ZZZZ)V

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
    iget-object v1, v11, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 199
    .line 200
    iget-object v1, v1, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 201
    .line 202
    invoke-virtual {v9, v1}, Lv9/j;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-eqz v1, :cond_a

    .line 207
    .line 208
    iget-object v1, v11, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 209
    .line 210
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/f2;->p()Lcom/google/android/exoplayer2/c2;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    if-eqz v1, :cond_8

    .line 215
    .line 216
    iget-boolean v7, v1, Lcom/google/android/exoplayer2/c2;->d:Z

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
    iget-object v1, v1, Lcom/google/android/exoplayer2/c2;->a:Lcom/google/android/exoplayer2/source/n;

    .line 225
    .line 226
    iget-object v2, v11, Lcom/google/android/exoplayer2/m1;->w:Lcom/google/android/exoplayer2/d3;

    .line 227
    .line 228
    invoke-interface {v1, v4, v5, v2}, Lcom/google/android/exoplayer2/source/n;->b(JLcom/google/android/exoplayer2/d3;)J

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
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/p0;->e1(J)J

    .line 235
    .line 236
    .line 237
    move-result-wide v14

    .line 238
    iget-object v3, v11, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 239
    .line 240
    iget-wide v6, v3, Lcom/google/android/exoplayer2/m2;->r:J

    .line 241
    .line 242
    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/util/p0;->e1(J)J

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
    iget-object v3, v11, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 251
    .line 252
    iget v6, v3, Lcom/google/android/exoplayer2/m2;->e:I

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
    iget-wide v7, v3, Lcom/google/android/exoplayer2/m2;->r:J
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
    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/m1;->J(Lcom/google/android/exoplayer2/source/o$b;JJJZI)Lcom/google/android/exoplayer2/m2;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    iput-object v0, v11, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 275
    .line 276
    return-void

    .line 277
    :cond_a
    move-wide v1, v4

    .line 278
    :cond_b
    :try_start_1
    iget-object v3, v11, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 279
    .line 280
    iget v3, v3, Lcom/google/android/exoplayer2/m2;->e:I

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
    invoke-direct {v11, v9, v1, v2, v0}, Lcom/google/android/exoplayer2/m1;->B0(Lcom/google/android/exoplayer2/source/o$b;JZ)J

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
    or-int/2addr v8, v10

    .line 298
    :try_start_2
    iget-object v0, v11, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 299
    .line 300
    iget-object v4, v0, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 301
    .line 302
    iget-object v5, v0, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 303
    .line 304
    move-object/from16 v1, p0

    .line 305
    .line 306
    move-object v2, v4

    .line 307
    move-object v3, v9

    .line 308
    move-wide v6, v12

    .line 309
    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/m1;->l1(Lcom/google/android/exoplayer2/l3;Lcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/l3;Lcom/google/android/exoplayer2/source/o$b;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 310
    .line 311
    .line 312
    move v10, v8

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
    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/m1;->J(Lcom/google/android/exoplayer2/source/o$b;JJJZI)Lcom/google/android/exoplayer2/m2;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    iput-object v0, v11, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 327
    .line 328
    return-void

    .line 329
    :catchall_1
    move-exception v0

    .line 330
    move v10, v8

    .line 331
    move-wide v7, v14

    .line 332
    :goto_a
    const/4 v14, 0x2

    .line 333
    move-object/from16 v1, p0

    .line 334
    .line 335
    move-object v2, v9

    .line 336
    move-wide v3, v7

    .line 337
    move-wide v5, v12

    .line 338
    move v9, v10

    .line 339
    move v10, v14

    .line 340
    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/m1;->J(Lcom/google/android/exoplayer2/source/o$b;JJJZI)Lcom/google/android/exoplayer2/m2;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    iput-object v1, v11, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 345
    .line 346
    throw v0
.end method

.method private B(J)J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/f2;->j()Lcom/google/android/exoplayer2/c2;

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
    iget-wide v3, p0, Lcom/google/android/exoplayer2/m1;->L:J

    .line 13
    .line 14
    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/c2;->y(J)J

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

.method private B0(Lcom/google/android/exoplayer2/source/o$b;JZ)J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/f2;->p()Lcom/google/android/exoplayer2/c2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/f2;->q()Lcom/google/android/exoplayer2/c2;

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
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/m1;->C0(Lcom/google/android/exoplayer2/source/o$b;JZZ)J

    .line 25
    .line 26
    .line 27
    move-result-wide p1

    .line 28
    return-wide p1
.end method

.method private C(Lcom/google/android/exoplayer2/source/n;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/f2;->v(Lcom/google/android/exoplayer2/source/n;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 11
    .line 12
    iget-wide v0, p0, Lcom/google/android/exoplayer2/m1;->L:J

    .line 13
    .line 14
    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/f2;->y(J)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m1;->T()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private C0(Lcom/google/android/exoplayer2/source/o$b;JZZ)J
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m1;->g1()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/m1;->C:Z

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    if-nez p5, :cond_0

    .line 9
    .line 10
    iget-object p5, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 11
    .line 12
    iget p5, p5, Lcom/google/android/exoplayer2/m2;->e:I

    .line 13
    .line 14
    const/4 v2, 0x3

    .line 15
    if-ne p5, v2, :cond_1

    .line 16
    .line 17
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/m1;->X0(I)V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-object p5, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 21
    .line 22
    invoke-virtual {p5}, Lcom/google/android/exoplayer2/f2;->p()Lcom/google/android/exoplayer2/c2;

    .line 23
    .line 24
    .line 25
    move-result-object p5

    .line 26
    move-object v2, p5

    .line 27
    :goto_0
    if-eqz v2, :cond_3

    .line 28
    .line 29
    iget-object v3, v2, Lcom/google/android/exoplayer2/c2;->f:Lcom/google/android/exoplayer2/d2;

    .line 30
    .line 31
    iget-object v3, v3, Lcom/google/android/exoplayer2/d2;->a:Lcom/google/android/exoplayer2/source/o$b;

    .line 32
    .line 33
    invoke-virtual {p1, v3}, Lv9/j;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/c2;->j()Lcom/google/android/exoplayer2/c2;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    goto :goto_0

    .line 45
    :cond_3
    :goto_1
    if-nez p4, :cond_4

    .line 46
    .line 47
    if-ne p5, v2, :cond_4

    .line 48
    .line 49
    if-eqz v2, :cond_7

    .line 50
    .line 51
    invoke-virtual {v2, p2, p3}, Lcom/google/android/exoplayer2/c2;->z(J)J

    .line 52
    .line 53
    .line 54
    move-result-wide p4

    .line 55
    const-wide/16 v3, 0x0

    .line 56
    .line 57
    cmp-long p1, p4, v3

    .line 58
    .line 59
    if-gez p1, :cond_7

    .line 60
    .line 61
    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1;->a:[Lcom/google/android/exoplayer2/y2;

    .line 62
    .line 63
    array-length p4, p1

    .line 64
    move p5, v0

    .line 65
    :goto_2
    if-ge p5, p4, :cond_5

    .line 66
    .line 67
    aget-object v3, p1, p5

    .line 68
    .line 69
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/m1;->m(Lcom/google/android/exoplayer2/y2;)V

    .line 70
    .line 71
    .line 72
    add-int/lit8 p5, p5, 0x1

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_5
    if-eqz v2, :cond_7

    .line 76
    .line 77
    :goto_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/f2;->p()Lcom/google/android/exoplayer2/c2;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    if-eq p1, v2, :cond_6

    .line 84
    .line 85
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/f2;->b()Lcom/google/android/exoplayer2/c2;

    .line 88
    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_6
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 92
    .line 93
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/f2;->z(Lcom/google/android/exoplayer2/c2;)Z

    .line 94
    .line 95
    .line 96
    const-wide p4, 0xe8d4a51000L

    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, p4, p5}, Lcom/google/android/exoplayer2/c2;->x(J)V

    .line 102
    .line 103
    .line 104
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m1;->p()V

    .line 105
    .line 106
    .line 107
    :cond_7
    if-eqz v2, :cond_a

    .line 108
    .line 109
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 110
    .line 111
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/f2;->z(Lcom/google/android/exoplayer2/c2;)Z

    .line 112
    .line 113
    .line 114
    iget-boolean p1, v2, Lcom/google/android/exoplayer2/c2;->d:Z

    .line 115
    .line 116
    if-nez p1, :cond_8

    .line 117
    .line 118
    iget-object p1, v2, Lcom/google/android/exoplayer2/c2;->f:Lcom/google/android/exoplayer2/d2;

    .line 119
    .line 120
    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/d2;->b(J)Lcom/google/android/exoplayer2/d2;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    iput-object p1, v2, Lcom/google/android/exoplayer2/c2;->f:Lcom/google/android/exoplayer2/d2;

    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_8
    iget-boolean p1, v2, Lcom/google/android/exoplayer2/c2;->e:Z

    .line 128
    .line 129
    if-eqz p1, :cond_9

    .line 130
    .line 131
    iget-object p1, v2, Lcom/google/android/exoplayer2/c2;->a:Lcom/google/android/exoplayer2/source/n;

    .line 132
    .line 133
    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplayer2/source/n;->seekToUs(J)J

    .line 134
    .line 135
    .line 136
    move-result-wide p2

    .line 137
    iget-object p1, v2, Lcom/google/android/exoplayer2/c2;->a:Lcom/google/android/exoplayer2/source/n;

    .line 138
    .line 139
    iget-wide p4, p0, Lcom/google/android/exoplayer2/m1;->m:J

    .line 140
    .line 141
    sub-long p4, p2, p4

    .line 142
    .line 143
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/m1;->n:Z

    .line 144
    .line 145
    invoke-interface {p1, p4, p5, v2}, Lcom/google/android/exoplayer2/source/n;->discardBuffer(JZ)V

    .line 146
    .line 147
    .line 148
    :cond_9
    :goto_4
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/m1;->q0(J)V

    .line 149
    .line 150
    .line 151
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m1;->T()V

    .line 152
    .line 153
    .line 154
    goto :goto_5

    .line 155
    :cond_a
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 156
    .line 157
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/f2;->f()V

    .line 158
    .line 159
    .line 160
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/m1;->q0(J)V

    .line 161
    .line 162
    .line 163
    :goto_5
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/m1;->E(Z)V

    .line 164
    .line 165
    .line 166
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1;->h:Lcom/google/android/exoplayer2/util/o;

    .line 167
    .line 168
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/util/o;->sendEmptyMessage(I)Z

    .line 169
    .line 170
    .line 171
    return-wide p2
.end method

.method private D(Ljava/io/IOException;I)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForSource(Ljava/io/IOException;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/f2;->p()Lcom/google/android/exoplayer2/c2;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    iget-object p2, p2, Lcom/google/android/exoplayer2/c2;->f:Lcom/google/android/exoplayer2/d2;

    .line 14
    .line 15
    iget-object p2, p2, Lcom/google/android/exoplayer2/d2;->a:Lcom/google/android/exoplayer2/source/o$b;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->copyWithMediaPeriodId(Lv9/j;)Lcom/google/android/exoplayer2/ExoPlaybackException;

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
    invoke-static {p2, v0, p1}, Lcom/google/android/exoplayer2/util/s;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    const/4 p2, 0x0

    .line 29
    invoke-direct {p0, p2, p2}, Lcom/google/android/exoplayer2/m1;->f1(ZZ)V

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 33
    .line 34
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/m2;->e(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lcom/google/android/exoplayer2/m2;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 39
    .line 40
    return-void
.end method

.method private D0(Lcom/google/android/exoplayer2/t2;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/t2;->f()J

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
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/m1;->E0(Lcom/google/android/exoplayer2/t2;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/l3;->u()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->p:Ljava/util/ArrayList;

    .line 29
    .line 30
    new-instance v1, Lcom/google/android/exoplayer2/m1$d;

    .line 31
    .line 32
    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/m1$d;-><init>(Lcom/google/android/exoplayer2/t2;)V

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
    new-instance v0, Lcom/google/android/exoplayer2/m1$d;

    .line 40
    .line 41
    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/m1$d;-><init>(Lcom/google/android/exoplayer2/t2;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 45
    .line 46
    iget-object v4, v1, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 47
    .line 48
    iget v5, p0, Lcom/google/android/exoplayer2/m1;->E:I

    .line 49
    .line 50
    iget-boolean v6, p0, Lcom/google/android/exoplayer2/m1;->F:Z

    .line 51
    .line 52
    iget-object v7, p0, Lcom/google/android/exoplayer2/m1;->k:Lcom/google/android/exoplayer2/l3$d;

    .line 53
    .line 54
    iget-object v8, p0, Lcom/google/android/exoplayer2/m1;->l:Lcom/google/android/exoplayer2/l3$b;

    .line 55
    .line 56
    move-object v2, v0

    .line 57
    move-object v3, v4

    .line 58
    invoke-static/range {v2 .. v8}, Lcom/google/android/exoplayer2/m1;->s0(Lcom/google/android/exoplayer2/m1$d;Lcom/google/android/exoplayer2/l3;Lcom/google/android/exoplayer2/l3;IZLcom/google/android/exoplayer2/l3$d;Lcom/google/android/exoplayer2/l3$b;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1;->p:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1;->p:Ljava/util/ArrayList;

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
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/t2;->k(Z)V

    .line 77
    .line 78
    .line 79
    :goto_0
    return-void
.end method

.method private E(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/f2;->j()Lcom/google/android/exoplayer2/c2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/c2;->f:Lcom/google/android/exoplayer2/d2;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/google/android/exoplayer2/d2;->a:Lcom/google/android/exoplayer2/source/o$b;

    .line 17
    .line 18
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 19
    .line 20
    iget-object v2, v2, Lcom/google/android/exoplayer2/m2;->k:Lcom/google/android/exoplayer2/source/o$b;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Lv9/j;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    iget-object v3, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 29
    .line 30
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/m2;->b(Lcom/google/android/exoplayer2/source/o$b;)Lcom/google/android/exoplayer2/m2;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iput-object v1, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 35
    .line 36
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    iget-wide v3, v1, Lcom/google/android/exoplayer2/m2;->r:J

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c2;->i()J

    .line 44
    .line 45
    .line 46
    move-result-wide v3

    .line 47
    :goto_1
    iput-wide v3, v1, Lcom/google/android/exoplayer2/m2;->p:J

    .line 48
    .line 49
    iget-object v1, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 50
    .line 51
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m1;->A()J

    .line 52
    .line 53
    .line 54
    move-result-wide v3

    .line 55
    iput-wide v3, v1, Lcom/google/android/exoplayer2/m2;->q:J

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
    iget-boolean p1, v0, Lcom/google/android/exoplayer2/c2;->d:Z

    .line 64
    .line 65
    if-eqz p1, :cond_4

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c2;->n()Lv9/y;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c2;->o()Lna/c0;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/m1;->i1(Lv9/y;Lna/c0;)V

    .line 76
    .line 77
    .line 78
    :cond_4
    return-void
.end method

.method private E0(Lcom/google/android/exoplayer2/t2;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/t2;->c()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/m1;->j:Landroid/os/Looper;

    .line 6
    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/m1;->l(Lcom/google/android/exoplayer2/t2;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 13
    .line 14
    iget p1, p1, Lcom/google/android/exoplayer2/m2;->e:I

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
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1;->h:Lcom/google/android/exoplayer2/util/o;

    .line 23
    .line 24
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/util/o;->sendEmptyMessage(I)Z

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->h:Lcom/google/android/exoplayer2/util/o;

    .line 29
    .line 30
    const/16 v1, 0xf

    .line 31
    .line 32
    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/o;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/o$a;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/o$a;->a()V

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_0
    return-void
.end method

.method private F(Lcom/google/android/exoplayer2/l3;Z)V
    .locals 24

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    move-object/from16 v12, p1

    .line 4
    .line 5
    iget-object v2, v11, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 6
    .line 7
    iget-object v3, v11, Lcom/google/android/exoplayer2/m1;->K:Lcom/google/android/exoplayer2/m1$h;

    .line 8
    .line 9
    iget-object v4, v11, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 10
    .line 11
    iget v5, v11, Lcom/google/android/exoplayer2/m1;->E:I

    .line 12
    .line 13
    iget-boolean v6, v11, Lcom/google/android/exoplayer2/m1;->F:Z

    .line 14
    .line 15
    iget-object v7, v11, Lcom/google/android/exoplayer2/m1;->k:Lcom/google/android/exoplayer2/l3$d;

    .line 16
    .line 17
    iget-object v8, v11, Lcom/google/android/exoplayer2/m1;->l:Lcom/google/android/exoplayer2/l3$b;

    .line 18
    .line 19
    move-object/from16 v1, p1

    .line 20
    .line 21
    invoke-static/range {v1 .. v8}, Lcom/google/android/exoplayer2/m1;->u0(Lcom/google/android/exoplayer2/l3;Lcom/google/android/exoplayer2/m2;Lcom/google/android/exoplayer2/m1$h;Lcom/google/android/exoplayer2/f2;IZLcom/google/android/exoplayer2/l3$d;Lcom/google/android/exoplayer2/l3$b;)Lcom/google/android/exoplayer2/m1$g;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    iget-object v8, v7, Lcom/google/android/exoplayer2/m1$g;->a:Lcom/google/android/exoplayer2/source/o$b;

    .line 26
    .line 27
    iget-wide v9, v7, Lcom/google/android/exoplayer2/m1$g;->c:J

    .line 28
    .line 29
    iget-boolean v0, v7, Lcom/google/android/exoplayer2/m1$g;->d:Z

    .line 30
    .line 31
    iget-wide v13, v7, Lcom/google/android/exoplayer2/m1$g;->b:J

    .line 32
    .line 33
    iget-object v1, v11, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 34
    .line 35
    iget-object v1, v1, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 36
    .line 37
    invoke-virtual {v1, v8}, Lv9/j;->equals(Ljava/lang/Object;)Z

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
    iget-object v1, v11, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 46
    .line 47
    iget-wide v1, v1, Lcom/google/android/exoplayer2/m2;->r:J

    .line 48
    .line 49
    cmp-long v1, v13, v1

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
    const/4 v4, 0x4

    .line 68
    :try_start_0
    iget-boolean v1, v7, Lcom/google/android/exoplayer2/m1$g;->e:Z

    .line 69
    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    iget-object v1, v11, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 73
    .line 74
    iget v1, v1, Lcom/google/android/exoplayer2/m2;->e:I

    .line 75
    .line 76
    if-eq v1, v15, :cond_2

    .line 77
    .line 78
    invoke-direct {v11, v4}, Lcom/google/android/exoplayer2/m1;->X0(I)V

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :catchall_0
    move-exception v0

    .line 83
    move/from16 v20, v4

    .line 84
    .line 85
    move v15, v5

    .line 86
    goto/16 :goto_8

    .line 87
    .line 88
    :cond_2
    :goto_2
    invoke-direct {v11, v5, v5, v5, v15}, Lcom/google/android/exoplayer2/m1;->o0(ZZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .line 90
    .line 91
    :cond_3
    if-nez v16, :cond_4

    .line 92
    .line 93
    :try_start_1
    iget-object v1, v11, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 94
    .line 95
    :try_start_2
    iget-wide v3, v11, Lcom/google/android/exoplayer2/m1;->L:J

    .line 96
    .line 97
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/m1;->x()J

    .line 98
    .line 99
    .line 100
    move-result-wide v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 101
    move-object/from16 v2, p1

    .line 102
    .line 103
    const/4 v15, -0x1

    .line 104
    const/16 v20, 0x4

    .line 105
    .line 106
    move v15, v5

    .line 107
    move-wide/from16 v5, v21

    .line 108
    .line 109
    :try_start_3
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/f2;->F(Lcom/google/android/exoplayer2/l3;JJ)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-nez v0, :cond_7

    .line 114
    .line 115
    invoke-direct {v11, v15}, Lcom/google/android/exoplayer2/m1;->z0(Z)V

    .line 116
    .line 117
    .line 118
    goto :goto_5

    .line 119
    :catchall_1
    move-exception v0

    .line 120
    :goto_3
    const/4 v6, 0x0

    .line 121
    goto/16 :goto_8

    .line 122
    .line 123
    :catchall_2
    move-exception v0

    .line 124
    move v15, v5

    .line 125
    const/16 v20, 0x4

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :catchall_3
    move-exception v0

    .line 129
    move/from16 v20, v4

    .line 130
    .line 131
    move v15, v5

    .line 132
    goto :goto_3

    .line 133
    :cond_4
    move/from16 v20, v4

    .line 134
    .line 135
    move v15, v5

    .line 136
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/l3;->u()Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-nez v1, :cond_7

    .line 141
    .line 142
    iget-object v1, v11, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 143
    .line 144
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/f2;->p()Lcom/google/android/exoplayer2/c2;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    :goto_4
    if-eqz v1, :cond_6

    .line 149
    .line 150
    iget-object v2, v1, Lcom/google/android/exoplayer2/c2;->f:Lcom/google/android/exoplayer2/d2;

    .line 151
    .line 152
    iget-object v2, v2, Lcom/google/android/exoplayer2/d2;->a:Lcom/google/android/exoplayer2/source/o$b;

    .line 153
    .line 154
    invoke-virtual {v2, v8}, Lv9/j;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    if-eqz v2, :cond_5

    .line 159
    .line 160
    iget-object v2, v11, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 161
    .line 162
    iget-object v3, v1, Lcom/google/android/exoplayer2/c2;->f:Lcom/google/android/exoplayer2/d2;

    .line 163
    .line 164
    invoke-virtual {v2, v12, v3}, Lcom/google/android/exoplayer2/f2;->r(Lcom/google/android/exoplayer2/l3;Lcom/google/android/exoplayer2/d2;)Lcom/google/android/exoplayer2/d2;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    iput-object v2, v1, Lcom/google/android/exoplayer2/c2;->f:Lcom/google/android/exoplayer2/d2;

    .line 169
    .line 170
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/c2;->A()V

    .line 171
    .line 172
    .line 173
    :cond_5
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/c2;->j()Lcom/google/android/exoplayer2/c2;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    goto :goto_4

    .line 178
    :cond_6
    invoke-direct {v11, v8, v13, v14, v0}, Lcom/google/android/exoplayer2/m1;->B0(Lcom/google/android/exoplayer2/source/o$b;JZ)J

    .line 179
    .line 180
    .line 181
    move-result-wide v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 182
    move-wide v13, v0

    .line 183
    :cond_7
    :goto_5
    iget-object v0, v11, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 184
    .line 185
    iget-object v4, v0, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 186
    .line 187
    iget-object v5, v0, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 188
    .line 189
    iget-boolean v0, v7, Lcom/google/android/exoplayer2/m1$g;->f:Z

    .line 190
    .line 191
    if-eqz v0, :cond_8

    .line 192
    .line 193
    move-wide v6, v13

    .line 194
    goto :goto_6

    .line 195
    :cond_8
    move-wide/from16 v6, v18

    .line 196
    .line 197
    :goto_6
    move-object/from16 v1, p0

    .line 198
    .line 199
    move-object/from16 v2, p1

    .line 200
    .line 201
    move-object v3, v8

    .line 202
    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/m1;->l1(Lcom/google/android/exoplayer2/l3;Lcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/l3;Lcom/google/android/exoplayer2/source/o$b;J)V

    .line 203
    .line 204
    .line 205
    if-nez v16, :cond_9

    .line 206
    .line 207
    iget-object v0, v11, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 208
    .line 209
    iget-wide v0, v0, Lcom/google/android/exoplayer2/m2;->c:J

    .line 210
    .line 211
    cmp-long v0, v9, v0

    .line 212
    .line 213
    if-eqz v0, :cond_c

    .line 214
    .line 215
    :cond_9
    iget-object v0, v11, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 216
    .line 217
    iget-object v1, v0, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 218
    .line 219
    iget-object v1, v1, Lv9/j;->a:Ljava/lang/Object;

    .line 220
    .line 221
    iget-object v0, v0, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 222
    .line 223
    if-eqz v16, :cond_a

    .line 224
    .line 225
    if-eqz p2, :cond_a

    .line 226
    .line 227
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/l3;->u()Z

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    if-nez v2, :cond_a

    .line 232
    .line 233
    iget-object v2, v11, Lcom/google/android/exoplayer2/m1;->l:Lcom/google/android/exoplayer2/l3$b;

    .line 234
    .line 235
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/l3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/l3$b;)Lcom/google/android/exoplayer2/l3$b;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/l3$b;->f:Z

    .line 240
    .line 241
    if-nez v0, :cond_a

    .line 242
    .line 243
    const/16 v23, 0x1

    .line 244
    .line 245
    goto :goto_7

    .line 246
    :cond_a
    move/from16 v23, v15

    .line 247
    .line 248
    :goto_7
    iget-object v0, v11, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 249
    .line 250
    iget-wide v5, v0, Lcom/google/android/exoplayer2/m2;->d:J

    .line 251
    .line 252
    invoke-virtual {v12, v1}, Lcom/google/android/exoplayer2/l3;->f(Ljava/lang/Object;)I

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    const/4 v1, -0x1

    .line 257
    if-ne v0, v1, :cond_b

    .line 258
    .line 259
    move/from16 v17, v20

    .line 260
    .line 261
    :cond_b
    move-object/from16 v1, p0

    .line 262
    .line 263
    move-object v2, v8

    .line 264
    move-wide v3, v13

    .line 265
    move-wide v7, v5

    .line 266
    move-wide v5, v9

    .line 267
    move/from16 v9, v23

    .line 268
    .line 269
    move/from16 v10, v17

    .line 270
    .line 271
    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/m1;->J(Lcom/google/android/exoplayer2/source/o$b;JJJZI)Lcom/google/android/exoplayer2/m2;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    iput-object v0, v11, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 276
    .line 277
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/m1;->p0()V

    .line 278
    .line 279
    .line 280
    iget-object v0, v11, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 281
    .line 282
    iget-object v0, v0, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 283
    .line 284
    invoke-direct {v11, v12, v0}, Lcom/google/android/exoplayer2/m1;->t0(Lcom/google/android/exoplayer2/l3;Lcom/google/android/exoplayer2/l3;)V

    .line 285
    .line 286
    .line 287
    iget-object v0, v11, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 288
    .line 289
    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/m2;->i(Lcom/google/android/exoplayer2/l3;)Lcom/google/android/exoplayer2/m2;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    iput-object v0, v11, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 294
    .line 295
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/l3;->u()Z

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    if-nez v0, :cond_d

    .line 300
    .line 301
    const/4 v6, 0x0

    .line 302
    iput-object v6, v11, Lcom/google/android/exoplayer2/m1;->K:Lcom/google/android/exoplayer2/m1$h;

    .line 303
    .line 304
    :cond_d
    invoke-direct {v11, v15}, Lcom/google/android/exoplayer2/m1;->E(Z)V

    .line 305
    .line 306
    .line 307
    return-void

    .line 308
    :goto_8
    iget-object v1, v11, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 309
    .line 310
    iget-object v4, v1, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 311
    .line 312
    iget-object v5, v1, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 313
    .line 314
    iget-boolean v1, v7, Lcom/google/android/exoplayer2/m1$g;->f:Z

    .line 315
    .line 316
    if-eqz v1, :cond_e

    .line 317
    .line 318
    move-wide/from16 v18, v13

    .line 319
    .line 320
    :cond_e
    move-object/from16 v1, p0

    .line 321
    .line 322
    move-object/from16 v2, p1

    .line 323
    .line 324
    move-object v3, v8

    .line 325
    move-object v15, v6

    .line 326
    move-wide/from16 v6, v18

    .line 327
    .line 328
    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/m1;->l1(Lcom/google/android/exoplayer2/l3;Lcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/l3;Lcom/google/android/exoplayer2/source/o$b;J)V

    .line 329
    .line 330
    .line 331
    if-nez v16, :cond_f

    .line 332
    .line 333
    iget-object v1, v11, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 334
    .line 335
    iget-wide v1, v1, Lcom/google/android/exoplayer2/m2;->c:J

    .line 336
    .line 337
    cmp-long v1, v9, v1

    .line 338
    .line 339
    if-eqz v1, :cond_12

    .line 340
    .line 341
    :cond_f
    iget-object v1, v11, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 342
    .line 343
    iget-object v2, v1, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 344
    .line 345
    iget-object v2, v2, Lv9/j;->a:Ljava/lang/Object;

    .line 346
    .line 347
    iget-object v1, v1, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 348
    .line 349
    if-eqz v16, :cond_10

    .line 350
    .line 351
    if-eqz p2, :cond_10

    .line 352
    .line 353
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/l3;->u()Z

    .line 354
    .line 355
    .line 356
    move-result v3

    .line 357
    if-nez v3, :cond_10

    .line 358
    .line 359
    iget-object v3, v11, Lcom/google/android/exoplayer2/m1;->l:Lcom/google/android/exoplayer2/l3$b;

    .line 360
    .line 361
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/l3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/l3$b;)Lcom/google/android/exoplayer2/l3$b;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    iget-boolean v1, v1, Lcom/google/android/exoplayer2/l3$b;->f:Z

    .line 366
    .line 367
    if-nez v1, :cond_10

    .line 368
    .line 369
    const/16 v23, 0x1

    .line 370
    .line 371
    goto :goto_9

    .line 372
    :cond_10
    const/16 v23, 0x0

    .line 373
    .line 374
    :goto_9
    iget-object v1, v11, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 375
    .line 376
    iget-wide v5, v1, Lcom/google/android/exoplayer2/m2;->d:J

    .line 377
    .line 378
    invoke-virtual {v12, v2}, Lcom/google/android/exoplayer2/l3;->f(Ljava/lang/Object;)I

    .line 379
    .line 380
    .line 381
    move-result v1

    .line 382
    const/4 v2, -0x1

    .line 383
    if-ne v1, v2, :cond_11

    .line 384
    .line 385
    move/from16 v17, v20

    .line 386
    .line 387
    :cond_11
    move-object/from16 v1, p0

    .line 388
    .line 389
    move-object v2, v8

    .line 390
    move-wide v3, v13

    .line 391
    move-wide v7, v5

    .line 392
    move-wide v5, v9

    .line 393
    move/from16 v9, v23

    .line 394
    .line 395
    move/from16 v10, v17

    .line 396
    .line 397
    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/m1;->J(Lcom/google/android/exoplayer2/source/o$b;JJJZI)Lcom/google/android/exoplayer2/m2;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    iput-object v1, v11, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 402
    .line 403
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/m1;->p0()V

    .line 404
    .line 405
    .line 406
    iget-object v1, v11, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 407
    .line 408
    iget-object v1, v1, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 409
    .line 410
    invoke-direct {v11, v12, v1}, Lcom/google/android/exoplayer2/m1;->t0(Lcom/google/android/exoplayer2/l3;Lcom/google/android/exoplayer2/l3;)V

    .line 411
    .line 412
    .line 413
    iget-object v1, v11, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 414
    .line 415
    invoke-virtual {v1, v12}, Lcom/google/android/exoplayer2/m2;->i(Lcom/google/android/exoplayer2/l3;)Lcom/google/android/exoplayer2/m2;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    iput-object v1, v11, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 420
    .line 421
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/l3;->u()Z

    .line 422
    .line 423
    .line 424
    move-result v1

    .line 425
    if-nez v1, :cond_13

    .line 426
    .line 427
    iput-object v15, v11, Lcom/google/android/exoplayer2/m1;->K:Lcom/google/android/exoplayer2/m1$h;

    .line 428
    .line 429
    :cond_13
    const/4 v1, 0x0

    .line 430
    invoke-direct {v11, v1}, Lcom/google/android/exoplayer2/m1;->E(Z)V

    .line 431
    .line 432
    .line 433
    throw v0
.end method

.method private F0(Lcom/google/android/exoplayer2/t2;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/t2;->c()Landroid/os/Looper;

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
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/t2;->k(Z)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/m1;->q:Lcom/google/android/exoplayer2/util/e;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-interface {v1, v0, v2}, Lcom/google/android/exoplayer2/util/e;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/o;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Lcom/google/android/exoplayer2/l1;

    .line 35
    .line 36
    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/l1;-><init>(Lcom/google/android/exoplayer2/m1;Lcom/google/android/exoplayer2/t2;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/o;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private G(Lcom/google/android/exoplayer2/source/n;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/f2;->v(Lcom/google/android/exoplayer2/source/n;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/f2;->j()Lcom/google/android/exoplayer2/c2;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->o:Lcom/google/android/exoplayer2/o;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o;->getPlaybackParameters()Lcom/google/android/exoplayer2/o2;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget v0, v0, Lcom/google/android/exoplayer2/o2;->a:F

    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/c2;->p(FLcom/google/android/exoplayer2/l3;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/c2;->n()Lv9/y;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/c2;->o()Lna/c0;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/m1;->i1(Lv9/y;Lna/c0;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/f2;->p()Lcom/google/android/exoplayer2/c2;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-ne p1, v0, :cond_1

    .line 49
    .line 50
    iget-object v0, p1, Lcom/google/android/exoplayer2/c2;->f:Lcom/google/android/exoplayer2/d2;

    .line 51
    .line 52
    iget-wide v0, v0, Lcom/google/android/exoplayer2/d2;->b:J

    .line 53
    .line 54
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/m1;->q0(J)V

    .line 55
    .line 56
    .line 57
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m1;->p()V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 61
    .line 62
    iget-object v2, v0, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 63
    .line 64
    iget-object p1, p1, Lcom/google/android/exoplayer2/c2;->f:Lcom/google/android/exoplayer2/d2;

    .line 65
    .line 66
    iget-wide v7, p1, Lcom/google/android/exoplayer2/d2;->b:J

    .line 67
    .line 68
    iget-wide v5, v0, Lcom/google/android/exoplayer2/m2;->c:J

    .line 69
    .line 70
    const/4 v9, 0x0

    .line 71
    const/4 v10, 0x5

    .line 72
    move-object v1, p0

    .line 73
    move-wide v3, v7

    .line 74
    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/m1;->J(Lcom/google/android/exoplayer2/source/o$b;JJJZI)Lcom/google/android/exoplayer2/m2;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iput-object p1, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 79
    .line 80
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m1;->T()V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method private G0(J)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->a:[Lcom/google/android/exoplayer2/y2;

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
    invoke-interface {v3}, Lcom/google/android/exoplayer2/y2;->getStream()Lv9/s;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    invoke-direct {p0, v3, p1, p2}, Lcom/google/android/exoplayer2/m1;->H0(Lcom/google/android/exoplayer2/y2;J)V

    .line 16
    .line 17
    .line 18
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    return-void
.end method

.method private H(Lcom/google/android/exoplayer2/o2;FZZ)V
    .locals 3

    .line 1
    if-eqz p3, :cond_1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    iget-object p3, p0, Lcom/google/android/exoplayer2/m1;->y:Lcom/google/android/exoplayer2/m1$e;

    .line 6
    .line 7
    const/4 p4, 0x1

    .line 8
    invoke-virtual {p3, p4}, Lcom/google/android/exoplayer2/m1$e;->b(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object p3, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 12
    .line 13
    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/m2;->f(Lcom/google/android/exoplayer2/o2;)Lcom/google/android/exoplayer2/m2;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    iput-object p3, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 18
    .line 19
    :cond_1
    iget p3, p1, Lcom/google/android/exoplayer2/o2;->a:F

    .line 20
    .line 21
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/m1;->m1(F)V

    .line 22
    .line 23
    .line 24
    iget-object p3, p0, Lcom/google/android/exoplayer2/m1;->a:[Lcom/google/android/exoplayer2/y2;

    .line 25
    .line 26
    array-length p4, p3

    .line 27
    const/4 v0, 0x0

    .line 28
    :goto_0
    if-ge v0, p4, :cond_3

    .line 29
    .line 30
    aget-object v1, p3, v0

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    iget v2, p1, Lcom/google/android/exoplayer2/o2;->a:F

    .line 35
    .line 36
    invoke-interface {v1, p2, v2}, Lcom/google/android/exoplayer2/y2;->d(FF)V

    .line 37
    .line 38
    .line 39
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    return-void
.end method

.method private H0(Lcom/google/android/exoplayer2/y2;J)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/y2;->setCurrentStreamFinal()V

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Lda/p;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p1, Lda/p;

    .line 9
    .line 10
    invoke-virtual {p1, p2, p3}, Lda/p;->H(J)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private I(Lcom/google/android/exoplayer2/o2;Z)V
    .locals 2

    .line 1
    iget v0, p1, Lcom/google/android/exoplayer2/o2;->a:F

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/android/exoplayer2/m1;->H(Lcom/google/android/exoplayer2/o2;FZZ)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private I0(ZLjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/m1;->G:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/m1;->G:Z

    .line 6
    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1;->a:[Lcom/google/android/exoplayer2/y2;

    .line 10
    .line 11
    array-length v0, p1

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_1

    .line 14
    .line 15
    aget-object v2, p1, v1

    .line 16
    .line 17
    invoke-static {v2}, Lcom/google/android/exoplayer2/m1;->O(Lcom/google/android/exoplayer2/y2;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    iget-object v3, p0, Lcom/google/android/exoplayer2/m1;->b:Ljava/util/Set;

    .line 24
    .line 25
    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    invoke-interface {v2}, Lcom/google/android/exoplayer2/y2;->reset()V

    .line 32
    .line 33
    .line 34
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    if-eqz p2, :cond_2

    .line 38
    .line 39
    monitor-enter p0

    .line 40
    const/4 p1, 0x1

    .line 41
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 45
    .line 46
    .line 47
    monitor-exit p0

    .line 48
    goto :goto_1

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p1

    .line 52
    :cond_2
    :goto_1
    return-void
.end method

.method private J(Lcom/google/android/exoplayer2/source/o$b;JJJZI)Lcom/google/android/exoplayer2/m2;
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object v2, p1

    .line 3
    move-wide/from16 v5, p4

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/m1;->N:Z

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    iget-object v1, v0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 10
    .line 11
    iget-wide v3, v1, Lcom/google/android/exoplayer2/m2;->r:J

    .line 12
    .line 13
    cmp-long v1, p2, v3

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    iget-object v1, v0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Lv9/j;->equals(Ljava/lang/Object;)Z

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
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/m1;->N:Z

    .line 32
    .line 33
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m1;->p0()V

    .line 34
    .line 35
    .line 36
    iget-object v1, v0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 37
    .line 38
    iget-object v3, v1, Lcom/google/android/exoplayer2/m2;->h:Lv9/y;

    .line 39
    .line 40
    iget-object v4, v1, Lcom/google/android/exoplayer2/m2;->i:Lna/c0;

    .line 41
    .line 42
    iget-object v1, v1, Lcom/google/android/exoplayer2/m2;->j:Ljava/util/List;

    .line 43
    .line 44
    iget-object v7, v0, Lcom/google/android/exoplayer2/m1;->t:Lcom/google/android/exoplayer2/i2;

    .line 45
    .line 46
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/i2;->s()Z

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    if-eqz v7, :cond_5

    .line 51
    .line 52
    iget-object v1, v0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/f2;->p()Lcom/google/android/exoplayer2/c2;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-nez v1, :cond_2

    .line 59
    .line 60
    sget-object v3, Lv9/y;->d:Lv9/y;

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/c2;->n()Lv9/y;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    :goto_2
    if-nez v1, :cond_3

    .line 68
    .line 69
    iget-object v4, v0, Lcom/google/android/exoplayer2/m1;->e:Lna/c0;

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/c2;->o()Lna/c0;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    :goto_3
    iget-object v7, v4, Lna/c0;->c:[Lna/s;

    .line 77
    .line 78
    invoke-direct {p0, v7}, Lcom/google/android/exoplayer2/m1;->t([Lna/s;)Lcom/google/common/collect/ImmutableList;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    if-eqz v1, :cond_4

    .line 83
    .line 84
    iget-object v8, v1, Lcom/google/android/exoplayer2/c2;->f:Lcom/google/android/exoplayer2/d2;

    .line 85
    .line 86
    iget-wide v9, v8, Lcom/google/android/exoplayer2/d2;->c:J

    .line 87
    .line 88
    cmp-long v9, v9, v5

    .line 89
    .line 90
    if-eqz v9, :cond_4

    .line 91
    .line 92
    invoke-virtual {v8, v5, v6}, Lcom/google/android/exoplayer2/d2;->a(J)Lcom/google/android/exoplayer2/d2;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    iput-object v8, v1, Lcom/google/android/exoplayer2/c2;->f:Lcom/google/android/exoplayer2/d2;

    .line 97
    .line 98
    :cond_4
    move-object v11, v3

    .line 99
    move-object v12, v4

    .line 100
    move-object v13, v7

    .line 101
    goto :goto_4

    .line 102
    :cond_5
    iget-object v7, v0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 103
    .line 104
    iget-object v7, v7, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 105
    .line 106
    invoke-virtual {p1, v7}, Lv9/j;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    if-nez v7, :cond_6

    .line 111
    .line 112
    sget-object v1, Lv9/y;->d:Lv9/y;

    .line 113
    .line 114
    iget-object v3, v0, Lcom/google/android/exoplayer2/m1;->e:Lna/c0;

    .line 115
    .line 116
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    move-object v11, v1

    .line 121
    move-object v12, v3

    .line 122
    move-object v13, v4

    .line 123
    goto :goto_4

    .line 124
    :cond_6
    move-object v13, v1

    .line 125
    move-object v11, v3

    .line 126
    move-object v12, v4

    .line 127
    :goto_4
    if-eqz p8, :cond_7

    .line 128
    .line 129
    iget-object v1, v0, Lcom/google/android/exoplayer2/m1;->y:Lcom/google/android/exoplayer2/m1$e;

    .line 130
    .line 131
    move/from16 v3, p9

    .line 132
    .line 133
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/m1$e;->e(I)V

    .line 134
    .line 135
    .line 136
    :cond_7
    iget-object v1, v0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 137
    .line 138
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m1;->A()J

    .line 139
    .line 140
    .line 141
    move-result-wide v9

    .line 142
    move-object v2, p1

    .line 143
    move-wide/from16 v3, p2

    .line 144
    .line 145
    move-wide/from16 v5, p4

    .line 146
    .line 147
    move-wide/from16 v7, p6

    .line 148
    .line 149
    invoke-virtual/range {v1 .. v13}, Lcom/google/android/exoplayer2/m2;->c(Lcom/google/android/exoplayer2/source/o$b;JJJJLv9/y;Lna/c0;Ljava/util/List;)Lcom/google/android/exoplayer2/m2;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    return-object v1
.end method

.method private J0(Lcom/google/android/exoplayer2/m1$b;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->y:Lcom/google/android/exoplayer2/m1$e;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/m1$e;->b(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/google/android/exoplayer2/m1$b;->a(Lcom/google/android/exoplayer2/m1$b;)I

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
    new-instance v0, Lcom/google/android/exoplayer2/m1$h;

    .line 15
    .line 16
    new-instance v1, Lcom/google/android/exoplayer2/u2;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/google/android/exoplayer2/m1$b;->b(Lcom/google/android/exoplayer2/m1$b;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {p1}, Lcom/google/android/exoplayer2/m1$b;->c(Lcom/google/android/exoplayer2/m1$b;)Lv9/t;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/u2;-><init>(Ljava/util/Collection;Lv9/t;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lcom/google/android/exoplayer2/m1$b;->a(Lcom/google/android/exoplayer2/m1$b;)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-static {p1}, Lcom/google/android/exoplayer2/m1$b;->d(Lcom/google/android/exoplayer2/m1$b;)J

    .line 34
    .line 35
    .line 36
    move-result-wide v3

    .line 37
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/m1$h;-><init>(Lcom/google/android/exoplayer2/l3;IJ)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/google/android/exoplayer2/m1;->K:Lcom/google/android/exoplayer2/m1$h;

    .line 41
    .line 42
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->t:Lcom/google/android/exoplayer2/i2;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/google/android/exoplayer2/m1$b;->b(Lcom/google/android/exoplayer2/m1$b;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {p1}, Lcom/google/android/exoplayer2/m1$b;->c(Lcom/google/android/exoplayer2/m1$b;)Lv9/t;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/i2;->B(Ljava/util/List;Lv9/t;)Lcom/google/android/exoplayer2/l3;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/m1;->F(Lcom/google/android/exoplayer2/l3;Z)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method private K(Lcom/google/android/exoplayer2/y2;Lcom/google/android/exoplayer2/c2;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/c2;->j()Lcom/google/android/exoplayer2/c2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p2, p2, Lcom/google/android/exoplayer2/c2;->f:Lcom/google/android/exoplayer2/d2;

    .line 6
    .line 7
    iget-boolean p2, p2, Lcom/google/android/exoplayer2/d2;->f:Z

    .line 8
    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    iget-boolean p2, v0, Lcom/google/android/exoplayer2/c2;->d:Z

    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    instance-of p2, p1, Lda/p;

    .line 16
    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    instance-of p2, p1, Lcom/google/android/exoplayer2/metadata/f;

    .line 20
    .line 21
    if-nez p2, :cond_0

    .line 22
    .line 23
    invoke-interface {p1}, Lcom/google/android/exoplayer2/y2;->e()J

    .line 24
    .line 25
    .line 26
    move-result-wide p1

    .line 27
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c2;->m()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    cmp-long p1, p1, v0

    .line 32
    .line 33
    if-ltz p1, :cond_1

    .line 34
    .line 35
    :cond_0
    const/4 p1, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 p1, 0x0

    .line 38
    :goto_0
    return p1
.end method

.method private L()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/f2;->q()Lcom/google/android/exoplayer2/c2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/c2;->d:Z

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
    iget-object v3, p0, Lcom/google/android/exoplayer2/m1;->a:[Lcom/google/android/exoplayer2/y2;

    .line 15
    .line 16
    array-length v4, v3

    .line 17
    if-ge v1, v4, :cond_3

    .line 18
    .line 19
    aget-object v3, v3, v1

    .line 20
    .line 21
    iget-object v4, v0, Lcom/google/android/exoplayer2/c2;->c:[Lv9/s;

    .line 22
    .line 23
    aget-object v4, v4, v1

    .line 24
    .line 25
    invoke-interface {v3}, Lcom/google/android/exoplayer2/y2;->getStream()Lv9/s;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    if-ne v5, v4, :cond_2

    .line 30
    .line 31
    if-eqz v4, :cond_1

    .line 32
    .line 33
    invoke-interface {v3}, Lcom/google/android/exoplayer2/y2;->hasReadStreamToEnd()Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-nez v4, :cond_1

    .line 38
    .line 39
    invoke-direct {p0, v3, v0}, Lcom/google/android/exoplayer2/m1;->K(Lcom/google/android/exoplayer2/y2;Lcom/google/android/exoplayer2/c2;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    :goto_1
    return v2

    .line 50
    :cond_3
    const/4 v0, 0x1

    .line 51
    return v0
.end method

.method private L0(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/m1;->I:Z

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/m1;->I:Z

    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 11
    .line 12
    iget-boolean p1, p1, Lcom/google/android/exoplayer2/m2;->o:Z

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1;->h:Lcom/google/android/exoplayer2/util/o;

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/util/o;->sendEmptyMessage(I)Z

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method private static M(ZLcom/google/android/exoplayer2/source/o$b;JLcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/l3$b;J)Z
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
    iget-object p0, p1, Lv9/j;->a:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object p2, p4, Lv9/j;->a:Ljava/lang/Object;

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
    invoke-virtual {p1}, Lv9/j;->b()Z

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
    iget p0, p1, Lv9/j;->b:I

    .line 27
    .line 28
    invoke-virtual {p5, p0}, Lcom/google/android/exoplayer2/l3$b;->t(I)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_2

    .line 33
    .line 34
    iget p0, p1, Lv9/j;->b:I

    .line 35
    .line 36
    iget p3, p1, Lv9/j;->c:I

    .line 37
    .line 38
    invoke-virtual {p5, p0, p3}, Lcom/google/android/exoplayer2/l3$b;->k(II)I

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
    iget p0, p1, Lv9/j;->b:I

    .line 46
    .line 47
    iget p1, p1, Lv9/j;->c:I

    .line 48
    .line 49
    invoke-virtual {p5, p0, p1}, Lcom/google/android/exoplayer2/l3$b;->k(II)I

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
    invoke-virtual {p4}, Lv9/j;->b()Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-eqz p0, :cond_3

    .line 63
    .line 64
    iget p0, p4, Lv9/j;->b:I

    .line 65
    .line 66
    invoke-virtual {p5, p0}, Lcom/google/android/exoplayer2/l3$b;->t(I)Z

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

.method private M0(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/m1;->A:Z

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m1;->p0()V

    .line 4
    .line 5
    .line 6
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/m1;->B:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/f2;->q()Lcom/google/android/exoplayer2/c2;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/f2;->p()Lcom/google/android/exoplayer2/c2;

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
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/m1;->z0(Z)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/m1;->E(Z)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method private N()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/f2;->j()Lcom/google/android/exoplayer2/c2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c2;->k()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    const-wide/high16 v4, -0x8000000000000000L

    .line 16
    .line 17
    cmp-long v0, v2, v4

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    const/4 v0, 0x1

    .line 23
    return v0
.end method

.method private static O(Lcom/google/android/exoplayer2/y2;)Z
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/google/android/exoplayer2/y2;->getState()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method private O0(ZIZI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->y:Lcom/google/android/exoplayer2/m1$e;

    .line 2
    .line 3
    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer2/m1$e;->b(I)V

    .line 4
    .line 5
    .line 6
    iget-object p3, p0, Lcom/google/android/exoplayer2/m1;->y:Lcom/google/android/exoplayer2/m1$e;

    .line 7
    .line 8
    invoke-virtual {p3, p4}, Lcom/google/android/exoplayer2/m1$e;->c(I)V

    .line 9
    .line 10
    .line 11
    iget-object p3, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 12
    .line 13
    invoke-virtual {p3, p1, p2}, Lcom/google/android/exoplayer2/m2;->d(ZI)Lcom/google/android/exoplayer2/m2;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    iput-object p2, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 18
    .line 19
    const/4 p2, 0x0

    .line 20
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/m1;->C:Z

    .line 21
    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/m1;->d0(Z)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m1;->a1()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m1;->g1()V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m1;->k1()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 39
    .line 40
    iget p1, p1, Lcom/google/android/exoplayer2/m2;->e:I

    .line 41
    .line 42
    const/4 p2, 0x3

    .line 43
    const/4 p3, 0x2

    .line 44
    if-ne p1, p2, :cond_1

    .line 45
    .line 46
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m1;->d1()V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1;->h:Lcom/google/android/exoplayer2/util/o;

    .line 50
    .line 51
    invoke-interface {p1, p3}, Lcom/google/android/exoplayer2/util/o;->sendEmptyMessage(I)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    if-ne p1, p3, :cond_2

    .line 56
    .line 57
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1;->h:Lcom/google/android/exoplayer2/util/o;

    .line 58
    .line 59
    invoke-interface {p1, p3}, Lcom/google/android/exoplayer2/util/o;->sendEmptyMessage(I)Z

    .line 60
    .line 61
    .line 62
    :cond_2
    :goto_0
    return-void
.end method

.method private P()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/f2;->p()Lcom/google/android/exoplayer2/c2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, v0, Lcom/google/android/exoplayer2/c2;->f:Lcom/google/android/exoplayer2/d2;

    .line 8
    .line 9
    iget-wide v1, v1, Lcom/google/android/exoplayer2/d2;->e:J

    .line 10
    .line 11
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/c2;->d:Z

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 25
    .line 26
    iget-wide v3, v0, Lcom/google/android/exoplayer2/m2;->r:J

    .line 27
    .line 28
    cmp-long v0, v3, v1

    .line 29
    .line 30
    if-ltz v0, :cond_0

    .line 31
    .line 32
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m1;->a1()Z

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

.method private static Q(Lcom/google/android/exoplayer2/m2;Lcom/google/android/exoplayer2/l3$b;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/l3;->u()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    iget-object v0, v0, Lv9/j;->a:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/l3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/l3$b;)Lcom/google/android/exoplayer2/l3$b;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/l3$b;->f:Z

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

.method private Q0(Lcom/google/android/exoplayer2/o2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->o:Lcom/google/android/exoplayer2/o;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/o;->b(Lcom/google/android/exoplayer2/o2;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1;->o:Lcom/google/android/exoplayer2/o;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/o;->getPlaybackParameters()Lcom/google/android/exoplayer2/o2;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/m1;->I(Lcom/google/android/exoplayer2/o2;Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private synthetic R()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/m1;->z:Z

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

.method private synthetic S(Lcom/google/android/exoplayer2/t2;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/m1;->l(Lcom/google/android/exoplayer2/t2;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

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
    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/util/s;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

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

.method private S0(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/m1;->E:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/f2;->G(Lcom/google/android/exoplayer2/l3;I)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/m1;->z0(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/m1;->E(Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private T()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m1;->Z0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/m1;->D:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/f2;->j()Lcom/google/android/exoplayer2/c2;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-wide v1, p0, Lcom/google/android/exoplayer2/m1;->L:J

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/c2;->d(J)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m1;->h1()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private T0(Lcom/google/android/exoplayer2/d3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/m1;->w:Lcom/google/android/exoplayer2/d3;

    .line 2
    .line 3
    return-void
.end method

.method private U()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->y:Lcom/google/android/exoplayer2/m1$e;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/m1$e;->d(Lcom/google/android/exoplayer2/m2;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->y:Lcom/google/android/exoplayer2/m1$e;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/android/exoplayer2/m1$e;->a(Lcom/google/android/exoplayer2/m1$e;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->r:Lcom/google/android/exoplayer2/m1$f;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/android/exoplayer2/m1;->y:Lcom/google/android/exoplayer2/m1$e;

    .line 19
    .line 20
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/m1$f;->a(Lcom/google/android/exoplayer2/m1$e;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lcom/google/android/exoplayer2/m1$e;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 26
    .line 27
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/m1$e;-><init>(Lcom/google/android/exoplayer2/m2;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/google/android/exoplayer2/m1;->y:Lcom/google/android/exoplayer2/m1$e;

    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method private V(JJ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->p:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 12
    .line 13
    invoke-virtual {v0}, Lv9/j;->b()Z

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
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/m1;->N:Z

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
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/m1;->N:Z

    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 32
    .line 33
    iget-object v1, v0, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 36
    .line 37
    iget-object v0, v0, Lv9/j;->a:Ljava/lang/Object;

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/l3;->f(Ljava/lang/Object;)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iget v1, p0, Lcom/google/android/exoplayer2/m1;->M:I

    .line 44
    .line 45
    iget-object v2, p0, Lcom/google/android/exoplayer2/m1;->p:Ljava/util/ArrayList;

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
    iget-object v3, p0, Lcom/google/android/exoplayer2/m1;->p:Ljava/util/ArrayList;

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
    check-cast v3, Lcom/google/android/exoplayer2/m1$d;

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
    iget v4, v3, Lcom/google/android/exoplayer2/m1$d;->b:I

    .line 73
    .line 74
    if-gt v4, v0, :cond_3

    .line 75
    .line 76
    if-ne v4, v0, :cond_5

    .line 77
    .line 78
    iget-wide v3, v3, Lcom/google/android/exoplayer2/m1$d;->c:J

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
    iget-object v4, p0, Lcom/google/android/exoplayer2/m1;->p:Ljava/util/ArrayList;

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
    check-cast v1, Lcom/google/android/exoplayer2/m1$d;

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
    iget-object v3, p0, Lcom/google/android/exoplayer2/m1;->p:Ljava/util/ArrayList;

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
    iget-object v3, p0, Lcom/google/android/exoplayer2/m1;->p:Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    check-cast v3, Lcom/google/android/exoplayer2/m1$d;

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
    iget-object v4, v3, Lcom/google/android/exoplayer2/m1$d;->d:Ljava/lang/Object;

    .line 125
    .line 126
    if-eqz v4, :cond_8

    .line 127
    .line 128
    iget v4, v3, Lcom/google/android/exoplayer2/m1$d;->b:I

    .line 129
    .line 130
    if-lt v4, v0, :cond_7

    .line 131
    .line 132
    if-ne v4, v0, :cond_8

    .line 133
    .line 134
    iget-wide v4, v3, Lcom/google/android/exoplayer2/m1$d;->c:J

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
    iget-object v3, p0, Lcom/google/android/exoplayer2/m1;->p:Ljava/util/ArrayList;

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
    iget-object v3, p0, Lcom/google/android/exoplayer2/m1;->p:Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    check-cast v3, Lcom/google/android/exoplayer2/m1$d;

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_8
    :goto_3
    if-eqz v3, :cond_e

    .line 160
    .line 161
    iget-object v4, v3, Lcom/google/android/exoplayer2/m1$d;->d:Ljava/lang/Object;

    .line 162
    .line 163
    if-eqz v4, :cond_e

    .line 164
    .line 165
    iget v4, v3, Lcom/google/android/exoplayer2/m1$d;->b:I

    .line 166
    .line 167
    if-ne v4, v0, :cond_e

    .line 168
    .line 169
    iget-wide v4, v3, Lcom/google/android/exoplayer2/m1$d;->c:J

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
    iget-object v4, v3, Lcom/google/android/exoplayer2/m1$d;->a:Lcom/google/android/exoplayer2/t2;

    .line 180
    .line 181
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/m1;->E0(Lcom/google/android/exoplayer2/t2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    .line 183
    .line 184
    iget-object v4, v3, Lcom/google/android/exoplayer2/m1$d;->a:Lcom/google/android/exoplayer2/t2;

    .line 185
    .line 186
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/t2;->b()Z

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    if-nez v4, :cond_a

    .line 191
    .line 192
    iget-object v3, v3, Lcom/google/android/exoplayer2/m1$d;->a:Lcom/google/android/exoplayer2/t2;

    .line 193
    .line 194
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/t2;->j()Z

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
    iget-object v3, p0, Lcom/google/android/exoplayer2/m1;->p:Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    :goto_5
    iget-object v3, p0, Lcom/google/android/exoplayer2/m1;->p:Ljava/util/ArrayList;

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
    iget-object v3, p0, Lcom/google/android/exoplayer2/m1;->p:Ljava/util/ArrayList;

    .line 218
    .line 219
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    check-cast v3, Lcom/google/android/exoplayer2/m1$d;

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
    iget-object p2, v3, Lcom/google/android/exoplayer2/m1$d;->a:Lcom/google/android/exoplayer2/t2;

    .line 230
    .line 231
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/t2;->b()Z

    .line 232
    .line 233
    .line 234
    move-result p2

    .line 235
    if-nez p2, :cond_c

    .line 236
    .line 237
    iget-object p2, v3, Lcom/google/android/exoplayer2/m1$d;->a:Lcom/google/android/exoplayer2/t2;

    .line 238
    .line 239
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/t2;->j()Z

    .line 240
    .line 241
    .line 242
    move-result p2

    .line 243
    if-eqz p2, :cond_d

    .line 244
    .line 245
    :cond_c
    iget-object p2, p0, Lcom/google/android/exoplayer2/m1;->p:Ljava/util/ArrayList;

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
    iput v1, p0, Lcom/google/android/exoplayer2/m1;->M:I

    .line 252
    .line 253
    :cond_f
    :goto_6
    return-void
.end method

.method private V0(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/m1;->F:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/f2;->H(Lcom/google/android/exoplayer2/l3;Z)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/m1;->z0(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/m1;->E(Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private W()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/google/android/exoplayer2/m1;->L:J

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/f2;->y(J)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/f2;->D()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 17
    .line 18
    iget-wide v1, p0, Lcom/google/android/exoplayer2/m1;->L:J

    .line 19
    .line 20
    iget-object v3, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/f2;->o(JLcom/google/android/exoplayer2/m2;)Lcom/google/android/exoplayer2/d2;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v4, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 29
    .line 30
    iget-object v5, p0, Lcom/google/android/exoplayer2/m1;->c:[Lcom/google/android/exoplayer2/a3;

    .line 31
    .line 32
    iget-object v6, p0, Lcom/google/android/exoplayer2/m1;->d:Lna/b0;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/google/android/exoplayer2/m1;->f:Lcom/google/android/exoplayer2/u1;

    .line 35
    .line 36
    invoke-interface {v1}, Lcom/google/android/exoplayer2/u1;->getAllocator()Lcom/google/android/exoplayer2/upstream/b;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    iget-object v8, p0, Lcom/google/android/exoplayer2/m1;->t:Lcom/google/android/exoplayer2/i2;

    .line 41
    .line 42
    iget-object v10, p0, Lcom/google/android/exoplayer2/m1;->e:Lna/c0;

    .line 43
    .line 44
    move-object v9, v0

    .line 45
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/exoplayer2/f2;->g([Lcom/google/android/exoplayer2/a3;Lna/b0;Lcom/google/android/exoplayer2/upstream/b;Lcom/google/android/exoplayer2/i2;Lcom/google/android/exoplayer2/d2;Lna/c0;)Lcom/google/android/exoplayer2/c2;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object v2, v1, Lcom/google/android/exoplayer2/c2;->a:Lcom/google/android/exoplayer2/source/n;

    .line 50
    .line 51
    iget-wide v3, v0, Lcom/google/android/exoplayer2/d2;->b:J

    .line 52
    .line 53
    invoke-interface {v2, p0, v3, v4}, Lcom/google/android/exoplayer2/source/n;->f(Lcom/google/android/exoplayer2/source/n$a;J)V

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/f2;->p()Lcom/google/android/exoplayer2/c2;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    if-ne v2, v1, :cond_0

    .line 63
    .line 64
    iget-wide v0, v0, Lcom/google/android/exoplayer2/d2;->b:J

    .line 65
    .line 66
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/m1;->q0(J)V

    .line 67
    .line 68
    .line 69
    :cond_0
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/m1;->E(Z)V

    .line 71
    .line 72
    .line 73
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/m1;->D:Z

    .line 74
    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m1;->N()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/m1;->D:Z

    .line 82
    .line 83
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m1;->h1()V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m1;->T()V

    .line 88
    .line 89
    .line 90
    :goto_0
    return-void
.end method

.method private W0(Lv9/t;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->y:Lcom/google/android/exoplayer2/m1$e;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/m1$e;->b(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->t:Lcom/google/android/exoplayer2/i2;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/i2;->C(Lv9/t;)Lcom/google/android/exoplayer2/l3;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/m1;->F(Lcom/google/android/exoplayer2/l3;Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private X()V
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m1;->Y0()Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-eqz v2, :cond_2

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m1;->U()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/f2;->b()Lcom/google/android/exoplayer2/c2;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/google/android/exoplayer2/c2;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 27
    .line 28
    iget-object v2, v2, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 29
    .line 30
    iget-object v2, v2, Lv9/j;->a:Ljava/lang/Object;

    .line 31
    .line 32
    iget-object v3, v1, Lcom/google/android/exoplayer2/c2;->f:Lcom/google/android/exoplayer2/d2;

    .line 33
    .line 34
    iget-object v3, v3, Lcom/google/android/exoplayer2/d2;->a:Lcom/google/android/exoplayer2/source/o$b;

    .line 35
    .line 36
    iget-object v3, v3, Lv9/j;->a:Ljava/lang/Object;

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    const/4 v3, 0x1

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    iget-object v2, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 46
    .line 47
    iget-object v2, v2, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 48
    .line 49
    iget v4, v2, Lv9/j;->b:I

    .line 50
    .line 51
    const/4 v5, -0x1

    .line 52
    if-ne v4, v5, :cond_1

    .line 53
    .line 54
    iget-object v4, v1, Lcom/google/android/exoplayer2/c2;->f:Lcom/google/android/exoplayer2/d2;

    .line 55
    .line 56
    iget-object v4, v4, Lcom/google/android/exoplayer2/d2;->a:Lcom/google/android/exoplayer2/source/o$b;

    .line 57
    .line 58
    iget v6, v4, Lv9/j;->b:I

    .line 59
    .line 60
    if-ne v6, v5, :cond_1

    .line 61
    .line 62
    iget v2, v2, Lv9/j;->e:I

    .line 63
    .line 64
    iget v4, v4, Lv9/j;->e:I

    .line 65
    .line 66
    if-eq v2, v4, :cond_1

    .line 67
    .line 68
    move v2, v3

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    move v2, v0

    .line 71
    :goto_1
    iget-object v1, v1, Lcom/google/android/exoplayer2/c2;->f:Lcom/google/android/exoplayer2/d2;

    .line 72
    .line 73
    iget-object v5, v1, Lcom/google/android/exoplayer2/d2;->a:Lcom/google/android/exoplayer2/source/o$b;

    .line 74
    .line 75
    iget-wide v10, v1, Lcom/google/android/exoplayer2/d2;->b:J

    .line 76
    .line 77
    iget-wide v8, v1, Lcom/google/android/exoplayer2/d2;->c:J

    .line 78
    .line 79
    xor-int/lit8 v12, v2, 0x1

    .line 80
    .line 81
    const/4 v13, 0x0

    .line 82
    move-object v4, p0

    .line 83
    move-wide v6, v10

    .line 84
    invoke-direct/range {v4 .. v13}, Lcom/google/android/exoplayer2/m1;->J(Lcom/google/android/exoplayer2/source/o$b;JJJZI)Lcom/google/android/exoplayer2/m2;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    iput-object v1, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 89
    .line 90
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m1;->p0()V

    .line 91
    .line 92
    .line 93
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m1;->k1()V

    .line 94
    .line 95
    .line 96
    move v1, v3

    .line 97
    goto :goto_0

    .line 98
    :cond_2
    return-void
.end method

.method private X0(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/exoplayer2/m2;->e:I

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
    iput-wide v1, p0, Lcom/google/android/exoplayer2/m1;->Q:J

    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/m2;->g(I)Lcom/google/android/exoplayer2/m2;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method private Y()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/f2;->q()Lcom/google/android/exoplayer2/c2;

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
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c2;->j()Lcom/google/android/exoplayer2/c2;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    if-eqz v1, :cond_9

    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/m1;->B:Z

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    goto/16 :goto_2

    .line 27
    .line 28
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m1;->L()Z

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
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c2;->j()Lcom/google/android/exoplayer2/c2;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-boolean v1, v1, Lcom/google/android/exoplayer2/c2;->d:Z

    .line 40
    .line 41
    if-nez v1, :cond_3

    .line 42
    .line 43
    iget-wide v5, p0, Lcom/google/android/exoplayer2/m1;->L:J

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c2;->j()Lcom/google/android/exoplayer2/c2;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/c2;->m()J

    .line 50
    .line 51
    .line 52
    move-result-wide v7

    .line 53
    cmp-long v1, v5, v7

    .line 54
    .line 55
    if-gez v1, :cond_3

    .line 56
    .line 57
    return-void

    .line 58
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c2;->o()Lna/c0;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iget-object v5, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 63
    .line 64
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/f2;->c()Lcom/google/android/exoplayer2/c2;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/c2;->o()Lna/c0;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    iget-object v7, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 73
    .line 74
    iget-object v11, v7, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 75
    .line 76
    iget-object v7, v5, Lcom/google/android/exoplayer2/c2;->f:Lcom/google/android/exoplayer2/d2;

    .line 77
    .line 78
    iget-object v10, v7, Lcom/google/android/exoplayer2/d2;->a:Lcom/google/android/exoplayer2/source/o$b;

    .line 79
    .line 80
    iget-object v0, v0, Lcom/google/android/exoplayer2/c2;->f:Lcom/google/android/exoplayer2/d2;

    .line 81
    .line 82
    iget-object v12, v0, Lcom/google/android/exoplayer2/d2;->a:Lcom/google/android/exoplayer2/source/o$b;

    .line 83
    .line 84
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    move-object v8, p0

    .line 90
    move-object v9, v11

    .line 91
    invoke-direct/range {v8 .. v14}, Lcom/google/android/exoplayer2/m1;->l1(Lcom/google/android/exoplayer2/l3;Lcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/l3;Lcom/google/android/exoplayer2/source/o$b;J)V

    .line 92
    .line 93
    .line 94
    iget-boolean v0, v5, Lcom/google/android/exoplayer2/c2;->d:Z

    .line 95
    .line 96
    if-eqz v0, :cond_4

    .line 97
    .line 98
    iget-object v0, v5, Lcom/google/android/exoplayer2/c2;->a:Lcom/google/android/exoplayer2/source/n;

    .line 99
    .line 100
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/n;->readDiscontinuity()J

    .line 101
    .line 102
    .line 103
    move-result-wide v7

    .line 104
    cmp-long v0, v7, v3

    .line 105
    .line 106
    if-eqz v0, :cond_4

    .line 107
    .line 108
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/c2;->m()J

    .line 109
    .line 110
    .line 111
    move-result-wide v0

    .line 112
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/m1;->G0(J)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_4
    move v0, v2

    .line 117
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/m1;->a:[Lcom/google/android/exoplayer2/y2;

    .line 118
    .line 119
    array-length v3, v3

    .line 120
    if-ge v0, v3, :cond_8

    .line 121
    .line 122
    invoke-virtual {v1, v0}, Lna/c0;->c(I)Z

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    invoke-virtual {v6, v0}, Lna/c0;->c(I)Z

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    if-eqz v3, :cond_7

    .line 131
    .line 132
    iget-object v3, p0, Lcom/google/android/exoplayer2/m1;->a:[Lcom/google/android/exoplayer2/y2;

    .line 133
    .line 134
    aget-object v3, v3, v0

    .line 135
    .line 136
    invoke-interface {v3}, Lcom/google/android/exoplayer2/y2;->isCurrentStreamFinal()Z

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    if-nez v3, :cond_7

    .line 141
    .line 142
    iget-object v3, p0, Lcom/google/android/exoplayer2/m1;->c:[Lcom/google/android/exoplayer2/a3;

    .line 143
    .line 144
    aget-object v3, v3, v0

    .line 145
    .line 146
    invoke-interface {v3}, Lcom/google/android/exoplayer2/a3;->getTrackType()I

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    const/4 v7, -0x2

    .line 151
    if-ne v3, v7, :cond_5

    .line 152
    .line 153
    const/4 v3, 0x1

    .line 154
    goto :goto_1

    .line 155
    :cond_5
    move v3, v2

    .line 156
    :goto_1
    iget-object v7, v1, Lna/c0;->b:[Lcom/google/android/exoplayer2/b3;

    .line 157
    .line 158
    aget-object v7, v7, v0

    .line 159
    .line 160
    iget-object v8, v6, Lna/c0;->b:[Lcom/google/android/exoplayer2/b3;

    .line 161
    .line 162
    aget-object v8, v8, v0

    .line 163
    .line 164
    if-eqz v4, :cond_6

    .line 165
    .line 166
    invoke-virtual {v8, v7}, Lcom/google/android/exoplayer2/b3;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    if-eqz v4, :cond_6

    .line 171
    .line 172
    if-eqz v3, :cond_7

    .line 173
    .line 174
    :cond_6
    iget-object v3, p0, Lcom/google/android/exoplayer2/m1;->a:[Lcom/google/android/exoplayer2/y2;

    .line 175
    .line 176
    aget-object v3, v3, v0

    .line 177
    .line 178
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/c2;->m()J

    .line 179
    .line 180
    .line 181
    move-result-wide v7

    .line 182
    invoke-direct {p0, v3, v7, v8}, Lcom/google/android/exoplayer2/m1;->H0(Lcom/google/android/exoplayer2/y2;J)V

    .line 183
    .line 184
    .line 185
    :cond_7
    add-int/lit8 v0, v0, 0x1

    .line 186
    .line 187
    goto :goto_0

    .line 188
    :cond_8
    return-void

    .line 189
    :cond_9
    :goto_2
    iget-object v1, v0, Lcom/google/android/exoplayer2/c2;->f:Lcom/google/android/exoplayer2/d2;

    .line 190
    .line 191
    iget-boolean v1, v1, Lcom/google/android/exoplayer2/d2;->i:Z

    .line 192
    .line 193
    if-nez v1, :cond_a

    .line 194
    .line 195
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/m1;->B:Z

    .line 196
    .line 197
    if-eqz v1, :cond_d

    .line 198
    .line 199
    :cond_a
    :goto_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/m1;->a:[Lcom/google/android/exoplayer2/y2;

    .line 200
    .line 201
    array-length v5, v1

    .line 202
    if-ge v2, v5, :cond_d

    .line 203
    .line 204
    aget-object v1, v1, v2

    .line 205
    .line 206
    iget-object v5, v0, Lcom/google/android/exoplayer2/c2;->c:[Lv9/s;

    .line 207
    .line 208
    aget-object v5, v5, v2

    .line 209
    .line 210
    if-eqz v5, :cond_c

    .line 211
    .line 212
    invoke-interface {v1}, Lcom/google/android/exoplayer2/y2;->getStream()Lv9/s;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    if-ne v6, v5, :cond_c

    .line 217
    .line 218
    invoke-interface {v1}, Lcom/google/android/exoplayer2/y2;->hasReadStreamToEnd()Z

    .line 219
    .line 220
    .line 221
    move-result v5

    .line 222
    if-eqz v5, :cond_c

    .line 223
    .line 224
    iget-object v5, v0, Lcom/google/android/exoplayer2/c2;->f:Lcom/google/android/exoplayer2/d2;

    .line 225
    .line 226
    iget-wide v5, v5, Lcom/google/android/exoplayer2/d2;->e:J

    .line 227
    .line 228
    cmp-long v7, v5, v3

    .line 229
    .line 230
    if-eqz v7, :cond_b

    .line 231
    .line 232
    const-wide/high16 v7, -0x8000000000000000L

    .line 233
    .line 234
    cmp-long v5, v5, v7

    .line 235
    .line 236
    if-eqz v5, :cond_b

    .line 237
    .line 238
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c2;->l()J

    .line 239
    .line 240
    .line 241
    move-result-wide v5

    .line 242
    iget-object v7, v0, Lcom/google/android/exoplayer2/c2;->f:Lcom/google/android/exoplayer2/d2;

    .line 243
    .line 244
    iget-wide v7, v7, Lcom/google/android/exoplayer2/d2;->e:J

    .line 245
    .line 246
    add-long/2addr v5, v7

    .line 247
    goto :goto_4

    .line 248
    :cond_b
    move-wide v5, v3

    .line 249
    :goto_4
    invoke-direct {p0, v1, v5, v6}, Lcom/google/android/exoplayer2/m1;->H0(Lcom/google/android/exoplayer2/y2;J)V

    .line 250
    .line 251
    .line 252
    :cond_c
    add-int/lit8 v2, v2, 0x1

    .line 253
    .line 254
    goto :goto_3

    .line 255
    :cond_d
    return-void
.end method

.method private Y0()Z
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m1;->a1()Z

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
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/m1;->B:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    return v1

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/f2;->p()Lcom/google/android/exoplayer2/c2;

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
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c2;->j()Lcom/google/android/exoplayer2/c2;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    iget-wide v2, p0, Lcom/google/android/exoplayer2/m1;->L:J

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c2;->m()J

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
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/c2;->g:Z

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

.method private Z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/f2;->q()Lcom/google/android/exoplayer2/c2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/f2;->p()Lcom/google/android/exoplayer2/c2;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eq v1, v0, :cond_1

    .line 16
    .line 17
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/c2;->g:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m1;->m0()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m1;->p()V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    return-void
.end method

.method private Z0()Z
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m1;->N()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/f2;->j()Lcom/google/android/exoplayer2/c2;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c2;->k()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/m1;->B(J)J

    .line 20
    .line 21
    .line 22
    move-result-wide v6

    .line 23
    iget-object v1, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/f2;->p()Lcom/google/android/exoplayer2/c2;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-ne v0, v1, :cond_1

    .line 30
    .line 31
    iget-wide v1, p0, Lcom/google/android/exoplayer2/m1;->L:J

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/c2;->y(J)J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    move-wide v4, v0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-wide v1, p0, Lcom/google/android/exoplayer2/m1;->L:J

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/c2;->y(J)J

    .line 42
    .line 43
    .line 44
    move-result-wide v1

    .line 45
    iget-object v0, v0, Lcom/google/android/exoplayer2/c2;->f:Lcom/google/android/exoplayer2/d2;

    .line 46
    .line 47
    iget-wide v3, v0, Lcom/google/android/exoplayer2/d2;->b:J

    .line 48
    .line 49
    sub-long/2addr v1, v3

    .line 50
    move-wide v4, v1

    .line 51
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/m1;->f:Lcom/google/android/exoplayer2/u1;

    .line 52
    .line 53
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->o:Lcom/google/android/exoplayer2/o;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o;->getPlaybackParameters()Lcom/google/android/exoplayer2/o2;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget v8, v0, Lcom/google/android/exoplayer2/o2;->a:F

    .line 60
    .line 61
    invoke-interface/range {v3 .. v8}, Lcom/google/android/exoplayer2/u1;->c(JJF)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    return v0
.end method

.method private a0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->t:Lcom/google/android/exoplayer2/i2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/i2;->i()Lcom/google/android/exoplayer2/l3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/m1;->F(Lcom/google/android/exoplayer2/l3;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private a1()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/m2;->l:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget v0, v0, Lcom/google/android/exoplayer2/m2;->m:I

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

.method private b0(Lcom/google/android/exoplayer2/m1$c;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1;->y:Lcom/google/android/exoplayer2/m1$e;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/m1$e;->b(I)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    throw p1
.end method

.method private b1(Z)Z
    .locals 12

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/m1;->J:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m1;->P()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    return v0

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 15
    .line 16
    iget-boolean v1, p1, Lcom/google/android/exoplayer2/m2;->g:Z

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    return v2

    .line 22
    :cond_2
    iget-object p1, p1, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/f2;->p()Lcom/google/android/exoplayer2/c2;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v1, v1, Lcom/google/android/exoplayer2/c2;->f:Lcom/google/android/exoplayer2/d2;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/google/android/exoplayer2/d2;->a:Lcom/google/android/exoplayer2/source/o$b;

    .line 33
    .line 34
    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplayer2/m1;->c1(Lcom/google/android/exoplayer2/l3;Lcom/google/android/exoplayer2/source/o$b;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1;->u:Lcom/google/android/exoplayer2/t1;

    .line 41
    .line 42
    invoke-interface {p1}, Lcom/google/android/exoplayer2/t1;->b()J

    .line 43
    .line 44
    .line 45
    move-result-wide v3

    .line 46
    :goto_0
    move-wide v10, v3

    .line 47
    goto :goto_1

    .line 48
    :cond_3
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/f2;->j()Lcom/google/android/exoplayer2/c2;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/c2;->q()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    iget-object v1, p1, Lcom/google/android/exoplayer2/c2;->f:Lcom/google/android/exoplayer2/d2;

    .line 67
    .line 68
    iget-boolean v1, v1, Lcom/google/android/exoplayer2/d2;->i:Z

    .line 69
    .line 70
    if-eqz v1, :cond_4

    .line 71
    .line 72
    move v1, v2

    .line 73
    goto :goto_2

    .line 74
    :cond_4
    move v1, v0

    .line 75
    :goto_2
    iget-object v3, p1, Lcom/google/android/exoplayer2/c2;->f:Lcom/google/android/exoplayer2/d2;

    .line 76
    .line 77
    iget-object v3, v3, Lcom/google/android/exoplayer2/d2;->a:Lcom/google/android/exoplayer2/source/o$b;

    .line 78
    .line 79
    invoke-virtual {v3}, Lv9/j;->b()Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-eqz v3, :cond_5

    .line 84
    .line 85
    iget-boolean p1, p1, Lcom/google/android/exoplayer2/c2;->d:Z

    .line 86
    .line 87
    if-nez p1, :cond_5

    .line 88
    .line 89
    move p1, v2

    .line 90
    goto :goto_3

    .line 91
    :cond_5
    move p1, v0

    .line 92
    :goto_3
    if-nez v1, :cond_6

    .line 93
    .line 94
    if-nez p1, :cond_6

    .line 95
    .line 96
    iget-object v5, p0, Lcom/google/android/exoplayer2/m1;->f:Lcom/google/android/exoplayer2/u1;

    .line 97
    .line 98
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m1;->A()J

    .line 99
    .line 100
    .line 101
    move-result-wide v6

    .line 102
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1;->o:Lcom/google/android/exoplayer2/o;

    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/o;->getPlaybackParameters()Lcom/google/android/exoplayer2/o2;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    iget v8, p1, Lcom/google/android/exoplayer2/o2;->a:F

    .line 109
    .line 110
    iget-boolean v9, p0, Lcom/google/android/exoplayer2/m1;->C:Z

    .line 111
    .line 112
    invoke-interface/range {v5 .. v11}, Lcom/google/android/exoplayer2/u1;->b(JFZJ)Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_7

    .line 117
    .line 118
    :cond_6
    move v0, v2

    .line 119
    :cond_7
    return v0
.end method

.method public static synthetic c(Lcom/google/android/exoplayer2/m1;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m1;->R()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private c0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/f2;->p()Lcom/google/android/exoplayer2/c2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c2;->o()Lna/c0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v1, v1, Lna/c0;->c:[Lna/s;

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
    invoke-interface {v4}, Lna/s;->a()V

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
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c2;->j()Lcom/google/android/exoplayer2/c2;

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

.method private c1(Lcom/google/android/exoplayer2/l3;Lcom/google/android/exoplayer2/source/o$b;)Z
    .locals 4

    .line 1
    invoke-virtual {p2}, Lv9/j;->b()Z

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
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/l3;->u()Z

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
    iget-object p2, p2, Lv9/j;->a:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->l:Lcom/google/android/exoplayer2/l3$b;

    .line 18
    .line 19
    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/l3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/l3$b;)Lcom/google/android/exoplayer2/l3$b;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    iget p2, p2, Lcom/google/android/exoplayer2/l3$b;->c:I

    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->k:Lcom/google/android/exoplayer2/l3$d;

    .line 26
    .line 27
    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/l3;->r(ILcom/google/android/exoplayer2/l3$d;)Lcom/google/android/exoplayer2/l3$d;

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1;->k:Lcom/google/android/exoplayer2/l3$d;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/l3$d;->i()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1;->k:Lcom/google/android/exoplayer2/l3$d;

    .line 39
    .line 40
    iget-boolean p2, p1, Lcom/google/android/exoplayer2/l3$d;->i:Z

    .line 41
    .line 42
    if-eqz p2, :cond_1

    .line 43
    .line 44
    iget-wide p1, p1, Lcom/google/android/exoplayer2/l3$d;->f:J

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

.method private d0(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/f2;->p()Lcom/google/android/exoplayer2/c2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c2;->o()Lna/c0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v1, v1, Lna/c0;->c:[Lna/s;

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
    invoke-interface {v4, p1}, Lna/s;->b(Z)V

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
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c2;->j()Lcom/google/android/exoplayer2/c2;

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

.method private d1()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/m1;->C:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/m1;->o:Lcom/google/android/exoplayer2/o;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/o;->f()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/exoplayer2/m1;->a:[Lcom/google/android/exoplayer2/y2;

    .line 10
    .line 11
    array-length v2, v1

    .line 12
    :goto_0
    if-ge v0, v2, :cond_1

    .line 13
    .line 14
    aget-object v3, v1, v0

    .line 15
    .line 16
    invoke-static {v3}, Lcom/google/android/exoplayer2/m1;->O(Lcom/google/android/exoplayer2/y2;)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    invoke-interface {v3}, Lcom/google/android/exoplayer2/y2;->start()V

    .line 23
    .line 24
    .line 25
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-void
.end method

.method public static synthetic e(Lcom/google/android/exoplayer2/m1;Lcom/google/android/exoplayer2/t2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/m1;->S(Lcom/google/android/exoplayer2/t2;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private e0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/f2;->p()Lcom/google/android/exoplayer2/c2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c2;->o()Lna/c0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v1, v1, Lna/c0;->c:[Lna/s;

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
    invoke-interface {v4}, Lna/s;->c()V

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
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c2;->j()Lcom/google/android/exoplayer2/c2;

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

.method static synthetic f(Lcom/google/android/exoplayer2/m1;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/m1;->H:Z

    .line 2
    .line 3
    return p1
.end method

.method private f1(ZZ)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/m1;->G:Z

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move p1, v1

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    move p1, v0

    .line 13
    :goto_1
    invoke-direct {p0, p1, v1, v0, v1}, Lcom/google/android/exoplayer2/m1;->o0(ZZZZ)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1;->y:Lcom/google/android/exoplayer2/m1$e;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/m1$e;->b(I)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1;->f:Lcom/google/android/exoplayer2/u1;

    .line 22
    .line 23
    invoke-interface {p1}, Lcom/google/android/exoplayer2/u1;->onStopped()V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/m1;->X0(I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private g1()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->o:Lcom/google/android/exoplayer2/o;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o;->g()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->a:[Lcom/google/android/exoplayer2/y2;

    .line 7
    .line 8
    array-length v1, v0

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_1

    .line 11
    .line 12
    aget-object v3, v0, v2

    .line 13
    .line 14
    invoke-static {v3}, Lcom/google/android/exoplayer2/m1;->O(Lcom/google/android/exoplayer2/y2;)Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/m1;->r(Lcom/google/android/exoplayer2/y2;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    return-void
.end method

.method private h0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->y:Lcom/google/android/exoplayer2/m1$e;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/m1$e;->b(I)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0, v0, v0, v1}, Lcom/google/android/exoplayer2/m1;->o0(ZZZZ)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->f:Lcom/google/android/exoplayer2/u1;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/google/android/exoplayer2/u1;->onPrepared()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/l3;->u()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x2

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v0, v1

    .line 30
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/m1;->X0(I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->t:Lcom/google/android/exoplayer2/i2;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/google/android/exoplayer2/m1;->g:Lcom/google/android/exoplayer2/upstream/e;

    .line 36
    .line 37
    invoke-interface {v2}, Lcom/google/android/exoplayer2/upstream/e;->b()Lcom/google/android/exoplayer2/upstream/k0;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/i2;->v(Lcom/google/android/exoplayer2/upstream/k0;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->h:Lcom/google/android/exoplayer2/util/o;

    .line 45
    .line 46
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/o;->sendEmptyMessage(I)Z

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method private h1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/f2;->j()Lcom/google/android/exoplayer2/c2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/m1;->D:Z

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, v0, Lcom/google/android/exoplayer2/c2;->a:Lcom/google/android/exoplayer2/source/n;

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/n;->isLoading()Z

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
    iget-object v1, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 26
    .line 27
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/m2;->g:Z

    .line 28
    .line 29
    if-eq v0, v2, :cond_2

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/m2;->a(Z)Lcom/google/android/exoplayer2/m2;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 36
    .line 37
    :cond_2
    return-void
.end method

.method static synthetic i(Lcom/google/android/exoplayer2/m1;)Lcom/google/android/exoplayer2/util/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/m1;->h:Lcom/google/android/exoplayer2/util/o;

    .line 2
    .line 3
    return-object p0
.end method

.method private i1(Lv9/y;Lna/c0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->f:Lcom/google/android/exoplayer2/u1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/m1;->a:[Lcom/google/android/exoplayer2/y2;

    .line 4
    .line 5
    iget-object p2, p2, Lna/c0;->c:[Lna/s;

    .line 6
    .line 7
    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/u1;->a([Lcom/google/android/exoplayer2/y2;Lv9/y;[Lna/s;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private j(Lcom/google/android/exoplayer2/m1$b;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->y:Lcom/google/android/exoplayer2/m1$e;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/m1$e;->b(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->t:Lcom/google/android/exoplayer2/i2;

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    if-ne p2, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/i2;->q()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/m1$b;->b(Lcom/google/android/exoplayer2/m1$b;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {p1}, Lcom/google/android/exoplayer2/m1$b;->c(Lcom/google/android/exoplayer2/m1$b;)Lv9/t;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0, p2, v1, p1}, Lcom/google/android/exoplayer2/i2;->f(ILjava/util/List;Lv9/t;)Lcom/google/android/exoplayer2/l3;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 p2, 0x0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/m1;->F(Lcom/google/android/exoplayer2/l3;Z)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private j0()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, v1, v0, v1, v0}, Lcom/google/android/exoplayer2/m1;->o0(ZZZZ)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->f:Lcom/google/android/exoplayer2/u1;

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/google/android/exoplayer2/u1;->onReleased()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/m1;->X0(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->i:Landroid/os/HandlerThread;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 17
    .line 18
    .line 19
    monitor-enter p0

    .line 20
    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/m1;->z:Z

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 23
    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw v0
.end method

.method private j1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/l3;->u()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->t:Lcom/google/android/exoplayer2/i2;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/i2;->s()Z

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
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m1;->W()V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m1;->Y()V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m1;->Z()V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m1;->X()V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method private k()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/m1;->z0(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private k0(IILv9/t;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->y:Lcom/google/android/exoplayer2/m1$e;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/m1$e;->b(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->t:Lcom/google/android/exoplayer2/i2;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/i2;->z(IILv9/t;)Lcom/google/android/exoplayer2/l3;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 p2, 0x0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/m1;->F(Lcom/google/android/exoplayer2/l3;Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private k1()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/f2;->p()Lcom/google/android/exoplayer2/c2;

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
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/c2;->d:Z

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
    iget-object v1, v0, Lcom/google/android/exoplayer2/c2;->a:Lcom/google/android/exoplayer2/source/n;

    .line 20
    .line 21
    invoke-interface {v1}, Lcom/google/android/exoplayer2/source/n;->readDiscontinuity()J

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
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-direct {p0, v6, v7}, Lcom/google/android/exoplayer2/m1;->q0(J)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 37
    .line 38
    iget-wide v0, v0, Lcom/google/android/exoplayer2/m2;->r:J

    .line 39
    .line 40
    cmp-long v0, v6, v0

    .line 41
    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 45
    .line 46
    iget-object v1, v0, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 47
    .line 48
    iget-wide v4, v0, Lcom/google/android/exoplayer2/m2;->c:J

    .line 49
    .line 50
    const/4 v8, 0x1

    .line 51
    const/4 v9, 0x5

    .line 52
    move-object v0, p0

    .line 53
    move-wide v2, v6

    .line 54
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/m1;->J(Lcom/google/android/exoplayer2/source/o$b;JJJZI)Lcom/google/android/exoplayer2/m2;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/m1;->o:Lcom/google/android/exoplayer2/o;

    .line 62
    .line 63
    iget-object v2, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/f2;->q()Lcom/google/android/exoplayer2/c2;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    if-eq v0, v2, :cond_3

    .line 70
    .line 71
    const/4 v2, 0x1

    .line 72
    goto :goto_1

    .line 73
    :cond_3
    move v2, v10

    .line 74
    :goto_1
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/o;->h(Z)J

    .line 75
    .line 76
    .line 77
    move-result-wide v1

    .line 78
    iput-wide v1, p0, Lcom/google/android/exoplayer2/m1;->L:J

    .line 79
    .line 80
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/c2;->y(J)J

    .line 81
    .line 82
    .line 83
    move-result-wide v0

    .line 84
    iget-object v2, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 85
    .line 86
    iget-wide v2, v2, Lcom/google/android/exoplayer2/m2;->r:J

    .line 87
    .line 88
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/android/exoplayer2/m1;->V(JJ)V

    .line 89
    .line 90
    .line 91
    iget-object v2, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 92
    .line 93
    iput-wide v0, v2, Lcom/google/android/exoplayer2/m2;->r:J

    .line 94
    .line 95
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/f2;->j()Lcom/google/android/exoplayer2/c2;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c2;->i()J

    .line 104
    .line 105
    .line 106
    move-result-wide v2

    .line 107
    iput-wide v2, v1, Lcom/google/android/exoplayer2/m2;->p:J

    .line 108
    .line 109
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 110
    .line 111
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m1;->A()J

    .line 112
    .line 113
    .line 114
    move-result-wide v1

    .line 115
    iput-wide v1, v0, Lcom/google/android/exoplayer2/m2;->q:J

    .line 116
    .line 117
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 118
    .line 119
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/m2;->l:Z

    .line 120
    .line 121
    if-eqz v1, :cond_5

    .line 122
    .line 123
    iget v1, v0, Lcom/google/android/exoplayer2/m2;->e:I

    .line 124
    .line 125
    const/4 v2, 0x3

    .line 126
    if-ne v1, v2, :cond_5

    .line 127
    .line 128
    iget-object v1, v0, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 129
    .line 130
    iget-object v0, v0, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 131
    .line 132
    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/m1;->c1(Lcom/google/android/exoplayer2/l3;Lcom/google/android/exoplayer2/source/o$b;)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_5

    .line 137
    .line 138
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 139
    .line 140
    iget-object v0, v0, Lcom/google/android/exoplayer2/m2;->n:Lcom/google/android/exoplayer2/o2;

    .line 141
    .line 142
    iget v0, v0, Lcom/google/android/exoplayer2/o2;->a:F

    .line 143
    .line 144
    const/high16 v1, 0x3f800000    # 1.0f

    .line 145
    .line 146
    cmpl-float v0, v0, v1

    .line 147
    .line 148
    if-nez v0, :cond_5

    .line 149
    .line 150
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->u:Lcom/google/android/exoplayer2/t1;

    .line 151
    .line 152
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m1;->u()J

    .line 153
    .line 154
    .line 155
    move-result-wide v1

    .line 156
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m1;->A()J

    .line 157
    .line 158
    .line 159
    move-result-wide v3

    .line 160
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/t1;->a(JJ)F

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    iget-object v1, p0, Lcom/google/android/exoplayer2/m1;->o:Lcom/google/android/exoplayer2/o;

    .line 165
    .line 166
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/o;->getPlaybackParameters()Lcom/google/android/exoplayer2/o2;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    iget v1, v1, Lcom/google/android/exoplayer2/o2;->a:F

    .line 171
    .line 172
    cmpl-float v1, v1, v0

    .line 173
    .line 174
    if-eqz v1, :cond_5

    .line 175
    .line 176
    iget-object v1, p0, Lcom/google/android/exoplayer2/m1;->o:Lcom/google/android/exoplayer2/o;

    .line 177
    .line 178
    iget-object v2, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 179
    .line 180
    iget-object v2, v2, Lcom/google/android/exoplayer2/m2;->n:Lcom/google/android/exoplayer2/o2;

    .line 181
    .line 182
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/o2;->e(F)Lcom/google/android/exoplayer2/o2;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/o;->b(Lcom/google/android/exoplayer2/o2;)V

    .line 187
    .line 188
    .line 189
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 190
    .line 191
    iget-object v0, v0, Lcom/google/android/exoplayer2/m2;->n:Lcom/google/android/exoplayer2/o2;

    .line 192
    .line 193
    iget-object v1, p0, Lcom/google/android/exoplayer2/m1;->o:Lcom/google/android/exoplayer2/o;

    .line 194
    .line 195
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/o;->getPlaybackParameters()Lcom/google/android/exoplayer2/o2;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    iget v1, v1, Lcom/google/android/exoplayer2/o2;->a:F

    .line 200
    .line 201
    invoke-direct {p0, v0, v1, v10, v10}, Lcom/google/android/exoplayer2/m1;->H(Lcom/google/android/exoplayer2/o2;FZZ)V

    .line 202
    .line 203
    .line 204
    :cond_5
    return-void
.end method

.method private l(Lcom/google/android/exoplayer2/t2;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/t2;->j()Z

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
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/t2;->g()Lcom/google/android/exoplayer2/t2$b;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/t2;->i()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/t2;->e()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/t2$b;->handleMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/t2;->k(Z)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/t2;->k(Z)V

    .line 30
    .line 31
    .line 32
    throw v1
.end method

.method private l1(Lcom/google/android/exoplayer2/l3;Lcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/l3;Lcom/google/android/exoplayer2/source/o$b;J)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/m1;->c1(Lcom/google/android/exoplayer2/l3;Lcom/google/android/exoplayer2/source/o$b;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p2}, Lv9/j;->b()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    sget-object p1, Lcom/google/android/exoplayer2/o2;->d:Lcom/google/android/exoplayer2/o2;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/google/android/exoplayer2/m2;->n:Lcom/google/android/exoplayer2/o2;

    .line 19
    .line 20
    :goto_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/m1;->o:Lcom/google/android/exoplayer2/o;

    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/o;->getPlaybackParameters()Lcom/google/android/exoplayer2/o2;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/o2;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-nez p2, :cond_1

    .line 31
    .line 32
    iget-object p2, p0, Lcom/google/android/exoplayer2/m1;->o:Lcom/google/android/exoplayer2/o;

    .line 33
    .line 34
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/o;->b(Lcom/google/android/exoplayer2/o2;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void

    .line 38
    :cond_2
    iget-object v0, p2, Lv9/j;->a:Ljava/lang/Object;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/google/android/exoplayer2/m1;->l:Lcom/google/android/exoplayer2/l3$b;

    .line 41
    .line 42
    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/l3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/l3$b;)Lcom/google/android/exoplayer2/l3$b;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget v0, v0, Lcom/google/android/exoplayer2/l3$b;->c:I

    .line 47
    .line 48
    iget-object v1, p0, Lcom/google/android/exoplayer2/m1;->k:Lcom/google/android/exoplayer2/l3$d;

    .line 49
    .line 50
    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/l3;->r(ILcom/google/android/exoplayer2/l3$d;)Lcom/google/android/exoplayer2/l3$d;

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->u:Lcom/google/android/exoplayer2/t1;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/google/android/exoplayer2/m1;->k:Lcom/google/android/exoplayer2/l3$d;

    .line 56
    .line 57
    iget-object v1, v1, Lcom/google/android/exoplayer2/l3$d;->k:Lcom/google/android/exoplayer2/w1$g;

    .line 58
    .line 59
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lcom/google/android/exoplayer2/w1$g;

    .line 64
    .line 65
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/t1;->e(Lcom/google/android/exoplayer2/w1$g;)V

    .line 66
    .line 67
    .line 68
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    cmp-long v2, p5, v0

    .line 74
    .line 75
    if-eqz v2, :cond_3

    .line 76
    .line 77
    iget-object p3, p0, Lcom/google/android/exoplayer2/m1;->u:Lcom/google/android/exoplayer2/t1;

    .line 78
    .line 79
    iget-object p2, p2, Lv9/j;->a:Ljava/lang/Object;

    .line 80
    .line 81
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/google/android/exoplayer2/m1;->w(Lcom/google/android/exoplayer2/l3;Ljava/lang/Object;J)J

    .line 82
    .line 83
    .line 84
    move-result-wide p1

    .line 85
    invoke-interface {p3, p1, p2}, Lcom/google/android/exoplayer2/t1;->d(J)V

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1;->k:Lcom/google/android/exoplayer2/l3$d;

    .line 90
    .line 91
    iget-object p1, p1, Lcom/google/android/exoplayer2/l3$d;->a:Ljava/lang/Object;

    .line 92
    .line 93
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/l3;->u()Z

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    if-nez p2, :cond_4

    .line 98
    .line 99
    iget-object p2, p4, Lv9/j;->a:Ljava/lang/Object;

    .line 100
    .line 101
    iget-object p4, p0, Lcom/google/android/exoplayer2/m1;->l:Lcom/google/android/exoplayer2/l3$b;

    .line 102
    .line 103
    invoke-virtual {p3, p2, p4}, Lcom/google/android/exoplayer2/l3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/l3$b;)Lcom/google/android/exoplayer2/l3$b;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    iget p2, p2, Lcom/google/android/exoplayer2/l3$b;->c:I

    .line 108
    .line 109
    iget-object p4, p0, Lcom/google/android/exoplayer2/m1;->k:Lcom/google/android/exoplayer2/l3$d;

    .line 110
    .line 111
    invoke-virtual {p3, p2, p4}, Lcom/google/android/exoplayer2/l3;->r(ILcom/google/android/exoplayer2/l3$d;)Lcom/google/android/exoplayer2/l3$d;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    iget-object p2, p2, Lcom/google/android/exoplayer2/l3$d;->a:Ljava/lang/Object;

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_4
    const/4 p2, 0x0

    .line 119
    :goto_1
    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-nez p1, :cond_5

    .line 124
    .line 125
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1;->u:Lcom/google/android/exoplayer2/t1;

    .line 126
    .line 127
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/t1;->d(J)V

    .line 128
    .line 129
    .line 130
    :cond_5
    :goto_2
    return-void
.end method

.method private m(Lcom/google/android/exoplayer2/y2;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/m1;->O(Lcom/google/android/exoplayer2/y2;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->o:Lcom/google/android/exoplayer2/o;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/y2;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/m1;->r(Lcom/google/android/exoplayer2/y2;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Lcom/google/android/exoplayer2/y2;->disable()V

    .line 17
    .line 18
    .line 19
    iget p1, p0, Lcom/google/android/exoplayer2/m1;->J:I

    .line 20
    .line 21
    add-int/lit8 p1, p1, -0x1

    .line 22
    .line 23
    iput p1, p0, Lcom/google/android/exoplayer2/m1;->J:I

    .line 24
    .line 25
    return-void
.end method

.method private m0()Z
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/f2;->q()Lcom/google/android/exoplayer2/c2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c2;->o()Lna/c0;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    move v4, v3

    .line 14
    :goto_0
    iget-object v5, p0, Lcom/google/android/exoplayer2/m1;->a:[Lcom/google/android/exoplayer2/y2;

    .line 15
    .line 16
    array-length v6, v5

    .line 17
    const/4 v7, 0x1

    .line 18
    if-ge v3, v6, :cond_5

    .line 19
    .line 20
    aget-object v8, v5, v3

    .line 21
    .line 22
    invoke-static {v8}, Lcom/google/android/exoplayer2/m1;->O(Lcom/google/android/exoplayer2/y2;)Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-nez v5, :cond_0

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_0
    invoke-interface {v8}, Lcom/google/android/exoplayer2/y2;->getStream()Lv9/s;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    iget-object v6, v0, Lcom/google/android/exoplayer2/c2;->c:[Lv9/s;

    .line 34
    .line 35
    aget-object v6, v6, v3

    .line 36
    .line 37
    if-eq v5, v6, :cond_1

    .line 38
    .line 39
    move v5, v7

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move v5, v2

    .line 42
    :goto_1
    invoke-virtual {v1, v3}, Lna/c0;->c(I)Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-eqz v6, :cond_2

    .line 47
    .line 48
    if-nez v5, :cond_2

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    invoke-interface {v8}, Lcom/google/android/exoplayer2/y2;->isCurrentStreamFinal()Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-nez v5, :cond_3

    .line 56
    .line 57
    iget-object v5, v1, Lna/c0;->c:[Lna/s;

    .line 58
    .line 59
    aget-object v5, v5, v3

    .line 60
    .line 61
    invoke-static {v5}, Lcom/google/android/exoplayer2/m1;->v(Lna/s;)[Lcom/google/android/exoplayer2/p1;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    iget-object v5, v0, Lcom/google/android/exoplayer2/c2;->c:[Lv9/s;

    .line 66
    .line 67
    aget-object v10, v5, v3

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c2;->m()J

    .line 70
    .line 71
    .line 72
    move-result-wide v11

    .line 73
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c2;->l()J

    .line 74
    .line 75
    .line 76
    move-result-wide v13

    .line 77
    invoke-interface/range {v8 .. v14}, Lcom/google/android/exoplayer2/y2;->f([Lcom/google/android/exoplayer2/p1;Lv9/s;JJ)V

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_3
    invoke-interface {v8}, Lcom/google/android/exoplayer2/y2;->isEnded()Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-eqz v5, :cond_4

    .line 86
    .line 87
    invoke-direct {p0, v8}, Lcom/google/android/exoplayer2/m1;->m(Lcom/google/android/exoplayer2/y2;)V

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_4
    move v4, v7

    .line 92
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_5
    xor-int/lit8 v0, v4, 0x1

    .line 96
    .line 97
    return v0
.end method

.method private m1(F)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/f2;->p()Lcom/google/android/exoplayer2/c2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c2;->o()Lna/c0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v1, v1, Lna/c0;->c:[Lna/s;

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
    invoke-interface {v4, p1}, Lna/s;->onPlaybackSpeed(F)V

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
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c2;->j()Lcom/google/android/exoplayer2/c2;

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

.method private n()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/exoplayer2/m1;->q:Lcom/google/android/exoplayer2/util/e;

    .line 4
    .line 5
    invoke-interface {v1}, Lcom/google/android/exoplayer2/util/e;->uptimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    iget-object v3, v0, Lcom/google/android/exoplayer2/m1;->h:Lcom/google/android/exoplayer2/util/o;

    .line 10
    .line 11
    const/4 v4, 0x2

    .line 12
    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/util/o;->removeMessages(I)V

    .line 13
    .line 14
    .line 15
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/m1;->j1()V

    .line 16
    .line 17
    .line 18
    iget-object v3, v0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 19
    .line 20
    iget v3, v3, Lcom/google/android/exoplayer2/m2;->e:I

    .line 21
    .line 22
    const/4 v5, 0x1

    .line 23
    if-eq v3, v5, :cond_21

    .line 24
    .line 25
    const/4 v6, 0x4

    .line 26
    if-ne v3, v6, :cond_0

    .line 27
    .line 28
    goto/16 :goto_10

    .line 29
    .line 30
    :cond_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 31
    .line 32
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/f2;->p()Lcom/google/android/exoplayer2/c2;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const-wide/16 v7, 0xa

    .line 37
    .line 38
    if-nez v3, :cond_1

    .line 39
    .line 40
    invoke-direct {v0, v1, v2, v7, v8}, Lcom/google/android/exoplayer2/m1;->x0(JJ)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    const-string v9, "doSomeWork"

    .line 45
    .line 46
    invoke-static {v9}, Lcom/google/android/exoplayer2/util/m0;->a(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/m1;->k1()V

    .line 50
    .line 51
    .line 52
    iget-boolean v9, v3, Lcom/google/android/exoplayer2/c2;->d:Z

    .line 53
    .line 54
    const-wide/16 v10, 0x3e8

    .line 55
    .line 56
    const/4 v12, 0x0

    .line 57
    if-eqz v9, :cond_a

    .line 58
    .line 59
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 60
    .line 61
    .line 62
    move-result-wide v13

    .line 63
    mul-long/2addr v13, v10

    .line 64
    iget-object v9, v3, Lcom/google/android/exoplayer2/c2;->a:Lcom/google/android/exoplayer2/source/n;

    .line 65
    .line 66
    iget-object v15, v0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 67
    .line 68
    iget-wide v7, v15, Lcom/google/android/exoplayer2/m2;->r:J

    .line 69
    .line 70
    iget-wide v10, v0, Lcom/google/android/exoplayer2/m1;->m:J

    .line 71
    .line 72
    sub-long/2addr v7, v10

    .line 73
    iget-boolean v10, v0, Lcom/google/android/exoplayer2/m1;->n:Z

    .line 74
    .line 75
    invoke-interface {v9, v7, v8, v10}, Lcom/google/android/exoplayer2/source/n;->discardBuffer(JZ)V

    .line 76
    .line 77
    .line 78
    move v8, v5

    .line 79
    move v9, v8

    .line 80
    move v7, v12

    .line 81
    :goto_0
    iget-object v10, v0, Lcom/google/android/exoplayer2/m1;->a:[Lcom/google/android/exoplayer2/y2;

    .line 82
    .line 83
    array-length v11, v10

    .line 84
    if-ge v7, v11, :cond_b

    .line 85
    .line 86
    aget-object v10, v10, v7

    .line 87
    .line 88
    invoke-static {v10}, Lcom/google/android/exoplayer2/m1;->O(Lcom/google/android/exoplayer2/y2;)Z

    .line 89
    .line 90
    .line 91
    move-result v11

    .line 92
    if-nez v11, :cond_2

    .line 93
    .line 94
    goto :goto_7

    .line 95
    :cond_2
    iget-wide v4, v0, Lcom/google/android/exoplayer2/m1;->L:J

    .line 96
    .line 97
    invoke-interface {v10, v4, v5, v13, v14}, Lcom/google/android/exoplayer2/y2;->render(JJ)V

    .line 98
    .line 99
    .line 100
    if-eqz v8, :cond_3

    .line 101
    .line 102
    invoke-interface {v10}, Lcom/google/android/exoplayer2/y2;->isEnded()Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-eqz v4, :cond_3

    .line 107
    .line 108
    const/4 v8, 0x1

    .line 109
    goto :goto_1

    .line 110
    :cond_3
    move v8, v12

    .line 111
    :goto_1
    iget-object v4, v3, Lcom/google/android/exoplayer2/c2;->c:[Lv9/s;

    .line 112
    .line 113
    aget-object v4, v4, v7

    .line 114
    .line 115
    invoke-interface {v10}, Lcom/google/android/exoplayer2/y2;->getStream()Lv9/s;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    if-eq v4, v5, :cond_4

    .line 120
    .line 121
    const/4 v4, 0x1

    .line 122
    goto :goto_2

    .line 123
    :cond_4
    move v4, v12

    .line 124
    :goto_2
    if-nez v4, :cond_5

    .line 125
    .line 126
    invoke-interface {v10}, Lcom/google/android/exoplayer2/y2;->hasReadStreamToEnd()Z

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    if-eqz v5, :cond_5

    .line 131
    .line 132
    const/4 v5, 0x1

    .line 133
    goto :goto_3

    .line 134
    :cond_5
    move v5, v12

    .line 135
    :goto_3
    if-nez v4, :cond_7

    .line 136
    .line 137
    if-nez v5, :cond_7

    .line 138
    .line 139
    invoke-interface {v10}, Lcom/google/android/exoplayer2/y2;->isReady()Z

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    if-nez v4, :cond_7

    .line 144
    .line 145
    invoke-interface {v10}, Lcom/google/android/exoplayer2/y2;->isEnded()Z

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-eqz v4, :cond_6

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_6
    move v4, v12

    .line 153
    goto :goto_5

    .line 154
    :cond_7
    :goto_4
    const/4 v4, 0x1

    .line 155
    :goto_5
    if-eqz v9, :cond_8

    .line 156
    .line 157
    if-eqz v4, :cond_8

    .line 158
    .line 159
    const/4 v9, 0x1

    .line 160
    goto :goto_6

    .line 161
    :cond_8
    move v9, v12

    .line 162
    :goto_6
    if-nez v4, :cond_9

    .line 163
    .line 164
    invoke-interface {v10}, Lcom/google/android/exoplayer2/y2;->maybeThrowStreamError()V

    .line 165
    .line 166
    .line 167
    :cond_9
    :goto_7
    add-int/lit8 v7, v7, 0x1

    .line 168
    .line 169
    const/4 v4, 0x2

    .line 170
    const/4 v5, 0x1

    .line 171
    goto :goto_0

    .line 172
    :cond_a
    iget-object v4, v3, Lcom/google/android/exoplayer2/c2;->a:Lcom/google/android/exoplayer2/source/n;

    .line 173
    .line 174
    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/n;->maybeThrowPrepareError()V

    .line 175
    .line 176
    .line 177
    const/4 v8, 0x1

    .line 178
    const/4 v9, 0x1

    .line 179
    :cond_b
    iget-object v4, v3, Lcom/google/android/exoplayer2/c2;->f:Lcom/google/android/exoplayer2/d2;

    .line 180
    .line 181
    iget-wide v4, v4, Lcom/google/android/exoplayer2/d2;->e:J

    .line 182
    .line 183
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    if-eqz v8, :cond_d

    .line 189
    .line 190
    iget-boolean v7, v3, Lcom/google/android/exoplayer2/c2;->d:Z

    .line 191
    .line 192
    if-eqz v7, :cond_d

    .line 193
    .line 194
    cmp-long v7, v4, v13

    .line 195
    .line 196
    if-eqz v7, :cond_c

    .line 197
    .line 198
    iget-object v7, v0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 199
    .line 200
    iget-wide v7, v7, Lcom/google/android/exoplayer2/m2;->r:J

    .line 201
    .line 202
    cmp-long v4, v4, v7

    .line 203
    .line 204
    if-gtz v4, :cond_d

    .line 205
    .line 206
    :cond_c
    const/4 v4, 0x1

    .line 207
    goto :goto_8

    .line 208
    :cond_d
    move v4, v12

    .line 209
    :goto_8
    if-eqz v4, :cond_e

    .line 210
    .line 211
    iget-boolean v5, v0, Lcom/google/android/exoplayer2/m1;->B:Z

    .line 212
    .line 213
    if-eqz v5, :cond_e

    .line 214
    .line 215
    iput-boolean v12, v0, Lcom/google/android/exoplayer2/m1;->B:Z

    .line 216
    .line 217
    iget-object v5, v0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 218
    .line 219
    iget v5, v5, Lcom/google/android/exoplayer2/m2;->m:I

    .line 220
    .line 221
    const/4 v7, 0x5

    .line 222
    invoke-direct {v0, v12, v5, v12, v7}, Lcom/google/android/exoplayer2/m1;->O0(ZIZI)V

    .line 223
    .line 224
    .line 225
    :cond_e
    const/4 v5, 0x3

    .line 226
    if-eqz v4, :cond_f

    .line 227
    .line 228
    iget-object v4, v3, Lcom/google/android/exoplayer2/c2;->f:Lcom/google/android/exoplayer2/d2;

    .line 229
    .line 230
    iget-boolean v4, v4, Lcom/google/android/exoplayer2/d2;->i:Z

    .line 231
    .line 232
    if-eqz v4, :cond_f

    .line 233
    .line 234
    invoke-direct {v0, v6}, Lcom/google/android/exoplayer2/m1;->X0(I)V

    .line 235
    .line 236
    .line 237
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/m1;->g1()V

    .line 238
    .line 239
    .line 240
    goto :goto_9

    .line 241
    :cond_f
    iget-object v4, v0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 242
    .line 243
    iget v4, v4, Lcom/google/android/exoplayer2/m2;->e:I

    .line 244
    .line 245
    const/4 v7, 0x2

    .line 246
    if-ne v4, v7, :cond_10

    .line 247
    .line 248
    invoke-direct {v0, v9}, Lcom/google/android/exoplayer2/m1;->b1(Z)Z

    .line 249
    .line 250
    .line 251
    move-result v4

    .line 252
    if-eqz v4, :cond_10

    .line 253
    .line 254
    invoke-direct {v0, v5}, Lcom/google/android/exoplayer2/m1;->X0(I)V

    .line 255
    .line 256
    .line 257
    const/4 v4, 0x0

    .line 258
    iput-object v4, v0, Lcom/google/android/exoplayer2/m1;->O:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 259
    .line 260
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/m1;->a1()Z

    .line 261
    .line 262
    .line 263
    move-result v4

    .line 264
    if-eqz v4, :cond_14

    .line 265
    .line 266
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/m1;->d1()V

    .line 267
    .line 268
    .line 269
    goto :goto_9

    .line 270
    :cond_10
    iget-object v4, v0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 271
    .line 272
    iget v4, v4, Lcom/google/android/exoplayer2/m2;->e:I

    .line 273
    .line 274
    if-ne v4, v5, :cond_14

    .line 275
    .line 276
    iget v4, v0, Lcom/google/android/exoplayer2/m1;->J:I

    .line 277
    .line 278
    if-nez v4, :cond_11

    .line 279
    .line 280
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/m1;->P()Z

    .line 281
    .line 282
    .line 283
    move-result v4

    .line 284
    if-eqz v4, :cond_12

    .line 285
    .line 286
    goto :goto_9

    .line 287
    :cond_11
    if-nez v9, :cond_14

    .line 288
    .line 289
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/m1;->a1()Z

    .line 290
    .line 291
    .line 292
    move-result v4

    .line 293
    iput-boolean v4, v0, Lcom/google/android/exoplayer2/m1;->C:Z

    .line 294
    .line 295
    const/4 v4, 0x2

    .line 296
    invoke-direct {v0, v4}, Lcom/google/android/exoplayer2/m1;->X0(I)V

    .line 297
    .line 298
    .line 299
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/m1;->C:Z

    .line 300
    .line 301
    if-eqz v4, :cond_13

    .line 302
    .line 303
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/m1;->e0()V

    .line 304
    .line 305
    .line 306
    iget-object v4, v0, Lcom/google/android/exoplayer2/m1;->u:Lcom/google/android/exoplayer2/t1;

    .line 307
    .line 308
    invoke-interface {v4}, Lcom/google/android/exoplayer2/t1;->c()V

    .line 309
    .line 310
    .line 311
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/m1;->g1()V

    .line 312
    .line 313
    .line 314
    :cond_14
    :goto_9
    iget-object v4, v0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 315
    .line 316
    iget v4, v4, Lcom/google/android/exoplayer2/m2;->e:I

    .line 317
    .line 318
    const/4 v7, 0x2

    .line 319
    if-ne v4, v7, :cond_19

    .line 320
    .line 321
    move v4, v12

    .line 322
    :goto_a
    iget-object v7, v0, Lcom/google/android/exoplayer2/m1;->a:[Lcom/google/android/exoplayer2/y2;

    .line 323
    .line 324
    array-length v8, v7

    .line 325
    if-ge v4, v8, :cond_16

    .line 326
    .line 327
    aget-object v7, v7, v4

    .line 328
    .line 329
    invoke-static {v7}, Lcom/google/android/exoplayer2/m1;->O(Lcom/google/android/exoplayer2/y2;)Z

    .line 330
    .line 331
    .line 332
    move-result v7

    .line 333
    if-eqz v7, :cond_15

    .line 334
    .line 335
    iget-object v7, v0, Lcom/google/android/exoplayer2/m1;->a:[Lcom/google/android/exoplayer2/y2;

    .line 336
    .line 337
    aget-object v7, v7, v4

    .line 338
    .line 339
    invoke-interface {v7}, Lcom/google/android/exoplayer2/y2;->getStream()Lv9/s;

    .line 340
    .line 341
    .line 342
    move-result-object v7

    .line 343
    iget-object v8, v3, Lcom/google/android/exoplayer2/c2;->c:[Lv9/s;

    .line 344
    .line 345
    aget-object v8, v8, v4

    .line 346
    .line 347
    if-ne v7, v8, :cond_15

    .line 348
    .line 349
    iget-object v7, v0, Lcom/google/android/exoplayer2/m1;->a:[Lcom/google/android/exoplayer2/y2;

    .line 350
    .line 351
    aget-object v7, v7, v4

    .line 352
    .line 353
    invoke-interface {v7}, Lcom/google/android/exoplayer2/y2;->maybeThrowStreamError()V

    .line 354
    .line 355
    .line 356
    :cond_15
    add-int/lit8 v4, v4, 0x1

    .line 357
    .line 358
    goto :goto_a

    .line 359
    :cond_16
    iget-object v3, v0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 360
    .line 361
    iget-boolean v4, v3, Lcom/google/android/exoplayer2/m2;->g:Z

    .line 362
    .line 363
    if-nez v4, :cond_19

    .line 364
    .line 365
    iget-wide v3, v3, Lcom/google/android/exoplayer2/m2;->q:J

    .line 366
    .line 367
    const-wide/32 v7, 0x7a120

    .line 368
    .line 369
    .line 370
    cmp-long v3, v3, v7

    .line 371
    .line 372
    if-gez v3, :cond_19

    .line 373
    .line 374
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/m1;->N()Z

    .line 375
    .line 376
    .line 377
    move-result v3

    .line 378
    if-eqz v3, :cond_19

    .line 379
    .line 380
    iget-wide v3, v0, Lcom/google/android/exoplayer2/m1;->Q:J

    .line 381
    .line 382
    cmp-long v3, v3, v13

    .line 383
    .line 384
    if-nez v3, :cond_17

    .line 385
    .line 386
    iget-object v3, v0, Lcom/google/android/exoplayer2/m1;->q:Lcom/google/android/exoplayer2/util/e;

    .line 387
    .line 388
    invoke-interface {v3}, Lcom/google/android/exoplayer2/util/e;->elapsedRealtime()J

    .line 389
    .line 390
    .line 391
    move-result-wide v3

    .line 392
    iput-wide v3, v0, Lcom/google/android/exoplayer2/m1;->Q:J

    .line 393
    .line 394
    goto :goto_b

    .line 395
    :cond_17
    iget-object v3, v0, Lcom/google/android/exoplayer2/m1;->q:Lcom/google/android/exoplayer2/util/e;

    .line 396
    .line 397
    invoke-interface {v3}, Lcom/google/android/exoplayer2/util/e;->elapsedRealtime()J

    .line 398
    .line 399
    .line 400
    move-result-wide v3

    .line 401
    iget-wide v7, v0, Lcom/google/android/exoplayer2/m1;->Q:J

    .line 402
    .line 403
    sub-long/2addr v3, v7

    .line 404
    const-wide/16 v7, 0xfa0

    .line 405
    .line 406
    cmp-long v3, v3, v7

    .line 407
    .line 408
    if-gez v3, :cond_18

    .line 409
    .line 410
    goto :goto_b

    .line 411
    :cond_18
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 412
    .line 413
    const-string v2, "Playback stuck buffering and not loading"

    .line 414
    .line 415
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    throw v1

    .line 419
    :cond_19
    iput-wide v13, v0, Lcom/google/android/exoplayer2/m1;->Q:J

    .line 420
    .line 421
    :goto_b
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/m1;->a1()Z

    .line 422
    .line 423
    .line 424
    move-result v3

    .line 425
    if-eqz v3, :cond_1a

    .line 426
    .line 427
    iget-object v3, v0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 428
    .line 429
    iget v3, v3, Lcom/google/android/exoplayer2/m2;->e:I

    .line 430
    .line 431
    if-ne v3, v5, :cond_1a

    .line 432
    .line 433
    const/4 v3, 0x1

    .line 434
    goto :goto_c

    .line 435
    :cond_1a
    move v3, v12

    .line 436
    :goto_c
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/m1;->I:Z

    .line 437
    .line 438
    if-eqz v4, :cond_1b

    .line 439
    .line 440
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/m1;->H:Z

    .line 441
    .line 442
    if-eqz v4, :cond_1b

    .line 443
    .line 444
    if-eqz v3, :cond_1b

    .line 445
    .line 446
    const/4 v15, 0x1

    .line 447
    goto :goto_d

    .line 448
    :cond_1b
    move v15, v12

    .line 449
    :goto_d
    iget-object v4, v0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 450
    .line 451
    iget-boolean v7, v4, Lcom/google/android/exoplayer2/m2;->o:Z

    .line 452
    .line 453
    if-eq v7, v15, :cond_1c

    .line 454
    .line 455
    invoke-virtual {v4, v15}, Lcom/google/android/exoplayer2/m2;->h(Z)Lcom/google/android/exoplayer2/m2;

    .line 456
    .line 457
    .line 458
    move-result-object v4

    .line 459
    iput-object v4, v0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 460
    .line 461
    :cond_1c
    iput-boolean v12, v0, Lcom/google/android/exoplayer2/m1;->H:Z

    .line 462
    .line 463
    if-nez v15, :cond_21

    .line 464
    .line 465
    iget-object v4, v0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 466
    .line 467
    iget v4, v4, Lcom/google/android/exoplayer2/m2;->e:I

    .line 468
    .line 469
    if-ne v4, v6, :cond_1d

    .line 470
    .line 471
    goto :goto_10

    .line 472
    :cond_1d
    if-nez v3, :cond_1e

    .line 473
    .line 474
    const/4 v3, 0x2

    .line 475
    if-ne v4, v3, :cond_1f

    .line 476
    .line 477
    :cond_1e
    const-wide/16 v3, 0xa

    .line 478
    .line 479
    goto :goto_e

    .line 480
    :cond_1f
    if-ne v4, v5, :cond_20

    .line 481
    .line 482
    iget v3, v0, Lcom/google/android/exoplayer2/m1;->J:I

    .line 483
    .line 484
    if-eqz v3, :cond_20

    .line 485
    .line 486
    const-wide/16 v3, 0x3e8

    .line 487
    .line 488
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/m1;->x0(JJ)V

    .line 489
    .line 490
    .line 491
    goto :goto_f

    .line 492
    :goto_e
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/m1;->x0(JJ)V

    .line 493
    .line 494
    .line 495
    :cond_20
    :goto_f
    invoke-static {}, Lcom/google/android/exoplayer2/util/m0;->c()V

    .line 496
    .line 497
    .line 498
    :cond_21
    :goto_10
    return-void
.end method

.method private n0()V
    .locals 19

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    iget-object v0, v10, Lcom/google/android/exoplayer2/m1;->o:Lcom/google/android/exoplayer2/o;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o;->getPlaybackParameters()Lcom/google/android/exoplayer2/o2;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Lcom/google/android/exoplayer2/o2;->a:F

    .line 10
    .line 11
    iget-object v1, v10, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/f2;->p()Lcom/google/android/exoplayer2/c2;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, v10, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/f2;->q()Lcom/google/android/exoplayer2/c2;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const/4 v3, 0x1

    .line 24
    :goto_0
    if-eqz v1, :cond_b

    .line 25
    .line 26
    iget-boolean v4, v1, Lcom/google/android/exoplayer2/c2;->d:Z

    .line 27
    .line 28
    if-nez v4, :cond_0

    .line 29
    .line 30
    goto/16 :goto_6

    .line 31
    .line 32
    :cond_0
    iget-object v4, v10, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 33
    .line 34
    iget-object v4, v4, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 35
    .line 36
    invoke-virtual {v1, v0, v4}, Lcom/google/android/exoplayer2/c2;->v(FLcom/google/android/exoplayer2/l3;)Lna/c0;

    .line 37
    .line 38
    .line 39
    move-result-object v13

    .line 40
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/c2;->o()Lna/c0;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v13, v4}, Lna/c0;->a(Lna/c0;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    const/4 v9, 0x0

    .line 49
    if-nez v4, :cond_9

    .line 50
    .line 51
    const/4 v8, 0x4

    .line 52
    if-eqz v3, :cond_7

    .line 53
    .line 54
    iget-object v0, v10, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/f2;->p()Lcom/google/android/exoplayer2/c2;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    iget-object v0, v10, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 61
    .line 62
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/f2;->z(Lcom/google/android/exoplayer2/c2;)Z

    .line 63
    .line 64
    .line 65
    move-result v16

    .line 66
    iget-object v0, v10, Lcom/google/android/exoplayer2/m1;->a:[Lcom/google/android/exoplayer2/y2;

    .line 67
    .line 68
    array-length v0, v0

    .line 69
    new-array v7, v0, [Z

    .line 70
    .line 71
    iget-object v0, v10, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 72
    .line 73
    iget-wide v14, v0, Lcom/google/android/exoplayer2/m2;->r:J

    .line 74
    .line 75
    move-object v12, v6

    .line 76
    move-object/from16 v17, v7

    .line 77
    .line 78
    invoke-virtual/range {v12 .. v17}, Lcom/google/android/exoplayer2/c2;->b(Lna/c0;JZ[Z)J

    .line 79
    .line 80
    .line 81
    move-result-wide v12

    .line 82
    iget-object v0, v10, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 83
    .line 84
    iget v1, v0, Lcom/google/android/exoplayer2/m2;->e:I

    .line 85
    .line 86
    if-eq v1, v8, :cond_1

    .line 87
    .line 88
    iget-wide v0, v0, Lcom/google/android/exoplayer2/m2;->r:J

    .line 89
    .line 90
    cmp-long v0, v12, v0

    .line 91
    .line 92
    if-eqz v0, :cond_1

    .line 93
    .line 94
    const/4 v14, 0x1

    .line 95
    goto :goto_1

    .line 96
    :cond_1
    move v14, v9

    .line 97
    :goto_1
    iget-object v0, v10, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 98
    .line 99
    iget-object v1, v0, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 100
    .line 101
    iget-wide v4, v0, Lcom/google/android/exoplayer2/m2;->c:J

    .line 102
    .line 103
    iget-wide v2, v0, Lcom/google/android/exoplayer2/m2;->d:J

    .line 104
    .line 105
    const/4 v15, 0x5

    .line 106
    move-object/from16 v0, p0

    .line 107
    .line 108
    move-wide/from16 v16, v2

    .line 109
    .line 110
    move-wide v2, v12

    .line 111
    move-object v11, v6

    .line 112
    move-object/from16 v18, v7

    .line 113
    .line 114
    move-wide/from16 v6, v16

    .line 115
    .line 116
    move v8, v14

    .line 117
    move v9, v15

    .line 118
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/m1;->J(Lcom/google/android/exoplayer2/source/o$b;JJJZI)Lcom/google/android/exoplayer2/m2;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iput-object v0, v10, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 123
    .line 124
    if-eqz v14, :cond_2

    .line 125
    .line 126
    invoke-direct {v10, v12, v13}, Lcom/google/android/exoplayer2/m1;->q0(J)V

    .line 127
    .line 128
    .line 129
    :cond_2
    iget-object v0, v10, Lcom/google/android/exoplayer2/m1;->a:[Lcom/google/android/exoplayer2/y2;

    .line 130
    .line 131
    array-length v0, v0

    .line 132
    new-array v0, v0, [Z

    .line 133
    .line 134
    const/4 v9, 0x0

    .line 135
    :goto_2
    iget-object v1, v10, Lcom/google/android/exoplayer2/m1;->a:[Lcom/google/android/exoplayer2/y2;

    .line 136
    .line 137
    array-length v2, v1

    .line 138
    if-ge v9, v2, :cond_5

    .line 139
    .line 140
    aget-object v1, v1, v9

    .line 141
    .line 142
    invoke-static {v1}, Lcom/google/android/exoplayer2/m1;->O(Lcom/google/android/exoplayer2/y2;)Z

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    aput-boolean v2, v0, v9

    .line 147
    .line 148
    iget-object v3, v11, Lcom/google/android/exoplayer2/c2;->c:[Lv9/s;

    .line 149
    .line 150
    aget-object v3, v3, v9

    .line 151
    .line 152
    if-eqz v2, :cond_4

    .line 153
    .line 154
    invoke-interface {v1}, Lcom/google/android/exoplayer2/y2;->getStream()Lv9/s;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    if-eq v3, v2, :cond_3

    .line 159
    .line 160
    invoke-direct {v10, v1}, Lcom/google/android/exoplayer2/m1;->m(Lcom/google/android/exoplayer2/y2;)V

    .line 161
    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_3
    aget-boolean v2, v18, v9

    .line 165
    .line 166
    if-eqz v2, :cond_4

    .line 167
    .line 168
    iget-wide v2, v10, Lcom/google/android/exoplayer2/m1;->L:J

    .line 169
    .line 170
    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/y2;->resetPosition(J)V

    .line 171
    .line 172
    .line 173
    :cond_4
    :goto_3
    add-int/lit8 v9, v9, 0x1

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_5
    invoke-direct {v10, v0}, Lcom/google/android/exoplayer2/m1;->q([Z)V

    .line 177
    .line 178
    .line 179
    :cond_6
    :goto_4
    const/4 v5, 0x1

    .line 180
    goto :goto_5

    .line 181
    :cond_7
    iget-object v0, v10, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/f2;->z(Lcom/google/android/exoplayer2/c2;)Z

    .line 184
    .line 185
    .line 186
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/c2;->d:Z

    .line 187
    .line 188
    if-eqz v0, :cond_6

    .line 189
    .line 190
    iget-object v0, v1, Lcom/google/android/exoplayer2/c2;->f:Lcom/google/android/exoplayer2/d2;

    .line 191
    .line 192
    iget-wide v2, v0, Lcom/google/android/exoplayer2/d2;->b:J

    .line 193
    .line 194
    iget-wide v4, v10, Lcom/google/android/exoplayer2/m1;->L:J

    .line 195
    .line 196
    invoke-virtual {v1, v4, v5}, Lcom/google/android/exoplayer2/c2;->y(J)J

    .line 197
    .line 198
    .line 199
    move-result-wide v4

    .line 200
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 201
    .line 202
    .line 203
    move-result-wide v2

    .line 204
    const/4 v4, 0x0

    .line 205
    invoke-virtual {v1, v13, v2, v3, v4}, Lcom/google/android/exoplayer2/c2;->a(Lna/c0;JZ)J

    .line 206
    .line 207
    .line 208
    goto :goto_4

    .line 209
    :goto_5
    invoke-direct {v10, v5}, Lcom/google/android/exoplayer2/m1;->E(Z)V

    .line 210
    .line 211
    .line 212
    iget-object v0, v10, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 213
    .line 214
    iget v0, v0, Lcom/google/android/exoplayer2/m2;->e:I

    .line 215
    .line 216
    const/4 v1, 0x4

    .line 217
    if-eq v0, v1, :cond_8

    .line 218
    .line 219
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/m1;->T()V

    .line 220
    .line 221
    .line 222
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/m1;->k1()V

    .line 223
    .line 224
    .line 225
    iget-object v0, v10, Lcom/google/android/exoplayer2/m1;->h:Lcom/google/android/exoplayer2/util/o;

    .line 226
    .line 227
    const/4 v1, 0x2

    .line 228
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/o;->sendEmptyMessage(I)Z

    .line 229
    .line 230
    .line 231
    :cond_8
    return-void

    .line 232
    :cond_9
    move v4, v9

    .line 233
    const/4 v5, 0x1

    .line 234
    if-ne v1, v2, :cond_a

    .line 235
    .line 236
    move v3, v4

    .line 237
    :cond_a
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/c2;->j()Lcom/google/android/exoplayer2/c2;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    goto/16 :goto_0

    .line 242
    .line 243
    :cond_b
    :goto_6
    return-void
.end method

.method private declared-synchronized n1(Lcom/google/common/base/q;J)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->q:Lcom/google/android/exoplayer2/util/e;

    .line 3
    .line 4
    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/e;->elapsedRealtime()J

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
    iget-object v3, p0, Lcom/google/android/exoplayer2/m1;->q:Lcom/google/android/exoplayer2/util/e;

    .line 29
    .line 30
    invoke-interface {v3}, Lcom/google/android/exoplayer2/util/e;->a()V

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
    iget-object p2, p0, Lcom/google/android/exoplayer2/m1;->q:Lcom/google/android/exoplayer2/util/e;

    .line 42
    .line 43
    invoke-interface {p2}, Lcom/google/android/exoplayer2/util/e;->elapsedRealtime()J

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

.method private o(IZ)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/exoplayer2/m1;->a:[Lcom/google/android/exoplayer2/y2;

    .line 4
    .line 5
    aget-object v1, v1, p1

    .line 6
    .line 7
    invoke-static {v1}, Lcom/google/android/exoplayer2/m1;->O(Lcom/google/android/exoplayer2/y2;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v2, v0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/f2;->q()Lcom/google/android/exoplayer2/c2;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget-object v3, v0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 21
    .line 22
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/f2;->p()Lcom/google/android/exoplayer2/c2;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x1

    .line 28
    if-ne v2, v3, :cond_1

    .line 29
    .line 30
    move v9, v5

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move v9, v4

    .line 33
    :goto_0
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/c2;->o()Lna/c0;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iget-object v6, v3, Lna/c0;->b:[Lcom/google/android/exoplayer2/b3;

    .line 38
    .line 39
    aget-object v6, v6, p1

    .line 40
    .line 41
    iget-object v3, v3, Lna/c0;->c:[Lna/s;

    .line 42
    .line 43
    aget-object v3, v3, p1

    .line 44
    .line 45
    invoke-static {v3}, Lcom/google/android/exoplayer2/m1;->v(Lna/s;)[Lcom/google/android/exoplayer2/p1;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/m1;->a1()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    iget-object v3, v0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 56
    .line 57
    iget v3, v3, Lcom/google/android/exoplayer2/m2;->e:I

    .line 58
    .line 59
    const/4 v8, 0x3

    .line 60
    if-ne v3, v8, :cond_2

    .line 61
    .line 62
    move v14, v5

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    move v14, v4

    .line 65
    :goto_1
    if-nez p2, :cond_3

    .line 66
    .line 67
    if-eqz v14, :cond_3

    .line 68
    .line 69
    move v8, v5

    .line 70
    goto :goto_2

    .line 71
    :cond_3
    move v8, v4

    .line 72
    :goto_2
    iget v3, v0, Lcom/google/android/exoplayer2/m1;->J:I

    .line 73
    .line 74
    add-int/2addr v3, v5

    .line 75
    iput v3, v0, Lcom/google/android/exoplayer2/m1;->J:I

    .line 76
    .line 77
    iget-object v3, v0, Lcom/google/android/exoplayer2/m1;->b:Ljava/util/Set;

    .line 78
    .line 79
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    iget-object v3, v2, Lcom/google/android/exoplayer2/c2;->c:[Lv9/s;

    .line 83
    .line 84
    aget-object v5, v3, p1

    .line 85
    .line 86
    iget-wide v10, v0, Lcom/google/android/exoplayer2/m1;->L:J

    .line 87
    .line 88
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/c2;->m()J

    .line 89
    .line 90
    .line 91
    move-result-wide v12

    .line 92
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/c2;->l()J

    .line 93
    .line 94
    .line 95
    move-result-wide v15

    .line 96
    move-object v2, v1

    .line 97
    move-object v3, v6

    .line 98
    move-object v4, v7

    .line 99
    move-wide v6, v10

    .line 100
    move-wide v10, v12

    .line 101
    move-wide v12, v15

    .line 102
    invoke-interface/range {v2 .. v13}, Lcom/google/android/exoplayer2/y2;->c(Lcom/google/android/exoplayer2/b3;[Lcom/google/android/exoplayer2/p1;Lv9/s;JZZJJ)V

    .line 103
    .line 104
    .line 105
    new-instance v2, Lcom/google/android/exoplayer2/m1$a;

    .line 106
    .line 107
    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/m1$a;-><init>(Lcom/google/android/exoplayer2/m1;)V

    .line 108
    .line 109
    .line 110
    const/16 v3, 0xb

    .line 111
    .line 112
    invoke-interface {v1, v3, v2}, Lcom/google/android/exoplayer2/t2$b;->handleMessage(ILjava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    iget-object v2, v0, Lcom/google/android/exoplayer2/m1;->o:Lcom/google/android/exoplayer2/o;

    .line 116
    .line 117
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/o;->c(Lcom/google/android/exoplayer2/y2;)V

    .line 118
    .line 119
    .line 120
    if-eqz v14, :cond_4

    .line 121
    .line 122
    invoke-interface {v1}, Lcom/google/android/exoplayer2/y2;->start()V

    .line 123
    .line 124
    .line 125
    :cond_4
    return-void
.end method

.method private o0(ZZZZ)V
    .locals 28

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/google/android/exoplayer2/m1;->h:Lcom/google/android/exoplayer2/util/o;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/util/o;->removeMessages(I)V

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-object v2, v1, Lcom/google/android/exoplayer2/m1;->O:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    iput-boolean v3, v1, Lcom/google/android/exoplayer2/m1;->C:Z

    .line 14
    .line 15
    iget-object v0, v1, Lcom/google/android/exoplayer2/m1;->o:Lcom/google/android/exoplayer2/o;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o;->g()V

    .line 18
    .line 19
    .line 20
    const-wide v4, 0xe8d4a51000L

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    iput-wide v4, v1, Lcom/google/android/exoplayer2/m1;->L:J

    .line 26
    .line 27
    iget-object v4, v1, Lcom/google/android/exoplayer2/m1;->a:[Lcom/google/android/exoplayer2/y2;

    .line 28
    .line 29
    array-length v5, v4

    .line 30
    move v6, v3

    .line 31
    :goto_0
    const-string v7, "ExoPlayerImplInternal"

    .line 32
    .line 33
    if-ge v6, v5, :cond_0

    .line 34
    .line 35
    aget-object v0, v4, v6

    .line 36
    .line 37
    :try_start_0
    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/m1;->m(Lcom/google/android/exoplayer2/y2;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :catch_0
    move-exception v0

    .line 42
    goto :goto_1

    .line 43
    :catch_1
    move-exception v0

    .line 44
    :goto_1
    const-string v8, "Disable failed."

    .line 45
    .line 46
    invoke-static {v7, v8, v0}, Lcom/google/android/exoplayer2/util/s;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    if-eqz p1, :cond_2

    .line 53
    .line 54
    iget-object v4, v1, Lcom/google/android/exoplayer2/m1;->a:[Lcom/google/android/exoplayer2/y2;

    .line 55
    .line 56
    array-length v5, v4

    .line 57
    move v6, v3

    .line 58
    :goto_3
    if-ge v6, v5, :cond_2

    .line 59
    .line 60
    aget-object v0, v4, v6

    .line 61
    .line 62
    iget-object v8, v1, Lcom/google/android/exoplayer2/m1;->b:Ljava/util/Set;

    .line 63
    .line 64
    invoke-interface {v8, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    if-eqz v8, :cond_1

    .line 69
    .line 70
    :try_start_1
    invoke-interface {v0}, Lcom/google/android/exoplayer2/y2;->reset()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 71
    .line 72
    .line 73
    goto :goto_4

    .line 74
    :catch_2
    move-exception v0

    .line 75
    move-object v8, v0

    .line 76
    const-string v0, "Reset failed."

    .line 77
    .line 78
    invoke-static {v7, v0, v8}, Lcom/google/android/exoplayer2/util/s;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    :cond_1
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_2
    iput v3, v1, Lcom/google/android/exoplayer2/m1;->J:I

    .line 85
    .line 86
    iget-object v0, v1, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 87
    .line 88
    iget-object v4, v0, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 89
    .line 90
    iget-wide v5, v0, Lcom/google/android/exoplayer2/m2;->r:J

    .line 91
    .line 92
    iget-object v0, v1, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 93
    .line 94
    iget-object v0, v0, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 95
    .line 96
    invoke-virtual {v0}, Lv9/j;->b()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_4

    .line 101
    .line 102
    iget-object v0, v1, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 103
    .line 104
    iget-object v7, v1, Lcom/google/android/exoplayer2/m1;->l:Lcom/google/android/exoplayer2/l3$b;

    .line 105
    .line 106
    invoke-static {v0, v7}, Lcom/google/android/exoplayer2/m1;->Q(Lcom/google/android/exoplayer2/m2;Lcom/google/android/exoplayer2/l3$b;)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_3

    .line 111
    .line 112
    goto :goto_5

    .line 113
    :cond_3
    iget-object v0, v1, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 114
    .line 115
    iget-wide v7, v0, Lcom/google/android/exoplayer2/m2;->r:J

    .line 116
    .line 117
    goto :goto_6

    .line 118
    :cond_4
    :goto_5
    iget-object v0, v1, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 119
    .line 120
    iget-wide v7, v0, Lcom/google/android/exoplayer2/m2;->c:J

    .line 121
    .line 122
    :goto_6
    if-eqz p2, :cond_5

    .line 123
    .line 124
    iput-object v2, v1, Lcom/google/android/exoplayer2/m1;->K:Lcom/google/android/exoplayer2/m1$h;

    .line 125
    .line 126
    iget-object v0, v1, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 127
    .line 128
    iget-object v0, v0, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 129
    .line 130
    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/m1;->y(Lcom/google/android/exoplayer2/l3;)Landroid/util/Pair;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v4, Lcom/google/android/exoplayer2/source/o$b;

    .line 137
    .line 138
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast v0, Ljava/lang/Long;

    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 143
    .line 144
    .line 145
    move-result-wide v5

    .line 146
    iget-object v0, v1, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 147
    .line 148
    iget-object v0, v0, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 149
    .line 150
    invoke-virtual {v4, v0}, Lv9/j;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    if-nez v0, :cond_5

    .line 160
    .line 161
    const/4 v0, 0x1

    .line 162
    :goto_7
    move-object/from16 v17, v4

    .line 163
    .line 164
    move-wide/from16 v25, v5

    .line 165
    .line 166
    goto :goto_8

    .line 167
    :cond_5
    move v0, v3

    .line 168
    goto :goto_7

    .line 169
    :goto_8
    iget-object v4, v1, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 170
    .line 171
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/f2;->f()V

    .line 172
    .line 173
    .line 174
    iput-boolean v3, v1, Lcom/google/android/exoplayer2/m1;->D:Z

    .line 175
    .line 176
    new-instance v3, Lcom/google/android/exoplayer2/m2;

    .line 177
    .line 178
    iget-object v4, v1, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 179
    .line 180
    iget-object v5, v4, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 181
    .line 182
    iget v11, v4, Lcom/google/android/exoplayer2/m2;->e:I

    .line 183
    .line 184
    if-eqz p4, :cond_6

    .line 185
    .line 186
    :goto_9
    move-object v12, v2

    .line 187
    goto :goto_a

    .line 188
    :cond_6
    iget-object v2, v4, Lcom/google/android/exoplayer2/m2;->f:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 189
    .line 190
    goto :goto_9

    .line 191
    :goto_a
    if-eqz v0, :cond_7

    .line 192
    .line 193
    sget-object v2, Lv9/y;->d:Lv9/y;

    .line 194
    .line 195
    :goto_b
    move-object v14, v2

    .line 196
    goto :goto_c

    .line 197
    :cond_7
    iget-object v2, v4, Lcom/google/android/exoplayer2/m2;->h:Lv9/y;

    .line 198
    .line 199
    goto :goto_b

    .line 200
    :goto_c
    if-eqz v0, :cond_8

    .line 201
    .line 202
    iget-object v2, v1, Lcom/google/android/exoplayer2/m1;->e:Lna/c0;

    .line 203
    .line 204
    :goto_d
    move-object v15, v2

    .line 205
    goto :goto_e

    .line 206
    :cond_8
    iget-object v2, v4, Lcom/google/android/exoplayer2/m2;->i:Lna/c0;

    .line 207
    .line 208
    goto :goto_d

    .line 209
    :goto_e
    if-eqz v0, :cond_9

    .line 210
    .line 211
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    :goto_f
    move-object/from16 v16, v0

    .line 216
    .line 217
    goto :goto_10

    .line 218
    :cond_9
    iget-object v0, v4, Lcom/google/android/exoplayer2/m2;->j:Ljava/util/List;

    .line 219
    .line 220
    goto :goto_f

    .line 221
    :goto_10
    iget-object v0, v1, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 222
    .line 223
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/m2;->l:Z

    .line 224
    .line 225
    move/from16 v18, v2

    .line 226
    .line 227
    iget v2, v0, Lcom/google/android/exoplayer2/m2;->m:I

    .line 228
    .line 229
    move/from16 v19, v2

    .line 230
    .line 231
    iget-object v0, v0, Lcom/google/android/exoplayer2/m2;->n:Lcom/google/android/exoplayer2/o2;

    .line 232
    .line 233
    move-object/from16 v20, v0

    .line 234
    .line 235
    const-wide/16 v23, 0x0

    .line 236
    .line 237
    const/16 v27, 0x0

    .line 238
    .line 239
    const/4 v13, 0x0

    .line 240
    move-object v4, v3

    .line 241
    move-object/from16 v6, v17

    .line 242
    .line 243
    move-wide/from16 v9, v25

    .line 244
    .line 245
    move-wide/from16 v21, v25

    .line 246
    .line 247
    invoke-direct/range {v4 .. v27}, Lcom/google/android/exoplayer2/m2;-><init>(Lcom/google/android/exoplayer2/l3;Lcom/google/android/exoplayer2/source/o$b;JJILcom/google/android/exoplayer2/ExoPlaybackException;ZLv9/y;Lna/c0;Ljava/util/List;Lcom/google/android/exoplayer2/source/o$b;ZILcom/google/android/exoplayer2/o2;JJJZ)V

    .line 248
    .line 249
    .line 250
    iput-object v3, v1, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 251
    .line 252
    if-eqz p3, :cond_a

    .line 253
    .line 254
    iget-object v0, v1, Lcom/google/android/exoplayer2/m1;->t:Lcom/google/android/exoplayer2/i2;

    .line 255
    .line 256
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/i2;->x()V

    .line 257
    .line 258
    .line 259
    :cond_a
    return-void
.end method

.method private p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->a:[Lcom/google/android/exoplayer2/y2;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    new-array v0, v0, [Z

    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/m1;->q([Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private p0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/f2;->p()Lcom/google/android/exoplayer2/c2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lcom/google/android/exoplayer2/c2;->f:Lcom/google/android/exoplayer2/d2;

    .line 10
    .line 11
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/d2;->h:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/m1;->A:Z

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
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/m1;->B:Z

    .line 23
    .line 24
    return-void
.end method

.method private q([Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/f2;->q()Lcom/google/android/exoplayer2/c2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c2;->o()Lna/c0;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/m1;->a:[Lcom/google/android/exoplayer2/y2;

    .line 14
    .line 15
    array-length v4, v4

    .line 16
    if-ge v3, v4, :cond_1

    .line 17
    .line 18
    invoke-virtual {v1, v3}, Lna/c0;->c(I)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-nez v4, :cond_0

    .line 23
    .line 24
    iget-object v4, p0, Lcom/google/android/exoplayer2/m1;->b:Ljava/util/Set;

    .line 25
    .line 26
    iget-object v5, p0, Lcom/google/android/exoplayer2/m1;->a:[Lcom/google/android/exoplayer2/y2;

    .line 27
    .line 28
    aget-object v5, v5, v3

    .line 29
    .line 30
    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    iget-object v4, p0, Lcom/google/android/exoplayer2/m1;->a:[Lcom/google/android/exoplayer2/y2;

    .line 37
    .line 38
    aget-object v4, v4, v3

    .line 39
    .line 40
    invoke-interface {v4}, Lcom/google/android/exoplayer2/y2;->reset()V

    .line 41
    .line 42
    .line 43
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/m1;->a:[Lcom/google/android/exoplayer2/y2;

    .line 47
    .line 48
    array-length v3, v3

    .line 49
    if-ge v2, v3, :cond_3

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Lna/c0;->c(I)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    aget-boolean v3, p1, v2

    .line 58
    .line 59
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/m1;->o(IZ)V

    .line 60
    .line 61
    .line 62
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    const/4 p1, 0x1

    .line 66
    iput-boolean p1, v0, Lcom/google/android/exoplayer2/c2;->g:Z

    .line 67
    .line 68
    return-void
.end method

.method private q0(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/f2;->p()Lcom/google/android/exoplayer2/c2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-wide v0, 0xe8d4a51000L

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    add-long/2addr p1, v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/c2;->z(J)J

    .line 17
    .line 18
    .line 19
    move-result-wide p1

    .line 20
    :goto_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/m1;->L:J

    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->o:Lcom/google/android/exoplayer2/o;

    .line 23
    .line 24
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/o;->d(J)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1;->a:[Lcom/google/android/exoplayer2/y2;

    .line 28
    .line 29
    array-length p2, p1

    .line 30
    const/4 v0, 0x0

    .line 31
    :goto_1
    if-ge v0, p2, :cond_2

    .line 32
    .line 33
    aget-object v1, p1, v0

    .line 34
    .line 35
    invoke-static {v1}, Lcom/google/android/exoplayer2/m1;->O(Lcom/google/android/exoplayer2/y2;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    iget-wide v2, p0, Lcom/google/android/exoplayer2/m1;->L:J

    .line 42
    .line 43
    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/y2;->resetPosition(J)V

    .line 44
    .line 45
    .line 46
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m1;->c0()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method private r(Lcom/google/android/exoplayer2/y2;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/y2;->getState()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-interface {p1}, Lcom/google/android/exoplayer2/y2;->stop()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private static r0(Lcom/google/android/exoplayer2/l3;Lcom/google/android/exoplayer2/m1$d;Lcom/google/android/exoplayer2/l3$d;Lcom/google/android/exoplayer2/l3$b;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/google/android/exoplayer2/m1$d;->d:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p3}, Lcom/google/android/exoplayer2/l3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/l3$b;)Lcom/google/android/exoplayer2/l3$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Lcom/google/android/exoplayer2/l3$b;->c:I

    .line 8
    .line 9
    invoke-virtual {p0, v0, p2}, Lcom/google/android/exoplayer2/l3;->r(ILcom/google/android/exoplayer2/l3$d;)Lcom/google/android/exoplayer2/l3$d;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    iget p2, p2, Lcom/google/android/exoplayer2/l3$d;->p:I

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p0, p2, p3, v0}, Lcom/google/android/exoplayer2/l3;->k(ILcom/google/android/exoplayer2/l3$b;Z)Lcom/google/android/exoplayer2/l3$b;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    iget-object p0, p0, Lcom/google/android/exoplayer2/l3$b;->b:Ljava/lang/Object;

    .line 21
    .line 22
    iget-wide v0, p3, Lcom/google/android/exoplayer2/l3$b;->d:J

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
    invoke-virtual {p1, p2, v0, v1, p0}, Lcom/google/android/exoplayer2/m1$d;->b(IJLjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private static s0(Lcom/google/android/exoplayer2/m1$d;Lcom/google/android/exoplayer2/l3;Lcom/google/android/exoplayer2/l3;IZLcom/google/android/exoplayer2/l3$d;Lcom/google/android/exoplayer2/l3$b;)Z
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
    iget-object v2, v0, Lcom/google/android/exoplayer2/m1$d;->d:Ljava/lang/Object;

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
    iget-object v1, v0, Lcom/google/android/exoplayer2/m1$d;->a:Lcom/google/android/exoplayer2/t2;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/t2;->f()J

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
    iget-object v1, v0, Lcom/google/android/exoplayer2/m1$d;->a:Lcom/google/android/exoplayer2/t2;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/t2;->f()J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/p0;->B0(J)J

    .line 41
    .line 42
    .line 43
    move-result-wide v1

    .line 44
    :goto_0
    new-instance v3, Lcom/google/android/exoplayer2/m1$h;

    .line 45
    .line 46
    iget-object v4, v0, Lcom/google/android/exoplayer2/m1$d;->a:Lcom/google/android/exoplayer2/t2;

    .line 47
    .line 48
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/t2;->h()Lcom/google/android/exoplayer2/l3;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    iget-object v5, v0, Lcom/google/android/exoplayer2/m1$d;->a:Lcom/google/android/exoplayer2/t2;

    .line 53
    .line 54
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/t2;->d()I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    invoke-direct {v3, v4, v5, v1, v2}, Lcom/google/android/exoplayer2/m1$h;-><init>(Lcom/google/android/exoplayer2/l3;IJ)V

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
    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/m1;->v0(Lcom/google/android/exoplayer2/l3;Lcom/google/android/exoplayer2/m1$h;ZIZLcom/google/android/exoplayer2/l3$d;Lcom/google/android/exoplayer2/l3$b;)Landroid/util/Pair;

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
    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/l3;->f(Ljava/lang/Object;)I

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
    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/google/android/exoplayer2/m1$d;->b(IJLjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    iget-object v1, v0, Lcom/google/android/exoplayer2/m1$d;->a:Lcom/google/android/exoplayer2/t2;

    .line 101
    .line 102
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/t2;->f()J

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
    invoke-static {v8, p0, v9, v10}, Lcom/google/android/exoplayer2/m1;->r0(Lcom/google/android/exoplayer2/l3;Lcom/google/android/exoplayer2/m1$d;Lcom/google/android/exoplayer2/l3$d;Lcom/google/android/exoplayer2/l3$b;)V

    .line 111
    .line 112
    .line 113
    :cond_2
    return v12

    .line 114
    :cond_3
    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/l3;->f(Ljava/lang/Object;)I

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
    iget-object v3, v0, Lcom/google/android/exoplayer2/m1$d;->a:Lcom/google/android/exoplayer2/t2;

    .line 123
    .line 124
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/t2;->f()J

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
    invoke-static {v8, p0, v9, v10}, Lcom/google/android/exoplayer2/m1;->r0(Lcom/google/android/exoplayer2/l3;Lcom/google/android/exoplayer2/m1$d;Lcom/google/android/exoplayer2/l3$d;Lcom/google/android/exoplayer2/l3$b;)V

    .line 133
    .line 134
    .line 135
    return v12

    .line 136
    :cond_5
    iput v2, v0, Lcom/google/android/exoplayer2/m1$d;->b:I

    .line 137
    .line 138
    iget-object v2, v0, Lcom/google/android/exoplayer2/m1$d;->d:Ljava/lang/Object;

    .line 139
    .line 140
    invoke-virtual {v1, v2, v10}, Lcom/google/android/exoplayer2/l3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/l3$b;)Lcom/google/android/exoplayer2/l3$b;

    .line 141
    .line 142
    .line 143
    iget-boolean v2, v10, Lcom/google/android/exoplayer2/l3$b;->f:Z

    .line 144
    .line 145
    if-eqz v2, :cond_6

    .line 146
    .line 147
    iget v2, v10, Lcom/google/android/exoplayer2/l3$b;->c:I

    .line 148
    .line 149
    invoke-virtual {v1, v2, v9}, Lcom/google/android/exoplayer2/l3;->r(ILcom/google/android/exoplayer2/l3$d;)Lcom/google/android/exoplayer2/l3$d;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    iget v2, v2, Lcom/google/android/exoplayer2/l3$d;->o:I

    .line 154
    .line 155
    iget-object v3, v0, Lcom/google/android/exoplayer2/m1$d;->d:Ljava/lang/Object;

    .line 156
    .line 157
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/l3;->f(Ljava/lang/Object;)I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-ne v2, v1, :cond_6

    .line 162
    .line 163
    iget-wide v1, v0, Lcom/google/android/exoplayer2/m1$d;->c:J

    .line 164
    .line 165
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/exoplayer2/l3$b;->q()J

    .line 166
    .line 167
    .line 168
    move-result-wide v3

    .line 169
    add-long v5, v1, v3

    .line 170
    .line 171
    iget-object v1, v0, Lcom/google/android/exoplayer2/m1$d;->d:Ljava/lang/Object;

    .line 172
    .line 173
    invoke-virtual {v8, v1, v10}, Lcom/google/android/exoplayer2/l3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/l3$b;)Lcom/google/android/exoplayer2/l3$b;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    iget v4, v1, Lcom/google/android/exoplayer2/l3$b;->c:I

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
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/l3;->n(Lcom/google/android/exoplayer2/l3$d;Lcom/google/android/exoplayer2/l3$b;IJ)Landroid/util/Pair;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 190
    .line 191
    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/l3;->f(Ljava/lang/Object;)I

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
    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/google/android/exoplayer2/m1$d;->b(IJLjava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    :cond_6
    return v12
.end method

.method private t([Lna/s;)Lcom/google/common/collect/ImmutableList;
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
    invoke-interface {v5, v2}, Lna/v;->getFormat(I)Lcom/google/android/exoplayer2/p1;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    iget-object v5, v5, Lcom/google/android/exoplayer2/p1;->j:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 21
    .line 22
    if-nez v5, :cond_0

    .line 23
    .line 24
    new-instance v5, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 25
    .line 26
    new-array v6, v2, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    .line 27
    .line 28
    invoke-direct {v5, v6}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

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

.method private t0(Lcom/google/android/exoplayer2/l3;Lcom/google/android/exoplayer2/l3;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/l3;->u()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/l3;->u()Z

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->p:Ljava/util/ArrayList;

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
    iget-object v1, p0, Lcom/google/android/exoplayer2/m1;->p:Ljava/util/ArrayList;

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
    check-cast v2, Lcom/google/android/exoplayer2/m1$d;

    .line 32
    .line 33
    iget v5, p0, Lcom/google/android/exoplayer2/m1;->E:I

    .line 34
    .line 35
    iget-boolean v6, p0, Lcom/google/android/exoplayer2/m1;->F:Z

    .line 36
    .line 37
    iget-object v7, p0, Lcom/google/android/exoplayer2/m1;->k:Lcom/google/android/exoplayer2/l3$d;

    .line 38
    .line 39
    iget-object v8, p0, Lcom/google/android/exoplayer2/m1;->l:Lcom/google/android/exoplayer2/l3$b;

    .line 40
    .line 41
    move-object v3, p1

    .line 42
    move-object v4, p2

    .line 43
    invoke-static/range {v2 .. v8}, Lcom/google/android/exoplayer2/m1;->s0(Lcom/google/android/exoplayer2/m1$d;Lcom/google/android/exoplayer2/l3;Lcom/google/android/exoplayer2/l3;IZLcom/google/android/exoplayer2/l3$d;Lcom/google/android/exoplayer2/l3$b;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_1

    .line 48
    .line 49
    iget-object v1, p0, Lcom/google/android/exoplayer2/m1;->p:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Lcom/google/android/exoplayer2/m1$d;

    .line 56
    .line 57
    iget-object v1, v1, Lcom/google/android/exoplayer2/m1$d;->a:Lcom/google/android/exoplayer2/t2;

    .line 58
    .line 59
    const/4 v2, 0x0

    .line 60
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/t2;->k(Z)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/google/android/exoplayer2/m1;->p:Ljava/util/ArrayList;

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
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1;->p:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method private u()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 6
    .line 7
    iget-object v2, v2, Lv9/j;->a:Ljava/lang/Object;

    .line 8
    .line 9
    iget-wide v3, v0, Lcom/google/android/exoplayer2/m2;->r:J

    .line 10
    .line 11
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/m1;->w(Lcom/google/android/exoplayer2/l3;Ljava/lang/Object;J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    return-wide v0
.end method

.method private static u0(Lcom/google/android/exoplayer2/l3;Lcom/google/android/exoplayer2/m2;Lcom/google/android/exoplayer2/m1$h;Lcom/google/android/exoplayer2/f2;IZLcom/google/android/exoplayer2/l3$d;Lcom/google/android/exoplayer2/l3$b;)Lcom/google/android/exoplayer2/m1$g;
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
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/l3;->u()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Lcom/google/android/exoplayer2/m1$g;

    .line 18
    .line 19
    invoke-static {}, Lcom/google/android/exoplayer2/m2;->k()Lcom/google/android/exoplayer2/source/o$b;

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
    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer2/m1$g;-><init>(Lcom/google/android/exoplayer2/source/o$b;JJZZZ)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_0
    iget-object v14, v8, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 39
    .line 40
    iget-object v12, v14, Lv9/j;->a:Ljava/lang/Object;

    .line 41
    .line 42
    invoke-static {v8, v11}, Lcom/google/android/exoplayer2/m1;->Q(Lcom/google/android/exoplayer2/m2;Lcom/google/android/exoplayer2/l3$b;)Z

    .line 43
    .line 44
    .line 45
    move-result v13

    .line 46
    iget-object v0, v8, Lcom/google/android/exoplayer2/m2;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 47
    .line 48
    invoke-virtual {v0}, Lv9/j;->b()Z

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
    iget-wide v0, v8, Lcom/google/android/exoplayer2/m2;->r:J

    .line 58
    .line 59
    :goto_0
    move-wide v15, v0

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    :goto_1
    iget-wide v0, v8, Lcom/google/android/exoplayer2/m2;->c:J

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
    const/4 v6, -0x1

    .line 70
    const/16 v19, 0x0

    .line 71
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
    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/m1;->v0(Lcom/google/android/exoplayer2/l3;Lcom/google/android/exoplayer2/m1$h;ZIZLcom/google/android/exoplayer2/l3$d;Lcom/google/android/exoplayer2/l3$b;)Landroid/util/Pair;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-nez v0, :cond_3

    .line 97
    .line 98
    invoke-virtual {v7, v10}, Lcom/google/android/exoplayer2/l3;->e(Z)I

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
    iget-wide v1, v9, Lcom/google/android/exoplayer2/m1$h;->c:J

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
    invoke-virtual {v7, v0, v11}, Lcom/google/android/exoplayer2/l3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/l3$b;)Lcom/google/android/exoplayer2/l3$b;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iget v6, v0, Lcom/google/android/exoplayer2/l3$b;->c:I

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
    iget v3, v8, Lcom/google/android/exoplayer2/m2;->e:I

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
    iget-object v0, v8, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 170
    .line 171
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/l3;->u()Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-eqz v0, :cond_7

    .line 176
    .line 177
    invoke-virtual {v7, v10}, Lcom/google/android/exoplayer2/l3;->e(Z)I

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
    invoke-virtual {v7, v12}, Lcom/google/android/exoplayer2/l3;->f(Ljava/lang/Object;)I

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-ne v0, v14, :cond_9

    .line 197
    .line 198
    iget-object v5, v8, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

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
    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/m1;->w0(Lcom/google/android/exoplayer2/l3$d;Lcom/google/android/exoplayer2/l3$b;IZLjava/lang/Object;Lcom/google/android/exoplayer2/l3;Lcom/google/android/exoplayer2/l3;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    if-nez v0, :cond_8

    .line 216
    .line 217
    invoke-virtual {v7, v10}, Lcom/google/android/exoplayer2/l3;->e(Z)I

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
    invoke-virtual {v7, v0, v11}, Lcom/google/android/exoplayer2/l3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/l3$b;)Lcom/google/android/exoplayer2/l3$b;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    iget v0, v0, Lcom/google/android/exoplayer2/l3$b;->c:I

    .line 229
    .line 230
    move/from16 v4, v19

    .line 231
    .line 232
    :goto_8
    move-object/from16 v9, p6

    .line 233
    .line 234
    move v3, v0

    .line 235
    move/from16 v28, v4

    .line 236
    .line 237
    move-wide v0, v15

    .line 238
    move/from16 v27, v19

    .line 239
    .line 240
    move/from16 v29, v27

    .line 241
    .line 242
    goto :goto_6

    .line 243
    :cond_9
    cmp-long v0, v15, v17

    .line 244
    .line 245
    if-nez v0, :cond_a

    .line 246
    .line 247
    invoke-virtual {v7, v12, v11}, Lcom/google/android/exoplayer2/l3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/l3$b;)Lcom/google/android/exoplayer2/l3$b;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    iget v0, v0, Lcom/google/android/exoplayer2/l3$b;->c:I

    .line 252
    .line 253
    goto :goto_7

    .line 254
    :cond_a
    if-eqz v13, :cond_c

    .line 255
    .line 256
    iget-object v0, v8, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 257
    .line 258
    move-object/from16 v6, v21

    .line 259
    .line 260
    iget-object v1, v6, Lv9/j;->a:Ljava/lang/Object;

    .line 261
    .line 262
    invoke-virtual {v0, v1, v11}, Lcom/google/android/exoplayer2/l3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/l3$b;)Lcom/google/android/exoplayer2/l3$b;

    .line 263
    .line 264
    .line 265
    iget-object v0, v8, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 266
    .line 267
    iget v1, v11, Lcom/google/android/exoplayer2/l3$b;->c:I

    .line 268
    .line 269
    move-object/from16 v9, p6

    .line 270
    .line 271
    invoke-virtual {v0, v1, v9}, Lcom/google/android/exoplayer2/l3;->r(ILcom/google/android/exoplayer2/l3$d;)Lcom/google/android/exoplayer2/l3$d;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    iget v0, v0, Lcom/google/android/exoplayer2/l3$d;->o:I

    .line 276
    .line 277
    iget-object v1, v8, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/l3;

    .line 278
    .line 279
    iget-object v2, v6, Lv9/j;->a:Ljava/lang/Object;

    .line 280
    .line 281
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/l3;->f(Ljava/lang/Object;)I

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    if-ne v0, v1, :cond_b

    .line 286
    .line 287
    invoke-virtual/range {p7 .. p7}, Lcom/google/android/exoplayer2/l3$b;->q()J

    .line 288
    .line 289
    .line 290
    move-result-wide v0

    .line 291
    add-long v4, v15, v0

    .line 292
    .line 293
    invoke-virtual {v7, v12, v11}, Lcom/google/android/exoplayer2/l3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/l3$b;)Lcom/google/android/exoplayer2/l3$b;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    iget v3, v0, Lcom/google/android/exoplayer2/l3$b;->c:I

    .line 298
    .line 299
    move-object/from16 v0, p0

    .line 300
    .line 301
    move-object/from16 v1, p6

    .line 302
    .line 303
    move-object/from16 v2, p7

    .line 304
    .line 305
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/l3;->n(Lcom/google/android/exoplayer2/l3$d;Lcom/google/android/exoplayer2/l3$b;IJ)Landroid/util/Pair;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    iget-object v12, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 310
    .line 311
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 312
    .line 313
    check-cast v0, Ljava/lang/Long;

    .line 314
    .line 315
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 316
    .line 317
    .line 318
    move-result-wide v0

    .line 319
    goto :goto_9

    .line 320
    :cond_b
    move-wide v0, v15

    .line 321
    :goto_9
    move v3, v14

    .line 322
    move/from16 v27, v19

    .line 323
    .line 324
    move/from16 v28, v27

    .line 325
    .line 326
    move/from16 v29, v20

    .line 327
    .line 328
    goto :goto_a

    .line 329
    :cond_c
    move-object/from16 v9, p6

    .line 330
    .line 331
    move-object/from16 v6, v21

    .line 332
    .line 333
    move v3, v14

    .line 334
    move-wide v0, v15

    .line 335
    move/from16 v27, v19

    .line 336
    .line 337
    move/from16 v28, v27

    .line 338
    .line 339
    move/from16 v29, v28

    .line 340
    .line 341
    :goto_a
    if-eq v3, v14, :cond_d

    .line 342
    .line 343
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    move-object/from16 v0, p0

    .line 349
    .line 350
    move-object/from16 v1, p6

    .line 351
    .line 352
    move-object/from16 v2, p7

    .line 353
    .line 354
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/l3;->n(Lcom/google/android/exoplayer2/l3$d;Lcom/google/android/exoplayer2/l3$b;IJ)Landroid/util/Pair;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    iget-object v12, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 359
    .line 360
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 361
    .line 362
    check-cast v0, Ljava/lang/Long;

    .line 363
    .line 364
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 365
    .line 366
    .line 367
    move-result-wide v0

    .line 368
    move-object/from16 v2, p3

    .line 369
    .line 370
    move-wide/from16 v25, v17

    .line 371
    .line 372
    goto :goto_b

    .line 373
    :cond_d
    move-object/from16 v2, p3

    .line 374
    .line 375
    move-wide/from16 v25, v0

    .line 376
    .line 377
    :goto_b
    invoke-virtual {v2, v7, v12, v0, v1}, Lcom/google/android/exoplayer2/f2;->B(Lcom/google/android/exoplayer2/l3;Ljava/lang/Object;J)Lcom/google/android/exoplayer2/source/o$b;

    .line 378
    .line 379
    .line 380
    move-result-object v2

    .line 381
    iget v3, v2, Lv9/j;->e:I

    .line 382
    .line 383
    if-eq v3, v14, :cond_f

    .line 384
    .line 385
    iget v4, v6, Lv9/j;->e:I

    .line 386
    .line 387
    if-eq v4, v14, :cond_e

    .line 388
    .line 389
    if-lt v3, v4, :cond_e

    .line 390
    .line 391
    goto :goto_c

    .line 392
    :cond_e
    move/from16 v3, v19

    .line 393
    .line 394
    goto :goto_d

    .line 395
    :cond_f
    :goto_c
    move/from16 v3, v20

    .line 396
    .line 397
    :goto_d
    iget-object v4, v6, Lv9/j;->a:Ljava/lang/Object;

    .line 398
    .line 399
    invoke-virtual {v4, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result v4

    .line 403
    if-eqz v4, :cond_10

    .line 404
    .line 405
    invoke-virtual {v6}, Lv9/j;->b()Z

    .line 406
    .line 407
    .line 408
    move-result v4

    .line 409
    if-nez v4, :cond_10

    .line 410
    .line 411
    invoke-virtual {v2}, Lv9/j;->b()Z

    .line 412
    .line 413
    .line 414
    move-result v4

    .line 415
    if-nez v4, :cond_10

    .line 416
    .line 417
    if-eqz v3, :cond_10

    .line 418
    .line 419
    goto :goto_e

    .line 420
    :cond_10
    move/from16 v20, v19

    .line 421
    .line 422
    :goto_e
    invoke-virtual {v7, v12, v11}, Lcom/google/android/exoplayer2/l3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/l3$b;)Lcom/google/android/exoplayer2/l3$b;

    .line 423
    .line 424
    .line 425
    move-result-object v17

    .line 426
    move v12, v13

    .line 427
    move-object v13, v6

    .line 428
    move-object v3, v6

    .line 429
    move-wide v14, v15

    .line 430
    move-object/from16 v16, v2

    .line 431
    .line 432
    move-wide/from16 v18, v25

    .line 433
    .line 434
    invoke-static/range {v12 .. v19}, Lcom/google/android/exoplayer2/m1;->M(ZLcom/google/android/exoplayer2/source/o$b;JLcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/l3$b;J)Z

    .line 435
    .line 436
    .line 437
    move-result v4

    .line 438
    if-nez v20, :cond_11

    .line 439
    .line 440
    if-eqz v4, :cond_12

    .line 441
    .line 442
    :cond_11
    move-object v2, v3

    .line 443
    :cond_12
    invoke-virtual {v2}, Lv9/j;->b()Z

    .line 444
    .line 445
    .line 446
    move-result v4

    .line 447
    if-eqz v4, :cond_13

    .line 448
    .line 449
    invoke-virtual {v2, v3}, Lv9/j;->equals(Ljava/lang/Object;)Z

    .line 450
    .line 451
    .line 452
    move-result v0

    .line 453
    if-eqz v0, :cond_14

    .line 454
    .line 455
    iget-wide v0, v8, Lcom/google/android/exoplayer2/m2;->r:J

    .line 456
    .line 457
    :cond_13
    :goto_f
    move-wide/from16 v23, v0

    .line 458
    .line 459
    goto :goto_10

    .line 460
    :cond_14
    iget-object v0, v2, Lv9/j;->a:Ljava/lang/Object;

    .line 461
    .line 462
    invoke-virtual {v7, v0, v11}, Lcom/google/android/exoplayer2/l3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/l3$b;)Lcom/google/android/exoplayer2/l3$b;

    .line 463
    .line 464
    .line 465
    iget v0, v2, Lv9/j;->c:I

    .line 466
    .line 467
    iget v1, v2, Lv9/j;->b:I

    .line 468
    .line 469
    invoke-virtual {v11, v1}, Lcom/google/android/exoplayer2/l3$b;->n(I)I

    .line 470
    .line 471
    .line 472
    move-result v1

    .line 473
    if-ne v0, v1, :cond_15

    .line 474
    .line 475
    invoke-virtual/range {p7 .. p7}, Lcom/google/android/exoplayer2/l3$b;->j()J

    .line 476
    .line 477
    .line 478
    move-result-wide v0

    .line 479
    goto :goto_f

    .line 480
    :cond_15
    const-wide/16 v0, 0x0

    .line 481
    .line 482
    goto :goto_f

    .line 483
    :goto_10
    new-instance v0, Lcom/google/android/exoplayer2/m1$g;

    .line 484
    .line 485
    move-object/from16 v21, v0

    .line 486
    .line 487
    move-object/from16 v22, v2

    .line 488
    .line 489
    invoke-direct/range {v21 .. v29}, Lcom/google/android/exoplayer2/m1$g;-><init>(Lcom/google/android/exoplayer2/source/o$b;JJZZZ)V

    .line 490
    .line 491
    .line 492
    return-object v0
.end method

.method private static v(Lna/s;)[Lcom/google/android/exoplayer2/p1;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    invoke-interface {p0}, Lna/v;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v1, v0

    .line 10
    :goto_0
    new-array v2, v1, [Lcom/google/android/exoplayer2/p1;

    .line 11
    .line 12
    :goto_1
    if-ge v0, v1, :cond_1

    .line 13
    .line 14
    invoke-interface {p0, v0}, Lna/v;->getFormat(I)Lcom/google/android/exoplayer2/p1;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    aput-object v3, v2, v0

    .line 19
    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    return-object v2
.end method

.method private static v0(Lcom/google/android/exoplayer2/l3;Lcom/google/android/exoplayer2/m1$h;ZIZLcom/google/android/exoplayer2/l3$d;Lcom/google/android/exoplayer2/l3$b;)Landroid/util/Pair;
    .locals 12

    .line 1
    move-object v7, p0

    .line 2
    move-object v0, p1

    .line 3
    move-object/from16 v8, p6

    .line 4
    .line 5
    iget-object v1, v0, Lcom/google/android/exoplayer2/m1$h;->a:Lcom/google/android/exoplayer2/l3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/l3;->u()Z

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
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/l3;->u()Z

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
    iget v4, v0, Lcom/google/android/exoplayer2/m1$h;->b:I

    .line 25
    .line 26
    iget-wide v5, v0, Lcom/google/android/exoplayer2/m1$h;->c:J

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
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/l3;->n(Lcom/google/android/exoplayer2/l3$d;Lcom/google/android/exoplayer2/l3$b;IJ)Landroid/util/Pair;

    .line 34
    .line 35
    .line 36
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/l3;->equals(Ljava/lang/Object;)Z

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
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/l3;->f(Ljava/lang/Object;)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    const/4 v3, -0x1

    .line 51
    if-eq v2, v3, :cond_4

    .line 52
    .line 53
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 54
    .line 55
    invoke-virtual {v10, v2, v8}, Lcom/google/android/exoplayer2/l3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/l3$b;)Lcom/google/android/exoplayer2/l3$b;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    iget-boolean v2, v2, Lcom/google/android/exoplayer2/l3$b;->f:Z

    .line 60
    .line 61
    if-eqz v2, :cond_3

    .line 62
    .line 63
    iget v2, v8, Lcom/google/android/exoplayer2/l3$b;->c:I

    .line 64
    .line 65
    move-object/from16 v11, p5

    .line 66
    .line 67
    invoke-virtual {v10, v2, v11}, Lcom/google/android/exoplayer2/l3;->r(ILcom/google/android/exoplayer2/l3$d;)Lcom/google/android/exoplayer2/l3$d;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iget v2, v2, Lcom/google/android/exoplayer2/l3$d;->o:I

    .line 72
    .line 73
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 74
    .line 75
    invoke-virtual {v10, v3}, Lcom/google/android/exoplayer2/l3;->f(Ljava/lang/Object;)I

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
    invoke-virtual {p0, v1, v8}, Lcom/google/android/exoplayer2/l3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/l3$b;)Lcom/google/android/exoplayer2/l3$b;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    iget v3, v1, Lcom/google/android/exoplayer2/l3$b;->c:I

    .line 88
    .line 89
    iget-wide v4, v0, Lcom/google/android/exoplayer2/m1$h;->c:J

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
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/l3;->n(Lcom/google/android/exoplayer2/l3$d;Lcom/google/android/exoplayer2/l3$b;IJ)Landroid/util/Pair;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    :cond_3
    return-object v1

    .line 101
    :cond_4
    move-object/from16 v11, p5

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
    move v2, p3

    .line 112
    move/from16 v3, p4

    .line 113
    .line 114
    move-object v5, v10

    .line 115
    move-object v6, p0

    .line 116
    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/m1;->w0(Lcom/google/android/exoplayer2/l3$d;Lcom/google/android/exoplayer2/l3$b;IZLjava/lang/Object;Lcom/google/android/exoplayer2/l3;Lcom/google/android/exoplayer2/l3;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    if-eqz v0, :cond_5

    .line 121
    .line 122
    invoke-virtual {p0, v0, v8}, Lcom/google/android/exoplayer2/l3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/l3$b;)Lcom/google/android/exoplayer2/l3$b;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iget v3, v0, Lcom/google/android/exoplayer2/l3$b;->c:I

    .line 127
    .line 128
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    move-object v0, p0

    .line 134
    move-object/from16 v1, p5

    .line 135
    .line 136
    move-object/from16 v2, p6

    .line 137
    .line 138
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/l3;->n(Lcom/google/android/exoplayer2/l3$d;Lcom/google/android/exoplayer2/l3$b;IJ)Landroid/util/Pair;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    return-object v0

    .line 143
    :catch_0
    :cond_5
    return-object v9
.end method

.method private w(Lcom/google/android/exoplayer2/l3;Ljava/lang/Object;J)J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->l:Lcom/google/android/exoplayer2/l3$b;

    .line 2
    .line 3
    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/l3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/l3$b;)Lcom/google/android/exoplayer2/l3$b;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iget p2, p2, Lcom/google/android/exoplayer2/l3$b;->c:I

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->k:Lcom/google/android/exoplayer2/l3$d;

    .line 10
    .line 11
    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/l3;->r(ILcom/google/android/exoplayer2/l3$d;)Lcom/google/android/exoplayer2/l3$d;

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1;->k:Lcom/google/android/exoplayer2/l3$d;

    .line 15
    .line 16
    iget-wide v0, p1, Lcom/google/android/exoplayer2/l3$d;->f:J

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
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/l3$d;->i()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1;->k:Lcom/google/android/exoplayer2/l3$d;

    .line 34
    .line 35
    iget-boolean p2, p1, Lcom/google/android/exoplayer2/l3$d;->i:Z

    .line 36
    .line 37
    if-nez p2, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/l3$d;->d()J

    .line 41
    .line 42
    .line 43
    move-result-wide p1

    .line 44
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->k:Lcom/google/android/exoplayer2/l3$d;

    .line 45
    .line 46
    iget-wide v0, v0, Lcom/google/android/exoplayer2/l3$d;->f:J

    .line 47
    .line 48
    sub-long/2addr p1, v0

    .line 49
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/p0;->B0(J)J

    .line 50
    .line 51
    .line 52
    move-result-wide p1

    .line 53
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->l:Lcom/google/android/exoplayer2/l3$b;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/l3$b;->q()J

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

.method static w0(Lcom/google/android/exoplayer2/l3$d;Lcom/google/android/exoplayer2/l3$b;IZLjava/lang/Object;Lcom/google/android/exoplayer2/l3;Lcom/google/android/exoplayer2/l3;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-virtual {p5, p4}, Lcom/google/android/exoplayer2/l3;->f(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result p4

    .line 5
    invoke-virtual {p5}, Lcom/google/android/exoplayer2/l3;->m()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v4, p4

    .line 12
    move p4, v1

    .line 13
    :goto_0
    if-ge v2, v0, :cond_1

    .line 14
    .line 15
    if-ne p4, v1, :cond_1

    .line 16
    .line 17
    move-object v3, p5

    .line 18
    move-object v5, p1

    .line 19
    move-object v6, p0

    .line 20
    move v7, p2

    .line 21
    move v8, p3

    .line 22
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/l3;->h(ILcom/google/android/exoplayer2/l3$b;Lcom/google/android/exoplayer2/l3$d;IZ)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-ne v4, v1, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    invoke-virtual {p5, v4}, Lcom/google/android/exoplayer2/l3;->q(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p4

    .line 33
    invoke-virtual {p6, p4}, Lcom/google/android/exoplayer2/l3;->f(Ljava/lang/Object;)I

    .line 34
    .line 35
    .line 36
    move-result p4

    .line 37
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    :goto_1
    if-ne p4, v1, :cond_2

    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    invoke-virtual {p6, p4}, Lcom/google/android/exoplayer2/l3;->q(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    :goto_2
    return-object p0
.end method

.method private x()J
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/f2;->q()Lcom/google/android/exoplayer2/c2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    return-wide v0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c2;->l()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/c2;->d:Z

    .line 17
    .line 18
    if-nez v3, :cond_1

    .line 19
    .line 20
    return-wide v1

    .line 21
    :cond_1
    const/4 v3, 0x0

    .line 22
    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/m1;->a:[Lcom/google/android/exoplayer2/y2;

    .line 23
    .line 24
    array-length v5, v4

    .line 25
    if-ge v3, v5, :cond_5

    .line 26
    .line 27
    aget-object v4, v4, v3

    .line 28
    .line 29
    invoke-static {v4}, Lcom/google/android/exoplayer2/m1;->O(Lcom/google/android/exoplayer2/y2;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_4

    .line 34
    .line 35
    iget-object v4, p0, Lcom/google/android/exoplayer2/m1;->a:[Lcom/google/android/exoplayer2/y2;

    .line 36
    .line 37
    aget-object v4, v4, v3

    .line 38
    .line 39
    invoke-interface {v4}, Lcom/google/android/exoplayer2/y2;->getStream()Lv9/s;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    iget-object v5, v0, Lcom/google/android/exoplayer2/c2;->c:[Lv9/s;

    .line 44
    .line 45
    aget-object v5, v5, v3

    .line 46
    .line 47
    if-eq v4, v5, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/m1;->a:[Lcom/google/android/exoplayer2/y2;

    .line 51
    .line 52
    aget-object v4, v4, v3

    .line 53
    .line 54
    invoke-interface {v4}, Lcom/google/android/exoplayer2/y2;->e()J

    .line 55
    .line 56
    .line 57
    move-result-wide v4

    .line 58
    const-wide/high16 v6, -0x8000000000000000L

    .line 59
    .line 60
    cmp-long v8, v4, v6

    .line 61
    .line 62
    if-nez v8, :cond_3

    .line 63
    .line 64
    return-wide v6

    .line 65
    :cond_3
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 66
    .line 67
    .line 68
    move-result-wide v1

    .line 69
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_5
    return-wide v1
.end method

.method private x0(JJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->h:Lcom/google/android/exoplayer2/util/o;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    add-long/2addr p1, p3

    .line 5
    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/util/o;->sendEmptyMessageAtTime(IJ)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private y(Lcom/google/android/exoplayer2/l3;)Landroid/util/Pair;
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/l3;->u()Z

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
    invoke-static {}, Lcom/google/android/exoplayer2/m2;->k()Lcom/google/android/exoplayer2/source/o$b;

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
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/m1;->F:Z

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/l3;->e(Z)I

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    iget-object v4, p0, Lcom/google/android/exoplayer2/m1;->k:Lcom/google/android/exoplayer2/l3$d;

    .line 29
    .line 30
    iget-object v5, p0, Lcom/google/android/exoplayer2/m1;->l:Lcom/google/android/exoplayer2/l3$b;

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
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/l3;->n(Lcom/google/android/exoplayer2/l3$d;Lcom/google/android/exoplayer2/l3$b;IJ)Landroid/util/Pair;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v3, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 43
    .line 44
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 45
    .line 46
    invoke-virtual {v3, p1, v4, v1, v2}, Lcom/google/android/exoplayer2/f2;->B(Lcom/google/android/exoplayer2/l3;Ljava/lang/Object;J)Lcom/google/android/exoplayer2/source/o$b;

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
    invoke-virtual {v3}, Lv9/j;->b()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    iget-object v0, v3, Lv9/j;->a:Ljava/lang/Object;

    .line 65
    .line 66
    iget-object v4, p0, Lcom/google/android/exoplayer2/m1;->l:Lcom/google/android/exoplayer2/l3$b;

    .line 67
    .line 68
    invoke-virtual {p1, v0, v4}, Lcom/google/android/exoplayer2/l3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/l3$b;)Lcom/google/android/exoplayer2/l3$b;

    .line 69
    .line 70
    .line 71
    iget p1, v3, Lv9/j;->c:I

    .line 72
    .line 73
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->l:Lcom/google/android/exoplayer2/l3$b;

    .line 74
    .line 75
    iget v4, v3, Lv9/j;->b:I

    .line 76
    .line 77
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/l3$b;->n(I)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-ne p1, v0, :cond_1

    .line 82
    .line 83
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1;->l:Lcom/google/android/exoplayer2/l3$b;

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/l3$b;->j()J

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

.method private z0(Z)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/f2;->p()Lcom/google/android/exoplayer2/c2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/google/android/exoplayer2/c2;->f:Lcom/google/android/exoplayer2/d2;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/google/android/exoplayer2/d2;->a:Lcom/google/android/exoplayer2/source/o$b;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 12
    .line 13
    iget-wide v3, v1, Lcom/google/android/exoplayer2/m2;->r:J

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
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/m1;->C0(Lcom/google/android/exoplayer2/source/o$b;JZZ)J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    iget-object v1, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 24
    .line 25
    iget-wide v1, v1, Lcom/google/android/exoplayer2/m2;->r:J

    .line 26
    .line 27
    cmp-long v1, v3, v1

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    iget-object v1, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 32
    .line 33
    iget-wide v5, v1, Lcom/google/android/exoplayer2/m2;->c:J

    .line 34
    .line 35
    iget-wide v7, v1, Lcom/google/android/exoplayer2/m2;->d:J

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
    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/m1;->J(Lcom/google/android/exoplayer2/source/o$b;JJJZI)Lcom/google/android/exoplayer2/m2;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 46
    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public K0(Ljava/util/List;IJLv9/t;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->h:Lcom/google/android/exoplayer2/util/o;

    .line 2
    .line 3
    new-instance v8, Lcom/google/android/exoplayer2/m1$b;

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
    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/m1$b;-><init>(Ljava/util/List;Lv9/t;IJLcom/google/android/exoplayer2/m1$a;)V

    .line 12
    .line 13
    .line 14
    const/16 p1, 0x11

    .line 15
    .line 16
    invoke-interface {v0, p1, v8}, Lcom/google/android/exoplayer2/util/o;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/o$a;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/o$a;->a()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public N0(ZI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->h:Lcom/google/android/exoplayer2/util/o;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/util/o;->obtainMessage(III)Lcom/google/android/exoplayer2/util/o$a;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/o$a;->a()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public P0(Lcom/google/android/exoplayer2/o2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->h:Lcom/google/android/exoplayer2/util/o;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/o;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/o$a;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/o$a;->a()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public R0(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->h:Lcom/google/android/exoplayer2/util/o;

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/exoplayer2/util/o;->obtainMessage(III)Lcom/google/android/exoplayer2/util/o$a;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/o$a;->a()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public U0(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->h:Lcom/google/android/exoplayer2/util/o;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0xc

    .line 5
    .line 6
    invoke-interface {v0, v2, p1, v1}, Lcom/google/android/exoplayer2/util/o;->obtainMessage(III)Lcom/google/android/exoplayer2/util/o$a;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/o$a;->a()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->h:Lcom/google/android/exoplayer2/util/o;

    .line 2
    .line 3
    const/16 v1, 0x16

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/o;->sendEmptyMessage(I)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public declared-synchronized b(Lcom/google/android/exoplayer2/t2;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/m1;->z:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->i:Landroid/os/HandlerThread;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->h:Lcom/google/android/exoplayer2/util/o;

    .line 16
    .line 17
    const/16 v1, 0xe

    .line 18
    .line 19
    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/o;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/o$a;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/o$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "ExoPlayerImplInternal"

    .line 31
    .line 32
    const-string v1, "Ignoring messages sent after release."

    .line 33
    .line 34
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/t2;->k(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    .line 41
    monitor-exit p0

    .line 42
    return-void

    .line 43
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    throw p1
.end method

.method public e1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->h:Lcom/google/android/exoplayer2/util/o;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/o;->obtainMessage(I)Lcom/google/android/exoplayer2/util/o$a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/o$a;->a()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public f0(Lcom/google/android/exoplayer2/source/n;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->h:Lcom/google/android/exoplayer2/util/o;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/o;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/o$a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/o$a;->a()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public bridge synthetic g(Lcom/google/android/exoplayer2/source/b0;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/source/n;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/m1;->f0(Lcom/google/android/exoplayer2/source/n;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public g0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->h:Lcom/google/android/exoplayer2/util/o;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/o;->obtainMessage(I)Lcom/google/android/exoplayer2/util/o$a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/o$a;->a()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public h(Lcom/google/android/exoplayer2/source/n;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->h:Lcom/google/android/exoplayer2/util/o;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/o;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/o$a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/o$a;->a()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7

    .line 1
    const-string v0, "Playback error"

    .line 2
    .line 3
    const-string v1, "ExoPlayerImplInternal"

    .line 4
    .line 5
    const/16 v2, 0x3e8

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I

    .line 10
    .line 11
    packed-switch v5, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    return v3

    .line 15
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m1;->k()V

    .line 16
    .line 17
    .line 18
    goto/16 :goto_e

    .line 19
    .line 20
    :catch_0
    move-exception p1

    .line 21
    goto/16 :goto_5

    .line 22
    .line 23
    :catch_1
    move-exception p1

    .line 24
    goto/16 :goto_6

    .line 25
    .line 26
    :catch_2
    move-exception p1

    .line 27
    goto/16 :goto_7

    .line 28
    .line 29
    :catch_3
    move-exception p1

    .line 30
    goto/16 :goto_8

    .line 31
    .line 32
    :catch_4
    move-exception p1

    .line 33
    goto/16 :goto_9

    .line 34
    .line 35
    :catch_5
    move-exception p1

    .line 36
    goto/16 :goto_c

    .line 37
    .line 38
    :catch_6
    move-exception p1

    .line 39
    goto/16 :goto_d

    .line 40
    .line 41
    :pswitch_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 42
    .line 43
    if-ne p1, v4, :cond_0

    .line 44
    .line 45
    move p1, v4

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move p1, v3

    .line 48
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/m1;->L0(Z)V

    .line 49
    .line 50
    .line 51
    goto/16 :goto_e

    .line 52
    .line 53
    :pswitch_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 54
    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    move p1, v4

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    move p1, v3

    .line 60
    :goto_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/m1;->M0(Z)V

    .line 61
    .line 62
    .line 63
    goto/16 :goto_e

    .line 64
    .line 65
    :pswitch_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m1;->a0()V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_e

    .line 69
    .line 70
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast p1, Lv9/t;

    .line 73
    .line 74
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/m1;->W0(Lv9/t;)V

    .line 75
    .line 76
    .line 77
    goto/16 :goto_e

    .line 78
    .line 79
    :pswitch_5
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 80
    .line 81
    iget v6, p1, Landroid/os/Message;->arg2:I

    .line 82
    .line 83
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast p1, Lv9/t;

    .line 86
    .line 87
    invoke-direct {p0, v5, v6, p1}, Lcom/google/android/exoplayer2/m1;->k0(IILv9/t;)V

    .line 88
    .line 89
    .line 90
    goto/16 :goto_e

    .line 91
    .line 92
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 93
    .line 94
    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    const/4 p1, 0x0

    .line 98
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/m1;->b0(Lcom/google/android/exoplayer2/m1$c;)V

    .line 99
    .line 100
    .line 101
    goto/16 :goto_e

    .line 102
    .line 103
    :pswitch_7
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v5, Lcom/google/android/exoplayer2/m1$b;

    .line 106
    .line 107
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 108
    .line 109
    invoke-direct {p0, v5, p1}, Lcom/google/android/exoplayer2/m1;->j(Lcom/google/android/exoplayer2/m1$b;I)V

    .line 110
    .line 111
    .line 112
    goto/16 :goto_e

    .line 113
    .line 114
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast p1, Lcom/google/android/exoplayer2/m1$b;

    .line 117
    .line 118
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/m1;->J0(Lcom/google/android/exoplayer2/m1$b;)V

    .line 119
    .line 120
    .line 121
    goto/16 :goto_e

    .line 122
    .line 123
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast p1, Lcom/google/android/exoplayer2/o2;

    .line 126
    .line 127
    invoke-direct {p0, p1, v3}, Lcom/google/android/exoplayer2/m1;->I(Lcom/google/android/exoplayer2/o2;Z)V

    .line 128
    .line 129
    .line 130
    goto/16 :goto_e

    .line 131
    .line 132
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast p1, Lcom/google/android/exoplayer2/t2;

    .line 135
    .line 136
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/m1;->F0(Lcom/google/android/exoplayer2/t2;)V

    .line 137
    .line 138
    .line 139
    goto/16 :goto_e

    .line 140
    .line 141
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast p1, Lcom/google/android/exoplayer2/t2;

    .line 144
    .line 145
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/m1;->D0(Lcom/google/android/exoplayer2/t2;)V

    .line 146
    .line 147
    .line 148
    goto/16 :goto_e

    .line 149
    .line 150
    :pswitch_c
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 151
    .line 152
    if-eqz v5, :cond_2

    .line 153
    .line 154
    move v5, v4

    .line 155
    goto :goto_2

    .line 156
    :cond_2
    move v5, v3

    .line 157
    :goto_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 160
    .line 161
    invoke-direct {p0, v5, p1}, Lcom/google/android/exoplayer2/m1;->I0(ZLjava/util/concurrent/atomic/AtomicBoolean;)V

    .line 162
    .line 163
    .line 164
    goto/16 :goto_e

    .line 165
    .line 166
    :pswitch_d
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 167
    .line 168
    if-eqz p1, :cond_3

    .line 169
    .line 170
    move p1, v4

    .line 171
    goto :goto_3

    .line 172
    :cond_3
    move p1, v3

    .line 173
    :goto_3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/m1;->V0(Z)V

    .line 174
    .line 175
    .line 176
    goto/16 :goto_e

    .line 177
    .line 178
    :pswitch_e
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 179
    .line 180
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/m1;->S0(I)V

    .line 181
    .line 182
    .line 183
    goto/16 :goto_e

    .line 184
    .line 185
    :pswitch_f
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m1;->n0()V

    .line 186
    .line 187
    .line 188
    goto/16 :goto_e

    .line 189
    .line 190
    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast p1, Lcom/google/android/exoplayer2/source/n;

    .line 193
    .line 194
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/m1;->C(Lcom/google/android/exoplayer2/source/n;)V

    .line 195
    .line 196
    .line 197
    goto/16 :goto_e

    .line 198
    .line 199
    :pswitch_11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast p1, Lcom/google/android/exoplayer2/source/n;

    .line 202
    .line 203
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/m1;->G(Lcom/google/android/exoplayer2/source/n;)V

    .line 204
    .line 205
    .line 206
    goto/16 :goto_e

    .line 207
    .line 208
    :pswitch_12
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m1;->j0()V

    .line 209
    .line 210
    .line 211
    return v4

    .line 212
    :pswitch_13
    invoke-direct {p0, v3, v4}, Lcom/google/android/exoplayer2/m1;->f1(ZZ)V

    .line 213
    .line 214
    .line 215
    goto/16 :goto_e

    .line 216
    .line 217
    :pswitch_14
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 218
    .line 219
    check-cast p1, Lcom/google/android/exoplayer2/d3;

    .line 220
    .line 221
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/m1;->T0(Lcom/google/android/exoplayer2/d3;)V

    .line 222
    .line 223
    .line 224
    goto/16 :goto_e

    .line 225
    .line 226
    :pswitch_15
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast p1, Lcom/google/android/exoplayer2/o2;

    .line 229
    .line 230
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/m1;->Q0(Lcom/google/android/exoplayer2/o2;)V

    .line 231
    .line 232
    .line 233
    goto/16 :goto_e

    .line 234
    .line 235
    :pswitch_16
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 236
    .line 237
    check-cast p1, Lcom/google/android/exoplayer2/m1$h;

    .line 238
    .line 239
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/m1;->A0(Lcom/google/android/exoplayer2/m1$h;)V

    .line 240
    .line 241
    .line 242
    goto/16 :goto_e

    .line 243
    .line 244
    :pswitch_17
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m1;->n()V

    .line 245
    .line 246
    .line 247
    goto/16 :goto_e

    .line 248
    .line 249
    :pswitch_18
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 250
    .line 251
    if-eqz v5, :cond_4

    .line 252
    .line 253
    move v5, v4

    .line 254
    goto :goto_4

    .line 255
    :cond_4
    move v5, v3

    .line 256
    :goto_4
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 257
    .line 258
    invoke-direct {p0, v5, p1, v4, v4}, Lcom/google/android/exoplayer2/m1;->O0(ZIZI)V

    .line 259
    .line 260
    .line 261
    goto/16 :goto_e

    .line 262
    .line 263
    :pswitch_19
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m1;->h0()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/google/android/exoplayer2/upstream/DataSourceException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/exoplayer2/source/BehindLiveWindowException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .line 265
    .line 266
    goto/16 :goto_e

    .line 267
    .line 268
    :goto_5
    instance-of v5, p1, Ljava/lang/IllegalStateException;

    .line 269
    .line 270
    if-nez v5, :cond_5

    .line 271
    .line 272
    instance-of v5, p1, Ljava/lang/IllegalArgumentException;

    .line 273
    .line 274
    if-eqz v5, :cond_6

    .line 275
    .line 276
    :cond_5
    const/16 v2, 0x3ec

    .line 277
    .line 278
    :cond_6
    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    invoke-static {v1, v0, p1}, Lcom/google/android/exoplayer2/util/s;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 283
    .line 284
    .line 285
    invoke-direct {p0, v4, v3}, Lcom/google/android/exoplayer2/m1;->f1(ZZ)V

    .line 286
    .line 287
    .line 288
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 289
    .line 290
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/m2;->e(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lcom/google/android/exoplayer2/m2;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    iput-object p1, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 295
    .line 296
    goto/16 :goto_e

    .line 297
    .line 298
    :goto_6
    const/16 v0, 0x7d0

    .line 299
    .line 300
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/m1;->D(Ljava/io/IOException;I)V

    .line 301
    .line 302
    .line 303
    goto/16 :goto_e

    .line 304
    .line 305
    :goto_7
    const/16 v0, 0x3ea

    .line 306
    .line 307
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/m1;->D(Ljava/io/IOException;I)V

    .line 308
    .line 309
    .line 310
    goto/16 :goto_e

    .line 311
    .line 312
    :goto_8
    iget v0, p1, Lcom/google/android/exoplayer2/upstream/DataSourceException;->reason:I

    .line 313
    .line 314
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/m1;->D(Ljava/io/IOException;I)V

    .line 315
    .line 316
    .line 317
    goto/16 :goto_e

    .line 318
    .line 319
    :goto_9
    iget v0, p1, Lcom/google/android/exoplayer2/ParserException;->dataType:I

    .line 320
    .line 321
    if-ne v0, v4, :cond_8

    .line 322
    .line 323
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/ParserException;->contentIsMalformed:Z

    .line 324
    .line 325
    if-eqz v0, :cond_7

    .line 326
    .line 327
    const/16 v0, 0xbb9

    .line 328
    .line 329
    :goto_a
    move v2, v0

    .line 330
    goto :goto_b

    .line 331
    :cond_7
    const/16 v0, 0xbbb

    .line 332
    .line 333
    goto :goto_a

    .line 334
    :cond_8
    const/4 v1, 0x4

    .line 335
    if-ne v0, v1, :cond_a

    .line 336
    .line 337
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/ParserException;->contentIsMalformed:Z

    .line 338
    .line 339
    if-eqz v0, :cond_9

    .line 340
    .line 341
    const/16 v0, 0xbba

    .line 342
    .line 343
    goto :goto_a

    .line 344
    :cond_9
    const/16 v0, 0xbbc

    .line 345
    .line 346
    goto :goto_a

    .line 347
    :cond_a
    :goto_b
    invoke-direct {p0, p1, v2}, Lcom/google/android/exoplayer2/m1;->D(Ljava/io/IOException;I)V

    .line 348
    .line 349
    .line 350
    goto :goto_e

    .line 351
    :goto_c
    iget v0, p1, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;->errorCode:I

    .line 352
    .line 353
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/m1;->D(Ljava/io/IOException;I)V

    .line 354
    .line 355
    .line 356
    goto :goto_e

    .line 357
    :goto_d
    iget v2, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    .line 358
    .line 359
    if-ne v2, v4, :cond_b

    .line 360
    .line 361
    iget-object v2, p0, Lcom/google/android/exoplayer2/m1;->s:Lcom/google/android/exoplayer2/f2;

    .line 362
    .line 363
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/f2;->q()Lcom/google/android/exoplayer2/c2;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    if-eqz v2, :cond_b

    .line 368
    .line 369
    iget-object v2, v2, Lcom/google/android/exoplayer2/c2;->f:Lcom/google/android/exoplayer2/d2;

    .line 370
    .line 371
    iget-object v2, v2, Lcom/google/android/exoplayer2/d2;->a:Lcom/google/android/exoplayer2/source/o$b;

    .line 372
    .line 373
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->copyWithMediaPeriodId(Lv9/j;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 374
    .line 375
    .line 376
    move-result-object p1

    .line 377
    :cond_b
    iget-boolean v2, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->isRecoverable:Z

    .line 378
    .line 379
    if-eqz v2, :cond_c

    .line 380
    .line 381
    iget-object v2, p0, Lcom/google/android/exoplayer2/m1;->O:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 382
    .line 383
    if-nez v2, :cond_c

    .line 384
    .line 385
    const-string v0, "Recoverable renderer error"

    .line 386
    .line 387
    invoke-static {v1, v0, p1}, Lcom/google/android/exoplayer2/util/s;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 388
    .line 389
    .line 390
    iput-object p1, p0, Lcom/google/android/exoplayer2/m1;->O:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 391
    .line 392
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->h:Lcom/google/android/exoplayer2/util/o;

    .line 393
    .line 394
    const/16 v1, 0x19

    .line 395
    .line 396
    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/o;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/o$a;

    .line 397
    .line 398
    .line 399
    move-result-object p1

    .line 400
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/util/o;->b(Lcom/google/android/exoplayer2/util/o$a;)Z

    .line 401
    .line 402
    .line 403
    goto :goto_e

    .line 404
    :cond_c
    iget-object v2, p0, Lcom/google/android/exoplayer2/m1;->O:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 405
    .line 406
    if-eqz v2, :cond_d

    .line 407
    .line 408
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 409
    .line 410
    .line 411
    iget-object p1, p0, Lcom/google/android/exoplayer2/m1;->O:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 412
    .line 413
    :cond_d
    invoke-static {v1, v0, p1}, Lcom/google/android/exoplayer2/util/s;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 414
    .line 415
    .line 416
    invoke-direct {p0, v4, v3}, Lcom/google/android/exoplayer2/m1;->f1(ZZ)V

    .line 417
    .line 418
    .line 419
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 420
    .line 421
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/m2;->e(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lcom/google/android/exoplayer2/m2;

    .line 422
    .line 423
    .line 424
    move-result-object p1

    .line 425
    iput-object p1, p0, Lcom/google/android/exoplayer2/m1;->x:Lcom/google/android/exoplayer2/m2;

    .line 426
    .line 427
    :goto_e
    invoke-direct {p0}, Lcom/google/android/exoplayer2/m1;->U()V

    .line 428
    .line 429
    .line 430
    return v4

    .line 431
    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized i0()Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/m1;->z:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->i:Landroid/os/HandlerThread;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->h:Lcom/google/android/exoplayer2/util/o;

    .line 16
    .line 17
    const/4 v1, 0x7

    .line 18
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/o;->sendEmptyMessage(I)Z

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/google/android/exoplayer2/k1;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/k1;-><init>(Lcom/google/android/exoplayer2/m1;)V

    .line 24
    .line 25
    .line 26
    iget-wide v1, p0, Lcom/google/android/exoplayer2/m1;->v:J

    .line 27
    .line 28
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/m1;->n1(Lcom/google/common/base/q;J)V

    .line 29
    .line 30
    .line 31
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/m1;->z:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    monitor-exit p0

    .line 34
    return v0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    monitor-exit p0

    .line 38
    const/4 v0, 0x1

    .line 39
    return v0

    .line 40
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    throw v0
.end method

.method public l0(IILv9/t;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->h:Lcom/google/android/exoplayer2/util/o;

    .line 2
    .line 3
    const/16 v1, 0x14

    .line 4
    .line 5
    invoke-interface {v0, v1, p1, p2, p3}, Lcom/google/android/exoplayer2/util/o;->obtainMessage(IIILjava/lang/Object;)Lcom/google/android/exoplayer2/util/o$a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/o$a;->a()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/o2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->h:Lcom/google/android/exoplayer2/util/o;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/o;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/o$a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/o$a;->a()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onTrackSelectionsInvalidated()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->h:Lcom/google/android/exoplayer2/util/o;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/o;->sendEmptyMessage(I)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public s(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/m1;->P:J

    .line 2
    .line 3
    return-void
.end method

.method public y0(Lcom/google/android/exoplayer2/l3;IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->h:Lcom/google/android/exoplayer2/util/o;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/exoplayer2/m1$h;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/m1$h;-><init>(Lcom/google/android/exoplayer2/l3;IJ)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x3

    .line 9
    invoke-interface {v0, p1, v1}, Lcom/google/android/exoplayer2/util/o;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/o$a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/o$a;->a()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public z()Landroid/os/Looper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1;->j:Landroid/os/Looper;

    .line 2
    .line 3
    return-object v0
.end method
