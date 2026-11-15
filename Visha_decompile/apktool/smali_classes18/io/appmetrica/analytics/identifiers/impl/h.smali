.class public final Lio/appmetrica/analytics/identifiers/impl/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/identifiers/impl/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lio/appmetrica/analytics/identifiers/impl/c;
    .locals 6

    const/4 p0, 0x2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object p1

    new-instance v1, Lio/appmetrica/analytics/identifiers/impl/c;

    sget-object v2, Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;->OK:Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;

    new-instance v3, Lio/appmetrica/analytics/identifiers/impl/a;

    const-string v4, "google"

    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v3, v4, v5, p1}, Lio/appmetrica/analytics/identifiers/impl/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 p1, 0x4

    invoke-direct {v1, v2, v3, v0, p1}, Lio/appmetrica/analytics/identifiers/impl/c;-><init>(Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;Lio/appmetrica/analytics/identifiers/impl/a;Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance v1, Lio/appmetrica/analytics/identifiers/impl/c;

    sget-object v2, Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;->UNKNOWN:Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "exception while fetching google adv_id: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, v0, p1, p0}, Lio/appmetrica/analytics/identifiers/impl/c;-><init>(Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;Lio/appmetrica/analytics/identifiers/impl/a;Ljava/lang/String;I)V

    goto :goto_0

    :catch_0
    new-instance v1, Lio/appmetrica/analytics/identifiers/impl/c;

    sget-object p1, Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;->IDENTIFIER_PROVIDER_UNAVAILABLE:Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;

    const-string v2, "could not resolve google services"

    invoke-direct {v1, p1, v0, v2, p0}, Lio/appmetrica/analytics/identifiers/impl/c;-><init>(Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;Lio/appmetrica/analytics/identifiers/impl/a;Ljava/lang/String;I)V

    :goto_0
    return-object v1
.end method
