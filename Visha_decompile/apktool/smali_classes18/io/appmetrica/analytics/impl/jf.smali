.class public final Lio/appmetrica/analytics/impl/jf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/ff;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/PreloadInfo;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Z)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lio/appmetrica/analytics/PreloadInfo;->getTrackingId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "Required field \"PreloadInfo.trackingId\" is empty!\nThis preload info will be skipped."

    invoke-virtual {p2, p1, p0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lio/appmetrica/analytics/impl/ff;

    invoke-virtual {p1}, Lio/appmetrica/analytics/PreloadInfo;->getTrackingId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lio/appmetrica/analytics/PreloadInfo;->getAdditionalParams()Ljava/util/Map;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    sget-object v5, Lio/appmetrica/analytics/impl/X7;->c:Lio/appmetrica/analytics/impl/X7;

    const/4 v3, 0x1

    move-object v0, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/impl/ff;-><init>(Ljava/lang/String;Lorg/json/JSONObject;ZZLio/appmetrica/analytics/impl/X7;)V

    iput-object p2, p0, Lio/appmetrica/analytics/impl/jf;->a:Lio/appmetrica/analytics/impl/ff;

    :cond_1
    :goto_0
    return-void
.end method
