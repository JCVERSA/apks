.class public final Lio/appmetrica/analytics/impl/fd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceLifecycleController;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/P1;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/P1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/fd;->a:Lio/appmetrica/analytics/impl/P1;

    return-void
.end method

.method public static final a(Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceLifecycleObserver;Landroid/content/Intent;)V
    .locals 0

    invoke-interface {p0}, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceLifecycleObserver;->onFirstClientConnected()V

    return-void
.end method

.method public static final b(Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceLifecycleObserver;Landroid/content/Intent;)V
    .locals 0

    invoke-interface {p0}, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceLifecycleObserver;->onAllClientsDisconnected()V

    return-void
.end method


# virtual methods
.method public final registerObserver(Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceLifecycleObserver;)V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/fd;->a:Lio/appmetrica/analytics/impl/P1;

    new-instance v1, Lyed;

    invoke-direct {v1, p1}, Lyed;-><init>(Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceLifecycleObserver;)V

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/P1;->b(Lio/appmetrica/analytics/impl/O1;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/fd;->a:Lio/appmetrica/analytics/impl/P1;

    new-instance v0, Lzed;

    invoke-direct {v0, p1}, Lzed;-><init>(Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceLifecycleObserver;)V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/P1;->a(Lio/appmetrica/analytics/impl/O1;)V

    return-void
.end method
