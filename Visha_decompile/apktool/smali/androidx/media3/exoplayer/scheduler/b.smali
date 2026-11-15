.class public final synthetic Landroidx/media3/exoplayer/scheduler/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$NetworkCallback;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$NetworkCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/scheduler/b;->b:Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$NetworkCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/scheduler/b;->b:Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$NetworkCallback;

    invoke-static {p0}, Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$NetworkCallback;->a(Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$NetworkCallback;)V

    return-void
.end method
