.class final Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/util/NetworkTypeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ListenerHolder"
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final listener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/media3/common/util/NetworkTypeObserver$Listener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/media3/common/util/NetworkTypeObserver;


# direct methods
.method public constructor <init>(Landroidx/media3/common/util/NetworkTypeObserver;Landroidx/media3/common/util/NetworkTypeObserver$Listener;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;->this$0:Landroidx/media3/common/util/NetworkTypeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;->listener:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic a(Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;->lambda$callOnNetworkTypeChanged$0()V

    return-void
.end method

.method private synthetic lambda$callOnNetworkTypeChanged$0()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/util/NetworkTypeObserver$Listener;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;->this$0:Landroidx/media3/common/util/NetworkTypeObserver;

    invoke-virtual {p0}, Landroidx/media3/common/util/NetworkTypeObserver;->getNetworkType()I

    move-result p0

    invoke-interface {v0, p0}, Landroidx/media3/common/util/NetworkTypeObserver$Listener;->onNetworkTypeChanged(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public callOnNetworkTypeChanged()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/media3/common/util/a;

    invoke-direct {v1, p0}, Landroidx/media3/common/util/a;-><init>(Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public canBeRemoved()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
