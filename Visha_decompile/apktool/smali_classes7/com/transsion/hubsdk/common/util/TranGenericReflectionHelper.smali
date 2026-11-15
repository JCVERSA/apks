.class public Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final checkLock:Ljava/lang/Object;

.field private classExists:Ljava/lang/Boolean;

.field private final existenceCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final methodExistenceCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final targetClassName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->existenceCache:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->methodExistenceCache:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->checkLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->classExists:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->targetClassName:Ljava/lang/String;

    return-void
.end method

.method private checkClassExistence()Z
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->targetClassName:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method private checkFieldExistence(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->targetClassName:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method private checkMethodExistence(Ljava/lang/String;[Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->targetClassName:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method private generateMethodSignature(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_1

    if-lez p1, :cond_0

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    aget-object v0, p2, p1

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clearCache()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->checkLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->existenceCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->methodExistenceCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->classExists:Ljava/lang/Boolean;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getTargetClassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->targetClassName:Ljava/lang/String;

    return-object p0
.end method

.method public isFieldExists(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->existenceCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->existenceCache:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->checkLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->existenceCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->existenceCache:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->classExists:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->checkClassExistence()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->classExists:Ljava/lang/Boolean;

    :cond_2
    iget-object v1, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->classExists:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object p0, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->existenceCache:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :cond_3
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->checkFieldExistence(Ljava/lang/String;)Z

    move-result v1

    iget-object p0, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->existenceCache:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isMethodExists(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->isMethodExists(Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public isMethodExists(Ljava/lang/String;[Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->generateMethodSignature(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->methodExistenceCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->methodExistenceCache:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->checkLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->methodExistenceCache:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    iget-object p0, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->methodExistenceCache:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    monitor-exit v1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 8
    :cond_1
    iget-object v2, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->classExists:Ljava/lang/Boolean;

    if-nez v2, :cond_2

    .line 9
    invoke-direct {p0}, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->checkClassExistence()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->classExists:Ljava/lang/Boolean;

    .line 10
    :cond_2
    iget-object v2, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->classExists:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    .line 11
    iget-object p0, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->methodExistenceCache:Ljava/util/Map;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    monitor-exit v1

    const/4 p0, 0x0

    return p0

    .line 13
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->checkMethodExistence(Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result p1

    .line 14
    iget-object p0, p0, Lcom/transsion/hubsdk/common/util/TranGenericReflectionHelper;->methodExistenceCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    monitor-exit v1

    return p1

    .line 16
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
