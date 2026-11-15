.class abstract Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final a:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

.field static final b:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

.field static final c:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/AesCbc;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/crypto/AesCbc;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->a:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 7
    .line 8
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/AesGcm;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/crypto/AesGcm;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->b:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 14
    .line 15
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/AesCtr;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/crypto/AesCtr;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->c:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 21
    .line 22
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method abstract a()I
.end method

.method abstract b()Ljava/lang/String;
.end method

.method abstract c()I
.end method

.method abstract d()Ljava/lang/String;
.end method

.method abstract e()I
.end method

.method f()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method g()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "cipherAlgo="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->b()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ", blockSizeInBytes="

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->a()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, ", ivLengthInBytes="

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->c()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, ", keyGenAlgo="

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->d()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ", keyLengthInBits="

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->e()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", specificProvider="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->f()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v1, ", tagLengthInBits="

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->g()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    return-object v0
.end method
