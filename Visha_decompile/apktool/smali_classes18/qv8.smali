.class public Lqv8;
.super Lwt1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqv8$b;,
        Lqv8$a;
    }
.end annotation


# instance fields
.field public final b:Ljava/util/Map;

.field public final c:Ljava/util/HashSet;

.field public final d:Ljava/util/Map;

.field public final e:Ljava/lang/ref/ReferenceQueue;

.field public final f:Lov8;

.field public g:Lfreemarker/debug/impl/DebuggerServer;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lwt1;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lqv8;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lqv8;->c:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lqv8;->d:Ljava/util/Map;

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lqv8;->e:Ljava/lang/ref/ReferenceQueue;

    :try_start_0
    new-instance v0, Lov8;

    invoke-direct {v0, p0}, Lov8;-><init>(Lqv8;)V

    iput-object v0, p0, Lqv8;->f:Lov8;

    new-instance v1, Lfreemarker/debug/impl/DebuggerServer;

    invoke-static {v0}, Ljava/rmi/server/RemoteObject;->toStub(Ljava/rmi/Remote;)Ljava/rmi/Remote;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    invoke-direct {v1, v0}, Lfreemarker/debug/impl/DebuggerServer;-><init>(Ljava/io/Serializable;)V

    iput-object v1, p0, Lqv8;->g:Lfreemarker/debug/impl/DebuggerServer;

    invoke-virtual {v1}, Lfreemarker/debug/impl/DebuggerServer;->f()V
    :try_end_0
    .catch Ljava/rmi/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/rmi/RemoteException;->printStackTrace()V

    new-instance v0, Lfreemarker/template/utility/UndeclaredThrowableException;

    invoke-direct {v0, p0}, Lfreemarker/template/utility/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static h(Lifa;I)Lifa;
    .locals 6

    invoke-virtual {p0}, Lfreemarker/core/t1;->n()I

    move-result v0

    const/4 v1, 0x0

    if-gt v0, p1, :cond_8

    invoke-virtual {p0}, Lfreemarker/core/t1;->q()I

    move-result v0

    if-ge v0, p1, :cond_0

    goto :goto_3

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lifa;->I()Ljava/util/Enumeration;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lifa;

    invoke-static {v3, p1}, Lqv8;->h(Lifa;I)Lifa;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lifa;

    if-nez v1, :cond_3

    move-object v1, v3

    :cond_3
    invoke-virtual {v3}, Lfreemarker/core/t1;->n()I

    move-result v4

    if-ne v4, p1, :cond_4

    invoke-virtual {v3}, Lfreemarker/core/t1;->q()I

    move-result v4

    if-le v4, p1, :cond_4

    move-object v1, v3

    :cond_4
    invoke-virtual {v3}, Lfreemarker/core/t1;->n()I

    move-result v4

    invoke-virtual {v3}, Lfreemarker/core/t1;->q()I

    move-result v5

    if-ne v4, v5, :cond_5

    invoke-virtual {v3}, Lfreemarker/core/t1;->n()I

    move-result v4

    if-ne v4, p1, :cond_5

    move-object v1, v3

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    return-object v1

    :cond_7
    return-object p0

    :cond_8
    :goto_3
    return-object v1
.end method

.method public static i(Lfreemarker/template/Template;Lfreemarker/debug/Breakpoint;)V
    .locals 1

    invoke-virtual {p0}, Lfreemarker/template/Template;->C0()Lifa;

    move-result-object p0

    invoke-virtual {p1}, Lfreemarker/debug/Breakpoint;->getLine()I

    move-result p1

    invoke-static {p0, p1}, Lqv8;->h(Lifa;I)Lifa;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lifa;->T()Ljavax/swing/tree/TreeNode;

    move-result-object p1

    check-cast p1, Lifa;

    new-instance v0, Llt1;

    invoke-direct {v0, p0}, Llt1;-><init>(Lifa;)V

    invoke-virtual {p1, p0}, Lifa;->P(Ljavax/swing/tree/TreeNode;)I

    move-result p0

    invoke-virtual {p1, p0, v0}, Lifa;->h0(ILifa;)V

    return-void
.end method


# virtual methods
.method public c(Lfreemarker/template/Template;)V
    .locals 5

    invoke-virtual {p1}, Lfreemarker/template/Template;->y0()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lqv8;->b:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, v0}, Lqv8;->f(Ljava/lang/String;)Lqv8$a;

    move-result-object v2

    iget-object v3, v2, Lqv8$a;->a:Ljava/util/List;

    new-instance v4, Lqv8$b;

    iget-object p0, p0, Lqv8;->e:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v4, v0, p1, p0}, Lqv8$b;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, v2, Lqv8$a;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/debug/Breakpoint;

    invoke-static {p1, v0}, Lqv8;->i(Lfreemarker/template/Template;Lfreemarker/debug/Breakpoint;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public e(Lfreemarker/core/Environment;Ljava/lang/String;I)Z
    .locals 2

    invoke-static {p1}, Llv8;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Llv8;

    iget-object v0, p0, Lqv8;->c:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lqv8;->c:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    new-instance v0, Lfreemarker/debug/EnvironmentSuspendedEvent;

    invoke-direct {v0, p0, p2, p3, p1}, Lfreemarker/debug/EnvironmentSuspendedEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;ILut1;)V

    iget-object p2, p0, Lqv8;->d:Ljava/util/Map;

    monitor-enter p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object p3, p0, Lqv8;->d:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    monitor-enter p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    :goto_0
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {p1}, Llv8;->c()Z

    move-result p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    iget-object p3, p0, Lqv8;->c:Ljava/util/HashSet;

    monitor-enter p3

    :try_start_7
    iget-object p0, p0, Lqv8;->c:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit p3

    return p2

    :catchall_1
    move-exception p0

    monitor-exit p3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p0

    :catchall_2
    move-exception p2

    goto :goto_3

    :goto_1
    :try_start_8
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_3
    move-exception p3

    goto :goto_2

    :cond_0
    :try_start_a
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p3, 0x0

    throw p3

    :goto_2
    monitor-exit p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw p3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :goto_3
    iget-object p3, p0, Lqv8;->c:Ljava/util/HashSet;

    monitor-enter p3

    :try_start_c
    iget-object p0, p0, Lqv8;->c:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit p3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw p2

    :catchall_4
    move-exception p0

    :try_start_d
    monitor-exit p3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw p0

    :catchall_5
    move-exception p0

    :try_start_e
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw p0
.end method

.method public final f(Ljava/lang/String;)Lqv8$a;
    .locals 2

    invoke-virtual {p0, p1}, Lqv8;->g(Ljava/lang/String;)Lqv8$a;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lqv8$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lqv8$a;-><init>(Lpv8;)V

    iget-object p0, p0, Lqv8;->b:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public final g(Ljava/lang/String;)Lqv8$a;
    .locals 0

    invoke-virtual {p0}, Lqv8;->j()V

    iget-object p0, p0, Lqv8;->b:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqv8$a;

    return-object p0
.end method

.method public final j()V
    .locals 3

    :cond_0
    :goto_0
    iget-object v0, p0, Lqv8;->e:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lqv8$b;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, Lqv8$b;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lqv8;->g(Ljava/lang/String;)Lqv8$a;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lqv8$a;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lqv8$a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lqv8;->b:Ljava/util/Map;

    iget-object v0, v0, Lqv8$b;->a:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
