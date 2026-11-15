.class public final synthetic Landroidx/media3/exoplayer/drm/e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/common/util/m;


# instance fields
.field public final synthetic a:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/e;->a:Ljava/lang/Throwable;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/e;->a:Ljava/lang/Throwable;

    .line 2
    .line 3
    check-cast p1, Landroidx/media3/exoplayer/drm/r$a;

    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->g(Ljava/lang/Throwable;Landroidx/media3/exoplayer/drm/r$a;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
