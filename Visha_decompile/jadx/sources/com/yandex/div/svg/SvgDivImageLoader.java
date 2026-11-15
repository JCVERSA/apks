package com.yandex.div.svg;

import android.graphics.drawable.PictureDrawable;
import com.yandex.div.svg.SvgDivImageLoader;
import defpackage.cl0;
import defpackage.e7a;
import defpackage.el0;
import defpackage.f7a;
import defpackage.jn5;
import defpackage.mc2;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.rk2;
import defpackage.s74;
import defpackage.wh1;
import defpackage.wk2;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import java.io.ByteArrayInputStream;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.d;
import okhttp3.Call;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.ResponseBody;

public final class SvgDivImageLoader implements wk2 {
    public final OkHttpClient a = new OkHttpClient.Builder().build();
    public final nk1 b = d.b();
    public final f7a c = new f7a(false, 1, null);
    public final e7a d = new e7a();

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {1, 8, 0})
    @nt1(c = "com.yandex.div.svg.SvgDivImageLoader$loadImage$2", f = "SvgDivImageLoader.kt", l = {33}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends SuspendLambda implements s74 {
        final Call $call;
        final rk2 $callback;
        final String $imageUrl;
        int label;
        final SvgDivImageLoader this$0;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Landroid/graphics/drawable/PictureDrawable;", "<anonymous>", "(Lnk1;)Landroid/graphics/drawable/PictureDrawable;"}, k = 3, mv = {1, 8, 0})
        @nt1(c = "com.yandex.div.svg.SvgDivImageLoader$loadImage$2$1", f = "SvgDivImageLoader.kt", l = {}, m = "invokeSuspend")
        public static final class AnonymousClass1 extends SuspendLambda implements s74 {
            final Call $call;
            final String $imageUrl;
            private Object L$0;
            int label;
            final SvgDivImageLoader this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(SvgDivImageLoader svgDivImageLoader, String str, Call call, wh1<? super AnonymousClass1> wh1Var) {
                super(2, wh1Var);
                this.this$0 = svgDivImageLoader;
                this.$imageUrl = str;
                this.$call = call;
            }

            @Override
            public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$imageUrl, this.$call, wh1Var);
                anonymousClass1.L$0 = obj;
                return anonymousClass1;
            }

            @Override
            public final Object invoke(nk1 nk1Var, wh1<? super PictureDrawable> wh1Var) {
                return ((AnonymousClass1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                Object objM279constructorimpl;
                PictureDrawable pictureDrawableA;
                z45.f();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
                Call call = this.$call;
                try {
                    Result.Companion companion = Result.INSTANCE;
                    ResponseBody responseBodyBody = call.execute().body();
                    objM279constructorimpl = Result.m279constructorimpl(responseBodyBody != null ? responseBodyBody.bytes() : null);
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM279constructorimpl = Result.m279constructorimpl(c.a(th));
                }
                if (Result.m285isFailureimpl(objM279constructorimpl)) {
                    objM279constructorimpl = null;
                }
                byte[] bArr = (byte[]) objM279constructorimpl;
                if (bArr == null || (pictureDrawableA = this.this$0.c.a(new ByteArrayInputStream(bArr))) == null) {
                    return null;
                }
                this.this$0.d.b(this.$imageUrl, pictureDrawableA);
                return pictureDrawableA;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(rk2 rk2Var, SvgDivImageLoader svgDivImageLoader, String str, Call call, wh1<? super AnonymousClass2> wh1Var) {
            super(2, wh1Var);
            this.$callback = rk2Var;
            this.this$0 = svgDivImageLoader;
            this.$imageUrl = str;
            this.$call = call;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return new AnonymousClass2(this.$callback, this.this$0, this.$imageUrl, this.$call, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((AnonymousClass2) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.label;
            zfb zfbVar = null;
            if (i == 0) {
                c.b(obj);
                kotlinx.coroutines.c cVarB = mc2.b();
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$imageUrl, this.$call, null);
                this.label = 1;
                obj = cl0.g(cVarB, anonymousClass1, this);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
            }
            PictureDrawable pictureDrawable = (PictureDrawable) obj;
            if (pictureDrawable != null) {
                this.$callback.c(pictureDrawable);
                zfbVar = zfb.a;
            }
            if (zfbVar == null) {
                this.$callback.a();
            }
            return zfb.a;
        }
    }

    public static final void g() {
    }

    public static final void h(Call call) {
        y45.j(call, "$call");
        call.cancel();
    }

    public static final void i(SvgDivImageLoader svgDivImageLoader, String str, rk2 rk2Var) {
        y45.j(svgDivImageLoader, "this$0");
        y45.j(str, "$imageUrl");
        y45.j(rk2Var, "$callback");
        svgDivImageLoader.loadImage(str, rk2Var);
    }

    public final Call f(String str) {
        return this.a.newCall(new Request.Builder().url(str).build());
    }

    @Override
    public Boolean hasSvgSupport() {
        return Boolean.TRUE;
    }

    @Override
    public jn5 loadImage(String str, rk2 rk2Var) {
        y45.j(str, "imageUrl");
        y45.j(rk2Var, "callback");
        final Call callF = f(str);
        PictureDrawable pictureDrawableA = this.d.a(str);
        if (pictureDrawableA != null) {
            rk2Var.c(pictureDrawableA);
            return new jn5() {
                @Override
                public final void cancel() {
                    SvgDivImageLoader.g();
                }
            };
        }
        el0.d(this.b, null, null, new AnonymousClass2(rk2Var, this, str, callF, null), 3, null);
        return new jn5() {
            @Override
            public final void cancel() {
                SvgDivImageLoader.h(callF);
            }
        };
    }

    @Override
    public jn5 loadImageBytes(final String str, final rk2 rk2Var) {
        y45.j(str, "imageUrl");
        y45.j(rk2Var, "callback");
        return new jn5() {
            @Override
            public final void cancel() {
                SvgDivImageLoader.i(this.a, str, rk2Var);
            }
        };
    }
}
