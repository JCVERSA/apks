.class public final Lio/appmetrica/analytics/impl/y6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/crypto/CryptoProvider;


# instance fields
.field public final a:Lio/appmetrica/analytics/coreutils/internal/encryption/AESRSAEncrypter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/encryption/AESRSAEncrypter;

    invoke-direct {v0}, Lio/appmetrica/analytics/coreutils/internal/encryption/AESRSAEncrypter;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/y6;->a:Lio/appmetrica/analytics/coreutils/internal/encryption/AESRSAEncrypter;

    return-void
.end method


# virtual methods
.method public final getAesRsaEncrypter()Lio/appmetrica/analytics/coreapi/internal/crypto/Encrypter;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/y6;->a:Lio/appmetrica/analytics/coreutils/internal/encryption/AESRSAEncrypter;

    return-object p0
.end method
