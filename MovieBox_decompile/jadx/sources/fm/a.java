package fm;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.member.bean.PointsHistoryData;
import com.transsion.member.bean.RedeemResult;
import com.transsion.member.bean.request.InviteUserShareInfoReq;
import com.transsion.member.bean.request.MemberInviteUserShareInfo;
import com.transsion.member.bean.request.MemberPromoCodeReq;
import com.transsion.member.bean.request.MemberPromoCodeRes;
import com.transsion.memberapi.GlobalTaskInfo;
import com.transsion.memberapi.MemberAdTaskInfo;
import com.transsion.memberapi.MemberCheckResult;
import com.transsion.memberapi.MemberDetail;
import com.transsion.memberapi.MemberTaskInfo;
import com.transsion.memberapi.MemberTaskInviteRewards;
import com.transsion.memberapi.MemberTaskRewardInfo;
import com.transsion.memberapi.MemberTaskSubmitCheckInRes;
import com.transsion.memberapi.SkuData;
import com.transsion.memberapi.TaskRewards;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import io.reactivex.rxjava3.core.j;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;

@Metadata(d1 = {"\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J'\u0010\u0007\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00050\u00042\b\b\u0003\u0010\u0003\u001a\u00020\u0002H'¢\u0006\u0004\b\u0007\u0010\bJ1\u0010\f\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u00050\u00042\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0003\u0010\n\u001a\u00020\tH'¢\u0006\u0004\b\f\u0010\rJ1\u0010\u0010\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u00050\u00042\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\n\u001a\u00020\u000eH'¢\u0006\u0004\b\u0010\u0010\u0011J%\u0010\u0013\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\u00050\u00042\b\b\u0003\u0010\u0003\u001a\u00020\u0002H'¢\u0006\u0004\b\u0013\u0010\bJ1\u0010\u0016\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u00050\u00042\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0003\u0010\u0014\u001a\u00020\u0002H'¢\u0006\u0004\b\u0016\u0010\u0017J;\u0010\u001c\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\u00050\u00042\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0019\u001a\u00020\u00182\b\b\u0001\u0010\u001a\u001a\u00020\u0018H'¢\u0006\u0004\b\u001c\u0010\u001dJ1\u0010\u001f\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u00050\u00042\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\n\u001a\u00020\tH'¢\u0006\u0004\b\u001f\u0010\rJ1\u0010\"\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010!0\u00050\u00042\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\n\u001a\u00020 H'¢\u0006\u0004\b\"\u0010#J,\u0010%\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010$0\u00052\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\n\u001a\u00020\tH§@¢\u0006\u0004\b%\u0010&J'\u0010(\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010'0\u00050\u00042\b\b\u0003\u0010\u0003\u001a\u00020\u0002H'¢\u0006\u0004\b(\u0010\bJ1\u0010)\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00050\u00042\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\n\u001a\u00020\tH'¢\u0006\u0004\b)\u0010\rJ;\u0010-\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010,0\u00050\u00042\b\b\u0001\u0010*\u001a\u00020\u00022\b\b\u0003\u0010+\u001a\u00020\u00182\b\b\u0003\u0010\u0003\u001a\u00020\u0002H'¢\u0006\u0004\b-\u0010.J%\u00100\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020/0\u00050\u00042\b\b\u0003\u0010\u0003\u001a\u00020\u0002H'¢\u0006\u0004\b0\u0010\bJ,\u00102\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001010\u00052\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\n\u001a\u00020\tH§@¢\u0006\u0004\b2\u0010&J'\u00104\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u0001030\u00050\u00042\b\b\u0003\u0010\u0003\u001a\u00020\u0002H'¢\u0006\u0004\b4\u0010\b¨\u00065"}, d2 = {"Lfm/a;", "", "", "host", "Lio/reactivex/rxjava3/core/j;", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/memberapi/MemberTaskInfo;", "n", "(Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;", "Lokhttp3/RequestBody;", "request", "Lcom/transsion/memberapi/MemberTaskSubmitCheckInRes;", "f", "(Ljava/lang/String;Lokhttp3/RequestBody;)Lio/reactivex/rxjava3/core/j;", "Lcom/transsion/member/bean/request/MemberPromoCodeReq;", "Lcom/transsion/member/bean/request/MemberPromoCodeRes;", "i", "(Ljava/lang/String;Lcom/transsion/member/bean/request/MemberPromoCodeReq;)Lio/reactivex/rxjava3/core/j;", "Lcom/transsion/memberapi/MemberDetail;", CampaignEx.JSON_KEY_AD_K, "rewardId", "Lcom/transsion/memberapi/MemberTaskRewardInfo;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;", "", "lastId", "limit", "Lcom/transsion/memberapi/MemberTaskInviteRewards;", "c", "(Ljava/lang/String;II)Lio/reactivex/rxjava3/core/j;", "Lcom/transsion/memberapi/TaskRewards;", "j", "Lcom/transsion/member/bean/request/InviteUserShareInfoReq;", "Lcom/transsion/member/bean/request/MemberInviteUserShareInfo;", "e", "(Ljava/lang/String;Lcom/transsion/member/bean/request/InviteUserShareInfoReq;)Lio/reactivex/rxjava3/core/j;", "Lcom/transsion/memberapi/MemberCheckResult;", "m", "(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/transsion/memberapi/GlobalTaskInfo;", "o", "h", "pageNum", "pageSize", "Lcom/transsion/member/bean/PointsHistoryData;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/rxjava3/core/j;", "Lcom/transsion/memberapi/SkuData;", "g", "Lcom/transsion/member/bean/RedeemResult;", "a", "Lcom/transsion/memberapi/MemberAdTaskInfo;", "l", "Member_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface a {

    public static final class C0732a {
        public static j a(a aVar, String str, int i10, int i11, int i12, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fetchInviteUserRewards");
            }
            if ((i12 & 1) != 0) {
                str = gg.a.f61067a.a();
            }
            return aVar.c(str, i10, i11);
        }

        public static j b(a aVar, String str, InviteUserShareInfoReq inviteUserShareInfoReq, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fetchInviteUserShareInfo");
            }
            if ((i10 & 1) != 0) {
                str = gg.a.f61067a.a();
            }
            return aVar.e(str, inviteUserShareInfoReq);
        }

        public static j c(a aVar, String str, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fetchMemberDetail");
            }
            if ((i10 & 1) != 0) {
                str = gg.a.f61067a.a();
            }
            return aVar.k(str);
        }

        public static j d(a aVar, String str, int i10, String str2, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fetchPointsHistory");
            }
            if ((i11 & 2) != 0) {
                i10 = 20;
            }
            if ((i11 & 4) != 0) {
                str2 = gg.a.f61067a.a();
            }
            return aVar.b(str, i10, str2);
        }

        public static j e(a aVar, String str, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fetchSkuList");
            }
            if ((i10 & 1) != 0) {
                str = gg.a.f61067a.a();
            }
            return aVar.g(str);
        }

        public static j f(a aVar, String str, String str2, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: receiveRewards");
            }
            if ((i10 & 1) != 0) {
                str = gg.a.f61067a.a();
            }
            if ((i10 & 2) != 0) {
                str2 = "0";
            }
            return aVar.d(str, str2);
        }

        public static j g(a aVar, String str, MemberPromoCodeReq memberPromoCodeReq, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: submitPromoCode");
            }
            if ((i10 & 1) != 0) {
                str = gg.a.f61067a.a();
            }
            return aVar.i(str, memberPromoCodeReq);
        }

        public static j h(a aVar, String str, RequestBody requestBody, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: taskCheckInSubmit");
            }
            if ((i10 & 1) != 0) {
                str = gg.a.f61067a.a();
            }
            if ((i10 & 2) != 0) {
                requestBody = RequestBody.INSTANCE.create("{}", MediaType.INSTANCE.parse("application/json"));
            }
            return aVar.f(str, requestBody);
        }
    }

    @POST("/wefeed-mobile-bff/money/exchange/order")
    Object a(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<RedeemResult>> continuation);

    @GET("/wefeed-mobile-bff/money/coin-log")
    j<BaseDto<PointsHistoryData>> b(@Query("page") String pageNum, @Query("perpage") int pageSize, @Query("host") String host);

    @GET("/wefeed-mobile-bff/activity/fission/reward-list")
    j<BaseDto<MemberTaskInviteRewards>> c(@Query("host") String host, @Query("lastId") int lastId, @Query("limit") int limit);

    @GET("/wefeed-mobile-bff/vip/member/rewards-receive")
    j<BaseDto<MemberTaskRewardInfo>> d(@Query("host") String host, @Query("rewardId") String rewardId);

    @POST("/wefeed-mobile-bff/share/shorturl")
    j<BaseDto<MemberInviteUserShareInfo>> e(@Query("host") String host, @Body InviteUserShareInfoReq request);

    @POST("/wefeed-mobile-bff/activity/check-in")
    j<BaseDto<MemberTaskSubmitCheckInRes>> f(@Query("host") String host, @Body RequestBody request);

    @GET("/wefeed-mobile-bff/money/sku-list/get")
    j<BaseDto<SkuData>> g(@Query("host") String host);

    @POST("/wefeed-mobile-bff/statistics/user-operation")
    j<BaseDto<Object>> h(@Query("host") String host, @Body RequestBody request);

    @POST("/wefeed-mobile-bff/activity/promo-code-bind")
    j<BaseDto<MemberPromoCodeRes>> i(@Query("host") String host, @Body MemberPromoCodeReq request);

    @POST("/wefeed-mobile-bff/activity/rewards-receive")
    j<BaseDto<TaskRewards>> j(@Query("host") String host, @Body RequestBody request);

    @GET("/wefeed-mobile-bff/vip/member/detail")
    j<BaseDto<MemberDetail>> k(@Query("host") String host);

    @GET("/wefeed-mobile-bff/activity/ad-task-list")
    j<BaseDto<MemberAdTaskInfo>> l(@Query("host") String host);

    @POST("/wefeed-mobile-bff/vip/member/rights-check")
    Object m(@Query("host") String str, @Body RequestBody requestBody, Continuation<? super BaseDto<MemberCheckResult>> continuation);

    @GET("/wefeed-mobile-bff/activity/task-list")
    j<BaseDto<MemberTaskInfo>> n(@Query("host") String host);

    @GET("/wefeed-mobile-bff/activity/global-task")
    j<BaseDto<GlobalTaskInfo>> o(@Query("host") String host);
}
