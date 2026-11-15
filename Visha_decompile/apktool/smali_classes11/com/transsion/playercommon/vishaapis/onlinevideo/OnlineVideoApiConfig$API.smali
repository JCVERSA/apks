.class public final Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiConfig$API;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "API"
.end annotation


# static fields
.field public static final API_APP_CONFIG_GET_IP_INFO:Ljava/lang/String; = "/visha/api/config/ip/info"

.field public static final API_BT_CONFIG:Ljava/lang/String; = "/visha/api/bt-config"

.field public static final API_CANCEL_SUBSCRIBE:Ljava/lang/String; = "/visha/api/pay/visha-vip/cancel-renewal"

.field public static final API_CHECK_TOKEN:Ljava/lang/String; = "/visha/api/user/sync/info"

.field public static final API_CLOUD_SEARCH:Ljava/lang/String; = "/visha/api/search/mediaLibrary/search"

.field public static final API_DELETE_PLAY_RECORD:Ljava/lang/String; = "/visha/api/cloud-storage/delete-play-record"

.field public static final API_DOWNLOAD_MAIN_RECOMMEND:Ljava/lang/String; = "/visha/api/sniff/website/"

.field public static final API_DOWNLOAD_MAIN_RECOMMEND_NEW:Ljava/lang/String; = "/visha/api/sniff/v2/website"

.field public static final API_GET_ADVERTISE:Ljava/lang/String; = "/visha/api/advertising/get"

.field public static final API_GET_BOOKMARKS:Ljava/lang/String; = "/visha/api/sniff/website/"

.field public static final API_GET_BY_CHANNEL:Ljava/lang/String; = "/visha/api/topic/get-by-channel"

.field public static final API_GET_BY_MEDIA:Ljava/lang/String; = "/visha/api/video/play"

.field public static final API_GET_BY_TOPIC:Ljava/lang/String; = "/visha/api/topic/get"

.field public static final API_GET_LAYOUT:Ljava/lang/String; = "/visha/api/config/layout/get"

.field public static final API_GET_PLAYHISTORY:Ljava/lang/String; = "/visha/api/video/user/history/list"

.field public static final API_GET_RECOMMEND:Ljava/lang/String; = "/visha/api/video/recommend/list"

.field public static final API_GET_REFRESH_VISHA_TOKEN:Ljava/lang/String; = "/visha/oauth/token/refresh"

.field public static final API_GET_SEARCH_KEYS:Ljava/lang/String; = "/visha/api/sniff/key-word"

.field public static final API_GET_SHORT_VIDEO_SKETCH:Ljava/lang/String; = "/visha/api/video/sketch/get"

.field public static final API_GET_SKINS:Ljava/lang/String; = "/visha/api/theme/skin/list"

.field public static final API_GET_START_AD:Ljava/lang/String; = "/visha/api/launch-screen/get"

.field public static final API_GET_TAG:Ljava/lang/String; = "/visha/api/tag/list"

.field public static final API_GET_USER_INFO:Ljava/lang/String; = "/visha/api/pay/visha-vip/get"

.field public static final API_GET_VIDEO_BY_TAG:Ljava/lang/String; = "/visha/api/video/list"

.field public static final API_GET_VIDEO_LIST:Ljava/lang/String; = "/visha/api/cloud-storage/get-video-list"

.field public static final API_GET_VISHA_ADS:Ljava/lang/String; = "/visha/api/advertising/space/get"

.field public static final API_GET_VISHA_OAUTH_TOKEN:Ljava/lang/String; = "/visha/oauth/token"

.field public static final API_GET_YTB_CONFIG:Ljava/lang/String; = "/visha/api/local-video-play-control"

.field public static final API_HISTORY_EMPTY_RECOMMEND:Ljava/lang/String; = "/visha/api/video/superior/list"

.field public static final API_MI_COLLECT_ADD:Ljava/lang/String; = "/visha/api/mediaUserCollect/add"

.field public static final API_MI_COLLECT_CANCEL:Ljava/lang/String; = "/visha/api/mediaUserCollect/cancel"

.field public static final API_MI_DATA_LIST:Ljava/lang/String; = "/visha/api/mediaLibrary/dataList"

.field public static final API_MI_PLAY_VIDEO_DATA:Ljava/lang/String; = "/visha/api/mediaLibrary/videoDataUrl"

.field public static final API_MI_RECENT_PLAY_DATA_LIST:Ljava/lang/String; = "/visha/api/recentPlay/dataList"

.field public static final API_MI_USER_COLLECT_DATA_LIST:Ljava/lang/String; = "/visha/api/mediaUserCollect/frontDataList"

.field public static final API_MI_VIDEO_DATA_LIST:Ljava/lang/String; = "/visha/api/mediaLibrary/videoDataList"

.field public static final API_OTT_COLLECT:Ljava/lang/String; = "/visha/api/video/user/collect/sync"

.field public static final API_OTT_COLLECT_REMOVE:Ljava/lang/String; = "/visha/api/video/user/collect/remove"

.field public static final API_OTT_FARVORITE_LIST:Ljava/lang/String; = "/visha/api/video/user/collect/list"

.field public static final API_POST_DELETEHISTORY:Ljava/lang/String; = "/visha/api/video/user/history/del"

.field public static final API_POST_ENSURE_VIP_PAY_CANCEL:Ljava/lang/String; = "/visha/api/pay/order-cancel"

.field public static final API_POST_ENSURE_VIP_PAY_OK:Ljava/lang/String; = "/visha/api/pay/order/trade/confirmations"

.field public static final API_POST_PLAYHISTORY:Ljava/lang/String; = "/visha/api/video/user/history/sync"

.field public static final API_SUBMIT_PLAY_RECORD:Ljava/lang/String; = "/visha/api/cloud-storage/submit-play-record"

.field public static final API_SUBSCRIBE_DETAIL:Ljava/lang/String; = "/visha/api/pay/visha-vip/renewal-vip-info"

.field public static final API_TT_ACTION_LOGS:Ljava/lang/String; = "/visha/api/tt/action/logs"

.field public static final API_TT_DATA_STREAM:Ljava/lang/String; = "/visha/api/tt/data/stream"

.field public static final API_TT_PATH_PREFIX:Ljava/lang/String; = "/visha/api/tt/"

.field public static final API_TT_VIDEO_URL:Ljava/lang/String; = "/visha/api/tt/video/url"

.field public static final API_VIDEO_OUT_JUMP:Ljava/lang/String; = "/visha/api/external-jump/get"

.field public static final API_VIDEO_PLAY_END_RECOMMEND:Ljava/lang/String; = "/visha/api/content-recommend/get"

.field public static final API_VISHA_FORMAT_COPYRIGHT:Ljava/lang/String; = "visha/api/format-copyright/get"

.field public static final API_VISHA_HOT_SEARCH:Ljava/lang/String; = "/visha/api/search/hot-search"

.field public static final API_VISHA_LOGOUT:Ljava/lang/String; = "/visha/oauth/token/logout"

.field public static final API_VISHA_PROMOTIONS:Ljava/lang/String; = "/visha/api/vip-operate-action/list"

.field public static final API_VISHA_SEARCH_LYRIC:Ljava/lang/String; = "/visha/api/search/lyric"

.field public static final API_VISHA_VIDEO_SEARCH:Ljava/lang/String; = "/visha/api/search/video"

.field public static final API_VISHA_VK_RECOMMEND:Ljava/lang/String; = "/visha/api/vk_video/detail_page/recommend"

.field public static final API_VISHA_WORD_SEARCH:Ljava/lang/String; = "/visha/api/search/word"

.field public static final API_VISHA_YOUTUBE_HOT:Ljava/lang/String; = "/visha/api/youtube/getMostPopular"

.field public static final API_VISHA_YOUTUBE_RECOMMEND:Ljava/lang/String; = "/visha/api/youtube/getYoutubeRecommend"

.field public static final API_VISHA_YOUTUBE_SEARCH:Ljava/lang/String; = "/visha/api/youtube/search"

.field public static final API_VISHA_YOUTUBE_WORD_SEARCH:Ljava/lang/String; = "/visha/api/youtube/suggest"

.field public static final ONLINE_RECOMMEND:Ljava/lang/String; = "/visha/api/video/algorithm/recommend/list"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
