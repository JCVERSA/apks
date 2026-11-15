.class public final Lio/appmetrica/analytics/impl/a3;
.super Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/coreapi/internal/servicecomponents/batteryinfo/BatteryInfo;

.field public final synthetic b:Lio/appmetrica/analytics/impl/b3;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/b3;Lio/appmetrica/analytics/coreapi/internal/servicecomponents/batteryinfo/BatteryInfo;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/a3;->b:Lio/appmetrica/analytics/impl/b3;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/a3;->a:Lio/appmetrica/analytics/coreapi/internal/servicecomponents/batteryinfo/BatteryInfo;

    invoke-direct {p0}, Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final runSafety()V
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/a3;->b:Lio/appmetrica/analytics/impl/b3;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/b3;->a:Lio/appmetrica/analytics/impl/c3;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/a3;->a:Lio/appmetrica/analytics/coreapi/internal/servicecomponents/batteryinfo/BatteryInfo;

    iget-object p0, p0, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/batteryinfo/BatteryInfo;->chargeType:Lio/appmetrica/analytics/coreapi/internal/servicecomponents/batteryinfo/ChargeType;

    sget-object v1, Lio/appmetrica/analytics/impl/c3;->d:Lio/appmetrica/analytics/coreapi/internal/servicecomponents/batteryinfo/ChargeType;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lio/appmetrica/analytics/impl/c3;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/batteryinfo/ChargeTypeChangeListener;

    invoke-interface {v2, p0}, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/batteryinfo/ChargeTypeChangeListener;->onChargeTypeChanged(Lio/appmetrica/analytics/coreapi/internal/servicecomponents/batteryinfo/ChargeType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method
