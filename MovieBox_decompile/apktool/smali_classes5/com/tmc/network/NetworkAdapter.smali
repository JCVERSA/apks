.class public final Lcom/tmc/network/NetworkAdapter;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\u0008J\u0008\u0010\t\u001a\u00020\u0008H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/tmc/network/NetworkAdapter;",
        "",
        "()V",
        "MAX_PRE_CONNECT",
        "",
        "isInit",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "init",
        "",
        "startPreConnect",
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


# static fields
.field public static final INSTANCE:Lcom/tmc/network/NetworkAdapter;

.field private static final MAX_PRE_CONNECT:I = 0x3

.field private static final isInit:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/tmc/network/NetworkAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tmc/network/NetworkAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/tmc/network/NetworkAdapter;->INSTANCE:Lcom/tmc/network/NetworkAdapter;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/tmc/network/NetworkAdapter;->isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/tmc/network/NetworkAdapter;->startPreConnect$lambda-0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final startPreConnect()V
    .locals 2

    .line 1
    sget-object v0, Lcom/tmc/network/NetworkConfig;->INSTANCE:Lcom/tmc/network/NetworkConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tmc/network/NetworkConfig;->isNetworkImproveEnable()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    sget-object v0, Lrf/b;->a:Lrf/b;

    .line 10
    .line 11
    const-string v1, "isNetworkImprove is disable."

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lrf/b;->c(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {v0}, Lcom/tmc/network/NetworkConfig;->getPreConnectList()Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    sget-object v0, Lrf/b;->a:Lrf/b;

    .line 28
    .line 29
    const-string v1, "preConnectList is empty"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lrf/b;->c(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    sget-object v0, Lrf/c;->c:Lrf/c$a;

    .line 36
    .line 37
    invoke-virtual {v0}, Lrf/c$a;->a()Lrf/c;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    new-instance v1, Lcom/tmc/network/a;

    .line 45
    .line 46
    invoke-direct {v1}, Lcom/tmc/network/a;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lrf/c;->a(Ljava/lang/Runnable;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method

.method private static final startPreConnect$lambda-0()V
    .locals 5

    .line 1
    sget-object v0, Lcom/tmc/network/NetworkConfig;->INSTANCE:Lcom/tmc/network/NetworkConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tmc/network/NetworkConfig;->getPreConnectList()Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/String;

    .line 23
    .line 24
    const/4 v3, 0x3

    .line 25
    if-lt v1, v3, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    new-instance v3, Lcom/tmc/network/strategy/c;

    .line 29
    .line 30
    const-string v4, "url"

    .line 31
    .line 32
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {v3, v2}, Lcom/tmc/network/strategy/c;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/tmc/network/strategy/c;->a()V

    .line 39
    .line 40
    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public final init()V
    .locals 3

    .line 1
    sget-object v0, Lrf/b;->a:Lrf/b;

    .line 2
    .line 3
    const-string v1, "NetworkAdapter init"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lrf/b;->c(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/tmc/network/NetworkAdapter;->isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/tmc/network/NetworkAdapter;->startPreConnect()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
