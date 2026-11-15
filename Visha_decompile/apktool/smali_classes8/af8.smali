.class public abstract Laf8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laf8$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/math/BigInteger;

.field public static final b:Ljava/math/BigInteger;

.field public static final c:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Laf8;->a:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Laf8;->b:Ljava/math/BigInteger;

    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Laf8;->c:Ljava/math/BigInteger;

    return-void
.end method

.method public static a(Ljava/math/BigInteger;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' must be non-null and >= 2"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Laf8$a;
    .locals 11

    const-string v0, "candidate"

    invoke-static {p0, v0}, Laf8;->a(Ljava/math/BigInteger;Ljava/lang/String;)V

    if-eqz p1, :cond_d

    const/4 v0, 0x1

    if-lt p2, v0, :cond_c

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-static {}, Laf8$a;->a()Laf8$a;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object p0, Laf8;->b:Ljava/math/BigInteger;

    invoke-static {p0}, Laf8$a;->b(Ljava/math/BigInteger;)Laf8$a;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v2, Laf8;->a:Ljava/math/BigInteger;

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Laf8;->b:Ljava/math/BigInteger;

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    move v6, v1

    :goto_0
    if-ge v6, p2, :cond_b

    sget-object v7, Laf8;->b:Ljava/math/BigInteger;

    invoke-static {v7, v3, p1}, Lge0;->e(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    sget-object v9, Laf8;->a:Ljava/math/BigInteger;

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v10

    if-lez v10, :cond_2

    invoke-static {v8}, Laf8$a;->b(Ljava/math/BigInteger;)Laf8$a;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {v7, v5, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    invoke-virtual {v7, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_4

    :cond_3
    move v8, v0

    :goto_1
    if-ge v8, v4, :cond_6

    sget-object v9, Laf8;->b:Ljava/math/BigInteger;

    invoke-virtual {v7, v9, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    move v8, v0

    goto :goto_2

    :cond_4
    sget-object v10, Laf8;->a:Ljava/math/BigInteger;

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    move v8, v1

    goto :goto_2

    :cond_5
    add-int/lit8 v8, v8, 0x1

    move-object v7, v9

    goto :goto_1

    :cond_6
    move v8, v1

    move-object v9, v7

    :goto_2
    if-nez v8, :cond_a

    sget-object p1, Laf8;->a:Ljava/math/BigInteger;

    invoke-virtual {v9, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    sget-object p2, Laf8;->b:Ljava/math/BigInteger;

    invoke-virtual {v9, p2, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_3

    :cond_7
    move-object v7, v9

    :cond_8
    :goto_3
    invoke-virtual {v7, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-lez p1, :cond_9

    invoke-static {p0}, Laf8$a;->b(Ljava/math/BigInteger;)Laf8$a;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-static {}, Laf8$a;->c()Laf8$a;

    move-result-object p0

    return-object p0

    :cond_a
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_b
    invoke-static {}, Laf8$a;->a()Laf8$a;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'iterations\' must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'random\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Ljava/math/BigInteger;)Z
    .locals 1

    const-string v0, "candidate"

    invoke-static {p0, v0}, Laf8;->a(Ljava/math/BigInteger;Ljava/lang/String;)V

    invoke-static {p0}, Laf8;->d(Ljava/math/BigInteger;)Z

    move-result p0

    return p0
.end method

.method public static d(Ljava/math/BigInteger;)Z
    .locals 3

    const v0, 0xd4c2086

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    rem-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_a

    rem-int/lit8 v1, v0, 0x5

    if-eqz v1, :cond_a

    rem-int/lit8 v1, v0, 0x7

    if-eqz v1, :cond_a

    rem-int/lit8 v1, v0, 0xb

    if-eqz v1, :cond_a

    rem-int/lit8 v1, v0, 0xd

    if-eqz v1, :cond_a

    rem-int/lit8 v1, v0, 0x11

    if-eqz v1, :cond_a

    rem-int/lit8 v1, v0, 0x13

    if-eqz v1, :cond_a

    rem-int/lit8 v0, v0, 0x17

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const v0, 0x37ed0ed

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    rem-int/lit8 v1, v0, 0x1d

    if-eqz v1, :cond_a

    rem-int/lit8 v1, v0, 0x1f

    if-eqz v1, :cond_a

    rem-int/lit8 v1, v0, 0x25

    if-eqz v1, :cond_a

    rem-int/lit8 v1, v0, 0x29

    if-eqz v1, :cond_a

    rem-int/lit8 v0, v0, 0x2b

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const v0, 0x23cd611f

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    rem-int/lit8 v1, v0, 0x2f

    if-eqz v1, :cond_a

    rem-int/lit8 v1, v0, 0x35

    if-eqz v1, :cond_a

    rem-int/lit8 v1, v0, 0x3b

    if-eqz v1, :cond_a

    rem-int/lit8 v1, v0, 0x3d

    if-eqz v1, :cond_a

    rem-int/lit8 v0, v0, 0x43

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const v0, 0x20691a3

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    rem-int/lit8 v1, v0, 0x47

    if-eqz v1, :cond_a

    rem-int/lit8 v1, v0, 0x49

    if-eqz v1, :cond_a

    rem-int/lit8 v1, v0, 0x4f

    if-eqz v1, :cond_a

    rem-int/lit8 v0, v0, 0x53

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const v0, 0x55a60cb

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    rem-int/lit8 v1, v0, 0x59

    if-eqz v1, :cond_a

    rem-int/lit8 v1, v0, 0x61

    if-eqz v1, :cond_a

    rem-int/lit8 v1, v0, 0x65

    if-eqz v1, :cond_a

    rem-int/lit8 v0, v0, 0x67

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const v0, 0x9f9f361

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    rem-int/lit8 v1, v0, 0x6b

    if-eqz v1, :cond_a

    rem-int/lit8 v1, v0, 0x6d

    if-eqz v1, :cond_a

    rem-int/lit8 v1, v0, 0x71

    if-eqz v1, :cond_a

    rem-int/lit8 v0, v0, 0x7f

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const v0, 0x1627b25d

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    rem-int/lit16 v1, v0, 0x83

    if-eqz v1, :cond_a

    rem-int/lit16 v1, v0, 0x89

    if-eqz v1, :cond_a

    rem-int/lit16 v1, v0, 0x8b

    if-eqz v1, :cond_a

    rem-int/lit16 v0, v0, 0x95

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const v0, 0x2676ed77

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    rem-int/lit16 v1, v0, 0x97

    if-eqz v1, :cond_a

    rem-int/lit16 v1, v0, 0x9d

    if-eqz v1, :cond_a

    rem-int/lit16 v1, v0, 0xa3

    if-eqz v1, :cond_a

    rem-int/lit16 v0, v0, 0xa7

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const v0, 0x3fcf739d

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    rem-int/lit16 v1, v0, 0xad

    if-eqz v1, :cond_a

    rem-int/lit16 v1, v0, 0xb3

    if-eqz v1, :cond_a

    rem-int/lit16 v1, v0, 0xb5

    if-eqz v1, :cond_a

    rem-int/lit16 v0, v0, 0xbf

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const v0, 0x5f281a99

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    rem-int/lit16 v0, p0, 0xc1

    if-eqz v0, :cond_a

    rem-int/lit16 v0, p0, 0xc5

    if-eqz v0, :cond_a

    rem-int/lit16 v0, p0, 0xc7

    if-eqz v0, :cond_a

    rem-int/lit16 p0, p0, 0xd3

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_a
    :goto_0
    return v2
.end method

.method public static e(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/BigInteger;)Z
    .locals 3

    invoke-virtual {p4, p2, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    sget-object p4, Laf8;->a:Ljava/math/BigInteger;

    invoke-virtual {p2, p4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 v0, 0x1

    if-nez p4, :cond_4

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_1

    :cond_0
    move p4, v0

    :goto_0
    const/4 v1, 0x0

    if-ge p4, p3, :cond_3

    sget-object v2, Laf8;->b:Ljava/math/BigInteger;

    invoke-virtual {p2, v2, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Laf8;->a:Ljava/math/BigInteger;

    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    :cond_4
    :goto_1
    return v0
.end method

.method public static f(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Z
    .locals 8

    const-string v0, "candidate"

    invoke-static {p0, v0}, Laf8;->a(Ljava/math/BigInteger;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-lt p2, v0, :cond_4

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    sget-object v2, Laf8;->a:Ljava/math/BigInteger;

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Laf8;->b:Ljava/math/BigInteger;

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    move v6, v1

    :goto_0
    if-ge v6, p2, :cond_3

    sget-object v7, Laf8;->b:Ljava/math/BigInteger;

    invoke-static {v7, v3, p1}, Lge0;->e(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-static {p0, v2, v5, v4, v7}, Laf8;->e(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/BigInteger;)Z

    move-result v7

    if-nez v7, :cond_2

    return v1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'iterations\' must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'random\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
