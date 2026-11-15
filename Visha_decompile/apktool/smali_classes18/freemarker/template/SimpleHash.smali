.class public Lfreemarker/template/SimpleHash;
.super Lnpc;
.source "SourceFile"

# interfaces
.implements Lpfa;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/template/SimpleHash$SynchronizedHash;
    }
.end annotation


# instance fields
.field private final map:Ljava/util/Map;

.field private putFailed:Z

.field private unwrappedMap:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/template/SimpleHash;-><init>(Lgc7;)V

    return-void
.end method

.method public constructor <init>(Lgc7;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lnpc;-><init>(Lgc7;)V

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lfreemarker/template/SimpleHash;->map:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lfreemarker/template/SimpleHash;-><init>(Ljava/util/Map;Lgc7;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Lgc7;)V
    .locals 2

    .line 5
    invoke-direct {p0, p2}, Lnpc;-><init>(Lgc7;)V

    .line 6
    :try_start_0
    invoke-virtual {p0, p1}, Lfreemarker/template/SimpleHash;->copyMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 v0, 0x5

    .line 7
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 8
    :catch_1
    monitor-enter p1

    .line 9
    :try_start_2
    invoke-virtual {p0, p1}, Lfreemarker/template/SimpleHash;->copyMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    .line 10
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object p1, p2

    .line 11
    :goto_0
    iput-object p1, p0, Lfreemarker/template/SimpleHash;->map:Ljava/util/Map;

    return-void

    :catchall_0
    move-exception p0

    .line 12
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lfreemarker/template/SimpleHash;->map:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public copyMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    instance-of p0, p1, Ljava/util/HashMap;

    if-eqz p0, :cond_0

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0

    :cond_0
    instance-of p0, p1, Ljava/util/SortedMap;

    if-eqz p0, :cond_2

    instance-of p0, p1, Ljava/util/TreeMap;

    if-eqz p0, :cond_1

    check-cast p1, Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0

    :cond_1
    new-instance p0, Ljava/util/TreeMap;

    check-cast p1, Ljava/util/SortedMap;

    invoke-direct {p0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/SortedMap;)V

    return-object p0

    :cond_2
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method public get(Ljava/lang/String;)Lzfa;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lfreemarker/template/SimpleHash;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v1, 0x1

    if-nez v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lfreemarker/template/SimpleHash;->map:Ljava/util/Map;

    instance-of v2, v2, Ljava/util/SortedMap;

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/Character;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/Character;-><init>(C)V

    :try_start_1
    iget-object v2, p0, Lfreemarker/template/SimpleHash;->map:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v4, p0, Lfreemarker/template/SimpleHash;->map:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v4, :cond_1

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance v0, Lfreemarker/core/_TemplateModelException;

    new-instance v1, Lk0d;

    invoke-direct {v1, p1}, Lk0d;-><init>(Ljava/lang/Object;)V

    const-string p1, "NullPointerException while getting Map entry with Character key "

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw v0

    :goto_1
    new-instance v0, Lfreemarker/core/_TemplateModelException;

    new-instance v1, Lk0d;

    invoke-direct {v1, p1}, Lk0d;-><init>(Ljava/lang/Object;)V

    const-string p1, "ClassCastException while getting Map entry with Character key "

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw v0

    :cond_0
    move-object v2, v0

    :cond_1
    move-object v0, v3

    :cond_2
    :goto_2
    if-nez v0, :cond_4

    iget-object v0, p0, Lfreemarker/template/SimpleHash;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return-object v3

    :cond_3
    :goto_3
    move-object v0, v2

    goto :goto_4

    :cond_4
    move-object p1, v0

    goto :goto_3

    :cond_5
    :goto_4
    instance-of v2, v0, Lzfa;

    if-eqz v2, :cond_6

    check-cast v0, Lzfa;

    return-object v0

    :cond_6
    invoke-virtual {p0, v0}, Lnpc;->wrap(Ljava/lang/Object;)Lzfa;

    move-result-object v0

    iget-boolean v2, p0, Lfreemarker/template/SimpleHash;->putFailed:Z

    if-nez v2, :cond_7

    :try_start_2
    iget-object v2, p0, Lfreemarker/template/SimpleHash;->map:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    iput-boolean v1, p0, Lfreemarker/template/SimpleHash;->putFailed:Z

    :cond_7
    :goto_5
    return-object v0

    :catch_3
    move-exception p0

    goto :goto_6

    :catch_4
    move-exception p0

    goto :goto_7

    :goto_6
    new-instance v0, Lfreemarker/core/_TemplateModelException;

    new-instance v1, Lk0d;

    invoke-direct {v1, p1}, Lk0d;-><init>(Ljava/lang/Object;)V

    const-string p1, "NullPointerException while getting Map entry with String key "

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw v0

    :goto_7
    new-instance v0, Lfreemarker/core/_TemplateModelException;

    new-instance v1, Lk0d;

    invoke-direct {v1, p1}, Lk0d;-><init>(Ljava/lang/Object;)V

    const-string p1, "ClassCastException while getting Map entry with String key "

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lfreemarker/template/SimpleHash;->map:Ljava/util/Map;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public keys()Lbfa;
    .locals 2

    new-instance v0, Lfreemarker/template/SimpleCollection;

    iget-object v1, p0, Lfreemarker/template/SimpleHash;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0}, Lnpc;->getObjectWrapper()Lgc7;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lfreemarker/template/SimpleCollection;-><init>(Ljava/util/Collection;Lgc7;)V

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/template/SimpleHash;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lfreemarker/template/SimpleHash;->unwrappedMap:Ljava/util/Map;

    return-void
.end method

.method public put(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 3
    sget-object p2, Lfreemarker/template/a;->z6:Lfreemarker/template/a;

    goto :goto_0

    :cond_0
    sget-object p2, Lfreemarker/template/a;->y6:Lfreemarker/template/a;

    :goto_0
    invoke-virtual {p0, p1, p2}, Lfreemarker/template/SimpleHash;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lfreemarker/template/SimpleHash;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lfreemarker/template/SimpleHash;->map:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lfreemarker/template/SimpleHash;->map:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public synchronizedWrapper()Lfreemarker/template/SimpleHash;
    .locals 2

    new-instance v0, Lfreemarker/template/SimpleHash$SynchronizedHash;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfreemarker/template/SimpleHash$SynchronizedHash;-><init>(Lfreemarker/template/SimpleHash;Lcm9;)V

    return-object v0
.end method

.method public toMap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    iget-object v0, p0, Lfreemarker/template/SimpleHash;->unwrappedMap:Ljava/util/Map;

    if-nez v0, :cond_2

    iget-object v0, p0, Lfreemarker/template/SimpleHash;->map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lfreemarker/ext/beans/b;->s()Lfreemarker/ext/beans/b;

    move-result-object v0

    iget-object v2, p0, Lfreemarker/template/SimpleHash;->map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Lzfa;

    if-eqz v5, :cond_0

    check-cast v3, Lzfa;

    invoke-virtual {v0, v3}, Lfreemarker/ext/beans/b;->b(Lzfa;)Ljava/lang/Object;

    move-result-object v3

    :cond_0
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lfreemarker/template/SimpleHash;->unwrappedMap:Ljava/util/Map;

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v1, Lfreemarker/template/TemplateModelException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error instantiating map of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_1
    iget-object p0, p0, Lfreemarker/template/SimpleHash;->unwrappedMap:Ljava/util/Map;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfreemarker/template/SimpleHash;->map:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public values()Lbfa;
    .locals 2

    new-instance v0, Lfreemarker/template/SimpleCollection;

    iget-object v1, p0, Lfreemarker/template/SimpleHash;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p0}, Lnpc;->getObjectWrapper()Lgc7;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lfreemarker/template/SimpleCollection;-><init>(Ljava/util/Collection;Lgc7;)V

    return-object v0
.end method
