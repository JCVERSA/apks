package defpackage;

import com.blankj.utilcode.util.LogUtils;
import com.transsion.dbdata.beans.adsbean.AdItemBean;
import com.transsion.vishaads.datasource.AdsDataManager;

public abstract class xdc {
    public static AdItemBean a() throws Throwable {
        AdItemBean adItemBeanJ = AdsDataManager.n().j();
        return adItemBeanJ != null ? adItemBeanJ : mn5.a().b();
    }

    public static AdItemBean b() {
        AdItemBean adItemBeanK = AdsDataManager.n().k();
        return adItemBeanK != null ? adItemBeanK : mn5.a().c();
    }

    public static AdItemBean c() throws Throwable {
        AdItemBean adItemBeanL = AdsDataManager.n().l();
        return adItemBeanL != null ? adItemBeanL : mn5.a().d();
    }

    public static AdItemBean d() throws Throwable {
        AdItemBean adItemBeanM = AdsDataManager.n().m();
        return adItemBeanM != null ? adItemBeanM : mn5.a().e();
    }

    public static void e(int i) {
        if (i <= 0) {
            LogUtils.m("VishaAdDataProvider", "getServerAdsData invalid region id");
        } else {
            AdsDataManager.n().z(i);
        }
    }
}
