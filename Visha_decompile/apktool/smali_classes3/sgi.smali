.class public final Lsgi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq8i;


# static fields
.field public static final c:[B

.field public static final d:[B

.field public static final e:[B

.field public static final f:[B

.field public static final g:[B

.field public static final h:Ljava/lang/ThreadLocal;


# instance fields
.field public final a:Ljavax/crypto/SecretKey;

.field public final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "7a806c"

    invoke-static {v0}, Lvqi;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lsgi;->c:[B

    const-string v0, "46bb91c3c5"

    invoke-static {v0}, Lvqi;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lsgi;->d:[B

    const-string v0, "36864200e0eaf5284d884a0e77d31646"

    invoke-static {v0}, Lvqi;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lsgi;->e:[B

    const-string v0, "bae8e37fc83441b16034566b"

    invoke-static {v0}, Lvqi;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lsgi;->f:[B

    const-string v0, "af60eb711bd85bc1e4d3e0a462e074eea428a8"

    invoke-static {v0}, Lvqi;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lsgi;->g:[B

    new-instance v0, Lrgi;

    invoke-direct {v0}, Lrgi;-><init>()V

    sput-object v0, Lsgi;->h:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lsgi;->b:[B

    array-length p2, p1

    invoke-static {p2}, Lcri;->a(I)V

    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-direct {p2, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object p2, p0, Lsgi;->a:Ljavax/crypto/SecretKey;

    return-void
.end method

.method public static b(Lbci;)Lq8i;
    .locals 3

    new-instance v0, Lsgi;

    invoke-virtual {p0}, Lbci;->e()Lfri;

    move-result-object v1

    invoke-static {}, La9i;->a()Lt9i;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfri;->d(Lt9i;)[B

    move-result-object v1

    invoke-virtual {p0}, Lbci;->b()Leri;

    move-result-object p0

    invoke-virtual {p0}, Leri;->d()[B

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lsgi;-><init>([B[B)V

    return-object v0
.end method

.method public static bridge synthetic c(Ljavax/crypto/Cipher;)Z
    .locals 0

    invoke-static {p0}, Lsgi;->d(Ljavax/crypto/Cipher;)Z

    move-result p0

    return p0
.end method

.method private static d(Ljavax/crypto/Cipher;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lsgi;->f:[B

    array-length v2, v1

    new-instance v3, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v4, 0x80

    invoke-direct {v3, v4, v1, v0, v2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[BII)V

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v2, Lsgi;->e:[B

    const-string v4, "AES"

    invoke-direct {v1, v2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    sget-object v1, Lsgi;->d:[B

    invoke-virtual {p0, v1}, Ljavax/crypto/Cipher;->updateAAD([B)V

    sget-object v1, Lsgi;->g:[B

    array-length v2, v1

    invoke-virtual {p0, v1, v0, v2}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p0

    sget-object v1, Lsgi;->c:[B

    invoke-static {p0, v1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 2

    iget-object v0, p0, Lsgi;->b:[B

    array-length v1, v0

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lsgi;->e([B[B)[B

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0, p1}, Lfki;->c([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    array-length v0, p1

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lsgi;->e([B[B)[B

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Decryption failed (OutputPrefix mismatch)."

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e([B[B)[B
    .locals 6

    sget-object v0, Lsgi;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    if-eqz v0, :cond_2

    array-length v1, p1

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    new-instance v2, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v3, 0x80

    const/4 v4, 0x0

    const/16 v5, 0xc

    invoke-direct {v2, v3, p1, v4, v5}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[BII)V

    const/4 v3, 0x2

    iget-object p0, p0, Lsgi;->a:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v3, p0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p2, :cond_0

    array-length p0, p2

    if-eqz p0, :cond_0

    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    :cond_0
    add-int/lit8 v1, v1, -0xc

    invoke-virtual {v0, p1, v5, v1}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "ciphertext too short"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "AES GCM SIV cipher is not available or is invalid."

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
