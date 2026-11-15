.class public final Lpp8;
.super Lbq8;
.source "SourceFile"

# interfaces
.implements Lk65;


# instance fields
.field public final a:Ljava/lang/annotation/Annotation;


# direct methods
.method public constructor <init>(Ljava/lang/annotation/Annotation;)V
    .locals 1

    const-string v0, "annotation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lbq8;-><init>()V

    iput-object p1, p0, Lpp8;->a:Ljava/lang/annotation/Annotation;

    return-void
.end method


# virtual methods
.method public bridge synthetic I()Ls65;
    .locals 0

    invoke-virtual {p0}, Lpp8;->P()Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;

    move-result-object p0

    return-object p0
.end method

.method public final O()Ljava/lang/annotation/Annotation;
    .locals 0

    iget-object p0, p0, Lpp8;->a:Ljava/lang/annotation/Annotation;

    return-object p0
.end method

.method public P()Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;

    iget-object p0, p0, Lpp8;->a:Ljava/lang/annotation/Annotation;

    invoke-static {p0}, Led5;->a(Ljava/lang/annotation/Annotation;)Lde5;

    move-result-object p0

    invoke-static {p0}, Led5;->b(Lde5;)Ljava/lang/Class;

    move-result-object p0

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public c()Lxw0;
    .locals 0

    iget-object p0, p0, Lpp8;->a:Ljava/lang/annotation/Annotation;

    invoke-static {p0}, Led5;->a(Ljava/lang/annotation/Annotation;)Lde5;

    move-result-object p0

    invoke-static {p0}, Led5;->b(Lde5;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->a(Ljava/lang/Class;)Lxw0;

    move-result-object p0

    return-object p0
.end method

.method public e()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lpp8;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lpp8;->a:Ljava/lang/annotation/Annotation;

    check-cast p1, Lpp8;

    iget-object p1, p1, Lpp8;->a:Ljava/lang/annotation/Annotation;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lpp8;->a:Ljava/lang/annotation/Annotation;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public l()Ljava/util/Collection;
    .locals 8

    iget-object v0, p0, Lpp8;->a:Ljava/lang/annotation/Annotation;

    invoke-static {v0}, Led5;->a(Ljava/lang/annotation/Annotation;)Lde5;

    move-result-object v0

    invoke-static {v0}, Led5;->b(Lde5;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "annotation.annotationClass.java.declaredMethods"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    sget-object v5, Lqp8;->b:Lqp8$a;

    iget-object v6, p0, Lpp8;->a:Ljava/lang/annotation/Annotation;

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "method.invoke(annotation)"

    invoke-static {v6, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lby6;->g(Ljava/lang/String;)Lby6;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lqp8$a;->a(Ljava/lang/Object;Lby6;)Lqp8;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lpp8;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lpp8;->a:Ljava/lang/annotation/Annotation;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public z()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
