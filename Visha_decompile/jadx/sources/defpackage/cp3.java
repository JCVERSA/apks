package defpackage;

import android.content.Context;
import com.hisavana.common.base.BaseNative;
import com.hisavana.common.base.BaseQueryPrice;
import com.hisavana.common.base.BaseVideo;
import com.hisavana.common.bean.Network;
import com.hisavana.common.constant.ComConstants;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.fblibrary.excuter.FanBanner;
import com.hisavana.fblibrary.excuter.FanInterstitial;
import java.lang.reflect.Constructor;

public abstract class cp3 {
    public static BaseNative a(Context context, Network network, int i, BaseNative baseNative) {
        if (ComConstants.AUTOMATIC_TEST_STATUS.booleanValue()) {
            try {
                Constructor<?> constructor = Class.forName("com.hisavana.mock_util.fan.MockFanNative").getConstructor(Context.class, Network.class, Integer.TYPE);
                AdLogUtil.Log().d("automatic_test", "fanNativeAd mock");
                return (BaseNative) constructor.newInstance(context, network, Integer.valueOf(i));
            } catch (Exception unused) {
                AdLogUtil.Log().e("automatic_test_error - fannative");
            }
        }
        return baseNative;
    }

    public static BaseQueryPrice b(BaseQueryPrice baseQueryPrice) {
        if (ComConstants.AUTOMATIC_TEST_STATUS.booleanValue()) {
            try {
                return (BaseQueryPrice) Class.forName("com.hisavana.mock_util.fan.MockFanBidding").newInstance();
            } catch (Exception unused) {
                AdLogUtil.Log().e("automatic_test_error - fanbidding");
            }
        }
        return baseQueryPrice;
    }

    public static BaseVideo c(Context context, Network network, BaseVideo baseVideo) {
        if (ComConstants.AUTOMATIC_TEST_STATUS.booleanValue()) {
            try {
                Constructor<?> constructor = Class.forName("com.hisavana.mock_util.fan.MockFanVideoAd").getConstructor(Context.class, Network.class);
                AdLogUtil.Log().d("automatic_test", "fanVideoAd mock");
                return (BaseVideo) constructor.newInstance(context, network);
            } catch (Exception unused) {
                AdLogUtil.Log().e("automatic_test_error - fanvideo");
            }
        }
        return baseVideo;
    }

    public static FanBanner d(Context context, Network network, FanBanner fanBanner) {
        if (ComConstants.AUTOMATIC_TEST_STATUS.booleanValue()) {
            try {
                Constructor<?> constructor = Class.forName("com.hisavana.mock_util.fan.MockFanBannerAd").getConstructor(Context.class, Network.class);
                AdLogUtil.Log().d("automatic_test", "fanbanner mock");
                return (FanBanner) constructor.newInstance(context, network);
            } catch (Exception unused) {
                AdLogUtil.Log().e("automatic_test_error - fanbanner");
            }
        }
        return fanBanner;
    }

    public static FanInterstitial e(Context context, Network network, FanInterstitial fanInterstitial) {
        if (ComConstants.AUTOMATIC_TEST_STATUS.booleanValue()) {
            try {
                Constructor<?> constructor = Class.forName("com.hisavana.mock_util.fan.MockFanInterstitialAd").getConstructor(Context.class, Network.class);
                AdLogUtil.Log().d("automatic_test", "fanInterstitialAd mock");
                return (FanInterstitial) constructor.newInstance(context, network);
            } catch (Exception unused) {
                AdLogUtil.Log().e("automatic_test_error - faninterstitial");
            }
        }
        return fanInterstitial;
    }
}
