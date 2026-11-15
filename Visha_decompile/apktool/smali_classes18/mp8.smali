.class public final Lmp8;
.super Ln71;
.source "SourceFile"


# instance fields
.field public final b:Lde5;

.field public final c:Lkotlinx/serialization/descriptors/a;


# direct methods
.method public constructor <init>(Lde5;Lef5;)V
    .locals 1

    const-string v0, "kClass"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eSerializer"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Ln71;-><init>(Lef5;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lmp8;->b:Lde5;

    new-instance p1, Lfg;

    invoke-interface {p2}, Lef5;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object p2

    invoke-direct {p1, p2}, Lfg;-><init>(Lkotlinx/serialization/descriptors/a;)V

    iput-object p1, p0, Lmp8;->c:Lkotlinx/serialization/descriptors/a;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lmp8;->o()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lmp8;->p(Ljava/util/ArrayList;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic c(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lmp8;->q(Ljava/util/ArrayList;I)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 0

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lmp8;->r([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic e(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lmp8;->s([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/a;
    .locals 0

    iget-object p0, p0, Lmp8;->c:Lkotlinx/serialization/descriptors/a;

    return-object p0
.end method

.method public bridge synthetic k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lmp8;->u([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic l(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lmp8;->v(Ljava/util/ArrayList;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic n(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2, p3}, Lmp8;->t(Ljava/util/ArrayList;ILjava/lang/Object;)V

    return-void
.end method

.method public o()Ljava/util/ArrayList;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public p(Ljava/util/ArrayList;)I
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public q(Ljava/util/ArrayList;I)V
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    return-void
.end method

.method public r([Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lxg;->a([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public s([Ljava/lang/Object;)I
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p1

    return p0
.end method

.method public t(Ljava/util/ArrayList;ILjava/lang/Object;)V
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public u([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-static {p1}, Lfi;->f([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public v(Ljava/util/ArrayList;)[Ljava/lang/Object;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lmp8;->b:Lde5;

    invoke-static {p1, p0}, La28;->m(Ljava/util/ArrayList;Lde5;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
