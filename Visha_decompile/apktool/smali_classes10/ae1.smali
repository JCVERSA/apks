.class public Lae1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([[S[[S)[[S
    .locals 6

    array-length p0, p1

    array-length v0, p2

    if-ne p0, v0, :cond_2

    const/4 p0, 0x0

    aget-object v0, p1, p0

    array-length v1, v0

    aget-object v2, p2, p0

    array-length v2, v2

    if-ne v1, v2, :cond_2

    array-length v1, p1

    array-length v0, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v0, v2, v3

    aput v1, v2, p0

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    move v1, p0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    move v2, p0

    :goto_1
    aget-object v3, p1, p0

    array-length v3, v3

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v1

    aget-object v4, p1, v1

    aget-short v4, v4, v2

    aget-object v5, p2, v1

    aget-short v5, v5, v2

    invoke-static {v4, v5}, Lt94;->a(SS)S

    move-result v4

    aput-short v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Addition is not possible!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b([[S)[[S
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    aget-object v1, p1, v1

    array-length v1, v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lae1;->f([[S)[[S

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lae1;->a([[S[[S)[[S

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Addition is not possible!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c([[S[[S)[[S
    .locals 7

    const/4 p0, 0x0

    aget-object v0, p1, p0

    array-length v0, v0

    array-length v1, p2

    if-ne v0, v1, :cond_3

    array-length v0, p1

    aget-object v1, p2, p0

    array-length v1, v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    aput v0, v2, p0

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    move v1, p0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    move v2, p0

    :goto_1
    array-length v3, p2

    if-ge v2, v3, :cond_1

    move v3, p0

    :goto_2
    aget-object v4, p2, p0

    array-length v4, v4

    if-ge v3, v4, :cond_0

    aget-object v4, p1, v1

    aget-short v4, v4, v2

    aget-object v5, p2, v2

    aget-short v5, v5, v3

    invoke-static {v4, v5}, Lt94;->k(SS)S

    move-result v4

    aget-object v5, v0, v1

    aget-short v6, v5, v3

    invoke-static {v6, v4}, Lt94;->a(SS)S

    move-result v4

    aput-short v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Multiplication is not possible!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public d([[S[[[S[[[S)[[[S
    .locals 8

    const/4 p0, 0x0

    aget-object v0, p2, p0

    array-length v1, v0

    aget-object v2, p3, p0

    array-length v3, v2

    if-ne v1, v3, :cond_4

    aget-object v0, v0, p0

    array-length v0, v0

    aget-object v1, v2, p0

    array-length v3, v1

    if-ne v0, v3, :cond_4

    array-length v0, p2

    aget-object v3, p1, p0

    array-length v3, v3

    if-ne v0, v3, :cond_4

    array-length v0, p3

    array-length v3, p1

    if-ne v0, v3, :cond_4

    array-length v0, p3

    array-length v2, v2

    array-length v1, v1

    const/4 v3, 0x3

    new-array v3, v3, [I

    const/4 v4, 0x2

    aput v1, v3, v4

    const/4 v1, 0x1

    aput v2, v3, v1

    aput v0, v3, p0

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[S

    move v1, p0

    :goto_0
    aget-object v2, p2, p0

    array-length v2, v2

    if-ge v1, v2, :cond_3

    move v2, p0

    :goto_1
    aget-object v3, p2, p0

    aget-object v3, v3, p0

    array-length v3, v3

    if-ge v2, v3, :cond_2

    move v3, p0

    :goto_2
    array-length v4, p1

    if-ge v3, v4, :cond_1

    move v4, p0

    :goto_3
    aget-object v5, p1, p0

    array-length v5, v5

    if-ge v4, v5, :cond_0

    aget-object v5, p1, v3

    aget-short v5, v5, v4

    aget-object v6, p2, v4

    aget-object v6, v6, v1

    aget-short v6, v6, v2

    invoke-static {v5, v6}, Lt94;->k(SS)S

    move-result v5

    aget-object v6, v0, v3

    aget-object v6, v6, v1

    aget-short v7, v6, v2

    invoke-static {v7, v5}, Lt94;->a(SS)S

    move-result v5

    aput-short v5, v6, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_0
    aget-object v4, v0, v3

    aget-object v4, v4, v1

    aget-object v5, p3, v3

    aget-object v5, v5, v1

    aget-short v5, v5, v2

    aget-short v6, v4, v2

    invoke-static {v5, v6}, Lt94;->a(SS)S

    move-result v5

    aput-short v5, v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Multiplication not possible!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public e([[S)[[S
    .locals 7

    array-length p0, p1

    const/4 v0, 0x0

    aget-object v1, p1, v0

    array-length v1, v1

    if-ne p0, v1, :cond_2

    array-length p0, p1

    array-length v1, p1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    aput p0, v2, v0

    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[S

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    aget-object v3, p1, v1

    aget-short v3, v3, v1

    aput-short v3, v2, v1

    add-int/lit8 v2, v1, 0x1

    move v3, v2

    :goto_1
    aget-object v4, p1, v0

    array-length v4, v4

    if-ge v3, v4, :cond_0

    aget-object v4, p0, v1

    aget-object v5, p1, v1

    aget-short v5, v5, v3

    aget-object v6, p1, v3

    aget-short v6, v6, v1

    invoke-static {v5, v6}, Lt94;->a(SS)S

    move-result v5

    aput-short v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Computation to upper triangular matrix is not possible!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public f([[S)[[S
    .locals 5

    const/4 p0, 0x0

    aget-object v0, p1, p0

    array-length v0, v0

    array-length v1, p1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    aput v0, v2, p0

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    move v1, p0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    move v2, p0

    :goto_1
    aget-object v3, p1, p0

    array-length v3, v3

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    aget-object v4, p1, v1

    aget-short v4, v4, v2

    aput-short v4, v3, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
