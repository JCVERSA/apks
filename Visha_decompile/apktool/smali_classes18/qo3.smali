.class public final Lqo3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lqo3;

.field public static final b:Ljava/util/Map;

.field public static final c:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lqo3;

    invoke-direct {v0}, Lqo3;-><init>()V

    sput-object v0, Lqo3;->a:Lqo3;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v1, Lqo3;->b:Ljava/util/Map;

    sget-object v2, Lcw9;->a:Lcw9;

    invoke-virtual {v2}, Lcw9;->l()Lxw0;

    move-result-object v3

    const-string v4, "java.util.ArrayList"

    const-string v5, "java.util.LinkedList"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lqo3;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lqo3;->c(Lxw0;Ljava/util/List;)V

    invoke-virtual {v2}, Lcw9;->n()Lxw0;

    move-result-object v3

    const-string v4, "java.util.TreeSet"

    const-string v5, "java.util.LinkedHashSet"

    const-string v6, "java.util.HashSet"

    filled-new-array {v6, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lqo3;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lqo3;->c(Lxw0;Ljava/util/List;)V

    invoke-virtual {v2}, Lcw9;->m()Lxw0;

    move-result-object v2

    const-string v3, "java.util.concurrent.ConcurrentHashMap"

    const-string v4, "java.util.concurrent.ConcurrentSkipListMap"

    const-string v5, "java.util.HashMap"

    const-string v6, "java.util.TreeMap"

    const-string v7, "java.util.LinkedHashMap"

    filled-new-array {v5, v6, v7, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lqo3;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lqo3;->c(Lxw0;Ljava/util/List;)V

    new-instance v2, Lo54;

    const-string v3, "java.util.function.Function"

    invoke-direct {v2, v3}, Lo54;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lxw0;->m(Lo54;)Lxw0;

    move-result-object v2

    const-string v3, "topLevel(FqName(\"java.util.function.Function\"))"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "java.util.function.UnaryOperator"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lqo3;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lqo3;->c(Lxw0;Ljava/util/List;)V

    new-instance v2, Lo54;

    const-string v3, "java.util.function.BiFunction"

    invoke-direct {v2, v3}, Lo54;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lxw0;->m(Lo54;)Lxw0;

    move-result-object v2

    const-string v3, "topLevel(FqName(\"java.util.function.BiFunction\"))"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "java.util.function.BinaryOperator"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lqo3;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lqo3;->c(Lxw0;Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lxw0;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxw0;

    invoke-virtual {v3}, Lxw0;->b()Lo54;

    move-result-object v3

    invoke-virtual {v2}, Lxw0;->b()Lo54;

    move-result-object v2

    invoke-static {v3, v2}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/collections/a;->y(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lqo3;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs a([Ljava/lang/String;)Ljava/util/List;
    .locals 4

    new-instance p0, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    new-instance v3, Lo54;

    invoke-direct {v3, v2}, Lo54;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lxw0;->m(Lo54;)Lxw0;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final b(Lo54;)Lo54;
    .locals 0

    const-string p0, "classFqName"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lqo3;->c:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo54;

    return-object p0
.end method

.method public final c(Lxw0;Ljava/util/List;)V
    .locals 2

    check-cast p2, Ljava/lang/Iterable;

    sget-object p0, Lqo3;->b:Ljava/util/Map;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lxw0;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
