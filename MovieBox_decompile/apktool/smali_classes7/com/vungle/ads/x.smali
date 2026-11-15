.class public Lcom/vungle/ads/x;
.super Lcom/vungle/ads/j;
.source "source.java"


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
    invoke-direct {p0, p1}, Lcom/vungle/ads/j;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final calculateIntervalDuration()J
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/vungle/ads/x;->getCurrentTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Lcom/vungle/ads/j;->getValueSecond()Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-wide v2, v0

    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/vungle/ads/j;->getValueFirst()Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    if-eqz v4, :cond_1

    .line 22
    .line 23
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    :cond_1
    sub-long/2addr v2, v0

    .line 28
    const v0, 0xf4240

    .line 29
    .line 30
    .line 31
    int-to-long v0, v0

    .line 32
    div-long/2addr v2, v0

    .line 33
    return-wide v2
.end method

.method private final getCurrentTime()J
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method


# virtual methods
.method public getValue()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/vungle/ads/x;->calculateIntervalDuration()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public markEnd()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/vungle/ads/x;->getCurrentTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/vungle/ads/j;->setValueSecond(Ljava/lang/Long;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public markStart()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/vungle/ads/x;->getCurrentTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/vungle/ads/j;->setValueFirst(Ljava/lang/Long;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
