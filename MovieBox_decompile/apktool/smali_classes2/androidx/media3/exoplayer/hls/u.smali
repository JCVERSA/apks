.class public final Landroidx/media3/exoplayer/hls/u;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lk2/r;


# static fields
.field private static final i:Ljava/util/regex/Pattern;

.field private static final j:Ljava/util/regex/Pattern;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroidx/media3/common/util/p0;

.field private final c:Landroidx/media3/common/util/j0;

.field private final d:Lh3/s$a;

.field private final e:Z

.field private f:Lk2/t;

.field private g:[B

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "LOCAL:([^,]+)"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/media3/exoplayer/hls/u;->i:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    const-string v0, "MPEGTS:(-?\\d+)"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Landroidx/media3/exoplayer/hls/u;->j:Ljava/util/regex/Pattern;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/media3/common/util/p0;Lh3/s$a;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/u;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/hls/u;->b:Landroidx/media3/common/util/p0;

    .line 7
    .line 8
    new-instance p1, Landroidx/media3/common/util/j0;

    .line 9
    .line 10
    invoke-direct {p1}, Landroidx/media3/common/util/j0;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/u;->c:Landroidx/media3/common/util/j0;

    .line 14
    .line 15
    const/16 p1, 0x400

    .line 16
    .line 17
    new-array p1, p1, [B

    .line 18
    .line 19
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/u;->g:[B

    .line 20
    .line 21
    iput-object p3, p0, Landroidx/media3/exoplayer/hls/u;->d:Lh3/s$a;

    .line 22
    .line 23
    iput-boolean p4, p0, Landroidx/media3/exoplayer/hls/u;->e:Z

    .line 24
    .line 25
    return-void
.end method

.method private a(J)Lk2/s0;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/u;->f:Lk2/t;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x3

    .line 5
    invoke-interface {v0, v1, v2}, Lk2/t;->track(II)Lk2/s0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Landroidx/media3/common/r$b;

    .line 10
    .line 11
    invoke-direct {v1}, Landroidx/media3/common/r$b;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "text/vtt"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/u;->a:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroidx/media3/common/r$b;->j0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1, p1, p2}, Landroidx/media3/common/r$b;->y0(J)Landroidx/media3/common/r$b;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-interface {v0, p1}, Lk2/s0;->d(Landroidx/media3/common/r;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/u;->f:Lk2/t;

    .line 38
    .line 39
    invoke-interface {p1}, Lk2/t;->endTracks()V

    .line 40
    .line 41
    .line 42
    return-object v0
.end method

.method private g()V
    .locals 12

    .line 1
    new-instance v0, Landroidx/media3/common/util/j0;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/u;->g:[B

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/media3/common/util/j0;-><init>([B)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lq3/h;->e(Landroidx/media3/common/util/j0;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->s()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    move-wide v4, v2

    .line 18
    move-wide v6, v4

    .line 19
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v8

    .line 23
    const/4 v9, 0x1

    .line 24
    if-nez v8, :cond_3

    .line 25
    .line 26
    const-string v8, "X-TIMESTAMP-MAP"

    .line 27
    .line 28
    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v8

    .line 32
    if-eqz v8, :cond_2

    .line 33
    .line 34
    sget-object v4, Landroidx/media3/exoplayer/hls/u;->i:Ljava/util/regex/Pattern;

    .line 35
    .line 36
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    const/4 v6, 0x0

    .line 45
    if-eqz v5, :cond_1

    .line 46
    .line 47
    sget-object v5, Landroidx/media3/exoplayer/hls/u;->j:Ljava/util/regex/Pattern;

    .line 48
    .line 49
    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    if-eqz v7, :cond_0

    .line 58
    .line 59
    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v1}, Lq3/h;->d(Ljava/lang/String;)J

    .line 70
    .line 71
    .line 72
    move-result-wide v6

    .line 73
    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 84
    .line 85
    .line 86
    move-result-wide v4

    .line 87
    invoke-static {v4, v5}, Landroidx/media3/common/util/p0;->h(J)J

    .line 88
    .line 89
    .line 90
    move-result-wide v4

    .line 91
    goto :goto_1

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v2, "X-TIMESTAMP-MAP doesn\'t contain media timestamp: "

    .line 98
    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-static {v0, v6}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    throw v0

    .line 114
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    const-string v2, "X-TIMESTAMP-MAP doesn\'t contain local timestamp: "

    .line 120
    .line 121
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {v0, v6}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    throw v0

    .line 136
    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->s()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    goto :goto_0

    .line 141
    :cond_3
    invoke-static {v0}, Lq3/h;->a(Landroidx/media3/common/util/j0;)Ljava/util/regex/Matcher;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    if-nez v0, :cond_4

    .line 146
    .line 147
    invoke-direct {p0, v2, v3}, Landroidx/media3/exoplayer/hls/u;->a(J)Lk2/s0;

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :cond_4
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    check-cast v0, Ljava/lang/String;

    .line 160
    .line 161
    invoke-static {v0}, Lq3/h;->d(Ljava/lang/String;)J

    .line 162
    .line 163
    .line 164
    move-result-wide v0

    .line 165
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/u;->b:Landroidx/media3/common/util/p0;

    .line 166
    .line 167
    add-long/2addr v4, v0

    .line 168
    sub-long/2addr v4, v6

    .line 169
    invoke-static {v4, v5}, Landroidx/media3/common/util/p0;->l(J)J

    .line 170
    .line 171
    .line 172
    move-result-wide v3

    .line 173
    invoke-virtual {v2, v3, v4}, Landroidx/media3/common/util/p0;->b(J)J

    .line 174
    .line 175
    .line 176
    move-result-wide v6

    .line 177
    sub-long v0, v6, v0

    .line 178
    .line 179
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/hls/u;->a(J)Lk2/s0;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/u;->c:Landroidx/media3/common/util/j0;

    .line 184
    .line 185
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/u;->g:[B

    .line 186
    .line 187
    iget v2, p0, Landroidx/media3/exoplayer/hls/u;->h:I

    .line 188
    .line 189
    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/util/j0;->U([BI)V

    .line 190
    .line 191
    .line 192
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/u;->c:Landroidx/media3/common/util/j0;

    .line 193
    .line 194
    iget v1, p0, Landroidx/media3/exoplayer/hls/u;->h:I

    .line 195
    .line 196
    invoke-interface {v5, v0, v1}, Lk2/s0;->c(Landroidx/media3/common/util/j0;I)V

    .line 197
    .line 198
    .line 199
    iget v9, p0, Landroidx/media3/exoplayer/hls/u;->h:I

    .line 200
    .line 201
    const/4 v10, 0x0

    .line 202
    const/4 v11, 0x0

    .line 203
    const/4 v8, 0x1

    .line 204
    invoke-interface/range {v5 .. v11}, Lk2/s0;->b(JIIILk2/s0$a;)V

    .line 205
    .line 206
    .line 207
    return-void
.end method


# virtual methods
.method public b(Lk2/s;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/u;->g:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x6

    .line 5
    invoke-interface {p1, v0, v1, v2, v1}, Lk2/s;->peekFully([BIIZ)Z

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/u;->c:Landroidx/media3/common/util/j0;

    .line 9
    .line 10
    iget-object v3, p0, Landroidx/media3/exoplayer/hls/u;->g:[B

    .line 11
    .line 12
    invoke-virtual {v0, v3, v2}, Landroidx/media3/common/util/j0;->U([BI)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/u;->c:Landroidx/media3/common/util/j0;

    .line 16
    .line 17
    invoke-static {v0}, Lq3/h;->b(Landroidx/media3/common/util/j0;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    return p1

    .line 25
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/u;->g:[B

    .line 26
    .line 27
    const/4 v3, 0x3

    .line 28
    invoke-interface {p1, v0, v2, v3, v1}, Lk2/s;->peekFully([BIIZ)Z

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/u;->c:Landroidx/media3/common/util/j0;

    .line 32
    .line 33
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/u;->g:[B

    .line 34
    .line 35
    const/16 v1, 0x9

    .line 36
    .line 37
    invoke-virtual {p1, v0, v1}, Landroidx/media3/common/util/j0;->U([BI)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/u;->c:Landroidx/media3/common/util/j0;

    .line 41
    .line 42
    invoke-static {p1}, Lq3/h;->b(Landroidx/media3/common/util/j0;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
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
    .locals 4

    .line 1
    iget-object p2, p0, Landroidx/media3/exoplayer/hls/u;->f:Lk2/t;

    .line 2
    .line 3
    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lk2/s;->getLength()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    long-to-int p2, v0

    .line 11
    iget v0, p0, Landroidx/media3/exoplayer/hls/u;->h:I

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/u;->g:[B

    .line 14
    .line 15
    array-length v2, v1

    .line 16
    const/4 v3, -0x1

    .line 17
    if-ne v0, v2, :cond_1

    .line 18
    .line 19
    if-eq p2, v3, :cond_0

    .line 20
    .line 21
    move v0, p2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    array-length v0, v1

    .line 24
    :goto_0
    mul-int/lit8 v0, v0, 0x3

    .line 25
    .line 26
    div-int/lit8 v0, v0, 0x2

    .line 27
    .line 28
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Landroidx/media3/exoplayer/hls/u;->g:[B

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/u;->g:[B

    .line 35
    .line 36
    iget v1, p0, Landroidx/media3/exoplayer/hls/u;->h:I

    .line 37
    .line 38
    array-length v2, v0

    .line 39
    sub-int/2addr v2, v1

    .line 40
    invoke-interface {p1, v0, v1, v2}, Lk2/s;->read([BII)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eq p1, v3, :cond_3

    .line 45
    .line 46
    iget v0, p0, Landroidx/media3/exoplayer/hls/u;->h:I

    .line 47
    .line 48
    add-int/2addr v0, p1

    .line 49
    iput v0, p0, Landroidx/media3/exoplayer/hls/u;->h:I

    .line 50
    .line 51
    if-eq p2, v3, :cond_2

    .line 52
    .line 53
    if-eq v0, p2, :cond_3

    .line 54
    .line 55
    :cond_2
    const/4 p1, 0x0

    .line 56
    return p1

    .line 57
    :cond_3
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/u;->g()V

    .line 58
    .line 59
    .line 60
    return v3
.end method

.method public e(Lk2/t;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/u;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lh3/t;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/u;->d:Lh3/s$a;

    .line 8
    .line 9
    invoke-direct {v0, p1, v1}, Lh3/t;-><init>(Lk2/t;Lh3/s$a;)V

    .line 10
    .line 11
    .line 12
    move-object p1, v0

    .line 13
    :cond_0
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/u;->f:Lk2/t;

    .line 14
    .line 15
    new-instance v0, Lk2/m0$b;

    .line 16
    .line 17
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1, v2}, Lk2/m0$b;-><init>(J)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, v0}, Lk2/t;->d(Lk2/m0;)V

    .line 26
    .line 27
    .line 28
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
    .locals 0

    .line 1
    return-void
.end method

.method public seek(JJ)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method
