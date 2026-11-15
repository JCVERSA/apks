package com.cloud.hisavana.sdk.common.http;

import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Log;
import android.widget.ImageView;
import com.cloud.hisavana.net.HttpRequest;
import com.cloud.hisavana.net.RequestParams;
import com.cloud.hisavana.net.disklrucache.utils.DiskLruCacheUtil;
import com.cloud.hisavana.net.impl.HttpCallbackImpl;
import com.cloud.hisavana.sdk.J0;
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener;
import com.cloud.hisavana.sdk.common.http.listener.ResponseBaseListener;
import com.cloud.hisavana.sdk.common.util.m;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.sdk.commonutil.util.Preconditions;
import com.vungle.ads.internal.model.AdPayload;
import java.io.File;
import okhttp3.Headers;

public class DownLoadRequest extends d {

    public static boolean f21459q = false;

    private int f21465h;

    private String f21473p;

    long f21460c = 0;

    String f21461d = "";

    long f21462e = 0;

    int f21463f = 0;

    int f21464g = 1;

    private int f21466i = 1;

    private boolean f21467j = false;

    private boolean f21468k = false;

    private String f21469l = "";

    private int f21470m = 1;

    private int f21471n = 1;

    private boolean f21472o = false;

    class AnonymousClass3 implements Runnable {
        final String val$filePath;
        final ImageView val$imageView;
        final DrawableResponseListener val$listener;

        AnonymousClass3(String str, DrawableResponseListener drawableResponseListener, ImageView imageView) {
            this.val$filePath = str;
            this.val$listener = drawableResponseListener;
            this.val$imageView = imageView;
        }

        public static void lambda$run$0(DrawableResponseListener drawableResponseListener) {
            drawableResponseListener.a(TaErrorCode.ERROR_BITMAP_TOO_LARGE);
        }

        public static void lambda$run$1(ImageView imageView, Drawable drawable, DrawableResponseListener drawableResponseListener) {
            imageView.setImageDrawable(drawable);
            if (drawableResponseListener != null) {
                drawableResponseListener.g(200, null);
            }
        }

        @Override
        public void run() {
            try {
                if (J0.w(com.cloud.sdk.commonutil.util.e.a(), this.val$filePath)) {
                    final DrawableResponseListener drawableResponseListener = this.val$listener;
                    if (drawableResponseListener != null) {
                        Preconditions.d(new Preconditions.a() {
                            @Override
                            public final void onRun() {
                                DownLoadRequest.AnonymousClass3.lambda$run$0(drawableResponseListener);
                            }
                        });
                        return;
                    }
                    return;
                }
                final Drawable drawableB = n7.c.b(m.c(new File(this.val$filePath)));
                final ImageView imageView = this.val$imageView;
                final DrawableResponseListener drawableResponseListener2 = this.val$listener;
                Preconditions.d(new Preconditions.a() {
                    @Override
                    public final void onRun() {
                        DownLoadRequest.AnonymousClass3.lambda$run$1(imageView, drawableB, drawableResponseListener2);
                    }
                });
            } catch (Throwable th2) {
                b4.b().e(Log.getStackTraceString(th2));
                DrawableResponseListener drawableResponseListener3 = this.val$listener;
                if (drawableResponseListener3 != null) {
                    drawableResponseListener3.a(TaErrorCode.ERROR_BITMAP_TAKE_FAILED);
                }
            }
        }
    }

    class a extends DrawableResponseListener {

        final DrawableResponseListener f21479b;

        final ImageView f21480c;

        a(DrawableResponseListener drawableResponseListener, ImageView imageView) {
            this.f21479b = drawableResponseListener;
            this.f21480c = imageView;
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            b4.b().e("DownLoadRequest", "loadImageView " + taErrorCode);
            DrawableResponseListener drawableResponseListener = this.f21479b;
            if (drawableResponseListener != null) {
                drawableResponseListener.a(taErrorCode);
            }
        }

        @Override
        public void g(int i10, AdImage adImage) {
            if (adImage == null) {
                DrawableResponseListener drawableResponseListener = this.f21479b;
                if (drawableResponseListener != null) {
                    drawableResponseListener.a(new TaErrorCode(TaErrorCode.CODE_BITMAP_TAKE_FAILED, "mediaBean == null."));
                    return;
                }
                return;
            }
            adImage.attachView(this.f21480c);
            DrawableResponseListener drawableResponseListener2 = this.f21479b;
            if (drawableResponseListener2 != null) {
                drawableResponseListener2.g(i10, adImage);
            }
        }
    }

    class b extends HttpCallbackImpl {
        b() {
        }

        @Override
        public void i(int i10, byte[] bArr, Throwable th2) {
            b4.b().d("ssp", "DownLoadRequest --> onFailure statusCode " + i10 + " e" + th2 + " url " + DownLoadRequest.this.f21469l);
            DownLoadRequest.this.f21466i = i10 == 256 ? 2 : 1;
            ResponseBaseListener responseBaseListener = DownLoadRequest.this.f21500b;
            if (responseBaseListener != null) {
                ((DrawableResponseListener) responseBaseListener).d(i10, bArr, th2);
            }
            DownLoadRequest.this.f21463f = i10;
        }

        @Override
        public void l(Headers headers) {
            String strValue;
            super.l(headers);
            if (headers == null || headers.size() <= 0) {
                return;
            }
            for (int i10 = 0; i10 < headers.size(); i10++) {
                if (headers.name(i10) != null && headers.name(i10).contains("x-response-cdn") && (strValue = headers.value(i10)) != null && !strValue.isEmpty()) {
                    DownLoadRequest.this.f21461d = strValue;
                }
            }
        }

        @Override
        public void n(int i10, byte[] bArr) {
            b4.b().d("DownLoadRequest", "DownLoadRequest --> onSuccess statusCode " + i10 + " url " + DownLoadRequest.this.f21469l);
            DownLoadRequest.this.f21466i = i10 == 250 ? 2 : 1;
            DownLoadRequest downLoadRequest = DownLoadRequest.this;
            ResponseBaseListener responseBaseListener = downLoadRequest.f21500b;
            if (responseBaseListener != null && (responseBaseListener instanceof DrawableResponseListener)) {
                ((DrawableResponseListener) responseBaseListener).h(downLoadRequest.f21470m, i10, bArr, null);
            }
            if (bArr != null) {
                DownLoadRequest.this.f21460c = bArr.length;
            }
            if (DownLoadRequest.this.f21465h == 3) {
                DownLoadRequest.f21459q = true;
            }
        }

        @Override
        public void o(int i10, byte[] bArr, String str) {
            b4.b().d("ssp", "DownLoadRequest --> onSuccess statusCode " + i10 + " filePath " + str + " url" + DownLoadRequest.this.f21469l);
            DownLoadRequest.this.f21466i = i10 == 250 ? 2 : 1;
            DownLoadRequest downLoadRequest = DownLoadRequest.this;
            ResponseBaseListener responseBaseListener = downLoadRequest.f21500b;
            if (responseBaseListener != null && (responseBaseListener instanceof DrawableResponseListener)) {
                ((DrawableResponseListener) responseBaseListener).h(downLoadRequest.f21470m, i10, bArr, str);
            }
            if (bArr != null) {
                DownLoadRequest.this.f21460c = bArr.length;
            }
            if (DownLoadRequest.this.f21465h == 3) {
                DownLoadRequest.f21459q = true;
            }
        }
    }

    public interface c {
        void a(boolean z10);

        void onSuccess();
    }

    private DownLoadRequest() {
    }

    public static void j(String str, int i10, boolean z10, int i11, boolean z11, int i12, boolean z12, AdsDTO adsDTO, DrawableResponseListener drawableResponseListener) {
        if (!J0.B(adsDTO)) {
            new DownLoadRequest().v(i10).u(drawableResponseListener).w(str).r(Boolean.valueOf(z10), i11, adsDTO != null ? adsDTO.getAdCreativeId() : "").s(i12).t(z11).m(z12).b();
        } else if (drawableResponseListener != null) {
            drawableResponseListener.a(new TaErrorCode(TaErrorCode.CODE_BITMAP_TOO_LARGE, "main image is too large."));
        }
    }

    public static void k(String str, AdsDTO adsDTO, int i10, boolean z10, DrawableResponseListener drawableResponseListener) {
        j(str, 3, adsDTO == null ? false : adsDTO.isOfflineAd(), i10, z10, 1, false, adsDTO, drawableResponseListener);
    }

    public static void l(String str, AdsDTO adsDTO, boolean z10, DrawableResponseListener drawableResponseListener) {
        j(str, 3, adsDTO == null ? false : adsDTO.isOfflineAd(), 10, z10, 3, true, adsDTO, drawableResponseListener);
    }

    public static void n(final String str, final AdsDTO adsDTO, final DrawableResponseListener drawableResponseListener, final ImageView imageView) {
        if (TextUtils.isEmpty(str) || imageView == null) {
            if (drawableResponseListener != null) {
                drawableResponseListener.a(new TaErrorCode(TaErrorCode.CODE_BITMAP_TAKE_FAILED, "filePath == null or imageView == null."));
            }
        } else if (!J0.B(adsDTO)) {
            HSScopeHelper.f22503a.g(new Runnable() {

                class a implements Preconditions.a {

                    final String f21477a;

                    a(String str) {
                        this.f21477a = str;
                    }

                    @Override
                    public void onRun() {
                        if (!n7.b.e(AdPayload.FILE_SCHEME + this.f21477a, false, imageView)) {
                            String str = this.f21477a;
                            AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                            DownLoadRequest.p(str, drawableResponseListener, imageView);
                        } else {
                            DrawableResponseListener drawableResponseListener = drawableResponseListener;
                            if (drawableResponseListener != null) {
                                drawableResponseListener.g(200, null);
                            }
                        }
                    }
                }

                @Override
                public void run() {
                    String strE = adsDTO.isFromLocal() ? str : DiskLruCacheUtil.e(str, 4);
                    if (new File(strE).exists()) {
                        Preconditions.d(new a(strE));
                        return;
                    }
                    DrawableResponseListener drawableResponseListener2 = drawableResponseListener;
                    if (drawableResponseListener2 != null) {
                        drawableResponseListener2.a(TaErrorCode.ERROR_BITMAP_TAKE_FAILED);
                    }
                }
            });
        } else if (drawableResponseListener != null) {
            drawableResponseListener.a(new TaErrorCode(TaErrorCode.CODE_BITMAP_TOO_LARGE, "main image is too large."));
        }
    }

    public static void o(final String str, final AdsDTO adsDTO, final int i10, final DrawableResponseListener drawableResponseListener, final ImageView imageView) {
        if (TextUtils.isEmpty(str) || imageView == null) {
            if (drawableResponseListener != null) {
                drawableResponseListener.a(new TaErrorCode(TaErrorCode.CODE_BITMAP_TAKE_FAILED, "url == null."));
            }
        } else if (!J0.B(adsDTO)) {
            HSScopeHelper.f22503a.g(new Runnable() {

                class a implements Preconditions.a {

                    final boolean f21474a;

                    final String f21475b;

                    a(boolean z10, String str) {
                        this.f21474a = z10;
                        this.f21475b = str;
                    }

                    @Override
                    public void onRun() {
                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                        boolean zX = DownLoadRequest.x(adsDTO, i10);
                        if (this.f21474a) {
                            if (n7.b.e(AdPayload.FILE_SCHEME + this.f21475b, zX, imageView)) {
                                DrawableResponseListener drawableResponseListener = drawableResponseListener;
                                if (drawableResponseListener != null) {
                                    drawableResponseListener.g(200, null);
                                    return;
                                }
                                return;
                            }
                        }
                        b4.b().d("ssp", "loadImageView with ssp, url: " + str);
                        AnonymousClass1 anonymousClass2 = AnonymousClass1.this;
                        DownLoadRequest.q(str, imageView, adsDTO, i10, drawableResponseListener);
                    }
                }

                @Override
                public void run() {
                    String strE;
                    boolean z10 = false;
                    if (adsDTO != null) {
                        strE = DiskLruCacheUtil.e(str, 1);
                        if (!TextUtils.isEmpty(strE) && new File(strE).exists()) {
                            z10 = true;
                        }
                    } else {
                        strE = "";
                    }
                    Preconditions.d(new a(z10, strE));
                }
            });
        } else if (drawableResponseListener != null) {
            drawableResponseListener.a(new TaErrorCode(TaErrorCode.CODE_BITMAP_TOO_LARGE, "main image is too large."));
        }
    }

    public static void p(String str, DrawableResponseListener drawableResponseListener, ImageView imageView) {
        if (imageView == null) {
            return;
        }
        HSScopeHelper.f22503a.g(new AnonymousClass3(str, drawableResponseListener, imageView));
    }

    public static void q(String str, ImageView imageView, AdsDTO adsDTO, int i10, DrawableResponseListener drawableResponseListener) {
        j(str, 1, adsDTO == null ? false : adsDTO.isOfflineAd(), i10, false, 1, false, adsDTO, new a(drawableResponseListener, imageView));
    }

    public static boolean x(AdsDTO adsDTO, int i10) {
        if (c7.b.r() && adsDTO != null && i10 == 2) {
            return adsDTO.getAdType() == 4 || adsDTO.getAdType() == 3 || adsDTO.getAdType() == 5;
        }
        return false;
    }

    @Override
    protected void a() {
        try {
            RequestParams requestParams = new RequestParams();
            requestParams.m(this.f21467j);
            requestParams.o(true);
            requestParams.k(this.f21471n);
            requestParams.l(this.f21472o);
            requestParams.j(this.f21473p);
            this.f21462e = System.currentTimeMillis();
            HttpRequest.c(this.f21469l, requestParams, new b());
        } catch (Throwable th2) {
            b4.b().e(Log.getStackTraceString(th2));
            this.f21466i = 1;
            ResponseBaseListener responseBaseListener = this.f21500b;
            if (responseBaseListener != null) {
                ((DrawableResponseListener) responseBaseListener).e(TaErrorCode.ERROR_UNKNOWN);
            }
            this.f21463f = 101;
        }
    }

    @Override
    public void b() {
        if (!TextUtils.isEmpty(this.f21469l)) {
            a();
            return;
        }
        ResponseBaseListener responseBaseListener = this.f21500b;
        if (responseBaseListener != null) {
            ((DrawableResponseListener) responseBaseListener).e(TaErrorCode.ERROR_DOWNLOAD_URL_IS_EMPTY);
        }
        b4.b().e("ssp", "url is empty");
    }

    public DownLoadRequest m(boolean z10) {
        this.f21472o = z10;
        return this;
    }

    public DownLoadRequest r(Boolean bool, int i10, String str) {
        this.f21468k = bool.booleanValue();
        this.f21465h = i10;
        this.f21473p = str;
        return this;
    }

    public DownLoadRequest s(int i10) {
        this.f21471n = i10;
        return this;
    }

    public DownLoadRequest t(boolean z10) {
        this.f21467j = z10;
        return this;
    }

    public DownLoadRequest u(DrawableResponseListener drawableResponseListener) {
        this.f21500b = drawableResponseListener;
        return this;
    }

    public DownLoadRequest v(int i10) {
        this.f21470m = i10;
        return this;
    }

    public DownLoadRequest w(String str) {
        this.f21469l = str;
        return this;
    }
}
