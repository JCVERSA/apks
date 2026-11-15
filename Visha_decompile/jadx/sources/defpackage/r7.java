package defpackage;

import android.text.TextUtils;
import android.util.Log;
import com.cloud.hisavana.net.HttpRequest;
import com.cloud.hisavana.net.RequestParams;
import com.cloud.hisavana.net.impl.StringCallback;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.listener.CommonResponseListener;
import com.cloud.hisavana.sdk.common.http.listener.ResponseBaseListener;
import com.cloud.hisavana.sdk.data.bean.request.AdxImpBean;
import com.cloud.hisavana.sdk.o0;
import com.hisavana.common.tracking.TrackingKey;
import com.transsion.push.PushConstants;
import java.util.Locale;
import javax.net.ssl.SSLSocketFactory;
import okhttp3.Headers;
import org.json.JSONObject;

public class r7 extends xs8 {
    public static String k = null;
    public static String l = null;
    public static boolean m = false;
    public String c = "0";
    public String d = "";
    public boolean e = false;
    public SSLSocketFactory f = null;
    public b g = null;
    public String h = "0";
    public String i = "1";
    public AdxImpBean j;

    public class a extends StringCallback {
        public final String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(boolean z, String str) {
            super(z);
            this.c = str;
        }

        @Override
        public void l(Headers headers) {
            super.l(headers);
            if (headers != null) {
                for (int i = 0; i < headers.size(); i++) {
                    String strName = headers.name(i);
                    if (!TextUtils.isEmpty(strName) && strName.toLowerCase(Locale.ROOT).contains("cloudcontrolversion")) {
                        String strValue = headers.value(i);
                        ja1.netLog("okhttp -> get new cloud control version from header,version: " + strValue);
                        if (!TextUtils.isEmpty(strValue) && !strValue.equals(r7.k)) {
                            String unused = r7.k = strValue;
                            boolean unused2 = r7.m = true;
                            ja1.netLog("okhttp ->  cloud control version update");
                            o9.e().r("new_config_ver", strValue);
                        }
                        o9.e().q("last_req_config_time", System.currentTimeMillis());
                    }
                    if (!TextUtils.isEmpty(strName) && strName.toLowerCase(Locale.ROOT).contains("cloudcontrolofflineversion")) {
                        String strValue2 = headers.value(i);
                        ja1.netLog("okhttp -> get new hisavana cloud control version from header,version: " + strValue2);
                        if (!TextUtils.isEmpty(strValue2) && !strValue2.equals(r7.l)) {
                            String unused3 = r7.l = strValue2;
                            ja1.netLog("okhttp -> hisavana cloud control version update");
                            o9.e().r("new_hisavana_ver", strValue2);
                        }
                    }
                }
            }
        }

        @Override
        public void x(int i, String str, Throwable th) {
            int iOptInt;
            if (o0.g(i, str)) {
                r7.this.i();
                return;
            }
            if (th != null && r6.p()) {
                ja1.netLog(this.c + " ----- error statusCode = " + i + " ----- error message = " + th.getMessage() + " ----- response = " + str);
            }
            if (r7.this.b != null) {
                try {
                    if (str != null) {
                        iOptInt = new JSONObject(str).optInt(TrackingKey.CODE);
                    } else {
                        ja1.netLog("can't get code,response is null");
                        iOptInt = 0;
                    }
                } catch (Exception e) {
                    ja1.netLog("getCode error " + e.getMessage());
                }
                if (iOptInt == 0) {
                    iOptInt = i;
                }
                ja1.netLog("statusCode = " + i);
                ((CommonResponseListener) r7.this.b).c(iOptInt, str, th);
            }
        }

        @Override
        public void y(int i, String str) {
            if (r6.p()) {
                ja1.netLog(this.c + "\n ----- status code = " + i + "\n ----- response = " + str);
            }
            if (TextUtils.isEmpty(str)) {
                ResponseBaseListener responseBaseListener = r7.this.b;
                if (responseBaseListener != null) {
                    ((CommonResponseListener) responseBaseListener).e(TaErrorCode.ERROR_RESPONSE_IS_NULL);
                }
                ja1.netLog("TextUtils.isEmpty(response) == true ,  response is null ");
                return;
            }
            ResponseBaseListener responseBaseListener2 = r7.this.b;
            if (responseBaseListener2 != null) {
                ((CommonResponseListener) responseBaseListener2).i(i, str);
            }
        }
    }

    public interface b {
        String a();
    }

    @Override
    public void a() {
        i();
    }

    public final void i() {
        String strA = this.g.a();
        if (TextUtils.isEmpty(strA)) {
            ResponseBaseListener responseBaseListener = this.b;
            if (responseBaseListener != null) {
                ((CommonResponseListener) responseBaseListener).c(-1, "TextUtils.isEmpty(postBodyString) == true ", null);
            }
            ja1.netLog("sendRequestToServer() --> TextUtils.isEmpty(postBodyString) == true ");
            return;
        }
        AdxImpBean adxImpBean = this.j;
        if (adxImpBean != null) {
            adxImpBean.requestTs = Long.valueOf(System.currentTimeMillis());
            AthenaTracker.m0(this.j);
        }
        try {
            String str = "----- full url = " + this.d + "\n ----- postBodyString = " + strA.trim();
            String strK = o9.e().k("cloudControlVersion", null);
            String strK2 = o9.e().k("hisavanaCurrentCloudControlVersion", null);
            if (TextUtils.isEmpty(this.d)) {
                return;
            }
            ResponseBaseListener responseBaseListener2 = this.b;
            boolean z = true;
            if (responseBaseListener2 != null) {
                ((CommonResponseListener) responseBaseListener2).f(1);
            }
            if (p9.c() == 0) {
                z = false;
            }
            o0.f(z);
            String strC = o0.c("post", "", "application/json", this.d, strA);
            RequestParams requestParams = new RequestParams();
            requestParams.i("x-tr-signature", strC);
            requestParams.i("cloudControlVersion", strK);
            requestParams.i("cloudControlOfflineVersion", strK2);
            requestParams.i("defaultAd", "2");
            requestParams.i("offlineAd", this.h);
            requestParams.i("Accept-Timezone", "UTC");
            requestParams.i("sdktype", this.i);
            requestParams.i(PushConstants.PROVIDER_FIELD_PKG, ul4.a().getPackageName());
            requestParams.n(strA);
            HttpRequest.j(this.d, requestParams, new a(false, str));
        } catch (Throwable th) {
            ja1.netLog("AdServerRequest --> " + Log.getStackTraceString(th));
            ResponseBaseListener responseBaseListener3 = this.b;
            if (responseBaseListener3 != null) {
                ((CommonResponseListener) responseBaseListener3).e(new TaErrorCode(-1, th.getMessage()));
            }
        }
    }

    public r7 j(AdxImpBean adxImpBean) {
        this.j = adxImpBean;
        return this;
    }

    public r7 k(boolean z) {
        this.e = z;
        return this;
    }

    public r7 l(boolean z) {
        this.h = z ? "1" : "0";
        return this;
    }

    public r7 m(CommonResponseListener commonResponseListener) {
        this.b = commonResponseListener;
        return this;
    }

    public r7 n(String str) {
        this.c = str;
        return this;
    }

    public r7 o(b bVar) {
        this.g = bVar;
        return this;
    }

    public r7 p(String str) {
        this.i = str;
        return this;
    }

    public r7 q(String str) {
        this.d = str;
        return this;
    }
}
