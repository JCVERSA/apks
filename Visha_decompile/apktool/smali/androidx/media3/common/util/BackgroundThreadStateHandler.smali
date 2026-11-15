.class public final Landroidx/media3/common/util/BackgroundThreadStateHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/util/BackgroundThreadStateHandler$StateChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final backgroundHandler:Landroidx/media3/common/util/HandlerWrapper;

.field private backgroundState:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final foregroundHandler:Landroidx/media3/common/util/HandlerWrapper;

.field private foregroundState:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final onStateChanged:Landroidx/media3/common/util/BackgroundThreadStateHandler$StateChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/util/BackgroundThreadStateHandler$StateChangeListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private pendingOperations:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/os/Looper;Landroid/os/Looper;Landroidx/media3/common/util/Clock;Landroidx/media3/common/util/BackgroundThreadStateHandler$StateChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Looper;",
            "Landroid/os/Looper;",
            "Landroidx/media3/common/util/Clock;",
            "Landroidx/media3/common/util/BackgroundThreadStateHandler$StateChangeListener<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p4, p2, v0}, Landroidx/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->backgroundHandler:Landroidx/media3/common/util/HandlerWrapper;

    invoke-interface {p4, p3, v0}, Landroidx/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->foregroundHandler:Landroidx/media3/common/util/HandlerWrapper;

    iput-object p1, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->foregroundState:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->backgroundState:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->onStateChanged:Landroidx/media3/common/util/BackgroundThreadStateHandler$StateChangeListener;

    return-void
.end method

.method public static synthetic a(Landroidx/media3/common/util/BackgroundThreadStateHandler;Lo74;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->lambda$updateStateAsync$1(Lo74;)V

    return-void
.end method

.method public static synthetic b(Landroidx/media3/common/util/BackgroundThreadStateHandler;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->lambda$setStateInBackground$2(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic c(Landroidx/media3/common/util/BackgroundThreadStateHandler;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->lambda$updateStateAsync$0(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setStateInBackground$2(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->pendingOperations:I

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->updateStateInForeground(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateStateAsync$0(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->pendingOperations:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->pendingOperations:I

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->updateStateInForeground(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateStateAsync$1(Lo74;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->backgroundState:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lo74;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->backgroundState:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->foregroundHandler:Landroidx/media3/common/util/HandlerWrapper;

    new-instance v1, Lh50;

    invoke-direct {v1, p0, p1}, Lh50;-><init>(Landroidx/media3/common/util/BackgroundThreadStateHandler;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateStateInForeground(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->foregroundState:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->foregroundState:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->onStateChanged:Landroidx/media3/common/util/BackgroundThreadStateHandler$StateChangeListener;

    invoke-interface {p0, v0, p1}, Landroidx/media3/common/util/BackgroundThreadStateHandler$StateChangeListener;->onStateChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->foregroundHandler:Landroidx/media3/common/util/HandlerWrapper;

    invoke-interface {v1}, Landroidx/media3/common/util/HandlerWrapper;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->foregroundState:Ljava/lang/Object;

    return-object p0

    :cond_0
    iget-object v1, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->backgroundHandler:Landroidx/media3/common/util/HandlerWrapper;

    invoke-interface {v1}, Landroidx/media3/common/util/HandlerWrapper;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-object p0, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->backgroundState:Ljava/lang/Object;

    return-object p0
.end method

.method public runInBackground(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->backgroundHandler:Landroidx/media3/common/util/HandlerWrapper;

    invoke-interface {p0, p1}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setStateInBackground(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->backgroundState:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->foregroundHandler:Landroidx/media3/common/util/HandlerWrapper;

    new-instance v1, Lg50;

    invoke-direct {v1, p0, p1}, Lg50;-><init>(Landroidx/media3/common/util/BackgroundThreadStateHandler;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateStateAsync(Lo74;Lo74;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo74;",
            "Lo74;",
            ")V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->foregroundHandler:Landroidx/media3/common/util/HandlerWrapper;

    invoke-interface {v1}, Landroidx/media3/common/util/HandlerWrapper;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget v0, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->pendingOperations:I

    add-int/2addr v0, v2

    iput v0, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->pendingOperations:I

    iget-object v0, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->backgroundHandler:Landroidx/media3/common/util/HandlerWrapper;

    new-instance v1, Lf50;

    invoke-direct {v1, p0, p2}, Lf50;-><init>(Landroidx/media3/common/util/BackgroundThreadStateHandler;Lo74;)V

    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    iget-object p2, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->foregroundState:Ljava/lang/Object;

    invoke-interface {p1, p2}, Lo74;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->updateStateInForeground(Ljava/lang/Object;)V

    return-void
.end method
