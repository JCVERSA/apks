package yk;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.home.bean.RankAllData;
import com.transsion.home.bean.UGCRankAllData;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import retrofit2.http.GET;
import retrofit2.http.Query;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001JV\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0003\u0010\u0005\u001a\u00020\u00042\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u00022\b\b\u0001\u0010\u0007\u001a\u00020\u00042\b\b\u0003\u0010\b\u001a\u00020\u00042\n\b\u0003\u0010\t\u001a\u0004\u0018\u00010\u0002H§@¢\u0006\u0004\b\f\u0010\rJJ\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\n2\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0003\u0010\u0005\u001a\u00020\u00022\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u00022\b\b\u0003\u0010\u0007\u001a\u00020\u00022\b\b\u0003\u0010\b\u001a\u00020\u0004H§@¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lyk/d;", "", "", "host", "", "tabId", "category", "page", "perPage", "rankingListId", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/home/bean/RankAllData;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/transsion/home/bean/UGCRankAllData;", "a", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface d {

    public static final class a {
        public static Object a(d dVar, String str, int i10, String str2, int i11, int i12, String str3, Continuation continuation, int i13, Object obj) {
            if (obj == null) {
                return dVar.b((i13 & 1) != 0 ? gg.a.f61067a.a() : str, (i13 & 2) != 0 ? 0 : i10, str2, i11, (i13 & 16) != 0 ? 10 : i12, (i13 & 32) != 0 ? null : str3, continuation);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getRankList");
        }

        public static Object b(d dVar, String str, String str2, String str3, String str4, int i10, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getUGCRankList");
            }
            if ((i11 & 1) != 0) {
                str = gg.a.f61067a.a();
            }
            String str5 = str;
            if ((i11 & 2) != 0) {
                str2 = "0";
            }
            String str6 = str2;
            if ((i11 & 8) != 0) {
                str4 = "1";
            }
            String str7 = str4;
            if ((i11 & 16) != 0) {
                i10 = 10;
            }
            return dVar.a(str5, str6, str3, str7, i10, continuation);
        }
    }

    @GET("/wefeed-mobile-bff/ugc/operating/tab-rank-list")
    Object a(@Query("host") String str, @Query("tabId") String str2, @Query("categoryType") String str3, @Query("page") String str4, @Query("perPage") int i10, Continuation<? super BaseDto<UGCRankAllData>> continuation);

    @GET("/wefeed-mobile-bff/tab/ranking-list")
    Object b(@Query("host") String str, @Query("tabId") int i10, @Query("categoryType") String str2, @Query("page") int i11, @Query("perPage") int i12, @Query("rankingListId") String str3, Continuation<? super BaseDto<RankAllData>> continuation);
}
