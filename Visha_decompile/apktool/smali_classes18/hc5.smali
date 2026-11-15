.class public final Lhc5;
.super Le3;
.source "SourceFile"


# instance fields
.field public final f:Lkotlinx/serialization/json/a;

.field public final g:I

.field public h:I


# direct methods
.method public constructor <init>(Lu95;Lkotlinx/serialization/json/a;)V
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Le3;-><init>(Lu95;Lkotlinx/serialization/json/b;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lhc5;->f:Lkotlinx/serialization/json/a;

    invoke-virtual {p0}, Lhc5;->u0()Lkotlinx/serialization/json/a;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->size()I

    move-result p1

    iput p1, p0, Lhc5;->g:I

    const/4 p1, -0x1

    iput p1, p0, Lhc5;->h:I

    return-void
.end method


# virtual methods
.method public a0(Lkotlinx/serialization/descriptors/a;I)Ljava/lang/String;
    .locals 0

    const-string p0, "descriptor"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public e0(Ljava/lang/String;)Lkotlinx/serialization/json/b;
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lhc5;->u0()Lkotlinx/serialization/json/a;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/a;->c(I)Lkotlinx/serialization/json/b;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic s0()Lkotlinx/serialization/json/b;
    .locals 0

    invoke-virtual {p0}, Lhc5;->u0()Lkotlinx/serialization/json/a;

    move-result-object p0

    return-object p0
.end method

.method public u0()Lkotlinx/serialization/json/a;
    .locals 0

    iget-object p0, p0, Lhc5;->f:Lkotlinx/serialization/json/a;

    return-object p0
.end method

.method public v(Lkotlinx/serialization/descriptors/a;)I
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, Lhc5;->h:I

    iget v0, p0, Lhc5;->g:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lhc5;->h:I

    return p1

    :cond_0
    const/4 p0, -0x1

    return p0
.end method
