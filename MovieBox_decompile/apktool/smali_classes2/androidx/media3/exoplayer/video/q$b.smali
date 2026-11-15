.class public final Landroidx/media3/exoplayer/video/q$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/video/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroidx/media3/exoplayer/video/u;

.field private c:Landroidx/media3/common/k0$a;

.field private d:Landroidx/media3/common/c0$a;

.field private e:Ljava/util/List;

.field private f:Landroidx/media3/common/j0;

.field private g:Landroidx/media3/common/util/i;

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/video/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Landroidx/media3/exoplayer/video/q$b;->a:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Landroidx/media3/exoplayer/video/q$b;->b:Landroidx/media3/exoplayer/video/u;

    .line 11
    .line 12
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Landroidx/media3/exoplayer/video/q$b;->e:Ljava/util/List;

    .line 17
    .line 18
    sget-object p1, Landroidx/media3/common/j0;->a:Landroidx/media3/common/j0;

    .line 19
    .line 20
    iput-object p1, p0, Landroidx/media3/exoplayer/video/q$b;->f:Landroidx/media3/common/j0;

    .line 21
    .line 22
    sget-object p1, Landroidx/media3/common/util/i;->a:Landroidx/media3/common/util/i;

    .line 23
    .line 24
    iput-object p1, p0, Landroidx/media3/exoplayer/video/q$b;->g:Landroidx/media3/common/util/i;

    .line 25
    .line 26
    return-void
.end method

.method static synthetic a(Landroidx/media3/exoplayer/video/q$b;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/q$b;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Landroidx/media3/exoplayer/video/q$b;)Landroidx/media3/common/c0$a;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/q$b;->d:Landroidx/media3/common/c0$a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Landroidx/media3/exoplayer/video/q$b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/q$b;->e:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Landroidx/media3/exoplayer/video/q$b;)Landroidx/media3/common/j0;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/q$b;->f:Landroidx/media3/common/j0;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Landroidx/media3/exoplayer/video/q$b;)Landroidx/media3/common/util/i;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/q$b;->g:Landroidx/media3/common/util/i;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Landroidx/media3/exoplayer/video/q$b;)Landroidx/media3/exoplayer/video/u;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/q$b;->b:Landroidx/media3/exoplayer/video/u;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Landroidx/media3/exoplayer/video/q$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/exoplayer/video/q$b;->h:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public h()Landroidx/media3/exoplayer/video/q;
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/q$b;->i:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/exoplayer/video/q$b;->d:Landroidx/media3/common/c0$a;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/media3/exoplayer/video/q$b;->c:Landroidx/media3/common/k0$a;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Landroidx/media3/exoplayer/video/q$e;

    .line 18
    .line 19
    invoke-direct {v0, v2}, Landroidx/media3/exoplayer/video/q$e;-><init>(Landroidx/media3/exoplayer/video/q$a;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Landroidx/media3/exoplayer/video/q$b;->c:Landroidx/media3/common/k0$a;

    .line 23
    .line 24
    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/video/q$f;

    .line 25
    .line 26
    iget-object v3, p0, Landroidx/media3/exoplayer/video/q$b;->c:Landroidx/media3/common/k0$a;

    .line 27
    .line 28
    invoke-direct {v0, v3}, Landroidx/media3/exoplayer/video/q$f;-><init>(Landroidx/media3/common/k0$a;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Landroidx/media3/exoplayer/video/q$b;->d:Landroidx/media3/common/c0$a;

    .line 32
    .line 33
    :cond_1
    new-instance v0, Landroidx/media3/exoplayer/video/q;

    .line 34
    .line 35
    invoke-direct {v0, p0, v2}, Landroidx/media3/exoplayer/video/q;-><init>(Landroidx/media3/exoplayer/video/q$b;Landroidx/media3/exoplayer/video/q$a;)V

    .line 36
    .line 37
    .line 38
    iput-boolean v1, p0, Landroidx/media3/exoplayer/video/q$b;->i:Z

    .line 39
    .line 40
    return-object v0
.end method

.method public i(Landroidx/media3/common/util/i;)Landroidx/media3/exoplayer/video/q$b;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/video/q$b;->g:Landroidx/media3/common/util/i;

    .line 2
    .line 3
    return-object p0
.end method
