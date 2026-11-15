package defpackage;

import android.util.Log;
import com.cloud.hisavana.abtestkit.bean.ABLayerInfo;
import com.cloud.hisavana.abtestkit.bean.OnlineABLayerDTO;
import com.cloud.hisavana.net.RequestParams;
import com.cloud.hisavana.net.impl.StringCallback;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.transsion.gslb.NetResponse;
import java.util.concurrent.CopyOnWriteArrayList;

public final class xed extends StringCallback {
    public final String c;
    public final RequestParams d;
    public final long e;
    public final sad.a f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xed(String str, RequestParams requestParams, long j, sad.a aVar) {
        super(true);
        this.c = str;
        this.d = requestParams;
        this.e = j;
        this.f = aVar;
    }

    @Override
    public final void x(int i, String str, Throwable th) {
        if (Log.isLoggable("ADSDK", 3)) {
            String str2 = "----- onFailure full url = " + this.c + " \n----- postBodyString = " + this.d.getPostBody() + '}';
            ja1.Log().w("ABTEST", str2 + " \n ----- status code =  " + i + "\n ----- response = " + str);
        }
        hgd.a.remove(Long.valueOf(this.e));
        this.f.a(this.e, i);
    }

    @Override
    public final void y(int i, String str) {
        ABLayerInfo aBLayerInfo;
        if (Log.isLoggable("ADSDK", 3)) {
            String str2 = "----- onSuccess full url = " + this.c + " \n----- postBodyString = " + this.d.getPostBody() + '}';
            ja1.Log().w("ABTEST", str2 + " \n ----- status code =  " + i + "\n ----- response = " + str);
        }
        hgd.a.remove(Long.valueOf(this.e));
        long j = this.e;
        sad.a aVar = this.f;
        if (i != 200) {
            ja1.Log().d("ABTEST", "response fail, statusCode = " + i);
            aVar.a(j, i);
            return;
        }
        if (str == null || str.length() == 0) {
            ja1.Log().d("ABTEST", "response success, response is null");
            OnlineABLayerDTO onlineABLayerDTO = new OnlineABLayerDTO(null, 1, null);
            onlineABLayerDTO.setLayerId(j);
            onlineABLayerDTO.setRequestTime(System.currentTimeMillis());
            onlineABLayerDTO.setInfo(NetResponse.EMPTY_RESPONSE);
            onlineABLayerDTO.setAbLayerInfo(null);
            l3d.d(onlineABLayerDTO);
            return;
        }
        try {
            aBLayerInfo = (ABLayerInfo) GsonUtil.a(str, ABLayerInfo.class);
        } catch (Exception e) {
            ja1.Log().w("ABTEST", "response fail, error = " + e.getMessage());
            aVar.a(j, 10001);
            aBLayerInfo = null;
        }
        if (aBLayerInfo != null) {
            Long layerId = aBLayerInfo.getLayerId();
            if (layerId == null || j != layerId.longValue()) {
                ja1.Log().d("ABTEST", "response fail, layerId is diff, layerId = " + aBLayerInfo.getLayerId());
                aVar.a(j, 10002);
                return;
            }
            CopyOnWriteArrayList copyOnWriteArrayList = hgd.a;
            long jLongValue = aBLayerInfo.getLayerId().longValue();
            OnlineABLayerDTO onlineABLayerDTO2 = new OnlineABLayerDTO(null, 1, null);
            onlineABLayerDTO2.setLayerId(jLongValue);
            onlineABLayerDTO2.setRequestTime(System.currentTimeMillis());
            onlineABLayerDTO2.setInfo(str);
            onlineABLayerDTO2.setAbLayerInfo(aBLayerInfo);
            l3d.d(onlineABLayerDTO2);
        }
    }
}
