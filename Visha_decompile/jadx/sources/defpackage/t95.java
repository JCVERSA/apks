package defpackage;

import com.hisavana.common.tracking.TrackingKey;
import com.transsion.hubsdk.api.resource.theme.TranThemePackageInfo;
import com.transsion.livecaption.constant.ICode;
import com.transsion.palmsdk.b;
import com.transsion.playercommon.utils.CountryInfoUtil;
import com.transsion.playercommon.vishaweb.jsdata.JsParam;
import java.util.HashMap;

public abstract class t95 {
    public static JsParam a(int i, long j) {
        JsParam jsParam = new JsParam();
        jsParam.setType(1);
        HashMap map = new HashMap();
        if (j != -1) {
            map.put("vip_card_id", Long.valueOf(j));
        }
        map.put("vip_id", Integer.valueOf(i));
        map.put("token", gec.c().h() + gec.c().e());
        map.put("openId", b.k());
        map.put("avatarUrl", b.j());
        map.put("version", com.blankj.utilcode.util.b.d());
        map.put("countryCode", CountryInfoUtil.i());
        map.put(TranThemePackageInfo.FEATURE_KEY, 11);
        jsParam.setParams(map);
        return jsParam;
    }

    public static JsParam b(int i, int i2, String str) {
        JsParam jsParam = new JsParam();
        jsParam.setType(2);
        HashMap map = new HashMap();
        map.put("status", Integer.valueOf(i));
        map.put(ICode.CALL.CALL_KEY_CONTENT, str);
        map.put(TrackingKey.CODE, Integer.valueOf(i2));
        jsParam.setParams(map);
        return jsParam;
    }

    public static JsParam c() {
        JsParam jsParam = new JsParam();
        jsParam.setType(4);
        HashMap map = new HashMap();
        map.put("token", gec.c().h() + gec.c().e());
        map.put("openId", b.k());
        map.put("avatarUrl", b.j());
        map.put("version", com.blankj.utilcode.util.b.d());
        map.put(TranThemePackageInfo.FEATURE_KEY, 11);
        jsParam.setParams(map);
        return jsParam;
    }
}
