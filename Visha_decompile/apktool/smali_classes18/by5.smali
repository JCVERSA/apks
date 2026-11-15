.class public abstract Lby5;
.super Ls2;
.source "SourceFile"


# instance fields
.field public final a:Lef5;

.field public final b:Lef5;


# direct methods
.method public constructor <init>(Lef5;Lef5;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Ls2;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    iput-object p1, p0, Lby5;->a:Lef5;

    .line 4
    iput-object p2, p0, Lby5;->b:Lef5;

    return-void
.end method

.method public synthetic constructor <init>(Lef5;Lef5;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lby5;-><init>(Lef5;Lef5;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic g(Lfd1;Ljava/lang/Object;II)V
    .locals 0

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3, p4}, Lby5;->o(Lfd1;Ljava/util/Map;II)V

    return-void
.end method

.method public abstract getDescriptor()Lkotlinx/serialization/descriptors/a;
.end method

.method public bridge synthetic h(Lfd1;ILjava/lang/Object;Z)V
    .locals 0

    check-cast p3, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3, p4}, Lby5;->p(Lfd1;ILjava/util/Map;Z)V

    return-void
.end method

.method public final m()Lef5;
    .locals 0

    iget-object p0, p0, Lby5;->a:Lef5;

    return-object p0
.end method

.method public final n()Lef5;
    .locals 0

    iget-object p0, p0, Lby5;->b:Lef5;

    return-object p0
.end method

.method public final o(Lfd1;Ljava/util/Map;II)V
    .locals 4

    const-string v0, "decoder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p4, :cond_3

    const/4 v0, 0x2

    mul-int/2addr p4, v0

    const/4 v1, 0x0

    invoke-static {v1, p4}, Lwn8;->q(II)Lu15;

    move-result-object p4

    invoke-static {p4, v0}, Lwn8;->p(Ls15;I)Ls15;

    move-result-object p4

    invoke-virtual {p4}, Ls15;->b()I

    move-result v0

    invoke-virtual {p4}, Ls15;->c()I

    move-result v2

    invoke-virtual {p4}, Ls15;->f()I

    move-result p4

    if-lez p4, :cond_0

    if-le v0, v2, :cond_1

    :cond_0
    if-gez p4, :cond_2

    if-gt v2, v0, :cond_2

    :cond_1
    :goto_0
    add-int v3, p3, v0

    invoke-virtual {p0, p1, v3, p2, v1}, Lby5;->p(Lfd1;ILjava/util/Map;Z)V

    if-eq v0, v2, :cond_2

    add-int/2addr v0, p4

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Size must be known in advance when using READ_ALL"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final p(Lfd1;ILjava/util/Map;Z)V
    .locals 8

    const-string v0, "decoder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lby5;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v2

    iget-object v4, p0, Lby5;->a:Lef5;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move v3, p2

    invoke-static/range {v1 .. v7}, Lfd1$a;->c(Lfd1;Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Lby5;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object p4

    invoke-interface {p1, p4}, Lfd1;->v(Lkotlinx/serialization/descriptors/a;)I

    move-result p4

    add-int/lit8 v1, p2, 0x1

    if-ne p4, v1, :cond_0

    :goto_0
    move v3, p4

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Value must follow key in a map, index for key: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", returned index for value: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    add-int/lit8 p4, p2, 0x1

    goto :goto_0

    :goto_1
    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lby5;->b:Lef5;

    invoke-interface {p2}, Lef5;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object p2

    invoke-interface {p2}, Lkotlinx/serialization/descriptors/a;->getKind()Lid9;

    move-result-object p2

    instance-of p2, p2, Lef8;

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lby5;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object p2

    iget-object p0, p0, Lby5;->b:Lef5;

    invoke-static {p3, v0}, Lkotlin/collections/a;->m(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p1, p2, v3, p0, p4}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lby5;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v2

    iget-object v4, p0, Lby5;->b:Lef5;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lfd1$a;->c(Lfd1;Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-interface {p3, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public serialize(Lca3;Ljava/lang/Object;)V
    .locals 7

    const-string v0, "encoder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ls2;->e(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, Lby5;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lca3;->y(Lkotlinx/serialization/descriptors/a;I)Lid1;

    move-result-object p1

    invoke-virtual {p0, p2}, Ls2;->d(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lby5;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0}, Lby5;->m()Lef5;

    move-result-object v6

    invoke-interface {p1, v4, v0, v6, v3}, Lid1;->q(Lkotlinx/serialization/descriptors/a;ILnd9;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lby5;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v3

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lby5;->n()Lef5;

    move-result-object v4

    invoke-interface {p1, v3, v5, v4, v2}, Lid1;->q(Lkotlinx/serialization/descriptors/a;ILnd9;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1}, Lid1;->c(Lkotlinx/serialization/descriptors/a;)V

    return-void
.end method
