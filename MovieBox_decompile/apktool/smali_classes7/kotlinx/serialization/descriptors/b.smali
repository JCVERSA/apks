.class public abstract Lkotlinx/serialization/descriptors/b;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(Lkotlinx/serialization/descriptors/f;)Lkotlin/reflect/KClass;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p0, Lkotlinx/serialization/descriptors/c;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p0, Lkotlinx/serialization/descriptors/c;

    .line 11
    .line 12
    iget-object p0, p0, Lkotlinx/serialization/descriptors/c;->b:Lkotlin/reflect/KClass;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    instance-of v0, p0, Lkotlinx/serialization/internal/v1;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    check-cast p0, Lkotlinx/serialization/internal/v1;

    .line 20
    .line 21
    invoke-virtual {p0}, Lkotlinx/serialization/internal/v1;->k()Lkotlinx/serialization/descriptors/f;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Lkotlinx/serialization/descriptors/b;->a(Lkotlinx/serialization/descriptors/f;)Lkotlin/reflect/KClass;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p0, 0x0

    .line 31
    :goto_0
    return-object p0
.end method

.method public static final b(Lty/c;Lkotlinx/serialization/descriptors/f;)Lkotlinx/serialization/descriptors/f;
    .locals 2

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "descriptor"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lkotlinx/serialization/descriptors/b;->a(Lkotlinx/serialization/descriptors/f;)Lkotlin/reflect/KClass;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v0, 0x0

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    invoke-static {p0, p1, v0, v1, v0}, Lty/c;->c(Lty/c;Lkotlin/reflect/KClass;Ljava/util/List;ILjava/lang/Object;)Lkotlinx/serialization/b;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    invoke-interface {p0}, Lkotlinx/serialization/b;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_0
    return-object v0
.end method

.method public static final c(Lkotlinx/serialization/descriptors/f;Lkotlin/reflect/KClass;)Lkotlinx/serialization/descriptors/f;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "context"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lkotlinx/serialization/descriptors/c;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Lkotlinx/serialization/descriptors/c;-><init>(Lkotlinx/serialization/descriptors/f;Lkotlin/reflect/KClass;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method
