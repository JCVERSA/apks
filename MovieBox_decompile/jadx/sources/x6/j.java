package x6;

import android.util.Log;
import com.cloud.hisavana.abtestkit.bean.ABLayerInfo;
import com.cloud.hisavana.abtestkit.bean.OnlineABLayerDTO;
import com.cloud.hisavana.net.RequestParams;
import com.cloud.hisavana.net.impl.StringCallback;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import java.util.concurrent.CopyOnWriteArrayList;

public final class j extends StringCallback {

    public final String f75112c;

    public final RequestParams f75113d;

    public final long f75114e;

    public final i.a f75115f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(String str, RequestParams requestParams, long j10, i.a aVar) {
        super(true);
        this.f75112c = str;
        this.f75113d = requestParams;
        this.f75114e = j10;
        this.f75115f = aVar;
    }

    @Override
    public final void x(int i10, String str, Throwable th2) {
        if (Log.isLoggable("ADSDK", 3)) {
            String str2 = "----- onFailure full url = " + this.f75112c + " \n----- postBodyString = " + this.f75113d.getPostBody() + '}';
            com.cloud.sdk.commonutil.util.c.Log().w("ABTEST", str2 + " \n ----- status code =  " + i10 + "\n ----- response = " + str);
        }
        k.f75116a.remove(Long.valueOf(this.f75114e));
        this.f75115f.a(this.f75114e, i10);
    }

    @Override
    public final void y(int i10, String str) {
        ABLayerInfo aBLayerInfo;
        if (Log.isLoggable("ADSDK", 3)) {
            String str2 = "----- onSuccess full url = " + this.f75112c + " \n----- postBodyString = " + this.f75113d.getPostBody() + '}';
            com.cloud.sdk.commonutil.util.c.Log().w("ABTEST", str2 + " \n ----- status code =  " + i10 + "\n ----- response = " + str);
        }
        k.f75116a.remove(Long.valueOf(this.f75114e));
        long j10 = this.f75114e;
        i.a aVar = this.f75115f;
        if (i10 != 200) {
            com.cloud.sdk.commonutil.util.c.Log().d("ABTEST", "response fail, statusCode = " + i10);
            aVar.a(j10, i10);
            return;
        }
        if (str == null || str.length() == 0) {
            com.cloud.sdk.commonutil.util.c.Log().d("ABTEST", "response success, response is null");
            OnlineABLayerDTO onlineABLayerDTO = new OnlineABLayerDTO(null, 1, null);
            onlineABLayerDTO.setLayerId(j10);
            onlineABLayerDTO.setRequestTime(System.currentTimeMillis());
            onlineABLayerDTO.setInfo("{}");
            onlineABLayerDTO.setAbLayerInfo(null);
            e.e(onlineABLayerDTO);
            return;
        }
        try {
            aBLayerInfo = (ABLayerInfo) GsonUtil.a(str, ABLayerInfo.class);
        } catch (Exception e10) {
            com.cloud.sdk.commonutil.util.c.Log().w("ABTEST", "response fail, error = " + e10.getMessage());
            aVar.a(j10, 10001);
            aBLayerInfo = null;
        }
        if (aBLayerInfo != null) {
            Long layerId = aBLayerInfo.getLayerId();
            if (layerId == null || j10 != layerId.longValue()) {
                com.cloud.sdk.commonutil.util.c.Log().d("ABTEST", "response fail, layerId is diff, layerId = " + aBLayerInfo.getLayerId());
                aVar.a(j10, 10002);
                return;
            }
            CopyOnWriteArrayList copyOnWriteArrayList = k.f75116a;
            long jLongValue = aBLayerInfo.getLayerId().longValue();
            OnlineABLayerDTO onlineABLayerDTO2 = new OnlineABLayerDTO(null, 1, null);
            onlineABLayerDTO2.setLayerId(jLongValue);
            onlineABLayerDTO2.setRequestTime(System.currentTimeMillis());
            onlineABLayerDTO2.setInfo(str);
            onlineABLayerDTO2.setAbLayerInfo(aBLayerInfo);
            e.e(onlineABLayerDTO2);
        }
    }
}
