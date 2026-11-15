.class public final Lcom/cloud/tmc/miniapp/dialog/OooO00o$OooO00o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/dialog/OooO00o;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO00o;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/dialog/OooO00o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO00o$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO00o;

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
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO00o$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO00o;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/dialog/OooO00o;->OooOO0o:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v1, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/dialog/OooO00o$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO00o;

    .line 19
    .line 20
    const-string v3, "location"

    .line 21
    .line 22
    iget-object v2, v2, Lcom/cloud/tmc/miniapp/dialog/OooO00o;->OooOO0O:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 28
    .line 29
    const-string v2, "second_add_ex"

    .line 30
    .line 31
    invoke-interface {p1, v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->recordForCommon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
