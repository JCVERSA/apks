.class final Landroidx/media3/exoplayer/util/d$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/Loader$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/util/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Landroidx/media3/exoplayer/util/d$b;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/util/d$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/util/d$c;->a:Landroidx/media3/exoplayer/util/d$b;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public k(Landroidx/media3/exoplayer/upstream/Loader$d;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$c;
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/media3/exoplayer/util/d$c;->a:Landroidx/media3/exoplayer/util/d$b;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1, p6}, Landroidx/media3/exoplayer/util/d$b;->a(Ljava/io/IOException;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object p1, Landroidx/media3/exoplayer/upstream/Loader;->f:Landroidx/media3/exoplayer/upstream/Loader$c;

    .line 9
    .line 10
    return-object p1
.end method

.method public synthetic o(Landroidx/media3/exoplayer/upstream/Loader$d;JJI)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Landroidx/media3/exoplayer/upstream/o;->a(Landroidx/media3/exoplayer/upstream/Loader$b;Landroidx/media3/exoplayer/upstream/Loader$d;JJI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public p(Landroidx/media3/exoplayer/upstream/Loader$d;JJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/media3/exoplayer/util/d$c;->a:Landroidx/media3/exoplayer/util/d$b;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-static {}, Landroidx/media3/exoplayer/util/d;->m()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Landroidx/media3/exoplayer/util/d$c;->a:Landroidx/media3/exoplayer/util/d$b;

    .line 12
    .line 13
    new-instance p2, Ljava/io/IOException;

    .line 14
    .line 15
    new-instance p3, Ljava/util/ConcurrentModificationException;

    .line 16
    .line 17
    invoke-direct {p3}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/util/d$b;->a(Ljava/io/IOException;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/util/d$c;->a:Landroidx/media3/exoplayer/util/d$b;

    .line 28
    .line 29
    invoke-interface {p1}, Landroidx/media3/exoplayer/util/d$b;->onInitialized()V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method public q(Landroidx/media3/exoplayer/upstream/Loader$d;JJZ)V
    .locals 0

    .line 1
    return-void
.end method
