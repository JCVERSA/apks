.class public final Lyqi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqmi;


# static fields
.field public static final d:Ljava/lang/ThreadLocal;


# instance fields
.field public final a:Ljavax/crypto/SecretKey;

.field public final b:[B

.field public final c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lxqi;

    invoke-direct {v0}, Lxqi;-><init>()V

    sput-object v0, Lyqi;->d:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    invoke-static {v0}, Lcri;->a(I)V

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lyqi;->a:Ljavax/crypto/SecretKey;

    invoke-static {}, Lyqi;->b()Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    invoke-static {p1}, Lfmi;->a([B)[B

    move-result-object p1

    iput-object p1, p0, Lyqi;->b:[B

    invoke-static {p1}, Lfmi;->a([B)[B

    move-result-object p1

    iput-object p1, p0, Lyqi;->c:[B

    return-void
.end method

.method public static b()Ljavax/crypto/Cipher;
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Ltgi;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lyqi;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    return-object v0

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Can not use AES-CMAC in FIPS-mode."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c([B[BI[B)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    aget-byte v1, p0, v0

    add-int v2, v0, p2

    aget-byte v2, p1, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a([BI)[B
    .locals 9

    const/16 v0, 0x10

    if-gt p2, v0, :cond_8

    iget-object v1, p0, Lyqi;->a:Ljavax/crypto/SecretKey;

    invoke-static {}, Lyqi;->b()Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v1, -0x1

    shr-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    :goto_0
    add-int/lit8 v4, v3, -0x1

    mul-int/lit8 v5, v4, 0x10

    mul-int/2addr v3, v0

    const/4 v6, 0x0

    if-ne v3, v1, :cond_1

    iget-object p0, p0, Lyqi;->b:[B

    invoke-static {p1, v5, p0, v6, v0}, Lcqi;->c([BI[BII)[B

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-static {p1, v5, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    array-length v3, v1

    if-ge v3, v0, :cond_7

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    const/16 v5, -0x80

    aput-byte v5, v1, v3

    iget-object p0, p0, Lyqi;->c:[B

    array-length v3, v1

    if-ne v3, v0, :cond_6

    invoke-static {v1, v6, p0, v6, v0}, Lcqi;->c([BI[BII)[B

    move-result-object p0

    :goto_1
    new-array v1, v0, [B

    new-array v3, v0, [B

    move v5, v6

    :goto_2
    const-string v7, "Cipher didn\'t write full block"

    if-ge v5, v4, :cond_3

    mul-int/lit8 v8, v5, 0x10

    invoke-static {v1, p1, v8, v3}, Lyqi;->c([B[BI[B)V

    invoke-virtual {v2, v3, v6, v0, v1}, Ljavax/crypto/Cipher;->doFinal([BII[B)I

    move-result v8

    if-ne v8, v0, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-static {v1, p0, v6, v3}, Lyqi;->c([B[BI[B)V

    invoke-virtual {v2, v3, v6, v0, v1}, Ljavax/crypto/Cipher;->doFinal([BII[B)I

    move-result p0

    if-ne p0, v0, :cond_5

    if-ne p2, v0, :cond_4

    return-object v1

    :cond_4
    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The lengths of x and y should match."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "x must be smaller than a block."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "outputLength too large, max is 16 bytes"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
