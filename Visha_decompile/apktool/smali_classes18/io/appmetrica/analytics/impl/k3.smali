.class public final Lio/appmetrica/analytics/impl/k3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/servicecomponents/applicationstate/ApplicationStateObserver;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/l3;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/l3;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/k3;->a:Lio/appmetrica/analytics/impl/l3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplicationStateChanged(Lio/appmetrica/analytics/coreapi/internal/servicecomponents/applicationstate/ApplicationState;)V
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/k3;->a:Lio/appmetrica/analytics/impl/l3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/applicationstate/ApplicationState;->VISIBLE:Lio/appmetrica/analytics/coreapi/internal/servicecomponents/applicationstate/ApplicationState;

    if-ne p1, v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/l3;->a:Lio/appmetrica/analytics/billinginterface/internal/monitor/BillingMonitor;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lio/appmetrica/analytics/billinginterface/internal/monitor/BillingMonitor;->onSessionResumed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
