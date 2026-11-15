.class public final Lio/appmetrica/analytics/impl/L7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Nc;


# instance fields
.field public a:Landroid/location/Location;

.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/Boolean;

.field public final e:Ljava/util/LinkedHashMap;

.field public final f:Ljava/util/LinkedHashMap;

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:Lio/appmetrica/analytics/impl/ni;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/L7;->e:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/L7;->f:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final a(Landroid/location/Location;)V
    .locals 0
    .param p1    # Landroid/location/Location;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/L7;->a:Landroid/location/Location;

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/ni;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lio/appmetrica/analytics/impl/L7;->j:Lio/appmetrica/analytics/impl/ni;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5
    iget-object p0, p0, Lio/appmetrica/analytics/impl/L7;->f:Ljava/util/LinkedHashMap;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/L7;->b:Ljava/lang/Boolean;

    .line 2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/L7;->j:Lio/appmetrica/analytics/impl/ni;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lio/appmetrica/analytics/impl/L7;->d:Ljava/lang/Boolean;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/L7;->c:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1, p0}, Lio/appmetrica/analytics/impl/ni;->a(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public final b(Lio/appmetrica/analytics/AppMetricaConfig;)Lio/appmetrica/analytics/AppMetricaConfig;
    .locals 4

    .line 4
    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/L7;->i:Z

    if-eqz v0, :cond_0

    return-object p1

    .line 5
    :cond_0
    iget-object v0, p1, Lio/appmetrica/analytics/AppMetricaConfig;->apiKey:Ljava/lang/String;

    invoke-static {v0}, Lio/appmetrica/analytics/AppMetricaConfig;->newConfigBuilder(Ljava/lang/String;)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    move-result-object v0

    .line 6
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->deviceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withDeviceType(Ljava/lang/String;)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 7
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->preloadInfo:Lio/appmetrica/analytics/PreloadInfo;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withPreloadInfo(Lio/appmetrica/analytics/PreloadInfo;)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 8
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->location:Landroid/location/Location;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withLocation(Landroid/location/Location;)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 9
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->appVersion:Ljava/lang/String;

    invoke-static {v1}, Lio/appmetrica/analytics/impl/In;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withAppVersion(Ljava/lang/String;)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 11
    :cond_1
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->dispatchPeriodSeconds:Ljava/lang/Integer;

    invoke-static {v1}, Lio/appmetrica/analytics/impl/In;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->dispatchPeriodSeconds:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withDispatchPeriodSeconds(I)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 13
    :cond_2
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->appBuildNumber:Ljava/lang/Integer;

    invoke-static {v1}, Lio/appmetrica/analytics/impl/In;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->appBuildNumber:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withAppBuildNumber(I)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 15
    :cond_3
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->maxReportsCount:Ljava/lang/Integer;

    invoke-static {v1}, Lio/appmetrica/analytics/impl/In;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 16
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->maxReportsCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withMaxReportsCount(I)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 17
    :cond_4
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->logs:Ljava/lang/Boolean;

    invoke-static {v1}, Lio/appmetrica/analytics/impl/In;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->logs:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 18
    invoke-virtual {v0}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withLogs()Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 19
    :cond_5
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->sessionTimeout:Ljava/lang/Integer;

    invoke-static {v1}, Lio/appmetrica/analytics/impl/In;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 20
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->sessionTimeout:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withSessionTimeout(I)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 21
    :cond_6
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->sessionsAutoTrackingEnabled:Ljava/lang/Boolean;

    invoke-static {v1}, Lio/appmetrica/analytics/impl/In;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 22
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->sessionsAutoTrackingEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withSessionsAutoTrackingEnabled(Z)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 23
    :cond_7
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->crashReporting:Ljava/lang/Boolean;

    invoke-static {v1}, Lio/appmetrica/analytics/impl/In;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 24
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->crashReporting:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withCrashReporting(Z)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 25
    :cond_8
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->nativeCrashReporting:Ljava/lang/Boolean;

    invoke-static {v1}, Lio/appmetrica/analytics/impl/In;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 26
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->nativeCrashReporting:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withNativeCrashReporting(Z)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 27
    :cond_9
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->locationTracking:Ljava/lang/Boolean;

    invoke-static {v1}, Lio/appmetrica/analytics/impl/In;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 28
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->locationTracking:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withLocationTracking(Z)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 29
    :cond_a
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->advIdentifiersTracking:Ljava/lang/Boolean;

    invoke-static {v1}, Lio/appmetrica/analytics/impl/In;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 30
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->advIdentifiersTracking:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withAdvIdentifiersTracking(Z)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 31
    :cond_b
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->firstActivationAsUpdate:Ljava/lang/Boolean;

    invoke-static {v1}, Lio/appmetrica/analytics/impl/In;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 32
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->firstActivationAsUpdate:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->handleFirstActivationAsUpdate(Z)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 33
    :cond_c
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->dataSendingEnabled:Ljava/lang/Boolean;

    invoke-static {v1}, Lio/appmetrica/analytics/impl/In;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 34
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->dataSendingEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withDataSendingEnabled(Z)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 35
    :cond_d
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->anrMonitoring:Ljava/lang/Boolean;

    invoke-static {v1}, Lio/appmetrica/analytics/impl/In;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 36
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->anrMonitoring:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withAnrMonitoring(Z)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 37
    :cond_e
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->anrMonitoringTimeout:Ljava/lang/Integer;

    invoke-static {v1}, Lio/appmetrica/analytics/impl/In;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 38
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->anrMonitoringTimeout:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withAnrMonitoringTimeout(I)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 39
    :cond_f
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->maxReportsInDatabaseCount:Ljava/lang/Integer;

    invoke-static {v1}, Lio/appmetrica/analytics/impl/In;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 40
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->maxReportsInDatabaseCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withMaxReportsInDatabaseCount(I)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 41
    :cond_10
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->crashTransformer:Lio/appmetrica/analytics/ICrashTransformer;

    invoke-static {v1}, Lio/appmetrica/analytics/impl/In;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 42
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->crashTransformer:Lio/appmetrica/analytics/ICrashTransformer;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withCrashTransformer(Lio/appmetrica/analytics/ICrashTransformer;)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 43
    :cond_11
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->userProfileID:Ljava/lang/String;

    invoke-static {v1}, Lio/appmetrica/analytics/impl/In;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 44
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->userProfileID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withUserProfileID(Ljava/lang/String;)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 45
    :cond_12
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->revenueAutoTrackingEnabled:Ljava/lang/Boolean;

    invoke-static {v1}, Lio/appmetrica/analytics/impl/In;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 46
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->revenueAutoTrackingEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withRevenueAutoTrackingEnabled(Z)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 47
    :cond_13
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->appOpenTrackingEnabled:Ljava/lang/Boolean;

    invoke-static {v1}, Lio/appmetrica/analytics/impl/In;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 48
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->appOpenTrackingEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withAppOpenTrackingEnabled(Z)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 49
    :cond_14
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->customHosts:Ljava/util/List;

    invoke-static {v1}, Lio/appmetrica/analytics/impl/In;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 50
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->customHosts:Ljava/util/List;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withCustomHosts(Ljava/util/List;)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 51
    :cond_15
    iget-object v1, p0, Lio/appmetrica/analytics/impl/L7;->e:Ljava/util/LinkedHashMap;

    .line 52
    invoke-static {v1}, Lio/appmetrica/analytics/impl/In;->a(Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 53
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 54
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withAppEnvironmentValue(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    goto :goto_0

    .line 55
    :cond_16
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->appEnvironment:Ljava/util/Map;

    .line 56
    invoke-static {v1}, Lio/appmetrica/analytics/impl/In;->a(Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 57
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 58
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withAppEnvironmentValue(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    goto :goto_1

    .line 59
    :cond_17
    iget-object v1, p0, Lio/appmetrica/analytics/impl/L7;->f:Ljava/util/LinkedHashMap;

    .line 60
    invoke-static {v1}, Lio/appmetrica/analytics/impl/In;->a(Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 61
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 62
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withErrorEnvironmentValue(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    goto :goto_2

    .line 63
    :cond_18
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->errorEnvironment:Ljava/util/Map;

    .line 64
    invoke-static {v1}, Lio/appmetrica/analytics/impl/In;->a(Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 65
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 66
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withErrorEnvironmentValue(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    goto :goto_3

    .line 67
    :cond_19
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->additionalConfig:Ljava/util/Map;

    .line 68
    invoke-static {v1}, Lio/appmetrica/analytics/impl/In;->a(Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 69
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 70
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withAdditionalConfig(Ljava/lang/String;Ljava/lang/Object;)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    goto :goto_4

    .line 71
    :cond_1a
    iget-object v1, p0, Lio/appmetrica/analytics/impl/L7;->b:Ljava/lang/Boolean;

    .line 72
    iget-object v2, p1, Lio/appmetrica/analytics/AppMetricaConfig;->locationTracking:Ljava/lang/Boolean;

    if-nez v2, :cond_1b

    invoke-static {v1}, Lio/appmetrica/analytics/impl/In;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 73
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withLocationTracking(Z)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 74
    :cond_1b
    iget-object v1, p0, Lio/appmetrica/analytics/impl/L7;->a:Landroid/location/Location;

    .line 75
    iget-object v2, p1, Lio/appmetrica/analytics/AppMetricaConfig;->location:Landroid/location/Location;

    if-nez v2, :cond_1c

    invoke-static {v1}, Lio/appmetrica/analytics/impl/In;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 76
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withLocation(Landroid/location/Location;)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 77
    :cond_1c
    iget-object v1, p0, Lio/appmetrica/analytics/impl/L7;->d:Ljava/lang/Boolean;

    .line 78
    iget-object v2, p1, Lio/appmetrica/analytics/AppMetricaConfig;->dataSendingEnabled:Ljava/lang/Boolean;

    if-nez v2, :cond_1d

    invoke-static {v1}, Lio/appmetrica/analytics/impl/In;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 79
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withDataSendingEnabled(Z)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 80
    :cond_1d
    iget-object v1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->userProfileID:Ljava/lang/String;

    invoke-static {v1}, Lio/appmetrica/analytics/impl/In;->a(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, p0, Lio/appmetrica/analytics/impl/L7;->h:Ljava/lang/String;

    invoke-static {v1}, Lio/appmetrica/analytics/impl/In;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 81
    iget-object v1, p0, Lio/appmetrica/analytics/impl/L7;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withUserProfileID(Ljava/lang/String;)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 82
    :cond_1e
    iget-object v1, p0, Lio/appmetrica/analytics/impl/L7;->c:Ljava/lang/Boolean;

    .line 83
    iget-object p1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->advIdentifiersTracking:Ljava/lang/Boolean;

    if-nez p1, :cond_1f

    invoke-static {v1}, Lio/appmetrica/analytics/impl/In;->a(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 84
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withAdvIdentifiersTracking(Z)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    :cond_1f
    const/4 p1, 0x1

    .line 85
    iput-boolean p1, p0, Lio/appmetrica/analytics/impl/L7;->i:Z

    const/4 p1, 0x0

    .line 86
    iput-object p1, p0, Lio/appmetrica/analytics/impl/L7;->a:Landroid/location/Location;

    .line 87
    iput-object p1, p0, Lio/appmetrica/analytics/impl/L7;->b:Ljava/lang/Boolean;

    .line 88
    iput-object p1, p0, Lio/appmetrica/analytics/impl/L7;->c:Ljava/lang/Boolean;

    .line 89
    iput-object p1, p0, Lio/appmetrica/analytics/impl/L7;->d:Ljava/lang/Boolean;

    .line 90
    iget-object v1, p0, Lio/appmetrica/analytics/impl/L7;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 91
    iget-object v1, p0, Lio/appmetrica/analytics/impl/L7;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    const/4 v1, 0x0

    .line 92
    iput-boolean v1, p0, Lio/appmetrica/analytics/impl/L7;->g:Z

    .line 93
    iput-object p1, p0, Lio/appmetrica/analytics/impl/L7;->h:Ljava/lang/String;

    .line 94
    invoke-virtual {v0}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->build()Lio/appmetrica/analytics/AppMetricaConfig;

    move-result-object p0

    return-object p0
.end method

.method public final b(Z)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/L7;->c:Ljava/lang/Boolean;

    .line 2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/L7;->j:Lio/appmetrica/analytics/impl/ni;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lio/appmetrica/analytics/impl/L7;->b:Ljava/lang/Boolean;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/L7;->d:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p0, p1}, Lio/appmetrica/analytics/impl/ni;->a(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public final clearAppEnvironment()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/L7;->g:Z

    iget-object p0, p0, Lio/appmetrica/analytics/impl/L7;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public final j()Landroid/location/Location;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/L7;->a:Landroid/location/Location;

    return-object p0
.end method

.method public final k()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/L7;->c:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final l()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/L7;->d:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final m()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/L7;->b:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final n()Z
    .locals 0

    iget-boolean p0, p0, Lio/appmetrica/analytics/impl/L7;->g:Z

    return p0
.end method

.method public final putAppEnvironmentValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/L7;->e:Ljava/util/LinkedHashMap;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setDataSendingEnabled(Z)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/L7;->d:Ljava/lang/Boolean;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/L7;->j:Lio/appmetrica/analytics/impl/ni;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/L7;->b:Ljava/lang/Boolean;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/L7;->c:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p0}, Lio/appmetrica/analytics/impl/ni;->a(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public final setUserProfileID(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lio/appmetrica/analytics/impl/L7;->h:Ljava/lang/String;

    return-void
.end method
