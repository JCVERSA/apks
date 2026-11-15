.class public final Lb2/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lb2/e;


# instance fields
.field private final a:Lb2/e;

.field private final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lb2/e;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb2/c;->a:Lb2/e;

    .line 5
    .line 6
    iput-object p2, p0, Lb2/c;->b:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()Landroidx/media3/exoplayer/upstream/q$a;
    .locals 3

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/offline/r;

    .line 2
    .line 3
    iget-object v1, p0, Lb2/c;->a:Lb2/e;

    .line 4
    .line 5
    invoke-interface {v1}, Lb2/e;->a()Landroidx/media3/exoplayer/upstream/q$a;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lb2/c;->b:Ljava/util/List;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/offline/r;-><init>(Landroidx/media3/exoplayer/upstream/q$a;Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public b(Landroidx/media3/exoplayer/hls/playlist/d;Landroidx/media3/exoplayer/hls/playlist/c;)Landroidx/media3/exoplayer/upstream/q$a;
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/offline/r;

    .line 2
    .line 3
    iget-object v1, p0, Lb2/c;->a:Lb2/e;

    .line 4
    .line 5
    invoke-interface {v1, p1, p2}, Lb2/e;->b(Landroidx/media3/exoplayer/hls/playlist/d;Landroidx/media3/exoplayer/hls/playlist/c;)Landroidx/media3/exoplayer/upstream/q$a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object p2, p0, Lb2/c;->b:Ljava/util/List;

    .line 10
    .line 11
    invoke-direct {v0, p1, p2}, Landroidx/media3/exoplayer/offline/r;-><init>(Landroidx/media3/exoplayer/upstream/q$a;Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
