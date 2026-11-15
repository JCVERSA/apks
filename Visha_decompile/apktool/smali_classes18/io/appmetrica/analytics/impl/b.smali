.class public final Lio/appmetrica/analytics/impl/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/K8;


# instance fields
.field public final a:Lio/appmetrica/analytics/coreutils/internal/encryption/AESEncrypter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/a;

    invoke-static {}, Lio/appmetrica/analytics/impl/ua;->j()Lio/appmetrica/analytics/impl/ua;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/ua;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/a;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/b;-><init>(Lio/appmetrica/analytics/impl/a;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/coreutils/internal/encryption/AESEncrypter;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lio/appmetrica/analytics/impl/b;->a:Lio/appmetrica/analytics/coreutils/internal/encryption/AESEncrypter;

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/a;)V
    .locals 3

    .line 2
    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/encryption/AESEncrypter;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/a;->b()[B

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/a;->a()[B

    move-result-object p1

    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-direct {v0, v2, v1, p1}, Lio/appmetrica/analytics/coreutils/internal/encryption/AESEncrypter;-><init>(Ljava/lang/String;[B[B)V

    .line 4
    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/b;-><init>(Lio/appmetrica/analytics/coreutils/internal/encryption/AESEncrypter;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/a6;)Lio/appmetrica/analytics/impl/E8;
    .locals 2
    .param p1    # Lio/appmetrica/analytics/impl/a6;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/a6;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 4
    iget-object p0, p0, Lio/appmetrica/analytics/impl/b;->a:Lio/appmetrica/analytics/coreutils/internal/encryption/AESEncrypter;

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/coreutils/internal/encryption/AESEncrypter;->encrypt([B)[B

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 5
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    const/4 p0, 0x0

    .line 6
    :goto_0
    invoke-virtual {p1, p0}, Lio/appmetrica/analytics/impl/a6;->setValue(Ljava/lang/String;)V

    .line 7
    new-instance p0, Lio/appmetrica/analytics/impl/E8;

    .line 8
    sget-object v0, Lio/appmetrica/analytics/impl/M8;->d:Lio/appmetrica/analytics/impl/M8;

    .line 9
    invoke-direct {p0, p1, v0}, Lio/appmetrica/analytics/impl/E8;-><init>(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/M8;)V

    return-object p0
.end method

.method public final a()Lio/appmetrica/analytics/impl/M8;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 14
    sget-object p0, Lio/appmetrica/analytics/impl/M8;->d:Lio/appmetrica/analytics/impl/M8;

    return-object p0
.end method

.method public final a([B)[B
    .locals 3
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 10
    new-array v1, v0, [B

    if-eqz p1, :cond_0

    .line 11
    array-length v2, p1

    if-lez v2, :cond_0

    .line 12
    :try_start_0
    invoke-static {p1, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1

    .line 13
    iget-object p0, p0, Lio/appmetrica/analytics/impl/b;->a:Lio/appmetrica/analytics/coreutils/internal/encryption/AESEncrypter;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/coreutils/internal/encryption/AESEncrypter;->decrypt([B)[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-object v1
.end method
