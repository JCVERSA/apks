.class public La/RouterMap__TheRouter__1773921142;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/therouter/router/d;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final COUNT:Ljava/lang/String; = "1"

.field public static final ROUTERMAP0:Ljava/lang/String; = "[{\"path\":\"/download/ugc_my_downloads\",\"className\":\"com.transsnet.downloader.ugc.activity.UGCMyDownloadsActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/download/ugc_collection_list\",\"className\":\"com.transsnet.downloader.ugc.activity.UGCDownloadCollectionListActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/download/transfer\",\"className\":\"com.transsnet.downloader.activity.TransferActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/download/series_list\",\"className\":\"com.transsnet.downloader.activity.DownloadSeriesListActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/download/panel_activity\",\"className\":\"com.transsnet.downloader.activity.DownloadPanelActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/download/play_history\",\"className\":\"com.transsnet.downloader.activity.AllHistoricalPlayRecordActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}}]"

.field public static final TAG:Ljava/lang/String; = "Created by kymjs, and APT Version is 1.3.0."

.field public static final THEROUTER_APT_VERSION:Ljava/lang/String; = "1.3.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static addRoute()V
    .locals 4

    .line 1
    new-instance v0, Lcom/therouter/router/RouteItem;

    .line 2
    .line 3
    const-string v1, "/download/ugc_my_downloads"

    .line 4
    .line 5
    const-string v2, "com.transsnet.downloader.ugc.activity.UGCMyDownloadsActivity"

    .line 6
    .line 7
    const-string v3, ""

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/therouter/router/RouteItem;

    .line 16
    .line 17
    const-string v1, "/download/ugc_collection_list"

    .line 18
    .line 19
    const-string v2, "com.transsnet.downloader.ugc.activity.UGCDownloadCollectionListActivity"

    .line 20
    .line 21
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lcom/therouter/router/RouteItem;

    .line 28
    .line 29
    const-string v1, "/download/transfer"

    .line 30
    .line 31
    const-string v2, "com.transsnet.downloader.activity.TransferActivity"

    .line 32
    .line 33
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Lcom/therouter/router/RouteItem;

    .line 40
    .line 41
    const-string v1, "/download/series_list"

    .line 42
    .line 43
    const-string v2, "com.transsnet.downloader.activity.DownloadSeriesListActivity"

    .line 44
    .line 45
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    .line 49
    .line 50
    .line 51
    new-instance v0, Lcom/therouter/router/RouteItem;

    .line 52
    .line 53
    const-string v1, "/download/panel_activity"

    .line 54
    .line 55
    const-string v2, "com.transsnet.downloader.activity.DownloadPanelActivity"

    .line 56
    .line 57
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    .line 61
    .line 62
    .line 63
    new-instance v0, Lcom/therouter/router/RouteItem;

    .line 64
    .line 65
    const-string v1, "/download/play_history"

    .line 66
    .line 67
    const-string v2, "com.transsnet.downloader.activity.AllHistoricalPlayRecordActivity"

    .line 68
    .line 69
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method


# virtual methods
.method public init()V
    .locals 0

    .line 1
    invoke-static {}, La/RouterMap__TheRouter__1773921142;->addRoute()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
