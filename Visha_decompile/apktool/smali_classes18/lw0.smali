.class public abstract Llw0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lofa;


# instance fields
.field public final b:Lfreemarker/ext/beans/b;

.field public final c:Ljava/util/Map;

.field public final d:Z

.field public final e:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lfreemarker/ext/beans/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lc0d;->c()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Llw0;->c:Ljava/util/Map;

    invoke-static {v0}, Lc0d;->b(Ljava/util/Map;)Z

    move-result v0

    iput-boolean v0, p0, Llw0;->d:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Llw0;->e:Ljava/util/Set;

    iput-object p1, p0, Llw0;->b:Lfreemarker/ext/beans/b;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, Llw0;->b:Lfreemarker/ext/beans/b;

    invoke-virtual {v0}, Lfreemarker/ext/beans/b;->x()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Llw0;->c:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public abstract c(Ljava/lang/Class;)Lzfa;
.end method

.method public final e(Ljava/lang/String;)Lzfa;
    .locals 5

    iget-boolean v0, p0, Llw0;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Llw0;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzfa;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Llw0;->b:Lfreemarker/ext/beans/b;

    invoke-virtual {v0}, Lfreemarker/ext/beans/b;->x()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Llw0;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzfa;

    if-eqz v1, :cond_1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    iget-object v2, p0, Llw0;->e:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    iget-object v1, p0, Llw0;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzfa;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Class inrospection data lookup aborded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-eqz v1, :cond_3

    monitor-exit v0

    return-object v1

    :cond_3
    iget-object v1, p0, Llw0;->e:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Llw0;->b:Lfreemarker/ext/beans/b;

    invoke-virtual {v1}, Lfreemarker/ext/beans/b;->q()Lfreemarker/ext/beans/c;

    move-result-object v1

    invoke-virtual {v1}, Lfreemarker/ext/beans/c;->n()I

    move-result v2

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {p1}, Lhx0;->d(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Lfreemarker/ext/beans/c;->k(Ljava/lang/Class;)Ljava/util/Map;

    invoke-virtual {p0, v3}, Llw0;->c(Ljava/lang/Class;)Lzfa;

    move-result-object v3

    if-eqz v3, :cond_5

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v4, p0, Llw0;->b:Lfreemarker/ext/beans/b;

    invoke-virtual {v4}, Lfreemarker/ext/beans/b;->q()Lfreemarker/ext/beans/c;

    move-result-object v4

    if-ne v1, v4, :cond_4

    invoke-virtual {v1}, Lfreemarker/ext/beans/c;->n()I

    move-result v1

    if-ne v2, v1, :cond_4

    iget-object v1, p0, Llw0;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_2

    :cond_4
    :goto_1
    monitor-exit v0

    goto :goto_3

    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v1

    goto :goto_4

    :cond_5
    :goto_3
    monitor-enter v0

    :try_start_6
    iget-object p0, p0, Llw0;->e:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-object v3

    :catchall_3
    move-exception p0

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0

    :goto_4
    monitor-enter v0

    :try_start_7
    iget-object p0, p0, Llw0;->e:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v1

    :catchall_4
    move-exception p0

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw p0

    :goto_5
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw p0
.end method

.method public get(Ljava/lang/String;)Lzfa;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Llw0;->e(Ljava/lang/String;)Lzfa;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    instance-of p1, p0, Lfreemarker/template/TemplateModelException;

    if-eqz p1, :cond_0

    check-cast p0, Lfreemarker/template/TemplateModelException;

    throw p0

    :cond_0
    new-instance p1, Lfreemarker/template/TemplateModelException;

    invoke-direct {p1, p0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public isEmpty()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public l()Lfreemarker/ext/beans/b;
    .locals 0

    iget-object p0, p0, Llw0;->b:Lfreemarker/ext/beans/b;

    return-object p0
.end method
