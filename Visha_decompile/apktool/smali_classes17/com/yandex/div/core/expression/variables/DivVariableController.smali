.class public final Lcom/yandex/div/core/expression/variables/DivVariableController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/yandex/div/core/expression/variables/DivVariableController;

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/util/concurrent/ConcurrentHashMap;

.field public final d:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public final e:Ljava/util/Map;

.field public final f:Ljava/util/Set;

.field public final g:Ljava/util/Set;

.field public final h:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public final i:Le74;

.field public final j:Lrs6;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/yandex/div/core/expression/variables/DivVariableController;-><init>(Lcom/yandex/div/core/expression/variables/DivVariableController;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div/core/expression/variables/DivVariableController;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/div/core/expression/variables/DivVariableController;->a:Lcom/yandex/div/core/expression/variables/DivVariableController;

    .line 4
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/yandex/div/core/expression/variables/DivVariableController;->b:Landroid/os/Handler;

    .line 5
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/expression/variables/DivVariableController;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/expression/variables/DivVariableController;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 7
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/expression/variables/DivVariableController;->e:Ljava/util/Map;

    .line 8
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/expression/variables/DivVariableController;->f:Ljava/util/Set;

    .line 9
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/expression/variables/DivVariableController;->g:Ljava/util/Set;

    .line 10
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/expression/variables/DivVariableController;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 11
    new-instance p1, Lcom/yandex/div/core/expression/variables/DivVariableController$requestsObserver$1;

    invoke-direct {p1, p0}, Lcom/yandex/div/core/expression/variables/DivVariableController$requestsObserver$1;-><init>(Lcom/yandex/div/core/expression/variables/DivVariableController;)V

    iput-object p1, p0, Lcom/yandex/div/core/expression/variables/DivVariableController;->i:Le74;

    .line 12
    new-instance v0, Lrs6;

    invoke-direct {v0, p0, p1}, Lrs6;-><init>(Lcom/yandex/div/core/expression/variables/DivVariableController;Le74;)V

    iput-object v0, p0, Lcom/yandex/div/core/expression/variables/DivVariableController;->j:Lrs6;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yandex/div/core/expression/variables/DivVariableController;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 13
    :cond_0
    invoke-direct {p0, p1}, Lcom/yandex/div/core/expression/variables/DivVariableController;-><init>(Lcom/yandex/div/core/expression/variables/DivVariableController;)V

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/div/core/expression/variables/DivVariableController;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/expression/variables/DivVariableController;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method


# virtual methods
.method public final b(Lfu1;)V
    .locals 1

    const-string v0, "observer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/expression/variables/DivVariableController;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/yandex/div/core/expression/variables/DivVariableController;->a:Lcom/yandex/div/core/expression/variables/DivVariableController;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/expression/variables/DivVariableController;->b(Lfu1;)V

    :cond_0
    return-void
.end method

.method public final c(Le74;)V
    .locals 2

    const-string v0, "observer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/expression/variables/DivVariableController;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "variables.values"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqnb;

    invoke-virtual {v1, p1}, Lqnb;->a(Le74;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/div/core/expression/variables/DivVariableController;->a:Lcom/yandex/div/core/expression/variables/DivVariableController;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/expression/variables/DivVariableController;->c(Le74;)V

    :cond_1
    return-void
.end method

.method public final d()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/yandex/div/core/expression/variables/DivVariableController;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "variables.values"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/expression/variables/DivVariableController;->a:Lcom/yandex/div/core/expression/variables/DivVariableController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/div/core/expression/variables/DivVariableController;->d()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    :goto_0
    check-cast p0, Ljava/lang/Iterable;

    goto :goto_1

    :cond_0
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :goto_1
    invoke-static {v0, p0}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lqnb;
    .locals 1

    const-string v0, "variableName"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/expression/variables/DivVariableController;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/div/core/expression/variables/DivVariableController;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqnb;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/div/core/expression/variables/DivVariableController;->a:Lcom/yandex/div/core/expression/variables/DivVariableController;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/expression/variables/DivVariableController;->e(Ljava/lang/String;)Lqnb;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final f()Lrs6;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/expression/variables/DivVariableController;->j:Lrs6;

    return-object p0
.end method

.method public final g(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/core/expression/variables/DivVariableController;->f:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/yandex/div/core/expression/variables/DivVariableController;->f:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final h(Le74;)V
    .locals 3

    const-string v0, "observer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/expression/variables/DivVariableController;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "variables.values"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqnb;

    const-string v2, "it"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/div/core/expression/variables/DivVariableController;->a:Lcom/yandex/div/core/expression/variables/DivVariableController;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/expression/variables/DivVariableController;->h(Le74;)V

    :cond_1
    return-void
.end method

.method public final i(Lfu1;)V
    .locals 1

    const-string v0, "observer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/expression/variables/DivVariableController;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/yandex/div/core/expression/variables/DivVariableController;->a:Lcom/yandex/div/core/expression/variables/DivVariableController;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/expression/variables/DivVariableController;->i(Lfu1;)V

    :cond_0
    return-void
.end method

.method public final j(Le74;)V
    .locals 2

    const-string v0, "observer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/expression/variables/DivVariableController;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "variables.values"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqnb;

    invoke-virtual {v1, p1}, Lqnb;->m(Le74;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/div/core/expression/variables/DivVariableController;->a:Lcom/yandex/div/core/expression/variables/DivVariableController;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/expression/variables/DivVariableController;->j(Le74;)V

    :cond_1
    return-void
.end method
