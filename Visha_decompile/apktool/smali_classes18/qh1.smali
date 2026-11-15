.class public final Lqh1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/descriptors/a;


# instance fields
.field public final a:Lkotlinx/serialization/descriptors/a;

.field public final b:Lde5;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/descriptors/a;Lde5;)V
    .locals 1

    const-string v0, "original"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kClass"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqh1;->a:Lkotlinx/serialization/descriptors/a;

    iput-object p2, p0, Lqh1;->b:Lde5;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/a;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3c

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lde5;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lqh1;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 0

    iget-object p0, p0, Lqh1;->a:Lkotlinx/serialization/descriptors/a;

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/a;->b()Z

    move-result p0

    return p0
.end method

.method public c(Ljava/lang/String;)I
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lqh1;->a:Lkotlinx/serialization/descriptors/a;

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/a;->c(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public d(I)Lkotlinx/serialization/descriptors/a;
    .locals 0

    iget-object p0, p0, Lqh1;->a:Lkotlinx/serialization/descriptors/a;

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/a;->d(I)Lkotlinx/serialization/descriptors/a;

    move-result-object p0

    return-object p0
.end method

.method public e()I
    .locals 0

    iget-object p0, p0, Lqh1;->a:Lkotlinx/serialization/descriptors/a;

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/a;->e()I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lqh1;

    if-eqz v0, :cond_0

    check-cast p1, Lqh1;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Lqh1;->a:Lkotlinx/serialization/descriptors/a;

    iget-object v2, p1, Lqh1;->a:Lkotlinx/serialization/descriptors/a;

    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p1, Lqh1;->b:Lde5;

    iget-object p0, p0, Lqh1;->b:Lde5;

    invoke-static {p1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public f(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lqh1;->a:Lkotlinx/serialization/descriptors/a;

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/a;->f(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public g(I)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lqh1;->a:Lkotlinx/serialization/descriptors/a;

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/a;->g(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lqh1;->a:Lkotlinx/serialization/descriptors/a;

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/a;->getAnnotations()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getKind()Lid9;
    .locals 0

    iget-object p0, p0, Lqh1;->a:Lkotlinx/serialization/descriptors/a;

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/a;->getKind()Lid9;

    move-result-object p0

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lqh1;->c:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqh1;->b:Lde5;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lqh1;->h()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public i(I)Z
    .locals 0

    iget-object p0, p0, Lqh1;->a:Lkotlinx/serialization/descriptors/a;

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/a;->i(I)Z

    move-result p0

    return p0
.end method

.method public isInline()Z
    .locals 0

    iget-object p0, p0, Lqh1;->a:Lkotlinx/serialization/descriptors/a;

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/a;->isInline()Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContextDescriptor(kClass: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lqh1;->b:Lde5;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", original: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lqh1;->a:Lkotlinx/serialization/descriptors/a;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
