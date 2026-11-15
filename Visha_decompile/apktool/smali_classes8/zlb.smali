.class public abstract Lzlb;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ENCRYPTION:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->DECRYPTION:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    :goto_0
    return-object p0
.end method
