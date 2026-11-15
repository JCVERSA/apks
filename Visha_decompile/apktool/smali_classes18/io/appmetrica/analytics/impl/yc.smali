.class public final Lio/appmetrica/analytics/impl/yc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/impl/ni;

.field public final c:Lio/appmetrica/analytics/impl/Ad;

.field public final d:Lio/appmetrica/analytics/impl/T9;

.field public final e:Lio/appmetrica/analytics/impl/xh;

.field public final f:Lio/appmetrica/analytics/impl/i2;

.field public final g:Lio/appmetrica/analytics/impl/lc;

.field public final h:Lio/appmetrica/analytics/impl/r;

.field public final i:Lio/appmetrica/analytics/impl/ye;

.field public final j:Lio/appmetrica/analytics/impl/on;

.field public final k:Lio/appmetrica/analytics/impl/tg;

.field public final l:Lio/appmetrica/analytics/impl/C6;

.field public final m:Lio/appmetrica/analytics/impl/X;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/pf;Lio/appmetrica/analytics/impl/ni;Lio/appmetrica/analytics/impl/ql;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/yc;->a:Landroid/content/Context;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/yc;->b:Lio/appmetrica/analytics/impl/ni;

    new-instance p3, Lio/appmetrica/analytics/impl/Ad;

    invoke-direct {p3, p2}, Lio/appmetrica/analytics/impl/Ad;-><init>(Lio/appmetrica/analytics/impl/pf;)V

    iput-object p3, p0, Lio/appmetrica/analytics/impl/yc;->c:Lio/appmetrica/analytics/impl/Ad;

    new-instance p3, Lio/appmetrica/analytics/impl/T9;

    invoke-direct {p3, p1}, Lio/appmetrica/analytics/impl/T9;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lio/appmetrica/analytics/impl/yc;->d:Lio/appmetrica/analytics/impl/T9;

    new-instance p1, Lio/appmetrica/analytics/impl/xh;

    new-instance p4, Lio/appmetrica/analytics/internal/CounterConfiguration;

    sget-object v0, Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;->MAIN:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    invoke-direct {p4, v0}, Lio/appmetrica/analytics/internal/CounterConfiguration;-><init>(Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;)V

    invoke-direct {p1, p2, p4}, Lio/appmetrica/analytics/impl/xh;-><init>(Lio/appmetrica/analytics/impl/pf;Lio/appmetrica/analytics/internal/CounterConfiguration;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/yc;->e:Lio/appmetrica/analytics/impl/xh;

    new-instance p1, Lio/appmetrica/analytics/impl/i2;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/i2;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/yc;->f:Lio/appmetrica/analytics/impl/i2;

    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->i()Lio/appmetrica/analytics/impl/t4;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/t4;->l()Lio/appmetrica/analytics/impl/lc;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/yc;->g:Lio/appmetrica/analytics/impl/lc;

    new-instance p1, Lio/appmetrica/analytics/impl/r;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/r;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/yc;->h:Lio/appmetrica/analytics/impl/r;

    new-instance p1, Lio/appmetrica/analytics/impl/ye;

    invoke-direct {p1, p3}, Lio/appmetrica/analytics/impl/ye;-><init>(Lio/appmetrica/analytics/impl/T9;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/yc;->i:Lio/appmetrica/analytics/impl/ye;

    new-instance p1, Lio/appmetrica/analytics/impl/on;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/on;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/yc;->j:Lio/appmetrica/analytics/impl/on;

    new-instance p1, Lio/appmetrica/analytics/impl/tg;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/tg;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/yc;->k:Lio/appmetrica/analytics/impl/tg;

    new-instance p1, Lio/appmetrica/analytics/impl/C6;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/C6;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/yc;->l:Lio/appmetrica/analytics/impl/C6;

    new-instance p1, Lio/appmetrica/analytics/impl/X;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/X;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/yc;->m:Lio/appmetrica/analytics/impl/X;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/X;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/yc;->m:Lio/appmetrica/analytics/impl/X;

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/yc;->e:Lio/appmetrica/analytics/impl/xh;

    .line 3
    iget-object v0, v0, Lio/appmetrica/analytics/impl/b4;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    .line 4
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/internal/CounterConfiguration;->applyFromConfig(Lio/appmetrica/analytics/AppMetricaConfig;)V

    .line 5
    iget-object v0, p0, Lio/appmetrica/analytics/impl/yc;->e:Lio/appmetrica/analytics/impl/xh;

    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->userProfileID:Ljava/lang/String;

    monitor-enter v0

    .line 6
    :try_start_0
    iput-object v1, v0, Lio/appmetrica/analytics/impl/xh;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 7
    iget-object p0, p0, Lio/appmetrica/analytics/impl/yc;->e:Lio/appmetrica/analytics/impl/xh;

    new-instance v0, Lio/appmetrica/analytics/impl/jf;

    .line 8
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->preloadInfo:Lio/appmetrica/analytics/PreloadInfo;

    .line 9
    iget-object v2, p1, Lio/appmetrica/analytics/AppMetricaConfig;->additionalConfig:Ljava/util/Map;

    const-string v3, "YMM_preloadInfoAutoTracking"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 10
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    .line 11
    :goto_0
    invoke-direct {v0, v1, p2, v2}, Lio/appmetrica/analytics/impl/jf;-><init>(Lio/appmetrica/analytics/PreloadInfo;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Z)V

    .line 12
    iput-object v0, p0, Lio/appmetrica/analytics/impl/xh;->d:Lio/appmetrica/analytics/impl/jf;

    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Actual session timeout is "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->sessionTimeout:Ljava/lang/Integer;

    if-nez p1, :cond_1

    const/16 p1, 0xa

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    .line 14
    invoke-virtual {p2, p0, p1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0

    throw p0
.end method

.method public final b()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/yc;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final c()Lio/appmetrica/analytics/impl/C6;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/yc;->l:Lio/appmetrica/analytics/impl/C6;

    return-object p0
.end method

.method public final d()Lio/appmetrica/analytics/impl/T9;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/yc;->d:Lio/appmetrica/analytics/impl/T9;

    return-object p0
.end method

.method public final e()Lio/appmetrica/analytics/impl/ye;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/yc;->i:Lio/appmetrica/analytics/impl/ye;

    return-object p0
.end method

.method public final f()Lio/appmetrica/analytics/impl/lc;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/yc;->g:Lio/appmetrica/analytics/impl/lc;

    return-object p0
.end method

.method public final g()Lio/appmetrica/analytics/impl/tg;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/yc;->k:Lio/appmetrica/analytics/impl/tg;

    return-object p0
.end method

.method public final h()Lio/appmetrica/analytics/impl/xh;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/yc;->e:Lio/appmetrica/analytics/impl/xh;

    return-object p0
.end method

.method public final i()Lio/appmetrica/analytics/impl/ni;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/yc;->b:Lio/appmetrica/analytics/impl/ni;

    return-object p0
.end method

.method public final j()Lio/appmetrica/analytics/impl/on;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/yc;->j:Lio/appmetrica/analytics/impl/on;

    return-object p0
.end method
