.class public final Loq8;
.super Llq8;
.source "SourceFile"

# interfaces
.implements Lb95;


# instance fields
.field public final b:Ljava/lang/reflect/WildcardType;

.field public final c:Ljava/util/Collection;

.field public final d:Z


# direct methods
.method public constructor <init>(Ljava/lang/reflect/WildcardType;)V
    .locals 1

    const-string v0, "reflectType"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Llq8;-><init>()V

    iput-object p1, p0, Loq8;->b:Ljava/lang/reflect/WildcardType;

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    iput-object p1, p0, Loq8;->c:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public M()Z
    .locals 1

    invoke-virtual {p0}, Loq8;->Q()Ljava/lang/reflect/WildcardType;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    const-string v0, "reflectType.upperBounds"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lhi;->Y([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-class v0, Ljava/lang/Object;

    invoke-static {p0, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public bridge synthetic O()Ljava/lang/reflect/Type;
    .locals 0

    invoke-virtual {p0}, Loq8;->Q()Ljava/lang/reflect/WildcardType;

    move-result-object p0

    return-object p0
.end method

.method public P()Llq8;
    .locals 4

    invoke-virtual {p0}, Loq8;->Q()Ljava/lang/reflect/WildcardType;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, Loq8;->Q()Ljava/lang/reflect/WildcardType;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    array-length v2, v0

    const/4 v3, 0x1

    if-gt v2, v3, :cond_2

    array-length v2, v1

    if-gt v2, v3, :cond_2

    array-length p0, v1

    if-ne p0, v3, :cond_0

    sget-object p0, Llq8;->a:Llq8$a;

    const-string v0, "lowerBounds"

    invoke-static {v1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lhi;->F0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "lowerBounds.single()"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-virtual {p0, v0}, Llq8$a;->a(Ljava/lang/reflect/Type;)Llq8;

    move-result-object p0

    goto :goto_0

    :cond_0
    array-length p0, v0

    const/4 v1, 0x0

    if-ne p0, v3, :cond_1

    const-string p0, "upperBounds"

    invoke-static {v0, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lhi;->F0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Type;

    const-class v0, Ljava/lang/Object;

    invoke-static {p0, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Llq8;->a:Llq8$a;

    const-string v1, "ub"

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Llq8$a;->a(Ljava/lang/reflect/Type;)Llq8;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v1

    :goto_0
    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wildcard types with many bounds are not yet supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Loq8;->Q()Ljava/lang/reflect/WildcardType;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public Q()Ljava/lang/reflect/WildcardType;
    .locals 0

    iget-object p0, p0, Loq8;->b:Ljava/lang/reflect/WildcardType;

    return-object p0
.end method

.method public getAnnotations()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Loq8;->c:Ljava/util/Collection;

    return-object p0
.end method

.method public bridge synthetic s()Lo85;
    .locals 0

    invoke-virtual {p0}, Loq8;->P()Llq8;

    move-result-object p0

    return-object p0
.end method

.method public x()Z
    .locals 0

    iget-boolean p0, p0, Loq8;->d:Z

    return p0
.end method
