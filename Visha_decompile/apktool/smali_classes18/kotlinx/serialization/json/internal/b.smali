.class public Lkotlinx/serialization/json/internal/b;
.super Le3;
.source "SourceFile"


# instance fields
.field public final f:Lkotlinx/serialization/json/JsonObject;

.field public final g:Ljava/lang/String;

.field public final h:Lkotlinx/serialization/descriptors/a;

.field public i:I

.field public j:Z


# direct methods
.method public constructor <init>(Lu95;Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Lkotlinx/serialization/descriptors/a;)V
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Le3;-><init>(Lu95;Lkotlinx/serialization/json/b;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    iput-object p2, p0, Lkotlinx/serialization/json/internal/b;->f:Lkotlinx/serialization/json/JsonObject;

    .line 4
    iput-object p3, p0, Lkotlinx/serialization/json/internal/b;->g:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lkotlinx/serialization/json/internal/b;->h:Lkotlinx/serialization/descriptors/a;

    return-void
.end method

.method public synthetic constructor <init>(Lu95;Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Lkotlinx/serialization/descriptors/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move-object p4, v0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lkotlinx/serialization/json/internal/b;-><init>(Lu95;Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Lkotlinx/serialization/descriptors/a;)V

    return-void
.end method


# virtual methods
.method public E()Z
    .locals 1

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/b;->j:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Le3;->E()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public a0(Lkotlinx/serialization/descriptors/a;I)Ljava/lang/String;
    .locals 3

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Le3;->d()Lu95;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->k(Lkotlinx/serialization/descriptors/a;Lu95;)Lab5;

    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/a;->f(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Le3;->e:Lda5;

    invoke-virtual {v1}, Lda5;->k()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/b;->w0()Lkotlinx/serialization/json/JsonObject;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonObject;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Le3;->d()Lu95;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->d(Lu95;Lkotlinx/serialization/descriptors/a;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/b;->w0()Lkotlinx/serialization/json/JsonObject;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonObject;->keySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p2, :cond_2

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_5

    return-object v1

    :cond_5
    return-object v0
.end method

.method public b(Lkotlinx/serialization/descriptors/a;)Lfd1;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/b;->h:Lkotlinx/serialization/descriptors/a;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Le3;->b(Lkotlinx/serialization/descriptors/a;)Lfd1;

    move-result-object p0

    return-object p0
.end method

.method public c(Lkotlinx/serialization/descriptors/a;)V
    .locals 3

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le3;->e:Lda5;

    invoke-virtual {v0}, Lda5;->g()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/a;->getKind()Lid9;

    move-result-object v0

    instance-of v0, v0, Lmc8;

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Le3;->d()Lu95;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->k(Lkotlinx/serialization/descriptors/a;Lu95;)Lab5;

    iget-object v0, p0, Le3;->e:Lda5;

    invoke-virtual {v0}, Lda5;->k()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lua5;->a(Lkotlinx/serialization/descriptors/a;)Ljava/util/Set;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lua5;->a(Lkotlinx/serialization/descriptors/a;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Le3;->d()Lu95;

    move-result-object v1

    invoke-static {v1}, Lvb5;->a(Lu95;)Lkotlinx/serialization/json/internal/a;

    move-result-object v1

    invoke-static {}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->e()Lkotlinx/serialization/json/internal/a$a;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lkotlinx/serialization/json/internal/a;->a(Lkotlinx/serialization/descriptors/a;Lkotlinx/serialization/json/internal/a$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    invoke-static {}, Lye9;->f()Ljava/util/Set;

    move-result-object p1

    :cond_3
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lze9;->m(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    :goto_1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/b;->w0()Lkotlinx/serialization/json/JsonObject;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonObject;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lkotlinx/serialization/json/internal/b;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/b;->w0()Lkotlinx/serialization/json/JsonObject;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Loa5;->f(Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0

    :cond_6
    :goto_3
    return-void
.end method

.method public e0(Ljava/lang/String;)Lkotlinx/serialization/json/b;
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/b;->w0()Lkotlinx/serialization/json/JsonObject;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/collections/a;->m(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/json/b;

    return-object p0
.end method

.method public bridge synthetic s0()Lkotlinx/serialization/json/b;
    .locals 0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/b;->w0()Lkotlinx/serialization/json/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public final u0(Lkotlinx/serialization/descriptors/a;I)Z
    .locals 1

    invoke-virtual {p0}, Le3;->d()Lu95;

    move-result-object v0

    invoke-virtual {v0}, Lu95;->d()Lda5;

    move-result-object v0

    invoke-virtual {v0}, Lda5;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/a;->i(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/a;->d(I)Lkotlinx/serialization/descriptors/a;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/a;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lkotlinx/serialization/json/internal/b;->j:Z

    return p1
.end method

.method public v(Lkotlinx/serialization/descriptors/a;)I
    .locals 3

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lkotlinx/serialization/json/internal/b;->i:I

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/a;->e()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget v0, p0, Lkotlinx/serialization/json/internal/b;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lkotlinx/serialization/json/internal/b;->i:I

    invoke-virtual {p0, p1, v0}, Liy6;->b0(Lkotlinx/serialization/descriptors/a;I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lkotlinx/serialization/json/internal/b;->i:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lkotlinx/serialization/json/internal/b;->j:Z

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/b;->w0()Lkotlinx/serialization/json/JsonObject;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, p1, v1}, Lkotlinx/serialization/json/internal/b;->u0(Lkotlinx/serialization/descriptors/a;I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    iget-object v2, p0, Le3;->e:Lda5;

    invoke-virtual {v2}, Lda5;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1, v1, v0}, Lkotlinx/serialization/json/internal/b;->v0(Lkotlinx/serialization/descriptors/a;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    return v1

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method public final v0(Lkotlinx/serialization/descriptors/a;ILjava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Le3;->d()Lu95;

    move-result-object v0

    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/a;->d(I)Lkotlinx/serialization/descriptors/a;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/a;->b()Z

    move-result p2

    const/4 v1, 0x1

    if-nez p2, :cond_0

    invoke-virtual {p0, p3}, Lkotlinx/serialization/json/internal/b;->e0(Ljava/lang/String;)Lkotlinx/serialization/json/b;

    move-result-object p2

    instance-of p2, p2, Lkotlinx/serialization/json/JsonNull;

    if-eqz p2, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/a;->getKind()Lid9;

    move-result-object p2

    sget-object v2, Lid9$b;->a:Lid9$b;

    invoke-static {p2, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/a;->b()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p3}, Lkotlinx/serialization/json/internal/b;->e0(Ljava/lang/String;)Lkotlinx/serialization/json/b;

    move-result-object p2

    instance-of p2, p2, Lkotlinx/serialization/json/JsonNull;

    if-eqz p2, :cond_2

    :cond_1
    :goto_0
    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p3}, Lkotlinx/serialization/json/internal/b;->e0(Ljava/lang/String;)Lkotlinx/serialization/json/b;

    move-result-object p0

    instance-of p2, p0, Lkotlinx/serialization/json/c;

    const/4 p3, 0x0

    if-eqz p2, :cond_3

    check-cast p0, Lkotlinx/serialization/json/c;

    goto :goto_1

    :cond_3
    move-object p0, p3

    :goto_1
    if-eqz p0, :cond_4

    invoke-static {p0}, Lla5;->f(Lkotlinx/serialization/json/c;)Ljava/lang/String;

    move-result-object p3

    :cond_4
    if-nez p3, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {p1, v0, p3}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->g(Lkotlinx/serialization/descriptors/a;Lu95;Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x3

    if-ne p0, p1, :cond_1

    :goto_2
    return v1
.end method

.method public w0()Lkotlinx/serialization/json/JsonObject;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/b;->f:Lkotlinx/serialization/json/JsonObject;

    return-object p0
.end method
