.class public final Lio/appmetrica/analytics/impl/Ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getExtractor(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/system/PermissionExtractor;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;Landroid/location/LocationListener;)Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractor;
    .locals 0

    new-instance p0, Lio/appmetrica/analytics/impl/Bb;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Bb;-><init>()V

    return-object p0
.end method

.method public final getIdentifier()Ljava/lang/String;
    .locals 0

    const-string p0, "Last known extractor stub"

    return-object p0
.end method
