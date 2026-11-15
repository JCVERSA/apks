.class public final Lbqi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq8i;


# instance fields
.field public final a:Ljavax/crypto/SecretKey;

.field public final b:[B


# direct methods
.method public constructor <init>([BLeri;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    invoke-static {v0}, Ltgi;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lafi;->c([B)Ljavax/crypto/SecretKey;

    move-result-object p1

    iput-object p1, p0, Lbqi;->a:Ljavax/crypto/SecretKey;

    invoke-virtual {p2}, Leri;->d()[B

    move-result-object p1

    iput-object p1, p0, Lbqi;->b:[B

    return-void

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lobi;)Lq8i;
    .locals 3

    new-instance v0, Lbqi;

    invoke-virtual {p0}, Lobi;->e()Lfri;

    move-result-object v1

    invoke-static {}, La9i;->a()Lt9i;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfri;->d(Lt9i;)[B

    move-result-object v1

    invoke-virtual {p0}, Lobi;->b()Leri;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lbqi;-><init>([BLeri;)V

    return-object v0
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 5

    if-eqz p1, :cond_3

    iget-object v0, p0, Lbqi;->b:[B

    array-length v1, p1

    array-length v2, v0

    add-int/lit8 v3, v2, 0x1c

    if-lt v1, v3, :cond_2

    invoke-static {v0, p1}, Lfki;->c([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    invoke-static {p1, v2, v0}, Lafi;->a([BII)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    iget-object p0, p0, Lbqi;->a:Ljavax/crypto/SecretKey;

    invoke-static {}, Lafi;->b()Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v4, 0x2

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
