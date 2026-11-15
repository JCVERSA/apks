.class public final Lfd9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/descriptors/a;
.implements Lgq0;


# instance fields
.field public final a:Lkotlinx/serialization/descriptors/a;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/descriptors/a;)V
    .locals 2

    const-string v0, "original"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfd9;->a:Lkotlinx/serialization/descriptors/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfd9;->b:Ljava/lang/String;

    invoke-static {p1}, Le28;->a(Lkotlinx/serialization/descriptors/a;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lfd9;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lfd9;->c:Ljava/util/Set;

    return-object p0
.end method

.method public b()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public c(Ljava/lang/String;)I
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lfd9;->a:Lkotlinx/serialization/descriptors/a;

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/a;->c(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public d(I)Lkotlinx/serialization/descriptors/a;
    .locals 0

    iget-object p0, p0, Lfd9;->a:Lkotlinx/serialization/descriptors/a;

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/a;->d(I)Lkotlinx/serialization/descriptors/a;

    move-result-object p0

    return-object p0
.end method

.method public e()I
    .locals 0

    iget-object p0, p0, Lfd9;->a:Lkotlinx/serialization/descriptors/a;

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/a;->e()I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lfd9;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object p0, p0, Lfd9;->a:Lkotlinx/serialization/descriptors/a;

    check-cast p1, Lfd9;

    iget-object p1, p1, Lfd9;->a:Lkotlinx/serialization/descriptors/a;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public f(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfd9;->a:Lkotlinx/serialization/descriptors/a;

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/a;->f(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public g(I)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lfd9;->a:Lkotlinx/serialization/descriptors/a;

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/a;->g(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lfd9;->a:Lkotlinx/serialization/descriptors/a;

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/a;->getAnnotations()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getKind()Lid9;
    .locals 0

    iget-object p0, p0, Lfd9;->a:Lkotlinx/serialization/descriptors/a;

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/a;->getKind()Lid9;

    move-result-object p0

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfd9;->b:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lfd9;->a:Lkotlinx/serialization/descriptors/a;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public i(I)Z
    .locals 0

    iget-object p0, p0, Lfd9;->a:Lkotlinx/serialization/descriptors/a;

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/a;->i(I)Z

    move-result p0

    return p0
.end method

.method public isInline()Z
    .locals 0

    iget-object p0, p0, Lfd9;->a:Lkotlinx/serialization/descriptors/a;

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/a;->isInline()Z

    move-result p0

    return p0
.end method

.method public final j()Lkotlinx/serialization/descriptors/a;
    .locals 0

    iget-object p0, p0, Lfd9;->a:Lkotlinx/serialization/descriptors/a;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lfd9;->a:Lkotlinx/serialization/descriptors/a;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3f

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
