.class public Lio/appmetrica/analytics/networktasks/internal/AdvIdWithLimitedAppender;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/networktasks/internal/IParamsAppender;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/appmetrica/analytics/networktasks/internal/IParamsAppender<",
        "Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;)V
    .locals 2

    const-string v0, ""

    if-nez p3, :cond_0

    invoke-virtual {p0, p1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p0, p2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    :cond_0
    iget-object v1, p3, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;->advId:Ljava/lang/String;

    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object p1, p3, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;->limitedAdTracking:Ljava/lang/Boolean;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string v0, "1"

    goto :goto_0

    :cond_2
    const-string v0, "0"

    :goto_0
    invoke-virtual {p0, p2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :goto_1
    return-void
.end method


# virtual methods
.method public appendParams(Landroid/net/Uri$Builder;Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;)V
    .locals 3
    .param p1    # Landroid/net/Uri$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p0, 0x0

    if-nez p2, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getGoogle()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object v0

    iget-object v0, v0, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mAdTrackingInfo:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;

    .line 3
    :goto_0
    const-string v1, "adv_id"

    const-string v2, "limit_ad_tracking"

    invoke-static {p1, v1, v2, v0}, Lio/appmetrica/analytics/networktasks/internal/AdvIdWithLimitedAppender;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;)V

    if-nez p2, :cond_1

    move-object v0, p0

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p2}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getHuawei()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object v0

    iget-object v0, v0, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mAdTrackingInfo:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;

    .line 5
    :goto_1
    const-string v1, "oaid"

    const-string v2, "limit_oaid_tracking"

    invoke-static {p1, v1, v2, v0}, Lio/appmetrica/analytics/networktasks/internal/AdvIdWithLimitedAppender;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;)V

    if-nez p2, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    invoke-virtual {p2}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getYandex()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object p0

    iget-object p0, p0, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mAdTrackingInfo:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;

    .line 7
    :goto_2
    const-string p2, "yandex_adv_id"

    const-string v0, "limit_yandex_adv_id_tracking"

    invoke-static {p1, p2, v0, p0}, Lio/appmetrica/analytics/networktasks/internal/AdvIdWithLimitedAppender;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;)V

    return-void
.end method

.method public bridge synthetic appendParams(Landroid/net/Uri$Builder;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Landroid/net/Uri$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p2, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;

    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/networktasks/internal/AdvIdWithLimitedAppender;->appendParams(Landroid/net/Uri$Builder;Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;)V

    return-void
.end method
