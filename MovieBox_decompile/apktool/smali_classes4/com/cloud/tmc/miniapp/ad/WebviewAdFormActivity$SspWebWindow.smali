.class public final Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$SspWebWindow;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SspWebWindow"
.end annotation


# instance fields
.field public final OooO00o:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$SspWebWindow;->OooO00o:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$SspWebWindow;->OooO00o:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/Activity;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final submitForm(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$SspWebWindow;->OooO00o:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v2

    .line 16
    :goto_0
    if-eqz v0, :cond_2

    .line 17
    .line 18
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    .line 19
    .line 20
    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 21
    .line 22
    .line 23
    const-class v3, Lcom/cloud/tmc/ad/bean/FormBean;

    .line 24
    .line 25
    invoke-virtual {v1, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/cloud/tmc/ad/bean/FormBean;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-static {}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getGAId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Lcom/cloud/tmc/ad/bean/FormBean;->setGaid(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget v2, v0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO:I

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Lcom/cloud/tmc/ad/bean/FormBean;->setFormId(I)V

    .line 43
    .line 44
    .line 45
    sget-object v2, Lcom/cloud/tmc/integration/utils/DeviceUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/DeviceUtil;

    .line 46
    .line 47
    invoke-virtual {v2, v0}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getIp(Landroid/content/Context;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Lcom/cloud/tmc/ad/bean/FormBean;->setIpAddress(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    move-object v2, v1

    .line 55
    goto :goto_1

    .line 56
    :catch_0
    move-exception p1

    .line 57
    goto :goto_2

    .line 58
    :cond_1
    :goto_1
    invoke-virtual {v0, v2}, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO00o(Lcom/cloud/tmc/ad/bean/FormBean;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOOO0:Landroid/os/Bundle;

    .line 62
    .line 63
    const-string v2, "event_ts"

    .line 64
    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 66
    .line 67
    .line 68
    move-result-wide v3

    .line 69
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 70
    .line 71
    .line 72
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOOO0:Landroid/os/Bundle;

    .line 73
    .line 74
    const-string v2, "form_info"

    .line 75
    .line 76
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 84
    .line 85
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 90
    .line 91
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOO0o:Ljava/lang/String;

    .line 92
    .line 93
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/AdAnalyseType;->form_infor_set:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/AdAnalyseType;

    .line 94
    .line 95
    const-string v3, ""

    .line 96
    .line 97
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOOO0:Landroid/os/Bundle;

    .line 98
    .line 99
    invoke-interface {p1, v1, v2, v3, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    .line 102
    goto :goto_3

    .line 103
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 104
    .line 105
    .line 106
    :cond_2
    :goto_3
    return-void
.end method
