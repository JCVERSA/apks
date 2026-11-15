.class public abstract Lylb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lylb$a;,
        Lylb$b;
    }
.end annotation


# direct methods
.method public static a(Lsb2;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lxl1;
    .locals 2

    new-instance v0, Lylb$b;

    invoke-interface {p0}, Lsb2;->g()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-interface {p0}, Lsb2;->c()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p1, p0, p2}, Lylb$b;-><init>(IILjava/lang/String;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    return-object v0
.end method

.method public static b(Lsb2;Lorg/bouncycastle/crypto/CryptoServicePurpose;)Lxl1;
    .locals 2

    new-instance v0, Lylb$a;

    invoke-interface {p0}, Lsb2;->g()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-interface {p0}, Lsb2;->c()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0, p1}, Lylb$a;-><init>(ILjava/lang/String;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    return-object v0
.end method
