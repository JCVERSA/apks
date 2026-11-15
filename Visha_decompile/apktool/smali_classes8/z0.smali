.class public Lz0;
.super Lp1;
.source "SourceFile"


# static fields
.field public static final d:Ld2;

.field public static final e:[Lz0;


# instance fields
.field public final b:[B

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lz0$a;

    const-class v1, Lz0;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lz0$a;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lz0;->d:Ld2;

    const/16 v0, 0xc

    new-array v0, v0, [Lz0;

    sput-object v0, Lz0;->e:[Lz0;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lp1;-><init>()V

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lz0;->b:[B

    const/4 p1, 0x0

    iput p1, p0, Lz0;->c:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "enumerated must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([BZ)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lp1;-><init>()V

    invoke-static {p1}, Lg1;->G([B)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    invoke-static {p1}, Lci;->f([B)[B

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iput-object p2, p0, Lz0;->b:[B

    invoke-static {p1}, Lg1;->J([B)I

    move-result p1

    iput p1, p0, Lz0;->c:I

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "enumerated must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "malformed enumerated"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static w([BZ)Lz0;
    .locals 3

    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    new-instance v0, Lz0;

    invoke-direct {v0, p0, p1}, Lz0;-><init>([BZ)V

    return-object v0

    :cond_0
    array-length v0, p0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    sget-object v1, Lz0;->e:[Lz0;

    array-length v2, v1

    if-lt v0, v2, :cond_1

    new-instance v0, Lz0;

    invoke-direct {v0, p0, p1}, Lz0;-><init>([BZ)V

    return-object v0

    :cond_1
    aget-object v2, v1, v0

    if-nez v2, :cond_2

    new-instance v2, Lz0;

    invoke-direct {v2, p0, p1}, Lz0;-><init>([BZ)V

    aput-object v2, v1, v0

    :cond_2
    return-object v2

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ENUMERATED has zero length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static x(Ljava/lang/Object;)Lz0;
    .locals 3

    if-eqz p0, :cond_2

    instance-of v0, p0, Lz0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v0, Lz0;->d:Ld2;

    check-cast p0, [B

    invoke-virtual {v0, p0}, Ld2;->b([B)Lp1;

    move-result-object p0

    check-cast p0, Lz0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encoding error in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    check-cast p0, Lz0;

    return-object p0
.end method


# virtual methods
.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lz0;->b:[B

    invoke-static {p0}, Lci;->v([B)I

    move-result p0

    return p0
.end method

.method public m(Lp1;)Z
    .locals 1

    instance-of v0, p1, Lz0;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lz0;

    iget-object p0, p0, Lz0;->b:[B

    iget-object p1, p1, Lz0;->b:[B

    invoke-static {p0, p1}, Lci;->b([B[B)Z

    move-result p0

    return p0
.end method

.method public n(Lo1;Z)V
    .locals 1

    const/16 v0, 0xa

    iget-object p0, p0, Lz0;->b:[B

    invoke-virtual {p1, p2, v0, p0}, Lo1;->o(ZI[B)V

    return-void
.end method

.method public o()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public q(Z)I
    .locals 0

    iget-object p0, p0, Lz0;->b:[B

    array-length p0, p0

    invoke-static {p1, p0}, Lo1;->g(ZI)I

    move-result p0

    return p0
.end method

.method public y()Ljava/math/BigInteger;
    .locals 1

    new-instance v0, Ljava/math/BigInteger;

    iget-object p0, p0, Lz0;->b:[B

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public z()I
    .locals 3

    iget-object v0, p0, Lz0;->b:[B

    array-length v1, v0

    iget p0, p0, Lz0;->c:I

    sub-int/2addr v1, p0

    const/4 v2, 0x4

    if-gt v1, v2, :cond_0

    const/4 v1, -0x1

    invoke-static {v0, p0, v1}, Lg1;->E([BII)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "ASN.1 Enumerated out of int range"

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
