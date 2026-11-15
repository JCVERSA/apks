.class public final synthetic Landroidx/media3/exoplayer/drm/f0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/media/MediaDrm$OnEventListener;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/drm/k0;

.field public final synthetic b:Landroidx/media3/exoplayer/drm/b0$b;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/drm/k0;Landroidx/media3/exoplayer/drm/b0$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/f0;->a:Landroidx/media3/exoplayer/drm/k0;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/drm/f0;->b:Landroidx/media3/exoplayer/drm/b0$b;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onEvent(Landroid/media/MediaDrm;[BII[B)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/f0;->a:Landroidx/media3/exoplayer/drm/k0;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/f0;->b:Landroidx/media3/exoplayer/drm/b0$b;

    .line 4
    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move v4, p3

    .line 8
    move v5, p4

    .line 9
    move-object v6, p5

    .line 10
    invoke-static/range {v0 .. v6}, Landroidx/media3/exoplayer/drm/k0;->h(Landroidx/media3/exoplayer/drm/k0;Landroidx/media3/exoplayer/drm/b0$b;Landroid/media/MediaDrm;[BII[B)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
