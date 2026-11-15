.class public final Landroidx/window/java/area/WindowAreaControllerCallbackAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/window/area/WindowAreaController;


# annotations
.annotation build Landroidx/window/core/ExperimentalWindowApi;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006B\u0011\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0005\u0010\u0007J0\u0010\u0011\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0096\u0001\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J0\u0010\u0015\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u0013H\u0096\u0001\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J)\u0010\u001b\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000c2\u0012\u0010\u001a\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00190\u00180\u0017\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ!\u0010\u001d\u001a\u00020\u00102\u0012\u0010\u001a\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00190\u00180\u0017\u00a2\u0006\u0004\u0008\u001d\u0010\u001eR\u0014\u0010\u0002\u001a\u00020\u00018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0002\u0010\u001fR\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010 R \u0010$\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00190\u00180!8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010#\u00a8\u0006%"
    }
    d2 = {
        "Landroidx/window/java/area/WindowAreaControllerCallbackAdapter;",
        "Landroidx/window/area/WindowAreaController;",
        "controller",
        "Landroidx/window/java/core/CallbackToFlowAdapter;",
        "callbackToFlowAdapter",
        "<init>",
        "(Landroidx/window/area/WindowAreaController;Landroidx/window/java/core/CallbackToFlowAdapter;)V",
        "(Landroidx/window/area/WindowAreaController;)V",
        "Landroid/os/Binder;",
        "token",
        "Landroid/app/Activity;",
        "activity",
        "Ljava/util/concurrent/Executor;",
        "executor",
        "Landroidx/window/area/WindowAreaPresentationSessionCallback;",
        "windowAreaPresentationSessionCallback",
        "Lzfb;",
        "presentContentOnWindowArea",
        "(Landroid/os/Binder;Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/window/area/WindowAreaPresentationSessionCallback;)V",
        "Landroidx/window/area/WindowAreaSessionCallback;",
        "windowAreaSessionCallback",
        "transferActivityToWindowArea",
        "(Landroid/os/Binder;Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/window/area/WindowAreaSessionCallback;)V",
        "Landroidx/core/util/Consumer;",
        "",
        "Landroidx/window/area/WindowAreaInfo;",
        "listener",
        "addWindowAreaInfoListListener",
        "(Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V",
        "removeWindowAreaInfoListListener",
        "(Landroidx/core/util/Consumer;)V",
        "Landroidx/window/area/WindowAreaController;",
        "Landroidx/window/java/core/CallbackToFlowAdapter;",
        "Lnz3;",
        "getWindowAreaInfos",
        "()Lnz3;",
        "windowAreaInfos",
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

.field private final controller:Landroidx/window/area/WindowAreaController;


# direct methods
.method public constructor <init>(Landroidx/window/area/WindowAreaController;)V
    .locals 1

    const-string v0, "controller"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Landroidx/window/java/core/CallbackToFlowAdapter;

    invoke-direct {v0}, Landroidx/window/java/core/CallbackToFlowAdapter;-><init>()V

    invoke-direct {p0, p1, v0}, Landroidx/window/java/area/WindowAreaControllerCallbackAdapter;-><init>(Landroidx/window/area/WindowAreaController;Landroidx/window/java/core/CallbackToFlowAdapter;)V

    return-void
.end method

.method private constructor <init>(Landroidx/window/area/WindowAreaController;Landroidx/window/java/core/CallbackToFlowAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/window/java/area/WindowAreaControllerCallbackAdapter;->controller:Landroidx/window/area/WindowAreaController;

    .line 3
    iput-object p2, p0, Landroidx/window/java/area/WindowAreaControllerCallbackAdapter;->callbackToFlowAdapter:Landroidx/window/java/core/CallbackToFlowAdapter;

    return-void
.end method


# virtual methods
.method public final addWindowAreaInfoListListener(Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/core/util/Consumer<",
            "Ljava/util/List<",
            "Landroidx/window/area/WindowAreaInfo;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "executor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/window/java/area/WindowAreaControllerCallbackAdapter;->callbackToFlowAdapter:Landroidx/window/java/core/CallbackToFlowAdapter;

    iget-object p0, p0, Landroidx/window/java/area/WindowAreaControllerCallbackAdapter;->controller:Landroidx/window/area/WindowAreaController;

    invoke-interface {p0}, Landroidx/window/area/WindowAreaController;->getWindowAreaInfos()Lnz3;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p0}, Landroidx/window/java/core/CallbackToFlowAdapter;->connect(Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;Lnz3;)V

    return-void
.end method

.method public getWindowAreaInfos()Lnz3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnz3;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/window/java/area/WindowAreaControllerCallbackAdapter;->controller:Landroidx/window/area/WindowAreaController;

    invoke-interface {p0}, Landroidx/window/area/WindowAreaController;->getWindowAreaInfos()Lnz3;

    move-result-object p0

    return-object p0
.end method

.method public presentContentOnWindowArea(Landroid/os/Binder;Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/window/area/WindowAreaPresentationSessionCallback;)V
    .locals 1

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "windowAreaPresentationSessionCallback"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/window/java/area/WindowAreaControllerCallbackAdapter;->controller:Landroidx/window/area/WindowAreaController;

    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/window/area/WindowAreaController;->presentContentOnWindowArea(Landroid/os/Binder;Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/window/area/WindowAreaPresentationSessionCallback;)V

    return-void
.end method

.method public final removeWindowAreaInfoListListener(Landroidx/core/util/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Ljava/util/List<",
            "Landroidx/window/area/WindowAreaInfo;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/window/java/area/WindowAreaControllerCallbackAdapter;->callbackToFlowAdapter:Landroidx/window/java/core/CallbackToFlowAdapter;

    invoke-virtual {p0, p1}, Landroidx/window/java/core/CallbackToFlowAdapter;->disconnect(Landroidx/core/util/Consumer;)V

    return-void
.end method

.method public transferActivityToWindowArea(Landroid/os/Binder;Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/window/area/WindowAreaSessionCallback;)V
    .locals 1

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "windowAreaSessionCallback"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/window/java/area/WindowAreaControllerCallbackAdapter;->controller:Landroidx/window/area/WindowAreaController;

    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/window/area/WindowAreaController;->transferActivityToWindowArea(Landroid/os/Binder;Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/window/area/WindowAreaSessionCallback;)V

    return-void
.end method
