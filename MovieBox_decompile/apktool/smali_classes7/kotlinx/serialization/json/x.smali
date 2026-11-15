.class public abstract Lkotlinx/serialization/json/x;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlinx/serialization/b;


# instance fields
.field private final tSerializer:Lkotlinx/serialization/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/b;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/serialization/b;)V
    .locals 1

    .line 1
    const-string v0, "tSerializer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lkotlinx/serialization/json/x;->tSerializer:Lkotlinx/serialization/b;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final deserialize(Lsy/e;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsy/e;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    const-string v0, "decoder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lkotlinx/serialization/json/k;->d(Lsy/e;)Lkotlinx/serialization/json/g;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Lkotlinx/serialization/json/g;->g()Lkotlinx/serialization/json/h;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {p1}, Lkotlinx/serialization/json/g;->d()Lkotlinx/serialization/json/a;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object v1, p0, Lkotlinx/serialization/json/x;->tSerializer:Lkotlinx/serialization/b;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/x;->transformDeserialize(Lkotlinx/serialization/json/h;)Lkotlinx/serialization/json/h;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v1, v0}, Lkotlinx/serialization/json/a;->d(Lkotlinx/serialization/a;Lkotlinx/serialization/json/h;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/x;->tSerializer:Lkotlinx/serialization/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlinx/serialization/b;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final serialize(Lsy/f;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsy/f;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "encoder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "value"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lkotlinx/serialization/json/k;->e(Lsy/f;)Lkotlinx/serialization/json/l;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lkotlinx/serialization/json/l;->d()Lkotlinx/serialization/json/a;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lkotlinx/serialization/json/x;->tSerializer:Lkotlinx/serialization/b;

    .line 20
    .line 21
    invoke-static {v0, p2, v1}, Lkotlinx/serialization/json/internal/TreeJsonEncoderKt;->c(Lkotlinx/serialization/json/a;Ljava/lang/Object;Lkotlinx/serialization/g;)Lkotlinx/serialization/json/h;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p0, p2}, Lkotlinx/serialization/json/x;->transformSerialize(Lkotlinx/serialization/json/h;)Lkotlinx/serialization/json/h;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-interface {p1, p2}, Lkotlinx/serialization/json/l;->A(Lkotlinx/serialization/json/h;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method protected abstract transformDeserialize(Lkotlinx/serialization/json/h;)Lkotlinx/serialization/json/h;
.end method

.method protected transformSerialize(Lkotlinx/serialization/json/h;)Lkotlinx/serialization/json/h;
    .locals 1

    .line 1
    const-string v0, "element"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method
