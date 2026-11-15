package x6;

import com.cloud.hisavana.abtestkit.ABTestKitConfig;
import com.cloud.hisavana.abtestkit.bean.OnlineABLayerDTO;
import com.cloud.hisavana.net.HttpRequest;
import com.cloud.hisavana.net.RequestParams;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.sdk.commonutil.util.MitNetUtil;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;

public abstract class i {

    public static final class a {
        public final void a(long j10, int i10) {
            if (400 > i10 || i10 >= 500) {
                return;
            }
            e.b(j10);
        }
    }

    public static void a(final long j10, final long j11, final ABTestKitConfig aBTestKitConfig) {
        HSScopeHelper.f22503a.i(new Runnable() {
            @Override
            public final void run() {
                i.b(j10, j11, aBTestKitConfig);
            }
        });
    }

    public static final void b(long j10, long j11, ABTestKitConfig aBTestKitConfig) {
        String str;
        if (!MitNetUtil.c(com.cloud.sdk.commonutil.util.e.a())) {
            com.cloud.sdk.commonutil.util.c.Log().d("ABTEST", "ABFetcher fail, network is disconnect");
            return;
        }
        AtomicBoolean atomicBoolean = e.f75107a;
        OnlineABLayerDTO onlineABLayerDTO = (OnlineABLayerDTO) l.f75117a.get(Long.valueOf(j10));
        if (System.currentTimeMillis() - (onlineABLayerDTO != null ? onlineABLayerDTO.getRequestTime() : 0L) <= j11) {
            com.cloud.sdk.commonutil.util.c.Log().d("ABTEST", "ABFetcher fail, request interval not met");
            return;
        }
        a aVar = new a();
        CopyOnWriteArrayList copyOnWriteArrayList = k.f75116a;
        if (copyOnWriteArrayList.contains(Long.valueOf(j10))) {
            com.cloud.sdk.commonutil.util.c.Log().i("ABTEST", "ABHttp request status = requesting, reqQueue = " + copyOnWriteArrayList);
            return;
        }
        copyOnWriteArrayList.add(Long.valueOf(j10));
        Long lValueOf = Long.valueOf(j10);
        com.cloud.sdk.commonutil.util.c.Log().i("ABTEST", "getLayerUrl layerId = " + lValueOf);
        if (aBTestKitConfig != null ? Intrinsics.c(aBTestKitConfig.getUseTestEnvironment(), Boolean.TRUE) : false) {
            str = "https://test-api-accel.shalltry.com/v2/layers/" + j10 + "/summary";
        } else {
            str = "https://api.galileoab.com/v2/layers/" + j10 + "/summary";
        }
        String str2 = aBTestKitConfig != null ? Intrinsics.c(aBTestKitConfig.getUseTestEnvironment(), Boolean.TRUE) : false ? "5N0YBoq.hQJd6zuuGZFtKzB0snSgo1BG" : "kyHauhL.gnQ1cJdVp0RsibhEBqhLELK9";
        RequestParams requestParams = new RequestParams();
        requestParams.i("x-api-key", str2);
        HttpRequest.f20712a.h(str, requestParams, new j(str, requestParams, j10, aVar));
    }
}
