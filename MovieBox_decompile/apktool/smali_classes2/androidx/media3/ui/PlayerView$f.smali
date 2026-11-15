.class final Landroidx/media3/ui/PlayerView$f;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/ui/PlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation


# instance fields
.field a:Landroid/window/SurfaceSyncGroup;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/ui/PlayerView$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroidx/media3/ui/PlayerView$f;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroidx/media3/ui/PlayerView$f;Landroid/view/SurfaceView;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/ui/PlayerView$f;->d(Landroid/view/SurfaceView;Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b()V
    .locals 0

    .line 1
    invoke-static {}, Landroidx/media3/ui/PlayerView$f;->c()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic c()V
    .locals 0

    .line 1
    return-void
.end method

.method private synthetic d(Landroid/view/SurfaceView;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroidx/media3/ui/m0;->a(Landroid/view/SurfaceView;)Landroid/view/AttachedSurfaceControl;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "exo-sync-b-334901521"

    .line 9
    .line 10
    invoke-static {v0}, Landroidx/media3/ui/j0;->a(Ljava/lang/String;)Landroid/window/SurfaceSyncGroup;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Landroidx/media3/ui/PlayerView$f;->a:Landroid/window/SurfaceSyncGroup;

    .line 15
    .line 16
    new-instance v1, Landroidx/media3/ui/q0;

    .line 17
    .line 18
    invoke-direct {v1}, Landroidx/media3/ui/q0;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-static {v0, p1, v1}, Landroidx/media3/ui/n0;->a(Landroid/window/SurfaceSyncGroup;Landroid/view/AttachedSurfaceControl;Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Landroidx/media3/ui/k0;->a()Landroid/view/SurfaceControl$Transaction;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-static {p1, p2}, Landroidx/media3/ui/o0;->a(Landroid/view/AttachedSurfaceControl;Landroid/view/SurfaceControl$Transaction;)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView$f;->a:Landroid/window/SurfaceSyncGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/ui/l0;->a(Landroid/window/SurfaceSyncGroup;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroidx/media3/ui/PlayerView$f;->a:Landroid/window/SurfaceSyncGroup;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public f(Landroid/os/Handler;Landroid/view/SurfaceView;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/ui/p0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2, p3}, Landroidx/media3/ui/p0;-><init>(Landroidx/media3/ui/PlayerView$f;Landroid/view/SurfaceView;Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method
