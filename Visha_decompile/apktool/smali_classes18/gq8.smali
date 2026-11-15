.class public final Lgq8;
.super Lfq8;
.source "SourceFile"

# interfaces
.implements Ls75;


# instance fields
.field public final a:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 1

    const-string v0, "member"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lfq8;-><init>()V

    iput-object p1, p0, Lgq8;->a:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public N()Z
    .locals 0

    invoke-interface {p0}, Ls75;->p()Ll65;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic P()Ljava/lang/reflect/Member;
    .locals 0

    invoke-virtual {p0}, Lgq8;->R()Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public R()Ljava/lang/reflect/Method;
    .locals 0

    iget-object p0, p0, Lgq8;->a:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method public S()Llq8;
    .locals 2

    sget-object v0, Llq8;->a:Llq8$a;

    invoke-virtual {p0}, Lgq8;->R()Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object p0

    const-string v1, "member.genericReturnType"

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Llq8$a;->a(Ljava/lang/reflect/Type;)Llq8;

    move-result-object p0

    return-object p0
.end method

.method public f()Ljava/util/List;
    .locals 3

    invoke-virtual {p0}, Lgq8;->R()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "member.genericParameterTypes"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lgq8;->R()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v1

    const-string v2, "member.parameterAnnotations"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, [[Ljava/lang/annotation/Annotation;

    invoke-virtual {p0}, Lgq8;->R()Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lfq8;->Q([Ljava/lang/reflect/Type;[[Ljava/lang/annotation/Annotation;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getReturnType()Lo85;
    .locals 0

    invoke-virtual {p0}, Lgq8;->S()Llq8;

    move-result-object p0

    return-object p0
.end method

.method public getTypeParameters()Ljava/util/List;
    .locals 5

    invoke-virtual {p0}, Lgq8;->R()Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object p0

    const-string v0, "member.typeParameters"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    new-instance v4, Lmq8;

    invoke-direct {v4, v3}, Lmq8;-><init>(Ljava/lang/reflect/TypeVariable;)V

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public p()Ll65;
    .locals 2

    invoke-virtual {p0}, Lgq8;->R()Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDefaultValue()Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    sget-object v1, Lqp8;->b:Lqp8$a;

    invoke-virtual {v1, p0, v0}, Lqp8$a;->a(Ljava/lang/Object;Lby6;)Lqp8;

    move-result-object v0

    :cond_0
    return-object v0
.end method
