.class public Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/cloud/tmc/kernel/extension/Extension;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static sDefaultMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private static sExtensionManager:Lcom/cloud/tmc/kernel/extension/ExtensionManager;


# instance fields
.field private invocationHandlerDoNothing:Ljava/lang/reflect/InvocationHandler;

.field private mActionPolicyHashMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/cloud/tmc/integration/invoke/action/Action;",
            "Lcom/cloud/tmc/kernel/executor/ExecutorType;",
            ">;"
        }
    .end annotation
.end field

.field private mCurPolicy:Lcom/cloud/tmc/kernel/executor/ExecutorType;

.field private mDefaultValue:Ljava/lang/Object;

.field private mExtensionClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mExtensionManager:Lcom/cloud/tmc/kernel/extension/ExtensionManager;

.field private mNode:Lcom/cloud/tmc/kernel/node/Node;

.field private mNullable:Z

.field private mResultResolver:Lcom/cloud/tmc/kernel/resolver/ResultResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->sDefaultMap:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->SYNC:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mCurPolicy:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mActionPolicyHashMap:Ljava/util/Map;

    .line 14
    .line 15
    new-instance v0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint$1;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint$1;-><init>(Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->invocationHandlerDoNothing:Ljava/lang/reflect/InvocationHandler;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mExtensionClazz:Ljava/lang/Class;

    .line 23
    .line 24
    return-void
.end method

.method static bridge synthetic a(Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mDefaultValue:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static as(Ljava/lang/Class;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;-><init>(Ljava/lang/Class;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static bind(Lcom/cloud/tmc/kernel/extension/ExtensionManager;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->sExtensionManager:Lcom/cloud/tmc/kernel/extension/ExtensionManager;

    .line 2
    .line 3
    return-void
.end method

.method private getDefaultImpl()Lcom/cloud/tmc/kernel/extension/Extension;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    const-string v0, "TmcKernel"

    .line 2
    .line 3
    :try_start_0
    sget-object v1, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->sDefaultMap:Ljava/util/Map;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mExtensionClazz:Ljava/lang/Class;

    .line 6
    .line 7
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    sget-object v1, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->sDefaultMap:Ljava/util/Map;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mExtensionClazz:Ljava/lang/Class;

    .line 16
    .line 17
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/cloud/tmc/kernel/extension/Extension;

    .line 22
    .line 23
    return-object v1

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v1, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mExtensionClazz:Ljava/lang/Class;

    .line 27
    .line 28
    const-class v2, Lcom/cloud/tmc/kernel/annotation/DefaultImpl;

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/cloud/tmc/kernel/annotation/DefaultImpl;

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/annotation/DefaultImpl;->value()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v3, "newInstance for "

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v3, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mExtensionClazz:Ljava/lang/Class;

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v3, " to defaultImpl: "

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Lcom/cloud/tmc/kernel/extension/Extension;

    .line 81
    .line 82
    sget-object v2, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->sDefaultMap:Ljava/util/Map;

    .line 83
    .line 84
    iget-object v3, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mExtensionClazz:Ljava/lang/Class;

    .line 85
    .line 86
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .line 88
    .line 89
    return-object v1

    .line 90
    :goto_0
    const-string v2, "getDefaultImpl exception!"

    .line 91
    .line 92
    invoke-static {v0, v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    :cond_1
    const/4 v0, 0x0

    .line 96
    return-object v0
.end method


# virtual methods
.method public actionOn(Lcom/cloud/tmc/kernel/executor/ExecutorType;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/kernel/executor/ExecutorType;",
            ")",
            "Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mCurPolicy:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    .line 2
    .line 3
    return-object p0
.end method

.method public create()Lcom/cloud/tmc/kernel/extension/Extension;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mExtensionManager:Lcom/cloud/tmc/kernel/extension/ExtensionManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->sExtensionManager:Lcom/cloud/tmc/kernel/extension/ExtensionManager;

    .line 7
    .line 8
    :goto_0
    iget-object v1, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mNode:Lcom/cloud/tmc/kernel/node/Node;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mExtensionClazz:Ljava/lang/Class;

    .line 11
    .line 12
    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/kernel/extension/ExtensionManager;->getExtensionByPoint(Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/Class;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_2

    .line 23
    .line 24
    :cond_1
    invoke-direct {p0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->getDefaultImpl()Lcom/cloud/tmc/kernel/extension/Extension;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :cond_2
    if-eqz v0, :cond_4

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_3
    const-class v1, Lcom/cloud/tmc/integration/invoke/ExtensionInvokerFactory;

    .line 44
    .line 45
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Lcom/cloud/tmc/integration/invoke/ExtensionInvokerFactory;

    .line 50
    .line 51
    new-instance v2, Lcom/cloud/tmc/integration/invoke/ResolveExtensionInvoker;

    .line 52
    .line 53
    iget-object v3, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mResultResolver:Lcom/cloud/tmc/kernel/resolver/ResultResolver;

    .line 54
    .line 55
    new-instance v4, Lcom/cloud/tmc/integration/invoke/AwareExtensionInvoker;

    .line 56
    .line 57
    iget-object v5, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mNode:Lcom/cloud/tmc/kernel/node/Node;

    .line 58
    .line 59
    new-instance v6, Lcom/cloud/tmc/integration/invoke/action/ActionCallback;

    .line 60
    .line 61
    iget-object v7, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mActionPolicyHashMap:Ljava/util/Map;

    .line 62
    .line 63
    iget-object v8, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mDefaultValue:Ljava/lang/Object;

    .line 64
    .line 65
    invoke-direct {v6, v7, v8}, Lcom/cloud/tmc/integration/invoke/action/ActionCallback;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {v4, v5, v6}, Lcom/cloud/tmc/integration/invoke/AwareExtensionInvoker;-><init>(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeCallback;)V

    .line 69
    .line 70
    .line 71
    invoke-direct {v2, v3, v4}, Lcom/cloud/tmc/integration/invoke/ResolveExtensionInvoker;-><init>(Lcom/cloud/tmc/kernel/resolver/ResultResolver;Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;)V

    .line 72
    .line 73
    .line 74
    invoke-interface {v1, v2}, Lcom/cloud/tmc/integration/invoke/ExtensionInvokerFactory;->createScheduleExtensionInvoker(Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;)Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1, v0}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->attacheTargetExtensions(Ljava/util/List;)V

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v1, "cannot find extension for "

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mExtensionClazz:Ljava/lang/Class;

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const-string v1, "TmcKernel"

    .line 102
    .line 103
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mNullable:Z

    .line 107
    .line 108
    if-eqz v0, :cond_5

    .line 109
    .line 110
    const/4 v0, 0x0

    .line 111
    return-object v0

    .line 112
    :cond_5
    iget-object v1, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->invocationHandlerDoNothing:Ljava/lang/reflect/InvocationHandler;

    .line 113
    .line 114
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iget-object v2, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mExtensionClazz:Ljava/lang/Class;

    .line 123
    .line 124
    const/4 v3, 0x1

    .line 125
    new-array v3, v3, [Ljava/lang/Class;

    .line 126
    .line 127
    const/4 v4, 0x0

    .line 128
    aput-object v2, v3, v4

    .line 129
    .line 130
    invoke-static {v0, v3, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Lcom/cloud/tmc/kernel/extension/Extension;

    .line 135
    .line 136
    return-object v0
.end method

.method public defaultValue(Ljava/lang/Object;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mDefaultValue:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public extensionManager(Lcom/cloud/tmc/kernel/extension/ExtensionManager;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/kernel/extension/ExtensionManager;",
            ")",
            "Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mExtensionManager:Lcom/cloud/tmc/kernel/extension/ExtensionManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public node(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/kernel/node/Node;",
            ")",
            "Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mNode:Lcom/cloud/tmc/kernel/node/Node;

    .line 2
    .line 3
    return-object p0
.end method

.method public nullable()Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mNullable:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public resolve(Lcom/cloud/tmc/kernel/resolver/ResultResolver;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/kernel/resolver/ResultResolver;",
            ")",
            "Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->mResultResolver:Lcom/cloud/tmc/kernel/resolver/ResultResolver;

    .line 2
    .line 3
    return-object p0
.end method
