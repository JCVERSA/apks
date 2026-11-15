package com.transsion.playercommon.cloudctrlconfigrequest;

import android.util.Log;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.tencent.mmkv.MMKV;
import com.transsion.dbdata.beans.cloudctrlconfigbean.CloudCtrlConfigBean;
import java.util.List;

public class CloudCtrlConfigHelper {
    public List a;
    public final MMKV b;

    public static final class a {
        public static final CloudCtrlConfigHelper a = new CloudCtrlConfigHelper();
    }

    public static CloudCtrlConfigHelper b() {
        return a.a;
    }

    public final void a(List list) {
        this.b.w("cloud_ctrl_config", new Gson().toJson(list));
    }

    public boolean c(int i) {
        List<CloudCtrlConfigBean.CloudCtrl> list = this.a;
        if (list != null) {
            for (CloudCtrlConfigBean.CloudCtrl cloudCtrl : list) {
                if (cloudCtrl.getType() == i) {
                    if (i == 3) {
                        return cloudCtrl.getOnlineStatus() == 0;
                    }
                    return cloudCtrl.getOnlineStatus() == 1;
                }
            }
        }
        return i == 3;
    }

    public final void d() {
        String strL = this.b.l("cloud_ctrl_config");
        if (strL != null) {
            this.a = (List) new Gson().fromJson(strL, new TypeToken<List<CloudCtrlConfigBean.CloudCtrl>>() {
            }.getType());
        }
    }

    public void e(List list) {
        if (list != null) {
            this.a = list;
            a(list);
            Log.i("CloudCtrlConfigRequestUtils", "onResponse:" + list);
        }
    }

    public CloudCtrlConfigHelper() {
        this.b = MMKV.p();
        d();
    }
}
