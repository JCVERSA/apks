.class public final Lcom/google/android/gms/internal/ads/fa;
.super Lcom/google/android/gms/internal/ads/ha;
.source "SourceFile"


# instance fields
.field public final d:[B

.field public final e:I

.field public f:I


# direct methods
.method public constructor <init>([BII)V
    .locals 2

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/ha;-><init>(Lyri;)V

    array-length p2, p1

    sub-int v0, p2, p3

    or-int/2addr v0, p3

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fa;->d:[B

    iput v1, p0, Lcom/google/android/gms/internal/ads/fa;->f:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/fa;->e:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, v0, p3}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    invoke-static {p1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final A(J)V
    .locals 10

    iget v0, p0, Lcom/google/android/gms/internal/ads/fa;->f:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/ha;->i()Z

    move-result v1

    const/4 v2, 0x7

    const-wide/16 v3, 0x0

    const-wide/16 v5, -0x80

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/ads/fa;->e:I

    sub-int/2addr v1, v0

    const/16 v7, 0xa

    if-lt v1, v7, :cond_1

    :goto_0
    and-long v7, p1, v5

    cmp-long v1, v7, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fa;->d:[B

    add-int/lit8 v2, v0, 0x1

    int-to-long v3, v0

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v1, v3, v4, p1}, Lvui;->y([BJB)V

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fa;->d:[B

    add-int/lit8 v7, v0, 0x1

    int-to-long v8, v0

    long-to-int v0, p1

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-static {v1, v8, v9, v0}, Lvui;->y([BJB)V

    ushr-long/2addr p1, v2

    move v0, v7

    goto :goto_0

    :cond_1
    :goto_1
    and-long v7, p1, v5

    cmp-long v1, v7, v3

    if-nez v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fa;->d:[B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v2, v0, 0x1

    long-to-int p1, p1

    int-to-byte p1, p1

    :try_start_1
    aput-byte p1, v1, v0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    iput v2, p0, Lcom/google/android/gms/internal/ads/fa;->f:I

    return-void

    :catch_0
    move-exception p1

    move-object v7, p1

    move v0, v2

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_3

    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fa;->d:[B
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v7, v0, 0x1

    long-to-int v8, p1

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    :try_start_3
    aput-byte v8, v1, v0
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    ushr-long/2addr p1, v2

    move v0, v7

    goto :goto_1

    :catch_2
    move-exception p1

    move v0, v7

    :goto_3
    move-object v7, p1

    :goto_4
    iget p0, p0, Lcom/google/android/gms/internal/ads/fa;->e:I

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgwx;

    int-to-long v2, v0

    int-to-long v4, p0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzgwx;-><init>(JJILjava/lang/Throwable;)V

    throw p1
.end method

.method public final C([BII)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fa;->d:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/fa;->f:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    iget p1, p0, Lcom/google/android/gms/internal/ads/fa;->f:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/fa;->f:I

    return-void

    :catch_0
    move-exception p1

    move-object v6, p1

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgwx;

    iget p2, p0, Lcom/google/android/gms/internal/ads/fa;->f:I

    iget p0, p0, Lcom/google/android/gms/internal/ads/fa;->e:I

    int-to-long v1, p2

    int-to-long v3, p0

    move-object v0, p1

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzgwx;-><init>(JJILjava/lang/Throwable;)V

    throw p1
.end method

.method public final D(Ljava/lang/String;)V
    .locals 5

    iget v0, p0, Lcom/google/android/gms/internal/ads/fa;->f:I

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    add-int v1, v0, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/fa;->f:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/fa;->d:[B

    iget v4, p0, Lcom/google/android/gms/internal/ads/fa;->e:I

    sub-int/2addr v4, v1

    invoke-static {p1, v3, v1, v4}, Lcom/google/android/gms/internal/ads/ra;->d(Ljava/lang/String;[BII)I

    move-result v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/fa;->f:I

    sub-int v3, v1, v0

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/fa;->y(I)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/fa;->f:I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ra;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/fa;->y(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fa;->d:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/fa;->f:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/fa;->e:I

    sub-int/2addr v3, v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/ra;->d(Ljava/lang/String;[BII)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/fa;->f:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzhaw; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgwx;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzgwx;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :goto_1
    iput v0, p0, Lcom/google/android/gms/internal/ads/fa;->f:I

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ha;->h(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhaw;)V

    return-void
.end method

.method public final a([BII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/fa;->C([BII)V

    return-void
.end method

.method public final j()V
    .locals 0

    return-void
.end method

.method public final k(B)V
    .locals 8

    iget v0, p0, Lcom/google/android/gms/internal/ads/fa;->f:I

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fa;->d:[B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v2, v0, 0x1

    :try_start_1
    aput-byte p1, v1, v0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    iput v2, p0, Lcom/google/android/gms/internal/ads/fa;->f:I

    return-void

    :catch_0
    move-exception p1

    move-object v7, p1

    move v0, v2

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v7, p1

    :goto_0
    iget p0, p0, Lcom/google/android/gms/internal/ads/fa;->e:I

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgwx;

    int-to-long v2, v0

    int-to-long v4, p0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzgwx;-><init>(JJILjava/lang/Throwable;)V

    throw p1
.end method

.method public final l(IZ)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/fa;->y(I)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/fa;->k(B)V

    return-void
.end method

.method public final m(ILcom/google/android/gms/internal/ads/zzgwn;)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/fa;->y(I)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgwn;->zzd()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/fa;->y(I)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzgwn;->zzo(Lpri;)V

    return-void
.end method

.method public final n()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/fa;->e:I

    iget p0, p0, Lcom/google/android/gms/internal/ads/fa;->f:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final o(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/fa;->y(I)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/fa;->p(I)V

    return-void
.end method

.method public final p(I)V
    .locals 8

    iget v0, p0, Lcom/google/android/gms/internal/ads/fa;->f:I

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fa;->d:[B

    int-to-byte v2, p1

    aput-byte v2, v1, v0

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x2

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x3

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    aput-byte p1, v1, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/fa;->f:I

    return-void

    :catch_0
    move-exception p1

    move-object v7, p1

    iget p0, p0, Lcom/google/android/gms/internal/ads/fa;->e:I

    int-to-long v2, v0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgwx;

    int-to-long v4, p0

    const/4 v6, 0x4

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzgwx;-><init>(JJILjava/lang/Throwable;)V

    throw p1
.end method

.method public final q(IJ)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/fa;->y(I)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/fa;->r(J)V

    return-void
.end method

.method public final r(J)V
    .locals 8

    iget v0, p0, Lcom/google/android/gms/internal/ads/fa;->f:I

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fa;->d:[B

    long-to-int v2, p1

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x8

    shr-long v4, p1, v3

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v0, 0x2

    const/16 v4, 0x10

    shr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v0, 0x3

    const/16 v4, 0x18

    shr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v0, 0x4

    const/16 v4, 0x20

    shr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v0, 0x5

    const/16 v4, 0x28

    shr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v0, 0x6

    const/16 v4, 0x30

    shr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v0, 0x7

    const/16 v4, 0x38

    shr-long/2addr p1, v4

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v1, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/gms/internal/ads/fa;->f:I

    return-void

    :catch_0
    move-exception p1

    move-object v7, p1

    iget p0, p0, Lcom/google/android/gms/internal/ads/fa;->e:I

    int-to-long v2, v0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgwx;

    int-to-long v4, p0

    const/16 v6, 0x8

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzgwx;-><init>(JJILjava/lang/Throwable;)V

    throw p1
.end method

.method public final s(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/fa;->y(I)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/fa;->t(I)V

    return-void
.end method

.method public final t(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/fa;->y(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/fa;->A(J)V

    return-void
.end method

.method public final u(ILrti;Lcui;)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/fa;->y(I)V

    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ads/aa;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/aa;->f(Lcui;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/fa;->y(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ha;->a:Lasi;

    invoke-interface {p3, p2, p0}, Lcui;->c(Ljava/lang/Object;Lbvi;)V

    return-void
.end method

.method public final v(ILjava/lang/String;)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/fa;->y(I)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/fa;->D(Ljava/lang/String;)V

    return-void
.end method

.method public final w(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/fa;->y(I)V

    return-void
.end method

.method public final x(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/fa;->y(I)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/fa;->y(I)V

    return-void
.end method

.method public final y(I)V
    .locals 8

    iget v0, p0, Lcom/google/android/gms/internal/ads/fa;->f:I

    :goto_0
    and-int/lit8 v1, p1, -0x80

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fa;->d:[B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v2, v0, 0x1

    int-to-byte p1, p1

    :try_start_1
    aput-byte p1, v1, v0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    iput v2, p0, Lcom/google/android/gms/internal/ads/fa;->f:I

    return-void

    :catch_0
    move-exception p1

    move-object v7, p1

    move v0, v2

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fa;->d:[B
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v2, v0, 0x1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    :try_start_3
    aput-byte v3, v1, v0
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    ushr-int/lit8 p1, p1, 0x7

    move v0, v2

    goto :goto_0

    :goto_1
    move-object v7, p1

    :goto_2
    iget p0, p0, Lcom/google/android/gms/internal/ads/fa;->e:I

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgwx;

    int-to-long v2, v0

    int-to-long v4, p0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzgwx;-><init>(JJILjava/lang/Throwable;)V

    throw p1
.end method

.method public final z(IJ)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/fa;->y(I)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/fa;->A(J)V

    return-void
.end method
