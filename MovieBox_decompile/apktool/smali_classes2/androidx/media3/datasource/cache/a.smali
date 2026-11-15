.class public final Landroidx/media3/datasource/cache/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/datasource/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/datasource/cache/a$b;,
        Landroidx/media3/datasource/cache/a$c;
    }
.end annotation


# instance fields
.field private final a:Landroidx/media3/datasource/cache/Cache;

.field private final b:Landroidx/media3/datasource/a;

.field private final c:Landroidx/media3/datasource/a;

.field private final d:Landroidx/media3/datasource/a;

.field private final e:Landroidx/media3/datasource/cache/g;

.field private final f:Z

.field private final g:Z

.field private final h:Z

.field private i:Landroid/net/Uri;

.field private j:Lw1/h;

.field private k:Lw1/h;

.field private l:Landroidx/media3/datasource/a;

.field private m:J

.field private n:J

.field private o:J

.field private p:Landroidx/media3/datasource/cache/h;

.field private q:Z

.field private r:Z

.field private s:J

.field private t:J


# direct methods
.method private constructor <init>(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/a;Landroidx/media3/datasource/a;Lw1/d;Landroidx/media3/datasource/cache/g;ILandroidx/media3/common/PriorityTaskManager;ILandroidx/media3/datasource/cache/a$b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/media3/datasource/cache/a;->a:Landroidx/media3/datasource/cache/Cache;

    .line 4
    iput-object p3, p0, Landroidx/media3/datasource/cache/a;->b:Landroidx/media3/datasource/a;

    if-eqz p5, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object p5, Landroidx/media3/datasource/cache/g;->a:Landroidx/media3/datasource/cache/g;

    :goto_0
    iput-object p5, p0, Landroidx/media3/datasource/cache/a;->e:Landroidx/media3/datasource/cache/g;

    and-int/lit8 p1, p6, 0x1

    const/4 p3, 0x0

    const/4 p5, 0x1

    if-eqz p1, :cond_1

    move p1, p5

    goto :goto_1

    :cond_1
    move p1, p3

    .line 6
    :goto_1
    iput-boolean p1, p0, Landroidx/media3/datasource/cache/a;->f:Z

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_2

    move p1, p5

    goto :goto_2

    :cond_2
    move p1, p3

    .line 7
    :goto_2
    iput-boolean p1, p0, Landroidx/media3/datasource/cache/a;->g:Z

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_3

    move p3, p5

    .line 8
    :cond_3
    iput-boolean p3, p0, Landroidx/media3/datasource/cache/a;->h:Z

    const/4 p1, 0x0

    if-eqz p2, :cond_6

    if-eqz p7, :cond_4

    .line 9
    new-instance p3, Lw1/k;

    invoke-direct {p3, p2, p7, p8}, Lw1/k;-><init>(Landroidx/media3/datasource/a;Landroidx/media3/common/PriorityTaskManager;I)V

    move-object p2, p3

    .line 10
    :cond_4
    iput-object p2, p0, Landroidx/media3/datasource/cache/a;->d:Landroidx/media3/datasource/a;

    if-eqz p4, :cond_5

    .line 11
    new-instance p1, Lw1/m;

    invoke-direct {p1, p2, p4}, Lw1/m;-><init>(Landroidx/media3/datasource/a;Lw1/d;)V

    .line 12
    :cond_5
    iput-object p1, p0, Landroidx/media3/datasource/cache/a;->c:Landroidx/media3/datasource/a;

    goto :goto_3

    .line 13
    :cond_6
    sget-object p2, Landroidx/media3/datasource/f;->a:Landroidx/media3/datasource/f;

    iput-object p2, p0, Landroidx/media3/datasource/cache/a;->d:Landroidx/media3/datasource/a;

    .line 14
    iput-object p1, p0, Landroidx/media3/datasource/cache/a;->c:Landroidx/media3/datasource/a;

    :goto_3
    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/a;Landroidx/media3/datasource/a;Lw1/d;Landroidx/media3/datasource/cache/g;ILandroidx/media3/common/PriorityTaskManager;ILandroidx/media3/datasource/cache/a$b;Landroidx/media3/datasource/cache/a$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Landroidx/media3/datasource/cache/a;-><init>(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/a;Landroidx/media3/datasource/a;Lw1/d;Landroidx/media3/datasource/cache/g;ILandroidx/media3/common/PriorityTaskManager;ILandroidx/media3/datasource/cache/a$b;)V

    return-void
.end method

.method private d()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/datasource/cache/a;->l:Landroidx/media3/datasource/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    :try_start_0
    invoke-interface {v0}, Landroidx/media3/datasource/a;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Landroidx/media3/datasource/cache/a;->k:Lw1/h;

    .line 11
    .line 12
    iput-object v1, p0, Landroidx/media3/datasource/cache/a;->l:Landroidx/media3/datasource/a;

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/media3/datasource/cache/a;->p:Landroidx/media3/datasource/cache/h;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v2, p0, Landroidx/media3/datasource/cache/a;->a:Landroidx/media3/datasource/cache/Cache;

    .line 19
    .line 20
    invoke-interface {v2, v0}, Landroidx/media3/datasource/cache/Cache;->g(Landroidx/media3/datasource/cache/h;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Landroidx/media3/datasource/cache/a;->p:Landroidx/media3/datasource/cache/h;

    .line 24
    .line 25
    :cond_1
    return-void

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    iput-object v1, p0, Landroidx/media3/datasource/cache/a;->k:Lw1/h;

    .line 28
    .line 29
    iput-object v1, p0, Landroidx/media3/datasource/cache/a;->l:Landroidx/media3/datasource/a;

    .line 30
    .line 31
    iget-object v2, p0, Landroidx/media3/datasource/cache/a;->p:Landroidx/media3/datasource/cache/h;

    .line 32
    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    iget-object v3, p0, Landroidx/media3/datasource/cache/a;->a:Landroidx/media3/datasource/cache/Cache;

    .line 36
    .line 37
    invoke-interface {v3, v2}, Landroidx/media3/datasource/cache/Cache;->g(Landroidx/media3/datasource/cache/h;)V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Landroidx/media3/datasource/cache/a;->p:Landroidx/media3/datasource/cache/h;

    .line 41
    .line 42
    :cond_2
    throw v0
.end method

.method private static g(Landroidx/media3/datasource/cache/Cache;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Landroidx/media3/datasource/cache/Cache;->getContentMetadata(Ljava/lang/String;)Landroidx/media3/datasource/cache/m;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroidx/media3/datasource/cache/l;->b(Landroidx/media3/datasource/cache/m;)Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    move-object p2, p0

    .line 12
    :cond_0
    return-object p2
.end method

.method private h(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/media3/datasource/cache/a;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    instance-of p1, p1, Landroidx/media3/datasource/cache/Cache$CacheException;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    :cond_0
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Landroidx/media3/datasource/cache/a;->q:Z

    .line 13
    .line 14
    :cond_1
    return-void
.end method

.method private i()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/datasource/cache/a;->l:Landroidx/media3/datasource/a;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/datasource/cache/a;->d:Landroidx/media3/datasource/a;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method private j()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/datasource/cache/a;->l:Landroidx/media3/datasource/a;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/datasource/cache/a;->b:Landroidx/media3/datasource/a;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method private k()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/media3/datasource/cache/a;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    return v0
.end method

.method private l()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/datasource/cache/a;->l:Landroidx/media3/datasource/a;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/datasource/cache/a;->c:Landroidx/media3/datasource/a;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method private m()V
    .locals 0

    .line 1
    return-void
.end method

.method private n(I)V
    .locals 0

    .line 1
    return-void
.end method

.method private o(Lw1/h;Z)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v0, Lw1/h;->i:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v2}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Ljava/lang/String;

    .line 12
    .line 13
    iget-boolean v3, v1, Landroidx/media3/datasource/cache/a;->r:Z

    .line 14
    .line 15
    const/4 v9, 0x0

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    move-object v3, v9

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-boolean v3, v1, Landroidx/media3/datasource/cache/a;->f:Z

    .line 21
    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    :try_start_0
    iget-object v3, v1, Landroidx/media3/datasource/cache/a;->a:Landroidx/media3/datasource/cache/Cache;

    .line 25
    .line 26
    iget-wide v5, v1, Landroidx/media3/datasource/cache/a;->n:J

    .line 27
    .line 28
    iget-wide v7, v1, Landroidx/media3/datasource/cache/a;->o:J

    .line 29
    .line 30
    move-object v4, v2

    .line 31
    invoke-interface/range {v3 .. v8}, Landroidx/media3/datasource/cache/Cache;->c(Ljava/lang/String;JJ)Landroidx/media3/datasource/cache/h;

    .line 32
    .line 33
    .line 34
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 41
    .line 42
    .line 43
    new-instance v0, Ljava/io/InterruptedIOException;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    .line 46
    .line 47
    .line 48
    throw v0

    .line 49
    :cond_1
    iget-object v3, v1, Landroidx/media3/datasource/cache/a;->a:Landroidx/media3/datasource/cache/Cache;

    .line 50
    .line 51
    iget-wide v5, v1, Landroidx/media3/datasource/cache/a;->n:J

    .line 52
    .line 53
    iget-wide v7, v1, Landroidx/media3/datasource/cache/a;->o:J

    .line 54
    .line 55
    move-object v4, v2

    .line 56
    invoke-interface/range {v3 .. v8}, Landroidx/media3/datasource/cache/Cache;->b(Ljava/lang/String;JJ)Landroidx/media3/datasource/cache/h;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    :goto_0
    const-wide/16 v4, -0x1

    .line 61
    .line 62
    if-nez v3, :cond_2

    .line 63
    .line 64
    iget-object v6, v1, Landroidx/media3/datasource/cache/a;->d:Landroidx/media3/datasource/a;

    .line 65
    .line 66
    invoke-virtual/range {p1 .. p1}, Lw1/h;->a()Lw1/h$b;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    iget-wide v10, v1, Landroidx/media3/datasource/cache/a;->n:J

    .line 71
    .line 72
    invoke-virtual {v7, v10, v11}, Lw1/h$b;->h(J)Lw1/h$b;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    iget-wide v10, v1, Landroidx/media3/datasource/cache/a;->o:J

    .line 77
    .line 78
    invoke-virtual {v7, v10, v11}, Lw1/h$b;->g(J)Lw1/h$b;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-virtual {v7}, Lw1/h$b;->a()Lw1/h;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    goto/16 :goto_2

    .line 87
    .line 88
    :cond_2
    iget-boolean v6, v3, Landroidx/media3/datasource/cache/h;->d:Z

    .line 89
    .line 90
    if-eqz v6, :cond_4

    .line 91
    .line 92
    iget-object v6, v3, Landroidx/media3/datasource/cache/h;->e:Ljava/io/File;

    .line 93
    .line 94
    invoke-static {v6}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    check-cast v6, Ljava/io/File;

    .line 99
    .line 100
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    iget-wide v7, v3, Landroidx/media3/datasource/cache/h;->b:J

    .line 105
    .line 106
    iget-wide v10, v1, Landroidx/media3/datasource/cache/a;->n:J

    .line 107
    .line 108
    sub-long/2addr v10, v7

    .line 109
    iget-wide v12, v3, Landroidx/media3/datasource/cache/h;->c:J

    .line 110
    .line 111
    sub-long/2addr v12, v10

    .line 112
    iget-wide v14, v1, Landroidx/media3/datasource/cache/a;->o:J

    .line 113
    .line 114
    cmp-long v16, v14, v4

    .line 115
    .line 116
    if-eqz v16, :cond_3

    .line 117
    .line 118
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    .line 119
    .line 120
    .line 121
    move-result-wide v12

    .line 122
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lw1/h;->a()Lw1/h$b;

    .line 123
    .line 124
    .line 125
    move-result-object v14

    .line 126
    invoke-virtual {v14, v6}, Lw1/h$b;->i(Landroid/net/Uri;)Lw1/h$b;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    invoke-virtual {v6, v7, v8}, Lw1/h$b;->k(J)Lw1/h$b;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    invoke-virtual {v6, v10, v11}, Lw1/h$b;->h(J)Lw1/h$b;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    invoke-virtual {v6, v12, v13}, Lw1/h$b;->g(J)Lw1/h$b;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    invoke-virtual {v6}, Lw1/h$b;->a()Lw1/h;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    iget-object v6, v1, Landroidx/media3/datasource/cache/a;->b:Landroidx/media3/datasource/a;

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_4
    invoke-virtual {v3}, Landroidx/media3/datasource/cache/h;->d()Z

    .line 150
    .line 151
    .line 152
    move-result v6

    .line 153
    if-eqz v6, :cond_5

    .line 154
    .line 155
    iget-wide v6, v1, Landroidx/media3/datasource/cache/a;->o:J

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_5
    iget-wide v6, v3, Landroidx/media3/datasource/cache/h;->c:J

    .line 159
    .line 160
    iget-wide v10, v1, Landroidx/media3/datasource/cache/a;->o:J

    .line 161
    .line 162
    cmp-long v8, v10, v4

    .line 163
    .line 164
    if-eqz v8, :cond_6

    .line 165
    .line 166
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(JJ)J

    .line 167
    .line 168
    .line 169
    move-result-wide v6

    .line 170
    :cond_6
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lw1/h;->a()Lw1/h$b;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    iget-wide v10, v1, Landroidx/media3/datasource/cache/a;->n:J

    .line 175
    .line 176
    invoke-virtual {v8, v10, v11}, Lw1/h$b;->h(J)Lw1/h$b;

    .line 177
    .line 178
    .line 179
    move-result-object v8

    .line 180
    invoke-virtual {v8, v6, v7}, Lw1/h$b;->g(J)Lw1/h$b;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    invoke-virtual {v6}, Lw1/h$b;->a()Lw1/h;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    iget-object v6, v1, Landroidx/media3/datasource/cache/a;->c:Landroidx/media3/datasource/a;

    .line 189
    .line 190
    if-eqz v6, :cond_7

    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_7
    iget-object v6, v1, Landroidx/media3/datasource/cache/a;->d:Landroidx/media3/datasource/a;

    .line 194
    .line 195
    iget-object v8, v1, Landroidx/media3/datasource/cache/a;->a:Landroidx/media3/datasource/cache/Cache;

    .line 196
    .line 197
    invoke-interface {v8, v3}, Landroidx/media3/datasource/cache/Cache;->g(Landroidx/media3/datasource/cache/h;)V

    .line 198
    .line 199
    .line 200
    move-object v3, v9

    .line 201
    :goto_2
    iget-boolean v8, v1, Landroidx/media3/datasource/cache/a;->r:Z

    .line 202
    .line 203
    if-nez v8, :cond_8

    .line 204
    .line 205
    iget-object v8, v1, Landroidx/media3/datasource/cache/a;->d:Landroidx/media3/datasource/a;

    .line 206
    .line 207
    if-ne v6, v8, :cond_8

    .line 208
    .line 209
    iget-wide v10, v1, Landroidx/media3/datasource/cache/a;->n:J

    .line 210
    .line 211
    const-wide/32 v12, 0x19000

    .line 212
    .line 213
    .line 214
    add-long/2addr v10, v12

    .line 215
    goto :goto_3

    .line 216
    :cond_8
    const-wide v10, 0x7fffffffffffffffL

    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    :goto_3
    iput-wide v10, v1, Landroidx/media3/datasource/cache/a;->t:J

    .line 222
    .line 223
    if-eqz p2, :cond_b

    .line 224
    .line 225
    invoke-direct/range {p0 .. p0}, Landroidx/media3/datasource/cache/a;->i()Z

    .line 226
    .line 227
    .line 228
    move-result v8

    .line 229
    invoke-static {v8}, Landroidx/media3/common/util/a;->g(Z)V

    .line 230
    .line 231
    .line 232
    iget-object v8, v1, Landroidx/media3/datasource/cache/a;->d:Landroidx/media3/datasource/a;

    .line 233
    .line 234
    if-ne v6, v8, :cond_9

    .line 235
    .line 236
    return-void

    .line 237
    :cond_9
    :try_start_1
    invoke-direct/range {p0 .. p0}, Landroidx/media3/datasource/cache/a;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    .line 239
    .line 240
    goto :goto_4

    .line 241
    :catchall_0
    move-exception v0

    .line 242
    move-object v2, v0

    .line 243
    invoke-static {v3}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    check-cast v0, Landroidx/media3/datasource/cache/h;

    .line 248
    .line 249
    invoke-virtual {v0}, Landroidx/media3/datasource/cache/h;->b()Z

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-eqz v0, :cond_a

    .line 254
    .line 255
    iget-object v0, v1, Landroidx/media3/datasource/cache/a;->a:Landroidx/media3/datasource/cache/Cache;

    .line 256
    .line 257
    invoke-interface {v0, v3}, Landroidx/media3/datasource/cache/Cache;->g(Landroidx/media3/datasource/cache/h;)V

    .line 258
    .line 259
    .line 260
    :cond_a
    throw v2

    .line 261
    :cond_b
    :goto_4
    if-eqz v3, :cond_c

    .line 262
    .line 263
    invoke-virtual {v3}, Landroidx/media3/datasource/cache/h;->b()Z

    .line 264
    .line 265
    .line 266
    move-result v8

    .line 267
    if-eqz v8, :cond_c

    .line 268
    .line 269
    iput-object v3, v1, Landroidx/media3/datasource/cache/a;->p:Landroidx/media3/datasource/cache/h;

    .line 270
    .line 271
    :cond_c
    iput-object v6, v1, Landroidx/media3/datasource/cache/a;->l:Landroidx/media3/datasource/a;

    .line 272
    .line 273
    iput-object v7, v1, Landroidx/media3/datasource/cache/a;->k:Lw1/h;

    .line 274
    .line 275
    const-wide/16 v10, 0x0

    .line 276
    .line 277
    iput-wide v10, v1, Landroidx/media3/datasource/cache/a;->m:J

    .line 278
    .line 279
    invoke-interface {v6, v7}, Landroidx/media3/datasource/a;->a(Lw1/h;)J

    .line 280
    .line 281
    .line 282
    move-result-wide v10

    .line 283
    new-instance v3, Landroidx/media3/datasource/cache/n;

    .line 284
    .line 285
    invoke-direct {v3}, Landroidx/media3/datasource/cache/n;-><init>()V

    .line 286
    .line 287
    .line 288
    iget-wide v7, v7, Lw1/h;->h:J

    .line 289
    .line 290
    cmp-long v7, v7, v4

    .line 291
    .line 292
    if-nez v7, :cond_d

    .line 293
    .line 294
    cmp-long v4, v10, v4

    .line 295
    .line 296
    if-eqz v4, :cond_d

    .line 297
    .line 298
    iput-wide v10, v1, Landroidx/media3/datasource/cache/a;->o:J

    .line 299
    .line 300
    iget-wide v4, v1, Landroidx/media3/datasource/cache/a;->n:J

    .line 301
    .line 302
    add-long/2addr v4, v10

    .line 303
    invoke-static {v3, v4, v5}, Landroidx/media3/datasource/cache/n;->g(Landroidx/media3/datasource/cache/n;J)Landroidx/media3/datasource/cache/n;

    .line 304
    .line 305
    .line 306
    :cond_d
    invoke-direct/range {p0 .. p0}, Landroidx/media3/datasource/cache/a;->k()Z

    .line 307
    .line 308
    .line 309
    move-result v4

    .line 310
    if-eqz v4, :cond_f

    .line 311
    .line 312
    invoke-interface {v6}, Landroidx/media3/datasource/a;->getUri()Landroid/net/Uri;

    .line 313
    .line 314
    .line 315
    move-result-object v4

    .line 316
    iput-object v4, v1, Landroidx/media3/datasource/cache/a;->i:Landroid/net/Uri;

    .line 317
    .line 318
    iget-object v0, v0, Lw1/h;->a:Landroid/net/Uri;

    .line 319
    .line 320
    invoke-virtual {v0, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    if-nez v0, :cond_e

    .line 325
    .line 326
    iget-object v9, v1, Landroidx/media3/datasource/cache/a;->i:Landroid/net/Uri;

    .line 327
    .line 328
    :cond_e
    invoke-static {v3, v9}, Landroidx/media3/datasource/cache/n;->h(Landroidx/media3/datasource/cache/n;Landroid/net/Uri;)Landroidx/media3/datasource/cache/n;

    .line 329
    .line 330
    .line 331
    :cond_f
    invoke-direct/range {p0 .. p0}, Landroidx/media3/datasource/cache/a;->l()Z

    .line 332
    .line 333
    .line 334
    move-result v0

    .line 335
    if-eqz v0, :cond_10

    .line 336
    .line 337
    iget-object v0, v1, Landroidx/media3/datasource/cache/a;->a:Landroidx/media3/datasource/cache/Cache;

    .line 338
    .line 339
    invoke-interface {v0, v2, v3}, Landroidx/media3/datasource/cache/Cache;->h(Ljava/lang/String;Landroidx/media3/datasource/cache/n;)V

    .line 340
    .line 341
    .line 342
    :cond_10
    return-void
.end method

.method private p(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Landroidx/media3/datasource/cache/a;->o:J

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/media3/datasource/cache/a;->l()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroidx/media3/datasource/cache/n;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/media3/datasource/cache/n;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-wide v1, p0, Landroidx/media3/datasource/cache/a;->n:J

    .line 17
    .line 18
    invoke-static {v0, v1, v2}, Landroidx/media3/datasource/cache/n;->g(Landroidx/media3/datasource/cache/n;J)Landroidx/media3/datasource/cache/n;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Landroidx/media3/datasource/cache/a;->a:Landroidx/media3/datasource/cache/Cache;

    .line 22
    .line 23
    invoke-interface {v1, p1, v0}, Landroidx/media3/datasource/cache/Cache;->h(Ljava/lang/String;Landroidx/media3/datasource/cache/n;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method private q(Lw1/h;)I
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/media3/datasource/cache/a;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/media3/datasource/cache/a;->q:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/datasource/cache/a;->h:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-wide v0, p1, Lw1/h;->h:J

    .line 16
    .line 17
    const-wide/16 v2, -0x1

    .line 18
    .line 19
    cmp-long p1, v0, v2

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    return p1

    .line 25
    :cond_1
    const/4 p1, -0x1

    .line 26
    return p1
.end method


# virtual methods
.method public a(Lw1/h;)J
    .locals 11

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/media3/datasource/cache/a;->e:Landroidx/media3/datasource/cache/g;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/media3/datasource/cache/g;->a(Lw1/h;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lw1/h;->a()Lw1/h$b;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lw1/h$b;->f(Ljava/lang/String;)Lw1/h$b;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lw1/h$b;->a()Lw1/h;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iput-object v1, p0, Landroidx/media3/datasource/cache/a;->j:Lw1/h;

    .line 20
    .line 21
    iget-object v2, p0, Landroidx/media3/datasource/cache/a;->a:Landroidx/media3/datasource/cache/Cache;

    .line 22
    .line 23
    iget-object v3, v1, Lw1/h;->a:Landroid/net/Uri;

    .line 24
    .line 25
    invoke-static {v2, v0, v3}, Landroidx/media3/datasource/cache/a;->g(Landroidx/media3/datasource/cache/Cache;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iput-object v2, p0, Landroidx/media3/datasource/cache/a;->i:Landroid/net/Uri;

    .line 30
    .line 31
    iget-wide v2, p1, Lw1/h;->g:J

    .line 32
    .line 33
    iput-wide v2, p0, Landroidx/media3/datasource/cache/a;->n:J

    .line 34
    .line 35
    invoke-direct {p0, p1}, Landroidx/media3/datasource/cache/a;->q(Lw1/h;)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const/4 v3, -0x1

    .line 40
    const/4 v4, 0x0

    .line 41
    if-eq v2, v3, :cond_0

    .line 42
    .line 43
    const/4 v3, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move v3, v4

    .line 46
    :goto_0
    iput-boolean v3, p0, Landroidx/media3/datasource/cache/a;->r:Z

    .line 47
    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    invoke-direct {p0, v2}, Landroidx/media3/datasource/cache/a;->n(I)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    goto :goto_5

    .line 56
    :cond_1
    :goto_1
    iget-boolean v2, p0, Landroidx/media3/datasource/cache/a;->r:Z

    .line 57
    .line 58
    const-wide/16 v5, 0x0

    .line 59
    .line 60
    const-wide/16 v7, -0x1

    .line 61
    .line 62
    if-eqz v2, :cond_2

    .line 63
    .line 64
    iput-wide v7, p0, Landroidx/media3/datasource/cache/a;->o:J

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    iget-object v2, p0, Landroidx/media3/datasource/cache/a;->a:Landroidx/media3/datasource/cache/Cache;

    .line 68
    .line 69
    invoke-interface {v2, v0}, Landroidx/media3/datasource/cache/Cache;->getContentMetadata(Ljava/lang/String;)Landroidx/media3/datasource/cache/m;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v0}, Landroidx/media3/datasource/cache/l;->a(Landroidx/media3/datasource/cache/m;)J

    .line 74
    .line 75
    .line 76
    move-result-wide v2

    .line 77
    iput-wide v2, p0, Landroidx/media3/datasource/cache/a;->o:J

    .line 78
    .line 79
    cmp-long v0, v2, v7

    .line 80
    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    iget-wide v9, p1, Lw1/h;->g:J

    .line 84
    .line 85
    sub-long/2addr v2, v9

    .line 86
    iput-wide v2, p0, Landroidx/media3/datasource/cache/a;->o:J

    .line 87
    .line 88
    cmp-long v0, v2, v5

    .line 89
    .line 90
    if-ltz v0, :cond_3

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_3
    new-instance p1, Landroidx/media3/datasource/DataSourceException;

    .line 94
    .line 95
    const/16 v0, 0x7d8

    .line 96
    .line 97
    invoke-direct {p1, v0}, Landroidx/media3/datasource/DataSourceException;-><init>(I)V

    .line 98
    .line 99
    .line 100
    throw p1

    .line 101
    :cond_4
    :goto_2
    iget-wide v2, p1, Lw1/h;->h:J

    .line 102
    .line 103
    cmp-long v0, v2, v7

    .line 104
    .line 105
    if-eqz v0, :cond_6

    .line 106
    .line 107
    iget-wide v9, p0, Landroidx/media3/datasource/cache/a;->o:J

    .line 108
    .line 109
    cmp-long v0, v9, v7

    .line 110
    .line 111
    if-nez v0, :cond_5

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_5
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 115
    .line 116
    .line 117
    move-result-wide v2

    .line 118
    :goto_3
    iput-wide v2, p0, Landroidx/media3/datasource/cache/a;->o:J

    .line 119
    .line 120
    :cond_6
    iget-wide v2, p0, Landroidx/media3/datasource/cache/a;->o:J

    .line 121
    .line 122
    cmp-long v0, v2, v5

    .line 123
    .line 124
    if-gtz v0, :cond_7

    .line 125
    .line 126
    cmp-long v0, v2, v7

    .line 127
    .line 128
    if-nez v0, :cond_8

    .line 129
    .line 130
    :cond_7
    invoke-direct {p0, v1, v4}, Landroidx/media3/datasource/cache/a;->o(Lw1/h;Z)V

    .line 131
    .line 132
    .line 133
    :cond_8
    iget-wide v0, p1, Lw1/h;->h:J

    .line 134
    .line 135
    cmp-long p1, v0, v7

    .line 136
    .line 137
    if-eqz p1, :cond_9

    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_9
    iget-wide v0, p0, Landroidx/media3/datasource/cache/a;->o:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    .line 142
    :goto_4
    return-wide v0

    .line 143
    :goto_5
    invoke-direct {p0, p1}, Landroidx/media3/datasource/cache/a;->h(Ljava/lang/Throwable;)V

    .line 144
    .line 145
    .line 146
    throw p1
.end method

.method public c(Lw1/n;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/datasource/cache/a;->b:Landroidx/media3/datasource/a;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Landroidx/media3/datasource/a;->c(Lw1/n;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/media3/datasource/cache/a;->d:Landroidx/media3/datasource/a;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Landroidx/media3/datasource/a;->c(Lw1/n;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public close()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/media3/datasource/cache/a;->j:Lw1/h;

    .line 3
    .line 4
    iput-object v0, p0, Landroidx/media3/datasource/cache/a;->i:Landroid/net/Uri;

    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    iput-wide v0, p0, Landroidx/media3/datasource/cache/a;->n:J

    .line 9
    .line 10
    invoke-direct {p0}, Landroidx/media3/datasource/cache/a;->m()V

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/datasource/cache/a;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    invoke-direct {p0, v0}, Landroidx/media3/datasource/cache/a;->h(Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public e()Landroidx/media3/datasource/cache/Cache;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/datasource/cache/a;->a:Landroidx/media3/datasource/cache/Cache;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Landroidx/media3/datasource/cache/g;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/datasource/cache/a;->e:Landroidx/media3/datasource/cache/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/media3/datasource/cache/a;->k()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/datasource/cache/a;->d:Landroidx/media3/datasource/a;

    .line 8
    .line 9
    invoke-interface {v0}, Landroidx/media3/datasource/a;->getResponseHeaders()Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/datasource/cache/a;->i:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public read([BII)I
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    move/from16 v0, p3

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return v2

    .line 8
    :cond_0
    iget-wide v3, v1, Landroidx/media3/datasource/cache/a;->o:J

    .line 9
    .line 10
    const-wide/16 v5, 0x0

    .line 11
    .line 12
    cmp-long v3, v3, v5

    .line 13
    .line 14
    const/4 v4, -0x1

    .line 15
    if-nez v3, :cond_1

    .line 16
    .line 17
    return v4

    .line 18
    :cond_1
    iget-object v3, v1, Landroidx/media3/datasource/cache/a;->j:Lw1/h;

    .line 19
    .line 20
    invoke-static {v3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lw1/h;

    .line 25
    .line 26
    iget-object v7, v1, Landroidx/media3/datasource/cache/a;->k:Lw1/h;

    .line 27
    .line 28
    invoke-static {v7}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    check-cast v7, Lw1/h;

    .line 33
    .line 34
    :try_start_0
    iget-wide v8, v1, Landroidx/media3/datasource/cache/a;->n:J

    .line 35
    .line 36
    iget-wide v10, v1, Landroidx/media3/datasource/cache/a;->t:J

    .line 37
    .line 38
    cmp-long v8, v8, v10

    .line 39
    .line 40
    if-ltz v8, :cond_2

    .line 41
    .line 42
    const/4 v8, 0x1

    .line 43
    invoke-direct {p0, v3, v8}, Landroidx/media3/datasource/cache/a;->o(Lw1/h;Z)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    goto :goto_3

    .line 49
    :cond_2
    :goto_0
    iget-object v8, v1, Landroidx/media3/datasource/cache/a;->l:Landroidx/media3/datasource/a;

    .line 50
    .line 51
    invoke-static {v8}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    check-cast v8, Landroidx/media3/datasource/a;

    .line 56
    .line 57
    move-object/from16 v9, p1

    .line 58
    .line 59
    move/from16 v10, p2

    .line 60
    .line 61
    invoke-interface {v8, v9, v10, v0}, Landroidx/media3/common/j;->read([BII)I

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    const-wide/16 v11, -0x1

    .line 66
    .line 67
    if-eq v8, v4, :cond_4

    .line 68
    .line 69
    invoke-direct {p0}, Landroidx/media3/datasource/cache/a;->j()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    iget-wide v2, v1, Landroidx/media3/datasource/cache/a;->s:J

    .line 76
    .line 77
    int-to-long v4, v8

    .line 78
    add-long/2addr v2, v4

    .line 79
    iput-wide v2, v1, Landroidx/media3/datasource/cache/a;->s:J

    .line 80
    .line 81
    :cond_3
    iget-wide v2, v1, Landroidx/media3/datasource/cache/a;->n:J

    .line 82
    .line 83
    int-to-long v4, v8

    .line 84
    add-long/2addr v2, v4

    .line 85
    iput-wide v2, v1, Landroidx/media3/datasource/cache/a;->n:J

    .line 86
    .line 87
    iget-wide v2, v1, Landroidx/media3/datasource/cache/a;->m:J

    .line 88
    .line 89
    add-long/2addr v2, v4

    .line 90
    iput-wide v2, v1, Landroidx/media3/datasource/cache/a;->m:J

    .line 91
    .line 92
    iget-wide v2, v1, Landroidx/media3/datasource/cache/a;->o:J

    .line 93
    .line 94
    cmp-long v0, v2, v11

    .line 95
    .line 96
    if-eqz v0, :cond_7

    .line 97
    .line 98
    sub-long/2addr v2, v4

    .line 99
    iput-wide v2, v1, Landroidx/media3/datasource/cache/a;->o:J

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_4
    invoke-direct {p0}, Landroidx/media3/datasource/cache/a;->k()Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-eqz v4, :cond_6

    .line 107
    .line 108
    iget-wide v13, v7, Lw1/h;->h:J

    .line 109
    .line 110
    cmp-long v4, v13, v11

    .line 111
    .line 112
    if-eqz v4, :cond_5

    .line 113
    .line 114
    iget-wide v11, v1, Landroidx/media3/datasource/cache/a;->m:J

    .line 115
    .line 116
    cmp-long v4, v11, v13

    .line 117
    .line 118
    if-gez v4, :cond_6

    .line 119
    .line 120
    :cond_5
    iget-object v0, v3, Lw1/h;->i:Ljava/lang/String;

    .line 121
    .line 122
    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    check-cast v0, Ljava/lang/String;

    .line 127
    .line 128
    invoke-direct {p0, v0}, Landroidx/media3/datasource/cache/a;->p(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_6
    iget-wide v11, v1, Landroidx/media3/datasource/cache/a;->o:J

    .line 133
    .line 134
    cmp-long v4, v11, v5

    .line 135
    .line 136
    if-gtz v4, :cond_8

    .line 137
    .line 138
    const-wide/16 v4, -0x1

    .line 139
    .line 140
    cmp-long v4, v11, v4

    .line 141
    .line 142
    if-nez v4, :cond_7

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_7
    :goto_1
    return v8

    .line 146
    :cond_8
    :goto_2
    invoke-direct {p0}, Landroidx/media3/datasource/cache/a;->d()V

    .line 147
    .line 148
    .line 149
    invoke-direct {p0, v3, v2}, Landroidx/media3/datasource/cache/a;->o(Lw1/h;Z)V

    .line 150
    .line 151
    .line 152
    invoke-virtual/range {p0 .. p3}, Landroidx/media3/datasource/cache/a;->read([BII)I

    .line 153
    .line 154
    .line 155
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    return v0

    .line 157
    :goto_3
    invoke-direct {p0, v0}, Landroidx/media3/datasource/cache/a;->h(Ljava/lang/Throwable;)V

    .line 158
    .line 159
    .line 160
    throw v0
.end method
