.class public interface abstract Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract cancelSubscribe(J)Lmc7;
    .param p1    # J
        .annotation runtime Lwk8;
            value = "vip_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lmc7<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/api/pay/visha-vip/cancel-renewal"
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract checkToken()Lmc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmc7<",
            "Lcom/transsion/retrofit/reponse/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/api/user/sync/info"
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract confirmPayCancel(Lcom/transsion/playercommon/data/OrderCancelCallbackRequest;)Lmc7;
    .param p1    # Lcom/transsion/playercommon/data/OrderCancelCallbackRequest;
        .annotation runtime Lgg0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/playercommon/data/OrderCancelCallbackRequest;",
            ")",
            "Lmc7<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lwy9;
    .end annotation

    .annotation runtime Lzu7;
        value = "/visha/api/pay/order-cancel"
    .end annotation
.end method

.method public abstract deletePlayHistory([J)Ljq0;
    .param p1    # [J
        .annotation runtime Lgg0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljq0<",
            "Lcom/transsion/retrofit/reponse/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lwy9;
    .end annotation

    .annotation runtime Lzu7;
        value = "/visha/api/video/user/history/del"
    .end annotation
.end method

.method public abstract deletePlayRecord(Lcom/transsion/playercommon/data/CloudHistoryRequestDataForDelete;)Lmc7;
    .param p1    # Lcom/transsion/playercommon/data/CloudHistoryRequestDataForDelete;
        .annotation runtime Lgg0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/playercommon/data/CloudHistoryRequestDataForDelete;",
            ")",
            "Lmc7<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lto4;
        value = {
            "g:s"
        }
    .end annotation

    .annotation runtime Lwy9;
    .end annotation

    .annotation runtime Lzu7;
        value = "/visha/api/cloud-storage/delete-play-record"
    .end annotation
.end method

.method public abstract getAdvertise(J)Lmc7;
    .param p1    # J
        .annotation runtime Lup3;
            value = "region_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lmc7<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Lcom/transsion/dbdata/beans/NewFeatureAdvertise;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lwy9;
    .end annotation

    .annotation runtime Lz34;
    .end annotation

    .annotation runtime Lzu7;
        value = "/visha/api/advertising/get"
    .end annotation
.end method

.method public abstract getAllLayout(JLjava/lang/String;)Lmc7;
    .param p1    # J
        .annotation runtime Lwk8;
            value = "region_id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Loo4;
            value = "dataVersion"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Lmc7<",
            "Lgu8<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Lcom/transsion/dbdata/beans/appconfig/AllLayoutBean;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/api/config/layout/get"
    .end annotation

    .annotation runtime Lto4;
        value = {
            "g:s"
        }
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract getBookmarks(J)Lmc7;
    .param p1    # J
        .annotation runtime Lwk8;
            value = "region_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lmc7<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/api/sniff/website/"
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract getBtConfig(J)Lmc7;
    .param p1    # J
        .annotation runtime Lwk8;
            value = "region_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lmc7<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Lcom/transsion/dbdata/beans/sniff/BtConfigBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/api/bt-config"
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract getCountryInfo()Ljq0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljq0<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Lcom/transsion/dbdata/beans/CountryInfoBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/api/config/ip/info"
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract getDownloadMain(II)Lmc7;
    .param p1    # I
        .annotation runtime Lwk8;
            value = "region_id"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lwk8;
            value = "channel"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lmc7<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Lcom/transsion/dbdata/beans/sniff/DownloadMain;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/api/sniff/v2/website"
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract getDownloadMain(J)Lmc7;
    .param p1    # J
        .annotation runtime Lwk8;
            value = "region_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lmc7<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/api/sniff/website/"
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract getMICollectAdd(Lcom/transsion/playercommon/data/MIMediaLibraryCollectAddRequest;)Lmc7;
    .param p1    # Lcom/transsion/playercommon/data/MIMediaLibraryCollectAddRequest;
        .annotation runtime Lgg0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/playercommon/data/MIMediaLibraryCollectAddRequest;",
            ")",
            "Lmc7<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryCollectAdd;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lwy9;
    .end annotation

    .annotation runtime Lzu7;
        value = "/visha/api/mediaUserCollect/add"
    .end annotation
.end method

.method public abstract getMICollectCancel(Lcom/transsion/playercommon/data/MIMediaLibraryCollectCancelRequest;)Lmc7;
    .param p1    # Lcom/transsion/playercommon/data/MIMediaLibraryCollectCancelRequest;
        .annotation runtime Lgg0;
        .end annotation
    .end param
    .annotation runtime Lbv7;
        value = "/visha/api/mediaUserCollect/cancel"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/playercommon/data/MIMediaLibraryCollectCancelRequest;",
            ")",
            "Lmc7<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryCollectCancel;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract getMIDataList(II)Lmc7;
    .param p1    # I
        .annotation runtime Lwk8;
            value = "pageNo"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lwk8;
            value = "pageSize"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lmc7<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/api/mediaLibrary/dataList"
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract getMIPlayInfo(Ljava/lang/String;)Lmc7;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lwk8;
            value = "videoId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lmc7<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/api/mediaLibrary/videoDataUrl"
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract getMIVideoDataList(Ljava/lang/String;II)Lmc7;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lwk8;
            value = "mediaLibraryId"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lwk8;
            value = "pageNo"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lwk8;
            value = "pageSize"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lmc7<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/api/mediaLibrary/videoDataList"
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract getOutJump(I)Lmc7;
    .param p1    # I
        .annotation runtime Lwk8;
            value = "region_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmc7<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Lcom/transsion/dbdata/beans/appconfig/JumpBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/api/external-jump/get"
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract getRecentPlayDataList(IIZ)Lmc7;
    .param p1    # I
        .annotation runtime Lwk8;
            value = "pageNo"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lwk8;
            value = "pageSize"
        .end annotation
    .end param
    .param p3    # Z
        .annotation runtime Lwk8;
            value = "mediaLibraryFlag"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)",
            "Lmc7<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/api/recentPlay/dataList"
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract getRecommendVideo(I)Lmc7;
    .param p1    # I
        .annotation runtime Lwk8;
            value = "region_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmc7<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Lcom/transsion/dbdata/beans/DownloadVideoRecommend;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/api/content-recommend/get"
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract getRemoteLyrics(Ljava/lang/String;Ljava/lang/String;)Lmc7;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lwk8;
            value = "title"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lwk8;
            value = "author"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lmc7<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Lcom/transsion/dbdata/beans/LyricSearchData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/api/search/lyric"
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract getSearchData(Ljava/lang/String;Ljava/lang/Boolean;II)Lmc7;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lwk8;
            value = "searchName"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation runtime Lwk8;
            value = "mediaLibraryFlag"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lwk8;
            value = "pageNo"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lwk8;
            value = "pageSize"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "II)",
            "Lmc7<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/cloud/SearchResponseData;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/api/search/mediaLibrary/search"
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract getSearchKeys()Lmc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmc7<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Lcom/transsion/dbdata/beans/sniff/SearchKey;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/api/sniff/key-word"
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract getSkins(II)Lmc7;
    .param p1    # I
        .annotation runtime Lwk8;
            value = "page_no"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lwk8;
            value = "page_size"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lmc7<",
            "Lgu8<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/SkinsMenu;",
            ">;>;>;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/api/theme/skin/list"
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract getStartAd(J)Lmc7;
    .param p1    # J
        .annotation runtime Lwk8;
            value = "region_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lmc7<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Lcom/transsion/dbdata/beans/sniff/StartAdGuide;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/api/launch-screen/get"
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract getUserCollectDataList(II)Lmc7;
    .param p1    # I
        .annotation runtime Lwk8;
            value = "pageNo"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lwk8;
            value = "pageSize"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lmc7<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/api/mediaUserCollect/frontDataList"
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract getUserInfo(Ljava/lang/String;)Lmc7;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lwk8;
            value = "language"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lmc7<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/api/pay/visha-vip/get"
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract getVideoList(Lcom/transsion/playercommon/data/CloudRequestData;)Lmc7;
    .param p1    # Lcom/transsion/playercommon/data/CloudRequestData;
        .annotation runtime Lgg0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/playercommon/data/CloudRequestData;",
            ")",
            "Lmc7<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Lcom/transsion/dbdata/beans/CloudResponseModel;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lwy9;
    .end annotation

    .annotation runtime Lzu7;
        value = "/visha/api/cloud-storage/get-video-list"
    .end annotation
.end method

.method public abstract getVishaAds(J)Lmc7;
    .param p1    # J
        .annotation runtime Lwk8;
            value = "region_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lmc7<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Lcom/transsion/dbdata/beans/adsbean/AdsDataBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/api/advertising/space/get"
    .end annotation

    .annotation runtime Lto4;
        value = {
            "g:s"
        }
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract getVishaToken()Lmc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmc7<",
            "Lgu8<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Lcom/transsion/dbdata/beans/VishaOauthData;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/oauth/token"
    .end annotation

    .annotation runtime Lto4;
        value = {
            "g:s"
        }
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract getYoutubeWords(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmc7;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lwk8;
            value = "hl"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lwk8;
            value = "gl"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lwk8;
            encoded = true
            value = "word"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lmc7<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/api/youtube/suggest"
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract getYtbConfig(J)Lmc7;
    .param p1    # J
        .annotation runtime Lwk8;
            value = "region_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lmc7<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Lcom/transsion/dbdata/beans/appconfig/YoutubeConfigBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/api/local-video-play-control"
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract logout()Lmc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmc7<",
            "Lgu8<",
            "Lcom/transsion/retrofit/reponse/BaseResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/oauth/token/logout"
    .end annotation

    .annotation runtime Lto4;
        value = {
            "g:s"
        }
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract markRecommend(Ljava/lang/String;)Lmc7;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lgg0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lmc7<",
            "Lcom/transsion/retrofit/reponse/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lwy9;
    .end annotation

    .annotation runtime Lzu7;
        value = "https://test-ccdata.transsion-os.com/buried-point"
    .end annotation
.end method

.method public abstract refreshVishaToken()Lmc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmc7<",
            "Lgu8<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Lcom/transsion/dbdata/beans/VishaOauthData;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/oauth/token/refresh"
    .end annotation

    .annotation runtime Lto4;
        value = {
            "g:s"
        }
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract searchWord(Ljava/lang/String;Ljava/lang/String;)Lmc7;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lwk8;
            value = "word"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lwk8;
            value = "lang"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lmc7<",
            "Lgu8<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/api/search/word"
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract submitPlayRecord(Lcom/transsion/playercommon/data/CloudHistoryRequestData;)Lmc7;
    .param p1    # Lcom/transsion/playercommon/data/CloudHistoryRequestData;
        .annotation runtime Lgg0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/playercommon/data/CloudHistoryRequestData;",
            ")",
            "Lmc7<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lto4;
        value = {
            "g:s"
        }
    .end annotation

    .annotation runtime Lwy9;
    .end annotation

    .annotation runtime Lzu7;
        value = "/visha/api/cloud-storage/submit-play-record"
    .end annotation
.end method

.method public abstract unCollect([J)Lmc7;
    .param p1    # [J
        .annotation runtime Lgg0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Lmc7<",
            "Lcom/transsion/retrofit/reponse/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lwy9;
    .end annotation

    .annotation runtime Lzu7;
        value = "/visha/api/video/user/collect/remove"
    .end annotation
.end method
