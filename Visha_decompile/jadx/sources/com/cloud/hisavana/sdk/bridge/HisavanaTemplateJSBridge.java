package com.cloud.hisavana.sdk.bridge;

import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.cloud.hisavana.sdk.bridge.HisavanaTemplateJSBridge;
import com.cloud.hisavana.sdk.common.bean.PslinkInfo;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.p;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.sdk.commonutil.util.HSToastUtil;
import com.transsion.livecaption.constant.ICode;
import defpackage.ak8;
import defpackage.c74;
import defpackage.ikd;
import defpackage.o9;
import defpackage.ujd;
import defpackage.vkd;
import defpackage.y45;
import defpackage.yi5;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Lambda;

public final class HisavanaTemplateJSBridge extends HisavanaAdJsBridge {
    public static final a j = new a(null);
    public final AdsDTO f;
    public final ujd g;
    public final String h;
    public final yi5 i;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    @Metadata(d1 = {"\u0000\u0007\n\u0002\b\u0003*\u0001\u0000\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"com/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge$b$a", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "()Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge$b$a;"}, k = 3, mv = {1, 9, 0})
    public static final class b extends Lambda implements c74 {

        public static final class a extends vkd {
            public a(AdsDTO adsDTO) {
                super(adsDTO);
            }
        }

        public b() {
            super(0);
        }

        @Override
        public final a invoke() {
            return new a(HisavanaTemplateJSBridge.this.f);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HisavanaTemplateJSBridge(WebView webView, AdsDTO adsDTO, ujd ujdVar) {
        super(webView);
        y45.j(webView, "webView");
        y45.j(adsDTO, "adsDTO");
        y45.j(ujdVar, "callback");
        this.f = adsDTO;
        this.g = ujdVar;
        this.h = "TemplateJSBridge";
        this.i = kotlin.b.a(new b());
    }

    public static final void A(HisavanaTemplateJSBridge hisavanaTemplateJSBridge, int i, int i2) {
        y45.j(hisavanaTemplateJSBridge, "this$0");
        try {
            hisavanaTemplateJSBridge.w().onVideoSizeChanged(i, i2);
        } catch (Throwable th) {
            ikd.b().w(hisavanaTemplateJSBridge.h, "onVideoSizeChanged error: " + th.getMessage());
        }
    }

    public static final void B(HisavanaTemplateJSBridge hisavanaTemplateJSBridge, int i, String str) {
        y45.j(hisavanaTemplateJSBridge, "this$0");
        y45.j(str, "$errorMessage");
        try {
            hisavanaTemplateJSBridge.w().a(new p(i, str, null, null, 12, null));
        } catch (Throwable th) {
            ikd.b().w(hisavanaTemplateJSBridge.h, "onPlayError error: " + th.getMessage());
        }
    }

    public static final void C(HisavanaTemplateJSBridge hisavanaTemplateJSBridge, long j2, long j3, int i) {
        y45.j(hisavanaTemplateJSBridge, "this$0");
        try {
            hisavanaTemplateJSBridge.w().b(j2, j3, i);
        } catch (Throwable th) {
            ikd.b().w(hisavanaTemplateJSBridge.h, "onProgress error: " + th.getMessage());
        }
    }

    public static final void D(HisavanaTemplateJSBridge hisavanaTemplateJSBridge, boolean z) {
        y45.j(hisavanaTemplateJSBridge, "this$0");
        try {
            hisavanaTemplateJSBridge.w().onIsPlayingChanged(z);
        } catch (Throwable th) {
            ikd.b().w(hisavanaTemplateJSBridge.h, "onIsPlayingChanged error: " + th.getMessage());
        }
    }

    public static final void F(HisavanaTemplateJSBridge hisavanaTemplateJSBridge, int i, String str) {
        y45.j(hisavanaTemplateJSBridge, "this$0");
        y45.j(str, "$errorMessage");
        try {
            hisavanaTemplateJSBridge.g.c(new TaErrorCode(i, str));
        } catch (Throwable th) {
            ikd.b().w(hisavanaTemplateJSBridge.h, "onShowError error: " + th.getMessage());
        }
    }

    public static final void G(HisavanaTemplateJSBridge hisavanaTemplateJSBridge, boolean z) {
        y45.j(hisavanaTemplateJSBridge, "this$0");
        try {
            hisavanaTemplateJSBridge.w().c(z);
        } catch (Throwable th) {
            ikd.b().w(hisavanaTemplateJSBridge.h, "onVideoClickToPauseOrPlay error: " + th.getMessage());
        }
    }

    public static final void x(int i, HisavanaTemplateJSBridge hisavanaTemplateJSBridge) {
        y45.j(hisavanaTemplateJSBridge, "this$0");
        try {
            if (i == 1) {
                hisavanaTemplateJSBridge.w().e();
            } else if (i == 2) {
                hisavanaTemplateJSBridge.w().d();
            } else if (i != 3) {
            } else {
                hisavanaTemplateJSBridge.w().onComplete();
            }
        } catch (Throwable th) {
            ikd.b().w(hisavanaTemplateJSBridge.h, "dispatchAdEvent error: " + th.getMessage());
        }
    }

    public static final void y(int i, HisavanaTemplateJSBridge hisavanaTemplateJSBridge, boolean z) {
        y45.j(hisavanaTemplateJSBridge, "this$0");
        try {
            switch (i) {
                case 0:
                case 1:
                case 2:
                    PslinkInfo pslinkInfo = hisavanaTemplateJSBridge.f.getPslinkInfo();
                    if (pslinkInfo != null) {
                        int i2 = i == 1 ? 2 : 1;
                        pslinkInfo.setClickType(i2);
                        hisavanaTemplateJSBridge.f.setTrackUserClickArea(i2);
                        hisavanaTemplateJSBridge.f.setAdClickTracking(!z);
                    }
                    hisavanaTemplateJSBridge.g.b(i, z);
                    break;
                case 3:
                    hisavanaTemplateJSBridge.g.a();
                    break;
                case 4:
                    hisavanaTemplateJSBridge.g.e();
                    break;
                case 5:
                    hisavanaTemplateJSBridge.g.d();
                    break;
                case 6:
                    hisavanaTemplateJSBridge.g.g();
                    break;
                case 7:
                    hisavanaTemplateJSBridge.g.h();
                    break;
                case 8:
                    hisavanaTemplateJSBridge.g.f();
                    break;
                case 9:
                    hisavanaTemplateJSBridge.g.i();
                    break;
                default:
                    ikd.b().w(hisavanaTemplateJSBridge.h, "unknown eventType=" + i);
                    break;
            }
        } catch (Throwable th) {
            ikd.b().w(hisavanaTemplateJSBridge.h, "onPlaybackStateChanged error: " + th.getMessage());
        }
    }

    public static final void z(HisavanaTemplateJSBridge hisavanaTemplateJSBridge, float f) {
        y45.j(hisavanaTemplateJSBridge, "this$0");
        try {
            hisavanaTemplateJSBridge.w().onVolumeChanged(f);
        } catch (Throwable th) {
            ikd.b().w(hisavanaTemplateJSBridge.h, "onVolumeChanged error: " + th.getMessage());
        }
    }

    @JavascriptInterface
    public final void dispatchAdEvent(final int i, final boolean z, String str) {
        ikd.b().d(this.h, "dispatchAdEvent eventType=" + i + ", fromConfirmDialog=" + z);
        HSScopeHelper.a.p(new Runnable() {
            @Override
            public final void run() {
                HisavanaTemplateJSBridge.y(i, this, z);
            }
        });
    }

    @JavascriptInterface
    public final String getAdData() {
        ikd.b().d(this.h, "getAdData ");
        try {
            String strD = GsonUtil.d(this.f);
            return strD == null ? "" : strD;
        } catch (Throwable th) {
            ikd.b().w(this.h, "getAdData error: " + th.getMessage());
            return "";
        }
    }

    @JavascriptInterface
    public final String getConfigResponseInfo() {
        ikd.b().d(this.h, "getConfigResponseInfo ");
        return o9.e().j("ssp_cloud_config_raw_response");
    }

    @JavascriptInterface
    public final String getPsStoreName() {
        ikd.b().d(this.h, "getPsStoreName ");
        return ak8.a.a();
    }

    @JavascriptInterface
    public final void makeToast(String str) {
        y45.j(str, ICode.CALL.CALL_KEY_CONTENT);
        ikd.b().d(this.h, "makeToast content= " + str);
        HSToastUtil.f(str);
    }

    @JavascriptInterface
    public final void onIsPlayingChanged(final boolean z) {
        ikd.b().d(this.h, "onIsPlayingChanged isPLaying= " + z);
        HSScopeHelper.a.p(new Runnable() {
            @Override
            public final void run() {
                HisavanaTemplateJSBridge.D(this.b, z);
            }
        });
    }

    @JavascriptInterface
    public final void onPlayError(final int i, final String str) {
        y45.j(str, "errorMessage");
        ikd.b().d(this.h, "onPlayError errorCode= " + i + ", errorMessage = " + str);
        HSScopeHelper.a.p(new Runnable() {
            @Override
            public final void run() {
                HisavanaTemplateJSBridge.B(this.b, i, str);
            }
        });
    }

    @JavascriptInterface
    public final void onPlaybackStateChanged(final int i) {
        ikd.b().d(this.h, "onPlaybackStateChanged state=" + i);
        HSScopeHelper.a.p(new Runnable() {
            @Override
            public final void run() {
                HisavanaTemplateJSBridge.x(i, this);
            }
        });
    }

    @JavascriptInterface
    public final void onProgress(final long j2, final long j3, final int i) {
        ikd.b().d(this.h, "onProgress duration= " + j2 + ", currentPosition=" + j3 + ", progress=" + i);
        HSScopeHelper.a.p(new Runnable() {
            @Override
            public final void run() {
                HisavanaTemplateJSBridge.C(this.b, j2, j3, i);
            }
        });
    }

    @JavascriptInterface
    public final void onShowError(final int i, final String str) {
        y45.j(str, "errorMessage");
        ikd.b().d(this.h, "onShowError errorCode= " + i + ", errorMessage = " + str);
        HSScopeHelper.a.p(new Runnable() {
            @Override
            public final void run() {
                HisavanaTemplateJSBridge.F(this.b, i, str);
            }
        });
    }

    @JavascriptInterface
    public final void onVideoClickToPauseOrPlay(final boolean z) {
        ikd.b().d(this.h, "onVideoClickToPauseOrPlay isPlaying= " + z);
        HSScopeHelper.a.p(new Runnable() {
            @Override
            public final void run() {
                HisavanaTemplateJSBridge.G(this.b, z);
            }
        });
    }

    @JavascriptInterface
    public final void onVideoSizeChanged(final int i, final int i2) {
        ikd.b().d(this.h, "onVideoSizeChanged width=" + i + ", height = " + i2);
        HSScopeHelper.a.p(new Runnable() {
            @Override
            public final void run() {
                HisavanaTemplateJSBridge.A(this.b, i, i2);
            }
        });
    }

    @JavascriptInterface
    public final void onVolumeChanged(final float f) {
        ikd.b().d(this.h, "onVolumeChanged volume= " + f);
        HSScopeHelper.a.p(new Runnable() {
            @Override
            public final void run() {
                HisavanaTemplateJSBridge.z(this.b, f);
            }
        });
    }

    public final b.a w() {
        return (b.a) this.i.getValue();
    }
}
