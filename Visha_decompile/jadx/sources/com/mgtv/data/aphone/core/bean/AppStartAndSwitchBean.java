package com.mgtv.data.aphone.core.bean;

import android.content.Context;
import com.mgtv.data.aphone.core.constants.KeysContants;
import com.mgtv.data.aphone.core.j.f;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.HashMap;
import java.util.Map;

public class AppStartAndSwitchBean extends BaseBean {
    public static String ACT_ST = "st";
    public String act;
    public String body;
    public String ctype;
    public String runsid;
    public String stype;

    public AppStartAndSwitchBean(Context context, String str) {
        super(context);
        this.act = ACT_ST;
        if (CommonParamsBean.a) {
            this.body = CommonParamsBean.b;
            CommonParamsBean.a = false;
        } else {
            this.body = "";
        }
        this.runsid = com.mgtv.data.aphone.core.f.a.c().a();
        this.ctype = f.g();
        this.stype = str;
    }

    public Map<String, String> getAppStartAndSwitchParams() {
        HashMap map = new HashMap();
        map.put(KeysContants.St.ACT.getValue(), this.act);
        map.put(KeysContants.St.BODY.getValue(), this.body);
        map.put(KeysContants.St.RUNSID.getValue(), this.runsid);
        map.put(KeysContants.St.CTYPE.getValue(), this.ctype);
        map.put(KeysContants.St.STYPE.getValue(), this.stype);
        map.putAll(getCommonParams());
        map.put(KeysContants.CommonParams.RDC.getValue(), this.rdc.replaceAll("&", StringUtils.PROCESS_POSTFIX_DELIMITER));
        return map;
    }
}
