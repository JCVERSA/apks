.class public final Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showNoNetwork$2$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->showNoNetwork(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showNoNetwork$2$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onRetry(Lcom/cloud/tmc/miniapp/widget/StatusLayout;)V
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
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showNoNetwork$2$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getAppId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Landroid/os/Bundle;

    .line 16
    .line 17
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "type"

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 27
    .line 28
    const-string v2, "uncon_retry_click"

    .line 29
    .line 30
    invoke-interface {p1, v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->recordForCommon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$showNoNetwork$2$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    const/4 v1, 0x3

    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-static {p1, v2, v0, v1, v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->reload$default(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;ZLandroid/os/Bundle;ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
