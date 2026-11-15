.class public final Lcya;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcya;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljavax/crypto/spec/IvParameterSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcya;

    invoke-direct {v0}, Lcya;-><init>()V

    sput-object v0, Lcya;->a:Lcya;

    const-string v0, "SensitiveAutoProtection"

    sput-object v0, Lcya;->b:Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sput-object v1, Lcya;->c:Ljavax/crypto/spec/IvParameterSpec;

    return-void

    :array_0
    .array-data 1
        0x2et
        0x38t
        0x2et
        0x38t
        0x2et
        0x38t
        0x2et
        0x38t
        0x2et
        0x38t
        0x2et
        0x38t
        0x2et
        0x38t
        0x2et
        0x38t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljavax/crypto/SecretKey;[B)[B
    .locals 2

    sget-object p0, Lawa;->a:Lawa;

    invoke-virtual {p0}, Lawa;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    const/4 v0, 0x2

    sget-object v1, Lcya;->c:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p0, v0, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    const-string p1, "cipher.doFinal(cipherText)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final b(Ljavax/crypto/SecretKey;[B)[B
    .locals 2

    sget-object p0, Lawa;->a:Lawa;

    invoke-virtual {p0}, Lawa;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    const/4 v0, 0x1

    sget-object v1, Lcya;->c:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p0, v0, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    const-string p1, "cipher.doFinal(plainText)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final c([B)[B
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcya;->e([B)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final d([B)[B
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcya;->f([B)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final e([B)[B
    .locals 2

    sget-object p0, Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;->a:Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;

    invoke-virtual {p0}, Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    sget-object v1, Luwa;->a:Luwa;

    invoke-virtual {v1}, Luwa;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object p0

    instance-of v0, p0, Ljava/security/KeyStore$SecretKeyEntry;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    sget-object v0, Lcya;->a:Lcya;

    check-cast p0, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-virtual {p0}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object p0

    const-string v1, "it.secretKey"

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Lcya;->a(Ljavax/crypto/SecretKey;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public final f([B)[B
    .locals 2

    sget-object p0, Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;->a:Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;

    invoke-virtual {p0}, Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    sget-object v1, Luwa;->a:Luwa;

    invoke-virtual {v1}, Luwa;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object p0

    instance-of v0, p0, Ljava/security/KeyStore$SecretKeyEntry;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    sget-object v0, Lcya;->a:Lcya;

    check-cast p0, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-virtual {p0}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object p0

    const-string v1, "it.secretKey"

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Lcya;->b(Ljavax/crypto/SecretKey;[B)[B

    move-result-object p0

    return-object p0
.end method
