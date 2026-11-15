package defpackage;

import android.content.Context;
import android.util.Log;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.dbdata.beans.CountryInfoBean;
import com.transsion.gslb.GslbSdk;
import com.transsion.playercommon.utils.CountryInfoUtil;
import com.transsion.playercommon.vishaapis.appconfig.helper.AIConfigHelper;
import com.transsion.playercommon.vishaapis.appconfig.helper.AppGlobalConfigHelper;
import com.transsion.playercommon.vishaapis.appconfig.helper.AppLayoutConfigHelper;
import com.transsion.playercommon.vishaapis.appconfig.helper.PlayerConfigHelper;
import com.transsion.playercommon.vishaapis.appconfig.helper.SmartEditConfigHelper;
import com.transsion.playercommon.vishaapis.gslb.GslbService;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class rr8 extends vec {
    public static List c;
    public String b = "RegionInfoTask";

    public class a implements CountryInfoUtil.c {
        public final Context a;

        public a(Context context) {
            this.a = context;
        }

        @Override
        public void a(CountryInfoBean countryInfoBean) {
            if (GslbService.getInstance().IsSupportGslb()) {
                rr8.this.n(countryInfoBean, this.a);
                rr8.this.m(countryInfoBean, this.a);
            } else {
                rr8.this.o(countryInfoBean);
                rr8.this.m(countryInfoBean, this.a);
            }
        }

        @Override
        public void onFailed() {
            LogUtils.m(rr8.this.b, "get_country_info_return_failed");
        }
    }

    public class b implements GslbSdk.GslbInitListener {
        public final CountryInfoBean a;

        public b(CountryInfoBean countryInfoBean) {
            this.a = countryInfoBean;
        }

        @Override
        public void onInitFail(String str) {
        }

        @Override
        public void onInitSuccess(Map map) {
            rr8.this.o(this.a);
        }
    }

    static {
        ArrayList arrayList = new ArrayList();
        c = arrayList;
        arrayList.add(lw5.class);
        c.add(zz4.class);
        c.add(lz6.class);
        c.add(ec2.class);
    }

    @Override
    public boolean b() {
        return false;
    }

    @Override
    public boolean c() {
        return false;
    }

    @Override
    public List dependencies() {
        return c;
    }

    @Override
    public Void create(Context context) {
        p(context);
        return null;
    }

    public final void m(CountryInfoBean countryInfoBean, Context context) {
        if (countryInfoBean == null || context == null) {
            return;
        }
        AppGlobalConfigHelper.getAppGlobalConfig(countryInfoBean.getRegionId(), pp3.c(), ga2.b(), pp3.a(), AppGlobalConfigHelper.getCacheDataVersion());
        py2.d(null, py2.b());
        if (w.h()) {
            AIConfigHelper.requestAISubtitleConfig(context);
        }
        PlayerConfigHelper.requestPlayCompleteRecommend(context);
        SmartEditConfigHelper.requestSmartEditApiKeys();
        km6.a.a().c();
    }

    public final void n(CountryInfoBean countryInfoBean, Context context) {
        GslbService.getInstance().init(context, new b(countryInfoBean));
    }

    public final void o(CountryInfoBean countryInfoBean) {
        try {
            AppLayoutConfigHelper.getInstance().getAppLayoutConfig(countryInfoBean.getRegionId(), AppLayoutConfigHelper.getInstance().getCacheDataVersion());
        } catch (Throwable th) {
            Log.e(this.b, "initLayoutConfig failed: " + th.getMessage());
        }
    }

    public final void p(Context context) {
        CountryInfoUtil.p(new a(context));
        CountryInfoUtil.j(context);
    }
}
