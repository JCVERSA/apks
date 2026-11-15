.class public final Ljo4;
.super Lq71;
.source "SourceFile"


# instance fields
.field public final b:Lkotlinx/serialization/descriptors/a;


# direct methods
.method public constructor <init>(Lef5;)V
    .locals 1

    const-string v0, "eSerializer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lq71;-><init>(Lef5;)V

    new-instance v0, Lio4;

    invoke-interface {p1}, Lef5;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lio4;-><init>(Lkotlinx/serialization/descriptors/a;)V

    iput-object v0, p0, Ljo4;->b:Lkotlinx/serialization/descriptors/a;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljo4;->q()Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljo4;->r(Ljava/util/HashSet;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic c(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p0, p1, p2}, Ljo4;->s(Ljava/util/HashSet;I)V

    return-void
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/a;
    .locals 0

    iget-object p0, p0, Ljo4;->b:Lkotlinx/serialization/descriptors/a;

    return-object p0
.end method

.method public bridge synthetic k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Ljo4;->u(Ljava/util/Set;)Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic l(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljo4;->v(Ljava/util/HashSet;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic n(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p0, p1, p2, p3}, Ljo4;->t(Ljava/util/HashSet;ILjava/lang/Object;)V

    return-void
.end method

.method public q()Ljava/util/HashSet;
    .locals 0

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method public r(Ljava/util/HashSet;)I
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p0

    return p0
.end method

.method public s(Ljava/util/HashSet;I)V
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public t(Ljava/util/HashSet;ILjava/lang/Object;)V
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public u(Ljava/util/Set;)Ljava/util/HashSet;
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Ljava/util/HashSet;

    if-eqz p0, :cond_0

    move-object p0, p1

    check-cast p0, Ljava/util/HashSet;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    new-instance p0, Ljava/util/HashSet;

    check-cast p1, Ljava/util/Collection;

    invoke-direct {p0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :cond_1
    return-object p0
.end method

.method public v(Ljava/util/HashSet;)Ljava/util/Set;
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
