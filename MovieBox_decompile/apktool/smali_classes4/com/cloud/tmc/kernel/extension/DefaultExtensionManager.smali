.class public Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/extension/ExtensionManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager$ExtensionCreator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TmcKernel:ExtensionManager"

.field private static sExtensionCreator:Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager$ExtensionCreator;


# instance fields
.field private final mExtensionFilterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;",
            "Lcom/cloud/tmc/kernel/extension/ExtensionFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mExtensionRegistry:Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;

.field private final mExtensionSorterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;",
            "Ljava/util/Comparator;",
            ">;"
        }
    .end annotation
.end field

.field private final mNodeExtensionDynamicMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/cloud/tmc/kernel/node/Node;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mNodeExtensionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/cloud/tmc/kernel/node/Node;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSingletonExtensionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mExtensionFilterMap:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mExtensionSorterMap:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mSingletonExtensionMap:Ljava/util/Map;

    .line 24
    .line 25
    new-instance v0, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mNodeExtensionMap:Ljava/util/Map;

    .line 31
    .line 32
    new-instance v0, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mNodeExtensionDynamicMap:Ljava/util/Map;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mExtensionRegistry:Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;

    .line 40
    .line 41
    return-void
.end method

.method private static createExtensionInstance(Ljava/lang/Class;)Lcom/cloud/tmc/kernel/extension/Extension;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;)",
            "Lcom/cloud/tmc/kernel/extension/Extension;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "createExtensionInstance "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "TmcKernel:ExtensionManager"

    .line 23
    .line 24
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object v0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->sExtensionCreator:Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager$ExtensionCreator;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-interface {v0, p0}, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager$ExtensionCreator;->createExtensionInstance(Ljava/lang/Class;)Lcom/cloud/tmc/kernel/extension/Extension;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Lcom/cloud/tmc/kernel/extension/Extension;

    .line 41
    .line 42
    :goto_0
    invoke-interface {p0}, Lcom/cloud/tmc/kernel/extension/Extension;->onInitialized()V

    .line 43
    .line 44
    .line 45
    return-object p0
.end method

.method private declared-synchronized findExtensions(Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/Class;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/kernel/node/Node;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;)",
            "Ljava/util/List<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mExtensionRegistry:Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;

    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-interface {v0, p2}, Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;->findExtensions(Ljava/lang/String;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    const/4 p1, 0x0

    .line 16
    return-object p1

    .line 17
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/LinkedList;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_4

    .line 31
    .line 32
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/Class;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mExtensionRegistry:Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;

    .line 39
    .line 40
    invoke-interface {v2, v1}, Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;->getScope(Ljava/lang/Class;)Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-nez v2, :cond_2

    .line 45
    .line 46
    iget-object v2, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mSingletonExtensionMap:Ljava/util/Map;

    .line 47
    .line 48
    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->getExtension(Ljava/util/Map;Ljava/lang/Class;)Lcom/cloud/tmc/kernel/extension/Extension;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    move-object v3, p1

    .line 61
    :goto_1
    if-eqz v3, :cond_3

    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-nez v4, :cond_3

    .line 72
    .line 73
    invoke-interface {v3}, Lcom/cloud/tmc/kernel/node/Node;->getParentNode()Lcom/cloud/tmc/kernel/node/Node;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    if-eqz v3, :cond_1

    .line 79
    .line 80
    iget-object v2, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mNodeExtensionMap:Ljava/util/Map;

    .line 81
    .line 82
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    check-cast v2, Ljava/util/Map;

    .line 87
    .line 88
    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->getExtension(Ljava/util/Map;Ljava/lang/Class;)Lcom/cloud/tmc/kernel/extension/Extension;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    if-eqz v1, :cond_1

    .line 93
    .line 94
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_4
    monitor-exit p0

    .line 99
    return-object v0

    .line 100
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    throw p1
.end method

.method private getDynamicExtensionByPoint(Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/kernel/node/Node;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    :goto_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mNodeExtensionDynamicMap:Ljava/util/Map;

    .line 9
    .line 10
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mNodeExtensionDynamicMap:Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/util/Map;

    .line 23
    .line 24
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/util/List;

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/node/Node;->getParentNode()Lcom/cloud/tmc/kernel/node/Node;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return-object v0
.end method

.method private static getExtension(Ljava/util/Map;Ljava/lang/Class;)Lcom/cloud/tmc/kernel/extension/Extension;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;)",
            "Lcom/cloud/tmc/kernel/extension/Extension;"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/cloud/tmc/kernel/extension/Extension;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    :try_start_0
    invoke-static {p1}, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->createExtensionInstance(Ljava/lang/Class;)Lcom/cloud/tmc/kernel/extension/Extension;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p1, " failed to initialize"

    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string v1, "TmcKernel:ExtensionManager"

    .line 49
    .line 50
    invoke-static {v1, p1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_0
    return-object v0

    .line 54
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 55
    return-object p0
.end method

.method public static setExtensionCreator(Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager$ExtensionCreator;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->sExtensionCreator:Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager$ExtensionCreator;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public declared-synchronized enterNode(Lcom/cloud/tmc/kernel/node/Node;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "TmcKernel:ExtensionManager"

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v2, "enterNode "

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mNodeExtensionMap:Ljava/util/Map;

    .line 25
    .line 26
    new-instance v1, Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    monitor-exit p0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    throw p1
.end method

.method public declared-synchronized exitNode(Lcom/cloud/tmc/kernel/node/Node;)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "TmcKernel:ExtensionManager"

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v2, "exitNode "

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mNodeExtensionMap:Ljava/util/Map;

    .line 25
    .line 26
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/util/Map;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Lcom/cloud/tmc/kernel/extension/Extension;

    .line 53
    .line 54
    const-string v3, "TmcKernel:ExtensionManager"

    .line 55
    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v5, "exitNode finalize"

    .line 62
    .line 63
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-interface {v2}, Lcom/cloud/tmc/kernel/extension/Extension;->onFinalized()V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception p1

    .line 81
    goto :goto_2

    .line 82
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 83
    .line 84
    .line 85
    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mNodeExtensionDynamicMap:Ljava/util/Map;

    .line 86
    .line 87
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Ljava/util/Map;

    .line 92
    .line 93
    if-eqz p1, :cond_4

    .line 94
    .line 95
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_3

    .line 108
    .line 109
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    check-cast v1, Ljava/util/List;

    .line 114
    .line 115
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-eqz v2, :cond_2

    .line 124
    .line 125
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    check-cast v2, Lcom/cloud/tmc/kernel/extension/Extension;

    .line 130
    .line 131
    const-string v3, "TmcKernel:ExtensionManager"

    .line 132
    .line 133
    new-instance v4, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string v5, "exitNode finalize"

    .line 139
    .line 140
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-interface {v2}, Lcom/cloud/tmc/kernel/extension/Extension;->onFinalized()V

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_3
    invoke-interface {p1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    .line 159
    .line 160
    :cond_4
    monitor-exit p0

    .line 161
    return-void

    .line 162
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    throw p1
.end method

.method public findActionMeta(Ljava/lang/String;)Lcom/cloud/tmc/kernel/extension/action/ActionMeta;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mExtensionRegistry:Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;->findActionMeta(Ljava/lang/String;)Lcom/cloud/tmc/kernel/extension/action/ActionMeta;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public declared-synchronized getBridgeExtensionByAction(Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;)Lcom/cloud/tmc/kernel/extension/BridgeExtension;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    .line 9
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->getBridgeExtensionByAction(Ljava/lang/String;)Lcom/cloud/tmc/kernel/extension/BridgeExtension;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 10
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mExtensionRegistry:Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;

    invoke-interface {v0, p2}, Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;->findActionMeta(Ljava/lang/String;)Lcom/cloud/tmc/kernel/extension/action/ActionMeta;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 11
    iget-object v1, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mExtensionRegistry:Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;

    iget-object v2, v0, Lcom/cloud/tmc/kernel/extension/action/ActionMeta;->bridgeExtensionClazz:Ljava/lang/Class;

    invoke-interface {v1, v2}, Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;->getScope(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_1

    .line 12
    invoke-virtual {p0, p2}, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->getBridgeExtensionByAction(Ljava/lang/String;)Lcom/cloud/tmc/kernel/extension/BridgeExtension;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 13
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 14
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/node/Node;->getParentNode()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->getBridgeExtensionByAction(Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;)Lcom/cloud/tmc/kernel/extension/BridgeExtension;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 15
    :cond_2
    :try_start_3
    iget-object p2, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mNodeExtensionMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_4

    .line 16
    iget-object p2, v0, Lcom/cloud/tmc/kernel/extension/action/ActionMeta;->bridgeExtensionClazz:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 17
    iget-object p2, v0, Lcom/cloud/tmc/kernel/extension/action/ActionMeta;->bridgeExtensionClazz:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/extension/BridgeExtension;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    .line 18
    :cond_3
    :try_start_4
    iget-object p2, v0, Lcom/cloud/tmc/kernel/extension/action/ActionMeta;->bridgeExtensionClazz:Ljava/lang/Class;

    invoke-static {p2}, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->createExtensionInstance(Ljava/lang/Class;)Lcom/cloud/tmc/kernel/extension/Extension;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/kernel/extension/BridgeExtension;

    .line 19
    iget-object v0, v0, Lcom/cloud/tmc/kernel/extension/action/ActionMeta;->bridgeExtensionClazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 20
    monitor-exit p0

    return-object p2

    .line 21
    :cond_4
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_0
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public declared-synchronized getBridgeExtensionByAction(Ljava/lang/String;)Lcom/cloud/tmc/kernel/extension/BridgeExtension;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mExtensionRegistry:Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;

    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;->findActionMeta(Ljava/lang/String;)Lcom/cloud/tmc/kernel/extension/action/ActionMeta;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez p1, :cond_0

    .line 2
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mSingletonExtensionMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/cloud/tmc/kernel/extension/action/ActionMeta;->bridgeExtensionClazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/extension/BridgeExtension;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v0, :cond_1

    .line 4
    monitor-exit p0

    return-object v0

    .line 5
    :cond_1
    :try_start_2
    iget-object v1, p1, Lcom/cloud/tmc/kernel/extension/action/ActionMeta;->bridgeExtensionClazz:Ljava/lang/Class;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->createExtensionInstance(Ljava/lang/Class;)Lcom/cloud/tmc/kernel/extension/Extension;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/extension/BridgeExtension;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6
    :try_start_3
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mSingletonExtensionMap:Ljava/util/Map;

    iget-object p1, p1, Lcom/cloud/tmc/kernel/extension/action/ActionMeta;->bridgeExtensionClazz:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 7
    :goto_0
    :try_start_4
    const-string v1, "TmcKernel:ExtensionManager"

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v1, v0

    .line 8
    :goto_1
    monitor-exit p0

    return-object v1

    :catchall_2
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1
.end method

.method public getExtensionByName(Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;)Lcom/cloud/tmc/kernel/extension/Extension;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mExtensionRegistry:Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-interface {v0, p2}, Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;->getExtensionClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v2, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mExtensionRegistry:Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;

    .line 11
    .line 12
    invoke-interface {v2, p2}, Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;->getScope(Ljava/lang/String;)Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mSingletonExtensionMap:Ljava/util/Map;

    .line 19
    .line 20
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->getExtension(Ljava/util/Map;Ljava/lang/Class;)Lcom/cloud/tmc/kernel/extension/Extension;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    goto :goto_1

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_2

    .line 27
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p2, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/node/Node;->getParentNode()Lcom/cloud/tmc/kernel/node/Node;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    if-eqz p1, :cond_2

    .line 45
    .line 46
    iget-object p2, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mNodeExtensionMap:Ljava/util/Map;

    .line 47
    .line 48
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Ljava/util/Map;

    .line 53
    .line 54
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->getExtension(Ljava/util/Map;Ljava/lang/Class;)Lcom/cloud/tmc/kernel/extension/Extension;

    .line 55
    .line 56
    .line 57
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_2
    :goto_1
    return-object v1

    .line 59
    :goto_2
    const-string p2, "TmcKernel:ExtensionManager"

    .line 60
    .line 61
    const-string v0, "getExtensionByName"

    .line 62
    .line 63
    invoke-static {p2, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    return-object v1

    .line 67
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    .line 68
    .line 69
    const-string p2, "ExtensionRegistry not setup"

    .line 70
    .line 71
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p1
.end method

.method public getExtensionByPoint(Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/Class;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/kernel/node/Node;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mExtensionRegistry:Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;

    if-eqz v0, :cond_6

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getExtensionByPoint "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TmcKernel:ExtensionManager"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->findExtensions(Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->getDynamicExtensionByPoint(Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot find extension by point: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mExtensionFilterMap:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/extension/ExtensionFilter;

    if-eqz p1, :cond_3

    .line 12
    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/extension/ExtensionFilter;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mExtensionSorterMap:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    if-eqz p1, :cond_4

    .line 14
    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 15
    :cond_4
    const-class p1, Lcom/cloud/tmc/kernel/extension/SimpleSorter;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 16
    new-instance p1, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager$1;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager$1;-><init>(Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_5
    :goto_0
    return-object v0

    .line 17
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "ExtensionRegistry not setup"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getExtensionByPoint(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->getExtensionByPoint(Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getExtensionRegistry()Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mExtensionRegistry:Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNodeExtensionMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/cloud/tmc/kernel/node/Node;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mNodeExtensionMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSingletonExtensionMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mSingletonExtensionMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public registerExtensionByPoint(Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/Class;Lcom/cloud/tmc/kernel/extension/Extension;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">(",
            "Lcom/cloud/tmc/kernel/node/Node;",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mNodeExtensionDynamicMap:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/util/Map;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->mNodeExtensionDynamicMap:Ljava/util/Map;

    .line 19
    .line 20
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ljava/util/List;

    .line 28
    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    :cond_2
    return-void
.end method
