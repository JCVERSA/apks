.class final Landroidx/media3/exoplayer/source/a0$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/Loader$d;
.implements Landroidx/media3/exoplayer/source/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field private final a:J

.field private final b:Landroid/net/Uri;

.field private final c:Lw1/l;

.field private final d:Landroidx/media3/exoplayer/source/v;

.field private final e:Lk2/t;

.field private final f:Landroidx/media3/common/util/l;

.field private final g:Lk2/l0;

.field private volatile h:Z

.field private i:Z

.field private j:J

.field private k:Lw1/h;

.field private l:Lk2/s0;

.field private m:Z

.field final synthetic n:Landroidx/media3/exoplayer/source/a0;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/a0;Landroid/net/Uri;Landroidx/media3/datasource/a;Landroidx/media3/exoplayer/source/v;Lk2/t;Landroidx/media3/common/util/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/source/a0$b;->n:Landroidx/media3/exoplayer/source/a0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/source/a0$b;->b:Landroid/net/Uri;

    .line 7
    .line 8
    new-instance p1, Lw1/l;

    .line 9
    .line 10
    invoke-direct {p1, p3}, Lw1/l;-><init>(Landroidx/media3/datasource/a;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroidx/media3/exoplayer/source/a0$b;->c:Lw1/l;

    .line 14
    .line 15
    iput-object p4, p0, Landroidx/media3/exoplayer/source/a0$b;->d:Landroidx/media3/exoplayer/source/v;

    .line 16
    .line 17
    iput-object p5, p0, Landroidx/media3/exoplayer/source/a0$b;->e:Lk2/t;

    .line 18
    .line 19
    iput-object p6, p0, Landroidx/media3/exoplayer/source/a0$b;->f:Landroidx/media3/common/util/l;

    .line 20
    .line 21
    new-instance p1, Lk2/l0;

    .line 22
    .line 23
    invoke-direct {p1}, Lk2/l0;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Landroidx/media3/exoplayer/source/a0$b;->g:Lk2/l0;

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/a0$b;->i:Z

    .line 30
    .line 31
    invoke-static {}, Lf2/i;->a()J

    .line 32
    .line 33
    .line 34
    move-result-wide p1

    .line 35
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/a0$b;->a:J

    .line 36
    .line 37
    const-wide/16 p1, 0x0

    .line 38
    .line 39
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/a0$b;->g(J)Lw1/h;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Landroidx/media3/exoplayer/source/a0$b;->k:Lw1/h;

    .line 44
    .line 45
    return-void
.end method

.method static synthetic b(Landroidx/media3/exoplayer/source/a0$b;)Lw1/l;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/source/a0$b;->c:Lw1/l;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Landroidx/media3/exoplayer/source/a0$b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/a0$b;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic d(Landroidx/media3/exoplayer/source/a0$b;)Lw1/h;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/source/a0$b;->k:Lw1/h;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Landroidx/media3/exoplayer/source/a0$b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/a0$b;->j:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic f(Landroidx/media3/exoplayer/source/a0$b;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/a0$b;->h(JJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private g(J)Lw1/h;
    .locals 2

    .line 1
    new-instance v0, Lw1/h$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lw1/h$b;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/media3/exoplayer/source/a0$b;->b:Landroid/net/Uri;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lw1/h$b;->i(Landroid/net/Uri;)Lw1/h$b;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1, p2}, Lw1/h$b;->h(J)Lw1/h$b;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object p2, p0, Landroidx/media3/exoplayer/source/a0$b;->n:Landroidx/media3/exoplayer/source/a0;

    .line 17
    .line 18
    invoke-static {p2}, Landroidx/media3/exoplayer/source/a0;->t(Landroidx/media3/exoplayer/source/a0;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p1, p2}, Lw1/h$b;->f(Ljava/lang/String;)Lw1/h$b;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 p2, 0x6

    .line 27
    invoke-virtual {p1, p2}, Lw1/h$b;->b(I)Lw1/h$b;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {}, Landroidx/media3/exoplayer/source/a0;->s()Ljava/util/Map;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p1, p2}, Lw1/h$b;->e(Ljava/util/Map;)Lw1/h$b;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lw1/h$b;->a()Lw1/h;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1
.end method

.method private h(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/a0$b;->g:Lk2/l0;

    .line 2
    .line 3
    iput-wide p1, v0, Lk2/l0;->a:J

    .line 4
    .line 5
    iput-wide p3, p0, Landroidx/media3/exoplayer/source/a0$b;->j:J

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/a0$b;->i:Z

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/a0$b;->m:Z

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/common/util/j0;)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/a0$b;->m:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-wide v2, p0, Landroidx/media3/exoplayer/source/a0$b;->j:J

    .line 7
    .line 8
    :goto_0
    move-wide v5, v2

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/a0$b;->n:Landroidx/media3/exoplayer/source/a0;

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/source/a0;->r(Landroidx/media3/exoplayer/source/a0;Z)J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    iget-wide v4, p0, Landroidx/media3/exoplayer/source/a0$b;->j:J

    .line 17
    .line 18
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    goto :goto_0

    .line 23
    :goto_1
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    .line 24
    .line 25
    .line 26
    move-result v8

    .line 27
    iget-object v0, p0, Landroidx/media3/exoplayer/source/a0$b;->l:Lk2/s0;

    .line 28
    .line 29
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    move-object v4, v0

    .line 34
    check-cast v4, Lk2/s0;

    .line 35
    .line 36
    invoke-interface {v4, p1, v8}, Lk2/s0;->c(Landroidx/media3/common/util/j0;I)V

    .line 37
    .line 38
    .line 39
    const/4 v9, 0x0

    .line 40
    const/4 v10, 0x0

    .line 41
    const/4 v7, 0x1

    .line 42
    invoke-interface/range {v4 .. v10}, Lk2/s0;->b(JIIILk2/s0$a;)V

    .line 43
    .line 44
    .line 45
    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/a0$b;->m:Z

    .line 46
    .line 47
    return-void
.end method

.method public cancelLoad()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/a0$b;->h:Z

    .line 3
    .line 4
    return-void
.end method

.method public load()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    move v2, v0

    .line 5
    :goto_0
    if-nez v2, :cond_c

    .line 6
    .line 7
    iget-boolean v3, v1, Landroidx/media3/exoplayer/source/a0$b;->h:Z

    .line 8
    .line 9
    if-nez v3, :cond_c

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    const-wide/16 v4, -0x1

    .line 13
    .line 14
    :try_start_0
    iget-object v6, v1, Landroidx/media3/exoplayer/source/a0$b;->g:Lk2/l0;

    .line 15
    .line 16
    iget-wide v13, v6, Lk2/l0;->a:J

    .line 17
    .line 18
    invoke-direct {v1, v13, v14}, Landroidx/media3/exoplayer/source/a0$b;->g(J)Lw1/h;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    iput-object v6, v1, Landroidx/media3/exoplayer/source/a0$b;->k:Lw1/h;

    .line 23
    .line 24
    iget-object v7, v1, Landroidx/media3/exoplayer/source/a0$b;->c:Lw1/l;

    .line 25
    .line 26
    invoke-virtual {v7, v6}, Lw1/l;->a(Lw1/h;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v6

    .line 30
    iget-boolean v8, v1, Landroidx/media3/exoplayer/source/a0$b;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    if-eqz v8, :cond_2

    .line 33
    .line 34
    if-ne v2, v3, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    iget-object v0, v1, Landroidx/media3/exoplayer/source/a0$b;->d:Landroidx/media3/exoplayer/source/v;

    .line 38
    .line 39
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/v;->b()J

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    cmp-long v0, v2, v4

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    iget-object v0, v1, Landroidx/media3/exoplayer/source/a0$b;->g:Lk2/l0;

    .line 48
    .line 49
    iget-object v2, v1, Landroidx/media3/exoplayer/source/a0$b;->d:Landroidx/media3/exoplayer/source/v;

    .line 50
    .line 51
    invoke-interface {v2}, Landroidx/media3/exoplayer/source/v;->b()J

    .line 52
    .line 53
    .line 54
    move-result-wide v2

    .line 55
    iput-wide v2, v0, Lk2/l0;->a:J

    .line 56
    .line 57
    :cond_1
    :goto_1
    iget-object v0, v1, Landroidx/media3/exoplayer/source/a0$b;->c:Lw1/l;

    .line 58
    .line 59
    invoke-static {v0}, Lw1/g;->a(Landroidx/media3/datasource/a;)V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_6

    .line 63
    .line 64
    :cond_2
    cmp-long v8, v6, v4

    .line 65
    .line 66
    if-eqz v8, :cond_3

    .line 67
    .line 68
    add-long/2addr v6, v13

    .line 69
    :try_start_1
    iget-object v8, v1, Landroidx/media3/exoplayer/source/a0$b;->n:Landroidx/media3/exoplayer/source/a0;

    .line 70
    .line 71
    invoke-static {v8}, Landroidx/media3/exoplayer/source/a0;->v(Landroidx/media3/exoplayer/source/a0;)V

    .line 72
    .line 73
    .line 74
    :cond_3
    move-wide v15, v6

    .line 75
    goto :goto_2

    .line 76
    :catchall_0
    move-exception v0

    .line 77
    goto/16 :goto_5

    .line 78
    .line 79
    :goto_2
    iget-object v6, v1, Landroidx/media3/exoplayer/source/a0$b;->n:Landroidx/media3/exoplayer/source/a0;

    .line 80
    .line 81
    iget-object v7, v1, Landroidx/media3/exoplayer/source/a0$b;->c:Lw1/l;

    .line 82
    .line 83
    invoke-virtual {v7}, Lw1/l;->getResponseHeaders()Ljava/util/Map;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    invoke-static {v7}, Lx2/b;->b(Ljava/util/Map;)Lx2/b;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    invoke-static {v6, v7}, Landroidx/media3/exoplayer/source/a0;->x(Landroidx/media3/exoplayer/source/a0;Lx2/b;)Lx2/b;

    .line 92
    .line 93
    .line 94
    iget-object v6, v1, Landroidx/media3/exoplayer/source/a0$b;->c:Lw1/l;

    .line 95
    .line 96
    iget-object v7, v1, Landroidx/media3/exoplayer/source/a0$b;->n:Landroidx/media3/exoplayer/source/a0;

    .line 97
    .line 98
    invoke-static {v7}, Landroidx/media3/exoplayer/source/a0;->w(Landroidx/media3/exoplayer/source/a0;)Lx2/b;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    if-eqz v7, :cond_4

    .line 103
    .line 104
    iget-object v7, v1, Landroidx/media3/exoplayer/source/a0$b;->n:Landroidx/media3/exoplayer/source/a0;

    .line 105
    .line 106
    invoke-static {v7}, Landroidx/media3/exoplayer/source/a0;->w(Landroidx/media3/exoplayer/source/a0;)Lx2/b;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    iget v7, v7, Lx2/b;->f:I

    .line 111
    .line 112
    const/4 v8, -0x1

    .line 113
    if-eq v7, v8, :cond_4

    .line 114
    .line 115
    new-instance v6, Landroidx/media3/exoplayer/source/n;

    .line 116
    .line 117
    iget-object v7, v1, Landroidx/media3/exoplayer/source/a0$b;->c:Lw1/l;

    .line 118
    .line 119
    iget-object v8, v1, Landroidx/media3/exoplayer/source/a0$b;->n:Landroidx/media3/exoplayer/source/a0;

    .line 120
    .line 121
    invoke-static {v8}, Landroidx/media3/exoplayer/source/a0;->w(Landroidx/media3/exoplayer/source/a0;)Lx2/b;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    iget v8, v8, Lx2/b;->f:I

    .line 126
    .line 127
    invoke-direct {v6, v7, v8, v1}, Landroidx/media3/exoplayer/source/n;-><init>(Landroidx/media3/datasource/a;ILandroidx/media3/exoplayer/source/n$a;)V

    .line 128
    .line 129
    .line 130
    iget-object v7, v1, Landroidx/media3/exoplayer/source/a0$b;->n:Landroidx/media3/exoplayer/source/a0;

    .line 131
    .line 132
    invoke-virtual {v7}, Landroidx/media3/exoplayer/source/a0;->E()Lk2/s0;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    iput-object v7, v1, Landroidx/media3/exoplayer/source/a0$b;->l:Lk2/s0;

    .line 137
    .line 138
    invoke-static {}, Landroidx/media3/exoplayer/source/a0;->y()Landroidx/media3/common/r;

    .line 139
    .line 140
    .line 141
    move-result-object v8

    .line 142
    invoke-interface {v7, v8}, Lk2/s0;->d(Landroidx/media3/common/r;)V

    .line 143
    .line 144
    .line 145
    :cond_4
    move-object v8, v6

    .line 146
    iget-object v7, v1, Landroidx/media3/exoplayer/source/a0$b;->d:Landroidx/media3/exoplayer/source/v;

    .line 147
    .line 148
    iget-object v9, v1, Landroidx/media3/exoplayer/source/a0$b;->b:Landroid/net/Uri;

    .line 149
    .line 150
    iget-object v6, v1, Landroidx/media3/exoplayer/source/a0$b;->c:Lw1/l;

    .line 151
    .line 152
    invoke-virtual {v6}, Lw1/l;->getResponseHeaders()Ljava/util/Map;

    .line 153
    .line 154
    .line 155
    move-result-object v10

    .line 156
    iget-object v6, v1, Landroidx/media3/exoplayer/source/a0$b;->e:Lk2/t;

    .line 157
    .line 158
    move-wide v11, v13

    .line 159
    move-wide v4, v13

    .line 160
    move-wide v13, v15

    .line 161
    move-object v15, v6

    .line 162
    invoke-interface/range {v7 .. v15}, Landroidx/media3/exoplayer/source/v;->d(Landroidx/media3/common/j;Landroid/net/Uri;Ljava/util/Map;JJLk2/t;)V

    .line 163
    .line 164
    .line 165
    iget-object v6, v1, Landroidx/media3/exoplayer/source/a0$b;->n:Landroidx/media3/exoplayer/source/a0;

    .line 166
    .line 167
    invoke-static {v6}, Landroidx/media3/exoplayer/source/a0;->w(Landroidx/media3/exoplayer/source/a0;)Lx2/b;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    if-eqz v6, :cond_5

    .line 172
    .line 173
    iget-object v6, v1, Landroidx/media3/exoplayer/source/a0$b;->d:Landroidx/media3/exoplayer/source/v;

    .line 174
    .line 175
    invoke-interface {v6}, Landroidx/media3/exoplayer/source/v;->a()V

    .line 176
    .line 177
    .line 178
    :cond_5
    iget-boolean v6, v1, Landroidx/media3/exoplayer/source/a0$b;->i:Z

    .line 179
    .line 180
    if-eqz v6, :cond_6

    .line 181
    .line 182
    iget-object v6, v1, Landroidx/media3/exoplayer/source/a0$b;->d:Landroidx/media3/exoplayer/source/v;

    .line 183
    .line 184
    iget-wide v7, v1, Landroidx/media3/exoplayer/source/a0$b;->j:J

    .line 185
    .line 186
    invoke-interface {v6, v4, v5, v7, v8}, Landroidx/media3/exoplayer/source/v;->seek(JJ)V

    .line 187
    .line 188
    .line 189
    iput-boolean v0, v1, Landroidx/media3/exoplayer/source/a0$b;->i:Z

    .line 190
    .line 191
    :cond_6
    :goto_3
    move-wide v13, v4

    .line 192
    :cond_7
    if-nez v2, :cond_8

    .line 193
    .line 194
    iget-boolean v4, v1, Landroidx/media3/exoplayer/source/a0$b;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    .line 196
    if-nez v4, :cond_8

    .line 197
    .line 198
    :try_start_2
    iget-object v4, v1, Landroidx/media3/exoplayer/source/a0$b;->f:Landroidx/media3/common/util/l;

    .line 199
    .line 200
    invoke-virtual {v4}, Landroidx/media3/common/util/l;->a()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    .line 202
    .line 203
    :try_start_3
    iget-object v4, v1, Landroidx/media3/exoplayer/source/a0$b;->d:Landroidx/media3/exoplayer/source/v;

    .line 204
    .line 205
    iget-object v5, v1, Landroidx/media3/exoplayer/source/a0$b;->g:Lk2/l0;

    .line 206
    .line 207
    invoke-interface {v4, v5}, Landroidx/media3/exoplayer/source/v;->c(Lk2/l0;)I

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    iget-object v4, v1, Landroidx/media3/exoplayer/source/a0$b;->d:Landroidx/media3/exoplayer/source/v;

    .line 212
    .line 213
    invoke-interface {v4}, Landroidx/media3/exoplayer/source/v;->b()J

    .line 214
    .line 215
    .line 216
    move-result-wide v4

    .line 217
    iget-object v6, v1, Landroidx/media3/exoplayer/source/a0$b;->n:Landroidx/media3/exoplayer/source/a0;

    .line 218
    .line 219
    invoke-static {v6}, Landroidx/media3/exoplayer/source/a0;->l(Landroidx/media3/exoplayer/source/a0;)J

    .line 220
    .line 221
    .line 222
    move-result-wide v6

    .line 223
    add-long/2addr v6, v13

    .line 224
    cmp-long v6, v4, v6

    .line 225
    .line 226
    if-lez v6, :cond_7

    .line 227
    .line 228
    iget-object v6, v1, Landroidx/media3/exoplayer/source/a0$b;->f:Landroidx/media3/common/util/l;

    .line 229
    .line 230
    invoke-virtual {v6}, Landroidx/media3/common/util/l;->d()Z

    .line 231
    .line 232
    .line 233
    iget-object v6, v1, Landroidx/media3/exoplayer/source/a0$b;->n:Landroidx/media3/exoplayer/source/a0;

    .line 234
    .line 235
    invoke-static {v6}, Landroidx/media3/exoplayer/source/a0;->n(Landroidx/media3/exoplayer/source/a0;)Landroid/os/Handler;

    .line 236
    .line 237
    .line 238
    move-result-object v6

    .line 239
    iget-object v7, v1, Landroidx/media3/exoplayer/source/a0$b;->n:Landroidx/media3/exoplayer/source/a0;

    .line 240
    .line 241
    invoke-static {v7}, Landroidx/media3/exoplayer/source/a0;->m(Landroidx/media3/exoplayer/source/a0;)Ljava/lang/Runnable;

    .line 242
    .line 243
    .line 244
    move-result-object v7

    .line 245
    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 246
    .line 247
    .line 248
    goto :goto_3

    .line 249
    :catch_0
    new-instance v0, Ljava/io/InterruptedIOException;

    .line 250
    .line 251
    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    .line 252
    .line 253
    .line 254
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 255
    :cond_8
    if-ne v2, v3, :cond_9

    .line 256
    .line 257
    move v2, v0

    .line 258
    goto :goto_4

    .line 259
    :cond_9
    iget-object v3, v1, Landroidx/media3/exoplayer/source/a0$b;->d:Landroidx/media3/exoplayer/source/v;

    .line 260
    .line 261
    invoke-interface {v3}, Landroidx/media3/exoplayer/source/v;->b()J

    .line 262
    .line 263
    .line 264
    move-result-wide v3

    .line 265
    const-wide/16 v5, -0x1

    .line 266
    .line 267
    cmp-long v3, v3, v5

    .line 268
    .line 269
    if-eqz v3, :cond_a

    .line 270
    .line 271
    iget-object v3, v1, Landroidx/media3/exoplayer/source/a0$b;->g:Lk2/l0;

    .line 272
    .line 273
    iget-object v4, v1, Landroidx/media3/exoplayer/source/a0$b;->d:Landroidx/media3/exoplayer/source/v;

    .line 274
    .line 275
    invoke-interface {v4}, Landroidx/media3/exoplayer/source/v;->b()J

    .line 276
    .line 277
    .line 278
    move-result-wide v4

    .line 279
    iput-wide v4, v3, Lk2/l0;->a:J

    .line 280
    .line 281
    :cond_a
    :goto_4
    iget-object v3, v1, Landroidx/media3/exoplayer/source/a0$b;->c:Lw1/l;

    .line 282
    .line 283
    invoke-static {v3}, Lw1/g;->a(Landroidx/media3/datasource/a;)V

    .line 284
    .line 285
    .line 286
    goto/16 :goto_0

    .line 287
    .line 288
    :goto_5
    if-eq v2, v3, :cond_b

    .line 289
    .line 290
    iget-object v2, v1, Landroidx/media3/exoplayer/source/a0$b;->d:Landroidx/media3/exoplayer/source/v;

    .line 291
    .line 292
    invoke-interface {v2}, Landroidx/media3/exoplayer/source/v;->b()J

    .line 293
    .line 294
    .line 295
    move-result-wide v2

    .line 296
    const-wide/16 v4, -0x1

    .line 297
    .line 298
    cmp-long v2, v2, v4

    .line 299
    .line 300
    if-eqz v2, :cond_b

    .line 301
    .line 302
    iget-object v2, v1, Landroidx/media3/exoplayer/source/a0$b;->g:Lk2/l0;

    .line 303
    .line 304
    iget-object v3, v1, Landroidx/media3/exoplayer/source/a0$b;->d:Landroidx/media3/exoplayer/source/v;

    .line 305
    .line 306
    invoke-interface {v3}, Landroidx/media3/exoplayer/source/v;->b()J

    .line 307
    .line 308
    .line 309
    move-result-wide v3

    .line 310
    iput-wide v3, v2, Lk2/l0;->a:J

    .line 311
    .line 312
    :cond_b
    iget-object v2, v1, Landroidx/media3/exoplayer/source/a0$b;->c:Lw1/l;

    .line 313
    .line 314
    invoke-static {v2}, Lw1/g;->a(Landroidx/media3/datasource/a;)V

    .line 315
    .line 316
    .line 317
    throw v0

    .line 318
    :cond_c
    :goto_6
    return-void
.end method
