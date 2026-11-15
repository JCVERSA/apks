package ni;

import android.app.Application;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
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
import com.transsion.base.image.R$color;
import com.transsion.base.image.blurhash.BlurHash;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class f {

    public static final a f67269a = new a(null);

    private static int f67270b = y.e() / 3;

    private static int f67271c = y.b() / 2;

    private static int f67272d = y.c();

    private static final BlurHash f67273e;

    private static final DrawableTransitionOptions f67274f;

    public static final class a {

        public static final class C0822a implements RequestListener {

            final long f67275a;

            final Function3 f67276b;

            C0822a(long j10, Function3 function3) {
                this.f67275a = j10;
                this.f67276b = function3;
            }

            @Override
            public boolean onResourceReady(Drawable resource, Object model, Target target, DataSource dataSource, boolean z10) {
                Intrinsics.h(resource, "resource");
                Intrinsics.h(model, "model");
                Intrinsics.h(dataSource, "dataSource");
                long jCurrentTimeMillis = System.currentTimeMillis() - this.f67275a;
                Function3 function3 = this.f67276b;
                if (function3 != null) {
                }
                return false;
            }

            @Override
            public boolean onLoadFailed(GlideException glideException, Object obj, Target target, boolean z10) {
                Intrinsics.h(target, "target");
                long jCurrentTimeMillis = System.currentTimeMillis() - this.f67275a;
                Function3 function3 = this.f67276b;
                if (function3 == null) {
                    return false;
                }
                Boolean bool = Boolean.FALSE;
                return false;
            }
        }

        public static final class b implements RequestListener {

            final long f67277a;

            final Function3 f67278b;

            b(long j10, Function3 function3) {
                this.f67277a = j10;
                this.f67278b = function3;
            }

            @Override
            public boolean onResourceReady(Drawable resource, Object model, Target target, DataSource dataSource, boolean z10) {
                Intrinsics.h(resource, "resource");
                Intrinsics.h(model, "model");
                Intrinsics.h(dataSource, "dataSource");
                long jCurrentTimeMillis = System.currentTimeMillis() - this.f67277a;
                Function3 function3 = this.f67278b;
                if (function3 != null) {
                }
                return false;
            }

            @Override
            public boolean onLoadFailed(GlideException glideException, Object obj, Target target, boolean z10) {
                Intrinsics.h(target, "target");
                long jCurrentTimeMillis = System.currentTimeMillis() - this.f67277a;
                Function3 function3 = this.f67278b;
                if (function3 == null) {
                    return false;
                }
                Boolean bool = Boolean.FALSE;
                return false;
            }
        }

        public static final class c implements RequestListener {

            final long f67279a;

            final Function3 f67280b;

            c(long j10, Function3 function3) {
                this.f67279a = j10;
                this.f67280b = function3;
            }

            @Override
            public boolean onResourceReady(Drawable resource, Object model, Target target, DataSource dataSource, boolean z10) {
                Intrinsics.h(resource, "resource");
                Intrinsics.h(model, "model");
                Intrinsics.h(dataSource, "dataSource");
                long jCurrentTimeMillis = System.currentTimeMillis() - this.f67279a;
                Function3 function3 = this.f67280b;
                if (function3 != null) {
                }
                return false;
            }

            @Override
            public boolean onLoadFailed(GlideException glideException, Object obj, Target target, boolean z10) {
                Intrinsics.h(target, "target");
                long jCurrentTimeMillis = System.currentTimeMillis() - this.f67279a;
                Function3 function3 = this.f67280b;
                if (function3 == null) {
                    return false;
                }
                Boolean bool = Boolean.FALSE;
                return false;
            }
        }

        public static final class d implements RequestListener {

            final Function1 f67281a;

            final String f67282b;

            final int f67283c;

            d(Function1 function1, String str, int i10) {
                this.f67281a = function1;
                this.f67282b = str;
                this.f67283c = i10;
            }

            @Override
            public boolean onResourceReady(Drawable resource, Object model, Target target, DataSource dataSource, boolean z10) {
                Intrinsics.h(resource, "resource");
                Intrinsics.h(model, "model");
                Intrinsics.h(dataSource, "dataSource");
                g.f67301a.h(this.f67282b, this.f67283c);
                Function1 function1 = this.f67281a;
                if (function1 == null) {
                    return true;
                }
                function1.invoke(Boolean.TRUE);
                return true;
            }

            @Override
            public boolean onLoadFailed(GlideException glideException, Object obj, Target target, boolean z10) {
                Intrinsics.h(target, "target");
                Function1 function1 = this.f67281a;
                if (function1 == null) {
                    return true;
                }
                function1.invoke(Boolean.FALSE);
                return true;
            }
        }

        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static String e(a aVar, String str, int i10, boolean z10, boolean z11, int i11, Object obj) {
            if ((i11 & 2) != 0) {
                i10 = 0;
            }
            if ((i11 & 4) != 0) {
                z10 = true;
            }
            if ((i11 & 8) != 0) {
                z11 = false;
            }
            return aVar.d(str, i10, z10, z11);
        }

        /* JADX WARN: Code duplicated, block: B:41:0x0123 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:42:0x0125  */
        /* JADX WARN: Code duplicated, block: B:43:0x0134  */
        /* JADX WARN: Code duplicated, block: B:46:0x015e  */
        /* JADX WARN: Code duplicated, block: B:47:0x0161  */
        /* JADX WARN: Code duplicated, block: B:49:0x0164  */
        private final void f(Context context, final ImageView imageView, String str, int i10, int i11, int i12, int i13, boolean z10, String str2, boolean z11, boolean z12, boolean z13, boolean z14, Priority priority, int i14, Function3 function3) {
            String str3;
            String strA;
            String strD;
            long jCurrentTimeMillis;
            RequestBuilder<Drawable> requestBuilderLoad;
            int i15;
            if ((context instanceof FragmentActivity) && ((FragmentActivity) context).isDestroyed()) {
                return;
            }
            g gVar = g.f67301a;
            int iC = gVar.c(str);
            if (1 > iC || iC >= i12 + 1) {
                if (str2.length() != 0 || i12 <= 96 || iC > i12) {
                    str3 = str2;
                } else {
                    strA = gVar.a(str, 32, (120 & 4) != 0 ? true : z10, (120 & 8) != 0, (120 & 16) != 0 ? 0 : 0, (120 & 32) != 0 ? false : false, (120 & 64) != 0 ? 0 : 0);
                }
                strD = gVar.d(str, i12, z10, z11, i13, z14, false, i14);
                jCurrentTimeMillis = System.currentTimeMillis();
                if (!StringsKt.W(str3, "http", false, 2, null) || StringsKt.W(str3, "data:image", false, 2, null)) {
                    if (z12) {
                        requestBuilderLoad = (RequestBuilder) Glide.with(context).load(str3).optionalCenterCrop();
                    } else {
                        requestBuilderLoad = Glide.with(context).load(str3);
                    }
                    Intrinsics.e(requestBuilderLoad);
                    RequestBuilder<Drawable> requestBuilderTransition = Glide.with(context).load(strD).thumbnail(requestBuilderLoad).listener(new C0822a(jCurrentTimeMillis, function3)).transition(f.f67274f);
                    if (z13) {
                        i15 = i13;
                    } else {
                        i15 = -1;
                    }
                    requestBuilderTransition.apply((BaseRequestOptions<?>) k(i10, i11, i15, z13 ? i12 : -1, priority)).into(imageView);
                } else if (str3.length() >= 6) {
                    RequestBuilder<Drawable> requestBuilderLoad2 = Glide.with(context).load(strD);
                    Intrinsics.g(requestBuilderLoad2, "load(...)");
                    com.transsion.base.image.blurhash.c.b(requestBuilderLoad2, str3, 20, 20, f.f67273e, new Function1() {
                        @Override
                        public final Object invoke(Object obj) {
                            return f.a.g(imageView, (RequestBuilder) obj);
                        }
                    });
                    requestBuilderLoad2.transition(f.f67274f).listener(new b(jCurrentTimeMillis, function3)).apply((BaseRequestOptions<?>) k(0, i11, z13 ? i13 : -1, z13 ? i12 : -1, priority)).into(imageView);
                } else {
                    Glide.with(context).load(strD).transition(f.f67274f).listener(new c(jCurrentTimeMillis, function3)).apply((BaseRequestOptions<?>) k(i10, i11, z13 ? i13 : -1, z13 ? i12 : -1, priority)).into(imageView);
                }
                wf.a.C0922a.f(wf.a.f74274a, "ImageHelper", "load " + i12 + " use " + strD + " with small " + str3, false, 4, null);
            }
            strA = gVar.a(str, iC, (120 & 4) != 0 ? true : z10, (120 & 8) != 0, (120 & 16) != 0 ? 0 : 0, (120 & 32) != 0 ? false : false, (120 & 64) != 0 ? 0 : 0);
            str3 = strA;
            strD = gVar.d(str, i12, z10, z11, i13, z14, false, i14);
            jCurrentTimeMillis = System.currentTimeMillis();
            if (StringsKt.W(str3, "http", false, 2, null)) {
                if (z12) {
                    requestBuilderLoad = (RequestBuilder) Glide.with(context).load(str3).optionalCenterCrop();
                } else {
                    requestBuilderLoad = Glide.with(context).load(str3);
                }
                Intrinsics.e(requestBuilderLoad);
                RequestBuilder<Drawable> requestBuilderTransition2 = Glide.with(context).load(strD).thumbnail(requestBuilderLoad).listener(new C0822a(jCurrentTimeMillis, function3)).transition(f.f67274f);
                if (z13) {
                    i15 = i13;
                } else {
                    i15 = -1;
                }
                requestBuilderTransition2.apply((BaseRequestOptions<?>) k(i10, i11, i15, z13 ? i12 : -1, priority)).into(imageView);
            } else {
                if (z12) {
                    requestBuilderLoad = (RequestBuilder) Glide.with(context).load(str3).optionalCenterCrop();
                } else {
                    requestBuilderLoad = Glide.with(context).load(str3);
                }
                Intrinsics.e(requestBuilderLoad);
                RequestBuilder<Drawable> requestBuilderTransition3 = Glide.with(context).load(strD).thumbnail(requestBuilderLoad).listener(new C0822a(jCurrentTimeMillis, function3)).transition(f.f67274f);
                if (z13) {
                    i15 = i13;
                } else {
                    i15 = -1;
                }
                requestBuilderTransition3.apply((BaseRequestOptions<?>) k(i10, i11, i15, z13 ? i12 : -1, priority)).into(imageView);
            }
            wf.a.C0922a.f(wf.a.f74274a, "ImageHelper", "load " + i12 + " use " + strD + " with small " + str3, false, 4, null);
        }

        public static final Unit g(ImageView imageView, RequestBuilder it) {
            Intrinsics.h(it, "it");
            it.into(imageView);
            return Unit.f64096a;
        }

        public final void h(Context context, ImageView imageView, String str, int i10, int i11, int i12, int i13, boolean z10, String str2, boolean z11, boolean z12, boolean z13, boolean z14, Priority priority, int i14, Function3 function3) {
            if ((context instanceof FragmentActivity) && ((FragmentActivity) context).isDestroyed()) {
                return;
            }
            if (TextUtils.isEmpty(str)) {
                Glide.with(context).load("").transition(f.f67274f).apply((BaseRequestOptions<?>) l(this, i10, i13, z13 ? i12 : -1, z13 ? i11 : -1, null, 16, null)).into(imageView);
                return;
            }
            try {
                f(context, imageView, str, i10, i13, (i11 != f.f67271c || imageView.getLayoutParams().width <= 0) ? i11 : imageView.getLayoutParams().width, i12, z10, str2, z11, z12, z13, z14, priority, i14, function3);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        public static void j(a aVar, String str, String str2, int i10, Function1 function1, int i11, Object obj) {
            if ((i11 & 8) != 0) {
                function1 = null;
            }
            aVar.i(str, str2, i10, function1);
        }

        private final RequestOptions k(int i10, int i11, int i12, int i13, Priority priority) {
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

        static RequestOptions l(a aVar, int i10, int i11, int i12, int i13, Priority priority, int i14, Object obj) {
            if ((i14 & 16) != 0) {
                priority = Priority.NORMAL;
            }
            return aVar.k(i10, i11, i12, i13, priority);
        }

        public final int c() {
            return f.f67270b;
        }

        public final String d(String url, int i10, boolean z10, boolean z11) {
            Intrinsics.h(url, "url");
            return g.f67301a.d(url, i10, (184 & 4) != 0 ? true : z10, (184 & 8) != 0, (184 & 16) != 0 ? 0 : 0, (184 & 32) != 0 ? false : false, (184 & 64) != 0 ? false : z11, (184 & 128) != 0 ? 0 : 0);
        }

        public final void i(String url, String originUrl, int i10, Function1 function1) {
            Intrinsics.h(url, "url");
            Intrinsics.h(originUrl, "originUrl");
            Glide.with(Utils.a()).load(url).diskCacheStrategy(DiskCacheStrategy.DATA).addListener(new d(function1, originUrl, i10)).preload();
        }

        public final b m(Context context) {
            Intrinsics.h(context, "context");
            return new b(context);
        }

        private a() {
        }
    }

    public static final class b {

        private final Context f67284a;

        private final int f67285b;

        private final int f67286c;

        private int f67287d;

        private int f67288e;

        private String f67289f;

        private String f67290g;

        private int f67291h;

        private int f67292i;

        private boolean f67293j;

        private boolean f67294k;

        private boolean f67295l;

        private boolean f67296m;

        private boolean f67297n;

        private Priority f67298o;

        private Function3 f67299p;

        private int f67300q;

        public b(Context context) {
            Intrinsics.h(context, "context");
            this.f67284a = context;
            int iB = y.b() / 2;
            this.f67285b = iB;
            int iC = y.c();
            this.f67286c = iC;
            this.f67287d = iB;
            this.f67288e = iC;
            this.f67289f = "";
            this.f67290g = "";
            this.f67291h = R$color.image_default;
            this.f67293j = true;
            this.f67294k = true;
            this.f67295l = true;
            this.f67298o = Priority.NORMAL;
        }

        public final b a(int i10) {
            this.f67300q = i10;
            return this;
        }

        public final b b(Function3 function3) {
            this.f67299p = function3;
            return this;
        }

        public final b c(int i10) {
            this.f67288e = i10;
            this.f67297n = true;
            return this;
        }

        public final void d(ImageView imageView) {
            Intrinsics.h(imageView, "imageView");
            f.f67269a.h(this.f67284a, imageView, this.f67289f, this.f67291h, this.f67287d, this.f67288e, this.f67292i, this.f67293j, this.f67290g, this.f67294k, this.f67295l, this.f67296m, this.f67297n, this.f67298o, this.f67300q, this.f67299p);
        }

        public final b e(boolean z10) {
            this.f67294k = z10;
            return this;
        }

        public final b f(boolean z10) {
            this.f67293j = z10;
            return this;
        }

        public final b g(String str) {
            if (str == null) {
                str = "";
            }
            this.f67289f = str;
            return this;
        }

        public final b h(boolean z10) {
            this.f67296m = z10;
            return this;
        }

        public final b i(int i10) {
            this.f67291h = i10;
            return this;
        }

        public final b j(int i10) {
            this.f67292i = i10;
            return this;
        }

        public final b k(boolean z10) {
            this.f67295l = z10;
            return this;
        }

        public final b l(String thumbnail) {
            Intrinsics.h(thumbnail, "thumbnail");
            this.f67290g = thumbnail;
            return this;
        }

        public final b m(int i10) {
            this.f67287d = i10;
            return this;
        }
    }

    static {
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        f67273e = new BlurHash(applicationA, 5, 0.6f);
        DrawableTransitionOptions drawableTransitionOptionsWith = DrawableTransitionOptions.with(new DrawableCrossFadeFactory.Builder(100).setCrossFadeEnabled(true).build());
        Intrinsics.g(drawableTransitionOptionsWith, "with(...)");
        f67274f = drawableTransitionOptionsWith;
    }
}
