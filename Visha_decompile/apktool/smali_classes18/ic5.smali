.class public final Lic5;
.super Lkotlinx/serialization/json/internal/b;
.source "SourceFile"


# instance fields
.field public final k:Lkotlinx/serialization/json/JsonObject;

.field public final l:Ljava/util/List;

.field public final m:I

.field public n:I


# direct methods
.method public constructor <init>(Lu95;Lkotlinx/serialization/json/JsonObject;)V
    .locals 8

    const-string v0, "json"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lkotlinx/serialization/json/internal/b;-><init>(Lu95;Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Lkotlinx/serialization/descriptors/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lic5;->k:Lkotlinx/serialization/json/JsonObject;

    invoke-virtual {p0}, Lic5;->w0()Lkotlinx/serialization/json/JsonObject;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonObject;->keySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lic5;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lic5;->m:I

    const/4 p1, -0x1

    iput p1, p0, Lic5;->n:I

    return-void
.end method


# virtual methods
.method public a0(Lkotlinx/serialization/descriptors/a;I)Ljava/lang/String;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    div-int/lit8 p2, p2, 0x2

    iget-object p0, p0, Lic5;->l:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public c(Lkotlinx/serialization/descriptors/a;)V
    .locals 0

    const-string p0, "descriptor"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public e0(Ljava/lang/String;)Lkotlinx/serialization/json/b;
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lic5;->n:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    invoke-static {p1}, Lla5;->c(Ljava/lang/String;)Lkotlinx/serialization/json/c;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lic5;->w0()Lkotlinx/serialization/json/JsonObject;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/collections/a;->m(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/json/b;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic s0()Lkotlinx/serialization/json/b;
    .locals 0

    invoke-virtual {p0}, Lic5;->w0()Lkotlinx/serialization/json/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public v(Lkotlinx/serialization/descriptors/a;)I
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, Lic5;->n:I

    iget v0, p0, Lic5;->m:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lic5;->n:I

    return p1

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public w0()Lkotlinx/serialization/json/JsonObject;
    .locals 0

    iget-object p0, p0, Lic5;->k:Lkotlinx/serialization/json/JsonObject;

    return-object p0
.end method
