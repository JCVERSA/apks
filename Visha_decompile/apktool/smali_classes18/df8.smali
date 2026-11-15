.class public abstract Ldf8;
.super Ln71;
.source "SourceFile"


# instance fields
.field public final b:Lkotlinx/serialization/descriptors/a;


# direct methods
.method public constructor <init>(Lef5;)V
    .locals 1

    const-string v0, "primitiveSerializer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ln71;-><init>(Lef5;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcf8;

    invoke-interface {p1}, Lef5;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcf8;-><init>(Lkotlinx/serialization/descriptors/a;)V

    iput-object v0, p0, Ldf8;->b:Lkotlinx/serialization/descriptors/a;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ldf8;->o()Lbf8;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lbf8;

    invoke-virtual {p0, p1}, Ldf8;->p(Lbf8;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic c(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lbf8;

    invoke-virtual {p0, p1, p2}, Ldf8;->q(Lbf8;I)V

    return-void
.end method

.method public final d(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This method lead to boxing and must not be used, use writeContents instead"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final deserialize(Lhu1;)Ljava/lang/Object;
    .locals 1

    const-string v0, "decoder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ls2;->f(Lhu1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/a;
    .locals 0

    iget-object p0, p0, Ldf8;->b:Lkotlinx/serialization/descriptors/a;

    return-object p0
.end method

.method public bridge synthetic l(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lbf8;

    invoke-virtual {p0, p1}, Ldf8;->t(Lbf8;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic n(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Lbf8;

    invoke-virtual {p0, p1, p2, p3}, Ldf8;->s(Lbf8;ILjava/lang/Object;)V

    return-void
.end method

.method public final o()Lbf8;
    .locals 1

    invoke-virtual {p0}, Ldf8;->r()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ls2;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbf8;

    return-object p0
.end method

.method public final p(Lbf8;)I
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lbf8;->d()I

    move-result p0

    return p0
.end method

.method public final q(Lbf8;I)V
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lbf8;->b(I)V

    return-void
.end method

.method public abstract r()Ljava/lang/Object;
.end method

.method public final s(Lbf8;ILjava/lang/Object;)V
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This method lead to boxing and must not be used, use Builder.append instead"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final serialize(Lca3;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "encoder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ls2;->e(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Ldf8;->b:Lkotlinx/serialization/descriptors/a;

    invoke-interface {p1, v1, v0}, Lca3;->y(Lkotlinx/serialization/descriptors/a;I)Lid1;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v0}, Ldf8;->u(Lid1;Ljava/lang/Object;I)V

    invoke-interface {p1, v1}, Lid1;->c(Lkotlinx/serialization/descriptors/a;)V

    return-void
.end method

.method public final t(Lbf8;)Ljava/lang/Object;
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lbf8;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract u(Lid1;Ljava/lang/Object;I)V
.end method
