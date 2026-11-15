.class public final Lio/appmetrica/analytics/impl/Nj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;


# instance fields
.field public final a:Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceLifecycleController;

.field public final b:Lio/appmetrica/analytics/impl/Kd;

.field public final c:Lio/appmetrica/analytics/impl/ed;

.field public final d:Lio/appmetrica/analytics/impl/gk;

.field public final e:Lio/appmetrica/analytics/impl/ck;

.field public final f:Lio/appmetrica/analytics/impl/F9;

.field public final g:Lio/appmetrica/analytics/impl/y6;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceLifecycleController;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Nj;->a:Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceLifecycleController;

    new-instance p1, Lio/appmetrica/analytics/impl/Kd;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Nj;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/Kd;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Nj;->b:Lio/appmetrica/analytics/impl/Kd;

    new-instance p1, Lio/appmetrica/analytics/impl/ed;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/ed;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Nj;->c:Lio/appmetrica/analytics/impl/ed;

    new-instance p1, Lio/appmetrica/analytics/impl/gk;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Nj;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lio/appmetrica/analytics/impl/fk;

    new-instance v2, Lio/appmetrica/analytics/impl/Q1;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/Q1;-><init>()V

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/fk;-><init>(Lio/appmetrica/analytics/impl/Q1;)V

    invoke-direct {p1, v0, v1}, Lio/appmetrica/analytics/impl/gk;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/fk;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Nj;->d:Lio/appmetrica/analytics/impl/gk;

    new-instance p1, Lio/appmetrica/analytics/impl/ck;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Nj;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lio/appmetrica/analytics/impl/ua;->j()Lio/appmetrica/analytics/impl/ua;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/ua;->x()Lio/appmetrica/analytics/impl/Oe;

    move-result-object v1

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Nj;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lio/appmetrica/analytics/impl/g7;->a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/g7;

    move-result-object v2

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/g7;->h()Lio/appmetrica/analytics/impl/f7;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lio/appmetrica/analytics/impl/ck;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Wk;Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Nj;->e:Lio/appmetrica/analytics/impl/ck;

    new-instance p1, Lio/appmetrica/analytics/impl/F9;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/F9;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Nj;->f:Lio/appmetrica/analytics/impl/F9;

    new-instance p1, Lio/appmetrica/analytics/impl/y6;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/y6;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Nj;->g:Lio/appmetrica/analytics/impl/y6;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/Kd;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Nj;->b:Lio/appmetrica/analytics/impl/Kd;

    return-object p0
.end method

.method public final b()Lio/appmetrica/analytics/impl/ed;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Nj;->c:Lio/appmetrica/analytics/impl/ed;

    return-object p0
.end method

.method public final c()Lio/appmetrica/analytics/impl/ck;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Nj;->e:Lio/appmetrica/analytics/impl/ck;

    return-object p0
.end method

.method public final d()Lio/appmetrica/analytics/impl/gk;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Nj;->d:Lio/appmetrica/analytics/impl/gk;

    return-object p0
.end method

.method public final getActivationBarrier()Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ActivationBarrier;
    .locals 0

    sget-object p0, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ua;->B:Lio/appmetrica/analytics/coreutils/internal/services/UtilityServiceProvider;

    invoke-virtual {p0}, Lio/appmetrica/analytics/coreutils/internal/services/UtilityServiceProvider;->getActivationBarrier()Lio/appmetrica/analytics/coreutils/internal/services/WaitForActivationDelayBarrier;

    move-result-object p0

    return-object p0
.end method

.method public final getApplicationStateProvider()Lio/appmetrica/analytics/coreapi/internal/servicecomponents/applicationstate/ApplicationStateProvider;
    .locals 0

    sget-object p0, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/ua;->k()Lio/appmetrica/analytics/impl/Kb;

    move-result-object p0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Kb;->b:Lio/appmetrica/analytics/impl/k2;

    return-object p0
.end method

.method public final getChargeTypeProvider()Lio/appmetrica/analytics/coreapi/internal/servicecomponents/batteryinfo/ChargeTypeProvider;
    .locals 3

    sget-object p0, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/ua;->e:Lio/appmetrica/analytics/impl/c3;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ua;->e:Lio/appmetrica/analytics/impl/c3;

    if-nez v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/impl/c3;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/ua;->d:Lio/appmetrica/analytics/impl/Uj;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Uj;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v1

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/ua;->k()Lio/appmetrica/analytics/impl/Kb;

    move-result-object v2

    iget-object v2, v2, Lio/appmetrica/analytics/impl/Kb;->a:Lio/appmetrica/analytics/impl/Z2;

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/c3;-><init>(Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;Lio/appmetrica/analytics/impl/Z2;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/ua;->e:Lio/appmetrica/analytics/impl/c3;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    sget-object p0, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ua;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final getCryptoProvider()Lio/appmetrica/analytics/coreapi/internal/crypto/CryptoProvider;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Nj;->g:Lio/appmetrica/analytics/impl/y6;

    return-object p0
.end method

.method public final getDataSendingRestrictionController()Lio/appmetrica/analytics/coreapi/internal/control/DataSendingRestrictionController;
    .locals 0

    sget-object p0, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/ua;->g()Lio/appmetrica/analytics/impl/L6;

    move-result-object p0

    return-object p0
.end method

.method public final getExecutorProvider()Lio/appmetrica/analytics/modulesapi/internal/common/ExecutorProvider;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Nj;->f:Lio/appmetrica/analytics/impl/F9;

    return-object p0
.end method

.method public final getFirstExecutionConditionService()Lio/appmetrica/analytics/coreapi/internal/servicecomponents/FirstExecutionConditionService;
    .locals 0

    sget-object p0, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ua;->B:Lio/appmetrica/analytics/coreutils/internal/services/UtilityServiceProvider;

    invoke-virtual {p0}, Lio/appmetrica/analytics/coreutils/internal/services/UtilityServiceProvider;->getFirstExecutionService()Lio/appmetrica/analytics/coreutils/internal/services/FirstExecutionConditionServiceImpl;

    move-result-object p0

    return-object p0
.end method

.method public final getLocationServiceApi()Lio/appmetrica/analytics/modulesapi/internal/service/LocationServiceApi;
    .locals 0

    sget-object p0, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/ua;->l()Lio/appmetrica/analytics/impl/Pb;

    move-result-object p0

    return-object p0
.end method

.method public final getModuleServiceLifecycleController()Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceLifecycleController;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Nj;->a:Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceLifecycleController;

    return-object p0
.end method

.method public final getNetworkContext()Lio/appmetrica/analytics/modulesapi/internal/service/ServiceNetworkContext;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Nj;->b:Lio/appmetrica/analytics/impl/Kd;

    return-object p0
.end method

.method public final getPermissionExtractor()Lio/appmetrica/analytics/coreapi/internal/system/PermissionExtractor;
    .locals 0

    sget-object p0, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/ua;->i()Lio/appmetrica/analytics/coreapi/internal/system/PermissionExtractor;

    move-result-object p0

    return-object p0
.end method

.method public final getPlatformIdentifiers()Lio/appmetrica/analytics/coreapi/internal/identifiers/PlatformIdentifiers;
    .locals 0

    sget-object p0, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/ua;->r()Lio/appmetrica/analytics/coreapi/internal/identifiers/PlatformIdentifiers;

    move-result-object p0

    return-object p0
.end method

.method public final getSdkEnvironmentProvider()Lio/appmetrica/analytics/coreapi/internal/servicecomponents/SdkEnvironmentProvider;
    .locals 0

    sget-object p0, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/ua;->u()Lio/appmetrica/analytics/impl/Ui;

    move-result-object p0

    return-object p0
.end method

.method public final getSelfReporter()Lio/appmetrica/analytics/modulesapi/internal/common/ModuleSelfReporter;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Nj;->c:Lio/appmetrica/analytics/impl/ed;

    return-object p0
.end method

.method public final getServiceStorageProvider()Lio/appmetrica/analytics/modulesapi/internal/service/ServiceStorageProvider;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Nj;->e:Lio/appmetrica/analytics/impl/ck;

    return-object p0
.end method

.method public final getServiceWakeLock()Lio/appmetrica/analytics/modulesapi/internal/service/ServiceWakeLock;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Nj;->d:Lio/appmetrica/analytics/impl/gk;

    return-object p0
.end method
