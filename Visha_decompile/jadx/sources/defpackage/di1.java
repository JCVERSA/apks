package defpackage;

import android.app.Application;
import android.content.Context;
import android.util.Log;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.dbdata.beans.appconfig.ControllerLimitBean;
import com.transsion.dbdata.beans.media.PlayVideoData;
import com.transsion.retrofit.cache.CacheManager;

public class di1 {
    public static di1 b;
    public ControllerLimitBean a = null;

    public static di1 f() {
        if (b == null) {
            synchronized (di1.class) {
                try {
                    if (b == null) {
                        b = new di1();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return b;
    }

    public static void l(ControllerLimitBean controllerLimitBean) {
    }

    public final boolean c(int[] iArr, PlayVideoData playVideoData) {
        return iArr.length == 2 && lpb.a(playVideoData.videoWidth, playVideoData.videoHeight, iArr[0], iArr[1]) > 0;
    }

    public final boolean d(PlayVideoData playVideoData, String str) {
        if (str == null || playVideoData == null) {
            return false;
        }
        return c(lpb.b(str), playVideoData);
    }

    public void e(Application application) throws Throwable {
        if (CacheManager.getInstance().mDiskLruCache == null) {
            CacheManager.getInstance().createDiskLruCache(application);
        }
        try {
            String cache = CacheManager.getInstance().getCache("controller_limit_cache_key");
            LogUtils.j("ControllerDataManager", "getControllerLimitDataCache:" + cache);
            this.a = (ControllerLimitBean) fi1.b(cache, ControllerLimitBean.class);
        } catch (Exception e) {
            LogUtils.j("ControllerDataManager", "getControllerLimitDataCache:" + e.getMessage());
        }
    }

    public boolean g(PlayVideoData playVideoData) {
        ControllerLimitBean controllerLimitBean;
        if (!pp3.j() || (controllerLimitBean = this.a) == null) {
            return false;
        }
        return d(playVideoData, controllerLimitBean.getHighResolutionTip());
    }

    public boolean h(PlayVideoData playVideoData) {
        ControllerLimitBean controllerLimitBean;
        LogUtils.j("ControllerDataManager", "isOverLimitResolution_" + playVideoData);
        if (!pp3.j() || (controllerLimitBean = this.a) == null || !d(playVideoData, controllerLimitBean.getMaxPlatformResolution())) {
            return false;
        }
        LogUtils.j("ControllerDataManager", "isOverLimitResolution_checkResolution_true");
        return true;
    }

    public boolean i(PlayVideoData playVideoData) {
        ControllerLimitBean controllerLimitBean;
        if (!pp3.j() || (controllerLimitBean = this.a) == null) {
            return false;
        }
        return d(playVideoData, controllerLimitBean.getResolutionTip());
    }

    public boolean j(PlayVideoData playVideoData, float f) {
        int iF;
        return this.a.getHighFrameRateTip() != null && f > 0.0f && (iF = lpb.f(f().a.getHighFrameRateTip())) > 0 && f > ((float) iF);
    }

    public final ControllerLimitBean k(Context context) {
        String strE = fi1.e(this.a);
        if (strE != null) {
            Log.d("ControllerDataManager", "setControllerLimitDataCache:" + strE);
        }
        CacheManager.getInstance().lambda$setCache$0("controller_limit_cache_key", strE);
        return this.a;
    }

    public void m(Context context, ControllerLimitBean controllerLimitBean) {
        this.a = controllerLimitBean;
        mc7.K(context).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.k((Context) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                di1.l((ControllerLimitBean) obj);
            }
        });
    }
}
