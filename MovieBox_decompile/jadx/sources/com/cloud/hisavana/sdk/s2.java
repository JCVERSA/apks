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
import com.cloud.hisavana.sdk.common.activity.PersonalCloseAdActivity;
import com.cloud.hisavana.sdk.common.activity.TAdInterstitialActivity;
import com.cloud.hisavana.sdk.common.bean.TaNativeInfo;
import com.cloud.hisavana.sdk.common.constant.Constants;
import com.cloud.hisavana.sdk.common.widget.expandmenu.AdExpandMenuContentView;
import com.cloud.hisavana.sdk.common.widget.expandmenu.AdExpandMenuItemView;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import java.lang.ref.WeakReference;
import org.mvel2.ast.ASTNode;

public class s2 {

    private long f22257a = 0;

    private WeakReference f22258b;

    private WeakReference f22259c;

    class a implements View.OnClickListener {

        final Object f22260a;

        final AdsDTO f22261b;

        final boolean f22262c;

        final Context f22263d;

        final AdCloseView f22264e;

        a(Object obj, AdsDTO adsDTO, boolean z10, Context context, AdCloseView adCloseView) {
            this.f22260a = obj;
            this.f22261b = adsDTO;
            this.f22262c = z10;
            this.f22263d = context;
            this.f22264e = adCloseView;
        }

        @Override
        public void onClick(View view) {
            b4.b().d("ssp", "registerCloseAd ---- >  " + this.f22260a);
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - s2.this.f22257a < 2000) {
                b4.b().d("ssp", "registerCloseAd ---- > interval time not reached");
                return;
            }
            s2.this.f22257a = jCurrentTimeMillis;
            if (this.f22260a == null) {
                return;
            }
            if (this.f22261b.getSource() == 4 || this.f22262c) {
                s2.this.m(this.f22260a);
                return;
            }
            if (s2.this.o(this.f22263d, this.f22260a, this.f22261b, this.f22264e)) {
                s2.this.q(this.f22260a);
                if (!(this.f22260a instanceof e1) || this.f22261b.getDisplayRule() == Constants.AdDisplayRule.RU) {
                    return;
                }
                ((e1) this.f22260a).O();
            }
        }
    }

    static class b {

        static final int[] f22266a;

        static final int[] f22267b;

        static {
            int[] iArr = new int[AdExpandMenuItemView.Type.values().length];
            f22267b = iArr;
            try {
                iArr[AdExpandMenuItemView.Type.PERSONALISE_CLOSE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f22267b[AdExpandMenuItemView.Type.ADVERTISER_INFO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f22267b[AdExpandMenuItemView.Type.COPY_LINK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[Constants.AdDisplayRule.values().length];
            f22266a = iArr2;
            try {
                iArr2[Constants.AdDisplayRule.RU.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f22266a[Constants.AdDisplayRule.UNIVERSAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public static class c {

        public static final s2 f22268a = new s2();
    }

    private void i(Context context, Object obj, AdsDTO adsDTO) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("tag_ad_bean", adsDTO);
        bundle.putInt("close_hash_code", obj == null ? 0 : obj.hashCode());
        Intent intent = new Intent(context, (Class<?>) PersonalCloseAdActivity.class);
        intent.putExtras(bundle);
        if (!(context instanceof Activity)) {
            intent.setFlags(ASTNode.DEOP);
        }
        context.startActivity(intent);
    }

    private void j(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) AdvertiserLinkActivity.class);
        intent.putExtra("url", str);
        if (!(context instanceof Activity)) {
            intent.setFlags(ASTNode.DEOP);
        }
        context.startActivity(intent);
    }

    public void h(AdExpandMenuItemView.Type type, Context context, AdsDTO adsDTO, Object obj) {
        if (context == null || adsDTO == null || obj == null) {
            return;
        }
        int i10 = b.f22267b[type.ordinal()];
        if (i10 == 1) {
            i(context, obj, adsDTO);
            if (obj instanceof e1) {
                ((e1) obj).O();
                return;
            }
            return;
        }
        if (i10 == 2) {
            j(context, com.cloud.hisavana.sdk.common.util.e0.b(adsDTO));
            if (obj instanceof e1) {
                ((e1) obj).O();
                return;
            }
            return;
        }
        if (i10 != 3) {
            return;
        }
        try {
            Object systemService = context.getSystemService("clipboard");
            if (systemService instanceof ClipboardManager) {
                ClipboardManager clipboardManager = (ClipboardManager) systemService;
                ClipData clipDataNewPlainText = ClipData.newPlainText(context.getString(R$string.copy_link), com.cloud.hisavana.sdk.common.util.e0.d(adsDTO));
                if (clipDataNewPlainText != null) {
                    clipboardManager.setPrimaryClip(clipDataNewPlainText);
                    Toast.makeText(context, context.getString(R$string.copy_successfully), 0).show();
                }
            }
        } catch (Exception e10) {
            b4.b().e("ssp", Log.getStackTraceString(e10));
        }
    }

    public void m(Object obj) {
        TaNativeInfo taNativeInfo;
        if (obj == null) {
            return;
        }
        if (obj instanceof e1) {
            ((e1) obj).z0();
            return;
        }
        if (obj instanceof p2) {
            ((p2) obj).P();
            return;
        }
        if (!(obj instanceof x2)) {
            if (obj instanceof TAdInterstitialActivity) {
                ((TAdInterstitialActivity) obj).L0();
            }
        } else {
            WeakReference weakReference = this.f22259c;
            if (weakReference == null || (taNativeInfo = (TaNativeInfo) weakReference.get()) == null) {
                return;
            }
            ((x2) obj).S(taNativeInfo);
        }
    }

    public static s2 p() {
        return c.f22268a;
    }

    public void d() {
        Object obj;
        WeakReference weakReference = this.f22258b;
        if (weakReference == null || (obj = weakReference.get()) == null) {
            return;
        }
        m(obj);
    }

    public void e(int i10) {
        Object obj;
        WeakReference weakReference = this.f22258b;
        if (weakReference == null || (obj = weakReference.get()) == null || obj.hashCode() != i10) {
            return;
        }
        m(obj);
    }

    public void f(Context context, AdCloseView adCloseView, Object obj, AdsDTO adsDTO) {
        g(context, adCloseView, obj, adsDTO, false);
    }

    public void g(Context context, AdCloseView adCloseView, Object obj, AdsDTO adsDTO, boolean z10) {
        if (adCloseView == null || adsDTO == null) {
            return;
        }
        b4.b().d("ssp", "AdCloseManager -------> registerCloseAd ---- >");
        adCloseView.setVisibility(0);
        adCloseView.setOnClickListener(new a(obj, adsDTO, z10, context, adCloseView));
    }

    public void n(Object obj, TaNativeInfo taNativeInfo) {
        this.f22258b = new WeakReference(obj);
        this.f22259c = new WeakReference(taNativeInfo);
    }

    public boolean o(final Context context, final Object obj, final AdsDTO adsDTO, AdCloseView adCloseView) {
        if (context != null && adsDTO != null) {
            int i10 = b.f22266a[adsDTO.getDisplayRule().ordinal()];
            if (i10 != 1) {
                if (i10 == 2) {
                    i(context, obj, adsDTO);
                }
            } else if (obj != null && adCloseView != null) {
                PopupWindow popupWindowI = com.cloud.hisavana.sdk.common.widget.expandmenu.c.i(adCloseView, com.cloud.hisavana.sdk.common.util.e0.a(adsDTO), new AdExpandMenuContentView.d() {
                    @Override
                    public final void a(AdExpandMenuItemView.Type type) {
                        this.f22234a.h(context, adsDTO, obj, type);
                    }
                });
                if (obj instanceof e1) {
                    ((e1) obj).a0(popupWindowI);
                }
            }
            return true;
        }
        return false;
    }

    public void q(Object obj) {
        this.f22258b = new WeakReference(obj);
    }

    public long r() {
        return this.f22257a;
    }
}
