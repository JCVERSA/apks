.class public final Landroidx/media3/exoplayer/source/i;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/r$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/i$a;,
        Landroidx/media3/exoplayer/source/i$b;
    }
.end annotation


# instance fields
.field private final a:Landroidx/media3/exoplayer/source/i$a;

.field private b:Landroidx/media3/datasource/a$a;

.field private c:Lh3/s$a;

.field private d:Landroidx/media3/exoplayer/source/r$a;

.field private e:Landroidx/media3/exoplayer/upstream/m;

.field private f:J

.field private g:J

.field private h:J

.field private i:F

.field private j:F

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/datasource/b$a;

    invoke-direct {v0, p1}, Landroidx/media3/datasource/b$a;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/i;-><init>(Landroidx/media3/datasource/a$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lk2/x;)V
    .locals 1

    .line 2
    new-instance v0, Landroidx/media3/datasource/b$a;

    invoke-direct {v0, p1}, Landroidx/media3/datasource/b$a;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Landroidx/media3/exoplayer/source/i;-><init>(Landroidx/media3/datasource/a$a;Lk2/x;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/datasource/a$a;)V
    .locals 1

    .line 3
    new-instance v0, Lk2/m;

    invoke-direct {v0}, Lk2/m;-><init>()V

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/source/i;-><init>(Landroidx/media3/datasource/a$a;Lk2/x;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/datasource/a$a;Lk2/x;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Landroidx/media3/exoplayer/source/i;->b:Landroidx/media3/datasource/a$a;

    .line 6
    new-instance v0, Lh3/h;

    invoke-direct {v0}, Lh3/h;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/i;->c:Lh3/s$a;

    .line 7
    new-instance v1, Landroidx/media3/exoplayer/source/i$a;

    invoke-direct {v1, p2, v0}, Landroidx/media3/exoplayer/source/i$a;-><init>(Lk2/x;Lh3/s$a;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/source/i;->a:Landroidx/media3/exoplayer/source/i$a;

    .line 8
    invoke-virtual {v1, p1}, Landroidx/media3/exoplayer/source/i$a;->n(Landroidx/media3/datasource/a$a;)V

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/i;->f:J

    .line 10
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/i;->g:J

    .line 11
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/i;->h:J

    const p1, -0x800001

    .line 12
    iput p1, p0, Landroidx/media3/exoplayer/source/i;->i:F

    .line 13
    iput p1, p0, Landroidx/media3/exoplayer/source/i;->j:F

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/i;->k:Z

    return-void
.end method

.method public static synthetic g(Landroidx/media3/exoplayer/source/i;Landroidx/media3/common/r;)[Lk2/r;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/i;->l(Landroidx/media3/common/r;)[Lk2/r;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic h(Ljava/lang/Class;)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/source/i;->o(Ljava/lang/Class;)Landroidx/media3/exoplayer/source/r$a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic i(Ljava/lang/Class;Landroidx/media3/datasource/a$a;)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/source/i;->p(Ljava/lang/Class;Landroidx/media3/datasource/a$a;)Landroidx/media3/exoplayer/source/r$a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private synthetic l(Landroidx/media3/common/r;)[Lk2/r;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/i;->c:Lh3/s$a;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lh3/s$a;->a(Landroidx/media3/common/r;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lh3/n;

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/media3/exoplayer/source/i;->c:Lh3/s$a;

    .line 12
    .line 13
    invoke-interface {v1, p1}, Lh3/s$a;->c(Landroidx/media3/common/r;)Lh3/s;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, p1, v1}, Lh3/n;-><init>(Lh3/s;Landroidx/media3/common/r;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/source/i$b;

    .line 23
    .line 24
    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/source/i$b;-><init>(Landroidx/media3/common/r;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    const/4 p1, 0x1

    .line 28
    new-array p1, p1, [Lk2/r;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    aput-object v0, p1, v1

    .line 32
    .line 33
    return-object p1
.end method

.method private static m(Landroidx/media3/common/t;Landroidx/media3/exoplayer/source/r;)Landroidx/media3/exoplayer/source/r;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/common/t;->f:Landroidx/media3/common/t$d;

    .line 2
    .line 3
    iget-wide v1, v0, Landroidx/media3/common/t$d;->b:J

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    cmp-long v1, v1, v3

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iget-wide v1, v0, Landroidx/media3/common/t$d;->d:J

    .line 12
    .line 13
    const-wide/high16 v3, -0x8000000000000000L

    .line 14
    .line 15
    cmp-long v1, v1, v3

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    iget-boolean v0, v0, Landroidx/media3/common/t$d;->f:Z

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;

    .line 25
    .line 26
    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;-><init>(Landroidx/media3/exoplayer/source/r;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Landroidx/media3/common/t;->f:Landroidx/media3/common/t$d;

    .line 30
    .line 31
    iget-wide v1, p1, Landroidx/media3/common/t$d;->b:J

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->m(J)Landroidx/media3/exoplayer/source/ClippingMediaSource$b;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object v0, p0, Landroidx/media3/common/t;->f:Landroidx/media3/common/t$d;

    .line 38
    .line 39
    iget-wide v0, v0, Landroidx/media3/common/t$d;->d:J

    .line 40
    .line 41
    invoke-virtual {p1, v0, v1}, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->k(J)Landroidx/media3/exoplayer/source/ClippingMediaSource$b;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object v0, p0, Landroidx/media3/common/t;->f:Landroidx/media3/common/t$d;

    .line 46
    .line 47
    iget-boolean v0, v0, Landroidx/media3/common/t$d;->g:Z

    .line 48
    .line 49
    xor-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->j(Z)Landroidx/media3/exoplayer/source/ClippingMediaSource$b;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object v0, p0, Landroidx/media3/common/t;->f:Landroidx/media3/common/t$d;

    .line 56
    .line 57
    iget-boolean v0, v0, Landroidx/media3/common/t$d;->e:Z

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->i(Z)Landroidx/media3/exoplayer/source/ClippingMediaSource$b;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iget-object p0, p0, Landroidx/media3/common/t;->f:Landroidx/media3/common/t$d;

    .line 64
    .line 65
    iget-boolean p0, p0, Landroidx/media3/common/t$d;->f:Z

    .line 66
    .line 67
    invoke-virtual {p1, p0}, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->l(Z)Landroidx/media3/exoplayer/source/ClippingMediaSource$b;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->h()Landroidx/media3/exoplayer/source/ClippingMediaSource;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0
.end method

.method private n(Landroidx/media3/common/t;Landroidx/media3/exoplayer/source/r;)Landroidx/media3/exoplayer/source/r;
    .locals 1

    .line 1
    iget-object v0, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    return-object p2
.end method

.method private static o(Ljava/lang/Class;)Landroidx/media3/exoplayer/source/r$a;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroidx/media3/exoplayer/source/r$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    return-object p0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method private static p(Ljava/lang/Class;Landroidx/media3/datasource/a$a;)Landroidx/media3/exoplayer/source/r$a;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    :try_start_0
    new-array v2, v1, [Ljava/lang/Class;

    .line 4
    .line 5
    const-class v3, Landroidx/media3/datasource/a$a;

    .line 6
    .line 7
    aput-object v3, v2, v0

    .line 8
    .line 9
    invoke-virtual {p0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    new-array v1, v1, [Ljava/lang/Object;

    .line 14
    .line 15
    aput-object p1, v1, v0

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Landroidx/media3/exoplayer/source/r$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    return-object p0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    throw p1
.end method


# virtual methods
.method public bridge synthetic a(Lh3/s$a;)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/i;->t(Lh3/s$a;)Landroidx/media3/exoplayer/source/i;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic b(I)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/i;->k(I)Landroidx/media3/exoplayer/source/i;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic c(Z)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/i;->j(Z)Landroidx/media3/exoplayer/source/i;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public d(Landroidx/media3/common/t;)Landroidx/media3/exoplayer/source/r;
    .locals 10

    .line 1
    iget-object v0, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    .line 7
    .line 8
    iget-object v0, v0, Landroidx/media3/common/t$h;->a:Landroid/net/Uri;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string v1, "ssai"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/media3/exoplayer/source/i;->d:Landroidx/media3/exoplayer/source/r$a;

    .line 25
    .line 26
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroidx/media3/exoplayer/source/r$a;

    .line 31
    .line 32
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/r$a;->d(Landroidx/media3/common/t;)Landroidx/media3/exoplayer/source/r;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1

    .line 37
    :cond_0
    iget-object v0, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    .line 38
    .line 39
    iget-object v0, v0, Landroidx/media3/common/t$h;->b:Ljava/lang/String;

    .line 40
    .line 41
    const-string v1, "application/x-image-uri"

    .line 42
    .line 43
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    new-instance v0, Landroidx/media3/exoplayer/source/l$b;

    .line 50
    .line 51
    iget-object v1, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    .line 52
    .line 53
    iget-wide v1, v1, Landroidx/media3/common/t$h;->i:J

    .line 54
    .line 55
    invoke-static {v1, v2}, Landroidx/media3/common/util/a1;->R0(J)J

    .line 56
    .line 57
    .line 58
    move-result-wide v1

    .line 59
    const/4 v3, 0x0

    .line 60
    invoke-static {v3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-static {v4}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/exoplayer/source/l$b;-><init>(JLandroidx/media3/exoplayer/source/j;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/l$b;->g(Landroidx/media3/common/t;)Landroidx/media3/exoplayer/source/l;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    return-object p1

    .line 75
    :cond_1
    iget-object v0, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    .line 76
    .line 77
    iget-object v1, v0, Landroidx/media3/common/t$h;->a:Landroid/net/Uri;

    .line 78
    .line 79
    iget-object v0, v0, Landroidx/media3/common/t$h;->b:Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {v1, v0}, Landroidx/media3/common/util/a1;->A0(Landroid/net/Uri;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    iget-object v1, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    .line 86
    .line 87
    iget-wide v1, v1, Landroidx/media3/common/t$h;->i:J

    .line 88
    .line 89
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    cmp-long v1, v1, v3

    .line 95
    .line 96
    const/4 v2, 0x1

    .line 97
    if-eqz v1, :cond_2

    .line 98
    .line 99
    iget-object v1, p0, Landroidx/media3/exoplayer/source/i;->a:Landroidx/media3/exoplayer/source/i$a;

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/source/i$a;->p(I)V

    .line 102
    .line 103
    .line 104
    :cond_2
    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/i;->a:Landroidx/media3/exoplayer/source/i$a;

    .line 105
    .line 106
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/source/i$a;->f(I)Landroidx/media3/exoplayer/source/r$a;

    .line 107
    .line 108
    .line 109
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    iget-object v1, p1, Landroidx/media3/common/t;->d:Landroidx/media3/common/t$g;

    .line 111
    .line 112
    invoke-virtual {v1}, Landroidx/media3/common/t$g;->a()Landroidx/media3/common/t$g$a;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    iget-object v5, p1, Landroidx/media3/common/t;->d:Landroidx/media3/common/t$g;

    .line 117
    .line 118
    iget-wide v5, v5, Landroidx/media3/common/t$g;->a:J

    .line 119
    .line 120
    cmp-long v5, v5, v3

    .line 121
    .line 122
    if-nez v5, :cond_3

    .line 123
    .line 124
    iget-wide v5, p0, Landroidx/media3/exoplayer/source/i;->f:J

    .line 125
    .line 126
    invoke-virtual {v1, v5, v6}, Landroidx/media3/common/t$g$a;->k(J)Landroidx/media3/common/t$g$a;

    .line 127
    .line 128
    .line 129
    :cond_3
    iget-object v5, p1, Landroidx/media3/common/t;->d:Landroidx/media3/common/t$g;

    .line 130
    .line 131
    iget v5, v5, Landroidx/media3/common/t$g;->d:F

    .line 132
    .line 133
    const v6, -0x800001

    .line 134
    .line 135
    .line 136
    cmpl-float v5, v5, v6

    .line 137
    .line 138
    if-nez v5, :cond_4

    .line 139
    .line 140
    iget v5, p0, Landroidx/media3/exoplayer/source/i;->i:F

    .line 141
    .line 142
    invoke-virtual {v1, v5}, Landroidx/media3/common/t$g$a;->j(F)Landroidx/media3/common/t$g$a;

    .line 143
    .line 144
    .line 145
    :cond_4
    iget-object v5, p1, Landroidx/media3/common/t;->d:Landroidx/media3/common/t$g;

    .line 146
    .line 147
    iget v5, v5, Landroidx/media3/common/t$g;->e:F

    .line 148
    .line 149
    cmpl-float v5, v5, v6

    .line 150
    .line 151
    if-nez v5, :cond_5

    .line 152
    .line 153
    iget v5, p0, Landroidx/media3/exoplayer/source/i;->j:F

    .line 154
    .line 155
    invoke-virtual {v1, v5}, Landroidx/media3/common/t$g$a;->h(F)Landroidx/media3/common/t$g$a;

    .line 156
    .line 157
    .line 158
    :cond_5
    iget-object v5, p1, Landroidx/media3/common/t;->d:Landroidx/media3/common/t$g;

    .line 159
    .line 160
    iget-wide v5, v5, Landroidx/media3/common/t$g;->b:J

    .line 161
    .line 162
    cmp-long v5, v5, v3

    .line 163
    .line 164
    if-nez v5, :cond_6

    .line 165
    .line 166
    iget-wide v5, p0, Landroidx/media3/exoplayer/source/i;->g:J

    .line 167
    .line 168
    invoke-virtual {v1, v5, v6}, Landroidx/media3/common/t$g$a;->i(J)Landroidx/media3/common/t$g$a;

    .line 169
    .line 170
    .line 171
    :cond_6
    iget-object v5, p1, Landroidx/media3/common/t;->d:Landroidx/media3/common/t$g;

    .line 172
    .line 173
    iget-wide v5, v5, Landroidx/media3/common/t$g;->c:J

    .line 174
    .line 175
    cmp-long v5, v5, v3

    .line 176
    .line 177
    if-nez v5, :cond_7

    .line 178
    .line 179
    iget-wide v5, p0, Landroidx/media3/exoplayer/source/i;->h:J

    .line 180
    .line 181
    invoke-virtual {v1, v5, v6}, Landroidx/media3/common/t$g$a;->g(J)Landroidx/media3/common/t$g$a;

    .line 182
    .line 183
    .line 184
    :cond_7
    invoke-virtual {v1}, Landroidx/media3/common/t$g$a;->f()Landroidx/media3/common/t$g;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    iget-object v5, p1, Landroidx/media3/common/t;->d:Landroidx/media3/common/t$g;

    .line 189
    .line 190
    invoke-virtual {v1, v5}, Landroidx/media3/common/t$g;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    if-nez v5, :cond_8

    .line 195
    .line 196
    invoke-virtual {p1}, Landroidx/media3/common/t;->a()Landroidx/media3/common/t$c;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-virtual {p1, v1}, Landroidx/media3/common/t$c;->c(Landroidx/media3/common/t$g;)Landroidx/media3/common/t$c;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-virtual {p1}, Landroidx/media3/common/t$c;->a()Landroidx/media3/common/t;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    :cond_8
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/r$a;->d(Landroidx/media3/common/t;)Landroidx/media3/exoplayer/source/r;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    iget-object v1, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    .line 213
    .line 214
    invoke-static {v1}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    check-cast v1, Landroidx/media3/common/t$h;

    .line 219
    .line 220
    iget-object v1, v1, Landroidx/media3/common/t$h;->f:Lcom/google/common/collect/ImmutableList;

    .line 221
    .line 222
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 223
    .line 224
    .line 225
    move-result v5

    .line 226
    if-nez v5, :cond_e

    .line 227
    .line 228
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 229
    .line 230
    .line 231
    move-result v5

    .line 232
    add-int/2addr v5, v2

    .line 233
    new-array v2, v5, [Landroidx/media3/exoplayer/source/r;

    .line 234
    .line 235
    const/4 v5, 0x0

    .line 236
    aput-object v0, v2, v5

    .line 237
    .line 238
    move v0, v5

    .line 239
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 240
    .line 241
    .line 242
    move-result v6

    .line 243
    if-ge v0, v6, :cond_d

    .line 244
    .line 245
    iget-boolean v6, p0, Landroidx/media3/exoplayer/source/i;->k:Z

    .line 246
    .line 247
    if-eqz v6, :cond_b

    .line 248
    .line 249
    new-instance v6, Landroidx/media3/common/r$b;

    .line 250
    .line 251
    invoke-direct {v6}, Landroidx/media3/common/r$b;-><init>()V

    .line 252
    .line 253
    .line 254
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v7

    .line 258
    check-cast v7, Landroidx/media3/common/t$k;

    .line 259
    .line 260
    iget-object v7, v7, Landroidx/media3/common/t$k;->b:Ljava/lang/String;

    .line 261
    .line 262
    invoke-virtual {v6, v7}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 263
    .line 264
    .line 265
    move-result-object v6

    .line 266
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v7

    .line 270
    check-cast v7, Landroidx/media3/common/t$k;

    .line 271
    .line 272
    iget-object v7, v7, Landroidx/media3/common/t$k;->c:Ljava/lang/String;

    .line 273
    .line 274
    invoke-virtual {v6, v7}, Landroidx/media3/common/r$b;->j0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 275
    .line 276
    .line 277
    move-result-object v6

    .line 278
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v7

    .line 282
    check-cast v7, Landroidx/media3/common/t$k;

    .line 283
    .line 284
    iget v7, v7, Landroidx/media3/common/t$k;->d:I

    .line 285
    .line 286
    invoke-virtual {v6, v7}, Landroidx/media3/common/r$b;->w0(I)Landroidx/media3/common/r$b;

    .line 287
    .line 288
    .line 289
    move-result-object v6

    .line 290
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v7

    .line 294
    check-cast v7, Landroidx/media3/common/t$k;

    .line 295
    .line 296
    iget v7, v7, Landroidx/media3/common/t$k;->e:I

    .line 297
    .line 298
    invoke-virtual {v6, v7}, Landroidx/media3/common/r$b;->s0(I)Landroidx/media3/common/r$b;

    .line 299
    .line 300
    .line 301
    move-result-object v6

    .line 302
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v7

    .line 306
    check-cast v7, Landroidx/media3/common/t$k;

    .line 307
    .line 308
    iget-object v7, v7, Landroidx/media3/common/t$k;->f:Ljava/lang/String;

    .line 309
    .line 310
    invoke-virtual {v6, v7}, Landroidx/media3/common/r$b;->h0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 311
    .line 312
    .line 313
    move-result-object v6

    .line 314
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v7

    .line 318
    check-cast v7, Landroidx/media3/common/t$k;

    .line 319
    .line 320
    iget-object v7, v7, Landroidx/media3/common/t$k;->g:Ljava/lang/String;

    .line 321
    .line 322
    invoke-virtual {v6, v7}, Landroidx/media3/common/r$b;->f0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 323
    .line 324
    .line 325
    move-result-object v6

    .line 326
    invoke-virtual {v6}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 327
    .line 328
    .line 329
    move-result-object v6

    .line 330
    new-instance v7, Lf2/g;

    .line 331
    .line 332
    invoke-direct {v7, p0, v6}, Lf2/g;-><init>(Landroidx/media3/exoplayer/source/i;Landroidx/media3/common/r;)V

    .line 333
    .line 334
    .line 335
    new-instance v8, Landroidx/media3/exoplayer/source/b0$b;

    .line 336
    .line 337
    iget-object v9, p0, Landroidx/media3/exoplayer/source/i;->b:Landroidx/media3/datasource/a$a;

    .line 338
    .line 339
    invoke-direct {v8, v9, v7}, Landroidx/media3/exoplayer/source/b0$b;-><init>(Landroidx/media3/datasource/a$a;Lk2/x;)V

    .line 340
    .line 341
    .line 342
    iget-object v7, p0, Landroidx/media3/exoplayer/source/i;->c:Lh3/s$a;

    .line 343
    .line 344
    invoke-interface {v7, v6}, Lh3/s$a;->a(Landroidx/media3/common/r;)Z

    .line 345
    .line 346
    .line 347
    move-result v7

    .line 348
    if-eqz v7, :cond_9

    .line 349
    .line 350
    invoke-virtual {v6}, Landroidx/media3/common/r;->b()Landroidx/media3/common/r$b;

    .line 351
    .line 352
    .line 353
    move-result-object v7

    .line 354
    const-string v9, "application/x-media3-cues"

    .line 355
    .line 356
    invoke-virtual {v7, v9}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 357
    .line 358
    .line 359
    move-result-object v7

    .line 360
    iget-object v9, v6, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 361
    .line 362
    invoke-virtual {v7, v9}, Landroidx/media3/common/r$b;->S(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 363
    .line 364
    .line 365
    move-result-object v7

    .line 366
    iget-object v9, p0, Landroidx/media3/exoplayer/source/i;->c:Lh3/s$a;

    .line 367
    .line 368
    invoke-interface {v9, v6}, Lh3/s$a;->b(Landroidx/media3/common/r;)I

    .line 369
    .line 370
    .line 371
    move-result v6

    .line 372
    invoke-virtual {v7, v6}, Landroidx/media3/common/r$b;->W(I)Landroidx/media3/common/r$b;

    .line 373
    .line 374
    .line 375
    move-result-object v6

    .line 376
    invoke-virtual {v6}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 377
    .line 378
    .line 379
    move-result-object v6

    .line 380
    :cond_9
    invoke-virtual {v8, v5, v6}, Landroidx/media3/exoplayer/source/b0$b;->i(ILandroidx/media3/common/r;)Landroidx/media3/exoplayer/source/b0$b;

    .line 381
    .line 382
    .line 383
    move-result-object v6

    .line 384
    iget-object v7, p0, Landroidx/media3/exoplayer/source/i;->e:Landroidx/media3/exoplayer/upstream/m;

    .line 385
    .line 386
    if-eqz v7, :cond_a

    .line 387
    .line 388
    invoke-virtual {v6, v7}, Landroidx/media3/exoplayer/source/b0$b;->l(Landroidx/media3/exoplayer/upstream/m;)Landroidx/media3/exoplayer/source/b0$b;

    .line 389
    .line 390
    .line 391
    :cond_a
    add-int/lit8 v7, v0, 0x1

    .line 392
    .line 393
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v8

    .line 397
    check-cast v8, Landroidx/media3/common/t$k;

    .line 398
    .line 399
    iget-object v8, v8, Landroidx/media3/common/t$k;->a:Landroid/net/Uri;

    .line 400
    .line 401
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v8

    .line 405
    invoke-static {v8}, Landroidx/media3/common/t;->b(Ljava/lang/String;)Landroidx/media3/common/t;

    .line 406
    .line 407
    .line 408
    move-result-object v8

    .line 409
    invoke-virtual {v6, v8}, Landroidx/media3/exoplayer/source/b0$b;->h(Landroidx/media3/common/t;)Landroidx/media3/exoplayer/source/b0;

    .line 410
    .line 411
    .line 412
    move-result-object v6

    .line 413
    aput-object v6, v2, v7

    .line 414
    .line 415
    goto :goto_1

    .line 416
    :cond_b
    new-instance v6, Landroidx/media3/exoplayer/source/h0$b;

    .line 417
    .line 418
    iget-object v7, p0, Landroidx/media3/exoplayer/source/i;->b:Landroidx/media3/datasource/a$a;

    .line 419
    .line 420
    invoke-direct {v6, v7}, Landroidx/media3/exoplayer/source/h0$b;-><init>(Landroidx/media3/datasource/a$a;)V

    .line 421
    .line 422
    .line 423
    iget-object v7, p0, Landroidx/media3/exoplayer/source/i;->e:Landroidx/media3/exoplayer/upstream/m;

    .line 424
    .line 425
    if-eqz v7, :cond_c

    .line 426
    .line 427
    invoke-virtual {v6, v7}, Landroidx/media3/exoplayer/source/h0$b;->b(Landroidx/media3/exoplayer/upstream/m;)Landroidx/media3/exoplayer/source/h0$b;

    .line 428
    .line 429
    .line 430
    :cond_c
    add-int/lit8 v7, v0, 0x1

    .line 431
    .line 432
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object v8

    .line 436
    check-cast v8, Landroidx/media3/common/t$k;

    .line 437
    .line 438
    invoke-virtual {v6, v8, v3, v4}, Landroidx/media3/exoplayer/source/h0$b;->a(Landroidx/media3/common/t$k;J)Landroidx/media3/exoplayer/source/h0;

    .line 439
    .line 440
    .line 441
    move-result-object v6

    .line 442
    aput-object v6, v2, v7

    .line 443
    .line 444
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 445
    .line 446
    goto/16 :goto_0

    .line 447
    .line 448
    :cond_d
    new-instance v0, Landroidx/media3/exoplayer/source/MergingMediaSource;

    .line 449
    .line 450
    invoke-direct {v0, v2}, Landroidx/media3/exoplayer/source/MergingMediaSource;-><init>([Landroidx/media3/exoplayer/source/r;)V

    .line 451
    .line 452
    .line 453
    :cond_e
    invoke-static {p1, v0}, Landroidx/media3/exoplayer/source/i;->m(Landroidx/media3/common/t;Landroidx/media3/exoplayer/source/r;)Landroidx/media3/exoplayer/source/r;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/source/i;->n(Landroidx/media3/common/t;Landroidx/media3/exoplayer/source/r;)Landroidx/media3/exoplayer/source/r;

    .line 458
    .line 459
    .line 460
    move-result-object p1

    .line 461
    return-object p1

    .line 462
    :catch_0
    move-exception p1

    .line 463
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 464
    .line 465
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 466
    .line 467
    .line 468
    throw v0
.end method

.method public bridge synthetic e(Landroidx/media3/exoplayer/drm/w;)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/i;->r(Landroidx/media3/exoplayer/drm/w;)Landroidx/media3/exoplayer/source/i;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic f(Landroidx/media3/exoplayer/upstream/m;)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/i;->s(Landroidx/media3/exoplayer/upstream/m;)Landroidx/media3/exoplayer/source/i;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public j(Z)Landroidx/media3/exoplayer/source/i;
    .locals 1

    .line 1
    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/i;->k:Z

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/exoplayer/source/i;->a:Landroidx/media3/exoplayer/source/i$a;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/i$a;->r(Z)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public k(I)Landroidx/media3/exoplayer/source/i;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/i;->a:Landroidx/media3/exoplayer/source/i$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/i$a;->m(I)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public q(Landroidx/media3/datasource/a$a;)Landroidx/media3/exoplayer/source/i;
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/source/i;->b:Landroidx/media3/datasource/a$a;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/exoplayer/source/i;->a:Landroidx/media3/exoplayer/source/i$a;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/i$a;->n(Landroidx/media3/datasource/a$a;)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public r(Landroidx/media3/exoplayer/drm/w;)Landroidx/media3/exoplayer/source/i;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/i;->a:Landroidx/media3/exoplayer/source/i$a;

    .line 2
    .line 3
    const-string v1, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 4
    .line 5
    invoke-static {p1, v1}, Landroidx/media3/common/util/a;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/media3/exoplayer/drm/w;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/i$a;->o(Landroidx/media3/exoplayer/drm/w;)V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public s(Landroidx/media3/exoplayer/upstream/m;)Landroidx/media3/exoplayer/source/i;
    .locals 1

    .line 1
    const-string v0, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroidx/media3/common/util/a;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/media3/exoplayer/upstream/m;

    .line 8
    .line 9
    iput-object v0, p0, Landroidx/media3/exoplayer/source/i;->e:Landroidx/media3/exoplayer/upstream/m;

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/media3/exoplayer/source/i;->a:Landroidx/media3/exoplayer/source/i$a;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/i$a;->q(Landroidx/media3/exoplayer/upstream/m;)V

    .line 14
    .line 15
    .line 16
    return-object p0
.end method

.method public t(Lh3/s$a;)Landroidx/media3/exoplayer/source/i;
    .locals 1

    .line 1
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lh3/s$a;

    .line 6
    .line 7
    iput-object v0, p0, Landroidx/media3/exoplayer/source/i;->c:Lh3/s$a;

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/media3/exoplayer/source/i;->a:Landroidx/media3/exoplayer/source/i$a;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/i$a;->s(Lh3/s$a;)V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method
