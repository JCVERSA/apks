.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;

    invoke-direct {v0}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;-><init>()V

    sput-object v0, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->a:Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;

    sget-object v1, Lcom/snaptube/ads/base/AdsPos;->START_DOWNLOAD_INTERSTITIAL:Lcom/snaptube/ads/base/AdsPos;

    sput-object v1, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->b:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v1}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_download_count"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->c:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_last_download_count_time"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->d:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_after_ad_impression_download_count"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->e:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_after_guide_impression_download_count"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->f:Ljava/lang/String;

    sget-object v1, Lcom/snaptube/player_guide/PlayerGuideAdPos;->AD_POS_START_DOWNLOAD_INTERSTITIAL:Lcom/snaptube/player_guide/PlayerGuideAdPos;

    sput-object v1, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->g:Lcom/snaptube/player_guide/PlayerGuideAdPos;

    sget-object v1, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel$playerGuide$2;->INSTANCE:Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel$playerGuide$2;

    invoke-static {v1}, Lkotlin/b;->b(Lo/bx2;)Lo/t14;

    move-result-object v1

    sput-object v1, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->h:Lo/t14;

    sget-object v1, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel$installedAdImpressionInterval$2;->INSTANCE:Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel$installedAdImpressionInterval$2;

    invoke-static {v1}, Lkotlin/b;->b(Lo/bx2;)Lo/t14;

    move-result-object v1

    sput-object v1, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->i:Lo/t14;

    sget-object v1, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel$preloadBlockPercentage$2;->INSTANCE:Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel$preloadBlockPercentage$2;

    invoke-static {v1}, Lkotlin/b;->b(Lo/bx2;)Lo/t14;

    move-result-object v1

    sput-object v1, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->j:Lo/t14;

    invoke-virtual {v0}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->C()V

    return-void
.end method
