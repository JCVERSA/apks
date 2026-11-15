.class public abstract Lw2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lca3;
.implements Lid1;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final B(Lkotlinx/serialization/descriptors/a;IF)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lw2;->G(Lkotlinx/serialization/descriptors/a;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3}, Lw2;->m(F)V

    :cond_0
    return-void
.end method

.method public C(Lnd9;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lca3$a;->d(Lca3;Lnd9;Ljava/lang/Object;)V

    return-void
.end method

.method public abstract D(C)V
.end method

.method public E()V
    .locals 0

    invoke-static {p0}, Lca3$a;->b(Lca3;)V

    return-void
.end method

.method public final F(Lkotlinx/serialization/descriptors/a;ID)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lw2;->G(Lkotlinx/serialization/descriptors/a;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3, p4}, Lw2;->x(D)V

    :cond_0
    return-void
.end method

.method public G(Lkotlinx/serialization/descriptors/a;I)Z
    .locals 0

    const-string p0, "descriptor"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public H(Lnd9;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lca3$a;->c(Lca3;Lnd9;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lkotlinx/serialization/descriptors/a;)Lid1;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public c(Lkotlinx/serialization/descriptors/a;)V
    .locals 0

    const-string p0, "descriptor"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract e(B)V
.end method

.method public g(Lkotlinx/serialization/descriptors/a;)Lca3;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public h(Lkotlinx/serialization/descriptors/a;ILnd9;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lw2;->G(Lkotlinx/serialization/descriptors/a;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3, p4}, Lw2;->H(Lnd9;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final i(Lkotlinx/serialization/descriptors/a;IC)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lw2;->G(Lkotlinx/serialization/descriptors/a;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3}, Lw2;->D(C)V

    :cond_0
    return-void
.end method

.method public final j(Lkotlinx/serialization/descriptors/a;IB)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lw2;->G(Lkotlinx/serialization/descriptors/a;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3}, Lw2;->e(B)V

    :cond_0
    return-void
.end method

.method public abstract k(S)V
.end method

.method public abstract l(Z)V
.end method

.method public abstract m(F)V
.end method

.method public final n(Lkotlinx/serialization/descriptors/a;II)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lw2;->G(Lkotlinx/serialization/descriptors/a;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3}, Lw2;->s(I)V

    :cond_0
    return-void
.end method

.method public final o(Lkotlinx/serialization/descriptors/a;IZ)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lw2;->G(Lkotlinx/serialization/descriptors/a;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3}, Lw2;->l(Z)V

    :cond_0
    return-void
.end method

.method public final p(Lkotlinx/serialization/descriptors/a;ILjava/lang/String;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lw2;->G(Lkotlinx/serialization/descriptors/a;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3}, Lw2;->v(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public q(Lkotlinx/serialization/descriptors/a;ILnd9;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lw2;->G(Lkotlinx/serialization/descriptors/a;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3, p4}, Lw2;->C(Lnd9;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public r(Lkotlinx/serialization/descriptors/a;I)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lid1$a;->a(Lid1;Lkotlinx/serialization/descriptors/a;I)Z

    move-result p0

    return p0
.end method

.method public abstract s(I)V
.end method

.method public final t(Lkotlinx/serialization/descriptors/a;IS)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lw2;->G(Lkotlinx/serialization/descriptors/a;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3}, Lw2;->k(S)V

    :cond_0
    return-void
.end method

.method public final u(Lkotlinx/serialization/descriptors/a;IJ)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lw2;->G(Lkotlinx/serialization/descriptors/a;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3, p4}, Lw2;->z(J)V

    :cond_0
    return-void
.end method

.method public abstract v(Ljava/lang/String;)V
.end method

.method public final w(Lkotlinx/serialization/descriptors/a;I)Lca3;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lw2;->G(Lkotlinx/serialization/descriptors/a;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/a;->d(I)Lkotlinx/serialization/descriptors/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw2;->g(Lkotlinx/serialization/descriptors/a;)Lca3;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lc17;->a:Lc17;

    :goto_0
    return-object p0
.end method

.method public abstract x(D)V
.end method

.method public y(Lkotlinx/serialization/descriptors/a;I)Lid1;
    .locals 0

    invoke-static {p0, p1, p2}, Lca3$a;->a(Lca3;Lkotlinx/serialization/descriptors/a;I)Lid1;

    move-result-object p0

    return-object p0
.end method

.method public abstract z(J)V
.end method
