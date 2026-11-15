.class public final synthetic Landroidx/media3/exoplayer/m2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/WifiLockManager;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/WifiLockManager;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/m2;->b:Landroidx/media3/exoplayer/WifiLockManager;

    iput-boolean p2, p0, Landroidx/media3/exoplayer/m2;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/m2;->b:Landroidx/media3/exoplayer/WifiLockManager;

    iget-boolean p0, p0, Landroidx/media3/exoplayer/m2;->c:Z

    invoke-static {v0, p0}, Landroidx/media3/exoplayer/WifiLockManager;->b(Landroidx/media3/exoplayer/WifiLockManager;Z)V

    return-void
.end method
