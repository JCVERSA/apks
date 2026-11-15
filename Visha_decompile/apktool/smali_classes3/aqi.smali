.class public final Laqi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq8i;


# static fields
.field public static final f:Ljava/lang/ThreadLocal;

.field public static final g:Ljava/lang/ThreadLocal;


# instance fields
.field public final a:[B

.field public final b:[B

.field public final c:[B

.field public final d:Ljavax/crypto/spec/SecretKeySpec;

.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lypi;

    invoke-direct {v0}, Lypi;-><init>()V

    sput-object v0, Laqi;->f:Ljava/lang/ThreadLocal;

    new-instance v0, Lzpi;

    invoke-direct {v0}, Lzpi;-><init>()V

    sput-object v0, Laqi;->g:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>([BI[B)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ltgi;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xc

    const/16 v2, 0x10

    if-eq p2, v1, :cond_1

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "IV size should be either 12 or 16 bytes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput p2, p0, Laqi;->e:I

    array-length p2, p1

    invoke-static {p2}, Lcri;->a(I)V

    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {p2, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object p2, p0, Laqi;->d:Ljavax/crypto/spec/SecretKeySpec;

    sget-object p1, Laqi;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/crypto/Cipher;

    invoke-virtual {p1, v0, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    new-array p2, v2, [B

    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    invoke-static {p1}, Laqi;->d([B)[B

    move-result-object p1

    iput-object p1, p0, Laqi;->a:[B

    invoke-static {p1}, Laqi;->d([B)[B

    move-result-object p1

    iput-object p1, p0, Laqi;->b:[B

    iput-object p3, p0, Laqi;->c:[B

    return-void

    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Can not use AES-EAX in FIPS-mode."

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lebi;)Lq8i;
    .locals 3

    const/4 v0, 0x1

    invoke-static {v0}, Ltgi;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Laqi;

    invoke-virtual {p0}, Lebi;->e()Lfri;

    move-result-object v1

    invoke-static {}, La9i;->a()Lt9i;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfri;->d(Lt9i;)[B

    move-result-object v1

    invoke-virtual {p0}, Lebi;->d()Llbi;

    move-result-object v2

    invoke-virtual {v2}, Llbi;->b()I

    move-result v2

    invoke-virtual {p0}, Lebi;->b()Leri;

    move-result-object p0

    invoke-virtual {p0}, Leri;->d()[B

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Laqi;-><init>([BI[B)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use AES-EAX in FIPS-mode."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c([B[B)V
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static d([B)[B
    .locals 6

    const/16 v0, 0x10

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0xf

    if-ge v2, v3, :cond_0

    aget-byte v3, p0, v2

    add-int/2addr v3, v3

    add-int/lit8 v4, v2, 0x1

    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    ushr-int/lit8 v5, v5, 0x7

    xor-int/2addr v3, v5

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    move v2, v4

    goto :goto_0

    :cond_0
    aget-byte v2, p0, v3

    add-int/2addr v2, v2

    aget-byte p0, p0, v1

    shr-int/lit8 p0, p0, 0x7

    and-int/lit16 p0, p0, 0x87

    xor-int/2addr p0, v2

    int-to-byte p0, p0

    aput-byte p0, v0, v3

    return-object v0
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v8, v6, Laqi;->c:[B

    array-length v9, v7

    array-length v10, v8

    sub-int v0, v9, v10

    iget v11, v6, Laqi;->e:I

    sub-int/2addr v0, v11

    add-int/lit8 v12, v0, -0x10

    if-ltz v12, :cond_4

    invoke-static {v8, v7}, Lfki;->c([B[B)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Laqi;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljavax/crypto/Cipher;

    iget-object v14, v6, Laqi;->d:Ljavax/crypto/spec/SecretKeySpec;

    const/4 v15, 0x1

    invoke-virtual {v13, v15, v14}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v3, p1

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Laqi;->e(Ljavax/crypto/Cipher;I[BII)[B

    move-result-object v5

    const/4 v4, 0x0

    if-nez p2, :cond_0

    new-array v0, v4, [B

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object/from16 v3, p2

    :goto_0
    const/16 v16, 0x0

    array-length v2, v3

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v18, v2

    move/from16 v2, v17

    move/from16 v17, v4

    move/from16 v4, v16

    move-object v15, v5

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Laqi;->e(Ljavax/crypto/Cipher;I[BII)[B

    move-result-object v18

    const/4 v2, 0x2

    add-int v4, v10, v11

    move-object/from16 v3, p1

    move v5, v12

    invoke-virtual/range {v0 .. v5}, Laqi;->e(Ljavax/crypto/Cipher;I[BII)[B

    move-result-object v0

    add-int/lit8 v9, v9, -0x10

    move/from16 v4, v17

    :goto_1
    const/16 v1, 0x10

    if-ge v4, v1, :cond_1

    add-int v1, v9, v4

    aget-byte v1, v7, v1

    aget-byte v2, v18, v4

    xor-int/2addr v1, v2

    aget-byte v2, v15, v4

    xor-int/2addr v1, v2

    aget-byte v2, v0, v4

    xor-int/2addr v1, v2

    or-int v1, v17, v1

    int-to-byte v1, v1

    add-int/lit8 v4, v4, 0x1

    move/from16 v17, v1

    goto :goto_1

    :cond_1
    if-nez v17, :cond_2

    sget-object v0, Laqi;->g:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v15}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v14, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    array-length v1, v8

    add-int/2addr v1, v11

    invoke-virtual {v0, v7, v1, v12}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljavax/crypto/AEADBadTagException;

    const-string v1, "tag mismatch"

    invoke-direct {v0, v1}, Ljavax/crypto/AEADBadTagException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Decryption failed (OutputPrefix mismatch)."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "ciphertext too short"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e(Ljavax/crypto/Cipher;I[BII)[B
    .locals 8

    const/16 v0, 0x10

    new-array v1, v0, [B

    const/16 v2, 0xf

    int-to-byte p2, p2

    aput-byte p2, v1, v2

    if-nez p5, :cond_0

    iget-object p0, p0, Laqi;->a:[B

    invoke-static {v1, p0}, Laqi;->c([B[B)V

    invoke-virtual {p1, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-array p2, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0, p2}, Ljavax/crypto/Cipher;->doFinal([BII[B)I

    move v3, v2

    :goto_0
    move-object v7, v1

    move-object v1, p2

    move-object p2, v7

    sub-int v4, p5, v3

    if-le v4, v0, :cond_2

    move v4, v2

    :goto_1
    if-ge v4, v0, :cond_1

    add-int v5, p4, v3

    aget-byte v6, v1, v4

    add-int/2addr v5, v4

    aget-byte v5, p3, v5

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1, v2, v0, p2}, Ljavax/crypto/Cipher;->doFinal([BII[B)I

    add-int/lit8 v3, v3, 0x10

    goto :goto_0

    :cond_2
    add-int/2addr v3, p4

    add-int/2addr p4, p5

    invoke-static {p3, v3, p4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p3

    array-length p4, p3

    if-ne p4, v0, :cond_3

    iget-object p0, p0, Laqi;->a:[B

    invoke-static {p3, p0}, Laqi;->c([B[B)V

    goto :goto_3

    :cond_3
    iget-object p0, p0, Laqi;->b:[B

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    move p4, v2

    :goto_2
    array-length p5, p3

    if-ge p4, p5, :cond_4

    aget-byte p5, p0, p4

    aget-byte v3, p3, p4

    xor-int/2addr p5, v3

    int-to-byte p5, p5

    aput-byte p5, p0, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_4
    aget-byte p3, p0, p5

    xor-int/lit16 p3, p3, 0x80

    int-to-byte p3, p3

    aput-byte p3, p0, p5

    move-object p3, p0

    :goto_3
    invoke-static {v1, p3}, Laqi;->c([B[B)V

    invoke-virtual {p1, v1, v2, v0, p2}, Ljavax/crypto/Cipher;->doFinal([BII[B)I

    return-object p2
.end method
