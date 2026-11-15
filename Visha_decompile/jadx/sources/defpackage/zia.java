package defpackage;

import android.content.Context;
import android.util.Log;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.bean.TAdRequestBody;
import com.hisavana.common.interfacz.TAdListener;
import com.hisavana.mediation.ad.TNativeAd;
import com.transsion.onlinevideo.tiktok.ad.AdSlotRemoveReason;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class zia {
    public static final a e = new a(null);
    public final bja a;
    public final c b;
    public int c;
    public rka d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public final class b extends TAdListener {
        public final int a;
        public final String b;
        public final TNativeAd c;
        public final long d;
        public boolean e;
        public final zia f;

        public b(zia ziaVar, int i, String str, TNativeAd tNativeAd, long j) {
            y45.j(str, "adId");
            y45.j(tNativeAd, "nativeAd");
            this.f = ziaVar;
            this.a = i;
            this.b = str;
            this.c = tNativeAd;
            this.d = j;
        }

        public final void a() {
            if (this.f.c == this.a) {
                this.f.c = -1;
            }
        }

        public final void b(int i, String str) {
            if (this.e) {
                return;
            }
            this.e = true;
            rz5.a.d(3, i, System.currentTimeMillis() - this.d, str);
        }

        @Override
        public void onClicked(int i) {
            Log.i("TiktokAdPrefetcher", "onClicked source=" + i + ",nativeAd=" + this.c);
        }

        @Override
        public void onClosed(int i) {
            Log.i("TiktokAdPrefetcher", "onClosed source=" + i + ",nativeAd=" + this.c);
        }

        @Override
        public void onError(TAdErrorCode tAdErrorCode) {
            a();
            Log.e("TiktokAdPrefetcher", "onError " + tAdErrorCode + " milestone=" + this.a);
            b(0, tAdErrorCode != null ? tAdErrorCode.toString() : null);
            this.c.destroy();
            this.f.b.b(this.a, AdSlotRemoveReason.LOAD_FAILED);
        }

        @Override
        public void onLoad() {
            a();
            List<TAdNativeInfo> nativeAdInfo = this.c.getNativeAdInfo();
            List<TAdNativeInfo> list = nativeAdInfo;
            if (list == null || list.isEmpty()) {
                Log.w("TiktokAdPrefetcher", "onLoad empty milestone=" + this.a);
                b(0, "empty_native_infos");
                this.c.destroy();
                this.f.b.b(this.a, AdSlotRemoveReason.LOAD_FAILED);
                return;
            }
            TAdNativeInfo tAdNativeInfo = (TAdNativeInfo) i81.q0(nativeAdInfo);
            if (tAdNativeInfo == null || tAdNativeInfo.isExpired()) {
                Log.w("TiktokAdPrefetcher", "onLoad invalid/expired milestone=" + this.a);
                b(0, (tAdNativeInfo == null || !tAdNativeInfo.isExpired()) ? "invalid_native_info" : "expired");
                if (tAdNativeInfo != null) {
                    tAdNativeInfo.release();
                }
                this.c.destroy();
                this.f.b.b(this.a, (tAdNativeInfo == null || !tAdNativeInfo.isExpired()) ? AdSlotRemoveReason.LOAD_FAILED : AdSlotRemoveReason.PREFETCH_INVALID);
                return;
            }
            b(1, null);
            rka rkaVar = this.f.d;
            if (rkaVar != null) {
                rkaVar.g();
            }
            this.f.d = new rka(this.a, this.c, tAdNativeInfo, this.b);
            Log.d("TiktokAdPrefetcher", "onLoad ok milestone=" + this.a);
            this.f.b.a(this.a);
        }

        @Override
        public void onNativeFeedClicked(int i, TAdNativeInfo tAdNativeInfo) {
            Log.i("TiktokAdPrefetcher", "onNativeFeedClicked source=" + i + ",adNativeInfo=" + tAdNativeInfo);
        }

        @Override
        public void onNativeFeedShow(int i, TAdNativeInfo tAdNativeInfo) {
            Log.i("TiktokAdPrefetcher", "onNativeFeedShow source=" + i + ",adNativeInfo=" + tAdNativeInfo);
        }

        @Override
        public void onShow(int i) {
            Log.i("TiktokAdPrefetcher", "onShow source=" + i + ",nativeAd=" + this.c);
        }

        @Override
        public void onShowError(TAdErrorCode tAdErrorCode) {
            Log.e("TiktokAdPrefetcher", "onShowError errorCode=" + tAdErrorCode);
        }

        @Override
        public void onClosed(TAdNativeInfo tAdNativeInfo) {
            Log.i("TiktokAdPrefetcher", "onClosed tAdNativeInfo=" + tAdNativeInfo);
        }
    }

    public interface c {
        void a(int i);

        void b(int i, AdSlotRemoveReason adSlotRemoveReason);
    }

    public zia(bja bjaVar, c cVar) {
        y45.j(bjaVar, "resolver");
        y45.j(cVar, "callback");
        this.a = bjaVar;
        this.b = cVar;
        this.c = -1;
    }

    public final void f() {
        Log.i("TiktokAdPrefetcher", "clearPending " + this.d);
        rka rkaVar = this.d;
        if (rkaVar != null) {
            rkaVar.g();
        }
        this.d = null;
    }

    public final void g(int i) {
        rka rkaVar = this.d;
        if (rkaVar != null && rkaVar.c() == i) {
            Log.i("TiktokAdPrefetcher", "clearPendingForMilestone milestone=" + i);
            rkaVar.g();
            this.d = null;
            if (this.c == i) {
                this.c = -1;
            }
        }
    }

    public final void h(rka rkaVar) {
        y45.j(rkaVar, "ad");
        if (this.d == rkaVar) {
            this.d = null;
        }
    }

    public final void i(Context context, int i, int i2) {
        String strM;
        Integer numZ;
        y45.j(context, "context");
        if (!this.a.E() || (strM = this.a.m()) == null || strM.length() == 0 || (numZ = this.a.z()) == null) {
            return;
        }
        int iIntValue = numZ.intValue();
        bja bjaVar = this.a;
        if (bjaVar.t(bjaVar.o(iIntValue))) {
            return;
        }
        rka rkaVarJ = j();
        if (rkaVarJ != null) {
            if (rkaVarJ.c() == iIntValue) {
                return;
            }
            Log.i("TiktokAdPrefetcher", "maybePrefetch " + this.d);
            rkaVarJ.g();
            this.d = null;
        }
        if (this.c != iIntValue && i + 1 >= iIntValue - 2) {
            l(context, strM, iIntValue);
        }
    }

    public final rka j() {
        rka rkaVar = this.d;
        if (rkaVar == null) {
            return null;
        }
        if (rkaVar.f()) {
            return rkaVar;
        }
        Log.i("TiktokAdPrefetcher", "peekPendingReady release");
        rkaVar.g();
        this.d = null;
        return null;
    }

    public final void k() {
        Log.i("TiktokAdPrefetcher", "releaseAll");
        f();
        this.c = -1;
    }

    public final void l(Context context, String str, int i) {
        this.c = i;
        Log.d("TiktokAdPrefetcher", "startLoad milestone=" + i);
        long jCurrentTimeMillis = System.currentTimeMillis();
        TNativeAd tNativeAd = new TNativeAd(context.getApplicationContext(), str);
        tNativeAd.setRequestBody(new TAdRequestBody.AdRequestBodyBuild().setAdListener(new b(this, i, str, tNativeAd, jCurrentTimeMillis)).build());
        rz5.a.c(3);
        tNativeAd.loadAd();
    }
}
