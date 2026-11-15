package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.widget.ImageView;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import com.yandex.div.core.images.BitmapSource;
import com.yandex.mobile.ads.impl.j20;
import defpackage.jn5;
import defpackage.y45;
import kotlin.jvm.internal.Ref$ObjectRef;

public final class j20 implements defpackage.wk2 {
    private final jz1 a;
    private final ht0 b;

    public static final class a implements oj0.d {
        final ImageView a;

        public a(ImageView imageView) {
            this.a = imageView;
        }

        @Override
        public final void a(si2 si2Var) {
        }

        @Override
        public final void a(oj0.c cVar, boolean z) {
            Bitmap bitmapB = cVar.b();
            if (bitmapB != null) {
                this.a.setImageBitmap(bitmapB);
            }
        }
    }

    public static final class b implements oj0.d {
        final defpackage.rk2 a;
        final String b;

        public b(String str, defpackage.rk2 rk2Var) {
            this.a = rk2Var;
            this.b = str;
        }

        @Override
        public final void a(si2 si2Var) {
            this.a.a();
        }

        @Override
        public final void a(oj0.c cVar, boolean z) {
            Bitmap bitmapB = cVar.b();
            if (bitmapB != null) {
                this.a.b(new defpackage.dq0(bitmapB, Uri.parse(this.b), z ? BitmapSource.MEMORY : BitmapSource.NETWORK));
            }
        }
    }

    public j20(Context context) {
        y45.j(context, "context");
        this.a = id1.c.a(context).b();
        this.b = new ht0();
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [T, com.yandex.mobile.ads.impl.oj0$c] */
    public static final void a(Ref$ObjectRef ref$ObjectRef, j20 j20Var, String str, ImageView imageView) {
        y45.j(ref$ObjectRef, "$imageContainer");
        y45.j(j20Var, "this$0");
        y45.j(str, "$imageUrl");
        y45.j(imageView, "$imageView");
        ref$ObjectRef.element = j20Var.a.a(str, new a(imageView), 0, 0);
    }

    @Override
    public Boolean hasSvgSupport() {
        return super.hasSvgSupport();
    }

    @Override
    @NonNull
    @MainThread
    public jn5 loadImage(@NonNull String str, @NonNull defpackage.rk2 rk2Var, int i) {
        return super.loadImage(str, rk2Var, i);
    }

    @Override
    @NonNull
    @MainThread
    public jn5 loadImageBytes(@NonNull String str, @NonNull defpackage.rk2 rk2Var, int i) {
        return super.loadImageBytes(str, rk2Var, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void b(Ref$ObjectRef ref$ObjectRef) {
        y45.j(ref$ObjectRef, "$imageContainer");
        oj0.c cVar = (oj0.c) ref$ObjectRef.element;
        if (cVar != null) {
            cVar.a();
        }
    }

    public final jn5 loadImage(final String str, final ImageView imageView) {
        y45.j(str, "imageUrl");
        y45.j(imageView, "imageView");
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        this.b.a(new Runnable() {
            @Override
            public final void run() {
                j20.a(ref$ObjectRef, this, str, imageView);
            }
        });
        return new jn5() {
            @Override
            public final void cancel() {
                j20.a(ref$ObjectRef);
            }
        };
    }

    @Override
    public final jn5 loadImageBytes(String str, defpackage.rk2 rk2Var) {
        y45.j(str, "imageUrl");
        y45.j(rk2Var, "callback");
        return a(str, rk2Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void a(Ref$ObjectRef ref$ObjectRef) {
        y45.j(ref$ObjectRef, "$imageContainer");
        oj0.c cVar = (oj0.c) ref$ObjectRef.element;
        if (cVar != null) {
            cVar.a();
        }
    }

    @Override
    public final jn5 loadImage(String str, defpackage.rk2 rk2Var) {
        y45.j(str, "imageUrl");
        y45.j(rk2Var, "callback");
        return a(str, rk2Var);
    }

    private final jn5 a(final String str, final defpackage.rk2 rk2Var) {
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        this.b.a(new Runnable() {
            @Override
            public final void run() {
                j20.a(ref$ObjectRef, this, str, rk2Var);
            }
        });
        return new jn5() {
            @Override
            public final void cancel() {
                j20.a(this.a, ref$ObjectRef);
            }
        };
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [T, com.yandex.mobile.ads.impl.oj0$c] */
    public static final void a(Ref$ObjectRef ref$ObjectRef, j20 j20Var, String str, defpackage.rk2 rk2Var) {
        y45.j(ref$ObjectRef, "$imageContainer");
        y45.j(j20Var, "this$0");
        y45.j(str, "$imageUrl");
        y45.j(rk2Var, "$callback");
        ref$ObjectRef.element = j20Var.a.a(str, new b(str, rk2Var), 0, 0);
    }

    public static final void a(j20 j20Var, final Ref$ObjectRef ref$ObjectRef) {
        y45.j(j20Var, "this$0");
        y45.j(ref$ObjectRef, "$imageContainer");
        j20Var.b.a(new Runnable() {
            @Override
            public final void run() {
                j20.b(ref$ObjectRef);
            }
        });
    }
}
