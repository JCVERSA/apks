package defpackage;

import android.os.Bundle;
import com.transsion.athena.data.TrackData;
import com.transsion.dbdata.beans.onlinevideo.UserInfoBean;
import java.util.Iterator;

public abstract class f06 extends hb0 {
    public static int b(UserInfoBean.VipInfoVosMapBean vipInfoVosMapBean) {
        UserInfoBean.VipInfoVosMapBean.VipBean vip = vipInfoVosMapBean.getVip();
        UserInfoBean.VipInfoVosMapBean.WithoutVipBean withoutVip = vipInfoVosMapBean.getWithoutVip();
        int size = 0;
        int size2 = (vip == null || vip.getVipInfoVos() == null) ? 0 : vip.getVipInfoVos().size();
        if (withoutVip != null && withoutVip.getVipInfoVos() != null) {
            size = withoutVip.getVipInfoVos().size();
        }
        return size2 + size;
    }

    public static String c(UserInfoBean.VipInfoVosMapBean vipInfoVosMapBean) {
        StringBuilder sb = new StringBuilder();
        UserInfoBean.VipInfoVosMapBean.VipBean vip = vipInfoVosMapBean.getVip();
        UserInfoBean.VipInfoVosMapBean.WithoutVipBean withoutVip = vipInfoVosMapBean.getWithoutVip();
        if (vip != null && vip.getVipInfoVos() != null) {
            Iterator<UserInfoBean.VipInfoVosBean> it = vip.getVipInfoVos().iterator();
            while (it.hasNext()) {
                sb.append(it.next().getTitle());
                sb.append("+ 1,");
            }
        }
        if (withoutVip != null && withoutVip.getVipInfoVos() != null) {
            Iterator<UserInfoBean.VipInfoVosBean> it2 = withoutVip.getVipInfoVos().iterator();
            while (it2.hasNext()) {
                sb.append(it2.next().getTitle());
                sb.append("+ 0,");
            }
        }
        return sb.toString();
    }

    public static void d(UserInfoBean.VipInfoVosMapBean vipInfoVosMapBean) {
        String strC = c(vipInfoVosMapBean);
        int iB = b(vipInfoVosMapBean);
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString("status_1", strC);
        trackData.add("status_1", strC);
        bundle.putInt(hb0.KEY_NAME_NUM, iB);
        trackData.add(hb0.KEY_NAME_NUM, iB);
        p06.q0(trackData, bundle, "vd_ott_me_show_p", 9324L);
    }

    public static void e(boolean z, String str) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("status_0", z ? 1 : 0);
        trackData.add("status_0", z ? 1 : 0);
        bundle.putString("from", str);
        trackData.add("from", str);
        p06.q0(trackData, bundle, "vd_ott_me_show", 9324L);
    }

    public static void f(String str, boolean z) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString("name", str);
        trackData.add("name", str);
        bundle.putInt("type", z ? 1 : 0);
        trackData.add("type", z ? 1 : 0);
        p06.q0(trackData, bundle, "vd_ott_vip_cl", 9324L);
    }
}
