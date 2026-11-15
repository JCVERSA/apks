.class final Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bumptech/glide/manager/ConnectivityMonitor;


# instance fields
.field private final context:Landroid/content/Context;

.field final listener:Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->context:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->listener:Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;

    .line 11
    .line 12
    return-void
.end method

.method private register()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->get(Landroid/content/Context;)Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->listener:Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->register(Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private unregister()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->get(Landroid/content/Context;)Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->listener:Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver;->unregister(Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 0

    .line 1
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->register()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->unregister()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
