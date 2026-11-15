.class public Lorg/jsoup/nodes/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/lang/Cloneable;


# instance fields
.field public b:I

.field public c:[Ljava/lang/String;

.field public d:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/jsoup/nodes/b;->b:I

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/jsoup/nodes/b;->d:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic c(Lorg/jsoup/nodes/b;)I
    .locals 0

    iget p0, p0, Lorg/jsoup/nodes/b;->b:I

    return p0
.end method

.method public static synthetic f(Lorg/jsoup/nodes/b;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/b;->z(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Lorg/jsoup/nodes/b;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/b;->F(I)V

    return-void
.end method

.method public static n(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static y(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/jsoup/nodes/b;->b:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    aget-object v2, v1, v0

    invoke-static {v2}, Lv17;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public B(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/b;
    .locals 2

    invoke-static {p1}, Ldnb;->i(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/b;->w(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p1, p0, Lorg/jsoup/nodes/b;->d:[Ljava/lang/String;

    aput-object p2, p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/nodes/b;->j(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/b;

    :goto_0
    return-object p0
.end method

.method public C(Lorg/jsoup/nodes/a;)Lorg/jsoup/nodes/b;
    .locals 2

    invoke-static {p1}, Ldnb;->i(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/jsoup/nodes/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jsoup/nodes/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jsoup/nodes/b;->B(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/b;

    iput-object p0, p1, Lorg/jsoup/nodes/a;->d:Lorg/jsoup/nodes/b;

    return-object p0
.end method

.method public E(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/b;->x(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/jsoup/nodes/b;->d:[Ljava/lang/String;

    aput-object p2, v1, v0

    iget-object p2, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    aget-object p2, p2, v0

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p0, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    aput-object p1, p0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/nodes/b;->j(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/b;

    :cond_1
    :goto_0
    return-void
.end method

.method public final F(I)V
    .locals 4

    iget v0, p0, Lorg/jsoup/nodes/b;->b:I

    const/4 v1, 0x1

    if-lt p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ldnb;->b(Z)V

    iget v0, p0, Lorg/jsoup/nodes/b;->b:I

    sub-int/2addr v0, p1

    sub-int/2addr v0, v1

    if-lez v0, :cond_1

    iget-object v2, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v2, v3, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/jsoup/nodes/b;->d:[Ljava/lang/String;

    invoke-static {v2, v3, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget p1, p0, Lorg/jsoup/nodes/b;->b:I

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/jsoup/nodes/b;->b:I

    iget-object v0, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    iget-object p0, p0, Lorg/jsoup/nodes/b;->d:[Ljava/lang/String;

    aput-object v1, p0, p1

    return-void
.end method

.method public G(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/b;->w(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/b;->F(I)V

    :cond_0
    return-void
.end method

.method public H(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/b;->x(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/b;->F(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/jsoup/nodes/b;->o()Lorg/jsoup/nodes/b;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/jsoup/nodes/b;

    iget v1, p0, Lorg/jsoup/nodes/b;->b:I

    iget v2, p1, Lorg/jsoup/nodes/b;->b:I

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    iget-object v1, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    iget-object v2, p1, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    iget-object p0, p0, Lorg/jsoup/nodes/b;->d:[Ljava/lang/String;

    iget-object p1, p1, Lorg/jsoup/nodes/b;->d:[Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/jsoup/nodes/b;->b:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lorg/jsoup/nodes/b;->d:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public isEmpty()Z
    .locals 0

    iget p0, p0, Lorg/jsoup/nodes/b;->b:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lorg/jsoup/nodes/b$a;

    invoke-direct {v0, p0}, Lorg/jsoup/nodes/b$a;-><init>(Lorg/jsoup/nodes/b;)V

    return-object v0
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/b;
    .locals 2

    iget v0, p0, Lorg/jsoup/nodes/b;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/b;->m(I)V

    iget-object v0, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/nodes/b;->b:I

    aput-object p1, v0, v1

    iget-object p1, p0, Lorg/jsoup/nodes/b;->d:[Ljava/lang/String;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/nodes/b;->b:I

    return-object p0
.end method

.method public k(Lorg/jsoup/nodes/b;)V
    .locals 2

    invoke-virtual {p1}, Lorg/jsoup/nodes/b;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/jsoup/nodes/b;->b:I

    iget v1, p1, Lorg/jsoup/nodes/b;->b:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/b;->m(I)V

    invoke-virtual {p1}, Lorg/jsoup/nodes/b;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/a;

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/b;->C(Lorg/jsoup/nodes/a;)Lorg/jsoup/nodes/b;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public l()Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lorg/jsoup/nodes/b;->b:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/jsoup/nodes/b;->b:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lorg/jsoup/nodes/b;->z(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Lorg/jsoup/nodes/a;

    iget-object v3, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p0, Lorg/jsoup/nodes/b;->d:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {v2, v3, v4, p0}, Lorg/jsoup/nodes/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final m(I)V
    .locals 3

    iget v0, p0, Lorg/jsoup/nodes/b;->b:I

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ldnb;->c(Z)V

    iget-object v0, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    array-length v1, v0

    if-lt v1, p1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    iget v1, p0, Lorg/jsoup/nodes/b;->b:I

    mul-int/lit8 v2, v1, 0x2

    :cond_2
    if-le p1, v2, :cond_3

    goto :goto_1

    :cond_3
    move p1, v2

    :goto_1
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    iget-object v0, p0, Lorg/jsoup/nodes/b;->d:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/jsoup/nodes/b;->d:[Ljava/lang/String;

    return-void
.end method

.method public o()Lorg/jsoup/nodes/b;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/b;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget v1, p0, Lorg/jsoup/nodes/b;->b:I

    iput v1, v0, Lorg/jsoup/nodes/b;->b:I

    iget-object v1, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/nodes/b;->b:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    iget-object v1, p0, Lorg/jsoup/nodes/b;->d:[Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/nodes/b;->b:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/jsoup/nodes/b;->d:[Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public p(Ltw7;)I
    .locals 6

    invoke-virtual {p0}, Lorg/jsoup/nodes/b;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Ltw7;->d()Z

    move-result p1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    add-int/lit8 v2, v1, 0x1

    move v3, v2

    :goto_1
    iget-object v4, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_5

    aget-object v5, v4, v3

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    aget-object v4, v4, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    if-nez p1, :cond_4

    iget-object v4, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    aget-object v5, v4, v1

    aget-object v4, v4, v3

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v3}, Lorg/jsoup/nodes/b;->F(I)V

    add-int/lit8 v3, v3, -0x1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    move v1, v2

    goto :goto_0

    :cond_6
    return v0
.end method

.method public q(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/b;->w(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/jsoup/nodes/b;->d:[Ljava/lang/String;

    aget-object p0, p0, p1

    invoke-static {p0}, Lorg/jsoup/nodes/b;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public r(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/b;->x(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/jsoup/nodes/b;->d:[Ljava/lang/String;

    aget-object p0, p0, p1

    invoke-static {p0}, Lorg/jsoup/nodes/b;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public s(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/b;->w(Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lorg/jsoup/nodes/b;->b:I

    return p0
.end method

.method public t(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/b;->x(Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/jsoup/nodes/b;->u()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lm0a;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/jsoup/nodes/Document;

    const-string v2, ""

    invoke-direct {v1, v2}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/jsoup/nodes/Document;->x1()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jsoup/nodes/b;->v(Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0}, Lm0a;->m(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/jsoup/SerializationException;

    invoke-direct {v0, p0}, Lorg/jsoup/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final v(Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 10

    iget v0, p0, Lorg/jsoup/nodes/b;->b:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lorg/jsoup/nodes/b;->z(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    aget-object v2, v2, v1

    iget-object v3, p0, Lorg/jsoup/nodes/b;->d:[Ljava/lang/String;

    aget-object v3, v3, v1

    const/16 v4, 0x20

    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-static {v2, v3, p2}, Lorg/jsoup/nodes/a;->j(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "=\""

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    move-object v5, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x1

    move-object v4, p1

    move-object v6, p2

    invoke-static/range {v4 .. v9}, Lorg/jsoup/nodes/Entities;->g(Ljava/lang/Appendable;Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;ZZZ)V

    const/16 v2, 0x22

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public w(Ljava/lang/String;)I
    .locals 2

    invoke-static {p1}, Ldnb;->i(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/jsoup/nodes/b;->b:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final x(Ljava/lang/String;)I
    .locals 2

    invoke-static {p1}, Ldnb;->i(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/jsoup/nodes/b;->b:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final z(Ljava/lang/String;)Z
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x2f

    if-ne p1, v0, :cond_0

    move p0, v1

    :cond_0
    return p0
.end method
