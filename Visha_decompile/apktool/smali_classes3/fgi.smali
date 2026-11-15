.class public final Lfgi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq8i;


# instance fields
.field public final a:[B

.field public final b:I

.field public final c:Lqmi;


# direct methods
.method public constructor <init>([BLeri;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyqi;

    invoke-direct {v0, p1}, Lyqi;-><init>([B)V

    iput-object v0, p0, Lfgi;->c:Lqmi;

    invoke-virtual {p2}, Leri;->d()[B

    move-result-object p1

    iput-object p1, p0, Lfgi;->a:[B

    iput p3, p0, Lfgi;->b:I

    return-void
.end method

.method public static b(Lcei;)Lq8i;
    .locals 3

    new-instance v0, Lfgi;

    invoke-virtual {p0}, Lcei;->e()Lfri;

    move-result-object v1

    invoke-static {}, La9i;->a()Lt9i;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfri;->d(Lt9i;)[B

    move-result-object v1

    invoke-virtual {p0}, Lcei;->b()Leri;

    move-result-object v2

    invoke-virtual {p0}, Lcei;->d()Lhei;

    move-result-object p0

    invoke-virtual {p0}, Lhei;->b()I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lfgi;-><init>([BLeri;I)V

    return-object v0
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 12

    const/16 v0, 0xc

    const/4 v1, 0x2

    const/16 v2, 0x10

    const/4 v3, 0x0

    if-eqz p1, :cond_7

    iget-object v4, p0, Lfgi;->a:[B

    iget v5, p0, Lfgi;->b:I

    array-length v6, p1

    array-length v7, v4

    add-int/2addr v5, v7

    add-int/lit8 v8, v5, 0x1c

    const-string v9, "ciphertext too short"

    if-lt v6, v8, :cond_6

    invoke-static {v4, p1}, Lfki;->c([B[B)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {p1, v7, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    new-array v7, v2, [B

    fill-array-data v7, :array_0

    new-array v8, v2, [B

    fill-array-data v8, :array_1

    array-length v10, v4

    if-gt v10, v0, :cond_4

    const/16 v11, 0x8

    if-lt v10, v11, :cond_4

    const/4 v11, 0x4

    invoke-static {v4, v3, v7, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v4, v3, v8, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p0, Lfgi;->c:Lqmi;

    const/16 v4, 0x20

    new-array v4, v4, [B

    invoke-interface {p0, v7, v2}, Lqmi;->a([BI)[B

    move-result-object v7

    invoke-static {v7, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {p0, v8, v2}, Lqmi;->a([BI)[B

    move-result-object p0

    invoke-static {p0, v3, v4, v2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1}, Ltgi;->a(I)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {v4}, Lafi;->c([B)Ljavax/crypto/SecretKey;

    move-result-object p0

    add-int/lit8 v2, v5, 0xc

    invoke-static {p1, v5, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    array-length v7, v4

    if-ne v7, v0, :cond_2

    add-int/lit8 v5, v5, 0x1c

    if-lt v6, v5, :cond_1

    invoke-static {v4, v3, v0}, Lafi;->a([BII)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    invoke-static {}, Lafi;->b()Ljavax/crypto/Cipher;

    move-result-object v3

    invoke-virtual {v3, v1, p0, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p2, :cond_0

    array-length p0, p2

    if-eqz p0, :cond_0

    invoke-virtual {v3, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    :cond_0
    sub-int/2addr v6, v2

    invoke-virtual {v3, p1, v2, v6}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v9}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "iv is wrong size"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "invalid salt size"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Decryption failed (OutputPrefix mismatch)."

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v9}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "ciphertext is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x58t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x2t
        0x58t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
