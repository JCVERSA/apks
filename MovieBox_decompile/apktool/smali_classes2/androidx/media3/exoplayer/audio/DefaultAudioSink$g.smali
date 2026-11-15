.class public final Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroidx/media3/exoplayer/audio/e;

.field private c:Lt1/n;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Landroidx/media3/exoplayer/audio/DefaultAudioSink$e;

.field private h:Landroidx/media3/exoplayer/audio/DefaultAudioSink$f;

.field private i:Landroidx/media3/exoplayer/audio/DefaultAudioSink$d;

.field private j:Landroidx/media3/exoplayer/ExoPlayer$a;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->a:Landroid/content/Context;

    .line 3
    sget-object v0, Landroidx/media3/exoplayer/audio/e;->c:Landroidx/media3/exoplayer/audio/e;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->b:Landroidx/media3/exoplayer/audio/e;

    .line 4
    sget-object v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$e;->a:Landroidx/media3/exoplayer/audio/DefaultAudioSink$e;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->g:Landroidx/media3/exoplayer/audio/DefaultAudioSink$e;

    .line 5
    sget-object v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$f;->a:Landroidx/media3/exoplayer/audio/DefaultAudioSink$f;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->h:Landroidx/media3/exoplayer/audio/DefaultAudioSink$f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->a:Landroid/content/Context;

    .line 8
    sget-object p1, Landroidx/media3/exoplayer/audio/e;->c:Landroidx/media3/exoplayer/audio/e;

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->b:Landroidx/media3/exoplayer/audio/e;

    .line 9
    sget-object p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$e;->a:Landroidx/media3/exoplayer/audio/DefaultAudioSink$e;

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->g:Landroidx/media3/exoplayer/audio/DefaultAudioSink$e;

    .line 10
    sget-object p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$f;->a:Landroidx/media3/exoplayer/audio/DefaultAudioSink$f;

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->h:Landroidx/media3/exoplayer/audio/DefaultAudioSink$f;

    return-void
.end method

.method static synthetic a(Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;)Landroidx/media3/exoplayer/ExoPlayer$a;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->j:Landroidx/media3/exoplayer/ExoPlayer$a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$f;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->h:Landroidx/media3/exoplayer/audio/DefaultAudioSink$f;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;)Landroidx/media3/exoplayer/audio/e;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->b:Landroidx/media3/exoplayer/audio/e;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;)Lt1/n;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->c:Lt1/n;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic g(Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->e:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic h(Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$e;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->g:Landroidx/media3/exoplayer/audio/DefaultAudioSink$e;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic i(Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$d;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->i:Landroidx/media3/exoplayer/audio/DefaultAudioSink$d;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public j()Landroidx/media3/exoplayer/audio/DefaultAudioSink;
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->f:Z

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
    iput-boolean v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->f:Z

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->c:Lt1/n;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$i;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    new-array v1, v1, [Landroidx/media3/common/audio/AudioProcessor;

    .line 18
    .line 19
    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$i;-><init>([Landroidx/media3/common/audio/AudioProcessor;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->c:Lt1/n;

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->i:Landroidx/media3/exoplayer/audio/DefaultAudioSink$d;

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    new-instance v0, Landroidx/media3/exoplayer/audio/f0;

    .line 29
    .line 30
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->a:Landroid/content/Context;

    .line 31
    .line 32
    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/audio/f0;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->i:Landroidx/media3/exoplayer/audio/DefaultAudioSink$d;

    .line 36
    .line 37
    :cond_1
    new-instance v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;-><init>(Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;Landroidx/media3/exoplayer/audio/DefaultAudioSink$a;)V

    .line 41
    .line 42
    .line 43
    return-object v0
.end method

.method public k(Landroidx/media3/exoplayer/audio/e;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->b:Landroidx/media3/exoplayer/audio/e;

    .line 5
    .line 6
    return-object p0
.end method

.method public l(Lt1/n;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->c:Lt1/n;

    .line 5
    .line 6
    return-object p0
.end method

.method public m([Landroidx/media3/common/audio/AudioProcessor;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;
    .locals 1

    .line 1
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$i;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$i;-><init>([Landroidx/media3/common/audio/AudioProcessor;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->l(Lt1/n;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public n(Z)Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->e:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public o(Z)Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->d:Z

    .line 2
    .line 3
    return-object p0
.end method
