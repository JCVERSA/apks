.class public final Lofi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq8i;


# static fields
.field public static final c:[B

.field public static final d:[B

.field public static final e:[B

.field public static final f:Ljava/lang/ThreadLocal;


# instance fields
.field public final a:Ljavax/crypto/SecretKey;

.field public final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "808182838485868788898a8b8c8d8e8f909192939495969798999a9b9c9d9e9f"

    invoke-static {v0}, Lvqi;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lofi;->c:[B

    const-string v0, "070000004041424344454647"

    invoke-static {v0}, Lvqi;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lofi;->d:[B

    const-string v0, "a0784d7a4716f3feb4f64e7f4b39bf04"

    invoke-static {v0}, Lvqi;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lofi;->e:[B

    new-instance v0, Lnfi;

    invoke-direct {v0}, Lnfi;-><init>()V

    sput-object v0, Lofi;->f:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ltgi;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lofi;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "ChaCha20"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lofi;->a:Ljavax/crypto/SecretKey;

    iput-object p2, p0, Lofi;->b:[B

    return-void

    :cond_0
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "The key length in bytes must be 32."

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "JCE does not support algorithm: ChaCha20-Poly1305"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Can not use ChaCha20Poly1305 in FIPS-mode."

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lkci;)Lq8i;
    .locals 3

    new-instance v0, Lofi;

    invoke-virtual {p0}, Lkci;->e()Lfri;

    move-result-object v1

    invoke-static {}, La9i;->a()Lt9i;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfri;->d(Lt9i;)[B

    move-result-object v1

    invoke-virtual {p0}, Lkci;->b()Leri;

    move-result-object p0

    invoke-virtual {p0}, Leri;->d()[B

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lofi;-><init>([B[B)V

    return-object v0
.end method

.method public static c()Ljavax/crypto/Cipher;
    .locals 1

    sget-object v0, Lofi;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    return-object v0
.end method

.method public static bridge synthetic d(Ljavax/crypto/Cipher;)Z
    .locals 0

    invoke-static {p0}, Lofi;->f(Ljavax/crypto/Cipher;)Z

    move-result p0

    return p0
.end method

.method public static e()Z
    .locals 1

    sget-object v0, Lofi;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static f(Ljavax/crypto/Cipher;)Z
    .locals 7

    const-string v0, "ChaCha20"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v3, Lofi;->d:[B

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v4, Lofi;->c:[B

    invoke-direct {v3, v4, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v5, 0x2

    invoke-virtual {p0, v5, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    sget-object v3, Lofi;->e:[B

    invoke-virtual {p0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    array-length v6, v6

    if-eqz v6, :cond_0

    return v1

    :cond_0
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v6, v4, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v5, v6, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    array-length p0, p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0

    :catch_0
    return v1
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 5

    if-eqz p1, :cond_3

    iget-object v0, p0, Lofi;->b:[B

    array-length v1, p1

    array-length v2, v0

    add-int/lit8 v3, v2, 0x1c

    if-lt v1, v3, :cond_2

    invoke-static {v0, p1}, Lfki;->c([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    new-array v3, v0, [B

    const/4 v4, 0x0

    invoke-static {p1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sget-object v3, Lofi;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/crypto/Cipher;

    const/4 v4, 0x2

    iget-object p0, p0, Lofi;->a:Ljavax/crypto/SecretKey;

    invoke-virtual {v3, v4, p0, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p2, :cond_0

    array-length p0, p2

    if-eqz p0, :cond_0

    invoke-virtual {v3, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    :cond_0
    add-int/lit8 p0, v2, 0xc

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0xc

    invoke-virtual {v3, p1, p0, v1}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Decryption failed (OutputPrefix mismatch)."

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "ciphertext too short"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "ciphertext is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
