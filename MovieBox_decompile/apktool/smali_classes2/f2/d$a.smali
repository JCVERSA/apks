.class final Lf2/d$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/f0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Landroidx/media3/exoplayer/source/f0;

.field private final b:Lcom/google/common/collect/ImmutableList;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/f0;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf2/d$a;->a:Landroidx/media3/exoplayer/source/f0;

    .line 5
    .line 6
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lf2/d$a;->b:Lcom/google/common/collect/ImmutableList;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/exoplayer/v2;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf2/d$a;->a:Landroidx/media3/exoplayer/source/f0;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/f0;->a(Landroidx/media3/exoplayer/v2;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public c()Lcom/google/common/collect/ImmutableList;
    .locals 1

    .line 1
    iget-object v0, p0, Lf2/d$a;->b:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBufferedPositionUs()J
    .locals 2

    .line 1
    iget-object v0, p0, Lf2/d$a;->a:Landroidx/media3/exoplayer/source/f0;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/f0;->getBufferedPositionUs()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 1
    iget-object v0, p0, Lf2/d$a;->a:Landroidx/media3/exoplayer/source/f0;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/f0;->getNextLoadPositionUs()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf2/d$a;->a:Landroidx/media3/exoplayer/source/f0;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/f0;->isLoading()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public reevaluateBuffer(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf2/d$a;->a:Landroidx/media3/exoplayer/source/f0;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/source/f0;->reevaluateBuffer(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
