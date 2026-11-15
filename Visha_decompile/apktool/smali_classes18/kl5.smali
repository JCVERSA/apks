.class public final Lkl5;
.super Lby5;
.source "SourceFile"


# instance fields
.field public final c:Lkotlinx/serialization/descriptors/a;


# direct methods
.method public constructor <init>(Lef5;Lef5;)V
    .locals 1

    const-string v0, "kSerializer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vSerializer"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lby5;-><init>(Lef5;Lef5;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Ljl5;

    invoke-interface {p1}, Lef5;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object p1

    invoke-interface {p2}, Lef5;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljl5;-><init>(Lkotlinx/serialization/descriptors/a;Lkotlinx/serialization/descriptors/a;)V

    iput-object v0, p0, Lkl5;->c:Lkotlinx/serialization/descriptors/a;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lkl5;->q()Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Lkl5;->r(Ljava/util/LinkedHashMap;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic c(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1, p2}, Lkl5;->s(Ljava/util/LinkedHashMap;I)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 0

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lkl5;->t(Ljava/util/Map;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic e(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lkl5;->u(Ljava/util/Map;)I

    move-result p0

    return p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/a;
    .locals 0

    iget-object p0, p0, Lkl5;->c:Lkotlinx/serialization/descriptors/a;

    return-object p0
.end method

.method public bridge synthetic k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lkl5;->v(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic l(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Lkl5;->w(Ljava/util/LinkedHashMap;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public q()Ljava/util/LinkedHashMap;
    .locals 0

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p0
.end method

.method public r(Ljava/util/LinkedHashMap;)I
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/AbstractMap;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public s(Ljava/util/LinkedHashMap;I)V
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public t(Ljava/util/Map;)Ljava/util/Iterator;
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public u(Ljava/util/Map;)I
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public v(Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Ljava/util/LinkedHashMap;

    if-eqz p0, :cond_0

    move-object p0, p1

    check-cast p0, Ljava/util/LinkedHashMap;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    :cond_1
    return-object p0
.end method

.method public w(Ljava/util/LinkedHashMap;)Ljava/util/Map;
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
