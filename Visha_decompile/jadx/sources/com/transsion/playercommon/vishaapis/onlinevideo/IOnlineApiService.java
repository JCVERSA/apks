package com.transsion.playercommon.vishaapis.onlinevideo;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.dbdata.beans.onlinevideo.AiRecommend;
import com.transsion.dbdata.beans.onlinevideo.CollectItem;
import com.transsion.dbdata.beans.onlinevideo.GetVideoByTag;
import com.transsion.dbdata.beans.onlinevideo.HistoryBean;
import com.transsion.dbdata.beans.onlinevideo.HistoryUserBean;
import com.transsion.dbdata.beans.onlinevideo.HotSearchBean;
import com.transsion.dbdata.beans.onlinevideo.MediaBean;
import com.transsion.dbdata.beans.onlinevideo.PromotionBean;
import com.transsion.dbdata.beans.onlinevideo.SubscribeDetail;
import com.transsion.dbdata.beans.onlinevideo.SuperiorRecommend;
import com.transsion.dbdata.beans.onlinevideo.TopicBean;
import com.transsion.dbdata.beans.onlinevideo.TopicDetailBean;
import com.transsion.dbdata.beans.onlinevideo.TranVideoDetail;
import com.transsion.dbdata.beans.onlinevideo.VideoInfo;
import com.transsion.dbdata.beans.onlinevideo.VideoTag;
import com.transsion.dbdata.beans.onlinevideo.VipPayResult;
import com.transsion.dbdata.beans.onlinevideo.VkRecommendBean;
import com.transsion.dbdata.beans.onlinevideo.YoutubeData;
import com.transsion.playercommon.data.OrderCallbackRequest;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.transsion.retrofit.reponse.BaseResponse;
import defpackage.gg0;
import defpackage.gu8;
import defpackage.hb0;
import defpackage.jq0;
import defpackage.mc7;
import defpackage.q94;
import defpackage.to4;
import defpackage.up3;
import defpackage.wk8;
import defpackage.wy9;
import defpackage.z34;
import defpackage.zu7;
import java.util.List;

public interface IOnlineApiService {
    @wy9
    @zu7(OnlineVideoApiConfig.API.API_OTT_COLLECT)
    mc7<BaseResponse> collect(@gg0 CollectItem[] collectItemArr);

    @wy9
    @zu7(OnlineVideoApiConfig.API.API_POST_ENSURE_VIP_PAY_OK)
    mc7<BaseResponse<VipPayResult>> confirmPayOk(@gg0 OrderCallbackRequest orderCallbackRequest);

    @q94(OnlineVideoApiConfig.API.ONLINE_RECOMMEND)
    @wy9
    mc7<BaseResponse<AiRecommend>> getAlgorithmRecommend(@wk8("topic_id") long j, @wk8("channel_id") long j2, @wk8("count") int i, @wk8("content_source") String str, @wk8("biz_group_id") int i2);

    @q94(OnlineVideoApiConfig.API.API_OTT_FARVORITE_LIST)
    @wy9
    mc7<BaseResponse<List<CollectItem>>> getCollectList(@wk8("page_no") int i);

    @q94(OnlineVideoApiConfig.API.API_HISTORY_EMPTY_RECOMMEND)
    @wy9
    @to4({GslbInterceptor.HEADER_GSLB})
    mc7<gu8<BaseResponse<List<SuperiorRecommend>>>> getHistoryRecommend();

    @q94(OnlineVideoApiConfig.API.API_VISHA_HOT_SEARCH)
    @wy9
    mc7<gu8<BaseResponse<List<HotSearchBean>>>> getHotSearch(@wk8("pageNum") int i, @wk8("lang") String str, @wk8("pageSize") int i2);

    @q94(OnlineVideoApiConfig.API.API_GET_BY_TOPIC)
    @wy9
    mc7<BaseResponse<TopicDetailBean>> getMediasByTopic(@wk8("topic_id") long j, @wk8("page_no") int i, @wk8("page_size") int i2);

    @q94(OnlineVideoApiConfig.API.API_GET_PLAYHISTORY)
    @wy9
    jq0<BaseResponse<List<HistoryUserBean>>> getPlayHistory();

    @q94(OnlineVideoApiConfig.API.API_VISHA_PROMOTIONS)
    @wy9
    @to4({GslbInterceptor.HEADER_GSLB})
    mc7<BaseResponse<List<PromotionBean>>> getPromotions(@wk8(hb0.KEY_NAME_REGION_ID) long j);

    @q94(OnlineVideoApiConfig.API.API_GET_RECOMMEND)
    @wy9
    mc7<BaseResponse<List<MediaBean>>> getRecommend(@wk8("video_id") long j, @wk8("paySupport") int i);

    @q94(OnlineVideoApiConfig.API.API_GET_SHORT_VIDEO_SKETCH)
    @wy9
    mc7<BaseResponse<List<MediaBean>>> getShortVideoSketch(@wk8("video_id") String str, @wk8("page_no") int i, @wk8("page_size") int i2);

    @q94(OnlineVideoApiConfig.API.API_SUBSCRIBE_DETAIL)
    @wy9
    mc7<BaseResponse<SubscribeDetail>> getSubscribeDetail(@wk8("vip_id") long j);

    @q94(OnlineVideoApiConfig.API.API_GET_BY_CHANNEL)
    @wy9
    @to4({GslbInterceptor.HEADER_GSLB})
    mc7<gu8<BaseResponse<List<TopicBean>>>> getTopicByChannel(@wk8(hb0.KEY_NAME_REGION_ID) long j, @wk8("channel_id") long j2, @wk8("bottom_id") long j3, @wk8("page_no") int i, @wk8("page_size") int i2);

    @wy9
    @to4({GslbInterceptor.HEADER_GSLB})
    @zu7(OnlineVideoApiConfig.API.API_GET_VIDEO_BY_TAG)
    mc7<BaseResponse<List<MediaBean>>> getVideoByTag(@gg0 GetVideoByTag getVideoByTag);

    @q94(OnlineVideoApiConfig.API.API_GET_BY_MEDIA)
    @wy9
    mc7<BaseResponse<TranVideoDetail>> getVideoInfo(@wk8("video_id") String str);

    @q94(OnlineVideoApiConfig.API.API_GET_TAG)
    @wy9
    @to4({GslbInterceptor.HEADER_GSLB})
    mc7<BaseResponse<List<List<VideoTag>>>> getVideoTag();

    @q94(OnlineVideoApiConfig.API.API_VISHA_VK_RECOMMEND)
    @wy9
    @to4({GslbInterceptor.HEADER_GSLB})
    mc7<BaseResponse<List<VkRecommendBean>>> getVkRecommend(@wk8("optional-categories") String str, @wk8("page_no") int i, @wk8("page_size") int i2, @wk8(TtmlNode.ATTR_ID) String str2);

    @wy9
    @z34
    @zu7(OnlineVideoApiConfig.API.API_VISHA_YOUTUBE_HOT)
    mc7<BaseResponse<List<YoutubeData.Results>>> getYoutubeHotRecommend(@up3("hl") String str, @up3("gl") String str2);

    @wy9
    @z34
    @zu7(OnlineVideoApiConfig.API.API_VISHA_YOUTUBE_RECOMMEND)
    mc7<BaseResponse<YoutubeData>> getYoutubeRecommend(@up3("videoSourceId") String str, @up3("hl") String str2, @up3("gl") String str3);

    @q94(OnlineVideoApiConfig.API.API_VISHA_VIDEO_SEARCH)
    @wy9
    mc7<gu8<BaseResponse<List<VideoInfo>>>> searchVideo(@wk8(encoded = true, value = "title") String str, @wk8("lang") String str2, @wk8("countryCode") String str3, @wk8("pageNum") int i, @wk8("pageSize") int i2);

    @wy9
    @z34
    @zu7(OnlineVideoApiConfig.API.API_VISHA_YOUTUBE_SEARCH)
    mc7<BaseResponse<YoutubeData>> searchYoutubeByKey(@up3("hl") String str, @up3("gl") String str2, @up3(encoded = true, value = "title") String str3);

    @wy9
    @zu7(OnlineVideoApiConfig.API.API_POST_PLAYHISTORY)
    jq0<BaseResponse> uploadPlayHistory(@gg0 List<HistoryBean> list);

    @wy9
    @zu7(OnlineVideoApiConfig.API.API_POST_PLAYHISTORY)
    jq0<BaseResponse> uploadPlayHistory(@gg0 HistoryUserBean[] historyUserBeanArr);
}
