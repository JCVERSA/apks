.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snaptube/ads_log_v2/AdForm;

    sget-object v1, Lcom/snaptube/ads_log_v2/AdForm;->INTERSTITIAL:Lcom/snaptube/ads_log_v2/AdForm;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/ads_log_v2/AdForm;->REWARDED:Lcom/snaptube/ads_log_v2/AdForm;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/snaptube/ads/activity/SplashAdActivity;->n:Ljava/util/List;

    const/4 v0, 0x0

    sput-object v0, Lcom/snaptube/ads/activity/SplashAdActivity;->o:Ljava/lang/String;

    return-void
.end method
