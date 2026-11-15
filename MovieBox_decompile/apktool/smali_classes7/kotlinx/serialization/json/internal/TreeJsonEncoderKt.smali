.class public abstract Lkotlinx/serialization/json/internal/TreeJsonEncoderKt;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final synthetic a(Lkotlinx/serialization/descriptors/f;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lkotlinx/serialization/json/internal/TreeJsonEncoderKt;->b(Lkotlinx/serialization/descriptors/f;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final b(Lkotlinx/serialization/descriptors/f;)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/f;->d()Lkotlinx/serialization/descriptors/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lkotlinx/serialization/descriptors/e;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/f;->d()Lkotlinx/serialization/descriptors/h;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    sget-object v0, Lkotlinx/serialization/descriptors/h$b;->a:Lkotlinx/serialization/descriptors/h$b;

    .line 14
    .line 15
    if-ne p0, v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    return p0
.end method

.method public static final c(Lkotlinx/serialization/json/a;Ljava/lang/Object;Lkotlinx/serialization/g;)Lkotlinx/serialization/json/h;
    .locals 3

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "serializer"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 12
    .line 13
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lkotlinx/serialization/json/internal/c0;

    .line 17
    .line 18
    new-instance v2, Lkotlinx/serialization/json/internal/TreeJsonEncoderKt$writeJson$encoder$1;

    .line 19
    .line 20
    invoke-direct {v2, v0}, Lkotlinx/serialization/json/internal/TreeJsonEncoderKt$writeJson$encoder$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, p0, v2}, Lkotlinx/serialization/json/internal/c0;-><init>(Lkotlinx/serialization/json/a;Lkotlin/jvm/functions/Function1;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p2, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->e(Lkotlinx/serialization/g;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 30
    .line 31
    if-nez p0, :cond_0

    .line 32
    .line 33
    const-string p0, "result"

    .line 34
    .line 35
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    check-cast p0, Lkotlinx/serialization/json/h;

    .line 41
    .line 42
    :goto_0
    return-object p0
.end method
