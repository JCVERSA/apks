.class public final Lkotlinx/serialization/internal/TripleSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lef5;


# instance fields
.field public final a:Lef5;

.field public final b:Lef5;

.field public final c:Lef5;

.field public final d:Lkotlinx/serialization/descriptors/a;


# direct methods
.method public constructor <init>(Lef5;Lef5;Lef5;)V
    .locals 1

    const-string v0, "aSerializer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bSerializer"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cSerializer"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/internal/TripleSerializer;->a:Lef5;

    iput-object p2, p0, Lkotlinx/serialization/internal/TripleSerializer;->b:Lef5;

    iput-object p3, p0, Lkotlinx/serialization/internal/TripleSerializer;->c:Lef5;

    const/4 p1, 0x0

    new-array p1, p1, [Lkotlinx/serialization/descriptors/a;

    new-instance p2, Lkotlinx/serialization/internal/TripleSerializer$descriptor$1;

    invoke-direct {p2, p0}, Lkotlinx/serialization/internal/TripleSerializer$descriptor$1;-><init>(Lkotlinx/serialization/internal/TripleSerializer;)V

    const-string p3, "kotlin.Triple"

    invoke-static {p3, p1, p2}, Lkotlinx/serialization/descriptors/SerialDescriptorsKt;->b(Ljava/lang/String;[Lkotlinx/serialization/descriptors/a;Le74;)Lkotlinx/serialization/descriptors/a;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/internal/TripleSerializer;->d:Lkotlinx/serialization/descriptors/a;

    return-void
.end method

.method public static final synthetic a(Lkotlinx/serialization/internal/TripleSerializer;)Lef5;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/internal/TripleSerializer;->a:Lef5;

    return-object p0
.end method

.method public static final synthetic b(Lkotlinx/serialization/internal/TripleSerializer;)Lef5;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/internal/TripleSerializer;->b:Lef5;

    return-object p0
.end method

.method public static final synthetic c(Lkotlinx/serialization/internal/TripleSerializer;)Lef5;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/internal/TripleSerializer;->c:Lef5;

    return-object p0
.end method


# virtual methods
.method public final d(Lfd1;)Lkotlin/Triple;
    .locals 9

    invoke-virtual {p0}, Lkotlinx/serialization/internal/TripleSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v1

    iget-object v3, p0, Lkotlinx/serialization/internal/TripleSerializer;->a:Lef5;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lfd1$a;->c(Lfd1;Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/serialization/internal/TripleSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v2

    iget-object v4, p0, Lkotlinx/serialization/internal/TripleSerializer;->b:Lef5;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lfd1$a;->c(Lfd1;Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/TripleSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v3

    iget-object v5, p0, Lkotlinx/serialization/internal/TripleSerializer;->c:Lef5;

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lfd1$a;->c(Lfd1;Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lkotlinx/serialization/internal/TripleSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object p0

    invoke-interface {p1, p0}, Lfd1;->c(Lkotlinx/serialization/descriptors/a;)V

    new-instance p0, Lkotlin/Triple;

    invoke-direct {p0, v0, v1, v2}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic deserialize(Lhu1;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/TripleSerializer;->f(Lhu1;)Lkotlin/Triple;

    move-result-object p0

    return-object p0
.end method

.method public final e(Lfd1;)Lkotlin/Triple;
    .locals 11

    invoke-static {}, Lzab;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lzab;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lzab;->a()Ljava/lang/Object;

    move-result-object v2

    :goto_0
    invoke-virtual {p0}, Lkotlinx/serialization/internal/TripleSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v3

    invoke-interface {p1, v3}, Lfd1;->v(Lkotlinx/serialization/descriptors/a;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v2, 0x2

    if-ne v3, v2, :cond_0

    invoke-virtual {p0}, Lkotlinx/serialization/internal/TripleSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v5

    iget-object v7, p0, Lkotlinx/serialization/internal/TripleSerializer;->c:Lef5;

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v6, 0x2

    const/4 v8, 0x0

    move-object v4, p1

    invoke-static/range {v4 .. v10}, Lfd1$a;->c(Lfd1;Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlinx/serialization/SerializationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected index "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0}, Lkotlinx/serialization/internal/TripleSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v4

    iget-object v6, p0, Lkotlinx/serialization/internal/TripleSerializer;->b:Lef5;

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v9}, Lfd1$a;->c(Lfd1;Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lkotlinx/serialization/internal/TripleSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v4

    iget-object v6, p0, Lkotlinx/serialization/internal/TripleSerializer;->a:Lef5;

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v9}, Lfd1$a;->c(Lfd1;Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lkotlinx/serialization/internal/TripleSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object p0

    invoke-interface {p1, p0}, Lfd1;->c(Lkotlinx/serialization/descriptors/a;)V

    invoke-static {}, Lzab;->a()Ljava/lang/Object;

    move-result-object p0

    if-eq v0, p0, :cond_6

    invoke-static {}, Lzab;->a()Ljava/lang/Object;

    move-result-object p0

    if-eq v1, p0, :cond_5

    invoke-static {}, Lzab;->a()Ljava/lang/Object;

    move-result-object p0

    if-eq v2, p0, :cond_4

    new-instance p0, Lkotlin/Triple;

    invoke-direct {p0, v0, v1, v2}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_4
    new-instance p0, Lkotlinx/serialization/SerializationException;

    const-string p1, "Element \'third\' is missing"

    invoke-direct {p0, p1}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Lkotlinx/serialization/SerializationException;

    const-string p1, "Element \'second\' is missing"

    invoke-direct {p0, p1}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Lkotlinx/serialization/SerializationException;

    const-string p1, "Element \'first\' is missing"

    invoke-direct {p0, p1}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public f(Lhu1;)Lkotlin/Triple;
    .locals 1

    const-string v0, "decoder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/internal/TripleSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v0

    invoke-interface {p1, v0}, Lhu1;->b(Lkotlinx/serialization/descriptors/a;)Lfd1;

    move-result-object p1

    invoke-interface {p1}, Lfd1;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/TripleSerializer;->d(Lfd1;)Lkotlin/Triple;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/TripleSerializer;->e(Lfd1;)Lkotlin/Triple;

    move-result-object p0

    return-object p0
.end method

.method public g(Lca3;Lkotlin/Triple;)V
    .locals 4

    const-string v0, "encoder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/internal/TripleSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v0

    invoke-interface {p1, v0}, Lca3;->b(Lkotlinx/serialization/descriptors/a;)Lid1;

    move-result-object p1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/TripleSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/serialization/internal/TripleSerializer;->a:Lef5;

    invoke-virtual {p2}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p1, v0, v3, v1, v2}, Lid1;->q(Lkotlinx/serialization/descriptors/a;ILnd9;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lkotlinx/serialization/internal/TripleSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/serialization/internal/TripleSerializer;->b:Lef5;

    invoke-virtual {p2}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {p1, v0, v3, v1, v2}, Lid1;->q(Lkotlinx/serialization/descriptors/a;ILnd9;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lkotlinx/serialization/internal/TripleSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/serialization/internal/TripleSerializer;->c:Lef5;

    invoke-virtual {p2}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    move-result-object p2

    const/4 v2, 0x2

    invoke-interface {p1, v0, v2, v1, p2}, Lid1;->q(Lkotlinx/serialization/descriptors/a;ILnd9;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lkotlinx/serialization/internal/TripleSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object p0

    invoke-interface {p1, p0}, Lid1;->c(Lkotlinx/serialization/descriptors/a;)V

    return-void
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/a;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/internal/TripleSerializer;->d:Lkotlinx/serialization/descriptors/a;

    return-object p0
.end method

.method public bridge synthetic serialize(Lca3;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lkotlin/Triple;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TripleSerializer;->g(Lca3;Lkotlin/Triple;)V

    return-void
.end method
