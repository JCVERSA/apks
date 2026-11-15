package com.cloud.hisavana.sdk.common.http.listener;

import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.Log;
import com.cloud.hisavana.sdk.U0;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.sdk.commonutil.util.Preconditions;
import defpackage.ikd;
import defpackage.qp4;
import defpackage.ul4;

public abstract class DrawableResponseListener extends ResponseBaseListener {

    public class AnonymousClass2 implements Runnable {
        final byte[] val$data;
        final String val$filePath;
        final int val$mime;
        final int val$statusCode;

        public class a implements Preconditions.a {
            public final Drawable a;

            public a(Drawable drawable) {
                this.a = drawable;
            }

            @Override
            public void onRun() {
                AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                if (anonymousClass2.val$mime == -1) {
                    DrawableResponseListener.this.a(new TaErrorCode(3007, "parse bitmap error."));
                    return;
                }
                DrawableResponseListener drawableResponseListener = DrawableResponseListener.this;
                int i = anonymousClass2.val$statusCode;
                AnonymousClass2 anonymousClass3 = AnonymousClass2.this;
                drawableResponseListener.g(i, new AdImage(anonymousClass3.val$mime, this.a, anonymousClass3.val$filePath));
            }
        }

        public AnonymousClass2(byte[] bArr, int i, int i2, String str) {
            this.val$data = bArr;
            this.val$mime = i;
            this.val$statusCode = i2;
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
                if (U0.B(ul4.a(), this.val$data)) {
                    Handler handler = DrawableResponseListener.this.a;
                    if (handler != null) {
                        handler.post(new Runnable() {
                            @Override
                            public final void run() {
                                this.b.lambda$run$0();
                            }
                        });
                        return;
                    } else {
                        Preconditions.d(new Preconditions.a() {
                            @Override
                            public final void onRun() {
                                this.a.lambda$run$1();
                            }
                        });
                        return;
                    }
                }
                drawableB = qp4.b(this.val$data);
                Handler handler2 = DrawableResponseListener.this.a;
                if (handler2 != null) {
                    handler2.post(new Runnable() {
                        @Override
                        public void run() {
                            AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                            if (anonymousClass2.val$mime == -1) {
                                DrawableResponseListener.this.a(new TaErrorCode(3007, "parse bitmap error."));
                                return;
                            }
                            DrawableResponseListener drawableResponseListener = DrawableResponseListener.this;
                            int i = anonymousClass2.val$statusCode;
                            AnonymousClass2 anonymousClass3 = AnonymousClass2.this;
                            drawableResponseListener.g(i, new AdImage(anonymousClass3.val$mime, drawableB, anonymousClass3.val$filePath));
                        }
                    });
                } else {
                    Preconditions.d(new a(drawableB));
                }
            } catch (Throwable th) {
                ikd.b().e(Log.getStackTraceString(th));
                drawableB = null;
            }
        }
    }

    public abstract void g(int i, AdImage adImage);

    public final void h(int i, final int i2, byte[] bArr, final String str) {
        int i3 = 1;
        if (bArr.length <= 1) {
            i3 = -1;
        } else if (bArr[0] == 71) {
            i3 = 2;
        }
        final int i4 = i3;
        if (i != 3) {
            HSScopeHelper.a.l(new AnonymousClass2(bArr, i4, i2, str));
            return;
        }
        Handler handler = this.a;
        if (handler != null) {
            handler.post(new Runnable() {
                @Override
                public void run() {
                    DrawableResponseListener.this.g(i2, new AdImage(i4, null, str));
                }
            });
        } else {
            g(i2, new AdImage(i4, null, str));
        }
    }
}
