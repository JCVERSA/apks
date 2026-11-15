.class public final Lcom/cloud/tmc/miniapp/dialog/o0O0O00$OooO00o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/dialog/o0O0O00;-><init>(Landroid/content/Context;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/dialog/o0O0O00;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/dialog/o0O0O00;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0O0O00$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/o0O0O00;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onShow(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;)V
    .locals 4

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
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0O0O00$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/o0O0O00;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/dialog/o0O0O00;->OooO00o:Lcom/cloud/tmc/integration/structure/App;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v0, v1

    .line 22
    :goto_0
    new-instance v2, Landroid/os/Bundle;

    .line 23
    .line 24
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/dialog/o0O0O00$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/o0O0O00;

    .line 28
    .line 29
    iget-object v3, v3, Lcom/cloud/tmc/miniapp/dialog/o0O0O00;->OooO00o:Lcom/cloud/tmc/integration/structure/App;

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :cond_1
    const-string v3, "miniappid"

    .line 38
    .line 39
    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 43
    .line 44
    const-string v1, "miniapp_agree_popup_ex"

    .line 45
    .line 46
    invoke-interface {p1, v0, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->recordForCommon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
