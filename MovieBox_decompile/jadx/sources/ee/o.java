package ee;

import android.content.Context;
import android.util.SparseArray;
import com.hisavana.common.bean.AdSourceConfig;
import com.hisavana.common.constant.ComConstants;
import com.hisavana.common.interfacz.IBaseAdSummary;
import com.hisavana.common.interfacz.Iad;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.common.utils.AdUtil;
import com.hisavana.mediation.config.TAdManager;

public class o {

    public static final int[] f59621b = {0, 1, 2, 3, 4, 5, 12, 8, 11, 6, 9, 14, 15, 16, 17};

    public static final SparseArray f59622c;

    public final SparseArray f59623a = new SparseArray();

    public static class a {

        public static final o f59624a = new o();
    }

    static {
        SparseArray sparseArray = new SparseArray();
        f59622c = sparseArray;
        sparseArray.put(0, "com.hisavana.adxlibrary.check.ExistsCheck");
        sparseArray.put(1, "com.hisavana.admoblibrary.check.ExistsCheck");
        sparseArray.put(2, "com.hisavana.fblibrary.excuter.check.ExistsCheck");
        sparseArray.put(3, "com.hisavana.applovin.check.ExistsCheck");
        sparseArray.put(4, "com.hisavana.unity.check.ExistsCheck");
        sparseArray.put(5, "com.hisavana.ironsource.check.ExistsCheck");
        sparseArray.put(8, "com.hisavana.inmobi.check.ExistsCheck");
        sparseArray.put(12, "com.hisavana.vungle.check.ExistsCheck");
        sparseArray.put(11, "com.hisavana.adcolony.check.ExistsCheck");
        sparseArray.put(9, "com.hisavana.mintegral.check.ExistsCheck");
        sparseArray.put(14, "com.hisavana.max.check.ExistsCheck");
        sparseArray.put(15, "com.hisavana.yandex.check.ExistsCheck");
        sparseArray.put(16, "com.hisavana.bigo.check.ExistsCheck");
        sparseArray.put(6, "com.hisavana.pangle.check.ExistsCheck");
        sparseArray.put(17, "com.hisavana.topon.check.ExistsCheck");
    }

    public static o a() {
        return a.f59624a;
    }

    public static boolean e(Iad iad) {
        if (iad == null) {
            return false;
        }
        return AdUtil.isBiddingNetwork(iad.getNetwork());
    }

    public final String b(int i10) {
        return (String) f59622c.get(i10);
    }

    public final void c(Context context, int i10, TAdManager.AdConfig adConfig) {
        boolean z10;
        IBaseAdSummary iBaseAdSummary;
        String strB = b(i10);
        IBaseAdSummary iBaseAdSummary2 = null;
        try {
            iBaseAdSummary = (IBaseAdSummary) Class.forName(strB).newInstance();
            z10 = true;
        } catch (Throwable unused) {
            z10 = false;
            iBaseAdSummary = null;
        }
        AdLogUtil.Log().d(ComConstants.SDK_INIT, "platform classname = " + strB + " exist = " + z10);
        if (z10) {
            try {
                AdSourceConfig adSourceConfig = new AdSourceConfig();
                adSourceConfig.isDebug = adConfig.isDebug();
                adSourceConfig.pkgEvn = adConfig.getPkgEvn();
                adSourceConfig.appId = adConfig.getAppId();
                adSourceConfig.testDevice = adConfig.isTestDevice();
                adSourceConfig.isLite = adConfig.isLite();
                adSourceConfig.vidAppId = adConfig.getAppId();
                adSourceConfig.appIconId = adConfig.getAppIconId();
                adSourceConfig.isInitAdMob = adConfig.isInitAdmob();
                adSourceConfig.isInitAlliance = adConfig.isInitAlliance();
                adSourceConfig.defaultVersion = adConfig.getDefaultVersion();
                adSourceConfig.defaultMaterialMaxSize = adConfig.getDefaultMaterialMaxSize();
                adSourceConfig.shouldOptimizeImageLoading = adConfig.getShouldOptimizeImageLoading();
                adSourceConfig.isEnableRewardedToast = adConfig.checkEnableRewardedToast();
                adSourceConfig.isEnableWebRecommendFeature = adConfig.checkEnableWebRecommendFeature();
                adSourceConfig.pangleAppId = adConfig.getPangleAppId();
                adSourceConfig.isClosePangleWebFileLock = adConfig.isClosePangleWebFileLock();
                iBaseAdSummary.init(context, adSourceConfig);
                iBaseAdSummary2 = iBaseAdSummary;
            } catch (Throwable th2) {
                AdLogUtil.Log().e(ComConstants.SDK_INIT, "ad source init error source:" + i10 + " error:" + th2.getMessage());
            }
            if (iBaseAdSummary2 != null) {
                this.f59623a.put(i10, iBaseAdSummary2);
            }
        }
    }

    public void d(Context context, TAdManager.AdConfig adConfig) {
        for (int i10 : f59621b) {
            c(context, i10, adConfig);
        }
    }

    public IBaseAdSummary f(int i10) {
        return (IBaseAdSummary) this.f59623a.get(i10);
    }
}
