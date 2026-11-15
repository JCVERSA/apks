.class public final Lio/appmetrica/analytics/impl/ta;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Vj;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate()V
    .locals 0

    invoke-static {}, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;->getInstance()Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;->onCreate()V

    return-void
.end method

.method public final onDestroy()V
    .locals 0

    invoke-static {}, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;->getInstance()Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;->onDestroy()V

    return-void
.end method
