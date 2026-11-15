.class public abstract Lko6;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/StringBuilder;Leh5;)V
    .locals 0

    invoke-static {p1}, Lko6;->g(Leh5;)Lqd5;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static final b(Lkotlin/reflect/jvm/internal/impl/descriptors/e;ZZ)Ljava/lang/String;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_1

    instance-of p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    if-eqz p2, :cond_0

    const-string p2, "<init>"

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lgy6;->getName()Lby6;

    move-result-object p2

    invoke-virtual {p2}, Lby6;->b()Ljava/lang/String;

    move-result-object p2

    const-string v1, "name.asString()"

    invoke-static {p2, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p2, "("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->b0()Lro8;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lknb;->getType()Leh5;

    move-result-object p2

    const-string v1, "it.type"

    invoke-static {p2, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p2}, Lko6;->a(Ljava/lang/StringBuilder;Leh5;)V

    :cond_2
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->f()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    invoke-interface {v1}, Lknb;->getType()Leh5;

    move-result-object v1

    const-string v2, "parameter.type"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lko6;->a(Ljava/lang/StringBuilder;Leh5;)V

    goto :goto_1

    :cond_3
    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_5

    invoke-static {p0}, Lq82;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p0, "V"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getReturnType()Leh5;

    move-result-object p0

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {v0, p0}, Lko6;->a(Ljava/lang/StringBuilder;Leh5;)V

    :cond_5
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic c(Lkotlin/reflect/jvm/internal/impl/descriptors/e;ZZILjava/lang/Object;)Ljava/lang/String;
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    :cond_1
    invoke-static {p0, p1, p2}, Lko6;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/e;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Ljava/lang/String;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;

    invoke-static {p0}, Ly82;->E(Lxt1;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    invoke-interface {p0}, Lzt1;->b()Lxt1;

    move-result-object v1

    instance-of v3, v1, Lqw0;

    if-eqz v3, :cond_1

    check-cast v1, Lqw0;

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_2

    return-object v2

    :cond_2
    invoke-interface {v1}, Lgy6;->getName()Lby6;

    move-result-object v3

    invoke-virtual {v3}, Lby6;->h()Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v2

    :cond_3
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    move-result-object p0

    instance-of v3, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    if-eqz v3, :cond_4

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    goto :goto_1

    :cond_4
    move-object p0, v2

    :goto_1
    if-nez p0, :cond_5

    return-object v2

    :cond_5
    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {p0, v4, v4, v3, v2}, Lko6;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/e;ZZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Ljo6;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;Lqw0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Z
    .locals 5

    const-string v0, "f"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    invoke-interface {v0}, Lgy6;->getName()Lby6;

    move-result-object v2

    invoke-virtual {v2}, Lby6;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "remove"

    invoke-static {v2, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/SpecialBuiltinMembers;->h(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->f()Ljava/util/List;

    move-result-object p0

    const-string v2, "f.original.valueParameters"

    invoke-static {p0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Li81;->O0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    invoke-interface {p0}, Lknb;->getType()Leh5;

    move-result-object p0

    const-string v2, "f.original.valueParameters.single().type"

    invoke-static {p0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lko6;->g(Leh5;)Lqd5;

    move-result-object p0

    instance-of v2, p0, Lqd5$d;

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    check-cast p0, Lqd5$d;

    goto :goto_0

    :cond_2
    move-object p0, v4

    :goto_0
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lqd5$d;->i()Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    move-result-object v4

    :cond_3
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->INT:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    if-eq v4, p0, :cond_4

    return v1

    :cond_4
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/BuiltinMethodsWithSpecialGenericSignature;->k(Lkotlin/reflect/jvm/internal/impl/descriptors/e;)Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object p0

    if-nez p0, :cond_5

    return v1

    :cond_5
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->f()Ljava/util/List;

    move-result-object v0

    const-string v2, "overridden.original.valueParameters"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Li81;->O0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    invoke-interface {v0}, Lknb;->getType()Leh5;

    move-result-object v0

    const-string v2, "overridden.original.valueParameters.single().type"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lko6;->g(Leh5;)Lqd5;

    move-result-object v0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->b()Lxt1;

    move-result-object p0

    const-string v2, "overridden.containingDeclaration"

    invoke-static {p0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->m(Lxt1;)Lp54;

    move-result-object p0

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/e$a;->d0:Lo54;

    invoke-virtual {v2}, Lo54;->j()Lp54;

    move-result-object v2

    invoke-static {p0, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    instance-of p0, v0, Lqd5$c;

    if-eqz p0, :cond_6

    check-cast v0, Lqd5$c;

    invoke-virtual {v0}, Lqd5$c;->i()Ljava/lang/String;

    move-result-object p0

    const-string v0, "java/lang/Object"

    invoke-static {p0, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    move v1, v3

    :cond_6
    :goto_1
    return v1
.end method

.method public static final f(Lqw0;)Ljava/lang/String;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lm85;->a:Lm85;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->l(Lxt1;)Lo54;

    move-result-object v1

    invoke-virtual {v1}, Lo54;->j()Lp54;

    move-result-object v1

    const-string v2, "fqNameSafe.toUnsafe()"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lm85;->n(Lp54;)Lxw0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lfd5;->b(Lxw0;)Lfd5;

    move-result-object p0

    invoke-virtual {p0}, Lfd5;->f()Ljava/lang/String;

    move-result-object p0

    const-string v0, "byClassId(it).internalName"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lq82;->b(Lqw0;Ldcb;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final g(Leh5;)Lqd5;
    .locals 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lsd5;->a:Lsd5;

    sget-object v3, Lfcb;->o:Lfcb;

    sget-object v4, Lecb;->a:Lecb;

    const/16 v7, 0x20

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v8}, Lq82;->e(Leh5;Lrd5;Lfcb;Ldcb;Lgd5;Lu74;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqd5;

    return-object p0
.end method
