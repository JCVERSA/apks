package com.transsion.playercommon.vishaapis.onlinevideo;

import com.transsion.dbdata.beans.CloudResponseModel;
import com.transsion.dbdata.beans.CountryInfoBean;
import com.transsion.dbdata.beans.DownloadVideoRecommend;
import com.transsion.dbdata.beans.LyricSearchData;
import com.transsion.dbdata.beans.NewFeatureAdvertise;
import com.transsion.dbdata.beans.SkinsMenu;
import com.transsion.dbdata.beans.VishaOauthData;
import com.transsion.dbdata.beans.adsbean.AdsDataBean;
import com.transsion.dbdata.beans.appconfig.AllLayoutBean;
import com.transsion.dbdata.beans.appconfig.JumpBean;
import com.transsion.dbdata.beans.appconfig.YoutubeConfigBean;
import com.transsion.dbdata.beans.cloud.SearchResponseData;
import com.transsion.dbdata.beans.mimedia.MIMediaLibraryCollectAdd;
import com.transsion.dbdata.beans.mimedia.MIMediaLibraryCollectCancel;
import com.transsion.dbdata.beans.mimedia.MIMediaLibraryData;
import com.transsion.dbdata.beans.mimedia.MIMediaVideoPlayInfo;
import com.transsion.dbdata.beans.mimedia.RecentVideoShowData;
import com.transsion.dbdata.beans.onlinevideo.UserInfoBean;
import com.transsion.dbdata.beans.sniff.BookmarkRequest;
import com.transsion.dbdata.beans.sniff.BtConfigBean;
import com.transsion.dbdata.beans.sniff.DownloadMain;
import com.transsion.dbdata.beans.sniff.SearchKey;
import com.transsion.dbdata.beans.sniff.StartAdGuide;
import com.transsion.playercommon.data.CloudHistoryRequestData;
import com.transsion.playercommon.data.CloudHistoryRequestDataForDelete;
import com.transsion.playercommon.data.CloudRequestData;
import com.transsion.playercommon.data.MIMediaLibraryCollectAddRequest;
import com.transsion.playercommon.data.MIMediaLibraryCollectCancelRequest;
import com.transsion.playercommon.data.OrderCancelCallbackRequest;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.transsion.retrofit.reponse.BaseResponse;
import defpackage.bv7;
import defpackage.gg0;
import defpackage.gu8;
import defpackage.hb0;
import defpackage.jq0;
import defpackage.mc7;
import defpackage.oo4;
import defpackage.q94;
import defpackage.to4;
import defpackage.up3;
import defpackage.wk8;
import defpackage.wy9;
import defpackage.z34;
import defpackage.zu7;
import java.util.List;

public interface IOnlineVideoApiService {
    @q94(OnlineVideoApiConfig.API.API_CANCEL_SUBSCRIBE)
    @wy9
    mc7<BaseResponse<Void>> cancelSubscribe(@wk8("vip_id") long j);

    @q94(OnlineVideoApiConfig.API.API_CHECK_TOKEN)
    @wy9
    mc7<BaseResponse> checkToken();

    @wy9
    @zu7(OnlineVideoApiConfig.API.API_POST_ENSURE_VIP_PAY_CANCEL)
    mc7<BaseResponse<Void>> confirmPayCancel(@gg0 OrderCancelCallbackRequest orderCancelCallbackRequest);

    @wy9
    @zu7(OnlineVideoApiConfig.API.API_POST_DELETEHISTORY)
    jq0<BaseResponse> deletePlayHistory(@gg0 long[] jArr);

    @wy9
    @to4({GslbInterceptor.HEADER_GSLB})
    @zu7(OnlineVideoApiConfig.API.API_DELETE_PLAY_RECORD)
    mc7<BaseResponse<Void>> deletePlayRecord(@gg0 CloudHistoryRequestDataForDelete cloudHistoryRequestDataForDelete);

    @wy9
    @z34
    @zu7(OnlineVideoApiConfig.API.API_GET_ADVERTISE)
    mc7<BaseResponse<NewFeatureAdvertise>> getAdvertise(@up3(hb0.KEY_NAME_REGION_ID) long j);

    @q94(OnlineVideoApiConfig.API.API_GET_LAYOUT)
    @wy9
    @to4({GslbInterceptor.HEADER_GSLB})
    mc7<gu8<BaseResponse<AllLayoutBean>>> getAllLayout(@wk8(hb0.KEY_NAME_REGION_ID) long j, @oo4("dataVersion") String str);

    @q94("/visha/api/sniff/website/")
    @wy9
    mc7<BaseResponse<BookmarkRequest>> getBookmarks(@wk8(hb0.KEY_NAME_REGION_ID) long j);

    @q94(OnlineVideoApiConfig.API.API_BT_CONFIG)
    @wy9
    mc7<BaseResponse<BtConfigBean>> getBtConfig(@wk8(hb0.KEY_NAME_REGION_ID) long j);

    @q94(OnlineVideoApiConfig.API.API_APP_CONFIG_GET_IP_INFO)
    @wy9
    jq0<BaseResponse<CountryInfoBean>> getCountryInfo();

    @q94(OnlineVideoApiConfig.API.API_DOWNLOAD_MAIN_RECOMMEND_NEW)
    @wy9
    mc7<BaseResponse<DownloadMain>> getDownloadMain(@wk8(hb0.KEY_NAME_REGION_ID) int i, @wk8("channel") int i2);

    @q94("/visha/api/sniff/website/")
    @wy9
    mc7<BaseResponse<BookmarkRequest>> getDownloadMain(@wk8(hb0.KEY_NAME_REGION_ID) long j);

    @wy9
    @zu7(OnlineVideoApiConfig.API.API_MI_COLLECT_ADD)
    mc7<BaseResponse<MIMediaLibraryCollectAdd>> getMICollectAdd(@gg0 MIMediaLibraryCollectAddRequest mIMediaLibraryCollectAddRequest);

    @bv7(OnlineVideoApiConfig.API.API_MI_COLLECT_CANCEL)
    @wy9
    mc7<BaseResponse<MIMediaLibraryCollectCancel>> getMICollectCancel(@gg0 MIMediaLibraryCollectCancelRequest mIMediaLibraryCollectCancelRequest);

    @q94(OnlineVideoApiConfig.API.API_MI_DATA_LIST)
    @wy9
    mc7<BaseResponse<List<MIMediaLibraryData>>> getMIDataList(@wk8("pageNo") int i, @wk8("pageSize") int i2);

    @q94(OnlineVideoApiConfig.API.API_MI_PLAY_VIDEO_DATA)
    @wy9
    mc7<BaseResponse<MIMediaVideoPlayInfo>> getMIPlayInfo(@wk8("videoId") String str);

    @q94(OnlineVideoApiConfig.API.API_MI_VIDEO_DATA_LIST)
    @wy9
    mc7<BaseResponse<List<MIMediaLibraryData>>> getMIVideoDataList(@wk8("mediaLibraryId") String str, @wk8("pageNo") int i, @wk8("pageSize") int i2);

    @q94(OnlineVideoApiConfig.API.API_VIDEO_OUT_JUMP)
    @wy9
    mc7<BaseResponse<JumpBean>> getOutJump(@wk8(hb0.KEY_NAME_REGION_ID) int i);

    @q94(OnlineVideoApiConfig.API.API_MI_RECENT_PLAY_DATA_LIST)
    @wy9
    mc7<BaseResponse<List<RecentVideoShowData>>> getRecentPlayDataList(@wk8("pageNo") int i, @wk8("pageSize") int i2, @wk8("mediaLibraryFlag") boolean z);

    @q94(OnlineVideoApiConfig.API.API_VIDEO_PLAY_END_RECOMMEND)
    @wy9
    mc7<BaseResponse<DownloadVideoRecommend>> getRecommendVideo(@wk8(hb0.KEY_NAME_REGION_ID) int i);

    @q94(OnlineVideoApiConfig.API.API_VISHA_SEARCH_LYRIC)
    @wy9
    mc7<BaseResponse<LyricSearchData>> getRemoteLyrics(@wk8("title") String str, @wk8("author") String str2);

    @q94(OnlineVideoApiConfig.API.API_CLOUD_SEARCH)
    @wy9
    mc7<BaseResponse<List<SearchResponseData>>> getSearchData(@wk8("searchName") String str, @wk8("mediaLibraryFlag") Boolean bool, @wk8("pageNo") int i, @wk8("pageSize") int i2);

    @q94(OnlineVideoApiConfig.API.API_GET_SEARCH_KEYS)
    @wy9
    mc7<BaseResponse<SearchKey>> getSearchKeys();

    @q94(OnlineVideoApiConfig.API.API_GET_SKINS)
    @wy9
    mc7<gu8<BaseResponse<List<SkinsMenu>>>> getSkins(@wk8("page_no") int i, @wk8("page_size") int i2);

    @q94(OnlineVideoApiConfig.API.API_GET_START_AD)
    @wy9
    mc7<BaseResponse<StartAdGuide>> getStartAd(@wk8(hb0.KEY_NAME_REGION_ID) long j);

    @q94(OnlineVideoApiConfig.API.API_MI_USER_COLLECT_DATA_LIST)
    @wy9
    mc7<BaseResponse<List<MIMediaLibraryData>>> getUserCollectDataList(@wk8("pageNo") int i, @wk8("pageSize") int i2);

    @q94(OnlineVideoApiConfig.API.API_GET_USER_INFO)
    @wy9
    mc7<BaseResponse<UserInfoBean>> getUserInfo(@wk8("language") String str);

    @wy9
    @zu7(OnlineVideoApiConfig.API.API_GET_VIDEO_LIST)
    mc7<BaseResponse<CloudResponseModel>> getVideoList(@gg0 CloudRequestData cloudRequestData);

    @q94(OnlineVideoApiConfig.API.API_GET_VISHA_ADS)
    @wy9
    @to4({GslbInterceptor.HEADER_GSLB})
    mc7<BaseResponse<AdsDataBean>> getVishaAds(@wk8(hb0.KEY_NAME_REGION_ID) long j);

    @q94(OnlineVideoApiConfig.API.API_GET_VISHA_OAUTH_TOKEN)
    @wy9
    @to4({GslbInterceptor.HEADER_GSLB})
    mc7<gu8<BaseResponse<VishaOauthData>>> getVishaToken();

    @q94(OnlineVideoApiConfig.API.API_VISHA_YOUTUBE_WORD_SEARCH)
    @wy9
    mc7<BaseResponse<List<String>>> getYoutubeWords(@wk8("hl") String str, @wk8("gl") String str2, @wk8(encoded = true, value = "word") String str3);

    @q94(OnlineVideoApiConfig.API.API_GET_YTB_CONFIG)
    @wy9
    mc7<BaseResponse<YoutubeConfigBean>> getYtbConfig(@wk8(hb0.KEY_NAME_REGION_ID) long j);

    @q94(OnlineVideoApiConfig.API.API_VISHA_LOGOUT)
    @wy9
    @to4({GslbInterceptor.HEADER_GSLB})
    mc7<gu8<BaseResponse>> logout();

    @wy9
    @zu7("https://test-ccdata.transsion-os.com/buried-point")
    mc7<BaseResponse> markRecommend(@gg0 String str);

    @q94(OnlineVideoApiConfig.API.API_GET_REFRESH_VISHA_TOKEN)
    @wy9
    @to4({GslbInterceptor.HEADER_GSLB})
    mc7<gu8<BaseResponse<VishaOauthData>>> refreshVishaToken();

    @q94(OnlineVideoApiConfig.API.API_VISHA_WORD_SEARCH)
    @wy9
    mc7<gu8<BaseResponse<List<String>>>> searchWord(@wk8("word") String str, @wk8("lang") String str2);

    @wy9
    @to4({GslbInterceptor.HEADER_GSLB})
    @zu7(OnlineVideoApiConfig.API.API_SUBMIT_PLAY_RECORD)
    mc7<BaseResponse<Void>> submitPlayRecord(@gg0 CloudHistoryRequestData cloudHistoryRequestData);

    @wy9
    @zu7(OnlineVideoApiConfig.API.API_OTT_COLLECT_REMOVE)
    mc7<BaseResponse> unCollect(@gg0 long[] jArr);
}
