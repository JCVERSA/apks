.class public final Lio/appmetrica/analytics/impl/S7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Q;

.field public final b:Lio/appmetrica/analytics/impl/e2;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-static {}, Lio/appmetrica/analytics/impl/ua;->j()Lio/appmetrica/analytics/impl/ua;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/ua;->b()Lio/appmetrica/analytics/impl/Q;

    move-result-object v0

    .line 5
    invoke-static {}, Lio/appmetrica/analytics/impl/ua;->j()Lio/appmetrica/analytics/impl/ua;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/ua;->c()Lio/appmetrica/analytics/impl/e2;

    move-result-object v1

    .line 6
    invoke-direct {p0, v0, v1}, Lio/appmetrica/analytics/impl/S7;-><init>(Lio/appmetrica/analytics/impl/Q;Lio/appmetrica/analytics/impl/e2;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Q;Lio/appmetrica/analytics/impl/e2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/appmetrica/analytics/impl/S7;->a:Lio/appmetrica/analytics/impl/Q;

    .line 3
    iput-object p2, p0, Lio/appmetrica/analytics/impl/S7;->b:Lio/appmetrica/analytics/impl/e2;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lio/appmetrica/analytics/impl/S7;->a:Lio/appmetrica/analytics/impl/Q;

    new-instance v1, Lio/appmetrica/analytics/impl/gn;

    const/4 v2, 0x5

    const/16 v3, 0x1f4

    invoke-direct {v1, v2, v3}, Lio/appmetrica/analytics/impl/gn;-><init>(II)V

    monitor-enter v0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v0, v1, v2}, Lio/appmetrica/analytics/impl/Q;->a(Lio/appmetrica/analytics/impl/wi;Z)Ljava/util/concurrent/FutureTask;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :catch_0
    :goto_0
    :try_start_2
    iget-object v1, v0, Lio/appmetrica/analytics/impl/Q;->k:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    invoke-virtual {v1}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getYandex()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, v0, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mAdTrackingInfo:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    iget-object p0, p0, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;->advId:Ljava/lang/String;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    sget-object v0, Lqv0;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    :try_start_3
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    const/4 p0, 0x0

    new-array p0, p0, [B

    :goto_1
    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->toHexString([B)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/S7;->b:Lio/appmetrica/analytics/impl/e2;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/e2;->getAppSetId()Lio/appmetrica/analytics/coreapi/internal/identifiers/AppSetId;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AppSetId;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    :try_start_4
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-string p0, "00000000-0000-0000-0000-000000000000"

    invoke-static {v0, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string v1, "-"

    const-string v2, ""

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lg1a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :catchall_1
    :cond_2
    :goto_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lg1a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    :goto_3
    return-object p0

    :goto_4
    monitor-exit v0

    throw p0
.end method
