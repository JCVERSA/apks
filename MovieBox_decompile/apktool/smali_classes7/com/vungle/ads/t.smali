.class public final Lcom/vungle/ads/t;
.super Lcom/vungle/ads/x;
.source "source.java"


# instance fields
.field private alreadyLogged:Z


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V
    .locals 1

    .line 1
    const-string v0, "metricType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/vungle/ads/x;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final alreadyMetered$vungle_ads_release()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/j;->getValueFirst()Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/vungle/ads/j;->getValueSecond()Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public final isLogged()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/vungle/ads/t;->alreadyLogged:Z

    .line 2
    .line 3
    return v0
.end method

.method public markEnd()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/j;->getValueSecond()Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0}, Lcom/vungle/ads/x;->markEnd()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final markLogged()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/vungle/ads/t;->alreadyLogged:Z

    .line 3
    .line 4
    return-void
.end method

.method public markStart()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/j;->getValueFirst()Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0}, Lcom/vungle/ads/x;->markStart()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
