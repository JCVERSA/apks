.class public final Lcom/yandex/div/core/expression/local/RuntimeTree;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/expression/local/RuntimeTree$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/div/core/expression/local/RuntimeTree;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/div/core/expression/local/RuntimeTree;->b:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/div/core/expression/local/RuntimeTree;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/expression/local/RuntimeTree;->b:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic b(Lcom/yandex/div/core/expression/local/RuntimeTree;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/expression/local/RuntimeTree;->a:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final c(Ljava/lang/String;)Lcom/yandex/div/core/expression/local/RuntimeTree$a;
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/expression/local/RuntimeTree;->b:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div/core/expression/local/RuntimeTree$a;

    return-object p0
.end method

.method public final d()Ljava/util/Map;
    .locals 3

    iget-object p0, p0, Lcom/yandex/div/core/expression/local/RuntimeTree;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div/core/expression/local/RuntimeTree$a;

    invoke-virtual {v1}, Lcom/yandex/div/core/expression/local/RuntimeTree$a;->c()Lvj3;

    move-result-object v1

    invoke-static {v2, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/collections/a;->y(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final e(Lvj3;Ljava/lang/String;Le74;)V
    .locals 5

    const-string v0, "expressionsRuntime"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/expression/local/RuntimeTree;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/div/core/expression/local/RuntimeTree$a;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/yandex/div/core/expression/local/RuntimeTree$a;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p2, v1, v2, v3}, Lg1a;->R(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p3}, Lcom/yandex/div/core/expression/local/RuntimeTree;->f(Lcom/yandex/div/core/expression/local/RuntimeTree$a;Le74;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/yandex/div/core/expression/local/RuntimeTree$a;->a()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div/core/expression/local/RuntimeTree$a;

    invoke-virtual {v0}, Lcom/yandex/div/core/expression/local/RuntimeTree$a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2, v1, v2, v3}, Lg1a;->R(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v0, p3}, Lcom/yandex/div/core/expression/local/RuntimeTree;->f(Lcom/yandex/div/core/expression/local/RuntimeTree$a;Le74;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final f(Lcom/yandex/div/core/expression/local/RuntimeTree$a;Le74;)V
    .locals 1

    invoke-interface {p2, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/yandex/div/core/expression/local/RuntimeTree$a;->a()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div/core/expression/local/RuntimeTree$a;

    invoke-virtual {p0, v0, p2}, Lcom/yandex/div/core/expression/local/RuntimeTree;->f(Lcom/yandex/div/core/expression/local/RuntimeTree$a;Le74;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g(Lvj3;Ljava/lang/String;)V
    .locals 1

    const-string v0, "runtime"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div/core/expression/local/RuntimeTree$removeRuntimeAndCleanup$1;

    invoke-direct {v0, p0}, Lcom/yandex/div/core/expression/local/RuntimeTree$removeRuntimeAndCleanup$1;-><init>(Lcom/yandex/div/core/expression/local/RuntimeTree;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/yandex/div/core/expression/local/RuntimeTree;->e(Lvj3;Ljava/lang/String;Le74;)V

    return-void
.end method

.method public final h(Lvj3;Lvj3;Ljava/lang/String;)V
    .locals 7

    const-string v0, "runtime"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div/core/expression/local/RuntimeTree$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p3

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/core/expression/local/RuntimeTree$a;-><init>(Lvj3;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v1, p0, Lcom/yandex/div/core/expression/local/RuntimeTree;->b:Ljava/util/Map;

    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lcom/yandex/div/core/expression/local/RuntimeTree;->a:Ljava/util/Map;

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/yandex/div/core/expression/local/RuntimeTree;->a:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div/core/expression/local/RuntimeTree$a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/div/core/expression/local/RuntimeTree$a;->a()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
