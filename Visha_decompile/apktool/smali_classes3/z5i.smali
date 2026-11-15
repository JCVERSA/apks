.class public final Lz5i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[C

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:[B

.field public final h:[Z

.field public final i:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;[C)V
    .locals 9

    const/16 v0, 0x80

    .line 1
    new-array v1, v0, [B

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    const/4 v3, 0x0

    move v4, v3

    .line 2
    :goto_0
    array-length v5, p2

    if-ge v4, v5, :cond_2

    .line 3
    aget-char v5, p2, v4

    const/4 v6, 0x1

    if-ge v5, v0, :cond_0

    move v7, v6

    goto :goto_1

    :cond_0
    move v7, v3

    :goto_1
    const-string v8, "Non-ASCII character: %s"

    .line 4
    invoke-static {v7, v8, v5}, Lv2i;->g(ZLjava/lang/String;C)V

    .line 5
    aget-byte v7, v1, v5

    if-ne v7, v2, :cond_1

    goto :goto_2

    :cond_1
    move v6, v3

    :goto_2
    const-string v7, "Duplicate character: %s"

    invoke-static {v6, v7, v5}, Lv2i;->g(ZLjava/lang/String;C)V

    int-to-byte v6, v4

    .line 6
    aput-byte v6, v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-direct {p0, p1, p2, v1, v3}, Lz5i;-><init>(Ljava/lang/String;[C[BZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[C[BZ)V
    .locals 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz5i;->a:Ljava/lang/String;

    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    iput-object p2, p0, Lz5i;->b:[C

    :try_start_0
    array-length p1, p2

    sget-object v0, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    .line 11
    invoke-static {p1, v0}, Lm6i;->c(ILjava/math/RoundingMode;)I

    move-result v0

    iput v0, p0, Lz5i;->d:I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p2

    rsub-int/lit8 v1, p2, 0x3

    const/4 v2, 0x1

    shl-int v1, v2, v1

    iput v1, p0, Lz5i;->e:I

    shr-int p2, v0, p2

    iput p2, p0, Lz5i;->f:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lz5i;->c:I

    iput-object p3, p0, Lz5i;->g:[B

    .line 13
    new-array p1, v1, [Z

    const/4 p2, 0x0

    :goto_0
    iget p3, p0, Lz5i;->f:I

    if-ge p2, p3, :cond_0

    mul-int/lit8 p3, p2, 0x8

    iget v0, p0, Lz5i;->d:I

    sget-object v1, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 14
    invoke-static {p3, v0, v1}, Lm6i;->b(IILjava/math/RoundingMode;)I

    move-result p3

    aput-boolean v2, p1, p3

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 15
    :cond_0
    iput-object p1, p0, Lz5i;->h:[Z

    iput-boolean p4, p0, Lz5i;->i:Z

    return-void

    :catch_0
    move-exception p0

    .line 16
    array-length p1, p2

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Illegal alphabet length "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static bridge synthetic f(Lz5i;)[C
    .locals 0

    iget-object p0, p0, Lz5i;->b:[C

    return-object p0
.end method


# virtual methods
.method public final a(I)C
    .locals 0

    iget-object p0, p0, Lz5i;->b:[C

    aget-char p0, p0, p1

    return p0
.end method

.method public final b(C)I
    .locals 3

    const-string v0, "Unrecognized character: 0x"

    const/16 v1, 0x7f

    if-gt p1, v1, :cond_3

    iget-object p0, p0, Lz5i;->g:[B

    aget-byte p0, p0, p1

    const/4 v2, -0x1

    if-ne p0, v2, :cond_2

    const/16 p0, 0x20

    if-le p1, p0, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzfzh;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized character: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfzh;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzfzh;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfzh;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return p0

    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/ads/zzfzh;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfzh;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c()Lz5i;
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lz5i;->b:[C

    array-length v3, v2

    if-ge v1, v3, :cond_a

    aget-char v4, v2, v1

    invoke-static {v4}, Ld2i;->e(C)Z

    move-result v4

    if-eqz v4, :cond_9

    move v1, v0

    :goto_1
    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    aget-char v5, v2, v1

    invoke-static {v5}, Ld2i;->d(C)Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v4

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_2
    xor-int/2addr v1, v4

    const-string v3, "Cannot call lowerCase() on a mixed-case alphabet"

    invoke-static {v1, v3}, Lv2i;->m(ZLjava/lang/Object;)V

    array-length v1, v2

    new-array v1, v1, [C

    :goto_3
    array-length v3, v2

    if-ge v0, v3, :cond_3

    aget-char v3, v2, v0

    invoke-static {v3}, Ld2i;->e(C)Z

    move-result v5

    if-eqz v5, :cond_2

    xor-int/lit8 v3, v3, 0x20

    :cond_2
    int-to-char v3, v3

    aput-char v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lz5i;->a:Ljava/lang/String;

    new-instance v2, Lz5i;

    const-string v3, ".lowerCase()"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lz5i;-><init>(Ljava/lang/String;[C)V

    iget-boolean p0, p0, Lz5i;->i:Z

    if-eqz p0, :cond_8

    iget-boolean p0, v2, Lz5i;->i:Z

    if-eqz p0, :cond_4

    goto :goto_6

    :cond_4
    iget-object p0, v2, Lz5i;->g:[B

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    const/16 v1, 0x41

    :goto_4
    const/16 v3, 0x5a

    if-gt v1, v3, :cond_7

    or-int/lit8 v3, v1, 0x20

    aget-byte v5, p0, v1

    aget-byte v6, p0, v3

    const/4 v7, -0x1

    if-ne v5, v7, :cond_5

    aput-byte v6, v0, v1

    goto :goto_5

    :cond_5
    int-to-char v8, v1

    int-to-char v9, v3

    if-ne v6, v7, :cond_6

    aput-byte v5, v0, v3

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Can\'t ignoreCase() since \'%s\' and \'%s\' encode different values"

    invoke-static {v1, v0}, Lj3i;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    iget-object p0, v2, Lz5i;->a:Ljava/lang/String;

    iget-object v1, v2, Lz5i;->b:[C

    new-instance v2, Lz5i;

    const-string v3, ".ignoreCase()"

    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v1, v0, v4}, Lz5i;-><init>(Ljava/lang/String;[C[BZ)V

    :cond_8
    :goto_6
    return-object v2

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_a
    return-object p0
.end method

.method public final d(I)Z
    .locals 1

    iget v0, p0, Lz5i;->e:I

    iget-object p0, p0, Lz5i;->h:[Z

    rem-int/2addr p1, v0

    aget-boolean p0, p0, p1

    return p0
.end method

.method public final e(C)Z
    .locals 1

    iget-object p0, p0, Lz5i;->g:[B

    array-length p1, p0

    const/16 v0, 0x3d

    if-le p1, v0, :cond_0

    aget-byte p0, p0, v0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lz5i;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lz5i;

    iget-boolean v0, p0, Lz5i;->i:Z

    iget-boolean v2, p1, Lz5i;->i:Z

    if-ne v0, v2, :cond_0

    iget-object p0, p0, Lz5i;->b:[C

    iget-object p1, p1, Lz5i;->b:[C

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-boolean v0, p0, Lz5i;->i:Z

    iget-object p0, p0, Lz5i;->b:[C

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([C)I

    move-result p0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const/16 v0, 0x4d5

    goto :goto_0

    :cond_0
    const/16 v0, 0x4cf

    :goto_0
    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lz5i;->a:Ljava/lang/String;

    return-object p0
.end method
