.class public final Lio/appmetrica/analytics/impl/cc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/locationapi/internal/LocationReceiverProvider;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Location receiver stub"

    iput-object v0, p0, Lio/appmetrica/analytics/impl/cc;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getIdentifier()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/cc;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getLocationReceiver(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/system/PermissionExtractor;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;Landroid/location/LocationListener;)Lio/appmetrica/analytics/locationapi/internal/LocationReceiver;
    .locals 0

    new-instance p0, Lio/appmetrica/analytics/impl/dc;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/dc;-><init>()V

    return-object p0
.end method
