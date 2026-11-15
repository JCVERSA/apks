.class public final Lcom/tmc/network/strategy/LocalDnsStrategy$updateLocalDnsStrategy$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tmc/network/strategy/LocalDnsStrategy;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/tmc/network/strategy/LocalDnsStrategy$updateLocalDnsStrategy$1",
        "Ljava/lang/Runnable;",
        "run",
        "",
        "network_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tmc/network/strategy/LocalDnsStrategy;


# direct methods
.method constructor <init>(Lcom/tmc/network/strategy/LocalDnsStrategy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tmc/network/strategy/LocalDnsStrategy$updateLocalDnsStrategy$1;->this$0:Lcom/tmc/network/strategy/LocalDnsStrategy;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tmc/network/strategy/LocalDnsStrategy;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/tmc/network/NetworkMonitor;->INSTANCE:Lcom/tmc/network/NetworkMonitor;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/tmc/network/NetworkMonitor;->getNetworkId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/tmc/network/strategy/LocalDnsStrategy$updateLocalDnsStrategy$1;->this$0:Lcom/tmc/network/strategy/LocalDnsStrategy;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/tmc/network/strategy/LocalDnsStrategy;->c(Lcom/tmc/network/strategy/LocalDnsStrategy;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/tmc/network/strategy/StrategyTable;

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    sget-object v2, Lrf/b;->a:Lrf/b;

    .line 31
    .line 32
    const-string v3, "updateLocalDnsStrategy  table = "

    .line 33
    .line 34
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->q(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v2, v3}, Lrf/b;->c(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sget-object v2, Lqf/b;->a:Lqf/b;

    .line 42
    .line 43
    invoke-virtual {v2, v1, v0}, Lqf/b;->i(Ljava/io/Serializable;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    sget-object v1, Lrf/b;->a:Lrf/b;

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Lrf/b;->e(Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void
.end method
