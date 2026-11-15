.class public abstract Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCallerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a(ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Void;
    .locals 0

    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCallerKt;->j(ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCallerKt;->k(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/Class;Ljava/util/Map;Lyi5;Lyi5;Ljava/util/List;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static/range {p0 .. p7}, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCallerKt;->i(Ljava/lang/Class;Ljava/util/Map;Lyi5;Lyi5;Ljava/util/List;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Ljava/lang/Class;Ljava/util/Map;Ljava/util/List;)Ljava/lang/Object;
    .locals 9

    const-string v0, "annotationClass"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "methods"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCallerKt$createAnnotationInstance$hashCode$2;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCallerKt$createAnnotationInstance$hashCode$2;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v5

    new-instance v0, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCallerKt$createAnnotationInstance$toString$2;

    invoke-direct {v0, p0, p1}, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCallerKt$createAnnotationInstance$toString$2;-><init>(Ljava/lang/Class;Ljava/util/Map;)V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    filled-new-array {p0}, [Ljava/lang/Class;

    move-result-object v7

    new-instance v8, Lfd;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lfd;-><init>(Ljava/lang/Class;Ljava/util/Map;Lyi5;Lyi5;Ljava/util/List;)V

    invoke-static {v0, v7, v8}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type T of kotlin.reflect.jvm.internal.calls.AnnotationConstructorCallerKt.createAnnotationInstance"

    invoke-static {p0, p1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic e(Ljava/lang/Class;Ljava/util/Map;Ljava/util/List;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    new-instance p3, Ljava/util/ArrayList;

    const/16 p4, 0xa

    invoke-static {p2, p4}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p4, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object p2, p3

    :cond_1
    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCallerKt;->d(Ljava/lang/Class;Ljava/util/Map;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Ljava/lang/Class;Ljava/util/List;Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p3, Ljava/lang/annotation/Annotation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Ljava/lang/annotation/Annotation;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Led5;->a(Ljava/lang/annotation/Annotation;)Lde5;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Led5;->b(Lde5;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    invoke-static {v0, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_e

    check-cast p1, Ljava/lang/Iterable;

    instance-of p0, p1, Ljava/util/Collection;

    const/4 v2, 0x1

    if-eqz p0, :cond_3

    move-object p0, p1

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    move p0, v2

    goto/16 :goto_3

    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v4, v3, [Z

    if-eqz v4, :cond_5

    check-cast v3, [Z

    const-string v4, "null cannot be cast to non-null type kotlin.BooleanArray"

    invoke-static {p1, v4}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Z

    invoke-static {v3, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result p1

    goto/16 :goto_2

    :cond_5
    instance-of v4, v3, [C

    if-eqz v4, :cond_6

    check-cast v3, [C

    const-string v4, "null cannot be cast to non-null type kotlin.CharArray"

    invoke-static {p1, v4}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [C

    invoke-static {v3, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result p1

    goto/16 :goto_2

    :cond_6
    instance-of v4, v3, [B

    if-eqz v4, :cond_7

    check-cast v3, [B

    const-string v4, "null cannot be cast to non-null type kotlin.ByteArray"

    invoke-static {p1, v4}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [B

    invoke-static {v3, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    goto/16 :goto_2

    :cond_7
    instance-of v4, v3, [S

    if-eqz v4, :cond_8

    check-cast v3, [S

    const-string v4, "null cannot be cast to non-null type kotlin.ShortArray"

    invoke-static {p1, v4}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [S

    invoke-static {v3, p1}, Ljava/util/Arrays;->equals([S[S)Z

    move-result p1

    goto :goto_2

    :cond_8
    instance-of v4, v3, [I

    if-eqz v4, :cond_9

    check-cast v3, [I

    const-string v4, "null cannot be cast to non-null type kotlin.IntArray"

    invoke-static {p1, v4}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [I

    invoke-static {v3, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    goto :goto_2

    :cond_9
    instance-of v4, v3, [F

    if-eqz v4, :cond_a

    check-cast v3, [F

    const-string v4, "null cannot be cast to non-null type kotlin.FloatArray"

    invoke-static {p1, v4}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [F

    invoke-static {v3, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p1

    goto :goto_2

    :cond_a
    instance-of v4, v3, [J

    if-eqz v4, :cond_b

    check-cast v3, [J

    const-string v4, "null cannot be cast to non-null type kotlin.LongArray"

    invoke-static {p1, v4}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [J

    invoke-static {v3, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p1

    goto :goto_2

    :cond_b
    instance-of v4, v3, [D

    if-eqz v4, :cond_c

    check-cast v3, [D

    const-string v4, "null cannot be cast to non-null type kotlin.DoubleArray"

    invoke-static {p1, v4}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [D

    invoke-static {v3, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result p1

    goto :goto_2

    :cond_c
    instance-of v4, v3, [Ljava/lang/Object;

    if-eqz v4, :cond_d

    check-cast v3, [Ljava/lang/Object;

    const-string v4, "null cannot be cast to non-null type kotlin.Array<*>"

    invoke-static {p1, v4}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Ljava/lang/Object;

    invoke-static {v3, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    goto :goto_2

    :cond_d
    invoke-static {v3, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    :goto_2
    if-nez p1, :cond_4

    move p0, v0

    :goto_3
    if-eqz p0, :cond_e

    move v0, v2

    :cond_e
    return v0
.end method

.method public static final g(Lyi5;)I
    .locals 0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public static final h(Lyi5;)Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static final i(Ljava/lang/Class;Ljava/util/Map;Lyi5;Lyi5;Ljava/util/List;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-string p5, "$annotationClass"

    invoke-static {p0, p5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "$values"

    invoke-static {p1, p5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "$toString$delegate"

    invoke-static {p2, p5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "$hashCode$delegate"

    invoke-static {p3, p5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "$methods"

    invoke-static {p4, p5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p5

    if-eqz p5, :cond_5

    invoke-virtual {p5}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x69e9ad94

    if-eq v0, v1, :cond_3

    const p2, 0x8cdac1b

    if-eq v0, p2, :cond_1

    const p2, 0x5620bf09

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "annotationType"

    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_0

    :cond_1
    const-string p2, "hashCode"

    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p3}, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCallerKt;->g(Lyi5;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_1

    :cond_3
    const-string p3, "toString"

    invoke-virtual {p5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCallerKt;->h(Lyi5;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_5
    :goto_0
    const-string p2, "equals"

    invoke-static {p5, p2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    if-eqz p7, :cond_6

    array-length p2, p7

    const/4 p3, 0x1

    if-ne p2, p3, :cond_6

    const-string p2, "args"

    invoke-static {p7, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p7}, Lhi;->F0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p4, p1, p2}, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCallerKt;->f(Ljava/lang/Class;Ljava/util/List;Ljava/util/Map;Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_1

    :cond_6
    invoke-interface {p1, p5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-interface {p1, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :cond_7
    :goto_1
    return-object p0

    :cond_8
    new-instance p0, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Method is not supported: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " (args: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p7, :cond_9

    const/4 p2, 0x0

    new-array p7, p2, [Ljava/lang/Object;

    :cond_9
    invoke-static {p7}, Lhi;->c1([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final j(ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Void;
    .locals 3

    const-class v0, Ljava/lang/Class;

    invoke-static {p2, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-class p2, Lde5;

    invoke-static {p2}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class p2, [Lde5;

    invoke-static {p2}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-static {p2}, Led5;->e(Ljava/lang/Class;)Lde5;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Lde5;->c()Ljava/lang/String;

    move-result-object v0

    const-class v1, [Ljava/lang/Object;

    invoke-static {v1}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v1

    invoke-interface {v1}, Lde5;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lde5;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Led5;->b(Lde5;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    const-string v1, "kotlinClass.java.componentType"

    invoke-static {p2, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Led5;->e(Ljava/lang/Class;)Lde5;

    move-result-object p2

    invoke-interface {p2}, Lde5;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x3e

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    invoke-interface {p2}, Lde5;->c()Ljava/lang/String;

    move-result-object p2

    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Argument #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x20

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not of the required type "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final k(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p0, Ljava/lang/Class;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    instance-of v0, p0, Lde5;

    if-eqz v0, :cond_1

    check-cast p0, Lde5;

    invoke-static {p0}, Led5;->b(Lde5;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_1

    :cond_1
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_5

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    instance-of v2, v0, [Ljava/lang/Class;

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    instance-of v2, v0, [Lde5;

    if-eqz v2, :cond_4

    const-string v0, "null cannot be cast to non-null type kotlin.Array<kotlin.reflect.KClass<*>>"

    invoke-static {p0, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, [Lde5;

    new-instance v0, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, p0, v4

    invoke-static {v5}, Led5;->b(Lde5;)Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    new-array p0, v3, [Ljava/lang/Class;

    invoke-interface {v0, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_4
    move-object p0, v0

    :cond_5
    :goto_1
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move-object v1, p0

    :cond_6
    return-object v1
.end method
