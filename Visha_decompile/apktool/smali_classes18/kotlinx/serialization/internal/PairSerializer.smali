.class public final Lkotlinx/serialization/internal/PairSerializer;
.super Lzf5;
.source "SourceFile"


# instance fields
.field public final c:Lkotlinx/serialization/descriptors/a;


# direct methods
.method public constructor <init>(Lef5;Lef5;)V
    .locals 2

    const-string v0, "keySerializer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "valueSerializer"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lzf5;-><init>(Lef5;Lef5;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlinx/serialization/descriptors/a;

    new-instance v1, Lkotlinx/serialization/internal/PairSerializer$descriptor$1;

    invoke-direct {v1, p1, p2}, Lkotlinx/serialization/internal/PairSerializer$descriptor$1;-><init>(Lef5;Lef5;)V

    const-string p1, "kotlin.Pair"

    invoke-static {p1, v0, v1}, Lkotlinx/serialization/descriptors/SerialDescriptorsKt;->b(Ljava/lang/String;[Lkotlinx/serialization/descriptors/a;Le74;)Lkotlinx/serialization/descriptors/a;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/internal/PairSerializer;->c:Lkotlinx/serialization/descriptors/a;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/PairSerializer;->f(Lkotlin/Pair;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/PairSerializer;->g(Lkotlin/Pair;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/PairSerializer;->h(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public f(Lkotlin/Pair;)Ljava/lang/Object;
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public g(Lkotlin/Pair;)Ljava/lang/Object;
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/a;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/internal/PairSerializer;->c:Lkotlinx/serialization/descriptors/a;

    return-object p0
.end method

.method public h(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;
    .locals 0

    invoke-static {p1, p2}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method
