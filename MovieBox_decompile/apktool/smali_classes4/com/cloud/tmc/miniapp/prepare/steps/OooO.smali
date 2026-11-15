.class public final synthetic Lcom/cloud/tmc/miniapp/prepare/steps/OooO;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static OooO00o(Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p1, p2, p0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, p3, p4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method
