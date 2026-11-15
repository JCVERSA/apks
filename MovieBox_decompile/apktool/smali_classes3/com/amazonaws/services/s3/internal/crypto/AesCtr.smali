.class Lcom/amazonaws/services/s3/internal/crypto/AesCtr;
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
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->b:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->a()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "AES/CTR/NoPadding"

    .line 2
    .line 3
    return-object v0
.end method

.method c()I
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    return v0
.end method

.method d()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->b:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->d()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method e()I
    .locals 1

    .line 1
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->b:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->e()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
