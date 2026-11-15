.class public final synthetic Landroidx/media3/exoplayer/drm/l;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/drm/r$a;

.field public final synthetic b:Landroidx/media3/exoplayer/drm/r;

.field public final synthetic c:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/exoplayer/drm/r;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/l;->a:Landroidx/media3/exoplayer/drm/r$a;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/drm/l;->b:Landroidx/media3/exoplayer/drm/r;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/media3/exoplayer/drm/l;->c:Ljava/lang/Exception;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/l;->a:Landroidx/media3/exoplayer/drm/r$a;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/l;->b:Landroidx/media3/exoplayer/drm/r;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/media3/exoplayer/drm/l;->c:Ljava/lang/Exception;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Landroidx/media3/exoplayer/drm/r$a;->e(Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/exoplayer/drm/r;Ljava/lang/Exception;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
