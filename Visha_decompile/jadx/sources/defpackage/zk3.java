package defpackage;

import android.content.Context;
import com.hisavana.admoblibrary.excuter.AdmobBanner;
import com.hisavana.admoblibrary.excuter.AdmobInterstitia;
import com.hisavana.admoblibrary.excuter.AdmobSplash;
import com.hisavana.admoblibrary.excuter.AdmobVideo;
import com.hisavana.common.base.BaseNative;
import com.hisavana.common.bean.Network;
import com.hisavana.common.constant.ComConstants;
import com.hisavana.common.utils.AdLogUtil;
import java.lang.reflect.Constructor;

public abstract class zk3 {
    public static AdmobBanner a(Context context, Network network, AdmobBanner admobBanner) {
        if (ComConstants.AUTOMATIC_TEST_STATUS.booleanValue()) {
            try {
                Constructor<?> constructor = Class.forName("com.hisavana.mock_util.admob.MockBannerAd").getConstructor(Context.class, Network.class);
                AdLogUtil.Log().d("automatic_test", "admobbanner mock");
                return (AdmobBanner) constructor.newInstance(context, network);
            } catch (Throwable unused) {
                AdLogUtil.Log().e("automatic_test_error - admobbanner");
            }
        }
        return admobBanner;
    }

    public static AdmobInterstitia b(Context context, Network network, AdmobInterstitia admobInterstitia) {
        if (ComConstants.AUTOMATIC_TEST_STATUS.booleanValue()) {
            try {
                Constructor<?> constructor = Class.forName("com.hisavana.mock_util.admob.MockInterstitialAd").getConstructor(Context.class, Network.class);
                AdLogUtil.Log().d("automatic_test", "admobInterstitialAd mock");
                return (AdmobInterstitia) constructor.newInstance(context, network);
            } catch (Exception unused) {
                AdLogUtil.Log().e("automatic_test_error - admobinterstitial");
            }
        }
        return admobInterstitia;
    }

    public static AdmobSplash c(Context context, Network network, AdmobSplash admobSplash) {
        if (ComConstants.AUTOMATIC_TEST_STATUS.booleanValue()) {
            try {
                Constructor<?> constructor = Class.forName("com.hisavana.mock_util.admob.MockSplashAd").getConstructor(Context.class, Network.class);
                AdLogUtil.Log().d("automatic_test", "admobSplashAd mock");
                return (AdmobSplash) constructor.newInstance(context, network);
            } catch (Throwable unused) {
                AdLogUtil.Log().e("automatic_test_error - admobsplash");
            }
        }
        return admobSplash;
    }

    public static AdmobVideo d(Context context, Network network, AdmobVideo admobVideo) {
        if (ComConstants.AUTOMATIC_TEST_STATUS.booleanValue()) {
            try {
                Constructor<?> constructor = Class.forName("com.hisavana.mock_util.admob.MockVideoAd").getConstructor(Context.class, Network.class);
                AdLogUtil.Log().d("automatic_test", "admobVideoAd mock");
                return (AdmobVideo) constructor.newInstance(context, network);
            } catch (Throwable unused) {
                AdLogUtil.Log().e("automatic_test_error - admobvideo");
            }
        }
        return admobVideo;
    }

    public static BaseNative e(Context context, Network network, int i, BaseNative baseNative) {
        if (ComConstants.AUTOMATIC_TEST_STATUS.booleanValue()) {
            try {
                Constructor<?> constructor = Class.forName("com.hisavana.mock_util.admob.MockAdmobNative").getConstructor(Context.class, Network.class, Integer.TYPE);
                AdLogUtil.Log().d("automatic_test", "admobNativeAd mock");
                return (BaseNative) constructor.newInstance(context, network, Integer.valueOf(i));
            } catch (Throwable unused) {
                AdLogUtil.Log().e("automatic_test_error - admobnative");
            }
        }
        return baseNative;
    }
}
