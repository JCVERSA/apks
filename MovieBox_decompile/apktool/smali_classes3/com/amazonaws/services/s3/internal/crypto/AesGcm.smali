.class Lcom/amazonaws/services/s3/internal/crypto/AesGcm;
.super Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;
.source "source.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    return v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "AES/GCM/NoPadding"

    .line 2
    .line 3
    return-object v0
.end method

.method c()I
    .locals 1

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    return v0
.end method

.method d()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "AES"

    .line 2
    .line 3
    return-object v0
.end method

.method e()I
    .locals 1

    .line 1
    const/16 v0, 0x100

    .line 2
    .line 3
    return v0
.end method

.method f()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "BC"

    .line 2
    .line 3
    return-object v0
.end method

.method g()I
    .locals 1

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    return v0
.end method
