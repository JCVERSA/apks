.class public final Lkotlinx/serialization/descriptors/SerialDescriptorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/descriptors/a;
.implements Lgq0;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lid9;

.field public final c:I

.field public final d:Ljava/util/List;

.field public final e:Ljava/util/Set;

.field public final f:[Ljava/lang/String;

.field public final g:[Lkotlinx/serialization/descriptors/a;

.field public final h:[Ljava/util/List;

.field public final i:[Z

.field public final j:Ljava/util/Map;

.field public final k:[Lkotlinx/serialization/descriptors/a;

.field public final l:Lyi5;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lid9;ILjava/util/List;Ldx0;)V
    .locals 1

    const-string v0, "serialName"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeParameters"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->a:Ljava/lang/String;

    iput-object p2, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->b:Lid9;

    iput p3, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->c:I

    invoke-virtual {p5}, Ldx0;->c()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->d:Ljava/util/List;

    invoke-virtual {p5}, Ldx0;->f()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Li81;->Z0(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->e:Ljava/util/Set;

    invoke-virtual {p5}, Ldx0;->f()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    const/4 p2, 0x0

    new-array p3, p2, [Ljava/lang/String;

    invoke-interface {p1, p3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->f:[Ljava/lang/String;

    invoke-virtual {p5}, Ldx0;->e()Ljava/util/List;

    move-result-object p3

    invoke-static {p3}, Le28;->b(Ljava/util/List;)[Lkotlinx/serialization/descriptors/a;

    move-result-object p3

    iput-object p3, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->g:[Lkotlinx/serialization/descriptors/a;

    invoke-virtual {p5}, Ldx0;->d()Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/util/Collection;

    new-array p2, p2, [Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/util/List;

    iput-object p2, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->h:[Ljava/util/List;

    invoke-virtual {p5}, Ldx0;->g()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-static {p2}, Li81;->W0(Ljava/util/Collection;)[Z

    move-result-object p2

    iput-object p2, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->i:[Z

    invoke-static {p1}, Lhi;->q1([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    const/16 p3, 0xa

    invoke-static {p1, p3}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lmz4;

    invoke-virtual {p3}, Lmz4;->d()Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p3}, Lmz4;->c()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p5, p3}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lkotlin/collections/a;->y(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->j:Ljava/util/Map;

    invoke-static {p4}, Le28;->b(Ljava/util/List;)[Lkotlinx/serialization/descriptors/a;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->k:[Lkotlinx/serialization/descriptors/a;

    new-instance p1, Lkotlinx/serialization/descriptors/SerialDescriptorImpl$_hashCode$2;

    invoke-direct {p1, p0}, Lkotlinx/serialization/descriptors/SerialDescriptorImpl$_hashCode$2;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptorImpl;)V

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->l:Lyi5;

    return-void
.end method

.method public static final synthetic j(Lkotlinx/serialization/descriptors/SerialDescriptorImpl;)[Lkotlinx/serialization/descriptors/a;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->k:[Lkotlinx/serialization/descriptors/a;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->e:Ljava/util/Set;

    return-object p0
.end method

.method public b()Z
    .locals 0

    invoke-static {p0}, Lkotlinx/serialization/descriptors/a$a;->c(Lkotlinx/serialization/descriptors/a;)Z

    move-result p0

    return p0
.end method

.method public c(Ljava/lang/String;)I
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->j:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x3

    :goto_0
    return p0
.end method

.method public d(I)Lkotlinx/serialization/descriptors/a;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->g:[Lkotlinx/serialization/descriptors/a;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public e()I
    .locals 0

    iget p0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->c:I

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v1, p1, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    :goto_0
    move v0, v2

    goto :goto_2

    :cond_1
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/a;->h()Ljava/lang/String;

    move-result-object v1

    move-object v3, p1

    check-cast v3, Lkotlinx/serialization/descriptors/a;

    invoke-interface {v3}, Lkotlinx/serialization/descriptors/a;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    check-cast p1, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    iget-object v1, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->k:[Lkotlinx/serialization/descriptors/a;

    iget-object p1, p1, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->k:[Lkotlinx/serialization/descriptors/a;

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/a;->e()I

    move-result p1

    invoke-interface {v3}, Lkotlinx/serialization/descriptors/a;->e()I

    move-result v1

    if-eq p1, v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/a;->e()I

    move-result p1

    move v1, v2

    :goto_1
    if-ge v1, p1, :cond_7

    invoke-interface {p0, v1}, Lkotlinx/serialization/descriptors/a;->d(I)Lkotlinx/serialization/descriptors/a;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/serialization/descriptors/a;->h()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1}, Lkotlinx/serialization/descriptors/a;->d(I)Lkotlinx/serialization/descriptors/a;

    move-result-object v5

    invoke-interface {v5}, Lkotlinx/serialization/descriptors/a;->h()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    invoke-interface {p0, v1}, Lkotlinx/serialization/descriptors/a;->d(I)Lkotlinx/serialization/descriptors/a;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/serialization/descriptors/a;->getKind()Lid9;

    move-result-object v4

    invoke-interface {v3, v1}, Lkotlinx/serialization/descriptors/a;->d(I)Lkotlinx/serialization/descriptors/a;

    move-result-object v5

    invoke-interface {v5}, Lkotlinx/serialization/descriptors/a;->getKind()Lid9;

    move-result-object v5

    invoke-static {v4, v5}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    return v0
.end method

.method public f(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->f:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public g(I)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->h:[Ljava/util/List;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->d:Ljava/util/List;

    return-object p0
.end method

.method public getKind()Lid9;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->b:Lid9;

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->a:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->k()I

    move-result p0

    return p0
.end method

.method public i(I)Z
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->i:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method public isInline()Z
    .locals 0

    invoke-static {p0}, Lkotlinx/serialization/descriptors/a$a;->b(Lkotlinx/serialization/descriptors/a;)Z

    move-result p0

    return p0
.end method

.method public final k()I
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->l:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    const/4 v0, 0x0

    invoke-virtual {p0}, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->e()I

    move-result v1

    invoke-static {v0, v1}, Lwn8;->q(II)Lu15;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Lkotlinx/serialization/descriptors/SerialDescriptorImpl$toString$1;

    invoke-direct {v8, p0}, Lkotlinx/serialization/descriptors/SerialDescriptorImpl$toString$1;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptorImpl;)V

    const/16 v9, 0x18

    const/4 v10, 0x0

    const-string v3, ", "

    const-string v5, ")"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v10}, Li81;->y0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
