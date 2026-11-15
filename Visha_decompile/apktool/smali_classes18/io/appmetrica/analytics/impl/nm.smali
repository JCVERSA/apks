.class public final Lio/appmetrica/analytics/impl/nm;
.super Lio/appmetrica/analytics/impl/tm;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/tm;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;)Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;
    .locals 6

    new-instance p0, Lio/appmetrica/analytics/impl/zf;

    new-instance v0, Lio/appmetrica/analytics/impl/F8;

    new-instance v1, Lio/appmetrica/analytics/impl/c2;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/c2;-><init>()V

    new-instance v2, Lio/appmetrica/analytics/coreutils/internal/encryption/AESEncrypter;

    const/16 v3, 0x10

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/appmetrica/analytics/impl/Wi;->a(Ljava/lang/String;)[B

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    new-array v4, v3, [B

    :goto_0
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/appmetrica/analytics/impl/Wi;->a(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    new-array p1, v3, [B

    :goto_1
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-direct {v2, v3, v4, p1}, Lio/appmetrica/analytics/coreutils/internal/encryption/AESEncrypter;-><init>(Ljava/lang/String;[B[B)V

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/F8;-><init>(Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateSerializer;Lio/appmetrica/analytics/coreutils/internal/encryption/AESEncrypter;)V

    new-instance p1, Lio/appmetrica/analytics/impl/Y1;

    new-instance v1, Lio/appmetrica/analytics/impl/F2;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/F2;-><init>()V

    invoke-direct {p1, v1}, Lio/appmetrica/analytics/impl/Y1;-><init>(Lio/appmetrica/analytics/impl/F2;)V

    const-string v1, "app_permissions_state"

    invoke-direct {p0, v1, p2, v0, p1}, Lio/appmetrica/analytics/impl/zf;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateSerializer;Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;)V

    return-object p0
.end method

.method public final c(Landroid/content/Context;)Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;
    .locals 1

    invoke-static {p1}, Lio/appmetrica/analytics/impl/g7;->a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/g7;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lio/appmetrica/analytics/impl/g7;->i:Lio/appmetrica/analytics/impl/n3;

    if-nez p1, :cond_0

    new-instance p1, Lio/appmetrica/analytics/impl/n3;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/g7;->g()Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;

    move-result-object v0

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/n3;-><init>(Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/g7;->i:Lio/appmetrica/analytics/impl/n3;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lio/appmetrica/analytics/impl/g7;->i:Lio/appmetrica/analytics/impl/n3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final d(Landroid/content/Context;)Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;
    .locals 0

    invoke-static {p1}, Lio/appmetrica/analytics/impl/g7;->a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/g7;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/g7;->g()Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
