.class public final Lcom/yandex/div/storage/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/div/storage/c;


# instance fields
.field public final a:Lcom/yandex/div/storage/b;

.field public final b:Ljava/util/Map;

.field public c:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/yandex/div/storage/b;)V
    .locals 1

    const-string v0, "divStorage"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/storage/d;->a:Lcom/yandex/div/storage/b;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/storage/d;->b:Ljava/util/Map;

    invoke-static {}, Lye9;->f()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/storage/d;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a(Le74;)Lao8;
    .locals 1

    const-string v0, "predicate"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lxi;->c()V

    :cond_0
    iget-object v0, p0, Lcom/yandex/div/storage/d;->a:Lcom/yandex/div/storage/b;

    invoke-interface {v0, p1}, Lcom/yandex/div/storage/b;->b(Le74;)Lcom/yandex/div/storage/b$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/div/storage/b$b;->a()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/div/storage/b$b;->b()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/div/storage/d;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0}, Lcom/yandex/div/storage/d;->e(Ljava/util/Set;)V

    new-instance p0, Lao8;

    invoke-direct {p0, v0, p1}, Lao8;-><init>(Ljava/util/Set;Ljava/util/List;)V

    return-object p0
.end method

.method public b(Ljava/util/List;)Lcom/yandex/div/storage/e;
    .locals 5

    const-string v0, "ids"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lxi;->c()V

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/yandex/div/storage/e;->c:Lcom/yandex/div/storage/e$a;

    invoke-virtual {p0}, Lcom/yandex/div/storage/e$a;->a()Lcom/yandex/div/storage/e;

    move-result-object p0

    return-object p0

    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Li81;->f1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/yandex/div/storage/d;->b:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzn8;

    if-eqz v3, :cond_2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move-object p1, v1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0, v1}, Lcom/yandex/div/storage/d;->d(Ljava/util/Set;)Lcom/yandex/div/storage/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/div/storage/e;->f()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzn8;

    iget-object v3, p0, Lcom/yandex/div/storage/d;->b:Ljava/util/Map;

    invoke-interface {v1}, Lzn8;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v2}, Lcom/yandex/div/storage/e;->b(Ljava/util/Collection;)Lcom/yandex/div/storage/e;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p0, Lcom/yandex/div/storage/e;

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/yandex/div/storage/e;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method

.method public c(Lcom/yandex/div/storage/c$a;)Lcom/yandex/div/storage/e;
    .locals 5

    const-string v0, "payload"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lxi;->c()V

    :cond_0
    invoke-virtual {p1}, Lcom/yandex/div/storage/c$a;->b()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzn8;

    iget-object v3, p0, Lcom/yandex/div/storage/d;->b:Ljava/util/Map;

    invoke-interface {v2}, Lzn8;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/yandex/div/storage/d;->a:Lcom/yandex/div/storage/b;

    invoke-virtual {p1}, Lcom/yandex/div/storage/c$a;->a()Lcom/yandex/div/storage/DivDataRepository$ActionOnError;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/yandex/div/storage/b;->c(Ljava/util/List;Lcom/yandex/div/storage/DivDataRepository$ActionOnError;)Lze3;

    move-result-object p1

    invoke-virtual {p1}, Lze3;->a()Ljava/util/List;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/yandex/div/storage/d;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p0, Lcom/yandex/div/storage/e;

    invoke-direct {p0, v0, v1}, Lcom/yandex/div/storage/e;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method

.method public final d(Ljava/util/Set;)Lcom/yandex/div/storage/e;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/yandex/div/storage/d;->a:Lcom/yandex/div/storage/b;

    invoke-interface {v1, p1}, Lcom/yandex/div/storage/b;->a(Ljava/util/Set;)Lcom/yandex/div/storage/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/div/storage/b$a;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yandex/div/storage/b$a;->b()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/div/storage/d;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p0, Lcom/yandex/div/storage/e;

    invoke-direct {p0, v1, v0}, Lcom/yandex/div/storage/e;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method

.method public final e(Ljava/util/Set;)V
    .locals 2

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/yandex/div/storage/d;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f(Ljava/util/List;)Ljava/util/List;
    .locals 2

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div/storage/database/StorageException;

    new-instance v1, Lcom/yandex/div/storage/RawJsonRepositoryException;

    invoke-direct {v1, v0}, Lcom/yandex/div/storage/RawJsonRepositoryException;-><init>(Lcom/yandex/div/storage/database/StorageException;)V

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method
