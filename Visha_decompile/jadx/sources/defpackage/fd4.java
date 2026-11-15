package defpackage;

import android.content.Context;
import android.text.TextUtils;
import com.transsion.infra.gateway.core.bean.GatewayResponse;
import com.transsion.infra.gateway.core.bean.GatewaySignKey;
import com.transsion.infra.gateway.core.bean.RequestBean;
import com.transsion.infra.gateway.core.bean.TimeBean;
import com.transsion.infra.gateway.core.sercurity.HttpSigner;
import com.transsion.infra.gateway.core.utils.a;

public abstract class fd4 {
    public static String a(RequestBean requestBean) {
        a.a.g("requestBean" + requestBean.toString());
        return HttpSigner.b(requestBean);
    }

    public static void b(Context context) {
        vh1.b(context);
    }

    public static boolean c(int i, String str, GatewaySignKey gatewaySignKey) {
        if (i != 200 && !TextUtils.isEmpty(str)) {
            try {
                a.a.g("response" + str);
                GatewayResponse gatewayResponse = (GatewayResponse) qab.a(str, GatewayResponse.class);
                if ("GW.4410".equals(gatewayResponse.errorCode)) {
                    a.a.g("verify sign failed, retrying update time");
                    TimeBean timeBean = (TimeBean) qab.a(tl1.a(gatewayResponse.errorMsg, gatewaySignKey.getKey()), TimeBean.class);
                    if (timeBean.time > 0) {
                        c19.a(vh1.a()).d("time_offset", timeBean.time - System.currentTimeMillis());
                        return true;
                    }
                }
            } catch (Exception e) {
                a.a.i(e);
            }
        }
        return false;
    }
}
