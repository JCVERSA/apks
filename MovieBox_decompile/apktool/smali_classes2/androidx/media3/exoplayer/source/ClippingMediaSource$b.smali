.class public final Landroidx/media3/exoplayer/source/ClippingMediaSource$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/ClippingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Landroidx/media3/exoplayer/source/r;

.field private b:J

.field private c:J

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/r;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Landroidx/media3/exoplayer/source/r;

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->a:Landroidx/media3/exoplayer/source/r;

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->d:Z

    .line 14
    .line 15
    const-wide/high16 v0, -0x8000000000000000L

    .line 16
    .line 17
    iput-wide v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->c:J

    .line 18
    .line 19
    return-void
.end method

.method static synthetic a(Landroidx/media3/exoplayer/source/ClippingMediaSource$b;)Landroidx/media3/exoplayer/source/r;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->a:Landroidx/media3/exoplayer/source/r;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Landroidx/media3/exoplayer/source/ClippingMediaSource$b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic c(Landroidx/media3/exoplayer/source/ClippingMediaSource$b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic d(Landroidx/media3/exoplayer/source/ClippingMediaSource$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic e(Landroidx/media3/exoplayer/source/ClippingMediaSource$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->e:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic f(Landroidx/media3/exoplayer/source/ClippingMediaSource$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->f:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic g(Landroidx/media3/exoplayer/source/ClippingMediaSource$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->g:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public h()Landroidx/media3/exoplayer/source/ClippingMediaSource;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->h:Z

    .line 3
    .line 4
    new-instance v0, Landroidx/media3/exoplayer/source/ClippingMediaSource;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/source/ClippingMediaSource;-><init>(Landroidx/media3/exoplayer/source/ClippingMediaSource$b;Landroidx/media3/exoplayer/source/ClippingMediaSource$a;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public i(Z)Landroidx/media3/exoplayer/source/ClippingMediaSource$b;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->h:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    .line 6
    .line 7
    .line 8
    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->e:Z

    .line 9
    .line 10
    return-object p0
.end method

.method public j(Z)Landroidx/media3/exoplayer/source/ClippingMediaSource$b;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->h:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    .line 6
    .line 7
    .line 8
    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->d:Z

    .line 9
    .line 10
    return-object p0
.end method

.method public k(J)Landroidx/media3/exoplayer/source/ClippingMediaSource$b;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->h:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    .line 6
    .line 7
    .line 8
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->c:J

    .line 9
    .line 10
    return-object p0
.end method

.method public l(Z)Landroidx/media3/exoplayer/source/ClippingMediaSource$b;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->h:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    .line 6
    .line 7
    .line 8
    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->f:Z

    .line 9
    .line 10
    return-object p0
.end method

.method public m(J)Landroidx/media3/exoplayer/source/ClippingMediaSource$b;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-ltz v0, :cond_0

    .line 7
    .line 8
    move v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->a(Z)V

    .line 12
    .line 13
    .line 14
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->h:Z

    .line 15
    .line 16
    xor-int/2addr v0, v1

    .line 17
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    .line 18
    .line 19
    .line 20
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$b;->b:J

    .line 21
    .line 22
    return-object p0
.end method
