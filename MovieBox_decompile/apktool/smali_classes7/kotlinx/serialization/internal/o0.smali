.class public abstract Lkotlinx/serialization/internal/o0;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(Ljava/lang/String;Lkotlinx/serialization/b;)Lkotlinx/serialization/descriptors/f;
    .locals 2

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "primitiveSerializer"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lkotlinx/serialization/internal/n0;

    .line 12
    .line 13
    new-instance v1, Lkotlinx/serialization/internal/o0$a;

    .line 14
    .line 15
    invoke-direct {v1, p1}, Lkotlinx/serialization/internal/o0$a;-><init>(Lkotlinx/serialization/b;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0, v1}, Lkotlinx/serialization/internal/n0;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/i0;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method
