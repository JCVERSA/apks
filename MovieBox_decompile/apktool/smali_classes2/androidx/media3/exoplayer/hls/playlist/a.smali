.class public final Landroidx/media3/exoplayer/hls/playlist/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;
.implements Landroidx/media3/exoplayer/upstream/Loader$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/hls/playlist/a$c;,
        Landroidx/media3/exoplayer/hls/playlist/a$b;
    }
.end annotation


# static fields
.field public static final p:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$a;


# instance fields
.field private final a:Landroidx/media3/exoplayer/hls/f;

.field private final b:Lb2/e;

.field private final c:Landroidx/media3/exoplayer/upstream/m;

.field private final d:Ljava/util/HashMap;

.field private final e:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final f:D

.field private g:Landroidx/media3/exoplayer/source/s$a;

.field private h:Landroidx/media3/exoplayer/upstream/Loader;

.field private i:Landroid/os/Handler;

.field private j:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$c;

.field private k:Landroidx/media3/exoplayer/hls/playlist/d;

.field private l:Landroid/net/Uri;

.field private m:Landroidx/media3/exoplayer/hls/playlist/c;

.field private n:Z

.field private o:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lb2/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lb2/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/a;->p:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$a;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/hls/f;Landroidx/media3/exoplayer/upstream/m;Lb2/e;Landroidx/media3/exoplayer/upstream/f;)V
    .locals 7

    const-wide/high16 v5, 0x400c000000000000L    # 3.5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/hls/playlist/a;-><init>(Landroidx/media3/exoplayer/hls/f;Landroidx/media3/exoplayer/upstream/m;Lb2/e;Landroidx/media3/exoplayer/upstream/f;D)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/hls/f;Landroidx/media3/exoplayer/upstream/m;Lb2/e;Landroidx/media3/exoplayer/upstream/f;D)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/a;->a:Landroidx/media3/exoplayer/hls/f;

    .line 4
    iput-object p3, p0, Landroidx/media3/exoplayer/hls/playlist/a;->b:Lb2/e;

    .line 5
    iput-object p2, p0, Landroidx/media3/exoplayer/hls/playlist/a;->c:Landroidx/media3/exoplayer/upstream/m;

    .line 6
    iput-wide p5, p0, Landroidx/media3/exoplayer/hls/playlist/a;->f:D

    .line 7
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/a;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/a;->d:Ljava/util/HashMap;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    iput-wide p1, p0, Landroidx/media3/exoplayer/hls/playlist/a;->o:J

    return-void
.end method

.method static synthetic A(Landroidx/media3/exoplayer/hls/playlist/a;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->l:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic B(Landroidx/media3/exoplayer/hls/playlist/a;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/hls/playlist/a;->P()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic C(Landroidx/media3/exoplayer/hls/playlist/a;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic D(Landroidx/media3/exoplayer/hls/playlist/a;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->d:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic E(Landroidx/media3/exoplayer/hls/playlist/a;)Landroidx/media3/exoplayer/hls/f;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->a:Landroidx/media3/exoplayer/hls/f;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic F(Landroidx/media3/exoplayer/hls/playlist/a;)Landroidx/media3/exoplayer/source/s$a;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->g:Landroidx/media3/exoplayer/source/s$a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic G(Landroidx/media3/exoplayer/hls/playlist/a;)Landroidx/media3/exoplayer/upstream/m;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->c:Landroidx/media3/exoplayer/upstream/m;

    .line 2
    .line 3
    return-object p0
.end method

.method private H(Ljava/util/List;)V
    .locals 5

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    .line 8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Landroid/net/Uri;

    .line 13
    .line 14
    new-instance v3, Landroidx/media3/exoplayer/hls/playlist/a$c;

    .line 15
    .line 16
    invoke-direct {v3, p0, v2}, Landroidx/media3/exoplayer/hls/playlist/a$c;-><init>(Landroidx/media3/exoplayer/hls/playlist/a;Landroid/net/Uri;)V

    .line 17
    .line 18
    .line 19
    iget-object v4, p0, Landroidx/media3/exoplayer/hls/playlist/a;->d:Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method private static I(Landroidx/media3/exoplayer/hls/playlist/c;Landroidx/media3/exoplayer/hls/playlist/c;)Landroidx/media3/exoplayer/hls/playlist/c$f;
    .locals 4

    .line 1
    iget-wide v0, p1, Landroidx/media3/exoplayer/hls/playlist/c;->k:J

    .line 2
    .line 3
    iget-wide v2, p0, Landroidx/media3/exoplayer/hls/playlist/c;->k:J

    .line 4
    .line 5
    sub-long/2addr v0, v2

    .line 6
    long-to-int p1, v0

    .line 7
    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ge p1, v0, :cond_0

    .line 14
    .line 15
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Landroidx/media3/exoplayer/hls/playlist/c$f;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    :goto_0
    return-object p0
.end method

.method private J(Landroidx/media3/exoplayer/hls/playlist/c;Landroidx/media3/exoplayer/hls/playlist/c;)Landroidx/media3/exoplayer/hls/playlist/c;
    .locals 2

    .line 1
    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/hls/playlist/c;->e(Landroidx/media3/exoplayer/hls/playlist/c;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-boolean p2, p2, Landroidx/media3/exoplayer/hls/playlist/c;->o:Z

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/media3/exoplayer/hls/playlist/c;->c()Landroidx/media3/exoplayer/hls/playlist/c;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :cond_0
    return-object p1

    .line 16
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/hls/playlist/a;->L(Landroidx/media3/exoplayer/hls/playlist/c;Landroidx/media3/exoplayer/hls/playlist/c;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/hls/playlist/a;->K(Landroidx/media3/exoplayer/hls/playlist/c;Landroidx/media3/exoplayer/hls/playlist/c;)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-virtual {p2, v0, v1, p1}, Landroidx/media3/exoplayer/hls/playlist/c;->b(JI)Landroidx/media3/exoplayer/hls/playlist/c;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method private K(Landroidx/media3/exoplayer/hls/playlist/c;Landroidx/media3/exoplayer/hls/playlist/c;)I
    .locals 3

    .line 1
    iget-boolean v0, p2, Landroidx/media3/exoplayer/hls/playlist/c;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget p1, p2, Landroidx/media3/exoplayer/hls/playlist/c;->j:I

    .line 6
    .line 7
    return p1

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->m:Landroidx/media3/exoplayer/hls/playlist/c;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget v0, v0, Landroidx/media3/exoplayer/hls/playlist/c;->j:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    move v0, v1

    .line 17
    :goto_0
    if-nez p1, :cond_2

    .line 18
    .line 19
    return v0

    .line 20
    :cond_2
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/hls/playlist/a;->I(Landroidx/media3/exoplayer/hls/playlist/c;Landroidx/media3/exoplayer/hls/playlist/c;)Landroidx/media3/exoplayer/hls/playlist/c$f;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_3

    .line 25
    .line 26
    iget p1, p1, Landroidx/media3/exoplayer/hls/playlist/c;->j:I

    .line 27
    .line 28
    iget v0, v2, Landroidx/media3/exoplayer/hls/playlist/c$g;->d:I

    .line 29
    .line 30
    add-int/2addr p1, v0

    .line 31
    iget-object p2, p2, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    check-cast p2, Landroidx/media3/exoplayer/hls/playlist/c$f;

    .line 38
    .line 39
    iget p2, p2, Landroidx/media3/exoplayer/hls/playlist/c$g;->d:I

    .line 40
    .line 41
    sub-int/2addr p1, p2

    .line 42
    return p1

    .line 43
    :cond_3
    return v0
.end method

.method private L(Landroidx/media3/exoplayer/hls/playlist/c;Landroidx/media3/exoplayer/hls/playlist/c;)J
    .locals 8

    .line 1
    iget-boolean v0, p2, Landroidx/media3/exoplayer/hls/playlist/c;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide p1, p2, Landroidx/media3/exoplayer/hls/playlist/c;->h:J

    .line 6
    .line 7
    return-wide p1

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->m:Landroidx/media3/exoplayer/hls/playlist/c;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-wide v0, v0, Landroidx/media3/exoplayer/hls/playlist/c;->h:J

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    :goto_0
    if-nez p1, :cond_2

    .line 18
    .line 19
    return-wide v0

    .line 20
    :cond_2
    iget-object v2, p1, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/hls/playlist/a;->I(Landroidx/media3/exoplayer/hls/playlist/c;Landroidx/media3/exoplayer/hls/playlist/c;)Landroidx/media3/exoplayer/hls/playlist/c$f;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    if-eqz v3, :cond_3

    .line 31
    .line 32
    iget-wide p1, p1, Landroidx/media3/exoplayer/hls/playlist/c;->h:J

    .line 33
    .line 34
    iget-wide v0, v3, Landroidx/media3/exoplayer/hls/playlist/c$g;->e:J

    .line 35
    .line 36
    add-long/2addr p1, v0

    .line 37
    return-wide p1

    .line 38
    :cond_3
    int-to-long v2, v2

    .line 39
    iget-wide v4, p2, Landroidx/media3/exoplayer/hls/playlist/c;->k:J

    .line 40
    .line 41
    iget-wide v6, p1, Landroidx/media3/exoplayer/hls/playlist/c;->k:J

    .line 42
    .line 43
    sub-long/2addr v4, v6

    .line 44
    cmp-long p2, v2, v4

    .line 45
    .line 46
    if-nez p2, :cond_4

    .line 47
    .line 48
    invoke-virtual {p1}, Landroidx/media3/exoplayer/hls/playlist/c;->d()J

    .line 49
    .line 50
    .line 51
    move-result-wide p1

    .line 52
    return-wide p1

    .line 53
    :cond_4
    return-wide v0
.end method

.method private M(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->m:Landroidx/media3/exoplayer/hls/playlist/c;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->v:Landroidx/media3/exoplayer/hls/playlist/c$h;

    .line 6
    .line 7
    iget-boolean v1, v1, Landroidx/media3/exoplayer/hls/playlist/c$h;->e:Z

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    iget-object v0, v0, Landroidx/media3/exoplayer/hls/playlist/c;->t:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroidx/media3/exoplayer/hls/playlist/c$e;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-wide v1, v0, Landroidx/media3/exoplayer/hls/playlist/c$e;->b:J

    .line 26
    .line 27
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "_HLS_msn"

    .line 32
    .line 33
    invoke-virtual {p1, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 34
    .line 35
    .line 36
    iget v0, v0, Landroidx/media3/exoplayer/hls/playlist/c$e;->c:I

    .line 37
    .line 38
    const/4 v1, -0x1

    .line 39
    if-eq v0, v1, :cond_0

    .line 40
    .line 41
    const-string v1, "_HLS_part"

    .line 42
    .line 43
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    :cond_1
    return-object p1
.end method

.method private N(Landroid/net/Uri;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->k:Landroidx/media3/exoplayer/hls/playlist/d;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/media3/exoplayer/hls/playlist/d;->e:Ljava/util/List;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-ge v2, v3, :cond_1

    .line 12
    .line 13
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Landroidx/media3/exoplayer/hls/playlist/d$b;

    .line 18
    .line 19
    iget-object v3, v3, Landroidx/media3/exoplayer/hls/playlist/d$b;->a:Landroid/net/Uri;

    .line 20
    .line 21
    invoke-virtual {p1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    return p1

    .line 29
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return v1
.end method

.method private O(Landroid/net/Uri;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->d:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/media3/exoplayer/hls/playlist/a$c;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/media3/exoplayer/hls/playlist/a$c;->j()Landroidx/media3/exoplayer/hls/playlist/c;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1}, Landroidx/media3/exoplayer/hls/playlist/a$c;->l()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const/4 v1, 0x1

    .line 21
    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/hls/playlist/a$c;->B(Z)V

    .line 22
    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-boolean v0, v0, Landroidx/media3/exoplayer/hls/playlist/c;->o:Z

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/hls/playlist/a$c;->r(Z)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method private P()Z
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->k:Landroidx/media3/exoplayer/hls/playlist/d;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/media3/exoplayer/hls/playlist/d;->e:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    const/4 v4, 0x0

    .line 14
    move v5, v4

    .line 15
    :goto_0
    if-ge v5, v1, :cond_1

    .line 16
    .line 17
    iget-object v6, p0, Landroidx/media3/exoplayer/hls/playlist/a;->d:Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v7

    .line 23
    check-cast v7, Landroidx/media3/exoplayer/hls/playlist/d$b;

    .line 24
    .line 25
    iget-object v7, v7, Landroidx/media3/exoplayer/hls/playlist/d$b;->a:Landroid/net/Uri;

    .line 26
    .line 27
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    check-cast v6, Landroidx/media3/exoplayer/hls/playlist/a$c;

    .line 32
    .line 33
    invoke-static {v6}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    check-cast v6, Landroidx/media3/exoplayer/hls/playlist/a$c;

    .line 38
    .line 39
    invoke-static {v6}, Landroidx/media3/exoplayer/hls/playlist/a$c;->d(Landroidx/media3/exoplayer/hls/playlist/a$c;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v7

    .line 43
    cmp-long v7, v2, v7

    .line 44
    .line 45
    if-lez v7, :cond_0

    .line 46
    .line 47
    invoke-static {v6}, Landroidx/media3/exoplayer/hls/playlist/a$c;->e(Landroidx/media3/exoplayer/hls/playlist/a$c;)Landroid/net/Uri;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->l:Landroid/net/Uri;

    .line 52
    .line 53
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/hls/playlist/a;->M(Landroid/net/Uri;)Landroid/net/Uri;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v6, v0}, Landroidx/media3/exoplayer/hls/playlist/a$c;->f(Landroidx/media3/exoplayer/hls/playlist/a$c;Landroid/net/Uri;)V

    .line 58
    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    return v0

    .line 62
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    return v4
.end method

.method private Q(Landroid/net/Uri;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->l:Landroid/net/Uri;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/hls/playlist/a;->N(Landroid/net/Uri;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->m:Landroidx/media3/exoplayer/hls/playlist/c;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-boolean v0, v0, Landroidx/media3/exoplayer/hls/playlist/c;->o:Z

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/a;->l:Landroid/net/Uri;

    .line 25
    .line 26
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->d:Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroidx/media3/exoplayer/hls/playlist/a$c;

    .line 33
    .line 34
    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/a$c;->g(Landroidx/media3/exoplayer/hls/playlist/a$c;)Landroidx/media3/exoplayer/hls/playlist/c;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    iget-boolean v2, v1, Landroidx/media3/exoplayer/hls/playlist/c;->o:Z

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    iput-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/a;->m:Landroidx/media3/exoplayer/hls/playlist/c;

    .line 45
    .line 46
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/a;->j:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$c;

    .line 47
    .line 48
    invoke-interface {p1, v1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$c;->f(Landroidx/media3/exoplayer/hls/playlist/c;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/hls/playlist/a;->M(Landroid/net/Uri;)Landroid/net/Uri;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/hls/playlist/a$c;->f(Landroidx/media3/exoplayer/hls/playlist/a$c;Landroid/net/Uri;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_0
    return-void
.end method

.method private R(Landroid/net/Uri;Landroidx/media3/exoplayer/upstream/m$c;Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$b;

    .line 19
    .line 20
    invoke-interface {v2, p1, p2, p3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$b;->d(Landroid/net/Uri;Landroidx/media3/exoplayer/upstream/m$c;Z)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    xor-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    or-int/2addr v1, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return v1
.end method

.method private W(Landroid/net/Uri;Landroidx/media3/exoplayer/hls/playlist/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->l:Landroid/net/Uri;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/a;->m:Landroidx/media3/exoplayer/hls/playlist/c;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget-boolean p1, p2, Landroidx/media3/exoplayer/hls/playlist/c;->o:Z

    .line 14
    .line 15
    xor-int/lit8 p1, p1, 0x1

    .line 16
    .line 17
    iput-boolean p1, p0, Landroidx/media3/exoplayer/hls/playlist/a;->n:Z

    .line 18
    .line 19
    iget-wide v0, p2, Landroidx/media3/exoplayer/hls/playlist/c;->h:J

    .line 20
    .line 21
    iput-wide v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->o:J

    .line 22
    .line 23
    :cond_0
    iput-object p2, p0, Landroidx/media3/exoplayer/hls/playlist/a;->m:Landroidx/media3/exoplayer/hls/playlist/c;

    .line 24
    .line 25
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/a;->j:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$c;

    .line 26
    .line 27
    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$c;->f(Landroidx/media3/exoplayer/hls/playlist/c;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/a;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-eqz p2, :cond_2

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    check-cast p2, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$b;

    .line 47
    .line 48
    invoke-interface {p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$b;->c()V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    return-void
.end method

.method static synthetic r(Landroidx/media3/exoplayer/hls/playlist/a;Landroid/net/Uri;Landroidx/media3/exoplayer/upstream/m$c;Z)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/hls/playlist/a;->R(Landroid/net/Uri;Landroidx/media3/exoplayer/upstream/m$c;Z)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic s(Landroidx/media3/exoplayer/hls/playlist/a;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->i:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic t(Landroidx/media3/exoplayer/hls/playlist/a;)Landroidx/media3/exoplayer/hls/playlist/d;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->k:Landroidx/media3/exoplayer/hls/playlist/d;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic u(Landroidx/media3/exoplayer/hls/playlist/a;)Lb2/e;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->b:Lb2/e;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic v(Landroidx/media3/exoplayer/hls/playlist/a;)Landroidx/media3/exoplayer/upstream/f;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method

.method static synthetic w(Landroidx/media3/exoplayer/hls/playlist/a;)Landroidx/media3/exoplayer/hls/playlist/c;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->m:Landroidx/media3/exoplayer/hls/playlist/c;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic x(Landroidx/media3/exoplayer/hls/playlist/a;Landroidx/media3/exoplayer/hls/playlist/c;Landroidx/media3/exoplayer/hls/playlist/c;)Landroidx/media3/exoplayer/hls/playlist/c;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/hls/playlist/a;->J(Landroidx/media3/exoplayer/hls/playlist/c;Landroidx/media3/exoplayer/hls/playlist/c;)Landroidx/media3/exoplayer/hls/playlist/c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic y(Landroidx/media3/exoplayer/hls/playlist/a;Landroid/net/Uri;Landroidx/media3/exoplayer/hls/playlist/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/hls/playlist/a;->W(Landroid/net/Uri;Landroidx/media3/exoplayer/hls/playlist/c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic z(Landroidx/media3/exoplayer/hls/playlist/a;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->f:D

    .line 2
    .line 3
    return-wide v0
.end method


# virtual methods
.method public S(Landroidx/media3/exoplayer/upstream/q;JJZ)V
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
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/playlist/a;->c:Landroidx/media3/exoplayer/upstream/m;

    .line 31
    .line 32
    iget-wide v3, v1, Landroidx/media3/exoplayer/upstream/q;->a:J

    .line 33
    .line 34
    invoke-interface {v2, v3, v4}, Landroidx/media3/exoplayer/upstream/m;->b(J)V

    .line 35
    .line 36
    .line 37
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/a;->g:Landroidx/media3/exoplayer/source/s$a;

    .line 38
    .line 39
    const/4 v2, 0x4

    .line 40
    invoke-virtual {v1, v14, v2}, Landroidx/media3/exoplayer/source/s$a;->s(Lf2/i;I)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public T(Landroidx/media3/exoplayer/upstream/q;JJ)V
    .locals 19

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
    instance-of v3, v2, Landroidx/media3/exoplayer/hls/playlist/c;

    .line 12
    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    iget-object v4, v2, Lb2/d;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v4}, Landroidx/media3/exoplayer/hls/playlist/d;->d(Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/d;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v4, v2

    .line 23
    check-cast v4, Landroidx/media3/exoplayer/hls/playlist/d;

    .line 24
    .line 25
    :goto_0
    iput-object v4, v0, Landroidx/media3/exoplayer/hls/playlist/a;->k:Landroidx/media3/exoplayer/hls/playlist/d;

    .line 26
    .line 27
    iget-object v5, v4, Landroidx/media3/exoplayer/hls/playlist/d;->e:Ljava/util/List;

    .line 28
    .line 29
    const/4 v6, 0x0

    .line 30
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    check-cast v5, Landroidx/media3/exoplayer/hls/playlist/d$b;

    .line 35
    .line 36
    iget-object v5, v5, Landroidx/media3/exoplayer/hls/playlist/d$b;->a:Landroid/net/Uri;

    .line 37
    .line 38
    iput-object v5, v0, Landroidx/media3/exoplayer/hls/playlist/a;->l:Landroid/net/Uri;

    .line 39
    .line 40
    iget-object v5, v0, Landroidx/media3/exoplayer/hls/playlist/a;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 41
    .line 42
    new-instance v7, Landroidx/media3/exoplayer/hls/playlist/a$b;

    .line 43
    .line 44
    const/4 v8, 0x0

    .line 45
    invoke-direct {v7, v0, v8}, Landroidx/media3/exoplayer/hls/playlist/a$b;-><init>(Landroidx/media3/exoplayer/hls/playlist/a;Landroidx/media3/exoplayer/hls/playlist/a$a;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    iget-object v4, v4, Landroidx/media3/exoplayer/hls/playlist/d;->d:Ljava/util/List;

    .line 52
    .line 53
    invoke-direct {v0, v4}, Landroidx/media3/exoplayer/hls/playlist/a;->H(Ljava/util/List;)V

    .line 54
    .line 55
    .line 56
    new-instance v4, Lf2/i;

    .line 57
    .line 58
    iget-wide v8, v1, Landroidx/media3/exoplayer/upstream/q;->a:J

    .line 59
    .line 60
    iget-object v10, v1, Landroidx/media3/exoplayer/upstream/q;->b:Lw1/h;

    .line 61
    .line 62
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/upstream/q;->d()Landroid/net/Uri;

    .line 63
    .line 64
    .line 65
    move-result-object v11

    .line 66
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/upstream/q;->b()Ljava/util/Map;

    .line 67
    .line 68
    .line 69
    move-result-object v12

    .line 70
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/upstream/q;->a()J

    .line 71
    .line 72
    .line 73
    move-result-wide v17

    .line 74
    move-object v7, v4

    .line 75
    move-wide/from16 v13, p2

    .line 76
    .line 77
    move-wide/from16 v15, p4

    .line 78
    .line 79
    invoke-direct/range {v7 .. v18}, Lf2/i;-><init>(JLw1/h;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 80
    .line 81
    .line 82
    iget-object v5, v0, Landroidx/media3/exoplayer/hls/playlist/a;->d:Ljava/util/HashMap;

    .line 83
    .line 84
    iget-object v7, v0, Landroidx/media3/exoplayer/hls/playlist/a;->l:Landroid/net/Uri;

    .line 85
    .line 86
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    check-cast v5, Landroidx/media3/exoplayer/hls/playlist/a$c;

    .line 91
    .line 92
    if-eqz v3, :cond_1

    .line 93
    .line 94
    check-cast v2, Landroidx/media3/exoplayer/hls/playlist/c;

    .line 95
    .line 96
    invoke-static {v5, v2, v4}, Landroidx/media3/exoplayer/hls/playlist/a$c;->c(Landroidx/media3/exoplayer/hls/playlist/a$c;Landroidx/media3/exoplayer/hls/playlist/c;Lf2/i;)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_1
    invoke-virtual {v5, v6}, Landroidx/media3/exoplayer/hls/playlist/a$c;->r(Z)V

    .line 101
    .line 102
    .line 103
    :goto_1
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/playlist/a;->c:Landroidx/media3/exoplayer/upstream/m;

    .line 104
    .line 105
    iget-wide v5, v1, Landroidx/media3/exoplayer/upstream/q;->a:J

    .line 106
    .line 107
    invoke-interface {v2, v5, v6}, Landroidx/media3/exoplayer/upstream/m;->b(J)V

    .line 108
    .line 109
    .line 110
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/a;->g:Landroidx/media3/exoplayer/source/s$a;

    .line 111
    .line 112
    const/4 v2, 0x4

    .line 113
    invoke-virtual {v1, v4, v2}, Landroidx/media3/exoplayer/source/s$a;->v(Lf2/i;I)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public U(Landroidx/media3/exoplayer/upstream/q;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$c;
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
    new-instance v3, Lf2/j;

    .line 34
    .line 35
    iget v4, v1, Landroidx/media3/exoplayer/upstream/q;->c:I

    .line 36
    .line 37
    invoke-direct {v3, v4}, Lf2/j;-><init>(I)V

    .line 38
    .line 39
    .line 40
    iget-object v4, v0, Landroidx/media3/exoplayer/hls/playlist/a;->c:Landroidx/media3/exoplayer/upstream/m;

    .line 41
    .line 42
    new-instance v5, Landroidx/media3/exoplayer/upstream/m$c;

    .line 43
    .line 44
    move/from16 v6, p7

    .line 45
    .line 46
    invoke-direct {v5, v15, v3, v2, v6}, Landroidx/media3/exoplayer/upstream/m$c;-><init>(Lf2/i;Lf2/j;Ljava/io/IOException;I)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v4, v5}, Landroidx/media3/exoplayer/upstream/m;->c(Landroidx/media3/exoplayer/upstream/m$c;)J

    .line 50
    .line 51
    .line 52
    move-result-wide v3

    .line 53
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    cmp-long v5, v3, v5

    .line 59
    .line 60
    const/4 v6, 0x0

    .line 61
    if-nez v5, :cond_0

    .line 62
    .line 63
    const/4 v5, 0x1

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    move v5, v6

    .line 66
    :goto_0
    iget-object v7, v0, Landroidx/media3/exoplayer/hls/playlist/a;->g:Landroidx/media3/exoplayer/source/s$a;

    .line 67
    .line 68
    iget v8, v1, Landroidx/media3/exoplayer/upstream/q;->c:I

    .line 69
    .line 70
    invoke-virtual {v7, v15, v8, v2, v5}, Landroidx/media3/exoplayer/source/s$a;->z(Lf2/i;ILjava/io/IOException;Z)V

    .line 71
    .line 72
    .line 73
    if-eqz v5, :cond_1

    .line 74
    .line 75
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/playlist/a;->c:Landroidx/media3/exoplayer/upstream/m;

    .line 76
    .line 77
    iget-wide v7, v1, Landroidx/media3/exoplayer/upstream/q;->a:J

    .line 78
    .line 79
    invoke-interface {v2, v7, v8}, Landroidx/media3/exoplayer/upstream/m;->b(J)V

    .line 80
    .line 81
    .line 82
    :cond_1
    if-eqz v5, :cond_2

    .line 83
    .line 84
    sget-object v1, Landroidx/media3/exoplayer/upstream/Loader;->g:Landroidx/media3/exoplayer/upstream/Loader$c;

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    invoke-static {v6, v3, v4}, Landroidx/media3/exoplayer/upstream/Loader;->g(ZJ)Landroidx/media3/exoplayer/upstream/Loader$c;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    :goto_1
    return-object v1
.end method

.method public V(Landroidx/media3/exoplayer/upstream/q;JJI)V
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
    iget-object v3, v2, Landroidx/media3/exoplayer/hls/playlist/a;->g:Landroidx/media3/exoplayer/source/s$a;

    .line 50
    .line 51
    iget v0, v0, Landroidx/media3/exoplayer/upstream/q;->c:I

    .line 52
    .line 53
    invoke-virtual {v3, v8, v0, v1}, Landroidx/media3/exoplayer/source/s$a;->B(Lf2/i;II)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->d:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/media3/exoplayer/hls/playlist/a$c;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/media3/exoplayer/hls/playlist/a$c;->u()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->o:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public c()Landroidx/media3/exoplayer/hls/playlist/d;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->k:Landroidx/media3/exoplayer/hls/playlist/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public d(Landroid/net/Uri;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->d:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/media3/exoplayer/hls/playlist/a$c;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/hls/playlist/a$c;->r(Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public e(Landroid/net/Uri;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->d:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/media3/exoplayer/hls/playlist/a$c;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/media3/exoplayer/hls/playlist/a$c;->m()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->n:Z

    .line 2
    .line 3
    return v0
.end method

.method public g(Landroid/net/Uri;J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->d:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/media3/exoplayer/hls/playlist/a$c;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-static {p1, p2, p3}, Landroidx/media3/exoplayer/hls/playlist/a$c;->b(Landroidx/media3/exoplayer/hls/playlist/a$c;J)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    xor-int/lit8 p1, p1, 0x1

    .line 16
    .line 17
    return p1

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return p1
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->h:Landroidx/media3/exoplayer/upstream/Loader;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->maybeThrowError()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->l:Landroid/net/Uri;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/hls/playlist/a;->a(Landroid/net/Uri;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public i(Landroid/net/Uri;Z)Landroidx/media3/exoplayer/hls/playlist/c;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->d:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/media3/exoplayer/hls/playlist/a$c;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/media3/exoplayer/hls/playlist/a$c;->j()Landroidx/media3/exoplayer/hls/playlist/c;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/hls/playlist/a;->Q(Landroid/net/Uri;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/hls/playlist/a;->O(Landroid/net/Uri;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-object v0
.end method

.method public j(Landroid/net/Uri;Landroidx/media3/exoplayer/source/s$a;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$c;)V
    .locals 3

    .line 1
    invoke-static {}, Landroidx/media3/common/util/a1;->A()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->i:Landroid/os/Handler;

    .line 6
    .line 7
    iput-object p2, p0, Landroidx/media3/exoplayer/hls/playlist/a;->g:Landroidx/media3/exoplayer/source/s$a;

    .line 8
    .line 9
    iput-object p3, p0, Landroidx/media3/exoplayer/hls/playlist/a;->j:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$c;

    .line 10
    .line 11
    new-instance p2, Lw1/h$b;

    .line 12
    .line 13
    invoke-direct {p2}, Lw1/h$b;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p1}, Lw1/h$b;->i(Landroid/net/Uri;)Lw1/h$b;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/4 p2, 0x1

    .line 21
    invoke-virtual {p1, p2}, Lw1/h$b;->b(I)Lw1/h$b;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lw1/h$b;->a()Lw1/h;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    new-instance p3, Landroidx/media3/exoplayer/upstream/q;

    .line 30
    .line 31
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->a:Landroidx/media3/exoplayer/hls/f;

    .line 32
    .line 33
    const/4 v1, 0x4

    .line 34
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/hls/f;->a(I)Landroidx/media3/datasource/a;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/playlist/a;->b:Lb2/e;

    .line 39
    .line 40
    invoke-interface {v2}, Lb2/e;->a()Landroidx/media3/exoplayer/upstream/q$a;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-direct {p3, v0, p1, v1, v2}, Landroidx/media3/exoplayer/upstream/q;-><init>(Landroidx/media3/datasource/a;Lw1/h;ILandroidx/media3/exoplayer/upstream/q$a;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/a;->h:Landroidx/media3/exoplayer/upstream/Loader;

    .line 48
    .line 49
    if-nez p1, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const/4 p2, 0x0

    .line 53
    :goto_0
    invoke-static {p2}, Landroidx/media3/common/util/a;->g(Z)V

    .line 54
    .line 55
    .line 56
    new-instance p1, Landroidx/media3/exoplayer/upstream/Loader;

    .line 57
    .line 58
    const-string p2, "DefaultHlsPlaylistTracker:MultivariantPlaylist"

    .line 59
    .line 60
    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/a;->h:Landroidx/media3/exoplayer/upstream/Loader;

    .line 64
    .line 65
    iget-object p2, p0, Landroidx/media3/exoplayer/hls/playlist/a;->c:Landroidx/media3/exoplayer/upstream/m;

    .line 66
    .line 67
    iget v0, p3, Landroidx/media3/exoplayer/upstream/q;->c:I

    .line 68
    .line 69
    invoke-interface {p2, v0}, Landroidx/media3/exoplayer/upstream/m;->a(I)I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    invoke-virtual {p1, p3, p0, p2}, Landroidx/media3/exoplayer/upstream/Loader;->m(Landroidx/media3/exoplayer/upstream/Loader$d;Landroidx/media3/exoplayer/upstream/Loader$b;I)J

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public bridge synthetic k(Landroidx/media3/exoplayer/upstream/Loader$d;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$c;
    .locals 0

    .line 1
    check-cast p1, Landroidx/media3/exoplayer/upstream/q;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p7}, Landroidx/media3/exoplayer/hls/playlist/a;->U(Landroidx/media3/exoplayer/upstream/q;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public l(Landroid/net/Uri;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->d:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/media3/exoplayer/hls/playlist/a$c;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/hls/playlist/a$c;->B(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public m(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public n(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$b;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public bridge synthetic o(Landroidx/media3/exoplayer/upstream/Loader$d;JJI)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/media3/exoplayer/upstream/q;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p6}, Landroidx/media3/exoplayer/hls/playlist/a;->V(Landroidx/media3/exoplayer/upstream/q;JJI)V

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
    invoke-virtual/range {p0 .. p5}, Landroidx/media3/exoplayer/hls/playlist/a;->T(Landroidx/media3/exoplayer/upstream/q;JJ)V

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
    invoke-virtual/range {p0 .. p6}, Landroidx/media3/exoplayer/hls/playlist/a;->S(Landroidx/media3/exoplayer/upstream/q;JJZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public stop()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->l:Landroid/net/Uri;

    .line 3
    .line 4
    iput-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->m:Landroidx/media3/exoplayer/hls/playlist/c;

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->k:Landroidx/media3/exoplayer/hls/playlist/d;

    .line 7
    .line 8
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    iput-wide v1, p0, Landroidx/media3/exoplayer/hls/playlist/a;->o:J

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/a;->h:Landroidx/media3/exoplayer/upstream/Loader;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/media3/exoplayer/upstream/Loader;->k()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->h:Landroidx/media3/exoplayer/upstream/Loader;

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/a;->d:Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Landroidx/media3/exoplayer/hls/playlist/a$c;

    .line 43
    .line 44
    invoke-virtual {v2}, Landroidx/media3/exoplayer/hls/playlist/a$c;->A()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/a;->i:Landroid/os/Handler;

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->i:Landroid/os/Handler;

    .line 54
    .line 55
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a;->d:Ljava/util/HashMap;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 58
    .line 59
    .line 60
    return-void
.end method
