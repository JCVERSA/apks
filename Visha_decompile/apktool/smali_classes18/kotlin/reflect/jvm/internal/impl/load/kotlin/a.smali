.class public abstract Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lcy6;Lxcb;ZZZ)Lkotlin/reflect/jvm/internal/impl/load/kotlin/d;
    .locals 2

    const-string v0, "proto"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$e;

    const-string v1, "propertySignature"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcj8;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmPropertySignature;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p3, :cond_2

    sget-object p3, Lod5;->a:Lod5;

    invoke-virtual {p3, p0, p1, p2, p5}, Lod5;->c(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lcy6;Lxcb;Z)Lid5$a;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/d;->b:Lkotlin/reflect/jvm/internal/impl/load/kotlin/d$a;

    invoke-virtual {p1, p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/d$a;->b(Lid5;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/d;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmPropertySignature;->hasSyntheticMethod()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/d;->b:Lkotlin/reflect/jvm/internal/impl/load/kotlin/d$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmPropertySignature;->getSyntheticMethod()Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmMethodSignature;

    move-result-object p2

    const-string p3, "signature.syntheticMethod"

    invoke-static {p2, p3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/d$a;->c(Lcy6;Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmMethodSignature;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/d;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1
.end method

.method public static synthetic b(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lcy6;Lxcb;ZZZILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/d;
    .locals 7

    and-int/lit8 p7, p6, 0x8

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, p3

    :goto_0
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_1

    move v5, v0

    goto :goto_1

    :cond_1
    move v5, p4

    :goto_1
    and-int/lit8 p3, p6, 0x20

    if-eqz p3, :cond_2

    const/4 p5, 0x1

    :cond_2
    move v6, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->a(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lcy6;Lxcb;ZZZ)Lkotlin/reflect/jvm/internal/impl/load/kotlin/d;

    move-result-object p0

    return-object p0
.end method
