.class public final Lio/appmetrica/analytics/impl/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/locationapi/internal/LocationReceiverProviderFactory;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/cc;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/cc;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/cc;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/bc;->a:Lio/appmetrica/analytics/impl/cc;

    return-void
.end method


# virtual methods
.method public final getPassiveLocationReceiverProvider()Lio/appmetrica/analytics/locationapi/internal/LocationReceiverProvider;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/bc;->a:Lio/appmetrica/analytics/impl/cc;

    return-object p0
.end method
