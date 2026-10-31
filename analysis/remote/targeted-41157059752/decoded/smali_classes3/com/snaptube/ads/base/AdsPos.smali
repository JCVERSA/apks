.class public final enum Lcom/snaptube/ads/base/AdsPos;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/snaptube/ads/base/AdsPos;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snaptube/ads/base/AdsPos;

.field public static final enum AUDIO_PREVIEW:Lcom/snaptube/ads/base/AdsPos;

.field public static final enum BANNER_VIDEO_INFO:Lcom/snaptube/ads/base/AdsPos;

.field public static final enum BATCH_DOWNLOAD_REWARD:Lcom/snaptube/ads/base/AdsPos;

.field public static final enum BATTERY_SAVER_INTERSTITIAL:Lcom/snaptube/ads/base/AdsPos;

.field public static final enum CLEAN_INTERSTITIAL:Lcom/snaptube/ads/base/AdsPos;

.field public static final enum DOWNLOAD_OUTSIDE_REWARD:Lcom/snaptube/ads/base/AdsPos;

.field public static final enum HOT_SPLASH:Lcom/snaptube/ads/base/AdsPos;

.field public static final enum INTERSTITIAL_LAUNCH:Lcom/snaptube/ads/base/AdsPos;

.field public static final enum MY_FILE_TASK:Lcom/snaptube/ads/base/AdsPos;

.field public static final enum NATIVE_BROWSER_BANNER:Lcom/snaptube/ads/base/AdsPos;

.field public static final enum NATIVE_MYFILE_ALL_PLAY_LIST:Lcom/snaptube/ads/base/AdsPos;

.field public static final enum NATIVE_YOUTUBE_DETAILS_BANNER:Lcom/snaptube/ads/base/AdsPos;

.field public static final enum NATIVE_YOUTUBE_DETAILS_TOP_BANNER:Lcom/snaptube/ads/base/AdsPos;

.field public static final enum NATIVE_YOUTUBE_FEEDSTREAM:Lcom/snaptube/ads/base/AdsPos;

.field public static final enum PHONE_BOOST_INTERSTITIAL:Lcom/snaptube/ads/base/AdsPos;

.field public static final enum SEARCH_VIDEO_RESULT:Lcom/snaptube/ads/base/AdsPos;

.field public static final enum START_DOWNLOAD_INTERSTITIAL:Lcom/snaptube/ads/base/AdsPos;


# instance fields
.field private isFeedstream:Z

.field private pos:Ljava/lang/String;


# direct methods
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

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/snaptube/ads/base/AdsPos;->pos:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/snaptube/ads/base/AdsPos;->isFeedstream:Z

    return-void
.end method

.method public static synthetic a()[Lcom/snaptube/ads/base/AdsPos;
    .locals 3

    const/16 v0, 0x11

    new-array v0, v0, [Lcom/snaptube/ads/base/AdsPos;

    sget-object v1, Lcom/snaptube/ads/base/AdsPos;->BANNER_VIDEO_INFO:Lcom/snaptube/ads/base/AdsPos;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/ads/base/AdsPos;->INTERSTITIAL_LAUNCH:Lcom/snaptube/ads/base/AdsPos;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/ads/base/AdsPos;->PHONE_BOOST_INTERSTITIAL:Lcom/snaptube/ads/base/AdsPos;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/ads/base/AdsPos;->CLEAN_INTERSTITIAL:Lcom/snaptube/ads/base/AdsPos;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/ads/base/AdsPos;->BATTERY_SAVER_INTERSTITIAL:Lcom/snaptube/ads/base/AdsPos;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/ads/base/AdsPos;->NATIVE_MYFILE_ALL_PLAY_LIST:Lcom/snaptube/ads/base/AdsPos;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/ads/base/AdsPos;->NATIVE_BROWSER_BANNER:Lcom/snaptube/ads/base/AdsPos;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/ads/base/AdsPos;->SEARCH_VIDEO_RESULT:Lcom/snaptube/ads/base/AdsPos;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/ads/base/AdsPos;->NATIVE_YOUTUBE_FEEDSTREAM:Lcom/snaptube/ads/base/AdsPos;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/ads/base/AdsPos;->NATIVE_YOUTUBE_DETAILS_TOP_BANNER:Lcom/snaptube/ads/base/AdsPos;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/ads/base/AdsPos;->NATIVE_YOUTUBE_DETAILS_BANNER:Lcom/snaptube/ads/base/AdsPos;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/ads/base/AdsPos;->MY_FILE_TASK:Lcom/snaptube/ads/base/AdsPos;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/ads/base/AdsPos;->DOWNLOAD_OUTSIDE_REWARD:Lcom/snaptube/ads/base/AdsPos;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/ads/base/AdsPos;->AUDIO_PREVIEW:Lcom/snaptube/ads/base/AdsPos;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/ads/base/AdsPos;->BATCH_DOWNLOAD_REWARD:Lcom/snaptube/ads/base/AdsPos;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/ads/base/AdsPos;->START_DOWNLOAD_INTERSTITIAL:Lcom/snaptube/ads/base/AdsPos;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/snaptube/ads/base/AdsPos;->HOT_SPLASH:Lcom/snaptube/ads/base/AdsPos;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static adPosToParent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "banner_video_info2"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "[0-9]+$"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    const-string v1, "PatternSyntaxException"

    invoke-static {v1, v0}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snaptube/ads/base/AdsPos;
    .locals 1

    const-class v0, Lcom/snaptube/ads/base/AdsPos;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/snaptube/ads/base/AdsPos;

    return-object p0
.end method

.method public static values()[Lcom/snaptube/ads/base/AdsPos;
    .locals 1

    sget-object v0, Lcom/snaptube/ads/base/AdsPos;->$VALUES:[Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v0}, [Lcom/snaptube/ads/base/AdsPos;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snaptube/ads/base/AdsPos;

    return-object v0
.end method


# virtual methods
.method public isFeedstream()Z
    .locals 1

    iget-boolean v0, p0, Lcom/snaptube/ads/base/AdsPos;->isFeedstream:Z

    return v0
.end method

.method public pos()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/ads/base/AdsPos;->pos:Ljava/lang/String;

    return-object v0
.end method

.method public pos(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/snaptube/ads/base/AdsPos;->pos:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/snaptube/ads/base/AdsPos;->pos:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public subPos(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/snaptube/ads/base/AdsPos;->pos:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
