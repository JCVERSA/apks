.class public final Lbpj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Random;

.field public final b:[I

.field public final c:[I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lbpj;-><init>(ILjava/util/Random;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/Random;)V
    .locals 0

    const/4 p1, 0x0

    .line 2
    new-array p1, p1, [I

    .line 3
    invoke-direct {p0, p1, p2}, Lbpj;-><init>([ILjava/util/Random;)V

    return-void
.end method

.method public constructor <init>([ILjava/util/Random;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbpj;->b:[I

    iput-object p2, p0, Lbpj;->a:Ljava/util/Random;

    array-length p2, p1

    new-array p2, p2, [I

    iput-object p2, p0, Lbpj;->c:[I

    const/4 p2, 0x0

    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lbpj;->c:[I

    aget v1, p1, p2

    aput p2, v0, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object p0, p0, Lbpj;->b:[I

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final b()I
    .locals 2

    iget-object p0, p0, Lbpj;->b:[I

    array-length v0, p0

    const/4 v1, -0x1

    if-lez v0, :cond_0

    add-int/2addr v0, v1

    aget p0, p0, v0

    return p0

    :cond_0
    return v1
.end method

.method public final c()I
    .locals 0

    iget-object p0, p0, Lbpj;->b:[I

    array-length p0, p0

    return p0
.end method

.method public final d(I)I
    .locals 1

    iget-object v0, p0, Lbpj;->c:[I

    aget p1, v0, p1

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lbpj;->b:[I

    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget p0, p0, p1

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final e(I)I
    .locals 1

    iget-object v0, p0, Lbpj;->c:[I

    aget p1, v0, p1

    const/4 v0, -0x1

    add-int/2addr p1, v0

    if-ltz p1, :cond_0

    iget-object p0, p0, Lbpj;->b:[I

    aget p0, p0, p1

    return p0

    :cond_0
    return v0
.end method

.method public final f()Lbpj;
    .locals 4

    new-instance v0, Lbpj;

    iget-object p0, p0, Lbpj;->a:Ljava/util/Random;

    new-instance v1, Ljava/util/Random;

    invoke-virtual {p0}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    const/4 p0, 0x0

    invoke-direct {v0, p0, v1}, Lbpj;-><init>(ILjava/util/Random;)V

    return-object v0
.end method

.method public final g(II)Lbpj;
    .locals 7

    new-array p1, p2, [I

    new-array v0, p2, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_0

    iget-object v3, p0, Lbpj;->a:Ljava/util/Random;

    iget-object v4, p0, Lbpj;->b:[I

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aput v4, p1, v2

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget v5, v0, v3

    aput v5, v0, v2

    aput v2, v0, v3

    move v2, v4

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    iget-object v2, p0, Lbpj;->b:[I

    array-length v3, v2

    add-int/2addr v3, p2

    new-array v3, v3, [I

    move v4, v1

    move v5, v4

    :goto_1
    array-length v6, v2

    add-int/2addr v6, p2

    if-ge v1, v6, :cond_3

    if-ge v4, p2, :cond_1

    aget v6, p1, v4

    if-ne v5, v6, :cond_1

    add-int/lit8 v6, v4, 0x1

    aget v4, v0, v4

    aput v4, v3, v1

    move v4, v6

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v5, 0x1

    aget v5, v2, v5

    aput v5, v3, v1

    if-ltz v5, :cond_2

    add-int/2addr v5, p2

    aput v5, v3, v1

    :cond_2
    move v5, v6

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lbpj;->a:Ljava/util/Random;

    new-instance p1, Lbpj;

    new-instance p2, Ljava/util/Random;

    invoke-virtual {p0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/util/Random;-><init>(J)V

    invoke-direct {p1, v3, p2}, Lbpj;-><init>([ILjava/util/Random;)V

    return-object p1
.end method

.method public final h(II)Lbpj;
    .locals 5

    iget-object p1, p0, Lbpj;->b:[I

    array-length v0, p1

    sub-int/2addr v0, p2

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_2

    aget v3, p1, v1

    if-ltz v3, :cond_0

    if-ge v3, p2, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    sub-int v4, v1, v2

    if-ltz v3, :cond_1

    sub-int/2addr v3, p2

    :cond_1
    aput v3, v0, v4

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lbpj;->a:Ljava/util/Random;

    new-instance p1, Lbpj;

    new-instance p2, Ljava/util/Random;

    invoke-virtual {p0}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-direct {p2, v1, v2}, Ljava/util/Random;-><init>(J)V

    invoke-direct {p1, v0, p2}, Lbpj;-><init>([ILjava/util/Random;)V

    return-object p1
.end method
