package com.hisavana.admoblibrary.check;

import android.content.Context;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.initialization.AdapterStatus;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import com.hisavana.admoblibrary.check.ExistsCheck;
import com.hisavana.admoblibrary.excuter.AdmobBanner;
import com.hisavana.admoblibrary.excuter.AdmobInterstitia;
import com.hisavana.admoblibrary.excuter.AdmobNative;
import com.hisavana.admoblibrary.excuter.AdmobSplash;
import com.hisavana.admoblibrary.excuter.AdmobVideo;
import com.hisavana.admoblibrary.holder.NativeAdViewHolder;
import com.hisavana.admoblibrary.util.PlatformUtil;
import com.hisavana.common.base.BaseBanner;
import com.hisavana.common.base.BaseInterstitial;
import com.hisavana.common.base.BaseInterstitialRewardedVideo;
import com.hisavana.common.base.BaseNative;
import com.hisavana.common.base.BaseNativeViewHolder;
import com.hisavana.common.base.BaseQueryPrice;
import com.hisavana.common.base.BaseSplash;
import com.hisavana.common.base.BaseVideo;
import com.hisavana.common.bean.AdMuteStatus;
import com.hisavana.common.bean.AdSourceConfig;
import com.hisavana.common.bean.Network;
import com.hisavana.common.interfacz.IBaseAdSummary;
import com.hisavana.common.utils.AdLogUtil;
import defpackage.fw5;
import defpackage.p8;
import defpackage.ul4;
import defpackage.zk3;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicInteger;

public class ExistsCheck implements IBaseAdSummary {
    public static final AtomicInteger a = new AtomicInteger(0);
    public static final ConcurrentLinkedQueue<WeakReference<a>> b = new ConcurrentLinkedQueue<>();

    public interface a {
        void a();

        void b();
    }

    public static void a(Context context, a aVar) {
        AdLogUtil.Log().d("Admob_Init", "start to init admob");
        AtomicInteger atomicInteger = a;
        if (atomicInteger.get() == 2) {
            if (aVar != null) {
                aVar.a();
                return;
            }
            return;
        }
        if (aVar != null) {
            b.add(new WeakReference<>(aVar));
        }
        if (atomicInteger.compareAndSet(0, 1)) {
            final Context applicationContext = context.getApplicationContext();
            HSScopeHelper.a.l(new Runnable() {
                @Override
                public final void run() {
                    ExistsCheck.a(applicationContext);
                }
            });
        } else if (atomicInteger.get() == 2) {
            a(true);
        }
    }

    public static void c() {
        try {
            MobileAds.setAppMuted(AdMuteStatus.MUTE_ALL);
        } catch (Exception e) {
            AdLogUtil.Log().e("ADMOB_CHECK", "setAppVolume exception " + Log.getStackTraceString(e));
        }
    }

    @Override
    public BaseBanner getBanner(Context context, Network network, int i, int i2) {
        return zk3.a(context, network, new AdmobBanner(context, network, i, i2));
    }

    @Override
    public BaseInterstitial getInterstitial(Context context, Network network) {
        return zk3.b(context, network, new AdmobInterstitia(context, network));
    }

    @Override
    public BaseInterstitialRewardedVideo getInterstitialRewarded(Context context, Network network) {
        return new p8(context, network);
    }

    @Override
    public BaseNative getNative(Context context, Network network, int i) {
        return zk3.e(context, network, i, new AdmobNative(context, network, i));
    }

    @Override
    public BaseNativeViewHolder getNativeViewHolder() {
        return new NativeAdViewHolder();
    }

    @Override
    public BaseQueryPrice getQueryPrice() {
        return null;
    }

    @Override
    public BaseSplash getSplash(Context context, Network network) {
        return zk3.c(context, network, new AdmobSplash(context, network));
    }

    @Override
    public BaseVideo getVideo(Context context, Network network) {
        return zk3.d(context, network, new AdmobVideo(context, network));
    }

    @Override
    public void init(Context context, AdSourceConfig adSourceConfig) {
        boolean z;
        boolean z2;
        String strB;
        if (adSourceConfig != null) {
            z = adSourceConfig.isInitAdMob;
            z2 = adSourceConfig.testDevice;
        } else {
            z = false;
            z2 = false;
        }
        if (z2) {
            try {
                strB = Settings.Secure.getString(context.getContentResolver(), "android_id");
            } catch (Exception e) {
                e.printStackTrace();
                strB = PlatformUtil.b();
            }
            String upperCase = fw5.a(strB).toUpperCase();
            if (!TextUtils.isEmpty(upperCase)) {
                MobileAds.setRequestConfiguration(new RequestConfiguration.Builder().setTestDeviceIds(Arrays.asList(upperCase)).build());
            }
        }
        PlatformUtil.a = AdSourceConfig.handler;
        AdLogUtil.Log().d("Admob ExistsCheck", "isInitAdmob == " + z);
        if (z) {
            a(ul4.a(), null);
        }
    }

    public static void a(Context context) {
        try {
            AdLogUtil.Log().d("Admob_Init", "Execute initialization method ");
            MobileAds.initialize(context, new OnInitializationCompleteListener() {
                @Override
                public final void onInitializationComplete(InitializationStatus initializationStatus) {
                    ExistsCheck.a(initializationStatus);
                }
            });
        } catch (Throwable th) {
            a.set(0);
            HSScopeHelper.a.p(new Runnable() {
                @Override
                public final void run() {
                    ExistsCheck.a(false);
                }
            });
            AdLogUtil.Log().d("Admob_Init", "admob init error:" + th.getMessage());
        }
    }

    public static void a(InitializationStatus initializationStatus) {
        a.set(2);
        for (Map.Entry<String, AdapterStatus> entry : initializationStatus.getAdapterStatusMap().entrySet()) {
            if (entry.getValue() != null) {
                AdLogUtil.Log().d("Admob_Init", String.format(Locale.getDefault(), "Adapter name: %s, Description: %s, Latency: %d", entry.getKey(), entry.getValue().getDescription(), Integer.valueOf(entry.getValue().getLatency())));
            }
        }
        c();
        HSScopeHelper.a.p(new Runnable() {
            @Override
            public final void run() {
                ExistsCheck.a(true);
            }
        });
    }

    public static void a(boolean z) {
        while (true) {
            WeakReference<a> weakReferencePoll = b.poll();
            if (weakReferencePoll == null) {
                return;
            }
            a aVar = weakReferencePoll.get();
            if (aVar != null) {
                if (z) {
                    aVar.a();
                } else {
                    aVar.b();
                }
            }
        }
    }
}
