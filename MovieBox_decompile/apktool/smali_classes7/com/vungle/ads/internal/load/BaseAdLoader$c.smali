.class public final Lcom/vungle/ads/internal/load/BaseAdLoader$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/vungle/ads/internal/load/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/load/BaseAdLoader;->handleAdMetaData$vungle_ads_release(Lcom/vungle/ads/internal/model/AdPayload;Lcom/vungle/ads/w;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/ads/internal/load/BaseAdLoader;


# direct methods
.method constructor <init>(Lcom/vungle/ads/internal/load/BaseAdLoader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/load/BaseAdLoader$c;->this$0:Lcom/vungle/ads/internal/load/BaseAdLoader;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDownloadResult(I)V
    .locals 11

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0xd

    .line 6
    .line 7
    if-eq p1, v1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/vungle/ads/internal/load/BaseAdLoader$c;->this$0:Lcom/vungle/ads/internal/load/BaseAdLoader;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/vungle/ads/internal/load/BaseAdLoader;->access$getAdLoaderCallback$p(Lcom/vungle/ads/internal/load/BaseAdLoader;)Lcom/vungle/ads/internal/load/a;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    new-instance v0, Lcom/vungle/ads/MraidJsError;

    .line 18
    .line 19
    sget-object v1, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->MRAID_DOWNLOAD_JS_ERROR:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 20
    .line 21
    const-string v2, "Failed to download mraid.js."

    .line 22
    .line 23
    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/MraidJsError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0}, Lcom/vungle/ads/internal/load/a;->onFailure(Lcom/vungle/ads/VungleError;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    if-ne p1, v0, :cond_1

    .line 31
    .line 32
    sget-object v3, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    .line 33
    .line 34
    sget-object v4, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->MRAID_DOWNLOAD_JS_RETRY_SUCCESS:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    .line 35
    .line 36
    iget-object p1, p0, Lcom/vungle/ads/internal/load/BaseAdLoader$c;->this$0:Lcom/vungle/ads/internal/load/BaseAdLoader;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/vungle/ads/internal/load/BaseAdLoader;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    const/16 v9, 0xa

    .line 43
    .line 44
    const/4 v10, 0x0

    .line 45
    const-wide/16 v5, 0x0

    .line 46
    .line 47
    const/4 v8, 0x0

    .line 48
    invoke-static/range {v3 .. v10}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/n;Ljava/lang/String;ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    iget-object p1, p0, Lcom/vungle/ads/internal/load/BaseAdLoader$c;->this$0:Lcom/vungle/ads/internal/load/BaseAdLoader;

    .line 52
    .line 53
    invoke-static {p1}, Lcom/vungle/ads/internal/load/BaseAdLoader;->access$downloadAssets(Lcom/vungle/ads/internal/load/BaseAdLoader;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_0
    return-void
.end method
