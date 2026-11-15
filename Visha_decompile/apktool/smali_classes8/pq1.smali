.class public Lpq1;
.super Llq1;
.source "SourceFile"


# static fields
.field public static final e:Ljava/math/BigInteger;

.field public static final f:Ljava/math/BigInteger;


# instance fields
.field public d:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lpq1;->e:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lpq1;->f:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Lnq1;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Llq1;-><init>(ZLnq1;)V

    invoke-virtual {p0, p1, p2}, Lpq1;->e(Ljava/math/BigInteger;Lnq1;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lpq1;->d:Ljava/math/BigInteger;

    return-void
.end method

.method public static d(Ljava/math/BigInteger;Ljava/math/BigInteger;)I
    .locals 7

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-static {v0, p0}, Lvy6;->q(ILjava/math/BigInteger;)[I

    move-result-object p0

    invoke-static {v0, p1}, Lvy6;->q(ILjava/math/BigInteger;)[I

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    aget v3, p0, v1

    if-nez v3, :cond_0

    invoke-static {v0, p0, v1}, Lvy6;->H(I[II)I

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lc35;->b(I)I

    move-result v3

    if-lez v3, :cond_1

    invoke-static {v0, p0, v3, v1}, Lvy6;->F(I[III)I

    aget v4, p1, v1

    ushr-int/lit8 v5, v4, 0x1

    xor-int/2addr v4, v5

    shl-int/lit8 v3, v3, 0x1

    and-int/2addr v3, v4

    xor-int/2addr v2, v3

    :cond_1
    invoke-static {v0, p0, p1}, Lvy6;->j(I[I[I)I

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v0, p1}, Lvy6;->z(I[I)Z

    move-result p0

    if-eqz p0, :cond_2

    and-int/lit8 p0, v2, 0x2

    rsub-int/lit8 v1, p0, 0x1

    :cond_2
    return v1

    :cond_3
    if-gez v3, :cond_4

    aget v3, p0, v1

    aget v4, p1, v1

    and-int/2addr v3, v4

    xor-int/2addr v2, v3

    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    :cond_4
    :goto_1
    add-int/lit8 v3, v0, -0x1

    aget v4, p0, v3

    if-nez v4, :cond_5

    move v0, v3

    goto :goto_1

    :cond_5
    invoke-static {v0, p0, p1, p0}, Lvy6;->P(I[I[I[I)I

    goto :goto_0
.end method


# virtual methods
.method public c()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lpq1;->d:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final e(Ljava/math/BigInteger;Lnq1;)Ljava/math/BigInteger;
    .locals 3

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Lnq1;->f()Ljava/math/BigInteger;

    move-result-object p0

    sget-object v0, Lpq1;->f:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_3

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_3

    invoke-virtual {p2}, Lnq1;->g()Ljava/math/BigInteger;

    move-result-object p2

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p0}, Lpq1;->d(Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result p0

    if-ne v1, p0, :cond_2

    return-object p1

    :cond_1
    sget-object v0, Lpq1;->e:Ljava/math/BigInteger;

    invoke-virtual {p1, p2, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Y value does not appear to be in correct group"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid DH public key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "y value cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lpq1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lpq1;

    invoke-virtual {v0}, Lpq1;->c()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Lpq1;->d:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Llq1;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lpq1;->d:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-super {p0}, Llq1;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
