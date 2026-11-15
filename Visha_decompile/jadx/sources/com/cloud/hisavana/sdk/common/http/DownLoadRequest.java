package com.cloud.hisavana.sdk.common.http;

import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Log;
import android.widget.ImageView;
import com.cloud.hisavana.net.HttpRequest;
import com.cloud.hisavana.net.RequestParams;
import com.cloud.hisavana.net.disklrucache.utils.DiskLruCacheUtil;
import com.cloud.hisavana.net.impl.HttpCallbackImpl;
import com.cloud.hisavana.sdk.U0;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener;
import com.cloud.hisavana.sdk.common.http.listener.ResponseBaseListener;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.sdk.commonutil.util.Preconditions;
import defpackage.hi4;
import defpackage.ikd;
import defpackage.qp4;
import defpackage.r6;
import defpackage.ul4;
import defpackage.xs8;
import defpackage.yu3;
import java.io.File;
import okhttp3.Headers;

public class DownLoadRequest extends xs8 {
    public static boolean q = false;
    public int h;
    public String p;
    public long c = 0;
    public String d = "";
    public long e = 0;
    public int f = 0;
    public int g = 1;
    public int i = 1;
    public boolean j = false;
    public boolean k = false;
    public String l = "";
    public int m = 1;
    public int n = 1;
    public boolean o = false;

    public class AnonymousClass3 implements Runnable {
        final String val$filePath;
        final ImageView val$imageView;
        final DrawableResponseListener val$listener;

        public AnonymousClass3(String str, DrawableResponseListener drawableResponseListener, ImageView imageView) {
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
                if (U0.x(ul4.a(), this.val$filePath)) {
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
                final Drawable drawableB = qp4.b(yu3.c(new File(this.val$filePath)));
                final ImageView imageView = this.val$imageView;
                final DrawableResponseListener drawableResponseListener2 = this.val$listener;
                Preconditions.d(new Preconditions.a() {
                    @Override
                    public final void onRun() {
                        DownLoadRequest.AnonymousClass3.lambda$run$1(imageView, drawableB, drawableResponseListener2);
                    }
                });
            } catch (Throwable th) {
                ikd.b().e(Log.getStackTraceString(th));
                DrawableResponseListener drawableResponseListener3 = this.val$listener;
                if (drawableResponseListener3 != null) {
                    drawableResponseListener3.a(TaErrorCode.ERROR_BITMAP_TAKE_FAILED);
                }
            }
        }
    }

    public class a extends DrawableResponseListener {
        public final DrawableResponseListener b;
        public final ImageView c;

        public a(DrawableResponseListener drawableResponseListener, ImageView imageView) {
            this.b = drawableResponseListener;
            this.c = imageView;
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            ikd.b().e("DownLoadRequest", "loadImageView " + taErrorCode);
            DrawableResponseListener drawableResponseListener = this.b;
            if (drawableResponseListener != null) {
                drawableResponseListener.a(taErrorCode);
            }
        }

        @Override
        public void g(int i, AdImage adImage) {
            if (adImage == null) {
                DrawableResponseListener drawableResponseListener = this.b;
                if (drawableResponseListener != null) {
                    drawableResponseListener.a(new TaErrorCode(3007, "mediaBean == null."));
                    return;
                }
                return;
            }
            adImage.attachView(this.c);
            DrawableResponseListener drawableResponseListener2 = this.b;
            if (drawableResponseListener2 != null) {
                drawableResponseListener2.g(i, adImage);
            }
        }
    }

    public class b extends HttpCallbackImpl {
        public b() {
        }

        @Override
        public void i(int i, byte[] bArr, Throwable th) {
            ikd.b().d("ssp", "DownLoadRequest --> onFailure statusCode " + i + " e" + th + " url " + DownLoadRequest.this.l);
            DownLoadRequest.this.i = i == 256 ? 2 : 1;
            ResponseBaseListener responseBaseListener = DownLoadRequest.this.b;
            if (responseBaseListener != null) {
                ((DrawableResponseListener) responseBaseListener).d(i, bArr, th);
            }
            DownLoadRequest.this.f = i;
        }

        @Override
        public void l(Headers headers) {
            String strValue;
            super.l(headers);
            if (headers == null || headers.size() <= 0) {
                return;
            }
            for (int i = 0; i < headers.size(); i++) {
                if (headers.name(i) != null && headers.name(i).contains("x-response-cdn") && (strValue = headers.value(i)) != null && !strValue.isEmpty()) {
                    DownLoadRequest.this.d = strValue;
                }
            }
        }

        @Override
        public void n(int i, byte[] bArr) {
            ikd.b().d("DownLoadRequest", "DownLoadRequest --> onSuccess statusCode " + i + " url " + DownLoadRequest.this.l);
            DownLoadRequest.this.i = i == 250 ? 2 : 1;
            DownLoadRequest downLoadRequest = DownLoadRequest.this;
            ResponseBaseListener responseBaseListener = downLoadRequest.b;
            if (responseBaseListener != null && (responseBaseListener instanceof DrawableResponseListener)) {
                ((DrawableResponseListener) responseBaseListener).h(downLoadRequest.m, i, bArr, null);
            }
            if (bArr != null) {
                DownLoadRequest.this.c = bArr.length;
            }
            if (DownLoadRequest.this.h == 3) {
                DownLoadRequest.q = true;
            }
        }

        @Override
        public void o(int i, byte[] bArr, String str) {
            ikd.b().d("ssp", "DownLoadRequest --> onSuccess statusCode " + i + " filePath " + str + " url" + DownLoadRequest.this.l);
            DownLoadRequest.this.i = i == 250 ? 2 : 1;
            DownLoadRequest downLoadRequest = DownLoadRequest.this;
            ResponseBaseListener responseBaseListener = downLoadRequest.b;
            if (responseBaseListener != null && (responseBaseListener instanceof DrawableResponseListener)) {
                ((DrawableResponseListener) responseBaseListener).h(downLoadRequest.m, i, bArr, str);
            }
            if (bArr != null) {
                DownLoadRequest.this.c = bArr.length;
            }
            if (DownLoadRequest.this.h == 3) {
                DownLoadRequest.q = true;
            }
        }
    }

    public interface c {
        void a(boolean z);

        void onSuccess();
    }

    public static void j(String str, int i, boolean z, int i2, boolean z2, int i3, boolean z3, AdsDTO adsDTO, DrawableResponseListener drawableResponseListener) {
        if (!U0.C(adsDTO)) {
            new DownLoadRequest().v(i).u(drawableResponseListener).w(str).r(Boolean.valueOf(z), i2, adsDTO != null ? adsDTO.getAdCreativeId() : "").s(i3).t(z2).m(z3).b();
        } else if (drawableResponseListener != null) {
            drawableResponseListener.a(new TaErrorCode(TaErrorCode.CODE_BITMAP_TOO_LARGE, "main image is too large."));
        }
    }

    public static void k(String str, AdsDTO adsDTO, int i, boolean z, DrawableResponseListener drawableResponseListener) {
        j(str, 3, adsDTO == null ? false : adsDTO.isOfflineAd(), i, z, 1, false, adsDTO, drawableResponseListener);
    }

    public static void l(String str, AdsDTO adsDTO, boolean z, DrawableResponseListener drawableResponseListener) {
        j(str, 3, adsDTO == null ? false : adsDTO.isOfflineAd(), 10, z, 3, true, adsDTO, drawableResponseListener);
    }

    public static void n(final String str, final AdsDTO adsDTO, final DrawableResponseListener drawableResponseListener, final ImageView imageView) {
        if (TextUtils.isEmpty(str) || imageView == null) {
            if (drawableResponseListener != null) {
                drawableResponseListener.a(new TaErrorCode(3007, "filePath == null or imageView == null."));
            }
        } else if (!U0.C(adsDTO)) {
            HSScopeHelper.a.l(new Runnable() {

                public class a implements Preconditions.a {
                    public final String a;

                    public a(String str) {
                        this.a = str;
                    }

                    @Override
                    public void onRun() {
                        if (!hi4.e("file://" + this.a, false, imageView)) {
                            String str = this.a;
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

    public static void o(final String str, final AdsDTO adsDTO, final int i, final DrawableResponseListener drawableResponseListener, final ImageView imageView) {
        if (TextUtils.isEmpty(str) || imageView == null) {
            if (drawableResponseListener != null) {
                drawableResponseListener.a(new TaErrorCode(3007, "url == null."));
            }
        } else if (!U0.C(adsDTO)) {
            HSScopeHelper.a.l(new Runnable() {

                public class a implements Preconditions.a {
                    public final boolean a;
                    public final String b;

                    public a(boolean z, String str) {
                        this.a = z;
                        this.b = str;
                    }

                    @Override
                    public void onRun() {
                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                        boolean zX = DownLoadRequest.x(adsDTO, i);
                        if (this.a) {
                            if (hi4.e("file://" + this.b, zX, imageView)) {
                                DrawableResponseListener drawableResponseListener = drawableResponseListener;
                                if (drawableResponseListener != null) {
                                    drawableResponseListener.g(200, null);
                                    return;
                                }
                                return;
                            }
                        }
                        ikd.b().d("ssp", "loadImageView with ssp, url: " + str);
                        AnonymousClass1 anonymousClass2 = AnonymousClass1.this;
                        DownLoadRequest.q(str, imageView, adsDTO, i, drawableResponseListener);
                    }
                }

                @Override
                public void run() {
                    String strE;
                    boolean z = false;
                    if (adsDTO != null) {
                        strE = DiskLruCacheUtil.e(str, 1);
                        if (!TextUtils.isEmpty(strE) && new File(strE).exists()) {
                            z = true;
                        }
                    } else {
                        strE = "";
                    }
                    Preconditions.d(new a(z, strE));
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
        HSScopeHelper.a.l(new AnonymousClass3(str, drawableResponseListener, imageView));
    }

    public static void q(String str, ImageView imageView, AdsDTO adsDTO, int i, DrawableResponseListener drawableResponseListener) {
        j(str, 1, adsDTO == null ? false : adsDTO.isOfflineAd(), i, false, 1, false, adsDTO, new a(drawableResponseListener, imageView));
    }

    public static boolean x(AdsDTO adsDTO, int i) {
        if (r6.v() && adsDTO != null && i == 2) {
            return adsDTO.getAdType() == 4 || adsDTO.getAdType() == 3 || adsDTO.getAdType() == 5 || adsDTO.getAdType() == 8;
        }
        return false;
    }

    @Override
    public void a() {
        try {
            RequestParams requestParams = new RequestParams();
            requestParams.m(this.j);
            requestParams.o(true);
            requestParams.k(this.n);
            requestParams.l(this.o);
            requestParams.j(this.p);
            this.e = System.currentTimeMillis();
            HttpRequest.c(this.l, requestParams, new b());
        } catch (Throwable th) {
            ikd.b().e(Log.getStackTraceString(th));
            this.i = 1;
            ResponseBaseListener responseBaseListener = this.b;
            if (responseBaseListener != null) {
                ((DrawableResponseListener) responseBaseListener).e(TaErrorCode.ERROR_UNKNOWN);
            }
            this.f = 101;
        }
    }

    @Override
    public void b() {
        if (!TextUtils.isEmpty(this.l)) {
            a();
            return;
        }
        ResponseBaseListener responseBaseListener = this.b;
        if (responseBaseListener != null) {
            ((DrawableResponseListener) responseBaseListener).e(TaErrorCode.ERROR_DOWNLOAD_URL_IS_EMPTY);
        }
        ikd.b().e("ssp", "url is empty");
    }

    public DownLoadRequest m(boolean z) {
        this.o = z;
        return this;
    }

    public DownLoadRequest r(Boolean bool, int i, String str) {
        this.k = bool.booleanValue();
        this.h = i;
        this.p = str;
        return this;
    }

    public DownLoadRequest s(int i) {
        this.n = i;
        return this;
    }

    public DownLoadRequest t(boolean z) {
        this.j = z;
        return this;
    }

    public DownLoadRequest u(DrawableResponseListener drawableResponseListener) {
        this.b = drawableResponseListener;
        return this;
    }

    public DownLoadRequest v(int i) {
        this.m = i;
        return this;
    }

    public DownLoadRequest w(String str) {
        this.l = str;
        return this;
    }
}
