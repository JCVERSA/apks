.class public final Landroidx/media3/exoplayer/mediacodec/p;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/mediacodec/p$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/HashSet;

.field private final b:Landroidx/media3/exoplayer/mediacodec/p$b;

.field private c:Landroid/media/LoudnessCodecController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/media3/exoplayer/mediacodec/p$b;->a:Landroidx/media3/exoplayer/mediacodec/p$b;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/p;-><init>(Landroidx/media3/exoplayer/mediacodec/p$b;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/mediacodec/p$b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/p;->a:Ljava/util/HashSet;

    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/p;->b:Landroidx/media3/exoplayer/mediacodec/p$b;

    return-void
.end method

.method static synthetic a(Landroidx/media3/exoplayer/mediacodec/p;)Landroidx/media3/exoplayer/mediacodec/p$b;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/p;->b:Landroidx/media3/exoplayer/mediacodec/p$b;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public b(Landroid/media/MediaCodec;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/p;->c:Landroid/media/LoudnessCodecController;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/mediacodec/l;->a(Landroid/media/LoudnessCodecController;Landroid/media/MediaCodec;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/p;->a:Ljava/util/HashSet;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-static {p1}, Landroidx/media3/common/util/a;->g(Z)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/p;->a:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/p;->c:Landroid/media/LoudnessCodecController;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {v0}, Landroidx/media3/exoplayer/mediacodec/n;->a(Landroid/media/LoudnessCodecController;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public d(Landroid/media/MediaCodec;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/p;->a:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/p;->c:Landroid/media/LoudnessCodecController;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/mediacodec/m;->a(Landroid/media/LoudnessCodecController;Landroid/media/MediaCodec;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/p;->c:Landroid/media/LoudnessCodecController;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/exoplayer/mediacodec/n;->a(Landroid/media/LoudnessCodecController;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/p;->c:Landroid/media/LoudnessCodecController;

    .line 10
    .line 11
    :cond_0
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->a()Ljava/util/concurrent/Executor;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Landroidx/media3/exoplayer/mediacodec/p$a;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/mediacodec/p$a;-><init>(Landroidx/media3/exoplayer/mediacodec/p;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0, v1}, Landroidx/media3/exoplayer/mediacodec/o;->a(ILjava/util/concurrent/Executor;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;)Landroid/media/LoudnessCodecController;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/p;->c:Landroid/media/LoudnessCodecController;

    .line 25
    .line 26
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/p;->a:Ljava/util/HashSet;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroid/media/MediaCodec;

    .line 43
    .line 44
    invoke-static {p1, v1}, Landroidx/media3/exoplayer/mediacodec/l;->a(Landroid/media/LoudnessCodecController;Landroid/media/MediaCodec;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_1

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    return-void
.end method
