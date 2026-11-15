.class public abstract Lp3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lef5;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lp3;Lfd1;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lp3;->b(Lfd1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Lfd1;)Ljava/lang/Object;
    .locals 8

    invoke-interface {p0}, Lef5;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lfd1;->i(Lkotlinx/serialization/descriptors/a;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lpc8;->a(Lp3;Lfd1;Ljava/lang/String;)Lk92;

    move-result-object v4

    invoke-interface {p0}, Lef5;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v2

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lfd1$a;->c(Lfd1;Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public c(Lfd1;Ljava/lang/String;)Lk92;
    .locals 1

    const-string v0, "decoder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lfd1;->a()Ltd9;

    move-result-object p1

    invoke-virtual {p0}, Lp3;->e()Lde5;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Ltd9;->d(Lde5;Ljava/lang/String;)Lk92;

    move-result-object p0

    return-object p0
.end method

.method public d(Lca3;Ljava/lang/Object;)Lnd9;
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lca3;->a()Ltd9;

    move-result-object p1

    invoke-virtual {p0}, Lp3;->e()Lde5;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Ltd9;->e(Lde5;Ljava/lang/Object;)Lnd9;

    move-result-object p0

    return-object p0
.end method

.method public final deserialize(Lhu1;)Ljava/lang/Object;
    .locals 9

    const-string v0, "decoder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lef5;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v0

    invoke-interface {p1, v0}, Lhu1;->b(Lkotlinx/serialization/descriptors/a;)Lfd1;

    move-result-object p1

    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-interface {p1}, Lfd1;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p1}, Lp3;->a(Lp3;Lfd1;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Lef5;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v2

    invoke-interface {p1, v2}, Lfd1;->v(Lkotlinx/serialization/descriptors/a;)I

    move-result v3

    const/4 v2, -0x1

    if-eq v3, v2, :cond_5

    if-eqz v3, :cond_4

    const/4 v1, 0x1

    if-eq v3, v1, :cond_2

    new-instance p0, Lkotlinx/serialization/SerializationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid index in polymorphic deserialization of "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "unknown class"

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n Expected 0, 1 or DECODE_DONE(-1), but found "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object v1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v1, :cond_3

    iput-object v1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, p1, v1}, Lpc8;->a(Lp3;Lfd1;Ljava/lang/String;)Lk92;

    move-result-object v4

    invoke-interface {p0}, Lef5;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v2

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lfd1$a;->c(Lfd1;Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot read polymorphic value before its type token"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-interface {p0}, Lef5;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v2

    invoke-interface {p1, v2, v3}, Lfd1;->i(Lkotlinx/serialization/descriptors/a;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_6

    const-string p0, "null cannot be cast to non-null type T of kotlinx.serialization.internal.AbstractPolymorphicSerializer.deserialize$lambda$3"

    invoke-static {v1, p0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p0, v1

    :goto_1
    invoke-interface {p1, v0}, Lfd1;->c(Lkotlinx/serialization/descriptors/a;)V

    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Polymorphic value has not been read for class "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract e()Lde5;
.end method

.method public final serialize(Lca3;Ljava/lang/Object;)V
    .locals 5

    const-string v0, "encoder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lpc8;->b(Lp3;Lca3;Ljava/lang/Object;)Lnd9;

    move-result-object v0

    invoke-interface {p0}, Lef5;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v1

    invoke-interface {p1, v1}, Lca3;->b(Lkotlinx/serialization/descriptors/a;)Lid1;

    move-result-object p1

    invoke-interface {p0}, Lef5;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v2

    invoke-interface {v0}, Lnd9;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v3

    invoke-interface {v3}, Lkotlinx/serialization/descriptors/a;->h()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {p1, v2, v4, v3}, Lid1;->p(Lkotlinx/serialization/descriptors/a;ILjava/lang/String;)V

    invoke-interface {p0}, Lef5;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object p0

    const-string v2, "null cannot be cast to non-null type kotlinx.serialization.SerializationStrategy<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    invoke-static {v0, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-interface {p1, p0, v2, v0, p2}, Lid1;->q(Lkotlinx/serialization/descriptors/a;ILnd9;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Lid1;->c(Lkotlinx/serialization/descriptors/a;)V

    return-void
.end method
