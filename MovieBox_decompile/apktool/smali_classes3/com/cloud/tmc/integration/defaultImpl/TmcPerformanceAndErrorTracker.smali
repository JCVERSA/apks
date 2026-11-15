.class public Lcom/cloud/tmc/integration/defaultImpl/TmcPerformanceAndErrorTracker;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/perf/IPerformanceAndErrorTracker;


# static fields
.field private static final TAG:Ljava/lang/String; = "peTracker"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public sendErr(Landroid/content/Context;Lcom/cloud/tmc/kernel/proxy/perf/ErrReportBean;)V
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public sendPerf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public sendPerfStageLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-class v0, Lcom/cloud/tmc/integration/proxy/PerformanceProxy;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/cloud/tmc/integration/proxy/PerformanceProxy;

    .line 19
    .line 20
    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/integration/proxy/PerformanceProxy;->sendPerfStageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public sendPerfV2(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-class v0, Lcom/cloud/tmc/integration/proxy/PerformanceProxy;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/integration/proxy/PerformanceProxy;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/proxy/PerformanceProxy;->sendPerfV2(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
