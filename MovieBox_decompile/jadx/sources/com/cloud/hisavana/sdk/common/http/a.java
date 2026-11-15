package com.cloud.hisavana.sdk.common.http;

import android.text.TextUtils;
import android.util.Log;
import com.cloud.hisavana.net.HttpRequest;
import com.cloud.hisavana.net.RequestParams;
import com.cloud.hisavana.net.impl.StringCallback;
import com.cloud.hisavana.sdk.C0972f0;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.listener.CommonResponseListener;
import com.cloud.hisavana.sdk.common.http.listener.ResponseBaseListener;
import com.cloud.hisavana.sdk.data.bean.request.AdxImpBean;
import com.transsion.push.PushConstants;
import java.util.Locale;
import javax.net.ssl.SSLSocketFactory;
import okhttp3.Headers;
import org.json.JSONObject;

public class a extends d {

    private static String f21482k;

    private static String f21483l;

    private static boolean f21484m;

    private String f21485c = "0";

    private String f21486d = "";

    private boolean f21487e = false;

    private SSLSocketFactory f21488f = null;

    private b f21489g = null;

    private String f21490h = "0";

    private String f21491i = "1";

    private AdxImpBean f21492j;

    class C0278a extends StringCallback {

        final String f21493c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0278a(boolean z10, String str) {
            super(z10);
            this.f21493c = str;
        }

        @Override
        public void l(Headers headers) {
            super.l(headers);
            if (headers != null) {
                for (int i10 = 0; i10 < headers.size(); i10++) {
                    String strName = headers.name(i10);
                    if (!TextUtils.isEmpty(strName) && strName.toLowerCase(Locale.ROOT).contains("cloudcontrolversion")) {
                        String strValue = headers.value(i10);
                        com.cloud.sdk.commonutil.util.c.netLog("okhttp -> get new cloud control version from header,version: " + strValue);
                        if (!TextUtils.isEmpty(strValue) && !strValue.equals(a.f21482k)) {
                            String unused = a.f21482k = strValue;
                            boolean unused2 = a.f21484m = true;
                            com.cloud.sdk.commonutil.util.c.netLog("okhttp ->  cloud control version update");
                            l7.a.e().r("new_config_ver", strValue);
                        }
                        l7.a.e().q("last_req_config_time", System.currentTimeMillis());
                    }
                    if (!TextUtils.isEmpty(strName) && strName.toLowerCase(Locale.ROOT).contains("cloudcontrolofflineversion")) {
                        String strValue2 = headers.value(i10);
                        com.cloud.sdk.commonutil.util.c.netLog("okhttp -> get new hisavana cloud control version from header,version: " + strValue2);
                        if (!TextUtils.isEmpty(strValue2) && !strValue2.equals(a.f21483l)) {
                            String unused3 = a.f21483l = strValue2;
                            com.cloud.sdk.commonutil.util.c.netLog("okhttp -> hisavana cloud control version update");
                            l7.a.e().r("new_hisavana_ver", strValue2);
                        }
                    }
                }
            }
        }

        @Override
        public void x(int i10, String str, Throwable th2) {
            int iOptInt;
            if (C0972f0.g(i10, str)) {
                a.this.i();
                return;
            }
            if (th2 != null && c7.b.l()) {
                com.cloud.sdk.commonutil.util.c.netLog(this.f21493c + " ----- error statusCode = " + i10 + " ----- error message = " + th2.getMessage() + " ----- response = " + str);
            }
            if (a.this.f21500b != null) {
                try {
                    if (str != null) {
                        iOptInt = new JSONObject(str).optInt("code");
                    } else {
                        com.cloud.sdk.commonutil.util.c.netLog("can't get code,response is null");
                        iOptInt = 0;
                    }
                } catch (Exception e10) {
                    com.cloud.sdk.commonutil.util.c.netLog("getCode error " + e10.getMessage());
                }
                if (iOptInt == 0) {
                    iOptInt = i10;
                }
                com.cloud.sdk.commonutil.util.c.netLog("statusCode = " + i10);
                ((CommonResponseListener) a.this.f21500b).c(iOptInt, str, th2);
            }
        }

        @Override
        public void y(int i10, String str) {
            if (c7.b.l()) {
                com.cloud.sdk.commonutil.util.c.netLog(this.f21493c + "\n ----- status code = " + i10 + "\n ----- response = " + str);
            }
            if (TextUtils.isEmpty(str)) {
                ResponseBaseListener responseBaseListener = a.this.f21500b;
                if (responseBaseListener != null) {
                    ((CommonResponseListener) responseBaseListener).e(TaErrorCode.ERROR_RESPONSE_IS_NULL);
                }
                com.cloud.sdk.commonutil.util.c.netLog("TextUtils.isEmpty(response) == true ,  response is null ");
                return;
            }
            ResponseBaseListener responseBaseListener2 = a.this.f21500b;
            if (responseBaseListener2 != null) {
                ((CommonResponseListener) responseBaseListener2).i(i10, str);
            }
        }
    }

    public interface b {
        String a();
    }

    public void i() {
        String strA = this.f21489g.a();
        if (TextUtils.isEmpty(strA)) {
            ResponseBaseListener responseBaseListener = this.f21500b;
            if (responseBaseListener != null) {
                ((CommonResponseListener) responseBaseListener).c(-1, "TextUtils.isEmpty(postBodyString) == true ", null);
            }
            com.cloud.sdk.commonutil.util.c.netLog("sendRequestToServer() --> TextUtils.isEmpty(postBodyString) == true ");
            return;
        }
        AdxImpBean adxImpBean = this.f21492j;
        if (adxImpBean != null) {
            adxImpBean.requestTs = Long.valueOf(System.currentTimeMillis());
            AthenaTracker.g0(this.f21492j);
        }
        try {
            String str = "----- full url = " + this.f21486d + "\n ----- postBodyString = " + strA.trim();
            String strK = l7.a.e().k("cloudControlVersion", null);
            String strK2 = l7.a.e().k("hisavanaCurrentCloudControlVersion", null);
            if (TextUtils.isEmpty(this.f21486d)) {
                return;
            }
            ResponseBaseListener responseBaseListener2 = this.f21500b;
            boolean z10 = true;
            if (responseBaseListener2 != null) {
                ((CommonResponseListener) responseBaseListener2).f(1);
            }
            if (i7.a.c() == 0) {
                z10 = false;
            }
            C0972f0.f(z10);
            String strC = C0972f0.c("post", "", "application/json", this.f21486d, strA);
            RequestParams requestParams = new RequestParams();
            requestParams.i("x-tr-signature", strC);
            requestParams.i("cloudControlVersion", strK);
            requestParams.i("cloudControlOfflineVersion", strK2);
            requestParams.i("defaultAd", "2");
            requestParams.i("offlineAd", this.f21490h);
            requestParams.i("Accept-Timezone", "UTC");
            requestParams.i("sdktype", this.f21491i);
            requestParams.i(PushConstants.PROVIDER_FIELD_PKG, com.cloud.sdk.commonutil.util.e.a().getPackageName());
            requestParams.n(strA);
            HttpRequest.j(this.f21486d, requestParams, new C0278a(false, str));
        } catch (Throwable th2) {
            com.cloud.sdk.commonutil.util.c.netLog("AdServerRequest --> " + Log.getStackTraceString(th2));
            ResponseBaseListener responseBaseListener3 = this.f21500b;
            if (responseBaseListener3 != null) {
                ((CommonResponseListener) responseBaseListener3).e(new TaErrorCode(-1, th2.getMessage()));
            }
        }
    }

    @Override
    protected void a() {
        i();
    }

    public a j(AdxImpBean adxImpBean) {
        this.f21492j = adxImpBean;
        return this;
    }

    public a k(boolean z10) {
        this.f21487e = z10;
        return this;
    }

    public a l(boolean z10) {
        this.f21490h = z10 ? "1" : "0";
        return this;
    }

    public a m(CommonResponseListener commonResponseListener) {
        this.f21500b = commonResponseListener;
        return this;
    }

    public a n(String str) {
        this.f21485c = str;
        return this;
    }

    public a o(b bVar) {
        this.f21489g = bVar;
        return this;
    }

    public a p(String str) {
        this.f21491i = str;
        return this;
    }

    public a q(String str) {
        this.f21486d = str;
        return this;
    }
}
