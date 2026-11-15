.class public final Ly2i;
.super Lo4i;
.source "SourceFile"


# instance fields
.field public final b:[B

.field public final c:I

.field public d:I


# direct methods
.method public constructor <init>([BII)V
    .locals 2

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lo4i;-><init>(Lx3i;)V

    array-length p2, p1

    sub-int v0, p2, p3

    or-int/2addr v0, p3

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    iput-object p1, p0, Ly2i;->b:[B

    iput v1, p0, Ly2i;->d:I

    iput p3, p0, Ly2i;->c:I

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
.method public final b()I
    .locals 1

    iget v0, p0, Ly2i;->c:I

    iget p0, p0, Ly2i;->d:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final c(B)V
    .locals 8

    iget v0, p0, Ly2i;->d:I

    :try_start_0
    iget-object v1, p0, Ly2i;->b:[B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v2, v0, 0x1

    :try_start_1
    aput-byte p1, v1, v0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    iput v2, p0, Ly2i;->d:I

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
    iget p0, p0, Ly2i;->c:I

    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzfv;

    int-to-long v2, v0

    int-to-long v4, p0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/play_billing/zzfv;-><init>(JJILjava/lang/Throwable;)V

    throw p1
.end method

.method public final d(IZ)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Ly2i;->s(I)V

    invoke-virtual {p0, p2}, Ly2i;->c(B)V

    return-void
.end method

.method public final e([BII)V
    .locals 0

    invoke-virtual {p0, p3}, Ly2i;->s(I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Ly2i;->y([BII)V

    return-void
.end method

.method public final f(ILcom/google/android/gms/internal/play_billing/zzfp;)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Ly2i;->s(I)V

    invoke-virtual {p0, p2}, Ly2i;->g(Lcom/google/android/gms/internal/play_billing/zzfp;)V

    return-void
.end method

.method public final g(Lcom/google/android/gms/internal/play_billing/zzfp;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result v0

    invoke-virtual {p0, v0}, Ly2i;->s(I)V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzg(Lsrh;)V

    return-void
.end method

.method public final h(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    invoke-virtual {p0, p1}, Ly2i;->s(I)V

    invoke-virtual {p0, p2}, Ly2i;->i(I)V

    return-void
.end method

.method public final i(I)V
    .locals 8

    iget v0, p0, Ly2i;->d:I

    :try_start_0
    iget-object v1, p0, Ly2i;->b:[B

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

    iput v0, p0, Ly2i;->d:I

    return-void

    :catch_0
    move-exception p1

    move-object v7, p1

    iget p0, p0, Ly2i;->c:I

    int-to-long v2, v0

    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzfv;

    int-to-long v4, p0

    const/4 v6, 0x4

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/play_billing/zzfv;-><init>(JJILjava/lang/Throwable;)V

    throw p1
.end method

.method public final j(IJ)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ly2i;->s(I)V

    invoke-virtual {p0, p2, p3}, Ly2i;->k(J)V

    return-void
.end method

.method public final k(J)V
    .locals 8

    iget v0, p0, Ly2i;->d:I

    :try_start_0
    iget-object v1, p0, Ly2i;->b:[B

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

    iput v0, p0, Ly2i;->d:I

    return-void

    :catch_0
    move-exception p1

    move-object v7, p1

    iget p0, p0, Ly2i;->c:I

    int-to-long v2, v0

    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzfv;

    int-to-long v4, p0

    const/16 v6, 0x8

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/play_billing/zzfv;-><init>(JJILjava/lang/Throwable;)V

    throw p1
.end method

.method public final l(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Ly2i;->s(I)V

    invoke-virtual {p0, p2}, Ly2i;->m(I)V

    return-void
.end method

.method public final m(I)V
    .locals 8

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Ly2i;->s(I)V

    return-void

    :cond_0
    iget v0, p0, Ly2i;->d:I

    :try_start_0
    iget-object v1, p0, Ly2i;->b:[B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v2, p1

    add-int/lit8 p1, v0, 0x1

    long-to-int v4, v2

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    :try_start_1
    aput-byte v4, v1, v0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v4, v0, 0x2

    const/4 v5, 0x7

    ushr-long v5, v2, v5

    long-to-int v5, v5

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    :try_start_2
    aput-byte v5, v1, p1
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3

    add-int/lit8 p1, v0, 0x3

    const/16 v5, 0xe

    ushr-long v5, v2, v5

    long-to-int v5, v5

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    :try_start_3
    aput-byte v5, v1, v4
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    add-int/lit8 v4, v0, 0x4

    const/16 v5, 0x15

    ushr-long v5, v2, v5

    long-to-int v5, v5

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    :try_start_4
    aput-byte v5, v1, p1
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_3

    add-int/lit8 p1, v0, 0x5

    const/16 v5, 0x1c

    ushr-long/2addr v2, v5

    long-to-int v2, v2

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    :try_start_5
    aput-byte v2, v1, v4
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    add-int/lit8 v2, v0, 0x6

    const/4 v3, -0x1

    :try_start_6
    aput-byte v3, v1, p1
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_2

    add-int/lit8 p1, v0, 0x7

    :try_start_7
    aput-byte v3, v1, v2
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_1

    add-int/lit8 v2, v0, 0x8

    :try_start_8
    aput-byte v3, v1, p1
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_2

    add-int/lit8 p1, v0, 0x9

    :try_start_9
    aput-byte v3, v1, v2
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_1

    add-int/lit8 v0, v0, 0xa

    const/4 v2, 0x1

    :try_start_a
    aput-byte v2, v1, p1
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_0

    iput v0, p0, Ly2i;->d:I

    return-void

    :catch_0
    move-exception p1

    move-object v7, p1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v7, v0

    move v0, p1

    goto :goto_0

    :catch_2
    move-exception p1

    move-object v7, p1

    move v0, v2

    goto :goto_0

    :catch_3
    move-exception p1

    move-object v7, p1

    move v0, v4

    :goto_0
    iget p0, p0, Ly2i;->c:I

    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzfv;

    int-to-long v2, v0

    int-to-long v4, p0

    const/16 v6, 0xa

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/play_billing/zzfv;-><init>(JJILjava/lang/Throwable;)V

    throw p1
.end method

.method public final n(Lg0j;)V
    .locals 1

    invoke-interface {p1}, Lg0j;->zzn()I

    move-result v0

    invoke-virtual {p0, v0}, Ly2i;->s(I)V

    invoke-interface {p1, p0}, Lg0j;->a(Lo4i;)V

    return-void
.end method

.method public final o(ILjava/lang/String;)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Ly2i;->s(I)V

    invoke-virtual {p0, p2}, Ly2i;->p(Ljava/lang/String;)V

    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 5

    iget v0, p0, Ly2i;->d:I

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Lo4i;->w(I)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lo4i;->w(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    add-int v1, v0, v2

    iput v1, p0, Ly2i;->d:I

    iget-object v3, p0, Ly2i;->b:[B

    array-length v4, v3

    sub-int/2addr v4, v1

    invoke-static {p1, v3, v1, v4}, Ll4j;->a(Ljava/lang/String;[BII)I

    move-result p1

    iput v0, p0, Ly2i;->d:I

    sub-int v0, p1, v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ly2i;->s(I)V

    iput p1, p0, Ly2i;->d:I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget v0, Ll4j;->a:I

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/s;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ly2i;->s(I)V

    iget-object v0, p0, Ly2i;->b:[B

    iget v1, p0, Ly2i;->d:I

    array-length v2, v0

    sub-int/2addr v2, v1

    invoke-static {p1, v0, v1, v2}, Ll4j;->a(Ljava/lang/String;[BII)I

    move-result p1

    iput p1, p0, Ly2i;->d:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzfv;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/play_billing/zzfv;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final q(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Ly2i;->s(I)V

    return-void
.end method

.method public final r(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Ly2i;->s(I)V

    invoke-virtual {p0, p2}, Ly2i;->s(I)V

    return-void
.end method

.method public final s(I)V
    .locals 8

    iget v0, p0, Ly2i;->d:I

    and-int/lit8 v1, p1, -0x80

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Ly2i;->b:[B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v2, v0, 0x1

    int-to-byte p1, p1

    :try_start_1
    aput-byte p1, v1, v0

    iput v2, p0, Ly2i;->d:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    move-object v7, p1

    move v0, v2

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v1, p0, Ly2i;->b:[B
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v2, v0, 0x1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    :try_start_3
    aput-byte v3, v1, v0
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    ushr-int/lit8 v3, p1, 0x7

    and-int/lit8 v4, v3, -0x80

    if-nez v4, :cond_1

    add-int/lit8 v0, v0, 0x2

    int-to-byte p1, v3

    :try_start_4
    aput-byte p1, v1, v2

    iput v0, p0, Ly2i;->d:I
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    return-void

    :catch_1
    move-exception p1

    move-object v7, p1

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v0, 0x2

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    :try_start_5
    aput-byte v3, v1, v2
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_2

    ushr-int/lit8 v2, p1, 0xe

    and-int/lit8 v3, v2, -0x80

    if-nez v3, :cond_2

    add-int/lit8 v0, v0, 0x3

    int-to-byte p1, v2

    :try_start_6
    aput-byte p1, v1, v4

    iput v0, p0, Ly2i;->d:I
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_1

    return-void

    :cond_2
    add-int/lit8 v3, v0, 0x3

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    :try_start_7
    aput-byte v2, v1, v4
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_3

    ushr-int/lit8 v2, p1, 0x15

    and-int/lit8 v4, v2, -0x80

    if-nez v4, :cond_3

    add-int/lit8 v0, v0, 0x4

    int-to-byte p1, v2

    :try_start_8
    aput-byte p1, v1, v3

    iput v0, p0, Ly2i;->d:I
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_1

    return-void

    :cond_3
    add-int/lit8 v4, v0, 0x4

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    :try_start_9
    aput-byte v2, v1, v3
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_2

    ushr-int/lit8 p1, p1, 0x1c

    add-int/lit8 v0, v0, 0x5

    int-to-byte p1, p1

    :try_start_a
    aput-byte p1, v1, v4

    iput v0, p0, Ly2i;->d:I
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_1

    return-void

    :catch_2
    move-exception p1

    move-object v7, p1

    move v0, v4

    goto :goto_0

    :catch_3
    move-exception p1

    move-object v7, p1

    move v0, v3

    :goto_0
    iget p0, p0, Ly2i;->c:I

    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzfv;

    int-to-long v2, v0

    int-to-long v4, p0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/play_billing/zzfv;-><init>(JJILjava/lang/Throwable;)V

    throw p1
.end method

.method public final t(IJ)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Ly2i;->s(I)V

    invoke-virtual {p0, p2, p3}, Ly2i;->u(J)V

    return-void
.end method

.method public final u(J)V
    .locals 12

    const-wide/16 v0, -0x80

    and-long v2, p1, v0

    iget v4, p0, Ly2i;->d:I

    const-wide/16 v5, 0x0

    cmp-long v2, v2, v5

    if-nez v2, :cond_0

    :try_start_0
    iget-object v0, p0, Ly2i;->b:[B

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v0, v4

    add-int/lit8 p1, v4, 0x1

    iput p1, p0, Ly2i;->d:I

    return-void

    :catch_0
    move-exception p1

    move-object v11, p1

    goto/16 :goto_0

    :cond_0
    iget-object v2, p0, Ly2i;->b:[B

    long-to-int v3, p1

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    add-int/lit8 v3, v4, 0x1

    const/4 v7, 0x7

    ushr-long v7, p1, v7

    and-long v9, v7, v0

    cmp-long v9, v9, v5

    long-to-int v7, v7

    if-nez v9, :cond_1

    int-to-byte p1, v7

    aput-byte p1, v2, v3

    add-int/lit8 p1, v4, 0x2

    iput p1, p0, Ly2i;->d:I

    return-void

    :cond_1
    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v2, v3

    add-int/lit8 v3, v4, 0x2

    const/16 v7, 0xe

    ushr-long v7, p1, v7

    and-long v9, v7, v0

    cmp-long v9, v9, v5

    long-to-int v7, v7

    if-nez v9, :cond_2

    int-to-byte p1, v7

    aput-byte p1, v2, v3

    add-int/lit8 p1, v4, 0x3

    iput p1, p0, Ly2i;->d:I

    return-void

    :cond_2
    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v2, v3

    add-int/lit8 v3, v4, 0x3

    const/16 v7, 0x15

    ushr-long v7, p1, v7

    and-long v9, v7, v0

    cmp-long v9, v9, v5

    long-to-int v7, v7

    if-nez v9, :cond_3

    int-to-byte p1, v7

    aput-byte p1, v2, v3

    add-int/lit8 p1, v4, 0x4

    iput p1, p0, Ly2i;->d:I

    return-void

    :cond_3
    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v2, v3

    add-int/lit8 v3, v4, 0x4

    const/16 v7, 0x1c

    ushr-long v7, p1, v7

    and-long v9, v7, v0

    cmp-long v9, v9, v5

    long-to-int v7, v7

    if-nez v9, :cond_4

    int-to-byte p1, v7

    aput-byte p1, v2, v3

    add-int/lit8 p1, v4, 0x5

    iput p1, p0, Ly2i;->d:I

    return-void

    :cond_4
    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v2, v3

    add-int/lit8 v3, v4, 0x5

    const/16 v7, 0x23

    ushr-long v7, p1, v7

    and-long v9, v7, v0

    cmp-long v9, v9, v5

    long-to-int v7, v7

    if-nez v9, :cond_5

    int-to-byte p1, v7

    aput-byte p1, v2, v3

    add-int/lit8 p1, v4, 0x6

    iput p1, p0, Ly2i;->d:I

    return-void

    :cond_5
    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v2, v3

    add-int/lit8 v3, v4, 0x6

    const/16 v7, 0x2a

    ushr-long v7, p1, v7

    and-long v9, v7, v0

    cmp-long v9, v9, v5

    long-to-int v7, v7

    if-nez v9, :cond_6

    int-to-byte p1, v7

    aput-byte p1, v2, v3

    add-int/lit8 p1, v4, 0x7

    iput p1, p0, Ly2i;->d:I

    return-void

    :cond_6
    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v2, v3

    add-int/lit8 v3, v4, 0x7

    const/16 v7, 0x31

    ushr-long v7, p1, v7

    and-long v9, v7, v0

    cmp-long v9, v9, v5

    long-to-int v7, v7

    if-nez v9, :cond_7

    int-to-byte p1, v7

    aput-byte p1, v2, v3

    add-int/lit8 p1, v4, 0x8

    iput p1, p0, Ly2i;->d:I

    return-void

    :cond_7
    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v2, v3

    add-int/lit8 v3, v4, 0x8

    const/16 v7, 0x38

    ushr-long v7, p1, v7

    and-long/2addr v0, v7

    cmp-long v0, v0, v5

    long-to-int v1, v7

    if-nez v0, :cond_8

    int-to-byte p1, v1

    aput-byte p1, v2, v3

    add-int/lit8 p1, v4, 0x9

    iput p1, p0, Ly2i;->d:I

    return-void

    :cond_8
    or-int/lit16 v0, v1, 0x80

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    add-int/lit8 v0, v4, 0x9

    const/16 v1, 0x3f

    ushr-long/2addr p1, v1

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v2, v0

    add-int/lit8 p1, v4, 0xa

    iput p1, p0, Ly2i;->d:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    iget p0, p0, Ly2i;->c:I

    int-to-long v6, v4

    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzfv;

    int-to-long v8, p0

    const/4 v10, 0x1

    move-object v5, p1

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/internal/play_billing/zzfv;-><init>(JJILjava/lang/Throwable;)V

    throw p1
.end method

.method public final y([BII)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Ly2i;->b:[B

    iget v1, p0, Ly2i;->d:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    iget p1, p0, Ly2i;->d:I

    add-int/2addr p1, p3

    iput p1, p0, Ly2i;->d:I

    return-void

    :catch_0
    move-exception p1

    move-object v6, p1

    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzfv;

    iget p2, p0, Ly2i;->d:I

    iget p0, p0, Ly2i;->c:I

    int-to-long v1, p2

    int-to-long v3, p0

    move-object v0, p1

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/play_billing/zzfv;-><init>(JJILjava/lang/Throwable;)V

    throw p1
.end method
