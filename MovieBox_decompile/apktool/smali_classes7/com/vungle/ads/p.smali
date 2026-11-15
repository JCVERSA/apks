.class public abstract Lcom/vungle/ads/p;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private meta:Ljava/lang/String;

.field private metricType:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;


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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/vungle/ads/p;->metricType:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getMeta()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/p;->meta:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMetricType()Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/p;->metricType:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract getValue()J
.end method

.method public final setMeta(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/p;->meta:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setMetricType(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/vungle/ads/p;->metricType:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    .line 7
    .line 8
    return-void
.end method
