.class public final Lvp8;
.super Llq8;
.source "SourceFile"

# interfaces
.implements Lq65;


# instance fields
.field public final b:Ljava/lang/reflect/Type;

.field public final c:Llq8;

.field public final d:Ljava/util/Collection;

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 2

    const-string v0, "reflectType"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Llq8;-><init>()V

    iput-object p1, p0, Lvp8;->b:Ljava/lang/reflect/Type;

    invoke-virtual {p0}, Lvp8;->O()Ljava/lang/reflect/Type;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_0

    sget-object v0, Llq8;->a:Llq8$a;

    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p1

    const-string v1, "genericComponentType"

    invoke-static {p1, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Llq8$a;->a(Ljava/lang/reflect/Type;)Llq8;

    move-result-object p1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Llq8;->a:Llq8$a;

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    const-string v1, "getComponentType()"

    invoke-static {p1, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Llq8$a;->a(Ljava/lang/reflect/Type;)Llq8;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lvp8;->c:Llq8;

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    iput-object p1, p0, Lvp8;->d:Ljava/util/Collection;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not an array type ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lvp8;->O()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lvp8;->O()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public O()Ljava/lang/reflect/Type;
    .locals 0

    iget-object p0, p0, Lvp8;->b:Ljava/lang/reflect/Type;

    return-object p0
.end method

.method public P()Llq8;
    .locals 0

    iget-object p0, p0, Lvp8;->c:Llq8;

    return-object p0
.end method

.method public getAnnotations()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lvp8;->d:Ljava/util/Collection;

    return-object p0
.end method

.method public bridge synthetic h()Lo85;
    .locals 0

    invoke-virtual {p0}, Lvp8;->P()Llq8;

    move-result-object p0

    return-object p0
.end method

.method public x()Z
    .locals 0

    iget-boolean p0, p0, Lvp8;->e:Z

    return p0
.end method
