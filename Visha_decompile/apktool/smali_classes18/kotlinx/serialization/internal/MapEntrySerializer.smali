.class public final Lkotlinx/serialization/internal/MapEntrySerializer;
.super Lzf5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/serialization/internal/MapEntrySerializer$a;
    }
.end annotation


# instance fields
.field public final c:Lkotlinx/serialization/descriptors/a;


# direct methods
.method public constructor <init>(Lef5;Lef5;)V
    .locals 3

    const-string v0, "keySerializer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "valueSerializer"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lzf5;-><init>(Lef5;Lef5;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Lkotlinx/serialization/descriptors/b$c;->a:Lkotlinx/serialization/descriptors/b$c;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlinx/serialization/descriptors/a;

    new-instance v2, Lkotlinx/serialization/internal/MapEntrySerializer$descriptor$1;

    invoke-direct {v2, p1, p2}, Lkotlinx/serialization/internal/MapEntrySerializer$descriptor$1;-><init>(Lef5;Lef5;)V

    const-string p1, "kotlin.collections.Map.Entry"

    invoke-static {p1, v0, v1, v2}, Lkotlinx/serialization/descriptors/SerialDescriptorsKt;->c(Ljava/lang/String;Lid9;[Lkotlinx/serialization/descriptors/a;Le74;)Lkotlinx/serialization/descriptors/a;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/internal/MapEntrySerializer;->c:Lkotlinx/serialization/descriptors/a;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/MapEntrySerializer;->f(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/MapEntrySerializer;->g(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/MapEntrySerializer;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public f(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public g(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/a;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/internal/MapEntrySerializer;->c:Lkotlinx/serialization/descriptors/a;

    return-object p0
.end method

.method public h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 0

    new-instance p0, Lkotlinx/serialization/internal/MapEntrySerializer$a;

    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/internal/MapEntrySerializer$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method
