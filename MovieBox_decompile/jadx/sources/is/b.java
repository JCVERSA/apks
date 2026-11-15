package is;

import android.app.Application;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import androidx.fragment.app.FragmentActivity;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.y;
import com.bumptech.glide.Glide;
import com.bumptech.glide.Priority;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.MultiTransformation;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.resource.bitmap.CenterCrop;
import com.bumptech.glide.load.resource.bitmap.RoundedCorners;
import com.bumptech.glide.load.resource.drawable.DrawableTransitionOptions;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.request.transition.DrawableCrossFadeFactory;
import com.transsion.shorttv.R$color;
import com.transsion.shorttv_pugc.base.image.blurhash.BlurHash;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class b {

    public static final a f62607a = new a(null);

    private static int f62608b = y.e() / 3;

    private static int f62609c = y.b() / 2;

    private static int f62610d = y.c();

    private static final BlurHash f62611e;

    private static final DrawableTransitionOptions f62612f;

    public static final class a {

        public static final class C0767a implements RequestListener {

            final long f62613a;

            final Function3 f62614b;

            C0767a(long j10, Function3 function3) {
                this.f62613a = j10;
                this.f62614b = function3;
            }

            @Override
            public boolean onResourceReady(Drawable resource, Object model, Target target, DataSource dataSource, boolean z10) {
                Intrinsics.h(resource, "resource");
                Intrinsics.h(model, "model");
                Intrinsics.h(dataSource, "dataSource");
                long jCurrentTimeMillis = System.currentTimeMillis() - this.f62613a;
                Function3 function3 = this.f62614b;
                if (function3 != null) {
                }
                return false;
            }

            @Override
            public boolean onLoadFailed(GlideException glideException, Object obj, Target target, boolean z10) {
                Intrinsics.h(target, "target");
                long jCurrentTimeMillis = System.currentTimeMillis() - this.f62613a;
                Function3 function3 = this.f62614b;
                if (function3 == null) {
                    return false;
                }
                Boolean bool = Boolean.FALSE;
                return false;
            }
        }

        public static final class C0768b implements RequestListener {

            final long f62615a;

            final Function3 f62616b;

            C0768b(long j10, Function3 function3) {
                this.f62615a = j10;
                this.f62616b = function3;
            }

            @Override
            public boolean onResourceReady(Drawable resource, Object model, Target target, DataSource dataSource, boolean z10) {
                Intrinsics.h(resource, "resource");
                Intrinsics.h(model, "model");
                Intrinsics.h(dataSource, "dataSource");
                long jCurrentTimeMillis = System.currentTimeMillis() - this.f62615a;
                Function3 function3 = this.f62616b;
                if (function3 != null) {
                }
                return false;
            }

            @Override
            public boolean onLoadFailed(GlideException glideException, Object obj, Target target, boolean z10) {
                Intrinsics.h(target, "target");
                long jCurrentTimeMillis = System.currentTimeMillis() - this.f62615a;
                Function3 function3 = this.f62616b;
                if (function3 == null) {
                    return false;
                }
                Boolean bool = Boolean.FALSE;
                return false;
            }
        }

        public static final class c implements RequestListener {

            final long f62617a;

            final Function3 f62618b;

            c(long j10, Function3 function3) {
                this.f62617a = j10;
                this.f62618b = function3;
            }

            @Override
            public boolean onResourceReady(Drawable resource, Object model, Target target, DataSource dataSource, boolean z10) {
                Intrinsics.h(resource, "resource");
                Intrinsics.h(model, "model");
                Intrinsics.h(dataSource, "dataSource");
                long jCurrentTimeMillis = System.currentTimeMillis() - this.f62617a;
                Function3 function3 = this.f62618b;
                if (function3 != null) {
                }
                return false;
            }

            @Override
            public boolean onLoadFailed(GlideException glideException, Object obj, Target target, boolean z10) {
                Intrinsics.h(target, "target");
                long jCurrentTimeMillis = System.currentTimeMillis() - this.f62617a;
                Function3 function3 = this.f62618b;
                if (function3 == null) {
                    return false;
                }
                Boolean bool = Boolean.FALSE;
                return false;
            }
        }

        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Code duplicated, block: B:41:0x012b A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:42:0x012d  */
        /* JADX WARN: Code duplicated, block: B:43:0x013c  */
        /* JADX WARN: Code duplicated, block: B:46:0x0166  */
        /* JADX WARN: Code duplicated, block: B:47:0x0169  */
        /* JADX WARN: Code duplicated, block: B:49:0x016c  */
        private final void f(Context context, final ImageView imageView, String str, int i10, int i11, int i12, int i13, boolean z10, String str2, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, int i14, Priority priority, Function3 function3) {
            String str3;
            String strA;
            String str4;
            String strD;
            long jCurrentTimeMillis;
            RequestBuilder<Drawable> requestBuilderLoad2;
            int i15;
            if ((context instanceof FragmentActivity) && ((FragmentActivity) context).isDestroyed()) {
                return;
            }
            is.c cVar = is.c.f62619a;
            int iC = cVar.c(str);
            if (1 > iC || iC >= i12 + 1) {
                if (str2.length() != 0 || i12 <= 96 || iC > i12) {
                    str3 = str2;
                } else {
                    strA = cVar.a(str, 32, (56 & 4) != 0 ? true : z10, (56 & 8) != 0, (56 & 16) != 0 ? 0 : 0, (56 & 32) != 0 ? false : false, (56 & 64) != 0 ? false : z15, (56 & 128) != 0 ? 25 : i14);
                }
                str4 = str3;
                strD = cVar.d(str, i12, (64 & 4) != 0 ? true : z10, (64 & 8) != 0 ? true : z11, (64 & 16) != 0 ? 0 : i13, (64 & 32) != 0 ? false : z14, (64 & 64) != 0 ? false : false, (64 & 128) != 0 ? false : z15, (64 & 256) != 0 ? 25 : i14);
                jCurrentTimeMillis = System.currentTimeMillis();
                if (!StringsKt.W(str4, "http", false, 2, null) || StringsKt.W(str4, "data:image", false, 2, null)) {
                    if (z12) {
                        requestBuilderLoad2 = (RequestBuilder) Glide.with(context).load2(str4).optionalCenterCrop();
                    } else {
                        requestBuilderLoad2 = Glide.with(context).load2(str4);
                    }
                    Intrinsics.e(requestBuilderLoad2);
                    RequestBuilder<Drawable> requestBuilderTransition = Glide.with(context).load2(strD).thumbnail(requestBuilderLoad2).listener(new C0767a(jCurrentTimeMillis, function3)).transition(b.f62612f);
                    if (z13) {
                        i15 = i13;
                    } else {
                        i15 = -1;
                    }
                    requestBuilderTransition.apply((BaseRequestOptions<?>) o(i10, i11, i15, z13 ? i12 : -1, priority)).into(imageView);
                } else if (str4.length() >= 6) {
                    RequestBuilder<Drawable> requestBuilderLoad3 = Glide.with(context).load2(strD);
                    Intrinsics.g(requestBuilderLoad3, "load(...)");
                    com.transsion.shorttv_pugc.base.image.blurhash.c.b(requestBuilderLoad3, str4, 20, 20, b.f62611e, new Function1() {
                        @Override
                        public final Object invoke(Object obj) {
                            return b.a.h(imageView, (RequestBuilder) obj);
                        }
                    });
                    requestBuilderLoad3.transition(b.f62612f).listener(new C0768b(jCurrentTimeMillis, function3)).apply((BaseRequestOptions<?>) o(0, i11, z13 ? i13 : -1, z13 ? i12 : -1, priority)).into(imageView);
                } else {
                    Glide.with(context).load2(strD).transition(b.f62612f).listener(new c(jCurrentTimeMillis, function3)).apply((BaseRequestOptions<?>) o(i10, i11, z13 ? i13 : -1, z13 ? i12 : -1, priority)).into(imageView);
                }
                wf.a.C0922a.f(wf.a.f74274a, "ImageHelper", "load " + i12 + " use " + strD + " with small " + str4, false, 4, null);
            }
            strA = cVar.a(str, iC, (56 & 4) != 0 ? true : z10, (56 & 8) != 0, (56 & 16) != 0 ? 0 : 0, (56 & 32) != 0 ? false : false, (56 & 64) != 0 ? false : z15, (56 & 128) != 0 ? 25 : i14);
            str3 = strA;
            str4 = str3;
            strD = cVar.d(str, i12, (64 & 4) != 0 ? true : z10, (64 & 8) != 0 ? true : z11, (64 & 16) != 0 ? 0 : i13, (64 & 32) != 0 ? false : z14, (64 & 64) != 0 ? false : false, (64 & 128) != 0 ? false : z15, (64 & 256) != 0 ? 25 : i14);
            jCurrentTimeMillis = System.currentTimeMillis();
            if (StringsKt.W(str4, "http", false, 2, null)) {
                if (z12) {
                    requestBuilderLoad2 = (RequestBuilder) Glide.with(context).load2(str4).optionalCenterCrop();
                } else {
                    requestBuilderLoad2 = Glide.with(context).load2(str4);
                }
                Intrinsics.e(requestBuilderLoad2);
                RequestBuilder<Drawable> requestBuilderTransition2 = Glide.with(context).load2(strD).thumbnail(requestBuilderLoad2).listener(new C0767a(jCurrentTimeMillis, function3)).transition(b.f62612f);
                if (z13) {
                    i15 = i13;
                } else {
                    i15 = -1;
                }
                requestBuilderTransition2.apply((BaseRequestOptions<?>) o(i10, i11, i15, z13 ? i12 : -1, priority)).into(imageView);
            } else {
                if (z12) {
                    requestBuilderLoad2 = (RequestBuilder) Glide.with(context).load2(str4).optionalCenterCrop();
                } else {
                    requestBuilderLoad2 = Glide.with(context).load2(str4);
                }
                Intrinsics.e(requestBuilderLoad2);
                RequestBuilder<Drawable> requestBuilderTransition3 = Glide.with(context).load2(strD).thumbnail(requestBuilderLoad2).listener(new C0767a(jCurrentTimeMillis, function3)).transition(b.f62612f);
                if (z13) {
                    i15 = i13;
                } else {
                    i15 = -1;
                }
                requestBuilderTransition3.apply((BaseRequestOptions<?>) o(i10, i11, i15, z13 ? i12 : -1, priority)).into(imageView);
            }
            wf.a.C0922a.f(wf.a.f74274a, "ImageHelper", "load " + i12 + " use " + strD + " with small " + str4, false, 4, null);
        }

        static void g(a aVar, Context context, ImageView imageView, String str, int i10, int i11, int i12, int i13, boolean z10, String str2, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, int i14, Priority priority, Function3 function3, int i15, Object obj) {
            aVar.f(context, imageView, str, (i15 & 8) != 0 ? R$color.image_skeleton : i10, (i15 & 16) != 0 ? 0 : i11, (i15 & 32) != 0 ? -1 : i12, (i15 & 64) != 0 ? -1 : i13, (i15 & 128) != 0 ? true : z10, (i15 & 256) != 0 ? "" : str2, (i15 & 512) != 0 ? true : z11, (i15 & 1024) != 0 ? true : z12, (i15 & 2048) != 0 ? false : z13, (i15 & 4096) != 0 ? false : z14, (i15 & 8192) != 0 ? false : z15, (i15 & 16384) != 0 ? 25 : i14, (32768 & i15) != 0 ? Priority.NORMAL : priority, (i15 & 65536) != 0 ? null : function3);
        }

        public static final Unit h(ImageView imageView, RequestBuilder it) {
            Intrinsics.h(it, "it");
            try {
                Intrinsics.e(it.into(imageView));
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
            return Unit.f64096a;
        }

        private final RequestOptions o(int i10, int i11, int i12, int i13, Priority priority) {
            RequestOptions requestOptionsDiskCacheStrategy = new RequestOptions().priority(priority).diskCacheStrategy(DiskCacheStrategy.DATA);
            Intrinsics.g(requestOptionsDiskCacheStrategy, "diskCacheStrategy(...)");
            RequestOptions requestOptionsCircleCropTransform = requestOptionsDiskCacheStrategy;
            if (i10 != 0) {
                RequestOptions requestOptionsPlaceholder = requestOptionsCircleCropTransform.placeholder(i10);
                Intrinsics.g(requestOptionsPlaceholder, "placeholder(...)");
                requestOptionsCircleCropTransform = requestOptionsPlaceholder;
            }
            if (i11 > 0) {
                RequestOptions requestOptionsTransform = requestOptionsCircleCropTransform.transform(new MultiTransformation(new CenterCrop(), new RoundedCorners(i11)));
                Intrinsics.g(requestOptionsTransform, "transform(...)");
                requestOptionsCircleCropTransform = requestOptionsTransform;
            } else if (i11 < 0) {
                requestOptionsCircleCropTransform = RequestOptions.circleCropTransform();
                Intrinsics.g(requestOptionsCircleCropTransform, "circleCropTransform(...)");
            }
            if (i12 == -1 && i13 == -1) {
                return requestOptionsCircleCropTransform;
            }
            RequestOptions requestOptionsOverride = requestOptionsCircleCropTransform.override(i13, i12);
            Intrinsics.g(requestOptionsOverride, "override(...)");
            return requestOptionsOverride;
        }

        static RequestOptions p(a aVar, int i10, int i11, int i12, int i13, Priority priority, int i14, Object obj) {
            if ((i14 & 16) != 0) {
                priority = Priority.NORMAL;
            }
            return aVar.o(i10, i11, i12, i13, priority);
        }

        public final int b() {
            return b.f62610d;
        }

        public final int c() {
            return b.f62609c;
        }

        public final String d(String url, int i10, int i11, boolean z10, boolean z11, boolean z12, int i12) {
            Intrinsics.h(url, "url");
            return is.c.f62619a.d(url, i10, (64 & 4) != 0 ? true : z10, (64 & 8) != 0, (64 & 16) != 0 ? 0 : 0, (64 & 32) != 0 ? false : false, (64 & 64) != 0 ? false : z11, (64 & 128) != 0 ? false : z12, (64 & 256) != 0 ? 25 : i12);
        }

        public final void i(Context context, ImageView imageView, String url, int i10, int i11, int i12, int i13, boolean z10, String thumbnail, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, int i14) {
            Intrinsics.h(context, "context");
            Intrinsics.h(imageView, "imageView");
            Intrinsics.h(url, "url");
            Intrinsics.h(thumbnail, "thumbnail");
            if ((context instanceof FragmentActivity) && ((FragmentActivity) context).isDestroyed()) {
                return;
            }
            if (url.length() == 0) {
                Glide.with(context).load2("").transition(b.f62612f).apply((BaseRequestOptions<?>) p(this, i10, i13, z13 ? i12 : -1, z13 ? i11 : -1, null, 16, null)).into(imageView);
                return;
            }
            try {
                g(this, context, imageView, url, i10, i13, (i11 != c() || imageView.getLayoutParams().width <= 0) ? i11 : imageView.getLayoutParams().width, i12, z10, thumbnail, z11, z12, z13, z14, z15, i14, null, null, 98304, null);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        public final void j(Context context, ImageView imageView, String url, int i10, int i11, boolean z10, String thumbnail, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, int i12) {
            Intrinsics.h(context, "context");
            Intrinsics.h(imageView, "imageView");
            Intrinsics.h(url, "url");
            Intrinsics.h(thumbnail, "thumbnail");
            i(context, imageView, url, R$color.image_skeleton, i10, i11, 0, z10, thumbnail, z11, z12, z13, z14, z15, i12);
        }

        public final void k(Context context, ImageView imageView, String url, int i10, int i11, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, int i12) {
            Intrinsics.h(context, "context");
            Intrinsics.h(imageView, "imageView");
            Intrinsics.h(url, "url");
            i(context, imageView, url, R$color.image_skeleton, i10, i11, 0, z10, "", z11, z12, z13, z14, z15, i12);
        }

        private a() {
        }
    }

    static {
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        f62611e = new BlurHash(applicationA, 5, 0.6f);
        DrawableTransitionOptions drawableTransitionOptionsWith = DrawableTransitionOptions.with(new DrawableCrossFadeFactory.Builder(100).setCrossFadeEnabled(true).build());
        Intrinsics.g(drawableTransitionOptionsWith, "with(...)");
        f62612f = drawableTransitionOptionsWith;
    }
}
