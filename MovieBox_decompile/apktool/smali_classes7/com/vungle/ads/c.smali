.class public final synthetic Lcom/vungle/ads/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

.field public final synthetic b:J

.field public final synthetic c:Lcom/vungle/ads/internal/util/n;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/n;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/vungle/ads/c;->a:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/vungle/ads/c;->b:J

    .line 7
    .line 8
    iput-object p4, p0, Lcom/vungle/ads/c;->c:Lcom/vungle/ads/internal/util/n;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/vungle/ads/c;->d:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/c;->a:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/vungle/ads/c;->b:J

    .line 4
    .line 5
    iget-object v3, p0, Lcom/vungle/ads/c;->c:Lcom/vungle/ads/internal/util/n;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/vungle/ads/c;->d:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3, v4}, Lcom/vungle/ads/AnalyticsClient;->d(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/n;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
