.class public final Landroidx/media3/exoplayer/source/l$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:J


# direct methods
.method public constructor <init>(JLandroidx/media3/exoplayer/source/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/l$b;->a:J

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public synthetic a(Lh3/s$a;)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lf2/l;->c(Landroidx/media3/exoplayer/source/r$a;Lh3/s$a;)Landroidx/media3/exoplayer/source/r$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public synthetic b(I)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lf2/l;->b(Landroidx/media3/exoplayer/source/r$a;I)Landroidx/media3/exoplayer/source/r$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public synthetic c(Z)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lf2/l;->a(Landroidx/media3/exoplayer/source/r$a;Z)Landroidx/media3/exoplayer/source/r$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic d(Landroidx/media3/common/t;)Landroidx/media3/exoplayer/source/r;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/l$b;->g(Landroidx/media3/common/t;)Landroidx/media3/exoplayer/source/l;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public e(Landroidx/media3/exoplayer/drm/w;)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    .line 1
    return-object p0
.end method

.method public f(Landroidx/media3/exoplayer/upstream/m;)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    .line 1
    return-object p0
.end method

.method public g(Landroidx/media3/common/t;)Landroidx/media3/exoplayer/source/l;
    .locals 7

    .line 1
    new-instance v6, Landroidx/media3/exoplayer/source/l;

    .line 2
    .line 3
    iget-wide v2, p0, Landroidx/media3/exoplayer/source/l$b;->a:J

    .line 4
    .line 5
    const/4 v4, 0x0

    .line 6
    const/4 v5, 0x0

    .line 7
    move-object v0, v6

    .line 8
    move-object v1, p1

    .line 9
    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/source/l;-><init>(Landroidx/media3/common/t;JLandroidx/media3/exoplayer/source/j;Landroidx/media3/exoplayer/source/l$a;)V

    .line 10
    .line 11
    .line 12
    return-object v6
.end method
