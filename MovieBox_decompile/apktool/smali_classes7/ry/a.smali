.class public abstract Lry/a;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final A(Lkotlin/jvm/internal/CharCompanionObject;)Lkotlinx/serialization/b;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlinx/serialization/internal/r;->a:Lkotlinx/serialization/internal/r;

    .line 7
    .line 8
    return-object p0
.end method

.method public static final B(Lkotlin/jvm/internal/DoubleCompanionObject;)Lkotlinx/serialization/b;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlinx/serialization/internal/c0;->a:Lkotlinx/serialization/internal/c0;

    .line 7
    .line 8
    return-object p0
.end method

.method public static final C(Lkotlin/jvm/internal/FloatCompanionObject;)Lkotlinx/serialization/b;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlinx/serialization/internal/h0;->a:Lkotlinx/serialization/internal/h0;

    .line 7
    .line 8
    return-object p0
.end method

.method public static final D(Lkotlin/jvm/internal/IntCompanionObject;)Lkotlinx/serialization/b;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlinx/serialization/internal/r0;->a:Lkotlinx/serialization/internal/r0;

    .line 7
    .line 8
    return-object p0
.end method

.method public static final E(Lkotlin/jvm/internal/LongCompanionObject;)Lkotlinx/serialization/b;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlinx/serialization/internal/b1;->a:Lkotlinx/serialization/internal/b1;

    .line 7
    .line 8
    return-object p0
.end method

.method public static final F(Lkotlin/jvm/internal/ShortCompanionObject;)Lkotlinx/serialization/b;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlinx/serialization/internal/a2;->a:Lkotlinx/serialization/internal/a2;

    .line 7
    .line 8
    return-object p0
.end method

.method public static final G(Lkotlin/jvm/internal/StringCompanionObject;)Lkotlinx/serialization/b;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    .line 7
    .line 8
    return-object p0
.end method

.method public static final H(Lkotlin/time/Duration$Companion;)Lkotlinx/serialization/b;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlinx/serialization/internal/d0;->a:Lkotlinx/serialization/internal/d0;

    .line 7
    .line 8
    return-object p0
.end method

.method public static final a(Lkotlin/reflect/KClass;Lkotlinx/serialization/b;)Lkotlinx/serialization/b;
    .locals 1

    .line 1
    const-string v0, "kClass"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "elementSerializer"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lkotlinx/serialization/internal/u1;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Lkotlinx/serialization/internal/u1;-><init>(Lkotlin/reflect/KClass;Lkotlinx/serialization/b;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static final b()Lkotlinx/serialization/b;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/serialization/internal/h;->c:Lkotlinx/serialization/internal/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final c()Lkotlinx/serialization/b;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/serialization/internal/k;->c:Lkotlinx/serialization/internal/k;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final d()Lkotlinx/serialization/b;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/serialization/internal/q;->c:Lkotlinx/serialization/internal/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final e()Lkotlinx/serialization/b;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/serialization/internal/b0;->c:Lkotlinx/serialization/internal/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final f()Lkotlinx/serialization/b;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/serialization/internal/g0;->c:Lkotlinx/serialization/internal/g0;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final g()Lkotlinx/serialization/b;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/serialization/internal/q0;->c:Lkotlinx/serialization/internal/q0;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final h(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;
    .locals 1

    .line 1
    const-string v0, "elementSerializer"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lkotlinx/serialization/internal/f;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lkotlinx/serialization/internal/f;-><init>(Lkotlinx/serialization/b;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static final i()Lkotlinx/serialization/b;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/serialization/internal/a1;->c:Lkotlinx/serialization/internal/a1;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final j(Lkotlinx/serialization/b;Lkotlinx/serialization/b;)Lkotlinx/serialization/b;
    .locals 1

    .line 1
    const-string v0, "keySerializer"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "valueSerializer"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lkotlinx/serialization/internal/MapEntrySerializer;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Lkotlinx/serialization/internal/MapEntrySerializer;-><init>(Lkotlinx/serialization/b;Lkotlinx/serialization/b;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static final k(Lkotlinx/serialization/b;Lkotlinx/serialization/b;)Lkotlinx/serialization/b;
    .locals 1

    .line 1
    const-string v0, "keySerializer"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "valueSerializer"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lkotlinx/serialization/internal/v0;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Lkotlinx/serialization/internal/v0;-><init>(Lkotlinx/serialization/b;Lkotlinx/serialization/b;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static final l(Lkotlinx/serialization/b;Lkotlinx/serialization/b;)Lkotlinx/serialization/b;
    .locals 1

    .line 1
    const-string v0, "keySerializer"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "valueSerializer"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lkotlinx/serialization/internal/PairSerializer;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Lkotlinx/serialization/internal/PairSerializer;-><init>(Lkotlinx/serialization/b;Lkotlinx/serialization/b;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static final m()Lkotlinx/serialization/b;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/serialization/internal/z1;->c:Lkotlinx/serialization/internal/z1;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final n(Lkotlinx/serialization/b;Lkotlinx/serialization/b;Lkotlinx/serialization/b;)Lkotlinx/serialization/b;
    .locals 1

    .line 1
    const-string v0, "aSerializer"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "bSerializer"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "cSerializer"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lkotlinx/serialization/internal/TripleSerializer;

    .line 17
    .line 18
    invoke-direct {v0, p0, p1, p2}, Lkotlinx/serialization/internal/TripleSerializer;-><init>(Lkotlinx/serialization/b;Lkotlinx/serialization/b;Lkotlinx/serialization/b;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public static final o()Lkotlinx/serialization/b;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/serialization/internal/f2;->c:Lkotlinx/serialization/internal/f2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final p()Lkotlinx/serialization/b;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/serialization/internal/i2;->c:Lkotlinx/serialization/internal/i2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final q()Lkotlinx/serialization/b;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/serialization/internal/l2;->c:Lkotlinx/serialization/internal/l2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final r()Lkotlinx/serialization/b;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/serialization/internal/o2;->c:Lkotlinx/serialization/internal/o2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lkotlinx/serialization/b;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Lkotlinx/serialization/descriptors/f;->b()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v0, Lkotlinx/serialization/internal/h1;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lkotlinx/serialization/internal/h1;-><init>(Lkotlinx/serialization/b;)V

    .line 20
    .line 21
    .line 22
    move-object p0, v0

    .line 23
    :goto_0
    return-object p0
.end method

.method public static final t(Lkotlin/UByte$Companion;)Lkotlinx/serialization/b;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlinx/serialization/internal/g2;->a:Lkotlinx/serialization/internal/g2;

    .line 7
    .line 8
    return-object p0
.end method

.method public static final u(Lkotlin/UInt$Companion;)Lkotlinx/serialization/b;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlinx/serialization/internal/j2;->a:Lkotlinx/serialization/internal/j2;

    .line 7
    .line 8
    return-object p0
.end method

.method public static final v(Lkotlin/ULong$Companion;)Lkotlinx/serialization/b;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlinx/serialization/internal/m2;->a:Lkotlinx/serialization/internal/m2;

    .line 7
    .line 8
    return-object p0
.end method

.method public static final w(Lkotlin/UShort$Companion;)Lkotlinx/serialization/b;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlinx/serialization/internal/p2;->a:Lkotlinx/serialization/internal/p2;

    .line 7
    .line 8
    return-object p0
.end method

.method public static final x(Lkotlin/Unit;)Lkotlinx/serialization/b;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlinx/serialization/internal/q2;->b:Lkotlinx/serialization/internal/q2;

    .line 7
    .line 8
    return-object p0
.end method

.method public static final y(Lkotlin/jvm/internal/BooleanCompanionObject;)Lkotlinx/serialization/b;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlinx/serialization/internal/i;->a:Lkotlinx/serialization/internal/i;

    .line 7
    .line 8
    return-object p0
.end method

.method public static final z(Lkotlin/jvm/internal/ByteCompanionObject;)Lkotlinx/serialization/b;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlinx/serialization/internal/l;->a:Lkotlinx/serialization/internal/l;

    .line 7
    .line 8
    return-object p0
.end method
