.class public final synthetic Landroidx/media3/exoplayer/l2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/WifiLockManager;

.field public final synthetic c:Z

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/WifiLockManager;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/l2;->b:Landroidx/media3/exoplayer/WifiLockManager;

    iput-boolean p2, p0, Landroidx/media3/exoplayer/l2;->c:Z

    iput-boolean p3, p0, Landroidx/media3/exoplayer/l2;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/l2;->b:Landroidx/media3/exoplayer/WifiLockManager;

    iget-boolean v1, p0, Landroidx/media3/exoplayer/l2;->c:Z

    iget-boolean p0, p0, Landroidx/media3/exoplayer/l2;->d:Z

    invoke-static {v0, v1, p0}, Landroidx/media3/exoplayer/WifiLockManager;->a(Landroidx/media3/exoplayer/WifiLockManager;ZZ)V

    return-void
.end method
