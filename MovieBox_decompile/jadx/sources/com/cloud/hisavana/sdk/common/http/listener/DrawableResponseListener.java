package com.cloud.hisavana.sdk.common.http.listener;

import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.Log;
import com.cloud.hisavana.sdk.J0;
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.sdk.commonutil.util.Preconditions;
import com.cloud.sdk.commonutil.util.e;
import n7.c;

public abstract class DrawableResponseListener extends ResponseBaseListener {

    class AnonymousClass2 implements Runnable {
        final byte[] val$data;
        final String val$filePath;
        final int val$mime;
        final int val$statusCode;

        class a implements Preconditions.a {

            final Drawable f21501a;

            a(Drawable drawable) {
                this.f21501a = drawable;
            }

            @Override
            public void onRun() {
                AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                if (anonymousClass2.val$mime == -1) {
                    DrawableResponseListener.this.a(new TaErrorCode(TaErrorCode.CODE_BITMAP_TAKE_FAILED, "parse bitmap error."));
                    return;
                }
                DrawableResponseListener drawableResponseListener = DrawableResponseListener.this;
                int i10 = anonymousClass2.val$statusCode;
                AnonymousClass2 anonymousClass3 = AnonymousClass2.this;
                drawableResponseListener.g(i10, new AdImage(anonymousClass3.val$mime, this.f21501a, anonymousClass3.val$filePath));
            }
        }

        AnonymousClass2(byte[] bArr, int i10, int i11, String str) {
            this.val$data = bArr;
            this.val$mime = i10;
            this.val$statusCode = i11;
            this.val$filePath = str;
        }

        public void lambda$run$0() {
            DrawableResponseListener.this.a(new TaErrorCode(TaErrorCode.CODE_BITMAP_TOO_LARGE, "bitmap is too large."));
        }

        public void lambda$run$1() {
            DrawableResponseListener.this.a(new TaErrorCode(TaErrorCode.CODE_BITMAP_TOO_LARGE, "bitmap is too large."));
        }

        @Override
        public void run() {
            final Drawable drawableB;
            try {
                if (J0.A(e.a(), this.val$data)) {
                    Handler handler = DrawableResponseListener.this.f21503a;
                    if (handler != null) {
                        handler.post(new Runnable() {
                            @Override
                            public final void run() {
                                this.f21504a.lambda$run$0();
                            }
                        });
                        return;
                    } else {
                        Preconditions.d(new Preconditions.a() {
                            @Override
                            public final void onRun() {
                                this.f21505a.lambda$run$1();
                            }
                        });
                        return;
                    }
                }
                drawableB = c.b(this.val$data);
                Handler handler2 = DrawableResponseListener.this.f21503a;
                if (handler2 != null) {
                    handler2.post(new Runnable() {
                        @Override
                        public void run() {
                            AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                            if (anonymousClass2.val$mime == -1) {
                                DrawableResponseListener.this.a(new TaErrorCode(TaErrorCode.CODE_BITMAP_TAKE_FAILED, "parse bitmap error."));
                                return;
                            }
                            DrawableResponseListener drawableResponseListener = DrawableResponseListener.this;
                            int i10 = anonymousClass2.val$statusCode;
                            AnonymousClass2 anonymousClass3 = AnonymousClass2.this;
                            drawableResponseListener.g(i10, new AdImage(anonymousClass3.val$mime, drawableB, anonymousClass3.val$filePath));
                        }
                    });
                } else {
                    Preconditions.d(new a(drawableB));
                }
            } catch (Throwable th2) {
                b4.b().e(Log.getStackTraceString(th2));
                drawableB = null;
            }
        }
    }

    protected DrawableResponseListener() {
    }

    public abstract void g(int i10, AdImage adImage);

    public final void h(int i10, final int i11, byte[] bArr, final String str) {
        int i12 = 1;
        if (bArr.length <= 1) {
            i12 = -1;
        } else if (bArr[0] == 71) {
            i12 = 2;
        }
        final int i13 = i12;
        if (i10 != 3) {
            HSScopeHelper.f22503a.g(new AnonymousClass2(bArr, i13, i11, str));
            return;
        }
        Handler handler = this.f21503a;
        if (handler != null) {
            handler.post(new Runnable() {
                @Override
                public void run() {
                    DrawableResponseListener.this.g(i11, new AdImage(i13, null, str));
                }
            });
        } else {
            g(i11, new AdImage(i13, null, str));
        }
    }
}
