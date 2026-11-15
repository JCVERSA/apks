.class public final Lqb5;
.super Le3;
.source "SourceFile"


# instance fields
.field public final f:Lkotlinx/serialization/json/b;


# direct methods
.method public constructor <init>(Lu95;Lkotlinx/serialization/json/b;)V
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Le3;-><init>(Lu95;Lkotlinx/serialization/json/b;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lqb5;->f:Lkotlinx/serialization/json/b;

    const-string p1, "primitive"

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/TaggedDecoder;->X(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public e0(Ljava/lang/String;)Lkotlinx/serialization/json/b;
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "primitive"

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lqb5;->s0()Lkotlinx/serialization/json/b;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This input can only handle primitives with \'primitive\' tag"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public s0()Lkotlinx/serialization/json/b;
    .locals 0

    iget-object p0, p0, Lqb5;->f:Lkotlinx/serialization/json/b;

    return-object p0
.end method

.method public v(Lkotlinx/serialization/descriptors/a;)I
    .locals 0

    const-string p0, "descriptor"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
