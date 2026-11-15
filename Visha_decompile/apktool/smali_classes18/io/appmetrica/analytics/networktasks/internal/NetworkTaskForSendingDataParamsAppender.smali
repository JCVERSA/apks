.class public Lio/appmetrica/analytics/networktasks/internal/NetworkTaskForSendingDataParamsAppender;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lio/appmetrica/analytics/networktasks/internal/RequestBodyEncrypter;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/networktasks/internal/RequestBodyEncrypter;)V
    .locals 0
    .param p1    # Lio/appmetrica/analytics/networktasks/internal/RequestBodyEncrypter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/networktasks/internal/NetworkTaskForSendingDataParamsAppender;->a:Lio/appmetrica/analytics/networktasks/internal/RequestBodyEncrypter;

    return-void
.end method


# virtual methods
.method public appendEncryptedData(Landroid/net/Uri$Builder;)V
    .locals 1
    .param p1    # Landroid/net/Uri$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lio/appmetrica/analytics/networktasks/internal/NetworkTaskForSendingDataParamsAppender;->a:Lio/appmetrica/analytics/networktasks/internal/RequestBodyEncrypter;

    invoke-interface {p0}, Lio/appmetrica/analytics/networktasks/internal/RequestBodyEncrypter;->getEncryptionMode()Lio/appmetrica/analytics/networktasks/internal/RequestBodyEncryptionMode;

    move-result-object p0

    sget-object v0, Lio/appmetrica/analytics/networktasks/internal/RequestBodyEncryptionMode;->AES_RSA:Lio/appmetrica/analytics/networktasks/internal/RequestBodyEncryptionMode;

    if-ne p0, v0, :cond_0

    const-string p0, "encrypted_request"

    const-string v0, "1"

    invoke-virtual {p1, p0, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    return-void
.end method
