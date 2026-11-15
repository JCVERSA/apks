.class public final Lkotlin/reflect/jvm/internal/calls/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/calls/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/calls/c$a;
    }
.end annotation


# instance fields
.field public final a:Lkotlin/reflect/jvm/internal/calls/a;

.field public final b:Z

.field public final c:Lkotlin/reflect/jvm/internal/calls/c$a;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/reflect/jvm/internal/calls/a;Z)V
    .locals 8

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "caller"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/calls/c;->a:Lkotlin/reflect/jvm/internal/calls/a;

    iput-boolean p3, p0, Lkotlin/reflect/jvm/internal/calls/c;->b:Z

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getReturnType()Leh5;

    move-result-object p3

    invoke-static {p3}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {p3}, Lc05;->i(Leh5;)Ljava/lang/Class;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-static {p3, p1}, Lc05;->d(Ljava/lang/Class;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Ljava/lang/reflect/Method;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, v0

    :goto_0
    invoke-static {p1}, Lh05;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance p1, Lkotlin/reflect/jvm/internal/calls/c$a;

    sget-object p2, Lu15;->f:Lu15$a;

    invoke-virtual {p2}, Lu15$a;->a()Lu15;

    move-result-object p2

    new-array v0, v2, [Ljava/lang/reflect/Method;

    invoke-direct {p1, p2, v0, p3}, Lkotlin/reflect/jvm/internal/calls/c$a;-><init>(Lu15;[Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    goto/16 :goto_a

    :cond_1
    instance-of v1, p2, Lkotlin/reflect/jvm/internal/calls/b$h$c;

    const-string v3, "descriptor.containingDeclaration"

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    if-eqz v1, :cond_4

    instance-of p2, p2, Ljk0;

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    move v4, v2

    goto :goto_2

    :cond_4
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->Z()Lro8;

    move-result-object v1

    if-eqz v1, :cond_3

    instance-of p2, p2, Ljk0;

    if-nez p2, :cond_3

    invoke-interface {p1}, Lzt1;->b()Lxt1;

    move-result-object p2

    invoke-static {p2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lh05;->b(Lxt1;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_1

    :cond_5
    move v4, v5

    :goto_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->b0()Lro8;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lknb;->getType()Leh5;

    move-result-object v1

    goto :goto_3

    :cond_6
    move-object v1, v0

    :goto_3
    if-eqz v1, :cond_7

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    if-eqz v1, :cond_8

    move-object v1, p1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/c;->F()Lqw0;

    move-result-object v1

    const-string v3, "descriptor.constructedClass"

    invoke-static {v1, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lqx0;->g()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Lqw0;->b()Lxt1;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {v1, v3}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lqw0;

    invoke-interface {v1}, Lqw0;->q()Lsm9;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    invoke-interface {p1}, Lzt1;->b()Lxt1;

    move-result-object v1

    invoke-static {v1, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v3, v1, Lqw0;

    if-eqz v3, :cond_9

    invoke-static {v1}, Lh05;->b(Lxt1;)Z

    move-result v3

    if-eqz v3, :cond_9

    check-cast v1, Lqw0;

    invoke-interface {v1}, Lqw0;->q()Lsm9;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_4
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->f()Ljava/util/List;

    move-result-object v1

    const-string v3, "descriptor.valueParameters"

    invoke-static {v1, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    invoke-interface {v3}, Lknb;->getType()Leh5;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    iget-boolean v1, p0, Lkotlin/reflect/jvm/internal/calls/c;->b:Z

    if-eqz v1, :cond_b

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1f

    div-int/lit8 v1, v1, 0x20

    add-int/2addr v1, v5

    goto :goto_6

    :cond_b
    move v1, v2

    :goto_6
    instance-of v3, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    if-eqz v3, :cond_c

    move-object v3, p1

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->isSuspend()Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_7

    :cond_c
    move v5, v2

    :goto_7
    add-int/2addr v1, v5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    invoke-static {p0}, Lwq0;->a(Lkotlin/reflect/jvm/internal/calls/a;)I

    move-result v1

    if-ne v1, v3, :cond_f

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v4

    invoke-static {v1, v5}, Lwn8;->q(II)Lu15;

    move-result-object v1

    new-array v5, v3, [Ljava/lang/reflect/Method;

    :goto_8
    if-ge v2, v3, :cond_e

    invoke-virtual {v1}, Ls15;->b()I

    move-result v6

    invoke-virtual {v1}, Ls15;->c()I

    move-result v7

    if-gt v2, v7, :cond_d

    if-gt v6, v2, :cond_d

    sub-int v6, v2, v4

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Leh5;

    invoke-static {v6}, Lc05;->i(Leh5;)Ljava/lang/Class;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-static {v6, p1}, Lc05;->f(Ljava/lang/Class;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Ljava/lang/reflect/Method;

    move-result-object v6

    goto :goto_9

    :cond_d
    move-object v6, v0

    :goto_9
    aput-object v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_e
    new-instance p1, Lkotlin/reflect/jvm/internal/calls/c$a;

    invoke-direct {p1, v1, v5, p3}, Lkotlin/reflect/jvm/internal/calls/c$a;-><init>(Lu15;[Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    :goto_a
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/calls/c;->c:Lkotlin/reflect/jvm/internal/calls/c$a;

    return-void

    :cond_f
    new-instance p2, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Inconsistent number of parameters in the descriptor and Java reflection object: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lwq0;->a(Lkotlin/reflect/jvm/internal/calls/a;)I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " != "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\nCalling: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\nParameter types: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/calls/c;->a()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")\nDefault: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/calls/c;->b:Z

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/KotlinReflectionInternalError;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/calls/c;->a:Lkotlin/reflect/jvm/internal/calls/a;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/calls/a;->a()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public b()Ljava/lang/reflect/Member;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/calls/c;->a:Lkotlin/reflect/jvm/internal/calls/a;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/calls/a;->b()Ljava/lang/reflect/Member;

    move-result-object p0

    return-object p0
.end method

.method public call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const-string v0, "args"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/calls/c;->c:Lkotlin/reflect/jvm/internal/calls/c$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/calls/c$a;->a()Lu15;

    move-result-object v1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/calls/c$a;->b()[Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/calls/c$a;->c()Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v3, p1

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "copyOf(this, size)"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ls15;->b()I

    move-result v4

    invoke-virtual {v1}, Ls15;->c()I

    move-result v1

    const/4 v5, 0x0

    if-gt v4, v1, :cond_2

    :goto_0
    aget-object v6, v2, v4

    aget-object v7, p1, v4

    if-eqz v6, :cond_1

    if-eqz v7, :cond_0

    invoke-virtual {v6, v7, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "method.returnType"

    invoke-static {v6, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lclb;->g(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    :cond_1
    :goto_1
    aput-object v7, v3, v4

    if-eq v4, v1, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/calls/c;->a:Lkotlin/reflect/jvm/internal/calls/a;

    invoke-interface {p0, v3}, Lkotlin/reflect/jvm/internal/calls/a;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz v0, :cond_4

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v5, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    move-object p0, p1

    :cond_4
    :goto_2
    return-object p0
.end method

.method public getReturnType()Ljava/lang/reflect/Type;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/calls/c;->a:Lkotlin/reflect/jvm/internal/calls/a;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/calls/a;->getReturnType()Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method
