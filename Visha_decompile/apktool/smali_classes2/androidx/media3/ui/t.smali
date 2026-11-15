.class public final synthetic Landroidx/media3/ui/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;

.field public final synthetic c:Landroid/view/SurfaceView;

.field public final synthetic d:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;Landroid/view/SurfaceView;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/ui/t;->b:Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;

    iput-object p2, p0, Landroidx/media3/ui/t;->c:Landroid/view/SurfaceView;

    iput-object p3, p0, Landroidx/media3/ui/t;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/t;->b:Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;

    iget-object v1, p0, Landroidx/media3/ui/t;->c:Landroid/view/SurfaceView;

    iget-object p0, p0, Landroidx/media3/ui/t;->d:Ljava/lang/Runnable;

    invoke-static {v0, v1, p0}, Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;->a(Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;Landroid/view/SurfaceView;Ljava/lang/Runnable;)V

    return-void
.end method
