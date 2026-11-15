.class public final Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/performanceanalyse/LogEProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$OooO00o;,
        Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$GrayBean;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$OooO00o;


# instance fields
.field public OooO00o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$GrayBean;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0O0:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$OooO00o;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$OooO00o;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager;->Companion:Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$OooO00o;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager;->OooO00o:Ljava/util/Map;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public destroy(Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager;->OooO00o:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    sget-object p1, Lcom/cloud/tmc/miniapp/NewTaskManager;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getExistAppIds()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager;->OooO00o:Ljava/util/Map;

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Ljava/util/Map$Entry;

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Ljava/lang/String;

    .line 45
    .line 46
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_0

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    :cond_1
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    sget-object v1, Lcom/cloud/tmc/miniapp/NewTaskManager;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getForegroundAppId()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager;->OooO00o:Ljava/util/Map;

    .line 16
    .line 17
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$GrayBean;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$GrayBean;->getRemoteGrayScale()F

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x0

    .line 30
    cmpg-float v2, v2, v3

    .line 31
    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$GrayBean;->getLocalGrayScal()F

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$GrayBean;->getRemoteGrayScale()F

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    cmpg-float v1, v2, v1

    .line 44
    .line 45
    if-gtz v1, :cond_1

    .line 46
    .line 47
    new-instance v1, Landroid/os/Bundle;

    .line 48
    .line 49
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v2, "tag"

    .line 53
    .line 54
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string p1, "msg"

    .line 58
    .line 59
    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 63
    .line 64
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 69
    .line 70
    sget-object p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_LOG_ERROR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 71
    .line 72
    invoke-interface {p1, v0, p2, v0, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    .line 75
    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method

.method public init(Ljava/lang/String;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager;->OooO00o:Ljava/util/Map;

    .line 4
    .line 5
    new-instance v1, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$GrayBean;

    .line 6
    .line 7
    new-instance v2, Ljava/security/SecureRandom;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    iget v3, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager;->OooO0O0:F

    .line 17
    .line 18
    invoke-direct {v1, v2, v3}, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager$GrayBean;-><init>(FF)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    :catchall_0
    :cond_0
    return-void
.end method

.method public saveConfig(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/LogEReportManager;->OooO0O0:F

    .line 2
    .line 3
    return-void
.end method
