package com.hisavana.fblibrary.excuter.check;

import android.content.Context;
import androidx.annotation.NonNull;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.sdk.commonutil.util.Preconditions;
import com.facebook.ads.AdSettings;
import com.facebook.ads.AudienceNetworkAds;
import com.facebook.ads.BidderTokenProvider;
import com.facebook.biddingkit.bridge.BiddingKit;
import com.hisavana.common.base.BaseBanner;
import com.hisavana.common.base.BaseInterstitial;
import com.hisavana.common.base.BaseNative;
import com.hisavana.common.base.BaseNativeViewHolder;
import com.hisavana.common.base.BaseQueryPrice;
import com.hisavana.common.base.BaseSplash;
import com.hisavana.common.base.BaseVideo;
import com.hisavana.common.bean.AdSourceConfig;
import com.hisavana.common.bean.Network;
import com.hisavana.common.constant.ComConstants;
import com.hisavana.common.interfacz.IBaseAdSummary;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.fblibrary.excuter.FanBanner;
import com.hisavana.fblibrary.excuter.FanInterstitial;
import com.hisavana.fblibrary.excuter.FanNative;
import com.hisavana.fblibrary.excuter.FanVideo;
import com.hisavana.fblibrary.excuter.bidding.FanBidding;
import com.hisavana.fblibrary.excuter.check.ExistsCheck;
import com.hisavana.fblibrary.excuter.holder.NativeAdViewHolder;
import com.hisavana.fblibrary.excuter.util.PltatformUtil;
import defpackage.cp3;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

public class ExistsCheck implements IBaseAdSummary {
    public static final AtomicBoolean a = new AtomicBoolean(false);
    public static final AtomicInteger b = new AtomicInteger(0);
    public static boolean c = false;
    public static boolean d = false;
    public static final CopyOnWriteArrayList<a> e = new CopyOnWriteArrayList<>();

    public interface a {
        void a();
    }

    public static void a() {
        b.set(2);
        Iterator<a> it = e.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
        e.clear();
    }

    public static void b(Context context) {
        try {
            ComConstants.fbBidToken = BidderTokenProvider.getBidderToken(context);
            AdLogUtil.Log().d("FanExistsCheck", "ExistsCheck -fb-> get fbtoken success!!!");
            if (d) {
                AdSettings.setTestMode(true);
            }
        } catch (Exception e2) {
            AdLogUtil.Log().e(ComConstants.SDK_INIT, "takeFbBidToken error: " + e2.getMessage());
        }
        Preconditions.d(new Preconditions.a() {
            @Override
            public final void onRun() {
                ExistsCheck.a();
            }
        });
    }

    public static void initFan(Context context, AudienceNetworkAds.InitListener initListener) {
        if (context == null) {
            return;
        }
        AudienceNetworkAds.buildInitSettings(context).withInitListener(initListener).initialize();
    }

    public static boolean isIsTestDevice() {
        return d;
    }

    public static void takeFbBidToken(Context context, a aVar) {
        if (aVar == null) {
            return;
        }
        a(context);
        AtomicInteger atomicInteger = b;
        if (atomicInteger.get() == 2) {
            aVar.a();
            return;
        }
        e.add(aVar);
        if (atomicInteger.compareAndSet(0, 1)) {
            AdLogUtil.Log().d("FanExistsCheck", "start to takeFbBidToken");
            final Context applicationContext = context.getApplicationContext();
            HSScopeHelper.a.l(new Runnable() {
                @Override
                public final void run() {
                    ExistsCheck.b(applicationContext);
                }
            });
        }
    }

    @Override
    public BaseBanner getBanner(Context context, Network network, int i, int i2) {
        return cp3.d(context, network, new FanBanner(context, network, i));
    }

    @Override
    public BaseInterstitial getInterstitial(Context context, Network network) {
        return cp3.e(context, network, new FanInterstitial(context, network));
    }

    @Override
    public BaseNative getNative(Context context, Network network, int i) {
        return cp3.a(context, network, i, new FanNative(context, network, i));
    }

    @Override
    public BaseNativeViewHolder getNativeViewHolder() {
        return new NativeAdViewHolder();
    }

    @Override
    public BaseQueryPrice getQueryPrice() {
        return cp3.b(new FanBidding());
    }

    @Override
    public BaseSplash getSplash(Context context, Network network) {
        return null;
    }

    @Override
    public BaseVideo getVideo(Context context, Network network) {
        return cp3.c(context, network, new FanVideo(context, network));
    }

    @Override
    public void init(@NonNull Context context, AdSourceConfig adSourceConfig) {
        if (adSourceConfig != null) {
            c = adSourceConfig.isDebug;
            d = adSourceConfig.testDevice;
        }
        if (d) {
            PltatformUtil.addTestDevice(context);
        }
        PltatformUtil.handler = AdSourceConfig.handler;
    }

    public static void a(Context context) {
        AtomicBoolean atomicBoolean = a;
        if (atomicBoolean.get()) {
            return;
        }
        AdLogUtil.Log().d("FanExistsCheck", "start to initBiddingKit");
        try {
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("timeout_ms", 2000);
            jSONObject.put("auction", jSONObject2);
            BiddingKit.init(context.getApplicationContext(), jSONObject.toString());
            BiddingKit.setDebugBuild(c);
            atomicBoolean.set(true);
        } catch (Exception e2) {
            AdLogUtil.Log().w(ComConstants.SDK_INIT, "fan bidding init error, " + e2.getMessage());
        }
    }
}
