.class public Lcn8;
.super Ldj;
.source "SourceFile"


# static fields
.field public static final e:Lge0$a;

.field public static final f:Ljava/math/BigInteger;


# instance fields
.field public c:Ljava/math/BigInteger;

.field public d:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lge0$a;

    invoke-direct {v0}, Lge0$a;-><init>()V

    sput-object v0, Lcn8;->e:Lge0$a;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "8138e8a0fcf3a4e84a771d40fd305d7f4aa59306d7251de54d98af8fe95729a1f73d893fa424cd2edc8636a6c3285e022b0e3866a565ae8108eed8591cd4fe8d2ce86165a978d719ebf647f362d33fca29cd179fb42401cbaf3df0c614056f9c8f3cfd51e474afb6bc6974f78db8aba8e9e517fded658591ab7502bd41849462f"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn8;->f:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcn8;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Z)V

    return-void
.end method

.method public constructor <init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ldj;-><init>(Z)V

    if-nez p1, :cond_1

    invoke-virtual {p3}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "RSA publicExponent is even"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    sget-object p1, Lcn8;->e:Lge0$a;

    invoke-virtual {p1, p2}, Lge0$a;->b(Ljava/math/BigInteger;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p2, p4}, Lcn8;->f(Ljava/math/BigInteger;Z)Ljava/math/BigInteger;

    move-result-object p2

    :goto_1
    iput-object p2, p0, Lcn8;->c:Ljava/math/BigInteger;

    iput-object p3, p0, Lcn8;->d:Ljava/math/BigInteger;

    return-void
.end method

.method public static c(I)I
    .locals 1

    const/16 v0, 0x600

    if-lt p0, v0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    const/16 v0, 0x400

    if-lt p0, v0, :cond_1

    const/4 p0, 0x4

    goto :goto_0

    :cond_1
    const/16 v0, 0x200

    if-lt p0, v0, :cond_2

    const/4 p0, 0x7

    goto :goto_0

    :cond_2
    const/16 p0, 0x32

    :goto_0
    return p0
.end method

.method public static e(Ljava/math/BigInteger;)Z
    .locals 4

    sget-object v0, Lcn8;->f:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    if-ge v1, v2, :cond_0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    :cond_0
    invoke-static {p0, v0}, Lge0;->i(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static f(Ljava/math/BigInteger;Z)Ljava/math/BigInteger;
    .locals 1

    if-eqz p1, :cond_1

    :cond_0
    :goto_0
    sget-object p1, Lcn8;->e:Lge0$a;

    invoke-virtual {p1, p0}, Lge0$a;->a(Ljava/math/BigInteger;)V

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_6

    const-string p1, "org.bouncycastle.rsa.allow_unsafe_mod"

    invoke-static {p1}, Lqi8;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object p0

    :cond_2
    const-string p1, "org.bouncycastle.rsa.max_size"

    const/16 v0, 0x4000

    invoke-static {p1, v0}, Lqi8;->a(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-lt p1, v0, :cond_5

    invoke-static {p0}, Lcn8;->e(Ljava/math/BigInteger;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    const-string v0, "org.bouncycastle.rsa.max_mr_tests"

    invoke-static {p1}, Lcn8;->c(I)I

    move-result p1

    invoke-static {v0, p1}, Lqi8;->a(Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_0

    invoke-static {}, Lzl1;->d()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-static {p0, v0, p1}, Laf8;->b(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Laf8$a;

    move-result-object p1

    invoke-virtual {p1}, Laf8$a;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "RSA modulus is not composite"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "RSA modulus has a small prime factor"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "RSA modulus out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "RSA modulus is even"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public b()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lcn8;->d:Ljava/math/BigInteger;

    return-object p0
.end method

.method public d()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lcn8;->c:Ljava/math/BigInteger;

    return-object p0
.end method
