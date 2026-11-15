.class Landroidx/media3/exoplayer/hls/e;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/hls/e$d;,
        Landroidx/media3/exoplayer/hls/e$b;,
        Landroidx/media3/exoplayer/hls/e$e;,
        Landroidx/media3/exoplayer/hls/e$a;,
        Landroidx/media3/exoplayer/hls/e$c;
    }
.end annotation


# instance fields
.field private final a:Landroidx/media3/exoplayer/hls/g;

.field private final b:Landroidx/media3/datasource/a;

.field private final c:Landroidx/media3/datasource/a;

.field private final d:Landroidx/media3/exoplayer/hls/t;

.field private final e:[Landroid/net/Uri;

.field private final f:[Landroidx/media3/common/r;

.field private final g:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

.field private final h:Landroidx/media3/common/f0;

.field private final i:Ljava/util/List;

.field private final j:Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;

.field private final k:Lx1/f4;

.field private final l:J

.field private m:Z

.field private n:[B

.field private o:Ljava/io/IOException;

.field private p:Landroid/net/Uri;

.field private q:Z

.field private r:Li2/z;

.field private s:J

.field private t:Z

.field private u:J


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/hls/g;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;[Landroid/net/Uri;[Landroidx/media3/common/r;Landroidx/media3/exoplayer/hls/f;Lw1/n;Landroidx/media3/exoplayer/hls/t;JLjava/util/List;Lx1/f4;Landroidx/media3/exoplayer/upstream/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/e;->a:Landroidx/media3/exoplayer/hls/g;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/hls/e;->g:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/media3/exoplayer/hls/e;->e:[Landroid/net/Uri;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/media3/exoplayer/hls/e;->f:[Landroidx/media3/common/r;

    .line 11
    .line 12
    iput-object p7, p0, Landroidx/media3/exoplayer/hls/e;->d:Landroidx/media3/exoplayer/hls/t;

    .line 13
    .line 14
    iput-wide p8, p0, Landroidx/media3/exoplayer/hls/e;->l:J

    .line 15
    .line 16
    iput-object p10, p0, Landroidx/media3/exoplayer/hls/e;->i:Ljava/util/List;

    .line 17
    .line 18
    iput-object p11, p0, Landroidx/media3/exoplayer/hls/e;->k:Lx1/f4;

    .line 19
    .line 20
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    iput-wide p1, p0, Landroidx/media3/exoplayer/hls/e;->u:J

    .line 26
    .line 27
    new-instance p7, Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;

    .line 28
    .line 29
    const/4 p8, 0x4

    .line 30
    invoke-direct {p7, p8}, Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;-><init>(I)V

    .line 31
    .line 32
    .line 33
    iput-object p7, p0, Landroidx/media3/exoplayer/hls/e;->j:Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;

    .line 34
    .line 35
    sget-object p7, Landroidx/media3/common/util/a1;->f:[B

    .line 36
    .line 37
    iput-object p7, p0, Landroidx/media3/exoplayer/hls/e;->n:[B

    .line 38
    .line 39
    iput-wide p1, p0, Landroidx/media3/exoplayer/hls/e;->s:J

    .line 40
    .line 41
    const/4 p1, 0x1

    .line 42
    invoke-interface {p5, p1}, Landroidx/media3/exoplayer/hls/f;->a(I)Landroidx/media3/datasource/a;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/e;->b:Landroidx/media3/datasource/a;

    .line 47
    .line 48
    if-eqz p6, :cond_0

    .line 49
    .line 50
    invoke-interface {p1, p6}, Landroidx/media3/datasource/a;->c(Lw1/n;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    const/4 p1, 0x3

    .line 54
    invoke-interface {p5, p1}, Landroidx/media3/exoplayer/hls/f;->a(I)Landroidx/media3/datasource/a;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/e;->c:Landroidx/media3/datasource/a;

    .line 59
    .line 60
    new-instance p1, Landroidx/media3/common/f0;

    .line 61
    .line 62
    invoke-direct {p1, p4}, Landroidx/media3/common/f0;-><init>([Landroidx/media3/common/r;)V

    .line 63
    .line 64
    .line 65
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/e;->h:Landroidx/media3/common/f0;

    .line 66
    .line 67
    new-instance p1, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    const/4 p2, 0x0

    .line 73
    :goto_0
    array-length p5, p3

    .line 74
    if-ge p2, p5, :cond_2

    .line 75
    .line 76
    aget-object p5, p4, p2

    .line 77
    .line 78
    iget p5, p5, Landroidx/media3/common/r;->f:I

    .line 79
    .line 80
    and-int/lit16 p5, p5, 0x4000

    .line 81
    .line 82
    if-nez p5, :cond_1

    .line 83
    .line 84
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object p5

    .line 88
    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    new-instance p2, Landroidx/media3/exoplayer/hls/e$d;

    .line 95
    .line 96
    iget-object p3, p0, Landroidx/media3/exoplayer/hls/e;->h:Landroidx/media3/common/f0;

    .line 97
    .line 98
    invoke-static {p1}, Lcom/google/common/primitives/Ints;->o(Ljava/util/Collection;)[I

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-direct {p2, p3, p1}, Landroidx/media3/exoplayer/hls/e$d;-><init>(Landroidx/media3/common/f0;[I)V

    .line 103
    .line 104
    .line 105
    iput-object p2, p0, Landroidx/media3/exoplayer/hls/e;->r:Li2/z;

    .line 106
    .line 107
    return-void
.end method

.method private b()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/e;->r:Li2/z;

    .line 2
    .line 3
    invoke-interface {v0}, Li2/z;->getSelectedIndexInTrackGroup()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/e;->g:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/e;->e:[Landroid/net/Uri;

    .line 10
    .line 11
    aget-object v0, v2, v0

    .line 12
    .line 13
    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->l(Landroid/net/Uri;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private static e(Landroidx/media3/exoplayer/hls/playlist/c;Landroidx/media3/exoplayer/hls/playlist/c$g;)Landroid/net/Uri;
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p1, Landroidx/media3/exoplayer/hls/playlist/c$g;->g:Ljava/lang/String;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p0, p0, Lb2/d;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p0, p1}, Landroidx/media3/common/util/r0;->f(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 16
    return-object p0
.end method

.method private g(Landroidx/media3/exoplayer/hls/i;ZLandroidx/media3/exoplayer/hls/playlist/c;JJ)Landroid/util/Pair;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, -0x1

    .line 3
    if-eqz p1, :cond_4

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    goto :goto_3

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/exoplayer/hls/i;->f()Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-eqz p2, :cond_3

    .line 13
    .line 14
    new-instance p2, Landroid/util/Pair;

    .line 15
    .line 16
    iget p3, p1, Landroidx/media3/exoplayer/hls/i;->o:I

    .line 17
    .line 18
    if-ne p3, v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Lg2/m;->e()J

    .line 21
    .line 22
    .line 23
    move-result-wide p3

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-wide p3, p1, Lg2/m;->j:J

    .line 26
    .line 27
    :goto_0
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    iget p1, p1, Landroidx/media3/exoplayer/hls/i;->o:I

    .line 32
    .line 33
    if-ne p1, v1, :cond_2

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    add-int/lit8 v1, p1, 0x1

    .line 37
    .line 38
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {p2, p3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_3
    new-instance p2, Landroid/util/Pair;

    .line 47
    .line 48
    iget-wide p3, p1, Lg2/m;->j:J

    .line 49
    .line 50
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    iget p1, p1, Landroidx/media3/exoplayer/hls/i;->o:I

    .line 55
    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-direct {p2, p3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :goto_2
    return-object p2

    .line 64
    :cond_4
    :goto_3
    iget-wide v2, p3, Landroidx/media3/exoplayer/hls/playlist/c;->u:J

    .line 65
    .line 66
    add-long/2addr v2, p4

    .line 67
    if-eqz p1, :cond_6

    .line 68
    .line 69
    iget-boolean p2, p0, Landroidx/media3/exoplayer/hls/e;->q:Z

    .line 70
    .line 71
    if-eqz p2, :cond_5

    .line 72
    .line 73
    goto :goto_4

    .line 74
    :cond_5
    iget-wide p6, p1, Lg2/e;->g:J

    .line 75
    .line 76
    :cond_6
    :goto_4
    iget-boolean p2, p3, Landroidx/media3/exoplayer/hls/playlist/c;->o:Z

    .line 77
    .line 78
    if-nez p2, :cond_7

    .line 79
    .line 80
    cmp-long p2, p6, v2

    .line 81
    .line 82
    if-ltz p2, :cond_7

    .line 83
    .line 84
    new-instance p1, Landroid/util/Pair;

    .line 85
    .line 86
    iget-wide p4, p3, Landroidx/media3/exoplayer/hls/playlist/c;->k:J

    .line 87
    .line 88
    iget-object p2, p3, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    .line 89
    .line 90
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    int-to-long p2, p2

    .line 95
    add-long/2addr p4, p2

    .line 96
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object p3

    .line 104
    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    return-object p1

    .line 108
    :cond_7
    sub-long/2addr p6, p4

    .line 109
    iget-object p2, p3, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    .line 110
    .line 111
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 112
    .line 113
    .line 114
    move-result-object p4

    .line 115
    iget-object p5, p0, Landroidx/media3/exoplayer/hls/e;->g:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 116
    .line 117
    invoke-interface {p5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->f()Z

    .line 118
    .line 119
    .line 120
    move-result p5

    .line 121
    const/4 v2, 0x0

    .line 122
    if-eqz p5, :cond_9

    .line 123
    .line 124
    if-nez p1, :cond_8

    .line 125
    .line 126
    goto :goto_5

    .line 127
    :cond_8
    move p1, v2

    .line 128
    goto :goto_6

    .line 129
    :cond_9
    :goto_5
    move p1, v0

    .line 130
    :goto_6
    invoke-static {p2, p4, v0, p1}, Landroidx/media3/common/util/a1;->f(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    int-to-long p4, p1

    .line 135
    iget-wide v3, p3, Landroidx/media3/exoplayer/hls/playlist/c;->k:J

    .line 136
    .line 137
    add-long/2addr p4, v3

    .line 138
    if-ltz p1, :cond_d

    .line 139
    .line 140
    iget-object p2, p3, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    .line 141
    .line 142
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    check-cast p1, Landroidx/media3/exoplayer/hls/playlist/c$f;

    .line 147
    .line 148
    iget-wide v3, p1, Landroidx/media3/exoplayer/hls/playlist/c$g;->e:J

    .line 149
    .line 150
    iget-wide v5, p1, Landroidx/media3/exoplayer/hls/playlist/c$g;->c:J

    .line 151
    .line 152
    add-long/2addr v3, v5

    .line 153
    cmp-long p2, p6, v3

    .line 154
    .line 155
    if-gez p2, :cond_a

    .line 156
    .line 157
    iget-object p1, p1, Landroidx/media3/exoplayer/hls/playlist/c$f;->m:Ljava/util/List;

    .line 158
    .line 159
    goto :goto_7

    .line 160
    :cond_a
    iget-object p1, p3, Landroidx/media3/exoplayer/hls/playlist/c;->s:Ljava/util/List;

    .line 161
    .line 162
    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 163
    .line 164
    .line 165
    move-result p2

    .line 166
    if-ge v2, p2, :cond_d

    .line 167
    .line 168
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    check-cast p2, Landroidx/media3/exoplayer/hls/playlist/c$d;

    .line 173
    .line 174
    iget-wide v3, p2, Landroidx/media3/exoplayer/hls/playlist/c$g;->e:J

    .line 175
    .line 176
    iget-wide v5, p2, Landroidx/media3/exoplayer/hls/playlist/c$g;->c:J

    .line 177
    .line 178
    add-long/2addr v3, v5

    .line 179
    cmp-long v0, p6, v3

    .line 180
    .line 181
    if-gez v0, :cond_c

    .line 182
    .line 183
    iget-boolean p2, p2, Landroidx/media3/exoplayer/hls/playlist/c$d;->l:Z

    .line 184
    .line 185
    if-eqz p2, :cond_d

    .line 186
    .line 187
    iget-object p2, p3, Landroidx/media3/exoplayer/hls/playlist/c;->s:Ljava/util/List;

    .line 188
    .line 189
    if-ne p1, p2, :cond_b

    .line 190
    .line 191
    const-wide/16 p1, 0x1

    .line 192
    .line 193
    goto :goto_8

    .line 194
    :cond_b
    const-wide/16 p1, 0x0

    .line 195
    .line 196
    :goto_8
    add-long/2addr p4, p1

    .line 197
    move v1, v2

    .line 198
    goto :goto_9

    .line 199
    :cond_c
    add-int/lit8 v2, v2, 0x1

    .line 200
    .line 201
    goto :goto_7

    .line 202
    :cond_d
    :goto_9
    new-instance p1, Landroid/util/Pair;

    .line 203
    .line 204
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 209
    .line 210
    .line 211
    move-result-object p3

    .line 212
    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    return-object p1
.end method

.method private static h(Landroidx/media3/exoplayer/hls/playlist/c;JI)Landroidx/media3/exoplayer/hls/e$e;
    .locals 7

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/playlist/c;->k:J

    .line 2
    .line 3
    sub-long v0, p1, v0

    .line 4
    .line 5
    long-to-int v0, v0

    .line 6
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, -0x1

    .line 15
    if-ne v0, v1, :cond_2

    .line 16
    .line 17
    if-eq p3, v4, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move p3, v3

    .line 21
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/c;->s:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-ge p3, v0, :cond_1

    .line 28
    .line 29
    new-instance v2, Landroidx/media3/exoplayer/hls/e$e;

    .line 30
    .line 31
    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/c;->s:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Landroidx/media3/exoplayer/hls/playlist/c$g;

    .line 38
    .line 39
    invoke-direct {v2, p0, p1, p2, p3}, Landroidx/media3/exoplayer/hls/e$e;-><init>(Landroidx/media3/exoplayer/hls/playlist/c$g;JI)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-object v2

    .line 43
    :cond_2
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Landroidx/media3/exoplayer/hls/playlist/c$f;

    .line 50
    .line 51
    if-ne p3, v4, :cond_3

    .line 52
    .line 53
    new-instance p0, Landroidx/media3/exoplayer/hls/e$e;

    .line 54
    .line 55
    invoke-direct {p0, v1, p1, p2, v4}, Landroidx/media3/exoplayer/hls/e$e;-><init>(Landroidx/media3/exoplayer/hls/playlist/c$g;JI)V

    .line 56
    .line 57
    .line 58
    return-object p0

    .line 59
    :cond_3
    iget-object v5, v1, Landroidx/media3/exoplayer/hls/playlist/c$f;->m:Ljava/util/List;

    .line 60
    .line 61
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-ge p3, v5, :cond_4

    .line 66
    .line 67
    new-instance p0, Landroidx/media3/exoplayer/hls/e$e;

    .line 68
    .line 69
    iget-object v0, v1, Landroidx/media3/exoplayer/hls/playlist/c$f;->m:Ljava/util/List;

    .line 70
    .line 71
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Landroidx/media3/exoplayer/hls/playlist/c$g;

    .line 76
    .line 77
    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/media3/exoplayer/hls/e$e;-><init>(Landroidx/media3/exoplayer/hls/playlist/c$g;JI)V

    .line 78
    .line 79
    .line 80
    return-object p0

    .line 81
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 82
    .line 83
    iget-object p3, p0, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    .line 84
    .line 85
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 86
    .line 87
    .line 88
    move-result p3

    .line 89
    const-wide/16 v5, 0x1

    .line 90
    .line 91
    if-ge v0, p3, :cond_5

    .line 92
    .line 93
    new-instance p3, Landroidx/media3/exoplayer/hls/e$e;

    .line 94
    .line 95
    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    .line 96
    .line 97
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    check-cast p0, Landroidx/media3/exoplayer/hls/playlist/c$g;

    .line 102
    .line 103
    add-long/2addr p1, v5

    .line 104
    invoke-direct {p3, p0, p1, p2, v4}, Landroidx/media3/exoplayer/hls/e$e;-><init>(Landroidx/media3/exoplayer/hls/playlist/c$g;JI)V

    .line 105
    .line 106
    .line 107
    return-object p3

    .line 108
    :cond_5
    iget-object p3, p0, Landroidx/media3/exoplayer/hls/playlist/c;->s:Ljava/util/List;

    .line 109
    .line 110
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 111
    .line 112
    .line 113
    move-result p3

    .line 114
    if-nez p3, :cond_6

    .line 115
    .line 116
    new-instance p3, Landroidx/media3/exoplayer/hls/e$e;

    .line 117
    .line 118
    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/c;->s:Ljava/util/List;

    .line 119
    .line 120
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    check-cast p0, Landroidx/media3/exoplayer/hls/playlist/c$g;

    .line 125
    .line 126
    add-long/2addr p1, v5

    .line 127
    invoke-direct {p3, p0, p1, p2, v3}, Landroidx/media3/exoplayer/hls/e$e;-><init>(Landroidx/media3/exoplayer/hls/playlist/c$g;JI)V

    .line 128
    .line 129
    .line 130
    return-object p3

    .line 131
    :cond_6
    return-object v2
.end method

.method static j(Landroidx/media3/exoplayer/hls/playlist/c;JI)Ljava/util/List;
    .locals 7

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/playlist/c;->k:J

    .line 2
    .line 3
    sub-long/2addr p1, v0

    .line 4
    long-to-int p1, p1

    .line 5
    if-ltz p1, :cond_7

    .line 6
    .line 7
    iget-object p2, p0, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-ge p2, p1, :cond_0

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x0

    .line 28
    const/4 v2, -0x1

    .line 29
    if-ge p1, v0, :cond_4

    .line 30
    .line 31
    if-eq p3, v2, :cond_3

    .line 32
    .line 33
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroidx/media3/exoplayer/hls/playlist/c$f;

    .line 40
    .line 41
    if-nez p3, :cond_1

    .line 42
    .line 43
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v3, v0, Landroidx/media3/exoplayer/hls/playlist/c$f;->m:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-ge p3, v3, :cond_2

    .line 54
    .line 55
    iget-object v0, v0, Landroidx/media3/exoplayer/hls/playlist/c$f;->m:Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-interface {v0, p3, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 66
    .line 67
    .line 68
    :cond_2
    :goto_0
    add-int/lit8 p1, p1, 0x1

    .line 69
    .line 70
    :cond_3
    iget-object p3, p0, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    .line 71
    .line 72
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    invoke-interface {p3, p1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 81
    .line 82
    .line 83
    move p3, v1

    .line 84
    :cond_4
    iget-wide v3, p0, Landroidx/media3/exoplayer/hls/playlist/c;->n:J

    .line 85
    .line 86
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    cmp-long p1, v3, v5

    .line 92
    .line 93
    if-eqz p1, :cond_6

    .line 94
    .line 95
    if-ne p3, v2, :cond_5

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_5
    move v1, p3

    .line 99
    :goto_1
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/c;->s:Ljava/util/List;

    .line 100
    .line 101
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-ge v1, p1, :cond_6

    .line 106
    .line 107
    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/c;->s:Ljava/util/List;

    .line 108
    .line 109
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    invoke-interface {p0, v1, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-interface {p2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 118
    .line 119
    .line 120
    :cond_6
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    return-object p0

    .line 125
    :cond_7
    :goto_2
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    return-object p0
.end method

.method private n(Landroid/net/Uri;IZLandroidx/media3/exoplayer/upstream/g$a;)Lg2/e;
    .locals 7

    .line 1
    const/4 p3, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object p3

    .line 5
    :cond_0
    iget-object p4, p0, Landroidx/media3/exoplayer/hls/e;->j:Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;

    .line 6
    .line 7
    invoke-virtual {p4, p1}, Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;->c(Landroid/net/Uri;)[B

    .line 8
    .line 9
    .line 10
    move-result-object p4

    .line 11
    if-eqz p4, :cond_1

    .line 12
    .line 13
    iget-object p2, p0, Landroidx/media3/exoplayer/hls/e;->j:Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;

    .line 14
    .line 15
    invoke-virtual {p2, p1, p4}, Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;->b(Landroid/net/Uri;[B)[B

    .line 16
    .line 17
    .line 18
    return-object p3

    .line 19
    :cond_1
    new-instance p3, Lw1/h$b;

    .line 20
    .line 21
    invoke-direct {p3}, Lw1/h$b;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3, p1}, Lw1/h$b;->i(Landroid/net/Uri;)Lw1/h$b;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 p3, 0x1

    .line 29
    invoke-virtual {p1, p3}, Lw1/h$b;->b(I)Lw1/h$b;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lw1/h$b;->a()Lw1/h;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    new-instance p1, Landroidx/media3/exoplayer/hls/e$a;

    .line 38
    .line 39
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/e;->c:Landroidx/media3/datasource/a;

    .line 40
    .line 41
    iget-object p3, p0, Landroidx/media3/exoplayer/hls/e;->f:[Landroidx/media3/common/r;

    .line 42
    .line 43
    aget-object v3, p3, p2

    .line 44
    .line 45
    iget-object p2, p0, Landroidx/media3/exoplayer/hls/e;->r:Li2/z;

    .line 46
    .line 47
    invoke-interface {p2}, Li2/z;->getSelectionReason()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    iget-object p2, p0, Landroidx/media3/exoplayer/hls/e;->r:Li2/z;

    .line 52
    .line 53
    invoke-interface {p2}, Li2/z;->getSelectionData()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    iget-object v6, p0, Landroidx/media3/exoplayer/hls/e;->n:[B

    .line 58
    .line 59
    move-object v0, p1

    .line 60
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/hls/e$a;-><init>(Landroidx/media3/datasource/a;Lw1/h;Landroidx/media3/common/r;ILjava/lang/Object;[B)V

    .line 61
    .line 62
    .line 63
    return-object p1
.end method

.method private u(J)J
    .locals 5

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/e;->s:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v4, v0, v2

    .line 9
    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    sub-long v2, v0, p1

    .line 13
    .line 14
    :cond_0
    return-wide v2
.end method

.method private y(Landroidx/media3/exoplayer/hls/playlist/c;)V
    .locals 4

    .line 1
    iget-boolean v0, p1, Landroidx/media3/exoplayer/hls/playlist/c;->o:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/exoplayer/hls/playlist/c;->d()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/e;->g:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 16
    .line 17
    invoke-interface {p1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->b()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    sub-long/2addr v0, v2

    .line 22
    :goto_0
    iput-wide v0, p0, Landroidx/media3/exoplayer/hls/e;->s:J

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/exoplayer/hls/i;J)[Lg2/n;
    .locals 17

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    if-nez v9, :cond_0

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    :goto_0
    move v10, v0

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object v0, v8, Landroidx/media3/exoplayer/hls/e;->h:Landroidx/media3/common/f0;

    .line 11
    .line 12
    iget-object v1, v9, Lg2/e;->d:Landroidx/media3/common/r;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroidx/media3/common/f0;->b(Landroidx/media3/common/r;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    goto :goto_0

    .line 19
    :goto_1
    iget-object v0, v8, Landroidx/media3/exoplayer/hls/e;->r:Li2/z;

    .line 20
    .line 21
    invoke-interface {v0}, Li2/c0;->length()I

    .line 22
    .line 23
    .line 24
    move-result v11

    .line 25
    new-array v12, v11, [Lg2/n;

    .line 26
    .line 27
    const/4 v13, 0x0

    .line 28
    move v14, v13

    .line 29
    :goto_2
    if-ge v14, v11, :cond_3

    .line 30
    .line 31
    iget-object v0, v8, Landroidx/media3/exoplayer/hls/e;->r:Li2/z;

    .line 32
    .line 33
    invoke-interface {v0, v14}, Li2/c0;->getIndexInTrackGroup(I)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget-object v1, v8, Landroidx/media3/exoplayer/hls/e;->e:[Landroid/net/Uri;

    .line 38
    .line 39
    aget-object v1, v1, v0

    .line 40
    .line 41
    iget-object v2, v8, Landroidx/media3/exoplayer/hls/e;->g:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 42
    .line 43
    invoke-interface {v2, v1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->e(Landroid/net/Uri;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_1

    .line 48
    .line 49
    sget-object v0, Lg2/n;->a:Lg2/n;

    .line 50
    .line 51
    aput-object v0, v12, v14

    .line 52
    .line 53
    move/from16 v16, v14

    .line 54
    .line 55
    goto :goto_4

    .line 56
    :cond_1
    iget-object v2, v8, Landroidx/media3/exoplayer/hls/e;->g:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 57
    .line 58
    invoke-interface {v2, v1, v13}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->i(Landroid/net/Uri;Z)Landroidx/media3/exoplayer/hls/playlist/c;

    .line 59
    .line 60
    .line 61
    move-result-object v15

    .line 62
    invoke-static {v15}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    iget-wide v1, v15, Landroidx/media3/exoplayer/hls/playlist/c;->h:J

    .line 66
    .line 67
    iget-object v3, v8, Landroidx/media3/exoplayer/hls/e;->g:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 68
    .line 69
    invoke-interface {v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->b()J

    .line 70
    .line 71
    .line 72
    move-result-wide v3

    .line 73
    sub-long v6, v1, v3

    .line 74
    .line 75
    if-eq v0, v10, :cond_2

    .line 76
    .line 77
    const/4 v0, 0x1

    .line 78
    move v2, v0

    .line 79
    goto :goto_3

    .line 80
    :cond_2
    move v2, v13

    .line 81
    :goto_3
    move-object/from16 v0, p0

    .line 82
    .line 83
    move-object/from16 v1, p1

    .line 84
    .line 85
    move-object v3, v15

    .line 86
    move-wide v4, v6

    .line 87
    move/from16 v16, v14

    .line 88
    .line 89
    move-wide v13, v6

    .line 90
    move-wide/from16 v6, p2

    .line 91
    .line 92
    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/hls/e;->g(Landroidx/media3/exoplayer/hls/i;ZLandroidx/media3/exoplayer/hls/playlist/c;JJ)Landroid/util/Pair;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v1, Ljava/lang/Long;

    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 101
    .line 102
    .line 103
    move-result-wide v1

    .line 104
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v0, Ljava/lang/Integer;

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    new-instance v3, Landroidx/media3/exoplayer/hls/e$c;

    .line 113
    .line 114
    iget-object v4, v15, Lb2/d;->a:Ljava/lang/String;

    .line 115
    .line 116
    invoke-static {v15, v1, v2, v0}, Landroidx/media3/exoplayer/hls/e;->j(Landroidx/media3/exoplayer/hls/playlist/c;JI)Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-direct {v3, v4, v13, v14, v0}, Landroidx/media3/exoplayer/hls/e$c;-><init>(Ljava/lang/String;JLjava/util/List;)V

    .line 121
    .line 122
    .line 123
    aput-object v3, v12, v16

    .line 124
    .line 125
    :goto_4
    add-int/lit8 v14, v16, 0x1

    .line 126
    .line 127
    const/4 v13, 0x0

    .line 128
    goto :goto_2

    .line 129
    :cond_3
    return-object v12
.end method

.method public c(JLandroidx/media3/exoplayer/c4;)J
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/e;->r:Li2/z;

    .line 2
    .line 3
    invoke-interface {v0}, Li2/z;->getSelectedIndex()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/e;->e:[Landroid/net/Uri;

    .line 8
    .line 9
    array-length v2, v1

    .line 10
    const/4 v3, 0x1

    .line 11
    if-ge v0, v2, :cond_0

    .line 12
    .line 13
    const/4 v2, -0x1

    .line 14
    if-eq v0, v2, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/e;->g:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 17
    .line 18
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/e;->r:Li2/z;

    .line 19
    .line 20
    invoke-interface {v2}, Li2/z;->getSelectedIndexInTrackGroup()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    aget-object v1, v1, v2

    .line 25
    .line 26
    invoke-interface {v0, v1, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->i(Landroid/net/Uri;Z)Landroidx/media3/exoplayer/hls/playlist/c;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    if-eqz v0, :cond_3

    .line 33
    .line 34
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_1
    iget-wide v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->h:J

    .line 44
    .line 45
    iget-object v4, p0, Landroidx/media3/exoplayer/hls/e;->g:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 46
    .line 47
    invoke-interface {v4}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->b()J

    .line 48
    .line 49
    .line 50
    move-result-wide v4

    .line 51
    sub-long/2addr v1, v4

    .line 52
    sub-long v5, p1, v1

    .line 53
    .line 54
    iget-object p1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    .line 55
    .line 56
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-static {p1, p2, v3, v3}, Landroidx/media3/common/util/a1;->f(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    iget-object p2, v0, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    .line 65
    .line 66
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    check-cast p2, Landroidx/media3/exoplayer/hls/playlist/c$f;

    .line 71
    .line 72
    iget-wide v7, p2, Landroidx/media3/exoplayer/hls/playlist/c$g;->e:J

    .line 73
    .line 74
    iget-boolean p2, v0, Lb2/d;->c:Z

    .line 75
    .line 76
    if-eqz p2, :cond_2

    .line 77
    .line 78
    iget-object p2, v0, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    .line 79
    .line 80
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    sub-int/2addr p2, v3

    .line 85
    if-eq p1, p2, :cond_2

    .line 86
    .line 87
    iget-object p2, v0, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    .line 88
    .line 89
    add-int/2addr p1, v3

    .line 90
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    check-cast p1, Landroidx/media3/exoplayer/hls/playlist/c$f;

    .line 95
    .line 96
    iget-wide p1, p1, Landroidx/media3/exoplayer/hls/playlist/c$g;->e:J

    .line 97
    .line 98
    move-wide v9, p1

    .line 99
    goto :goto_1

    .line 100
    :cond_2
    move-wide v9, v7

    .line 101
    :goto_1
    move-object v4, p3

    .line 102
    invoke-virtual/range {v4 .. v10}, Landroidx/media3/exoplayer/c4;->a(JJJ)J

    .line 103
    .line 104
    .line 105
    move-result-wide p1

    .line 106
    add-long/2addr p1, v1

    .line 107
    :cond_3
    :goto_2
    return-wide p1
.end method

.method public d(Landroidx/media3/exoplayer/hls/i;)I
    .locals 8

    .line 1
    iget v0, p1, Landroidx/media3/exoplayer/hls/i;->o:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    return v2

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/e;->e:[Landroid/net/Uri;

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/e;->h:Landroidx/media3/common/f0;

    .line 11
    .line 12
    iget-object v3, p1, Lg2/e;->d:Landroidx/media3/common/r;

    .line 13
    .line 14
    invoke-virtual {v1, v3}, Landroidx/media3/common/f0;->b(Landroidx/media3/common/r;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    aget-object v0, v0, v1

    .line 19
    .line 20
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/e;->g:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-interface {v1, v0, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->i(Landroid/net/Uri;Z)Landroidx/media3/exoplayer/hls/playlist/c;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroidx/media3/exoplayer/hls/playlist/c;

    .line 32
    .line 33
    iget-wide v4, p1, Lg2/m;->j:J

    .line 34
    .line 35
    iget-wide v6, v0, Landroidx/media3/exoplayer/hls/playlist/c;->k:J

    .line 36
    .line 37
    sub-long/2addr v4, v6

    .line 38
    long-to-int v1, v4

    .line 39
    if-gez v1, :cond_1

    .line 40
    .line 41
    return v2

    .line 42
    :cond_1
    iget-object v4, v0, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-ge v1, v4, :cond_2

    .line 49
    .line 50
    iget-object v4, v0, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    .line 51
    .line 52
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Landroidx/media3/exoplayer/hls/playlist/c$f;

    .line 57
    .line 58
    iget-object v1, v1, Landroidx/media3/exoplayer/hls/playlist/c$f;->m:Ljava/util/List;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->s:Ljava/util/List;

    .line 62
    .line 63
    :goto_0
    iget v4, p1, Landroidx/media3/exoplayer/hls/i;->o:I

    .line 64
    .line 65
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    const/4 v6, 0x2

    .line 70
    if-lt v4, v5, :cond_3

    .line 71
    .line 72
    return v6

    .line 73
    :cond_3
    iget v4, p1, Landroidx/media3/exoplayer/hls/i;->o:I

    .line 74
    .line 75
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Landroidx/media3/exoplayer/hls/playlist/c$d;

    .line 80
    .line 81
    iget-boolean v4, v1, Landroidx/media3/exoplayer/hls/playlist/c$d;->m:Z

    .line 82
    .line 83
    if-eqz v4, :cond_4

    .line 84
    .line 85
    return v3

    .line 86
    :cond_4
    iget-object v0, v0, Lb2/d;->a:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v1, v1, Landroidx/media3/exoplayer/hls/playlist/c$g;->a:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {v0, v1}, Landroidx/media3/common/util/r0;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget-object p1, p1, Lg2/e;->b:Lw1/h;

    .line 99
    .line 100
    iget-object p1, p1, Lw1/h;->a:Landroid/net/Uri;

    .line 101
    .line 102
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-eqz p1, :cond_5

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_5
    move v2, v6

    .line 110
    :goto_1
    return v2
.end method

.method public f(Landroidx/media3/exoplayer/v2;JLjava/util/List;ZLandroidx/media3/exoplayer/hls/e$b;)V
    .locals 34

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-wide/from16 v9, p2

    .line 4
    .line 5
    move-object/from16 v11, p6

    .line 6
    .line 7
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v15, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static/range {p4 .. p4}, Lcom/google/common/collect/g3;->g(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroidx/media3/exoplayer/hls/i;

    .line 20
    .line 21
    move-object v15, v0

    .line 22
    :goto_0
    if-nez v15, :cond_1

    .line 23
    .line 24
    move-object/from16 v0, p1

    .line 25
    .line 26
    const/4 v14, -0x1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    iget-object v0, v8, Landroidx/media3/exoplayer/hls/e;->h:Landroidx/media3/common/f0;

    .line 29
    .line 30
    iget-object v1, v15, Lg2/e;->d:Landroidx/media3/common/r;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroidx/media3/common/f0;->b(Landroidx/media3/common/r;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    move v14, v0

    .line 37
    move-object/from16 v0, p1

    .line 38
    .line 39
    :goto_1
    iget-wide v0, v0, Landroidx/media3/exoplayer/v2;->a:J

    .line 40
    .line 41
    sub-long v2, v9, v0

    .line 42
    .line 43
    invoke-direct {v8, v0, v1}, Landroidx/media3/exoplayer/hls/e;->u(J)J

    .line 44
    .line 45
    .line 46
    move-result-wide v4

    .line 47
    if-eqz v15, :cond_2

    .line 48
    .line 49
    iget-boolean v6, v8, Landroidx/media3/exoplayer/hls/e;->q:Z

    .line 50
    .line 51
    if-nez v6, :cond_2

    .line 52
    .line 53
    invoke-virtual {v15}, Lg2/e;->b()J

    .line 54
    .line 55
    .line 56
    move-result-wide v6

    .line 57
    sub-long/2addr v2, v6

    .line 58
    const-wide/16 v12, 0x0

    .line 59
    .line 60
    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 61
    .line 62
    .line 63
    move-result-wide v2

    .line 64
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    cmp-long v16, v4, v16

    .line 70
    .line 71
    if-eqz v16, :cond_2

    .line 72
    .line 73
    sub-long/2addr v4, v6

    .line 74
    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 75
    .line 76
    .line 77
    move-result-wide v4

    .line 78
    :cond_2
    move-wide/from16 v19, v2

    .line 79
    .line 80
    move-wide/from16 v21, v4

    .line 81
    .line 82
    invoke-virtual {v8, v15, v9, v10}, Landroidx/media3/exoplayer/hls/e;->a(Landroidx/media3/exoplayer/hls/i;J)[Lg2/n;

    .line 83
    .line 84
    .line 85
    move-result-object v24

    .line 86
    iget-object v2, v8, Landroidx/media3/exoplayer/hls/e;->r:Li2/z;

    .line 87
    .line 88
    move-object/from16 v16, v2

    .line 89
    .line 90
    move-wide/from16 v17, v0

    .line 91
    .line 92
    move-object/from16 v23, p4

    .line 93
    .line 94
    invoke-interface/range {v16 .. v24}, Li2/z;->f(JJJLjava/util/List;[Lg2/n;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, v8, Landroidx/media3/exoplayer/hls/e;->r:Li2/z;

    .line 98
    .line 99
    invoke-interface {v0}, Li2/z;->getSelectedIndexInTrackGroup()I

    .line 100
    .line 101
    .line 102
    move-result v12

    .line 103
    const/4 v6, 0x1

    .line 104
    if-eq v14, v12, :cond_3

    .line 105
    .line 106
    move/from16 v16, v6

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_3
    const/16 v16, 0x0

    .line 110
    .line 111
    :goto_2
    iget-object v0, v8, Landroidx/media3/exoplayer/hls/e;->e:[Landroid/net/Uri;

    .line 112
    .line 113
    aget-object v7, v0, v12

    .line 114
    .line 115
    iget-object v0, v8, Landroidx/media3/exoplayer/hls/e;->g:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 116
    .line 117
    invoke-interface {v0, v7}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->e(Landroid/net/Uri;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-nez v0, :cond_4

    .line 122
    .line 123
    iput-object v7, v11, Landroidx/media3/exoplayer/hls/e$b;->c:Landroid/net/Uri;

    .line 124
    .line 125
    iget-boolean v0, v8, Landroidx/media3/exoplayer/hls/e;->t:Z

    .line 126
    .line 127
    iget-object v1, v8, Landroidx/media3/exoplayer/hls/e;->p:Landroid/net/Uri;

    .line 128
    .line 129
    invoke-virtual {v7, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    and-int/2addr v0, v1

    .line 134
    iput-boolean v0, v8, Landroidx/media3/exoplayer/hls/e;->t:Z

    .line 135
    .line 136
    iput-object v7, v8, Landroidx/media3/exoplayer/hls/e;->p:Landroid/net/Uri;

    .line 137
    .line 138
    return-void

    .line 139
    :cond_4
    iget-object v0, v8, Landroidx/media3/exoplayer/hls/e;->g:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 140
    .line 141
    invoke-interface {v0, v7, v6}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->i(Landroid/net/Uri;Z)Landroidx/media3/exoplayer/hls/playlist/c;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    invoke-static {v4}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    iget-boolean v0, v4, Lb2/d;->c:Z

    .line 149
    .line 150
    iput-boolean v0, v8, Landroidx/media3/exoplayer/hls/e;->q:Z

    .line 151
    .line 152
    invoke-direct {v8, v4}, Landroidx/media3/exoplayer/hls/e;->y(Landroidx/media3/exoplayer/hls/playlist/c;)V

    .line 153
    .line 154
    .line 155
    iget-wide v0, v4, Landroidx/media3/exoplayer/hls/playlist/c;->h:J

    .line 156
    .line 157
    iget-object v2, v8, Landroidx/media3/exoplayer/hls/e;->g:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 158
    .line 159
    invoke-interface {v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->b()J

    .line 160
    .line 161
    .line 162
    move-result-wide v2

    .line 163
    sub-long v17, v0, v2

    .line 164
    .line 165
    move-object/from16 v0, p0

    .line 166
    .line 167
    move-object v1, v15

    .line 168
    move/from16 v2, v16

    .line 169
    .line 170
    move-object v3, v4

    .line 171
    move-object v13, v4

    .line 172
    move-wide/from16 v4, v17

    .line 173
    .line 174
    move v9, v6

    .line 175
    move-object v10, v7

    .line 176
    move-wide/from16 v6, p2

    .line 177
    .line 178
    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/hls/e;->g(Landroidx/media3/exoplayer/hls/i;ZLandroidx/media3/exoplayer/hls/playlist/c;JJ)Landroid/util/Pair;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v1, Ljava/lang/Long;

    .line 185
    .line 186
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 187
    .line 188
    .line 189
    move-result-wide v1

    .line 190
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast v0, Ljava/lang/Integer;

    .line 193
    .line 194
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    iget-wide v3, v13, Landroidx/media3/exoplayer/hls/playlist/c;->k:J

    .line 199
    .line 200
    cmp-long v3, v1, v3

    .line 201
    .line 202
    if-gez v3, :cond_5

    .line 203
    .line 204
    if-eqz v15, :cond_5

    .line 205
    .line 206
    if-eqz v16, :cond_5

    .line 207
    .line 208
    iget-object v0, v8, Landroidx/media3/exoplayer/hls/e;->e:[Landroid/net/Uri;

    .line 209
    .line 210
    aget-object v10, v0, v14

    .line 211
    .line 212
    iget-object v0, v8, Landroidx/media3/exoplayer/hls/e;->g:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 213
    .line 214
    invoke-interface {v0, v10, v9}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->i(Landroid/net/Uri;Z)Landroidx/media3/exoplayer/hls/playlist/c;

    .line 215
    .line 216
    .line 217
    move-result-object v12

    .line 218
    invoke-static {v12}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    iget-wide v0, v12, Landroidx/media3/exoplayer/hls/playlist/c;->h:J

    .line 222
    .line 223
    iget-object v2, v8, Landroidx/media3/exoplayer/hls/e;->g:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 224
    .line 225
    invoke-interface {v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->b()J

    .line 226
    .line 227
    .line 228
    move-result-wide v2

    .line 229
    sub-long v16, v0, v2

    .line 230
    .line 231
    const/4 v2, 0x0

    .line 232
    move-object/from16 v0, p0

    .line 233
    .line 234
    move-object v1, v15

    .line 235
    move-object v3, v12

    .line 236
    move-wide/from16 v4, v16

    .line 237
    .line 238
    move-wide/from16 v6, p2

    .line 239
    .line 240
    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/hls/e;->g(Landroidx/media3/exoplayer/hls/i;ZLandroidx/media3/exoplayer/hls/playlist/c;JJ)Landroid/util/Pair;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 245
    .line 246
    check-cast v1, Ljava/lang/Long;

    .line 247
    .line 248
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 249
    .line 250
    .line 251
    move-result-wide v1

    .line 252
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 253
    .line 254
    check-cast v0, Ljava/lang/Integer;

    .line 255
    .line 256
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    move-object v7, v12

    .line 261
    move v12, v14

    .line 262
    goto :goto_3

    .line 263
    :cond_5
    move-object v7, v13

    .line 264
    move-wide/from16 v16, v17

    .line 265
    .line 266
    :goto_3
    if-eq v12, v14, :cond_6

    .line 267
    .line 268
    const/4 v3, -0x1

    .line 269
    if-eq v14, v3, :cond_6

    .line 270
    .line 271
    iget-object v3, v8, Landroidx/media3/exoplayer/hls/e;->e:[Landroid/net/Uri;

    .line 272
    .line 273
    aget-object v3, v3, v14

    .line 274
    .line 275
    iget-object v4, v8, Landroidx/media3/exoplayer/hls/e;->g:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 276
    .line 277
    invoke-interface {v4, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->l(Landroid/net/Uri;)V

    .line 278
    .line 279
    .line 280
    :cond_6
    iget-wide v3, v7, Landroidx/media3/exoplayer/hls/playlist/c;->k:J

    .line 281
    .line 282
    cmp-long v3, v1, v3

    .line 283
    .line 284
    if-gez v3, :cond_7

    .line 285
    .line 286
    new-instance v0, Landroidx/media3/exoplayer/source/BehindLiveWindowException;

    .line 287
    .line 288
    invoke-direct {v0}, Landroidx/media3/exoplayer/source/BehindLiveWindowException;-><init>()V

    .line 289
    .line 290
    .line 291
    iput-object v0, v8, Landroidx/media3/exoplayer/hls/e;->o:Ljava/io/IOException;

    .line 292
    .line 293
    return-void

    .line 294
    :cond_7
    invoke-static {v7, v1, v2, v0}, Landroidx/media3/exoplayer/hls/e;->h(Landroidx/media3/exoplayer/hls/playlist/c;JI)Landroidx/media3/exoplayer/hls/e$e;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    if-nez v0, :cond_a

    .line 299
    .line 300
    iget-boolean v0, v7, Landroidx/media3/exoplayer/hls/playlist/c;->o:Z

    .line 301
    .line 302
    if-nez v0, :cond_8

    .line 303
    .line 304
    iput-object v10, v11, Landroidx/media3/exoplayer/hls/e$b;->c:Landroid/net/Uri;

    .line 305
    .line 306
    iget-boolean v0, v8, Landroidx/media3/exoplayer/hls/e;->t:Z

    .line 307
    .line 308
    iget-object v1, v8, Landroidx/media3/exoplayer/hls/e;->p:Landroid/net/Uri;

    .line 309
    .line 310
    invoke-virtual {v10, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    and-int/2addr v0, v1

    .line 315
    iput-boolean v0, v8, Landroidx/media3/exoplayer/hls/e;->t:Z

    .line 316
    .line 317
    iput-object v10, v8, Landroidx/media3/exoplayer/hls/e;->p:Landroid/net/Uri;

    .line 318
    .line 319
    return-void

    .line 320
    :cond_8
    if-nez p5, :cond_b

    .line 321
    .line 322
    iget-object v0, v7, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    .line 323
    .line 324
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    if-eqz v0, :cond_9

    .line 329
    .line 330
    goto :goto_4

    .line 331
    :cond_9
    new-instance v0, Landroidx/media3/exoplayer/hls/e$e;

    .line 332
    .line 333
    iget-object v1, v7, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    .line 334
    .line 335
    invoke-static {v1}, Lcom/google/common/collect/g3;->g(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    check-cast v1, Landroidx/media3/exoplayer/hls/playlist/c$g;

    .line 340
    .line 341
    iget-wide v2, v7, Landroidx/media3/exoplayer/hls/playlist/c;->k:J

    .line 342
    .line 343
    iget-object v4, v7, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    .line 344
    .line 345
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 346
    .line 347
    .line 348
    move-result v4

    .line 349
    int-to-long v4, v4

    .line 350
    add-long/2addr v2, v4

    .line 351
    const-wide/16 v4, 0x1

    .line 352
    .line 353
    sub-long/2addr v2, v4

    .line 354
    const/4 v4, -0x1

    .line 355
    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/media3/exoplayer/hls/e$e;-><init>(Landroidx/media3/exoplayer/hls/playlist/c$g;JI)V

    .line 356
    .line 357
    .line 358
    :cond_a
    const/4 v1, 0x0

    .line 359
    goto :goto_5

    .line 360
    :cond_b
    :goto_4
    iput-boolean v9, v11, Landroidx/media3/exoplayer/hls/e$b;->b:Z

    .line 361
    .line 362
    return-void

    .line 363
    :goto_5
    iput-boolean v1, v8, Landroidx/media3/exoplayer/hls/e;->t:Z

    .line 364
    .line 365
    const/4 v1, 0x0

    .line 366
    iput-object v1, v8, Landroidx/media3/exoplayer/hls/e;->p:Landroid/net/Uri;

    .line 367
    .line 368
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 369
    .line 370
    .line 371
    move-result-wide v1

    .line 372
    iput-wide v1, v8, Landroidx/media3/exoplayer/hls/e;->u:J

    .line 373
    .line 374
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/e$e;->a:Landroidx/media3/exoplayer/hls/playlist/c$g;

    .line 375
    .line 376
    iget-object v1, v1, Landroidx/media3/exoplayer/hls/playlist/c$g;->b:Landroidx/media3/exoplayer/hls/playlist/c$f;

    .line 377
    .line 378
    invoke-static {v7, v1}, Landroidx/media3/exoplayer/hls/e;->e(Landroidx/media3/exoplayer/hls/playlist/c;Landroidx/media3/exoplayer/hls/playlist/c$g;)Landroid/net/Uri;

    .line 379
    .line 380
    .line 381
    move-result-object v14

    .line 382
    const/4 v13, 0x0

    .line 383
    invoke-direct {v8, v14, v12, v9, v13}, Landroidx/media3/exoplayer/hls/e;->n(Landroid/net/Uri;IZLandroidx/media3/exoplayer/upstream/g$a;)Lg2/e;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    iput-object v1, v11, Landroidx/media3/exoplayer/hls/e$b;->a:Lg2/e;

    .line 388
    .line 389
    if-eqz v1, :cond_c

    .line 390
    .line 391
    return-void

    .line 392
    :cond_c
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/e$e;->a:Landroidx/media3/exoplayer/hls/playlist/c$g;

    .line 393
    .line 394
    invoke-static {v7, v1}, Landroidx/media3/exoplayer/hls/e;->e(Landroidx/media3/exoplayer/hls/playlist/c;Landroidx/media3/exoplayer/hls/playlist/c$g;)Landroid/net/Uri;

    .line 395
    .line 396
    .line 397
    move-result-object v9

    .line 398
    const/4 v1, 0x0

    .line 399
    invoke-direct {v8, v9, v12, v1, v13}, Landroidx/media3/exoplayer/hls/e;->n(Landroid/net/Uri;IZLandroidx/media3/exoplayer/upstream/g$a;)Lg2/e;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    iput-object v1, v11, Landroidx/media3/exoplayer/hls/e$b;->a:Lg2/e;

    .line 404
    .line 405
    if-eqz v1, :cond_d

    .line 406
    .line 407
    return-void

    .line 408
    :cond_d
    move-object v1, v15

    .line 409
    move-object v2, v10

    .line 410
    move-object v3, v7

    .line 411
    move-object v4, v0

    .line 412
    move-wide/from16 v5, v16

    .line 413
    .line 414
    invoke-static/range {v1 .. v6}, Landroidx/media3/exoplayer/hls/i;->u(Landroidx/media3/exoplayer/hls/i;Landroid/net/Uri;Landroidx/media3/exoplayer/hls/playlist/c;Landroidx/media3/exoplayer/hls/e$e;J)Z

    .line 415
    .line 416
    .line 417
    move-result v31

    .line 418
    if-eqz v31, :cond_e

    .line 419
    .line 420
    iget-boolean v1, v0, Landroidx/media3/exoplayer/hls/e$e;->d:Z

    .line 421
    .line 422
    if-eqz v1, :cond_e

    .line 423
    .line 424
    return-void

    .line 425
    :cond_e
    iget-object v1, v8, Landroidx/media3/exoplayer/hls/e;->a:Landroidx/media3/exoplayer/hls/g;

    .line 426
    .line 427
    move-object v2, v13

    .line 428
    move-object v13, v1

    .line 429
    iget-object v1, v8, Landroidx/media3/exoplayer/hls/e;->b:Landroidx/media3/datasource/a;

    .line 430
    .line 431
    move-object v3, v14

    .line 432
    move-object v14, v1

    .line 433
    iget-object v1, v8, Landroidx/media3/exoplayer/hls/e;->f:[Landroidx/media3/common/r;

    .line 434
    .line 435
    aget-object v1, v1, v12

    .line 436
    .line 437
    move-object v12, v15

    .line 438
    move-object v15, v1

    .line 439
    iget-object v1, v8, Landroidx/media3/exoplayer/hls/e;->i:Ljava/util/List;

    .line 440
    .line 441
    move-object/from16 v21, v1

    .line 442
    .line 443
    iget-object v1, v8, Landroidx/media3/exoplayer/hls/e;->r:Li2/z;

    .line 444
    .line 445
    invoke-interface {v1}, Li2/z;->getSelectionReason()I

    .line 446
    .line 447
    .line 448
    move-result v22

    .line 449
    iget-object v1, v8, Landroidx/media3/exoplayer/hls/e;->r:Li2/z;

    .line 450
    .line 451
    invoke-interface {v1}, Li2/z;->getSelectionData()Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v23

    .line 455
    iget-boolean v1, v8, Landroidx/media3/exoplayer/hls/e;->m:Z

    .line 456
    .line 457
    move/from16 v24, v1

    .line 458
    .line 459
    iget-object v1, v8, Landroidx/media3/exoplayer/hls/e;->d:Landroidx/media3/exoplayer/hls/t;

    .line 460
    .line 461
    move-object/from16 v25, v1

    .line 462
    .line 463
    iget-wide v4, v8, Landroidx/media3/exoplayer/hls/e;->l:J

    .line 464
    .line 465
    move-wide/from16 v26, v4

    .line 466
    .line 467
    iget-object v1, v8, Landroidx/media3/exoplayer/hls/e;->j:Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;

    .line 468
    .line 469
    invoke-virtual {v1, v9}, Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;->a(Landroid/net/Uri;)[B

    .line 470
    .line 471
    .line 472
    move-result-object v29

    .line 473
    iget-object v1, v8, Landroidx/media3/exoplayer/hls/e;->j:Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;

    .line 474
    .line 475
    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;->a(Landroid/net/Uri;)[B

    .line 476
    .line 477
    .line 478
    move-result-object v30

    .line 479
    iget-object v1, v8, Landroidx/media3/exoplayer/hls/e;->k:Lx1/f4;

    .line 480
    .line 481
    move-object/from16 v32, v1

    .line 482
    .line 483
    move-object/from16 v18, v7

    .line 484
    .line 485
    move-object/from16 v19, v0

    .line 486
    .line 487
    move-object/from16 v20, v10

    .line 488
    .line 489
    move-object/from16 v28, v12

    .line 490
    .line 491
    move-object/from16 v33, v2

    .line 492
    .line 493
    invoke-static/range {v13 .. v33}, Landroidx/media3/exoplayer/hls/i;->h(Landroidx/media3/exoplayer/hls/g;Landroidx/media3/datasource/a;Landroidx/media3/common/r;JLandroidx/media3/exoplayer/hls/playlist/c;Landroidx/media3/exoplayer/hls/e$e;Landroid/net/Uri;Ljava/util/List;ILjava/lang/Object;ZLandroidx/media3/exoplayer/hls/t;JLandroidx/media3/exoplayer/hls/i;[B[BZLx1/f4;Landroidx/media3/exoplayer/upstream/g$a;)Landroidx/media3/exoplayer/hls/i;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    iput-object v0, v11, Landroidx/media3/exoplayer/hls/e$b;->a:Lg2/e;

    .line 498
    .line 499
    return-void
.end method

.method public i(JLjava/util/List;)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/e;->o:Ljava/io/IOException;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/e;->r:Li2/z;

    .line 6
    .line 7
    invoke-interface {v0}, Li2/c0;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x2

    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/e;->r:Li2/z;

    .line 16
    .line 17
    invoke-interface {v0, p1, p2, p3}, Li2/z;->evaluateQueueSize(JLjava/util/List;)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1

    .line 22
    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1
.end method

.method public k()Landroidx/media3/common/f0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/e;->h:Landroidx/media3/common/f0;

    .line 2
    .line 3
    return-object v0
.end method

.method public l()Li2/z;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/e;->r:Li2/z;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/e;->q:Z

    .line 2
    .line 3
    return v0
.end method

.method public o(Lg2/e;J)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/e;->r:Li2/z;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/e;->h:Landroidx/media3/common/f0;

    .line 4
    .line 5
    iget-object p1, p1, Lg2/e;->d:Landroidx/media3/common/r;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Landroidx/media3/common/f0;->b(Landroidx/media3/common/r;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-interface {v0, p1}, Li2/c0;->indexOf(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-interface {v0, p1, p2, p3}, Li2/z;->g(IJ)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public p()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/e;->o:Ljava/io/IOException;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/e;->p:Landroid/net/Uri;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-boolean v1, p0, Landroidx/media3/exoplayer/hls/e;->t:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/e;->g:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 14
    .line 15
    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->a(Landroid/net/Uri;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void

    .line 19
    :cond_1
    throw v0
.end method

.method public q(Landroid/net/Uri;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/e;->e:[Landroid/net/Uri;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/media3/common/util/a1;->s([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public r(Lg2/e;)V
    .locals 2

    .line 1
    instance-of v0, p1, Landroidx/media3/exoplayer/hls/e$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Landroidx/media3/exoplayer/hls/e$a;

    .line 6
    .line 7
    invoke-virtual {p1}, Lg2/k;->f()[B

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Landroidx/media3/exoplayer/hls/e;->n:[B

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/e;->j:Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;

    .line 14
    .line 15
    iget-object v1, p1, Lg2/e;->b:Lw1/h;

    .line 16
    .line 17
    iget-object v1, v1, Lw1/h;->a:Landroid/net/Uri;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/media3/exoplayer/hls/e$a;->h()[B

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, [B

    .line 28
    .line 29
    invoke-virtual {v0, v1, p1}, Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;->b(Landroid/net/Uri;[B)[B

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public s(Landroid/net/Uri;J)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/e;->e:[Landroid/net/Uri;

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    const/4 v4, -0x1

    .line 7
    if-ge v1, v3, :cond_1

    .line 8
    .line 9
    aget-object v2, v2, v1

    .line 10
    .line 11
    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move v1, v4

    .line 22
    :goto_1
    const/4 v2, 0x1

    .line 23
    if-ne v1, v4, :cond_2

    .line 24
    .line 25
    return v2

    .line 26
    :cond_2
    iget-object v3, p0, Landroidx/media3/exoplayer/hls/e;->r:Li2/z;

    .line 27
    .line 28
    invoke-interface {v3, v1}, Li2/c0;->indexOf(I)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-ne v1, v4, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-boolean v3, p0, Landroidx/media3/exoplayer/hls/e;->t:Z

    .line 36
    .line 37
    iget-object v4, p0, Landroidx/media3/exoplayer/hls/e;->p:Landroid/net/Uri;

    .line 38
    .line 39
    invoke-virtual {p1, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    or-int/2addr v3, v4

    .line 44
    iput-boolean v3, p0, Landroidx/media3/exoplayer/hls/e;->t:Z

    .line 45
    .line 46
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    cmp-long v3, p2, v3

    .line 52
    .line 53
    if-eqz v3, :cond_4

    .line 54
    .line 55
    iget-object v3, p0, Landroidx/media3/exoplayer/hls/e;->r:Li2/z;

    .line 56
    .line 57
    invoke-interface {v3, v1, p2, p3}, Li2/z;->g(IJ)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_5

    .line 62
    .line 63
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/e;->g:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 64
    .line 65
    invoke-interface {v1, p1, p2, p3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->g(Landroid/net/Uri;J)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_5

    .line 70
    .line 71
    :cond_4
    move v0, v2

    .line 72
    :cond_5
    return v0
.end method

.method public t()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/e;->b()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/media3/exoplayer/hls/e;->o:Ljava/io/IOException;

    .line 6
    .line 7
    return-void
.end method

.method public v(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/exoplayer/hls/e;->m:Z

    .line 2
    .line 3
    return-void
.end method

.method public w(Li2/z;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/e;->b()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/e;->r:Li2/z;

    .line 5
    .line 6
    return-void
.end method

.method public x(JLg2/e;Ljava/util/List;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/e;->o:Ljava/io/IOException;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/e;->r:Li2/z;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2, p3, p4}, Li2/z;->h(JLg2/e;Ljava/util/List;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method
