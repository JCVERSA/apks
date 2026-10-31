.method static constructor <clinit>()V
    .locals 7

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/snaptube/premium/ads/SplashAdManager;->q:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/snaptube/premium/ads/SplashAdManager;->r:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/snaptube/premium/ads/SplashAdManager;->t:Z

    new-instance v0, Lcom/snaptube/premium/ads/SplashAdManager$a;

    invoke-direct {v0}, Lcom/snaptube/premium/ads/SplashAdManager$a;-><init>()V

    sput-object v0, Lcom/snaptube/premium/ads/SplashAdManager;->u:Lo/t14;

    new-instance v0, Ljava/util/HashSet;

    const-string v5, "com.mbridge.msdk"

    const-string v6, "com.huawei.openalliance.ad"

    const-string v1, "com.snaptube.ads.activity.SplashAdActivity"

    const-string v2, "com.vungle.ads"

    const-string v3, "com.applovin.adview"

    const-string v4, "com.bytedance.sdk.openadsdk"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/snaptube/premium/ads/SplashAdManager;->v:Ljava/util/Set;

    new-instance v0, Lcom/snaptube/premium/ads/SplashAdManager$2;

    invoke-direct {v0}, Lcom/snaptube/premium/ads/SplashAdManager$2;-><init>()V

    sput-object v0, Lcom/snaptube/premium/ads/SplashAdManager;->w:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "phoenix.intent.action.SEARCH_TOOLBAR"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/snaptube/premium/ads/SplashAdManager;->x:Ljava/util/Set;

    return-void
.end method
