.class final Landroidx/media3/exoplayer/hls/playlist/a$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/Loader$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/hls/playlist/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Landroidx/media3/exoplayer/upstream/Loader;

.field private final c:Landroidx/media3/datasource/a;

.field private d:Landroidx/media3/exoplayer/hls/playlist/c;

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:Z

.field private j:Ljava/io/IOException;

.field private k:Z

.field final synthetic l:Landroidx/media3/exoplayer/hls/playlist/a;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/hls/playlist/a;Landroid/net/Uri;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->l:Landroidx/media3/exoplayer/hls/playlist/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->a:Landroid/net/Uri;

    .line 7
    .line 8
    new-instance p2, Landroidx/media3/exoplayer/upstream/Loader;

    .line 9
    .line 10
    const-string v0, "DefaultHlsPlaylistTracker:MediaPlaylist"

    .line 11
    .line 12
    invoke-direct {p2, v0}, Landroidx/media3/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->b:Landroidx/media3/exoplayer/upstream/Loader;

    .line 16
    .line 17
    invoke-static {p1}, Landroidx/media3/exoplayer/hls/playlist/a;->E(Landroidx/media3/exoplayer/hls/playlist/a;)Landroidx/media3/exoplayer/hls/f;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 p2, 0x4

    .line 22
    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/hls/f;->a(I)Landroidx/media3/datasource/a;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->c:Landroidx/media3/datasource/a;

    .line 27
    .line 28
    return-void
.end method

.method public static synthetic a(Landroidx/media3/exoplayer/hls/playlist/a$c;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/hls/playlist/a$c;->n(Landroid/net/Uri;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b(Landroidx/media3/exoplayer/hls/playlist/a$c;J)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/hls/playlist/a$c;->h(J)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic c(Landroidx/media3/exoplayer/hls/playlist/a$c;Landroidx/media3/exoplayer/hls/playlist/c;Lf2/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/hls/playlist/a$c;->z(Landroidx/media3/exoplayer/hls/playlist/c;Lf2/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic d(Landroidx/media3/exoplayer/hls/playlist/a$c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->h:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic e(Landroidx/media3/exoplayer/hls/playlist/a$c;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->a:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Landroidx/media3/exoplayer/hls/playlist/a$c;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/hls/playlist/a$c;->t(Landroid/net/Uri;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic g(Landroidx/media3/exoplayer/hls/playlist/a$c;)Landroidx/media3/exoplayer/hls/playlist/c;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->d:Landroidx/media3/exoplayer/hls/playlist/c;

    .line 2
    .line 3
    return-object p0
.end method

.method private h(J)Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    add-long/2addr v0, p1

    .line 6
    iput-wide v0, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->h:J

    .line 7
    .line 8
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->a:Landroid/net/Uri;

    .line 9
    .line 10
    iget-object p2, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->l:Landroidx/media3/exoplayer/hls/playlist/a;

    .line 11
    .line 12
    invoke-static {p2}, Landroidx/media3/exoplayer/hls/playlist/a;->A(Landroidx/media3/exoplayer/hls/playlist/a;)Landroid/net/Uri;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->l:Landroidx/media3/exoplayer/hls/playlist/a;

    .line 23
    .line 24
    invoke-static {p1}, Landroidx/media3/exoplayer/hls/playlist/a;->B(Landroidx/media3/exoplayer/hls/playlist/a;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p1, 0x0

    .line 33
    :goto_0
    return p1
.end method

.method private i()Landroid/net/Uri;
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->d:Landroidx/media3/exoplayer/hls/playlist/c;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/media3/exoplayer/hls/playlist/c;->v:Landroidx/media3/exoplayer/hls/playlist/c$h;

    .line 6
    .line 7
    iget-wide v1, v0, Landroidx/media3/exoplayer/hls/playlist/c$h;->a:J

    .line 8
    .line 9
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    cmp-long v1, v1, v3

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    iget-boolean v0, v0, Landroidx/media3/exoplayer/hls/playlist/c$h;->e:Z

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->a:Landroid/net/Uri;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->d:Landroidx/media3/exoplayer/hls/playlist/c;

    .line 30
    .line 31
    iget-object v2, v1, Landroidx/media3/exoplayer/hls/playlist/c;->v:Landroidx/media3/exoplayer/hls/playlist/c$h;

    .line 32
    .line 33
    iget-boolean v2, v2, Landroidx/media3/exoplayer/hls/playlist/c$h;->e:Z

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    iget-wide v5, v1, Landroidx/media3/exoplayer/hls/playlist/c;->k:J

    .line 38
    .line 39
    iget-object v1, v1, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    int-to-long v1, v1

    .line 46
    add-long/2addr v5, v1

    .line 47
    const-string v1, "_HLS_msn"

    .line 48
    .line 49
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->d:Landroidx/media3/exoplayer/hls/playlist/c;

    .line 57
    .line 58
    iget-wide v5, v1, Landroidx/media3/exoplayer/hls/playlist/c;->n:J

    .line 59
    .line 60
    cmp-long v2, v5, v3

    .line 61
    .line 62
    if-eqz v2, :cond_2

    .line 63
    .line 64
    iget-object v1, v1, Landroidx/media3/exoplayer/hls/playlist/c;->s:Ljava/util/List;

    .line 65
    .line 66
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-nez v5, :cond_1

    .line 75
    .line 76
    invoke-static {v1}, Lcom/google/common/collect/g3;->g(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Landroidx/media3/exoplayer/hls/playlist/c$d;

    .line 81
    .line 82
    iget-boolean v1, v1, Landroidx/media3/exoplayer/hls/playlist/c$d;->m:Z

    .line 83
    .line 84
    if-eqz v1, :cond_1

    .line 85
    .line 86
    add-int/lit8 v2, v2, -0x1

    .line 87
    .line 88
    :cond_1
    const-string v1, "_HLS_part"

    .line 89
    .line 90
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 95
    .line 96
    .line 97
    :cond_2
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->d:Landroidx/media3/exoplayer/hls/playlist/c;

    .line 98
    .line 99
    iget-object v1, v1, Landroidx/media3/exoplayer/hls/playlist/c;->v:Landroidx/media3/exoplayer/hls/playlist/c$h;

    .line 100
    .line 101
    iget-wide v5, v1, Landroidx/media3/exoplayer/hls/playlist/c$h;->a:J

    .line 102
    .line 103
    cmp-long v2, v5, v3

    .line 104
    .line 105
    if-eqz v2, :cond_4

    .line 106
    .line 107
    iget-boolean v1, v1, Landroidx/media3/exoplayer/hls/playlist/c$h;->b:Z

    .line 108
    .line 109
    if-eqz v1, :cond_3

    .line 110
    .line 111
    const-string v1, "v2"

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_3
    const-string v1, "YES"

    .line 115
    .line 116
    :goto_0
    const-string v2, "_HLS_skip"

    .line 117
    .line 118
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 119
    .line 120
    .line 121
    :cond_4
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    return-object v0

    .line 126
    :cond_5
    :goto_1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->a:Landroid/net/Uri;

    .line 127
    .line 128
    return-object v0
.end method

.method private synthetic n(Landroid/net/Uri;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->i:Z

    .line 3
    .line 4
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/hls/playlist/a$c;->s(Landroid/net/Uri;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private s(Landroid/net/Uri;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->l:Landroidx/media3/exoplayer/hls/playlist/a;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/a;->u(Landroidx/media3/exoplayer/hls/playlist/a;)Lb2/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->l:Landroidx/media3/exoplayer/hls/playlist/a;

    .line 8
    .line 9
    invoke-static {v1}, Landroidx/media3/exoplayer/hls/playlist/a;->t(Landroidx/media3/exoplayer/hls/playlist/a;)Landroidx/media3/exoplayer/hls/playlist/d;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->d:Landroidx/media3/exoplayer/hls/playlist/c;

    .line 14
    .line 15
    invoke-interface {v0, v1, v2}, Lb2/e;->b(Landroidx/media3/exoplayer/hls/playlist/d;Landroidx/media3/exoplayer/hls/playlist/c;)Landroidx/media3/exoplayer/upstream/q$a;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lw1/h$b;

    .line 20
    .line 21
    invoke-direct {v1}, Lw1/h$b;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Lw1/h$b;->i(Landroid/net/Uri;)Lw1/h$b;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-virtual {p1, v1}, Lw1/h$b;->b(I)Lw1/h$b;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lw1/h$b;->a()Lw1/h;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->l:Landroidx/media3/exoplayer/hls/playlist/a;

    .line 38
    .line 39
    invoke-static {v1}, Landroidx/media3/exoplayer/hls/playlist/a;->v(Landroidx/media3/exoplayer/hls/playlist/a;)Landroidx/media3/exoplayer/upstream/f;

    .line 40
    .line 41
    .line 42
    new-instance v1, Landroidx/media3/exoplayer/upstream/q;

    .line 43
    .line 44
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->c:Landroidx/media3/datasource/a;

    .line 45
    .line 46
    const/4 v3, 0x4

    .line 47
    invoke-direct {v1, v2, p1, v3, v0}, Landroidx/media3/exoplayer/upstream/q;-><init>(Landroidx/media3/datasource/a;Lw1/h;ILandroidx/media3/exoplayer/upstream/q$a;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->b:Landroidx/media3/exoplayer/upstream/Loader;

    .line 51
    .line 52
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->l:Landroidx/media3/exoplayer/hls/playlist/a;

    .line 53
    .line 54
    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/a;->G(Landroidx/media3/exoplayer/hls/playlist/a;)Landroidx/media3/exoplayer/upstream/m;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget v2, v1, Landroidx/media3/exoplayer/upstream/q;->c:I

    .line 59
    .line 60
    invoke-interface {v0, v2}, Landroidx/media3/exoplayer/upstream/m;->a(I)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-virtual {p1, v1, p0, v0}, Landroidx/media3/exoplayer/upstream/Loader;->m(Landroidx/media3/exoplayer/upstream/Loader$d;Landroidx/media3/exoplayer/upstream/Loader$b;I)J

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method private t(Landroid/net/Uri;)V
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->h:J

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->i:Z

    .line 6
    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->b:Landroidx/media3/exoplayer/upstream/Loader;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->i()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->b:Landroidx/media3/exoplayer/upstream/Loader;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->h()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    iget-wide v2, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->g:J

    .line 31
    .line 32
    cmp-long v2, v0, v2

    .line 33
    .line 34
    if-gez v2, :cond_1

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    iput-boolean v2, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->i:Z

    .line 38
    .line 39
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->l:Landroidx/media3/exoplayer/hls/playlist/a;

    .line 40
    .line 41
    invoke-static {v2}, Landroidx/media3/exoplayer/hls/playlist/a;->s(Landroidx/media3/exoplayer/hls/playlist/a;)Landroid/os/Handler;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    new-instance v3, Landroidx/media3/exoplayer/hls/playlist/b;

    .line 46
    .line 47
    invoke-direct {v3, p0, p1}, Landroidx/media3/exoplayer/hls/playlist/b;-><init>(Landroidx/media3/exoplayer/hls/playlist/a$c;Landroid/net/Uri;)V

    .line 48
    .line 49
    .line 50
    iget-wide v4, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->g:J

    .line 51
    .line 52
    sub-long/2addr v4, v0

    .line 53
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/hls/playlist/a$c;->s(Landroid/net/Uri;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    :goto_0
    return-void
.end method

.method private z(Landroidx/media3/exoplayer/hls/playlist/c;Lf2/i;)V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->d:Landroidx/media3/exoplayer/hls/playlist/c;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    iput-wide v1, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->e:J

    .line 8
    .line 9
    iget-object v3, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->l:Landroidx/media3/exoplayer/hls/playlist/a;

    .line 10
    .line 11
    invoke-static {v3, v0, p1}, Landroidx/media3/exoplayer/hls/playlist/a;->x(Landroidx/media3/exoplayer/hls/playlist/a;Landroidx/media3/exoplayer/hls/playlist/c;Landroidx/media3/exoplayer/hls/playlist/c;)Landroidx/media3/exoplayer/hls/playlist/c;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    iput-object v3, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->d:Landroidx/media3/exoplayer/hls/playlist/c;

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    if-eq v3, v0, :cond_0

    .line 19
    .line 20
    iput-object v4, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->j:Ljava/io/IOException;

    .line 21
    .line 22
    iput-wide v1, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->f:J

    .line 23
    .line 24
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->l:Landroidx/media3/exoplayer/hls/playlist/a;

    .line 25
    .line 26
    iget-object v4, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->a:Landroid/net/Uri;

    .line 27
    .line 28
    invoke-static {p1, v4, v3}, Landroidx/media3/exoplayer/hls/playlist/a;->y(Landroidx/media3/exoplayer/hls/playlist/a;Landroid/net/Uri;Landroidx/media3/exoplayer/hls/playlist/c;)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    iget-boolean v3, v3, Landroidx/media3/exoplayer/hls/playlist/c;->o:Z

    .line 33
    .line 34
    if-nez v3, :cond_3

    .line 35
    .line 36
    iget-wide v5, p1, Landroidx/media3/exoplayer/hls/playlist/c;->k:J

    .line 37
    .line 38
    iget-object p1, p1, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    int-to-long v7, p1

    .line 45
    add-long/2addr v5, v7

    .line 46
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->d:Landroidx/media3/exoplayer/hls/playlist/c;

    .line 47
    .line 48
    iget-wide v7, p1, Landroidx/media3/exoplayer/hls/playlist/c;->k:J

    .line 49
    .line 50
    cmp-long v3, v5, v7

    .line 51
    .line 52
    const/4 v5, 0x1

    .line 53
    if-gez v3, :cond_1

    .line 54
    .line 55
    new-instance v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistResetException;

    .line 56
    .line 57
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->a:Landroid/net/Uri;

    .line 58
    .line 59
    invoke-direct {v4, p1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistResetException;-><init>(Landroid/net/Uri;)V

    .line 60
    .line 61
    .line 62
    move v3, v5

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    iget-wide v6, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->f:J

    .line 65
    .line 66
    sub-long v6, v1, v6

    .line 67
    .line 68
    long-to-double v6, v6

    .line 69
    iget-wide v8, p1, Landroidx/media3/exoplayer/hls/playlist/c;->m:J

    .line 70
    .line 71
    invoke-static {v8, v9}, Landroidx/media3/common/util/a1;->y1(J)J

    .line 72
    .line 73
    .line 74
    move-result-wide v8

    .line 75
    long-to-double v8, v8

    .line 76
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->l:Landroidx/media3/exoplayer/hls/playlist/a;

    .line 77
    .line 78
    invoke-static {p1}, Landroidx/media3/exoplayer/hls/playlist/a;->z(Landroidx/media3/exoplayer/hls/playlist/a;)D

    .line 79
    .line 80
    .line 81
    move-result-wide v10

    .line 82
    mul-double/2addr v8, v10

    .line 83
    cmpl-double p1, v6, v8

    .line 84
    .line 85
    const/4 v3, 0x0

    .line 86
    if-lez p1, :cond_2

    .line 87
    .line 88
    new-instance v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistStuckException;

    .line 89
    .line 90
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->a:Landroid/net/Uri;

    .line 91
    .line 92
    invoke-direct {v4, p1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistStuckException;-><init>(Landroid/net/Uri;)V

    .line 93
    .line 94
    .line 95
    :cond_2
    :goto_0
    if-eqz v4, :cond_3

    .line 96
    .line 97
    iput-object v4, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->j:Ljava/io/IOException;

    .line 98
    .line 99
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->l:Landroidx/media3/exoplayer/hls/playlist/a;

    .line 100
    .line 101
    iget-object v6, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->a:Landroid/net/Uri;

    .line 102
    .line 103
    new-instance v7, Landroidx/media3/exoplayer/upstream/m$c;

    .line 104
    .line 105
    new-instance v8, Lf2/j;

    .line 106
    .line 107
    const/4 v9, 0x4

    .line 108
    invoke-direct {v8, v9}, Lf2/j;-><init>(I)V

    .line 109
    .line 110
    .line 111
    invoke-direct {v7, p2, v8, v4, v5}, Landroidx/media3/exoplayer/upstream/m$c;-><init>(Lf2/i;Lf2/j;Ljava/io/IOException;I)V

    .line 112
    .line 113
    .line 114
    invoke-static {p1, v6, v7, v3}, Landroidx/media3/exoplayer/hls/playlist/a;->r(Landroidx/media3/exoplayer/hls/playlist/a;Landroid/net/Uri;Landroidx/media3/exoplayer/upstream/m$c;Z)Z

    .line 115
    .line 116
    .line 117
    :cond_3
    :goto_1
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->d:Landroidx/media3/exoplayer/hls/playlist/c;

    .line 118
    .line 119
    iget-object v3, p1, Landroidx/media3/exoplayer/hls/playlist/c;->v:Landroidx/media3/exoplayer/hls/playlist/c$h;

    .line 120
    .line 121
    iget-boolean v3, v3, Landroidx/media3/exoplayer/hls/playlist/c$h;->e:Z

    .line 122
    .line 123
    if-nez v3, :cond_5

    .line 124
    .line 125
    if-eq p1, v0, :cond_4

    .line 126
    .line 127
    iget-wide v3, p1, Landroidx/media3/exoplayer/hls/playlist/c;->m:J

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_4
    iget-wide v3, p1, Landroidx/media3/exoplayer/hls/playlist/c;->m:J

    .line 131
    .line 132
    const-wide/16 v5, 0x2

    .line 133
    .line 134
    div-long/2addr v3, v5

    .line 135
    goto :goto_2

    .line 136
    :cond_5
    const-wide/16 v3, 0x0

    .line 137
    .line 138
    :goto_2
    invoke-static {v3, v4}, Landroidx/media3/common/util/a1;->y1(J)J

    .line 139
    .line 140
    .line 141
    move-result-wide v3

    .line 142
    add-long/2addr v1, v3

    .line 143
    iget-wide p1, p2, Lf2/i;->f:J

    .line 144
    .line 145
    sub-long/2addr v1, p1

    .line 146
    iput-wide v1, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->g:J

    .line 147
    .line 148
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->d:Landroidx/media3/exoplayer/hls/playlist/c;

    .line 149
    .line 150
    iget-boolean p1, p1, Landroidx/media3/exoplayer/hls/playlist/c;->o:Z

    .line 151
    .line 152
    if-nez p1, :cond_7

    .line 153
    .line 154
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->a:Landroid/net/Uri;

    .line 155
    .line 156
    iget-object p2, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->l:Landroidx/media3/exoplayer/hls/playlist/a;

    .line 157
    .line 158
    invoke-static {p2}, Landroidx/media3/exoplayer/hls/playlist/a;->A(Landroidx/media3/exoplayer/hls/playlist/a;)Landroid/net/Uri;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    if-nez p1, :cond_6

    .line 167
    .line 168
    iget-boolean p1, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->k:Z

    .line 169
    .line 170
    if-eqz p1, :cond_7

    .line 171
    .line 172
    :cond_6
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/playlist/a$c;->i()Landroid/net/Uri;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/hls/playlist/a$c;->t(Landroid/net/Uri;)V

    .line 177
    .line 178
    .line 179
    :cond_7
    return-void
.end method


# virtual methods
.method public A()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->b:Landroidx/media3/exoplayer/upstream/Loader;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->k()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public B(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->k:Z

    .line 2
    .line 3
    return-void
.end method

.method public j()Landroidx/media3/exoplayer/hls/playlist/c;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->d:Landroidx/media3/exoplayer/hls/playlist/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic k(Landroidx/media3/exoplayer/upstream/Loader$d;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$c;
    .locals 0

    .line 1
    check-cast p1, Landroidx/media3/exoplayer/upstream/q;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p7}, Landroidx/media3/exoplayer/hls/playlist/a$c;->x(Landroidx/media3/exoplayer/upstream/q;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->k:Z

    .line 2
    .line 3
    return v0
.end method

.method public m()Z
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->d:Landroidx/media3/exoplayer/hls/playlist/c;

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
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->d:Landroidx/media3/exoplayer/hls/playlist/c;

    .line 12
    .line 13
    iget-wide v4, v0, Landroidx/media3/exoplayer/hls/playlist/c;->u:J

    .line 14
    .line 15
    invoke-static {v4, v5}, Landroidx/media3/common/util/a1;->y1(J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v4

    .line 19
    const-wide/16 v6, 0x7530

    .line 20
    .line 21
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 22
    .line 23
    .line 24
    move-result-wide v4

    .line 25
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->d:Landroidx/media3/exoplayer/hls/playlist/c;

    .line 26
    .line 27
    iget-boolean v6, v0, Landroidx/media3/exoplayer/hls/playlist/c;->o:Z

    .line 28
    .line 29
    const/4 v7, 0x1

    .line 30
    if-nez v6, :cond_1

    .line 31
    .line 32
    iget v0, v0, Landroidx/media3/exoplayer/hls/playlist/c;->d:I

    .line 33
    .line 34
    const/4 v6, 0x2

    .line 35
    if-eq v0, v6, :cond_1

    .line 36
    .line 37
    if-eq v0, v7, :cond_1

    .line 38
    .line 39
    iget-wide v8, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->e:J

    .line 40
    .line 41
    add-long/2addr v8, v4

    .line 42
    cmp-long v0, v8, v2

    .line 43
    .line 44
    if-lez v0, :cond_2

    .line 45
    .line 46
    :cond_1
    move v1, v7

    .line 47
    :cond_2
    return v1
.end method

.method public bridge synthetic o(Landroidx/media3/exoplayer/upstream/Loader$d;JJI)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/media3/exoplayer/upstream/q;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p6}, Landroidx/media3/exoplayer/hls/playlist/a$c;->y(Landroidx/media3/exoplayer/upstream/q;JJI)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic p(Landroidx/media3/exoplayer/upstream/Loader$d;JJ)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/media3/exoplayer/upstream/q;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Landroidx/media3/exoplayer/hls/playlist/a$c;->w(Landroidx/media3/exoplayer/upstream/q;JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic q(Landroidx/media3/exoplayer/upstream/Loader$d;JJZ)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/media3/exoplayer/upstream/q;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p6}, Landroidx/media3/exoplayer/hls/playlist/a$c;->v(Landroidx/media3/exoplayer/upstream/q;JJZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public r(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/playlist/a$c;->i()Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->a:Landroid/net/Uri;

    .line 9
    .line 10
    :goto_0
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/hls/playlist/a$c;->t(Landroid/net/Uri;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public u()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->b:Landroidx/media3/exoplayer/upstream/Loader;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->maybeThrowError()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a$c;->j:Ljava/io/IOException;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    throw v0
.end method

.method public v(Landroidx/media3/exoplayer/upstream/q;JJZ)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    new-instance v14, Lf2/i;

    .line 5
    .line 6
    iget-wide v3, v1, Landroidx/media3/exoplayer/upstream/q;->a:J

    .line 7
    .line 8
    iget-object v5, v1, Landroidx/media3/exoplayer/upstream/q;->b:Lw1/h;

    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/upstream/q;->d()Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object v6

    .line 14
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/upstream/q;->b()Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object v7

    .line 18
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/upstream/q;->a()J

    .line 19
    .line 20
    .line 21
    move-result-wide v12

    .line 22
    move-object v2, v14

    .line 23
    move-wide/from16 v8, p2

    .line 24
    .line 25
    move-wide/from16 v10, p4

    .line 26
    .line 27
    invoke-direct/range {v2 .. v13}, Lf2/i;-><init>(JLw1/h;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 28
    .line 29
    .line 30
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/playlist/a$c;->l:Landroidx/media3/exoplayer/hls/playlist/a;

    .line 31
    .line 32
    invoke-static {v2}, Landroidx/media3/exoplayer/hls/playlist/a;->G(Landroidx/media3/exoplayer/hls/playlist/a;)Landroidx/media3/exoplayer/upstream/m;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget-wide v3, v1, Landroidx/media3/exoplayer/upstream/q;->a:J

    .line 37
    .line 38
    invoke-interface {v2, v3, v4}, Landroidx/media3/exoplayer/upstream/m;->b(J)V

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/a$c;->l:Landroidx/media3/exoplayer/hls/playlist/a;

    .line 42
    .line 43
    invoke-static {v1}, Landroidx/media3/exoplayer/hls/playlist/a;->F(Landroidx/media3/exoplayer/hls/playlist/a;)Landroidx/media3/exoplayer/source/s$a;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const/4 v2, 0x4

    .line 48
    invoke-virtual {v1, v14, v2}, Landroidx/media3/exoplayer/source/s$a;->s(Lf2/i;I)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public w(Landroidx/media3/exoplayer/upstream/q;JJ)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/upstream/q;->c()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Lb2/d;

    .line 10
    .line 11
    new-instance v15, Lf2/i;

    .line 12
    .line 13
    iget-wide v4, v1, Landroidx/media3/exoplayer/upstream/q;->a:J

    .line 14
    .line 15
    iget-object v6, v1, Landroidx/media3/exoplayer/upstream/q;->b:Lw1/h;

    .line 16
    .line 17
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/upstream/q;->d()Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/upstream/q;->b()Ljava/util/Map;

    .line 22
    .line 23
    .line 24
    move-result-object v8

    .line 25
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/upstream/q;->a()J

    .line 26
    .line 27
    .line 28
    move-result-wide v13

    .line 29
    move-object v3, v15

    .line 30
    move-wide/from16 v9, p2

    .line 31
    .line 32
    move-wide/from16 v11, p4

    .line 33
    .line 34
    invoke-direct/range {v3 .. v14}, Lf2/i;-><init>(JLw1/h;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 35
    .line 36
    .line 37
    instance-of v3, v2, Landroidx/media3/exoplayer/hls/playlist/c;

    .line 38
    .line 39
    const/4 v4, 0x4

    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    check-cast v2, Landroidx/media3/exoplayer/hls/playlist/c;

    .line 43
    .line 44
    invoke-direct {v0, v2, v15}, Landroidx/media3/exoplayer/hls/playlist/a$c;->z(Landroidx/media3/exoplayer/hls/playlist/c;Lf2/i;)V

    .line 45
    .line 46
    .line 47
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/playlist/a$c;->l:Landroidx/media3/exoplayer/hls/playlist/a;

    .line 48
    .line 49
    invoke-static {v2}, Landroidx/media3/exoplayer/hls/playlist/a;->F(Landroidx/media3/exoplayer/hls/playlist/a;)Landroidx/media3/exoplayer/source/s$a;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2, v15, v4}, Landroidx/media3/exoplayer/source/s$a;->v(Lf2/i;I)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const-string v2, "Loaded playlist has unexpected type."

    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    invoke-static {v2, v3}, Landroidx/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    iput-object v2, v0, Landroidx/media3/exoplayer/hls/playlist/a$c;->j:Ljava/io/IOException;

    .line 65
    .line 66
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/playlist/a$c;->l:Landroidx/media3/exoplayer/hls/playlist/a;

    .line 67
    .line 68
    invoke-static {v2}, Landroidx/media3/exoplayer/hls/playlist/a;->F(Landroidx/media3/exoplayer/hls/playlist/a;)Landroidx/media3/exoplayer/source/s$a;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    iget-object v3, v0, Landroidx/media3/exoplayer/hls/playlist/a$c;->j:Ljava/io/IOException;

    .line 73
    .line 74
    const/4 v5, 0x1

    .line 75
    invoke-virtual {v2, v15, v4, v3, v5}, Landroidx/media3/exoplayer/source/s$a;->z(Lf2/i;ILjava/io/IOException;Z)V

    .line 76
    .line 77
    .line 78
    :goto_0
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/playlist/a$c;->l:Landroidx/media3/exoplayer/hls/playlist/a;

    .line 79
    .line 80
    invoke-static {v2}, Landroidx/media3/exoplayer/hls/playlist/a;->G(Landroidx/media3/exoplayer/hls/playlist/a;)Landroidx/media3/exoplayer/upstream/m;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    iget-wide v3, v1, Landroidx/media3/exoplayer/upstream/q;->a:J

    .line 85
    .line 86
    invoke-interface {v2, v3, v4}, Landroidx/media3/exoplayer/upstream/m;->b(J)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public x(Landroidx/media3/exoplayer/upstream/q;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$c;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p6

    .line 6
    .line 7
    new-instance v15, Lf2/i;

    .line 8
    .line 9
    iget-wide v4, v1, Landroidx/media3/exoplayer/upstream/q;->a:J

    .line 10
    .line 11
    iget-object v6, v1, Landroidx/media3/exoplayer/upstream/q;->b:Lw1/h;

    .line 12
    .line 13
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/upstream/q;->d()Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object v7

    .line 17
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/upstream/q;->b()Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object v8

    .line 21
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/upstream/q;->a()J

    .line 22
    .line 23
    .line 24
    move-result-wide v13

    .line 25
    move-object v3, v15

    .line 26
    move-wide/from16 v9, p2

    .line 27
    .line 28
    move-wide/from16 v11, p4

    .line 29
    .line 30
    invoke-direct/range {v3 .. v14}, Lf2/i;-><init>(JLw1/h;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 31
    .line 32
    .line 33
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/upstream/q;->d()Landroid/net/Uri;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const-string v4, "_HLS_msn"

    .line 38
    .line 39
    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const/4 v4, 0x1

    .line 44
    const/4 v5, 0x0

    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    move v3, v4

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move v3, v5

    .line 50
    :goto_0
    instance-of v6, v2, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$DeltaUpdateException;

    .line 51
    .line 52
    if-nez v3, :cond_1

    .line 53
    .line 54
    if-eqz v6, :cond_3

    .line 55
    .line 56
    :cond_1
    instance-of v3, v2, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    .line 57
    .line 58
    if-eqz v3, :cond_2

    .line 59
    .line 60
    move-object v3, v2

    .line 61
    check-cast v3, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    .line 62
    .line 63
    iget v3, v3, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    const v3, 0x7fffffff

    .line 67
    .line 68
    .line 69
    :goto_1
    if-nez v6, :cond_7

    .line 70
    .line 71
    const/16 v6, 0x190

    .line 72
    .line 73
    if-eq v3, v6, :cond_7

    .line 74
    .line 75
    const/16 v6, 0x1f7

    .line 76
    .line 77
    if-ne v3, v6, :cond_3

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_3
    new-instance v3, Lf2/j;

    .line 81
    .line 82
    iget v4, v1, Landroidx/media3/exoplayer/upstream/q;->c:I

    .line 83
    .line 84
    invoke-direct {v3, v4}, Lf2/j;-><init>(I)V

    .line 85
    .line 86
    .line 87
    new-instance v4, Landroidx/media3/exoplayer/upstream/m$c;

    .line 88
    .line 89
    move/from16 v6, p7

    .line 90
    .line 91
    invoke-direct {v4, v15, v3, v2, v6}, Landroidx/media3/exoplayer/upstream/m$c;-><init>(Lf2/i;Lf2/j;Ljava/io/IOException;I)V

    .line 92
    .line 93
    .line 94
    iget-object v3, v0, Landroidx/media3/exoplayer/hls/playlist/a$c;->l:Landroidx/media3/exoplayer/hls/playlist/a;

    .line 95
    .line 96
    iget-object v6, v0, Landroidx/media3/exoplayer/hls/playlist/a$c;->a:Landroid/net/Uri;

    .line 97
    .line 98
    invoke-static {v3, v6, v4, v5}, Landroidx/media3/exoplayer/hls/playlist/a;->r(Landroidx/media3/exoplayer/hls/playlist/a;Landroid/net/Uri;Landroidx/media3/exoplayer/upstream/m$c;Z)Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-eqz v3, :cond_5

    .line 103
    .line 104
    iget-object v3, v0, Landroidx/media3/exoplayer/hls/playlist/a$c;->l:Landroidx/media3/exoplayer/hls/playlist/a;

    .line 105
    .line 106
    invoke-static {v3}, Landroidx/media3/exoplayer/hls/playlist/a;->G(Landroidx/media3/exoplayer/hls/playlist/a;)Landroidx/media3/exoplayer/upstream/m;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-interface {v3, v4}, Landroidx/media3/exoplayer/upstream/m;->c(Landroidx/media3/exoplayer/upstream/m$c;)J

    .line 111
    .line 112
    .line 113
    move-result-wide v3

    .line 114
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    cmp-long v6, v3, v6

    .line 120
    .line 121
    if-eqz v6, :cond_4

    .line 122
    .line 123
    invoke-static {v5, v3, v4}, Landroidx/media3/exoplayer/upstream/Loader;->g(ZJ)Landroidx/media3/exoplayer/upstream/Loader$c;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    goto :goto_2

    .line 128
    :cond_4
    sget-object v3, Landroidx/media3/exoplayer/upstream/Loader;->g:Landroidx/media3/exoplayer/upstream/Loader$c;

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_5
    sget-object v3, Landroidx/media3/exoplayer/upstream/Loader;->f:Landroidx/media3/exoplayer/upstream/Loader$c;

    .line 132
    .line 133
    :goto_2
    invoke-virtual {v3}, Landroidx/media3/exoplayer/upstream/Loader$c;->c()Z

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    xor-int/lit8 v5, v4, 0x1

    .line 138
    .line 139
    iget-object v6, v0, Landroidx/media3/exoplayer/hls/playlist/a$c;->l:Landroidx/media3/exoplayer/hls/playlist/a;

    .line 140
    .line 141
    invoke-static {v6}, Landroidx/media3/exoplayer/hls/playlist/a;->F(Landroidx/media3/exoplayer/hls/playlist/a;)Landroidx/media3/exoplayer/source/s$a;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    iget v7, v1, Landroidx/media3/exoplayer/upstream/q;->c:I

    .line 146
    .line 147
    invoke-virtual {v6, v15, v7, v2, v5}, Landroidx/media3/exoplayer/source/s$a;->z(Lf2/i;ILjava/io/IOException;Z)V

    .line 148
    .line 149
    .line 150
    if-nez v4, :cond_6

    .line 151
    .line 152
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/playlist/a$c;->l:Landroidx/media3/exoplayer/hls/playlist/a;

    .line 153
    .line 154
    invoke-static {v2}, Landroidx/media3/exoplayer/hls/playlist/a;->G(Landroidx/media3/exoplayer/hls/playlist/a;)Landroidx/media3/exoplayer/upstream/m;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    iget-wide v4, v1, Landroidx/media3/exoplayer/upstream/q;->a:J

    .line 159
    .line 160
    invoke-interface {v2, v4, v5}, Landroidx/media3/exoplayer/upstream/m;->b(J)V

    .line 161
    .line 162
    .line 163
    :cond_6
    return-object v3

    .line 164
    :cond_7
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 165
    .line 166
    .line 167
    move-result-wide v6

    .line 168
    iput-wide v6, v0, Landroidx/media3/exoplayer/hls/playlist/a$c;->g:J

    .line 169
    .line 170
    invoke-virtual {v0, v5}, Landroidx/media3/exoplayer/hls/playlist/a$c;->r(Z)V

    .line 171
    .line 172
    .line 173
    iget-object v3, v0, Landroidx/media3/exoplayer/hls/playlist/a$c;->l:Landroidx/media3/exoplayer/hls/playlist/a;

    .line 174
    .line 175
    invoke-static {v3}, Landroidx/media3/exoplayer/hls/playlist/a;->F(Landroidx/media3/exoplayer/hls/playlist/a;)Landroidx/media3/exoplayer/source/s$a;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-static {v3}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    check-cast v3, Landroidx/media3/exoplayer/source/s$a;

    .line 184
    .line 185
    iget v1, v1, Landroidx/media3/exoplayer/upstream/q;->c:I

    .line 186
    .line 187
    invoke-virtual {v3, v15, v1, v2, v4}, Landroidx/media3/exoplayer/source/s$a;->z(Lf2/i;ILjava/io/IOException;Z)V

    .line 188
    .line 189
    .line 190
    sget-object v1, Landroidx/media3/exoplayer/upstream/Loader;->f:Landroidx/media3/exoplayer/upstream/Loader$c;

    .line 191
    .line 192
    return-object v1
.end method

.method public y(Landroidx/media3/exoplayer/upstream/q;JJI)V
    .locals 21

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p6

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    new-instance v8, Lf2/i;

    .line 8
    .line 9
    iget-wide v3, v0, Landroidx/media3/exoplayer/upstream/q;->a:J

    .line 10
    .line 11
    iget-object v5, v0, Landroidx/media3/exoplayer/upstream/q;->b:Lw1/h;

    .line 12
    .line 13
    move-object v2, v8

    .line 14
    move-wide/from16 v6, p2

    .line 15
    .line 16
    invoke-direct/range {v2 .. v7}, Lf2/i;-><init>(JLw1/h;J)V

    .line 17
    .line 18
    .line 19
    :goto_0
    move-object/from16 v2, p0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    new-instance v8, Lf2/i;

    .line 23
    .line 24
    iget-wide v10, v0, Landroidx/media3/exoplayer/upstream/q;->a:J

    .line 25
    .line 26
    iget-object v12, v0, Landroidx/media3/exoplayer/upstream/q;->b:Lw1/h;

    .line 27
    .line 28
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/upstream/q;->d()Landroid/net/Uri;

    .line 29
    .line 30
    .line 31
    move-result-object v13

    .line 32
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/upstream/q;->b()Ljava/util/Map;

    .line 33
    .line 34
    .line 35
    move-result-object v14

    .line 36
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/upstream/q;->a()J

    .line 37
    .line 38
    .line 39
    move-result-wide v19

    .line 40
    move-object v9, v8

    .line 41
    move-wide/from16 v15, p2

    .line 42
    .line 43
    move-wide/from16 v17, p4

    .line 44
    .line 45
    invoke-direct/range {v9 .. v20}, Lf2/i;-><init>(JLw1/h;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :goto_1
    iget-object v3, v2, Landroidx/media3/exoplayer/hls/playlist/a$c;->l:Landroidx/media3/exoplayer/hls/playlist/a;

    .line 50
    .line 51
    invoke-static {v3}, Landroidx/media3/exoplayer/hls/playlist/a;->F(Landroidx/media3/exoplayer/hls/playlist/a;)Landroidx/media3/exoplayer/source/s$a;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    iget v0, v0, Landroidx/media3/exoplayer/upstream/q;->c:I

    .line 56
    .line 57
    invoke-virtual {v3, v8, v0, v1}, Landroidx/media3/exoplayer/source/s$a;->B(Lf2/i;II)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
