package com.cloud.hisavana.sdk;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.PopupWindow;
import android.widget.Toast;
import com.cloud.hisavana.sdk.api.view.AdCloseView;
import com.cloud.hisavana.sdk.common.activity.AdvertiserLinkActivity;
import com.cloud.hisavana.sdk.common.activity.HisavanaInterstitialTemplateActivity;
import com.cloud.hisavana.sdk.common.activity.PersonalCloseAdActivity;
import com.cloud.hisavana.sdk.common.activity.TAdInterstitialActivity;
import com.cloud.hisavana.sdk.common.bean.TaNativeInfo;
import com.cloud.hisavana.sdk.common.constant.Constants;
import com.cloud.hisavana.sdk.common.widget.expandmenu.AdExpandMenuContentView;
import com.cloud.hisavana.sdk.common.widget.expandmenu.AdExpandMenuItemView;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import defpackage.and;
import defpackage.ikd;
import defpackage.kn8;
import defpackage.vl4;
import defpackage.zk5;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

public class u {
    public WeakReference b;
    public WeakReference c;
    public long a = 0;
    public final Map d = new HashMap();
    public final Map e = new HashMap();

    public class a implements View.OnClickListener {
        public final Context b;
        public final Object c;
        public final AdsDTO d;
        public final AdCloseView e;
        public final boolean f;

        public a(Context context, Object obj, AdsDTO adsDTO, AdCloseView adCloseView, boolean z) {
            this.b = context;
            this.c = obj;
            this.d = adsDTO;
            this.e = adCloseView;
            this.f = z;
        }

        @Override
        public void onClick(View view) {
            u.this.h(this.b, this.c, this.d, this.e, this.f);
        }
    }

    public static class b {
        public static final int[] a;
        public static final int[] b;

        static {
            int[] iArr = new int[AdExpandMenuItemView.Type.values().length];
            b = iArr;
            try {
                iArr[AdExpandMenuItemView.Type.PERSONALISE_CLOSE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                b[AdExpandMenuItemView.Type.ADVERTISER_INFO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                b[AdExpandMenuItemView.Type.COPY_LINK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[Constants.AdDisplayRule.values().length];
            a = iArr2;
            try {
                iArr2[Constants.AdDisplayRule.RU.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[Constants.AdDisplayRule.UNIVERSAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public static class c {
        public static final u a = new u();
    }

    public static u n() {
        return c.a;
    }

    public void b() {
        Object obj;
        WeakReference weakReference = this.b;
        if (weakReference == null || (obj = weakReference.get()) == null) {
            return;
        }
        k(obj);
    }

    public void c(int i) {
        Object obj;
        Object obj2;
        if (vl4.g()) {
            WeakReference weakReference = (WeakReference) this.d.get(Integer.valueOf(i));
            if (weakReference == null || (obj2 = weakReference.get()) == null || obj2.hashCode() != i) {
                return;
            }
            k(obj2);
            return;
        }
        WeakReference weakReference2 = this.b;
        if (weakReference2 == null || (obj = weakReference2.get()) == null || obj.hashCode() != i) {
            return;
        }
        k(obj);
    }

    public void d(Context context, AdCloseView adCloseView, Object obj, AdsDTO adsDTO) {
        e(context, adCloseView, obj, adsDTO, false);
    }

    public void e(Context context, AdCloseView adCloseView, Object obj, AdsDTO adsDTO, boolean z) {
        if (adCloseView == null || adsDTO == null) {
            return;
        }
        ikd.b().d("ssp", "AdCloseManager -------> registerCloseAd ---- >");
        adCloseView.setVisibility(0);
        adCloseView.setOnClickListener(new a(context, obj, adsDTO, adCloseView, z));
    }

    public final void g(Context context, Object obj, AdsDTO adsDTO) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("tag_ad_bean", adsDTO);
        bundle.putInt("close_hash_code", obj == null ? 0 : obj.hashCode());
        Intent intent = new Intent(context, (Class<?>) PersonalCloseAdActivity.class);
        intent.putExtras(bundle);
        if (!vl4.g()) {
            if (!(context instanceof Activity)) {
                intent.setFlags(268435456);
            }
            context.startActivity(intent);
            return;
        }
        Activity activityH = zk5.h();
        if (!zk5.i(activityH)) {
            ikd.b().w("ssp", "click() --> topActivity is not alive");
            return;
        }
        try {
            activityH.startActivity(intent);
        } catch (Exception e) {
            ikd.b().e("ssp", "show() --> startActivity error", e);
        }
    }

    public void h(Context context, Object obj, AdsDTO adsDTO, AdCloseView adCloseView, boolean z) {
        ikd.b().d("ssp", "registerCloseAd ---- >  " + obj);
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.a < 2000) {
            ikd.b().d("ssp", "registerCloseAd ---- > interval time not reached");
            return;
        }
        this.a = jCurrentTimeMillis;
        if (obj == null) {
            return;
        }
        if (adsDTO.getSource() == 4 || z) {
            k(obj);
            return;
        }
        if (m(context, obj, adsDTO, adCloseView)) {
            o(obj);
            if (!(obj instanceof q1) || adsDTO.getDisplayRule() == Constants.AdDisplayRule.RU) {
                return;
            }
            ((q1) obj).r0(false);
        }
    }

    public final void i(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) AdvertiserLinkActivity.class);
        intent.putExtra("url", str);
        if (!vl4.g()) {
            if (!(context instanceof Activity)) {
                intent.setFlags(268435456);
            }
            context.startActivity(intent);
            return;
        }
        Activity activityH = zk5.h();
        if (!zk5.i(activityH)) {
            ikd.b().w("ssp", "startBaseWebActivity() --> topActivity is not alive");
            return;
        }
        try {
            activityH.startActivity(intent);
        } catch (Exception e) {
            ikd.b().e("ssp", "startBaseWebActivity() --> startActivity error", e);
        }
    }

    public final void f(AdExpandMenuItemView.Type type, Context context, AdsDTO adsDTO, Object obj) {
        if (context == null || adsDTO == null || obj == null) {
            return;
        }
        int i = b.b[type.ordinal()];
        if (i == 1) {
            g(context, obj, adsDTO);
            if (obj instanceof q1) {
                ((q1) obj).r0(false);
                return;
            }
            return;
        }
        if (i == 2) {
            i(context, kn8.b(adsDTO));
            if (obj instanceof q1) {
                ((q1) obj).r0(false);
                return;
            }
            return;
        }
        if (i != 3) {
            return;
        }
        try {
            Object systemService = context.getSystemService("clipboard");
            if (systemService instanceof ClipboardManager) {
                ClipboardManager clipboardManager = (ClipboardManager) systemService;
                ClipData clipDataNewPlainText = ClipData.newPlainText(context.getString(R.string.copy_link), kn8.d(adsDTO));
                if (clipDataNewPlainText != null) {
                    clipboardManager.setPrimaryClip(clipDataNewPlainText);
                    Toast.makeText(context, context.getString(R.string.copy_successfully), 0).show();
                }
            }
        } catch (Exception e) {
            ikd.b().e("ssp", Log.getStackTraceString(e));
        }
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0047  */
    public final void k(Object obj) {
        TaNativeInfo taNativeInfo;
        if (obj == null) {
            return;
        }
        if (obj instanceof q1) {
            ((q1) obj).x0();
        } else if (obj instanceof and) {
            ((and) obj).P();
        } else if (obj instanceof b0) {
            if (vl4.g()) {
                WeakReference weakReference = (WeakReference) this.e.get(Integer.valueOf(obj.hashCode()));
                if (weakReference != null) {
                    taNativeInfo = (TaNativeInfo) weakReference.get();
                } else {
                    taNativeInfo = null;
                }
            } else {
                WeakReference weakReference2 = this.c;
                if (weakReference2 != null) {
                    taNativeInfo = (TaNativeInfo) weakReference2.get();
                } else {
                    taNativeInfo = null;
                }
            }
            if (taNativeInfo != null) {
                ((b0) obj).R(taNativeInfo);
            }
        } else if (obj instanceof TAdInterstitialActivity) {
            ((TAdInterstitialActivity) obj).H0();
        } else if (obj instanceof HisavanaInterstitialTemplateActivity) {
            ((HisavanaInterstitialTemplateActivity) obj).G();
        }
        if (vl4.g()) {
            this.d.remove(Integer.valueOf(obj.hashCode()));
            this.e.remove(Integer.valueOf(obj.hashCode()));
        }
    }

    public void l(Object obj, TaNativeInfo taNativeInfo) {
        if (!vl4.g()) {
            this.b = new WeakReference(obj);
            this.c = new WeakReference(taNativeInfo);
        } else {
            if (obj == null || taNativeInfo == null) {
                return;
            }
            this.d.put(Integer.valueOf(obj.hashCode()), new WeakReference(obj));
            this.e.put(Integer.valueOf(obj.hashCode()), new WeakReference(taNativeInfo));
        }
    }

    public boolean m(final Context context, final Object obj, final AdsDTO adsDTO, AdCloseView adCloseView) {
        if (context != null && adsDTO != null) {
            int i = b.a[adsDTO.getDisplayRule().ordinal()];
            if (i != 1) {
                if (i == 2) {
                    g(context, obj, adsDTO);
                }
            } else if (obj != null && adCloseView != null) {
                PopupWindow popupWindowI = com.cloud.hisavana.sdk.common.widget.expandmenu.a.i(adCloseView, kn8.a(adsDTO), new AdExpandMenuContentView.d() {
                    @Override
                    public final void a(AdExpandMenuItemView.Type type) {
                        this.a.f(context, adsDTO, obj, type);
                    }
                });
                if (obj instanceof q1) {
                    ((q1) obj).f0(popupWindowI);
                }
            }
            return true;
        }
        return false;
    }

    public void o(Object obj) {
        if (!vl4.g()) {
            this.b = new WeakReference(obj);
        } else if (obj != null) {
            this.d.put(Integer.valueOf(obj.hashCode()), new WeakReference(obj));
        }
    }

    public long p() {
        return this.a;
    }
}
