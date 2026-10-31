.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/snaptube/ads/base/AdsPos;

    const-string v1, "banner_video_info"

    const-string v2, "BANNER_VIDEO_INFO"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v3}, Lcom/snaptube/ads/base/AdsPos;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/snaptube/ads/base/AdsPos;->BANNER_VIDEO_INFO:Lcom/snaptube/ads/base/AdsPos;

    new-instance v0, Lcom/snaptube/ads/base/AdsPos;

    const-string v1, "interstitial_launch"

    const-string v2, "INTERSTITIAL_LAUNCH"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4, v1, v4}, Lcom/snaptube/ads/base/AdsPos;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/snaptube/ads/base/AdsPos;->INTERSTITIAL_LAUNCH:Lcom/snaptube/ads/base/AdsPos;

    new-instance v0, Lcom/snaptube/ads/base/AdsPos;

    const/4 v1, 0x2

    const-string v2, "phone_boost_interstitial"

    const-string v5, "PHONE_BOOST_INTERSTITIAL"

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/snaptube/ads/base/AdsPos;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/snaptube/ads/base/AdsPos;->PHONE_BOOST_INTERSTITIAL:Lcom/snaptube/ads/base/AdsPos;

    new-instance v0, Lcom/snaptube/ads/base/AdsPos;

    const/4 v1, 0x3

    const-string v2, "clean_interstitial"

    const-string v5, "CLEAN_INTERSTITIAL"

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/snaptube/ads/base/AdsPos;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/snaptube/ads/base/AdsPos;->CLEAN_INTERSTITIAL:Lcom/snaptube/ads/base/AdsPos;

    new-instance v0, Lcom/snaptube/ads/base/AdsPos;

    const/4 v1, 0x4

    const-string v2, "battery_saver_interstitial"

    const-string v5, "BATTERY_SAVER_INTERSTITIAL"

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/snaptube/ads/base/AdsPos;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/snaptube/ads/base/AdsPos;->BATTERY_SAVER_INTERSTITIAL:Lcom/snaptube/ads/base/AdsPos;

    new-instance v0, Lcom/snaptube/ads/base/AdsPos;

    const/4 v1, 0x5

    const-string v2, "play_list"

    const-string v5, "NATIVE_MYFILE_ALL_PLAY_LIST"

    invoke-direct {v0, v5, v1, v2, v4}, Lcom/snaptube/ads/base/AdsPos;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/snaptube/ads/base/AdsPos;->NATIVE_MYFILE_ALL_PLAY_LIST:Lcom/snaptube/ads/base/AdsPos;

    new-instance v0, Lcom/snaptube/ads/base/AdsPos;

    const/4 v1, 0x6

    const-string v2, "browser_banner"

    const-string v5, "NATIVE_BROWSER_BANNER"

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/snaptube/ads/base/AdsPos;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/snaptube/ads/base/AdsPos;->NATIVE_BROWSER_BANNER:Lcom/snaptube/ads/base/AdsPos;

    new-instance v0, Lcom/snaptube/ads/base/AdsPos;

    const/4 v1, 0x7

    const-string v2, "search_video_result"

    const-string v5, "SEARCH_VIDEO_RESULT"

    invoke-direct {v0, v5, v1, v2, v4}, Lcom/snaptube/ads/base/AdsPos;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/snaptube/ads/base/AdsPos;->SEARCH_VIDEO_RESULT:Lcom/snaptube/ads/base/AdsPos;

    new-instance v0, Lcom/snaptube/ads/base/AdsPos;

    const/16 v1, 0x8

    const-string v2, "youtube_feedstream"

    const-string v5, "NATIVE_YOUTUBE_FEEDSTREAM"

    invoke-direct {v0, v5, v1, v2, v4}, Lcom/snaptube/ads/base/AdsPos;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/snaptube/ads/base/AdsPos;->NATIVE_YOUTUBE_FEEDSTREAM:Lcom/snaptube/ads/base/AdsPos;

    new-instance v0, Lcom/snaptube/ads/base/AdsPos;

    const/16 v1, 0x9

    const-string v2, "youtube_details_top_banner"

    const-string v5, "NATIVE_YOUTUBE_DETAILS_TOP_BANNER"

    invoke-direct {v0, v5, v1, v2, v4}, Lcom/snaptube/ads/base/AdsPos;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/snaptube/ads/base/AdsPos;->NATIVE_YOUTUBE_DETAILS_TOP_BANNER:Lcom/snaptube/ads/base/AdsPos;

    new-instance v0, Lcom/snaptube/ads/base/AdsPos;

    const/16 v1, 0xa

    const-string v2, "youtube_details_banner"

    const-string v5, "NATIVE_YOUTUBE_DETAILS_BANNER"

    invoke-direct {v0, v5, v1, v2, v4}, Lcom/snaptube/ads/base/AdsPos;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/snaptube/ads/base/AdsPos;->NATIVE_YOUTUBE_DETAILS_BANNER:Lcom/snaptube/ads/base/AdsPos;

    new-instance v0, Lcom/snaptube/ads/base/AdsPos;

    const/16 v1, 0xb

    const-string v2, "my_file_task"

    const-string v5, "MY_FILE_TASK"

    invoke-direct {v0, v5, v1, v2, v4}, Lcom/snaptube/ads/base/AdsPos;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/snaptube/ads/base/AdsPos;->MY_FILE_TASK:Lcom/snaptube/ads/base/AdsPos;

    new-instance v0, Lcom/snaptube/ads/base/AdsPos;

    const/16 v1, 0xc

    const-string v2, "download_outside_reward"

    const-string v4, "DOWNLOAD_OUTSIDE_REWARD"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/snaptube/ads/base/AdsPos;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/snaptube/ads/base/AdsPos;->DOWNLOAD_OUTSIDE_REWARD:Lcom/snaptube/ads/base/AdsPos;

    new-instance v0, Lcom/snaptube/ads/base/AdsPos;

    const/16 v1, 0xd

    const-string v2, "audio_preview"

    const-string v4, "AUDIO_PREVIEW"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/snaptube/ads/base/AdsPos;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/snaptube/ads/base/AdsPos;->AUDIO_PREVIEW:Lcom/snaptube/ads/base/AdsPos;

    new-instance v0, Lcom/snaptube/ads/base/AdsPos;

    const/16 v1, 0xe

    const-string v2, "batch_download_reward"

    const-string v4, "BATCH_DOWNLOAD_REWARD"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/snaptube/ads/base/AdsPos;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/snaptube/ads/base/AdsPos;->BATCH_DOWNLOAD_REWARD:Lcom/snaptube/ads/base/AdsPos;

    new-instance v0, Lcom/snaptube/ads/base/AdsPos;

    const/16 v1, 0xf

    const-string v2, "start_download_interstitial"

    const-string v4, "START_DOWNLOAD_INTERSTITIAL"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/snaptube/ads/base/AdsPos;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/snaptube/ads/base/AdsPos;->START_DOWNLOAD_INTERSTITIAL:Lcom/snaptube/ads/base/AdsPos;

    new-instance v0, Lcom/snaptube/ads/base/AdsPos;

    const/16 v1, 0x10

    const-string v2, "hot_splash"

    const-string v4, "HOT_SPLASH"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/snaptube/ads/base/AdsPos;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/snaptube/ads/base/AdsPos;->HOT_SPLASH:Lcom/snaptube/ads/base/AdsPos;

    invoke-static {}, Lcom/snaptube/ads/base/AdsPos;->a()[Lcom/snaptube/ads/base/AdsPos;

    move-result-object v0

    sput-object v0, Lcom/snaptube/ads/base/AdsPos;->$VALUES:[Lcom/snaptube/ads/base/AdsPos;

    return-void
.end method
