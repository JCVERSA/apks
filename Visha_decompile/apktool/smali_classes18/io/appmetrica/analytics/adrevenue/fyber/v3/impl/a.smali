.class public final Lio/appmetrica/analytics/adrevenue/fyber/v3/impl/a;
.super Ljava/util/HashMap;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/fyber/fairbid/ads/PlacementType;)V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "original_source"

    const-string v1, "ad-revenue-fyber-v3"

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_0

    const-string p1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, "original_ad_type"

    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
