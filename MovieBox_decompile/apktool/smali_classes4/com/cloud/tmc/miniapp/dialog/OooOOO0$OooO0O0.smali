.class public final Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooO0O0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOO0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/dialog/OooOOO0;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooOOO0;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/dialog/OooOOO0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooOOO0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public OooO00o(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;)V
    .locals 3

    .line 1
    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooOOO0;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0oO:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_MORE_EXIT:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 14
    .line 15
    const-string v2, ""

    .line 16
    .line 17
    invoke-interface {p1, v0, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
