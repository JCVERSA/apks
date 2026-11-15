.class public final Lmq8;
.super Lbq8;
.source "SourceFile"

# interfaces
.implements Lsp8;
.implements Ls85;


# instance fields
.field public final a:Ljava/lang/reflect/TypeVariable;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/TypeVariable;)V
    .locals 1

    const-string v0, "typeVariable"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lbq8;-><init>()V

    iput-object p1, p0, Lmq8;->a:Ljava/lang/reflect/TypeVariable;

    return-void
.end method


# virtual methods
.method public O()Ljava/util/List;
    .locals 5

    iget-object p0, p0, Lmq8;->a:Ljava/lang/reflect/TypeVariable;

    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    const-string v0, "typeVariable.bounds"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    new-instance v4, Lzp8;

    invoke-direct {v4, v3}, Lzp8;-><init>(Ljava/lang/reflect/Type;)V

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Li81;->Q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzp8;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lzp8;->O()Ljava/lang/reflect/Type;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    const-class v1, Ljava/lang/Object;

    invoke-static {p0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public bridge synthetic a(Lo54;)Lk65;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lsp8;->a(Lo54;)Lpp8;

    move-result-object p0

    return-object p0
.end method

.method public a(Lo54;)Lpp8;
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p0}, Lsp8;->getElement()Ljava/lang/reflect/AnnotatedElement;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/reflect/AnnotatedElement;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Ltp8;->a([Ljava/lang/annotation/Annotation;Lo54;)Lpp8;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lmq8;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lmq8;->a:Ljava/lang/reflect/TypeVariable;

    check-cast p1, Lmq8;

    iget-object p1, p1, Lmq8;->a:Ljava/lang/reflect/TypeVariable;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic getAnnotations()Ljava/util/Collection;
    .locals 0

    .line 1
    invoke-interface {p0}, Lsp8;->getAnnotations()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 0

    .line 2
    invoke-interface {p0}, Lsp8;->getElement()Ljava/lang/reflect/AnnotatedElement;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/reflect/AnnotatedElement;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Ltp8;->b([Ljava/lang/annotation/Annotation;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public getElement()Ljava/lang/reflect/AnnotatedElement;
    .locals 1

    iget-object p0, p0, Lmq8;->a:Ljava/lang/reflect/TypeVariable;

    instance-of v0, p0, Ljava/lang/reflect/AnnotatedElement;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/reflect/AnnotatedElement;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getName()Lby6;
    .locals 1

    iget-object p0, p0, Lmq8;->a:Ljava/lang/reflect/TypeVariable;

    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lby6;->g(Ljava/lang/String;)Lby6;

    move-result-object p0

    const-string v0, "identifier(typeVariable.name)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic getUpperBounds()Ljava/util/Collection;
    .locals 0

    invoke-virtual {p0}, Lmq8;->O()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lmq8;->a:Ljava/lang/reflect/TypeVariable;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lmq8;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmq8;->a:Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public x()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
