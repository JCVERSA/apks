.class public Lcom/mgmi/ads/api/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/mgmi/ads/api/j;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/mgmi/net/bean/e;

.field private d:Lcom/mgmi/model/VASTAd;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "vod"

    iput-object v0, p0, Lcom/mgmi/ads/api/j;->b:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/mgmi/ads/api/j;
    .locals 2

    .line 1
    sget-object v0, Lcom/mgmi/ads/api/j;->a:Lcom/mgmi/ads/api/j;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/mgmi/ads/api/j;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/mgmi/ads/api/j;->a:Lcom/mgmi/ads/api/j;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/mgmi/ads/api/j;

    invoke-direct {v1}, Lcom/mgmi/ads/api/j;-><init>()V

    sput-object v1, Lcom/mgmi/ads/api/j;->a:Lcom/mgmi/ads/api/j;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_2
    sget-object v0, Lcom/mgmi/ads/api/j;->a:Lcom/mgmi/ads/api/j;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/mgmi/model/VASTAd;)V
    .locals 9

    .line 7
    iput-object p1, p0, Lcom/mgmi/ads/api/j;->d:Lcom/mgmi/model/VASTAd;

    .line 8
    instance-of v0, p1, Lcom/mgmi/model/VASTFloatAd;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Lcom/mgmi/net/bean/e;

    invoke-virtual {p1, v1}, Lcom/mgmi/model/VASTAd;->getTrackingEventlandClick(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, v1}, Lcom/mgmi/model/VASTAd;->getTrackingEventLandclose(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 10
    invoke-static {}, Lcom/mgmi/e/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mgmi/model/VASTAd;->getTrackingEventlandClick(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lcom/mgmi/e/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mgmi/model/VASTAd;->getTrackingEventLandclose(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    check-cast p1, Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {p1}, Lcom/mgmi/model/VASTFloatAd;->getDelayRandTime()I

    move-result p1

    int-to-long v7, p1

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/mgmi/net/bean/e;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;J)V

    iput-object v0, p0, Lcom/mgmi/ads/api/j;->c:Lcom/mgmi/net/bean/e;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 11
    new-instance v0, Lcom/mgmi/net/bean/e;

    invoke-virtual {p1, v1}, Lcom/mgmi/model/VASTAd;->getTrackingEventlandClick(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v1}, Lcom/mgmi/model/VASTAd;->getTrackingEventLandclose(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 12
    invoke-static {}, Lcom/mgmi/e/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/mgmi/model/VASTAd;->getTrackingEventlandClick(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lcom/mgmi/e/f;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/mgmi/model/VASTAd;->getTrackingEventLandclose(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v2, v1, v3, p1}, Lcom/mgmi/net/bean/e;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/mgmi/ads/api/j;->c:Lcom/mgmi/net/bean/e;

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/mgmi/net/bean/BootDataItem;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 13
    new-instance v1, Lcom/mgmi/net/bean/e;

    iget-object v2, p1, Lcom/mgmi/net/bean/BootDataItem;->landClick:Ljava/util/List;

    iget-object p1, p1, Lcom/mgmi/net/bean/BootDataItem;->landClose:Ljava/util/List;

    invoke-direct {v1, v2, p1, v0, v0}, Lcom/mgmi/net/bean/e;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/mgmi/ads/api/j;->c:Lcom/mgmi/net/bean/e;

    goto :goto_0

    .line 14
    :cond_0
    iput-object v0, p0, Lcom/mgmi/ads/api/j;->c:Lcom/mgmi/net/bean/e;

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/mgmi/ads/api/j;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/j;->b:Ljava/lang/String;

    return-object p0
.end method
