.class public interface abstract Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract collect([Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;)Lmc7;
    .param p1    # [Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;
        .annotation runtime Lgg0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;",
            ")",
            "Lmc7<",
            "Lcom/transsion/retrofit/reponse/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lwy9;
    .end annotation

    .annotation runtime Lzu7;
        value = "/visha/api/video/user/collect/sync"
    .end annotation
.end method

.method public abstract confirmPayOk(Lcom/transsion/playercommon/data/OrderCallbackRequest;)Lmc7;
    .param p1    # Lcom/transsion/playercommon/data/OrderCallbackRequest;
        .annotation runtime Lgg0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/playercommon/data/OrderCallbackRequest;",
            ")",
            "Lmc7<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Lcom/transsion/dbdata/beans/onlinevideo/VipPayResult;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lwy9;
    .end annotation

    .annotation runtime Lzu7;
        value = "/visha/api/pay/order/trade/confirmations"
    .end annotation
.end method

.method public abstract getAlgorithmRecommend(JJILjava/lang/String;I)Lmc7;
    .param p1    # J
        .annotation runtime Lwk8;
            value = "topic_id"
        .end annotation
    .end param
    .param p3    # J
        .annotation runtime Lwk8;
            value = "channel_id"
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Lwk8;
            value = "count"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lwk8;
            value = "content_source"
        .end annotation
    .end param
    .param p7    # I
        .annotation runtime Lwk8;
            value = "biz_group_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI",
            "Ljava/lang/String;",
            "I)",
            "Lmc7<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Lcom/transsion/dbdata/beans/onlinevideo/AiRecommend;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/api/video/algorithm/recommend/list"
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract getCollectList(I)Lmc7;
    .param p1    # I
        .annotation runtime Lwk8;
            value = "page_no"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmc7<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/api/video/user/collect/list"
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract getHistoryRecommend()Lmc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmc7<",
            "Lgu8<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;",
            ">;>;>;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/api/video/superior/list"
    .end annotation

    .annotation runtime Lto4;
        value = {
            "g:s"
        }
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract getHotSearch(ILjava/lang/String;I)Lmc7;
    .param p1    # I
        .annotation runtime Lwk8;
            value = "pageNum"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lwk8;
            value = "lang"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lwk8;
            value = "pageSize"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)",
            "Lmc7<",
            "Lgu8<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/HotSearchBean;",
            ">;>;>;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/api/search/hot-search"
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract getMediasByTopic(JII)Lmc7;
    .param p1    # J
        .annotation runtime Lwk8;
            value = "topic_id"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lwk8;
            value = "page_no"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lwk8;
            value = "page_size"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII)",
            "Lmc7<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Lcom/transsion/dbdata/beans/onlinevideo/TopicDetailBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/api/topic/get"
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract getPlayHistory()Ljq0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljq0<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/api/video/user/history/list"
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract getPromotions(J)Lmc7;
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
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/PromotionBean;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/api/vip-operate-action/list"
    .end annotation

    .annotation runtime Lto4;
        value = {
            "g:s"
        }
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract getRecommend(JI)Lmc7;
    .param p1    # J
        .annotation runtime Lwk8;
            value = "video_id"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lwk8;
            value = "paySupport"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Lmc7<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/api/video/recommend/list"
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract getShortVideoSketch(Ljava/lang/String;II)Lmc7;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lwk8;
            value = "video_id"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lwk8;
            value = "page_no"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lwk8;
            value = "page_size"
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
            "Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/api/video/sketch/get"
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract getSubscribeDetail(J)Lmc7;
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
            "Lcom/transsion/dbdata/beans/onlinevideo/SubscribeDetail;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/api/pay/visha-vip/renewal-vip-info"
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract getTopicByChannel(JJJII)Lmc7;
    .param p1    # J
        .annotation runtime Lwk8;
            value = "region_id"
        .end annotation
    .end param
    .param p3    # J
        .annotation runtime Lwk8;
            value = "channel_id"
        .end annotation
    .end param
    .param p5    # J
        .annotation runtime Lwk8;
            value = "bottom_id"
        .end annotation
    .end param
    .param p7    # I
        .annotation runtime Lwk8;
            value = "page_no"
        .end annotation
    .end param
    .param p8    # I
        .annotation runtime Lwk8;
            value = "page_size"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJII)",
            "Lmc7<",
            "Lgu8<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;",
            ">;>;>;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/api/topic/get-by-channel"
    .end annotation

    .annotation runtime Lto4;
        value = {
            "g:s"
        }
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract getVideoByTag(Lcom/transsion/dbdata/beans/onlinevideo/GetVideoByTag;)Lmc7;
    .param p1    # Lcom/transsion/dbdata/beans/onlinevideo/GetVideoByTag;
        .annotation runtime Lgg0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/dbdata/beans/onlinevideo/GetVideoByTag;",
            ")",
            "Lmc7<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;",
            ">;>;>;"
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
        value = "/visha/api/video/list"
    .end annotation
.end method

.method public abstract getVideoInfo(Ljava/lang/String;)Lmc7;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lwk8;
            value = "video_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lmc7<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/api/video/play"
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract getVideoTag()Lmc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmc7<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;",
            ">;>;>;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/api/tag/list"
    .end annotation

    .annotation runtime Lto4;
        value = {
            "g:s"
        }
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract getVkRecommend(Ljava/lang/String;IILjava/lang/String;)Lmc7;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lwk8;
            value = "optional-categories"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lwk8;
            value = "page_no"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lwk8;
            value = "page_size"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lwk8;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Lmc7<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/VkRecommendBean;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/api/vk_video/detail_page/recommend"
    .end annotation

    .annotation runtime Lto4;
        value = {
            "g:s"
        }
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract getYoutubeHotRecommend(Ljava/lang/String;Ljava/lang/String;)Lmc7;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lup3;
            value = "hl"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lup3;
            value = "gl"
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
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData$Results;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lwy9;
    .end annotation

    .annotation runtime Lz34;
    .end annotation

    .annotation runtime Lzu7;
        value = "/visha/api/youtube/getMostPopular"
    .end annotation
.end method

.method public abstract getYoutubeRecommend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmc7;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lup3;
            value = "videoSourceId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lup3;
            value = "hl"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lup3;
            value = "gl"
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
            "Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lwy9;
    .end annotation

    .annotation runtime Lz34;
    .end annotation

    .annotation runtime Lzu7;
        value = "/visha/api/youtube/getYoutubeRecommend"
    .end annotation
.end method

.method public abstract searchVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lmc7;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lwk8;
            encoded = true
            value = "title"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lwk8;
            value = "lang"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lwk8;
            value = "countryCode"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lwk8;
            value = "pageNum"
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Lwk8;
            value = "pageSize"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Lmc7<",
            "Lgu8<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;",
            ">;>;>;>;"
        }
    .end annotation

    .annotation runtime Lq94;
        value = "/visha/api/search/video"
    .end annotation

    .annotation runtime Lwy9;
    .end annotation
.end method

.method public abstract searchYoutubeByKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmc7;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lup3;
            value = "hl"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lup3;
            value = "gl"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lup3;
            encoded = true
            value = "title"
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
            "Lcom/transsion/dbdata/beans/onlinevideo/YoutubeData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lwy9;
    .end annotation

    .annotation runtime Lz34;
    .end annotation

    .annotation runtime Lzu7;
        value = "/visha/api/youtube/search"
    .end annotation
.end method

.method public abstract uploadPlayHistory(Ljava/util/List;)Ljq0;
    .param p1    # Ljava/util/List;
        .annotation runtime Lgg0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;",
            ">;)",
            "Ljq0<",
            "Lcom/transsion/retrofit/reponse/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lwy9;
    .end annotation

    .annotation runtime Lzu7;
        value = "/visha/api/video/user/history/sync"
    .end annotation
.end method

.method public abstract uploadPlayHistory([Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;)Ljq0;
    .param p1    # [Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;
        .annotation runtime Lgg0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;",
            ")",
            "Ljq0<",
            "Lcom/transsion/retrofit/reponse/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lwy9;
    .end annotation

    .annotation runtime Lzu7;
        value = "/visha/api/video/user/history/sync"
    .end annotation
.end method
