package defpackage;

import com.cloud.hisavana.abtestkit.ABTestKitConfig;
import com.cloud.hisavana.abtestkit.bean.OnlineABLayerDTO;
import com.cloud.hisavana.net.HttpRequest;
import com.cloud.hisavana.net.RequestParams;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.sdk.commonutil.util.MitNetUtil;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

public abstract class sad {

    public static final class a {
        public final void a(long j, int i) {
            if (400 > i || i >= 500) {
                return;
            }
            l3d.b(j);
        }
    }

    public static void a(final long j, final long j2, final ABTestKitConfig aBTestKitConfig) {
        HSScopeHelper.a.n(new Runnable() {
            @Override
            public final void run() {
                sad.b(j, j2, aBTestKitConfig);
            }
        });
    }

    public static final void b(long j, long j2, ABTestKitConfig aBTestKitConfig) {
        String str;
        if (!MitNetUtil.c(ul4.a())) {
            ja1.Log().d("ABTEST", "ABFetcher fail, network is disconnect");
            return;
        }
        AtomicBoolean atomicBoolean = l3d.a;
        OnlineABLayerDTO onlineABLayerDTO = (OnlineABLayerDTO) lhd.a.get(Long.valueOf(j));
        if (System.currentTimeMillis() - (onlineABLayerDTO != null ? onlineABLayerDTO.getRequestTime() : 0L) <= j2) {
            ja1.Log().d("ABTEST", "ABFetcher fail, request interval not met");
            return;
        }
        a aVar = new a();
        CopyOnWriteArrayList copyOnWriteArrayList = hgd.a;
        if (copyOnWriteArrayList.contains(Long.valueOf(j))) {
            ja1.Log().i("ABTEST", "ABHttp request status = requesting, reqQueue = " + copyOnWriteArrayList);
            return;
        }
        copyOnWriteArrayList.add(Long.valueOf(j));
        Long lValueOf = Long.valueOf(j);
        ja1.Log().i("ABTEST", "getLayerUrl layerId = " + lValueOf);
        if (aBTestKitConfig != null ? y45.e(aBTestKitConfig.getUseTestEnvironment(), Boolean.TRUE) : false) {
            str = "https://test-api-accel.shalltry.com/v2/layers/" + j + "/summary";
        } else {
            str = "https://api.galileoab.com/v2/layers/" + j + "/summary";
        }
        String str2 = aBTestKitConfig != null ? y45.e(aBTestKitConfig.getUseTestEnvironment(), Boolean.TRUE) : false ? "5N0YBoq.hQJd6zuuGZFtKzB0snSgo1BG" : "kyHauhL.gnQ1cJdVp0RsibhEBqhLELK9";
        RequestParams requestParams = new RequestParams();
        requestParams.i("x-api-key", str2);
        HttpRequest.a.h(str, requestParams, new xed(str, requestParams, j, aVar));
    }
}
