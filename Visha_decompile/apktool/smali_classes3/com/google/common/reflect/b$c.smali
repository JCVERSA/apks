.class public Lcom/google/common/reflect/b$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/google/common/collect/ImmutableMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/b$c;->a:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/ImmutableMap;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/common/reflect/b$c;->a:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
    .locals 1

    new-instance v0, Lcom/google/common/reflect/b$c$a;

    invoke-direct {v0, p0, p1, p0}, Lcom/google/common/reflect/b$c$a;-><init>(Lcom/google/common/reflect/b$c;Ljava/lang/reflect/TypeVariable;Lcom/google/common/reflect/b$c;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/common/reflect/b$c;->b(Ljava/lang/reflect/TypeVariable;Lcom/google/common/reflect/b$c;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/lang/reflect/TypeVariable;Lcom/google/common/reflect/b$c;)Ljava/lang/reflect/Type;
    .locals 2

    iget-object p0, p0, Lcom/google/common/reflect/b$c;->a:Lcom/google/common/collect/ImmutableMap;

    new-instance v0, Lcom/google/common/reflect/b$d;

    invoke-direct {v0, p1}, Lcom/google/common/reflect/b$d;-><init>(Ljava/lang/reflect/TypeVariable;)V

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Type;

    const/4 v0, 0x0

    if-nez p0, :cond_2

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    array-length v1, p0

    if-nez v1, :cond_0

    return-object p1

    :cond_0
    new-instance v1, Lcom/google/common/reflect/b;

    invoke-direct {v1, p2, v0}, Lcom/google/common/reflect/b;-><init>(Lcom/google/common/reflect/b$c;Lcom/google/common/reflect/b$a;)V

    invoke-static {v1, p0}, Lcom/google/common/reflect/b;->c(Lcom/google/common/reflect/b;[Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object p2

    sget-boolean v0, Lcom/google/common/reflect/Types$b;->a:Z

    if-eqz v0, :cond_1

    invoke-static {p0, p2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object p1

    :cond_1
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/google/common/reflect/Types;->k(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p1, Lcom/google/common/reflect/b;

    invoke-direct {p1, p2, v0}, Lcom/google/common/reflect/b;-><init>(Lcom/google/common/reflect/b$c;Lcom/google/common/reflect/b$a;)V

    invoke-virtual {p1, p0}, Lcom/google/common/reflect/b;->j(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method public final c(Ljava/util/Map;)Lcom/google/common/reflect/b$c;
    .locals 4

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/reflect/b$c;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableMap$b;->k(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap$b;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/reflect/b$d;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Type;

    invoke-virtual {v1, p1}, Lcom/google/common/reflect/b$d;->a(Ljava/lang/reflect/Type;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const-string v3, "Type variable %s bound to itself"

    invoke-static {v2, v3, v1}, Lxd8;->j(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/common/reflect/b$c;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$b;->d()Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/reflect/b$c;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-object p0
.end method
