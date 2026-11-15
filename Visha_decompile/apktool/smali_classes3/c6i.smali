.class public Lc6i;
.super Ld6i;
.source "SourceFile"


# instance fields
.field public final b:Lz5i;

.field public final c:Ljava/lang/Character;

.field public volatile d:Ld6i;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V
    .locals 1

    .line 4
    new-instance v0, Lz5i;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lz5i;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v0, p3}, Lc6i;-><init>(Lz5i;Ljava/lang/Character;)V

    return-void
.end method

.method public constructor <init>(Lz5i;Ljava/lang/Character;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ld6i;-><init>()V

    iput-object p1, p0, Lc6i;->b:Lz5i;

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    const/16 v1, 0x3d

    .line 2
    invoke-virtual {p1, v1}, Lz5i;->e(C)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    const-string p1, "Padding character %s was already in alphabet"

    .line 3
    invoke-static {v0, p1, p2}, Lv2i;->i(ZLjava/lang/String;Ljava/lang/Object;)V

    iput-object p2, p0, Lc6i;->c:Ljava/lang/Character;

    return-void
.end method


# virtual methods
.method public a([BLjava/lang/CharSequence;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ld6i;->f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget-object v0, v0, Lc6i;->b:Lz5i;

    invoke-virtual {v0, v2}, Lz5i;->d(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    const-wide/16 v5, 0x0

    move v7, v2

    move v8, v7

    :goto_1
    iget v9, v0, Lz5i;->e:I

    if-ge v7, v9, :cond_1

    iget v9, v0, Lz5i;->d:I

    shl-long/2addr v5, v9

    add-int v9, v3, v7

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ge v9, v10, :cond_0

    add-int/lit8 v9, v8, 0x1

    add-int/2addr v8, v3

    invoke-interface {v1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-virtual {v0, v8}, Lz5i;->b(C)I

    move-result v8

    int-to-long v10, v8

    or-long/2addr v5, v10

    move v8, v9

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    iget v7, v0, Lz5i;->f:I

    iget v10, v0, Lz5i;->d:I

    mul-int/2addr v8, v10

    add-int/lit8 v10, v7, -0x1

    mul-int/lit8 v10, v10, 0x8

    :goto_2
    mul-int/lit8 v11, v7, 0x8

    sub-int/2addr v11, v8

    if-lt v10, v11, :cond_2

    add-int/lit8 v11, v4, 0x1

    ushr-long v12, v5, v10

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    long-to-int v12, v12

    int-to-byte v12, v12

    aput-byte v12, p1, v4

    add-int/lit8 v10, v10, -0x8

    move v4, v11

    goto :goto_2

    :cond_2
    add-int/2addr v3, v9

    goto :goto_0

    :cond_3
    return v4

    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfzh;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid input length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfzh;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/Appendable;[BII)V
    .locals 2

    array-length p3, p2

    const/4 v0, 0x0

    invoke-static {v0, p4, p3}, Lv2i;->k(III)V

    :goto_0
    if-ge v0, p4, :cond_0

    iget-object p3, p0, Lc6i;->b:Lz5i;

    iget p3, p3, Lz5i;->f:I

    sub-int v1, p4, v0

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lc6i;->k(Ljava/lang/Appendable;[BII)V

    add-int/2addr v0, p3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(I)I
    .locals 2

    iget-object p0, p0, Lc6i;->b:Lz5i;

    iget p0, p0, Lz5i;->d:I

    int-to-long v0, p0

    int-to-long p0, p1

    mul-long/2addr v0, p0

    const-wide/16 p0, 0x7

    add-long/2addr v0, p0

    const-wide/16 p0, 0x8

    div-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method public final d(I)I
    .locals 2

    iget-object p0, p0, Lc6i;->b:Lz5i;

    iget v0, p0, Lz5i;->f:I

    sget-object v1, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {p1, v0, v1}, Lm6i;->b(IILjava/math/RoundingMode;)I

    move-result p1

    iget p0, p0, Lz5i;->e:I

    mul-int/2addr p0, p1

    return p0
.end method

.method public final e()Ld6i;
    .locals 2

    iget-object v0, p0, Lc6i;->d:Ld6i;

    if-nez v0, :cond_1

    iget-object v0, p0, Lc6i;->b:Lz5i;

    invoke-virtual {v0}, Lz5i;->c()Lz5i;

    move-result-object v1

    if-ne v1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc6i;->c:Ljava/lang/Character;

    invoke-virtual {p0, v1, v0}, Lc6i;->j(Lz5i;Ljava/lang/Character;)Ld6i;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lc6i;->d:Ld6i;

    :cond_1
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lc6i;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lc6i;

    iget-object v0, p0, Lc6i;->b:Lz5i;

    iget-object v2, p1, Lc6i;->b:Lz5i;

    invoke-virtual {v0, v2}, Lz5i;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lc6i;->c:Ljava/lang/Character;

    iget-object p1, p1, Lc6i;->c:Ljava/lang/Character;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lc6i;->c:Ljava/lang/Character;

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    :cond_1
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_2

    invoke-interface {p1, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_1

    :cond_2
    add-int/lit8 p0, p0, 0x1

    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lc6i;->c:Ljava/lang/Character;

    iget-object p0, p0, Lc6i;->b:Lz5i;

    invoke-virtual {p0}, Lz5i;->hashCode()I

    move-result p0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    xor-int/2addr p0, v0

    return p0
.end method

.method public j(Lz5i;Ljava/lang/Character;)Ld6i;
    .locals 0

    new-instance p0, Lc6i;

    invoke-direct {p0, p1, p2}, Lc6i;-><init>(Lz5i;Ljava/lang/Character;)V

    return-object p0
.end method

.method public final k(Ljava/lang/Appendable;[BII)V
    .locals 9

    add-int v0, p3, p4

    array-length v1, p2

    invoke-static {p3, v0, v1}, Lv2i;->k(III)V

    iget-object v0, p0, Lc6i;->b:Lz5i;

    iget v1, v0, Lz5i;->f:I

    const/4 v2, 0x0

    if-gt p4, v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-static {v3}, Lv2i;->e(Z)V

    const-wide/16 v3, 0x0

    move v5, v2

    :goto_1
    const/16 v6, 0x8

    if-ge v5, p4, :cond_1

    add-int v7, p3, v5

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    int-to-long v7, v7

    or-long/2addr v3, v7

    shl-long/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p4, 0x1

    mul-int/2addr p2, v6

    iget p3, v0, Lz5i;->d:I

    :goto_2
    mul-int/lit8 v5, p4, 0x8

    if-ge v2, v5, :cond_2

    sub-int v5, p2, p3

    sub-int/2addr v5, v2

    ushr-long v7, v3, v5

    iget v5, v0, Lz5i;->c:I

    long-to-int v7, v7

    and-int/2addr v5, v7

    invoke-virtual {v0, v5}, Lz5i;->a(I)C

    move-result v5

    invoke-interface {p1, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/2addr v2, p3

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lc6i;->c:Ljava/lang/Character;

    if-eqz p0, :cond_3

    :goto_3
    mul-int/lit8 p0, v1, 0x8

    if-ge v2, p0, :cond_3

    const/16 p0, 0x3d

    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/2addr v2, p3

    goto :goto_3

    :cond_3
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BaseEncoding."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lc6i;->b:Lz5i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget v1, v1, Lz5i;->d:I

    const/16 v2, 0x8

    rem-int/2addr v2, v1

    if-eqz v2, :cond_1

    iget-object p0, p0, Lc6i;->c:Ljava/lang/Character;

    if-nez p0, :cond_0

    const-string p0, ".omitPadding()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, ".withPadChar(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\')"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
