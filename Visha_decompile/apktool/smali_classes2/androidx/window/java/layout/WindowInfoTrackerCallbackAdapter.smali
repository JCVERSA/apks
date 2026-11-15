.class public final Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/window/layout/WindowInfoTracker;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0019\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006B\u0011\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0005\u0010\u0007J\u001e\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\t\u001a\u00020\u0008H\u0096\u0001\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001e\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u000f\u001a\u00020\u000eH\u0096\u0001\u00a2\u0006\u0004\u0008\u000c\u0010\u0010J+\u0010\u0016\u001a\u00020\u00152\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u00112\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0013\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J+\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u00112\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0013\u00a2\u0006\u0004\u0008\u0016\u0010\u0018J\u001b\u0010\u0019\u001a\u00020\u00152\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0013\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u0002\u001a\u00020\u00018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0002\u0010\u001bR\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010\u001c\u00a8\u0006\u001d"
    }
    d2 = {
        "Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;",
        "Landroidx/window/layout/WindowInfoTracker;",
        "tracker",
        "Landroidx/window/java/core/CallbackToFlowAdapter;",
        "callbackToFlowAdapter",
        "<init>",
        "(Landroidx/window/layout/WindowInfoTracker;Landroidx/window/java/core/CallbackToFlowAdapter;)V",
        "(Landroidx/window/layout/WindowInfoTracker;)V",
        "Landroid/app/Activity;",
        "activity",
        "Lnz3;",
        "Landroidx/window/layout/WindowLayoutInfo;",
        "windowLayoutInfo",
        "(Landroid/app/Activity;)Lnz3;",
        "Landroid/content/Context;",
        "context",
        "(Landroid/content/Context;)Lnz3;",
        "Ljava/util/concurrent/Executor;",
        "executor",
        "Landroidx/core/util/Consumer;",
        "consumer",
        "Lzfb;",
        "addWindowLayoutInfoListener",
        "(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V",
        "(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V",
        "removeWindowLayoutInfoListener",
        "(Landroidx/core/util/Consumer;)V",
        "Landroidx/window/layout/WindowInfoTracker;",
        "Landroidx/window/java/core/CallbackToFlowAdapter;",
        "window-java_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final callbackToFlowAdapter:Landroidx/window/java/core/CallbackToFlowAdapter;

.field private final tracker:Landroidx/window/layout/WindowInfoTracker;


# direct methods
.method public constructor <init>(Landroidx/window/layout/WindowInfoTracker;)V
    .locals 1

    const-string/jumbo v0, "tracker"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Landroidx/window/java/core/CallbackToFlowAdapter;

    invoke-direct {v0}, Landroidx/window/java/core/CallbackToFlowAdapter;-><init>()V

    invoke-direct {p0, p1, v0}, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;-><init>(Landroidx/window/layout/WindowInfoTracker;Landroidx/window/java/core/CallbackToFlowAdapter;)V

    return-void
.end method

.method private constructor <init>(Landroidx/window/layout/WindowInfoTracker;Landroidx/window/java/core/CallbackToFlowAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;->tracker:Landroidx/window/layout/WindowInfoTracker;

    .line 3
    iput-object p2, p0, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;->callbackToFlowAdapter:Landroidx/window/java/core/CallbackToFlowAdapter;

    return-void
.end method


# virtual methods
.method public final addWindowLayoutInfoListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/core/util/Consumer<",
            "Landroidx/window/layout/WindowLayoutInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consumer"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;->callbackToFlowAdapter:Landroidx/window/java/core/CallbackToFlowAdapter;

    iget-object p0, p0, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;->tracker:Landroidx/window/layout/WindowInfoTracker;

    invoke-interface {p0, p1}, Landroidx/window/layout/WindowInfoTracker;->windowLayoutInfo(Landroid/app/Activity;)Lnz3;

    move-result-object p0

    invoke-virtual {v0, p2, p3, p0}, Landroidx/window/java/core/CallbackToFlowAdapter;->connect(Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;Lnz3;)V

    return-void
.end method

.method public final addWindowLayoutInfoListener(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/core/util/Consumer<",
            "Landroidx/window/layout/WindowLayoutInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consumer"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;->callbackToFlowAdapter:Landroidx/window/java/core/CallbackToFlowAdapter;

    iget-object p0, p0, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;->tracker:Landroidx/window/layout/WindowInfoTracker;

    invoke-interface {p0, p1}, Landroidx/window/layout/WindowInfoTracker;->windowLayoutInfo(Landroid/content/Context;)Lnz3;

    move-result-object p0

    invoke-virtual {v0, p2, p3, p0}, Landroidx/window/java/core/CallbackToFlowAdapter;->connect(Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;Lnz3;)V

    return-void
.end method

.method public final removeWindowLayoutInfoListener(Landroidx/core/util/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroidx/window/layout/WindowLayoutInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "consumer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;->callbackToFlowAdapter:Landroidx/window/java/core/CallbackToFlowAdapter;

    invoke-virtual {p0, p1}, Landroidx/window/java/core/CallbackToFlowAdapter;->disconnect(Landroidx/core/util/Consumer;)V

    return-void
.end method

.method public windowLayoutInfo(Landroid/app/Activity;)Lnz3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lnz3;"
        }
    .end annotation

    .line 1
    const-string v0, "activity"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;->tracker:Landroidx/window/layout/WindowInfoTracker;

    invoke-interface {p0, p1}, Landroidx/window/layout/WindowInfoTracker;->windowLayoutInfo(Landroid/app/Activity;)Lnz3;

    move-result-object p0

    return-object p0
.end method

.method public windowLayoutInfo(Landroid/content/Context;)Lnz3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lnz3;"
        }
    .end annotation

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;->tracker:Landroidx/window/layout/WindowInfoTracker;

    invoke-interface {p0, p1}, Landroidx/window/layout/WindowInfoTracker;->windowLayoutInfo(Landroid/content/Context;)Lnz3;

    move-result-object p0

    return-object p0
.end method
