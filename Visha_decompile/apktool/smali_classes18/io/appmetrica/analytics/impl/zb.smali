.class public final Lio/appmetrica/analytics/impl/zb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProviderFactory;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Ab;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/Ab;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Ab;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/zb;->a:Lio/appmetrica/analytics/impl/Ab;

    return-void
.end method


# virtual methods
.method public final getGplLastKnownLocationExtractorProvider()Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProvider;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/zb;->a:Lio/appmetrica/analytics/impl/Ab;

    return-object p0
.end method

.method public final getGpsLastKnownLocationExtractorProvider()Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProvider;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/zb;->a:Lio/appmetrica/analytics/impl/Ab;

    return-object p0
.end method

.method public final getNetworkLastKnownLocationExtractorProvider()Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProvider;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/zb;->a:Lio/appmetrica/analytics/impl/Ab;

    return-object p0
.end method

.method public final getPassiveLastKnownLocationExtractorProvider()Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProvider;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/zb;->a:Lio/appmetrica/analytics/impl/Ab;

    return-object p0
.end method
