.class public Lcom/transsion/utils/NetworkObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public b:Landroid/content/Context;

.field public c:Ljava/util/concurrent/ConcurrentHashMap;

.field public d:Lpz6;

.field public e:Lvz6;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/utils/NetworkObserver;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/transsion/utils/NetworkObserver$a;

    invoke-direct {v0, p0}, Lcom/transsion/utils/NetworkObserver$a;-><init>(Lcom/transsion/utils/NetworkObserver;)V

    iput-object v0, p0, Lcom/transsion/utils/NetworkObserver;->e:Lvz6;

    iput-object p1, p0, Lcom/transsion/utils/NetworkObserver;->b:Landroid/content/Context;

    new-instance v0, Lpz6;

    iget-object v1, p0, Lcom/transsion/utils/NetworkObserver;->e:Lvz6;

    invoke-direct {v0, p1, v1}, Lpz6;-><init>(Landroid/content/Context;Lvz6;)V

    iput-object v0, p0, Lcom/transsion/utils/NetworkObserver;->d:Lpz6;

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/utils/NetworkObserver;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/transsion/utils/NetworkObserver;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method


# virtual methods
.method public b(Ljava/lang/String;Lvz6;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/utils/NetworkObserver;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/utils/NetworkObserver;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/transsion/utils/NetworkObserver;->d:Lpz6;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/utils/NetworkObserver;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/transsion/utils/NetworkObserver;->d:Lpz6;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    sget-object p1, Lcom/transsion/utils/NetworkObserver$b;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/utils/NetworkObserver;->d()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/utils/NetworkObserver;->c()V

    :goto_0
    return-void
.end method
