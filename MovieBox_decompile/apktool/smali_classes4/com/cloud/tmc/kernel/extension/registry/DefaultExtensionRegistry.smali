.class public Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;


# static fields
.field private static final TAG:Ljava/lang/String; = "TmcKernel:DefaultExtensionRegistry"


# instance fields
.field private mBridgeExtensionRegistry:Lcom/cloud/tmc/kernel/extension/registry/BridgeExtensionRegistry;

.field private final mClassNameScopeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/node/Scope;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mExtensionClassRegisteredSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mExtensionMetaInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPointToExtensionClazzMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mPointToMetaInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mExtensionClassRegisteredSet:Ljava/util/Set;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mPointToMetaInfoMap:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mPointToExtensionClazzMap:Ljava/util/Map;

    .line 24
    .line 25
    new-instance v0, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mClassNameScopeMap:Ljava/util/Map;

    .line 31
    .line 32
    new-instance v0, Ljava/util/LinkedList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mExtensionMetaInfoList:Ljava/util/List;

    .line 38
    .line 39
    new-instance v0, Lcom/cloud/tmc/kernel/extension/registry/BridgeExtensionRegistry;

    .line 40
    .line 41
    invoke-direct {v0}, Lcom/cloud/tmc/kernel/extension/registry/BridgeExtensionRegistry;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mBridgeExtensionRegistry:Lcom/cloud/tmc/kernel/extension/registry/BridgeExtensionRegistry;

    .line 45
    .line 46
    return-void
.end method

.method private collectExtensionPoint(Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;>;)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;>;"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    new-instance p2, Ljava/util/LinkedList;

    .line 4
    .line 5
    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    array-length v1, v0

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    const-class v3, Lcom/cloud/tmc/kernel/extension/Extension;

    .line 15
    .line 16
    if-ge v2, v1, :cond_2

    .line 17
    .line 18
    aget-object v4, v0, v2

    .line 19
    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->collectExtensionPoint(Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    return-object p1

    .line 51
    :cond_3
    return-object p2
.end method

.method private putScope(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/node/Scope;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->putScope(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method private putScope(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/node/Scope;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mClassNameScopeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mClassNameScopeMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method protected createExtensionInstance(Ljava/lang/Class;)Lcom/cloud/tmc/kernel/extension/Extension;
    .locals 0
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
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/cloud/tmc/kernel/extension/Extension;

    .line 6
    .line 7
    return-object p1
.end method

.method public findActionMeta(Ljava/lang/String;)Lcom/cloud/tmc/kernel/extension/action/ActionMeta;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mBridgeExtensionRegistry:Lcom/cloud/tmc/kernel/extension/registry/BridgeExtensionRegistry;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/kernel/extension/registry/BridgeExtensionRegistry;->findActionMeta(Ljava/lang/String;)Lcom/cloud/tmc/kernel/extension/action/ActionMeta;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public findExtensions(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mPointToMetaInfoMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;

    .line 26
    .line 27
    iget-object v2, v1, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->bundleName:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v3, v1, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->extensionClass:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/utils/ClassLoaderUtils;->loadClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    const-string v2, "TmcKernel:DefaultExtensionRegistry"

    .line 38
    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v4, "load meta "

    .line 45
    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v1, v1, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->extensionClass:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, " error!"

    .line 55
    .line 56
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    iget-object v3, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mExtensionClassRegisteredSet:Ljava/util/Set;

    .line 68
    .line 69
    monitor-enter v3

    .line 70
    :try_start_0
    iget-object v4, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mExtensionClassRegisteredSet:Ljava/util/Set;

    .line 71
    .line 72
    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_1

    .line 77
    .line 78
    monitor-exit v3

    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception p1

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    iget-object v1, v1, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->scope:Ljava/lang/Class;

    .line 84
    .line 85
    invoke-virtual {p0, v2, v1}, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    throw p1

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mPointToMetaInfoMap:Ljava/util/Map;

    .line 92
    .line 93
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    :cond_3
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mPointToExtensionClazzMap:Ljava/util/Map;

    .line 97
    .line 98
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Ljava/util/List;

    .line 103
    .line 104
    return-object p1
.end method

.method public getActionCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mBridgeExtensionRegistry:Lcom/cloud/tmc/kernel/extension/registry/BridgeExtensionRegistry;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/extension/registry/BridgeExtensionRegistry;->getRegisteredActionCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getExtensionClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mExtensionClassRegisteredSet:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/Class;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    return-object v1

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mExtensionMetaInfoList:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;

    .line 47
    .line 48
    iget-object v2, v1, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->extensionClass:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    iget-object p1, v1, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->bundleName:Ljava/lang/String;

    .line 57
    .line 58
    iget-object v0, v1, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->extensionClass:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/utils/ClassLoaderUtils;->loadClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    return-object p1

    .line 65
    :cond_3
    const/4 p1, 0x0

    .line 66
    return-object p1
.end method

.method public getScope(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;)",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/node/Scope;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->getScope(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public getScope(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/node/Scope;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mClassNameScopeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    return-object p1
.end method

.method public declared-synchronized register(Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;)V
    .locals 4

    monitor-enter p0

    .line 26
    :try_start_0
    iget-object v0, p1, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->type:Lcom/cloud/tmc/kernel/extension/ExtensionType;

    sget-object v1, Lcom/cloud/tmc/kernel/extension/ExtensionType;->BRIDGE:Lcom/cloud/tmc/kernel/extension/ExtensionType;

    if-ne v0, v1, :cond_0

    .line 27
    const-string v0, "TmcKernel:DefaultExtensionRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register meta: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->extensionClass:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 28
    :cond_0
    const-string v0, "TmcKernel:DefaultExtensionRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register meta: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->extensionClass:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :goto_0
    iget-boolean v0, p1, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->isLazy:Z

    if-nez v0, :cond_1

    .line 30
    iget-object v0, p1, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->bundleName:Ljava/lang/String;

    iget-object v2, p1, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->extensionClass:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/utils/ClassLoaderUtils;->loadClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    .line 31
    :cond_1
    sget-object v0, Lcom/cloud/tmc/kernel/extension/ExtensionType;->NORMAL:Lcom/cloud/tmc/kernel/extension/ExtensionType;

    iget-object v2, p1, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->type:Lcom/cloud/tmc/kernel/extension/ExtensionType;

    if-ne v0, v2, :cond_3

    .line 32
    iget-object v0, p1, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->filter:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 33
    iget-object v0, p1, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->filter:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 34
    iget-object v2, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mPointToMetaInfoMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_2

    .line 35
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 36
    :cond_2
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v3, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mPointToMetaInfoMap:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    if-ne v1, v2, :cond_4

    .line 38
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mBridgeExtensionRegistry:Lcom/cloud/tmc/kernel/extension/registry/BridgeExtensionRegistry;

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/kernel/extension/registry/BridgeExtensionRegistry;->register(Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;)V

    .line 39
    :cond_4
    iget-object v0, p1, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->extensionClass:Ljava/lang/String;

    iget-object v1, p1, Lcom/cloud/tmc/kernel/extension/registry/ExtensionMetaInfo;->scope:Ljava/lang/Class;

    invoke-direct {p0, v0, v1}, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->putScope(Ljava/lang/String;Ljava/lang/Class;)V

    .line 40
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mExtensionMetaInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized register(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized register(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/node/Scope;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 3
    :try_start_0
    const-class v0, Lcom/cloud/tmc/kernel/extension/BridgeExtension;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 4
    :try_start_1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mBridgeExtensionRegistry:Lcom/cloud/tmc/kernel/extension/registry/BridgeExtensionRegistry;

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/kernel/extension/registry/BridgeExtensionRegistry;->register(Ljava/lang/Class;)V

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->putScope(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_2
    const-string v1, "TmcKernel:DefaultExtensionRegistry"

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_1
    move-exception p1

    goto/16 :goto_3

    .line 8
    :cond_0
    :goto_0
    const-class v0, Lcom/cloud/tmc/kernel/extension/Extension;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    const-string p2, "TmcKernel:DefaultExtensionRegistry"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not valid extension"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 10
    monitor-exit p0

    return-void

    .line 11
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mExtensionClassRegisteredSet:Ljava/util/Set;

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 12
    :try_start_4
    iget-object v1, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mExtensionClassRegisteredSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    const-string p2, "TmcKernel:DefaultExtensionRegistry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extension "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is already registered"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    goto :goto_2

    .line 15
    :cond_2
    :try_start_5
    iget-object v1, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mExtensionClassRegisteredSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v0, 0x0

    .line 17
    :try_start_6
    invoke-direct {p0, p1, v0}, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->collectExtensionPoint(Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 19
    iget-object v2, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mPointToExtensionClazzMap:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_3

    .line 20
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 21
    :cond_3
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v3, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mPointToExtensionClazzMap:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 23
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->putScope(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 24
    monitor-exit p0

    return-void

    .line 25
    :goto_2
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw p1

    :goto_3
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw p1
.end method

.method public unRegister(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/extension/registry/DefaultExtensionRegistry;->mBridgeExtensionRegistry:Lcom/cloud/tmc/kernel/extension/registry/BridgeExtensionRegistry;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/kernel/extension/registry/BridgeExtensionRegistry;->unRegister(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
