package com.yandex.div.core.view2.divs;

import android.R;
import android.graphics.Bitmap;
import android.graphics.Picture;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.PictureDrawable;
import android.graphics.drawable.StateListDrawable;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.util.StateSet;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.content.ContextCompat;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.core.util.DivDataExtensionsKt;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.internal.drawable.RadialGradientDrawable;
import com.yandex.div.internal.drawable.ScalingDrawable;
import com.yandex.div2.DivAlignmentHorizontal;
import com.yandex.div2.DivAlignmentVertical;
import com.yandex.div2.DivBackground;
import com.yandex.div2.DivFilter;
import com.yandex.div2.DivImageBackground;
import com.yandex.div2.DivImageScale;
import com.yandex.div2.DivRadialGradientCenter;
import com.yandex.div2.DivRadialGradientRadius;
import com.yandex.div2.DivRadialGradientRelativeRadius;
import defpackage.ae5;
import defpackage.dq0;
import defpackage.e74;
import defpackage.fl5;
import defpackage.gy4;
import defpackage.i81;
import defpackage.jn5;
import defpackage.nj3;
import defpackage.oj3;
import defpackage.ok2;
import defpackage.pdc;
import defpackage.qj3;
import defpackage.sj3;
import defpackage.wk2;
import defpackage.x07;
import defpackage.xi;
import defpackage.y45;
import defpackage.y71;
import defpackage.y91;
import defpackage.z71;
import defpackage.z91;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.mozilla.javascript.ES6Iterator;

public class DivBackgroundBinder {
    public final wk2 a;

    public static abstract class DivBackgroundState {

        public static final class Image extends DivBackgroundState {
            public final double a;
            public final DivAlignmentHorizontal b;
            public final DivAlignmentVertical c;
            public final Uri d;
            public final boolean e;
            public final DivImageScale f;
            public final List g;
            public final boolean h;

            public static abstract class a {

                public static final class C0285a extends a {
                    public final int a;
                    public final DivFilter.a b;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public C0285a(int i, DivFilter.a aVar) {
                        super(null);
                        y45.j(aVar, TtmlNode.TAG_DIV);
                        this.a = i;
                        this.b = aVar;
                    }

                    public final DivFilter.a b() {
                        return this.b;
                    }

                    public boolean equals(Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (!(obj instanceof C0285a)) {
                            return false;
                        }
                        C0285a c0285a = (C0285a) obj;
                        return this.a == c0285a.a && y45.e(this.b, c0285a.b);
                    }

                    public int hashCode() {
                        return (Integer.hashCode(this.a) * 31) + this.b.hashCode();
                    }

                    public String toString() {
                        return "Blur(radius=" + this.a + ", div=" + this.b + ')';
                    }
                }

                public static final class b extends a {
                    public final DivFilter.c a;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public b(DivFilter.c cVar) {
                        super(null);
                        y45.j(cVar, TtmlNode.TAG_DIV);
                        this.a = cVar;
                    }

                    public final DivFilter.c b() {
                        return this.a;
                    }

                    public boolean equals(Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return (obj instanceof b) && y45.e(this.a, ((b) obj).a);
                    }

                    public int hashCode() {
                        return this.a.hashCode();
                    }

                    public String toString() {
                        return "RtlMirror(div=" + this.a + ')';
                    }
                }

                public a(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                public final DivFilter a() {
                    if (this instanceof C0285a) {
                        return ((C0285a) this).b();
                    }
                    if (this instanceof b) {
                        return ((b) this).b();
                    }
                    throw new NoWhenBranchMatchedException();
                }

                public a() {
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Image(double d, DivAlignmentHorizontal divAlignmentHorizontal, DivAlignmentVertical divAlignmentVertical, Uri uri, boolean z, DivImageScale divImageScale, List list, boolean z2) {
                super(null);
                y45.j(divAlignmentHorizontal, "contentAlignmentHorizontal");
                y45.j(divAlignmentVertical, "contentAlignmentVertical");
                y45.j(uri, "imageUrl");
                y45.j(divImageScale, "scale");
                this.a = d;
                this.b = divAlignmentHorizontal;
                this.c = divAlignmentVertical;
                this.d = uri;
                this.e = z;
                this.f = divImageScale;
                this.g = list;
                this.h = z2;
            }

            public final Drawable b(final com.yandex.div.core.view2.a aVar, final View view, wk2 wk2Var) {
                y45.j(aVar, "context");
                y45.j(view, TypedValues.AttributesType.S_TARGET);
                y45.j(wk2Var, "imageLoader");
                final ScalingDrawable scalingDrawable = new ScalingDrawable();
                scalingDrawable.setAlpha((int) (this.a * ((double) 255)));
                scalingDrawable.e(BaseDivViewExtensionsKt.L0(this.f));
                scalingDrawable.b(BaseDivViewExtensionsKt.A0(this.b, pdc.f(view)));
                scalingDrawable.c(BaseDivViewExtensionsKt.N0(this.c));
                String string = this.d.toString();
                y45.i(string, "imageUrl.toString()");
                final Div2View div2ViewA = aVar.a();
                jn5 jn5VarLoadImage = wk2Var.loadImage(string, new ok2(div2ViewA) {
                    @Override
                    public void b(dq0 dq0Var) {
                        ArrayList arrayList;
                        y45.j(dq0Var, "cachedBitmap");
                        View view2 = view;
                        com.yandex.div.core.view2.a aVar2 = aVar;
                        Bitmap bitmapA = dq0Var.a();
                        y45.i(bitmapA, "cachedBitmap.bitmap");
                        List listC = this.c();
                        if (listC != null) {
                            List list = listC;
                            arrayList = new ArrayList(z71.v(list, 10));
                            Iterator it = list.iterator();
                            while (it.hasNext()) {
                                arrayList.add(((DivBackgroundBinder.DivBackgroundState.Image.a) it.next()).a());
                            }
                        } else {
                            arrayList = null;
                        }
                        final ScalingDrawable scalingDrawable2 = scalingDrawable;
                        BaseDivViewExtensionsKt.h(view2, aVar2, bitmapA, arrayList, new e74() {
                            {
                                super(1);
                            }

                            @Override
                            public Object invoke(Object obj) {
                                invoke((Bitmap) obj);
                                return zfb.a;
                            }

                            public final void invoke(Bitmap bitmap) {
                                y45.j(bitmap, "it");
                                scalingDrawable2.d(bitmap);
                            }
                        });
                    }

                    @Override
                    public void c(PictureDrawable pictureDrawable) {
                        y45.j(pictureDrawable, "pictureDrawable");
                        if (!this.e()) {
                            b(gy4.b(pictureDrawable, this.d(), null, 2, null));
                            return;
                        }
                        ScalingDrawable scalingDrawable2 = scalingDrawable;
                        Picture picture = pictureDrawable.getPicture();
                        y45.i(picture, "pictureDrawable.picture");
                        scalingDrawable2.f(picture);
                    }
                });
                y45.i(jn5VarLoadImage, "fun getDivImageBackgroun…aleDrawable\n            }");
                aVar.a().addLoadReference(jn5VarLoadImage, view);
                return scalingDrawable;
            }

            public final List c() {
                return this.g;
            }

            public final Uri d() {
                return this.d;
            }

            public final boolean e() {
                return this.h;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Image)) {
                    return false;
                }
                Image image = (Image) obj;
                return Double.compare(this.a, image.a) == 0 && this.b == image.b && this.c == image.c && y45.e(this.d, image.d) && this.e == image.e && this.f == image.f && y45.e(this.g, image.g) && this.h == image.h;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v15, types: [int] */
            /* JADX WARN: Type inference failed for: r0v9, types: [int] */
            /* JADX WARN: Type inference failed for: r1v14 */
            /* JADX WARN: Type inference failed for: r1v15 */
            /* JADX WARN: Type inference failed for: r1v7, types: [int] */
            /* JADX WARN: Type inference failed for: r2v0 */
            /* JADX WARN: Type inference failed for: r2v1, types: [int] */
            /* JADX WARN: Type inference failed for: r2v2 */
            public int hashCode() {
                int iHashCode = ((((((Double.hashCode(this.a) * 31) + this.b.hashCode()) * 31) + this.c.hashCode()) * 31) + this.d.hashCode()) * 31;
                boolean z = this.e;
                ?? r1 = z;
                if (z) {
                    r1 = 1;
                }
                int iHashCode2 = (((iHashCode + r1) * 31) + this.f.hashCode()) * 31;
                List list = this.g;
                int iHashCode3 = (iHashCode2 + (list == null ? 0 : list.hashCode())) * 31;
                boolean z2 = this.h;
                return iHashCode3 + (z2 ? 1 : z2);
            }

            public String toString() {
                return "Image(alpha=" + this.a + ", contentAlignmentHorizontal=" + this.b + ", contentAlignmentVertical=" + this.c + ", imageUrl=" + this.d + ", preloadRequired=" + this.e + ", scale=" + this.f + ", filters=" + this.g + ", isVectorCompatible=" + this.h + ')';
            }
        }

        public static final class a extends DivBackgroundState {
            public final int a;
            public final y91 b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(int i, y91 y91Var) {
                super(null);
                y45.j(y91Var, "colormap");
                this.a = i;
                this.b = y91Var;
            }

            public final int b() {
                return this.a;
            }

            public final y91 c() {
                return this.b;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof a)) {
                    return false;
                }
                a aVar = (a) obj;
                return this.a == aVar.a && y45.e(this.b, aVar.b);
            }

            public int hashCode() {
                return (Integer.hashCode(this.a) * 31) + this.b.hashCode();
            }

            public String toString() {
                return "LinearGradient(angle=" + this.a + ", colormap=" + this.b + ')';
            }
        }

        public static final class b extends DivBackgroundState {
            public final Uri a;
            public final Rect b;

            public static final class a extends ok2 {
                public final x07 b;
                public final b c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public a(Div2View div2View, x07 x07Var, b bVar) {
                    super(div2View);
                    this.b = x07Var;
                    this.c = bVar;
                }

                @Override
                public void b(dq0 dq0Var) {
                    y45.j(dq0Var, "cachedBitmap");
                    x07 x07Var = this.b;
                    b bVar = this.c;
                    x07Var.d(bVar.b().bottom);
                    x07Var.e(bVar.b().left);
                    x07Var.f(bVar.b().right);
                    x07Var.g(bVar.b().top);
                    x07Var.c(dq0Var.a());
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(Uri uri, Rect rect) {
                super(null);
                y45.j(uri, "imageUrl");
                y45.j(rect, "insets");
                this.a = uri;
                this.b = rect;
            }

            public final Rect b() {
                return this.b;
            }

            public final Drawable c(Div2View div2View, View view, wk2 wk2Var) {
                y45.j(div2View, "divView");
                y45.j(view, TypedValues.AttributesType.S_TARGET);
                y45.j(wk2Var, "imageLoader");
                x07 x07Var = new x07();
                String string = this.a.toString();
                y45.i(string, "imageUrl.toString()");
                jn5 jn5VarLoadImage = wk2Var.loadImage(string, new a(div2View, x07Var, this));
                y45.i(jn5VarLoadImage, "fun getNinePatchDrawable…tchDrawable\n            }");
                div2View.addLoadReference(jn5VarLoadImage, view);
                return x07Var;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof b)) {
                    return false;
                }
                b bVar = (b) obj;
                return y45.e(this.a, bVar.a) && y45.e(this.b, bVar.b);
            }

            public int hashCode() {
                return (this.a.hashCode() * 31) + this.b.hashCode();
            }

            public String toString() {
                return "NinePatch(imageUrl=" + this.a + ", insets=" + this.b + ')';
            }
        }

        public static final class c extends DivBackgroundState {
            public final a a;
            public final a b;
            public final List c;
            public final b d;

            public static abstract class a {

                public static final class C0286a extends a {
                    public final float a;

                    public C0286a(float f) {
                        super(null);
                        this.a = f;
                    }

                    public final float b() {
                        return this.a;
                    }

                    public boolean equals(Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return (obj instanceof C0286a) && Float.compare(this.a, ((C0286a) obj).a) == 0;
                    }

                    public int hashCode() {
                        return Float.hashCode(this.a);
                    }

                    public String toString() {
                        return "Fixed(valuePx=" + this.a + ')';
                    }
                }

                public static final class b extends a {
                    public final float a;

                    public b(float f) {
                        super(null);
                        this.a = f;
                    }

                    public final float b() {
                        return this.a;
                    }

                    public boolean equals(Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return (obj instanceof b) && Float.compare(this.a, ((b) obj).a) == 0;
                    }

                    public int hashCode() {
                        return Float.hashCode(this.a);
                    }

                    public String toString() {
                        return "Relative(value=" + this.a + ')';
                    }
                }

                public a(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                public final RadialGradientDrawable.a a() {
                    if (this instanceof C0286a) {
                        return new RadialGradientDrawable.a.C0298a(((C0286a) this).b());
                    }
                    if (this instanceof b) {
                        return new RadialGradientDrawable.a.b(((b) this).b());
                    }
                    throw new NoWhenBranchMatchedException();
                }

                public a() {
                }
            }

            public static abstract class b {

                public static final class a extends b {
                    public final float a;

                    public a(float f) {
                        super(null);
                        this.a = f;
                    }

                    public final float b() {
                        return this.a;
                    }

                    public boolean equals(Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return (obj instanceof a) && Float.compare(this.a, ((a) obj).a) == 0;
                    }

                    public int hashCode() {
                        return Float.hashCode(this.a);
                    }

                    public String toString() {
                        return "Fixed(valuePx=" + this.a + ')';
                    }
                }

                public static final class C0287b extends b {
                    public final DivRadialGradientRelativeRadius.Value a;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public C0287b(DivRadialGradientRelativeRadius.Value value) {
                        super(null);
                        y45.j(value, ES6Iterator.VALUE_PROPERTY);
                        this.a = value;
                    }

                    public final DivRadialGradientRelativeRadius.Value b() {
                        return this.a;
                    }

                    public boolean equals(Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return (obj instanceof C0287b) && this.a == ((C0287b) obj).a;
                    }

                    public int hashCode() {
                        return this.a.hashCode();
                    }

                    public String toString() {
                        return "Relative(value=" + this.a + ')';
                    }
                }

                public class C0288c {
                    public static final int[] a;

                    static {
                        int[] iArr = new int[DivRadialGradientRelativeRadius.Value.values().length];
                        try {
                            iArr[DivRadialGradientRelativeRadius.Value.FARTHEST_CORNER.ordinal()] = 1;
                        } catch (NoSuchFieldError unused) {
                        }
                        try {
                            iArr[DivRadialGradientRelativeRadius.Value.NEAREST_CORNER.ordinal()] = 2;
                        } catch (NoSuchFieldError unused2) {
                        }
                        try {
                            iArr[DivRadialGradientRelativeRadius.Value.FARTHEST_SIDE.ordinal()] = 3;
                        } catch (NoSuchFieldError unused3) {
                        }
                        try {
                            iArr[DivRadialGradientRelativeRadius.Value.NEAREST_SIDE.ordinal()] = 4;
                        } catch (NoSuchFieldError unused4) {
                        }
                        a = iArr;
                    }
                }

                public b(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                public final RadialGradientDrawable.Radius a() {
                    RadialGradientDrawable.Radius.Relative.Type type;
                    if (this instanceof a) {
                        return new RadialGradientDrawable.Radius.a(((a) this).b());
                    }
                    if (!(this instanceof C0287b)) {
                        throw new NoWhenBranchMatchedException();
                    }
                    int i = C0288c.a[((C0287b) this).b().ordinal()];
                    if (i == 1) {
                        type = RadialGradientDrawable.Radius.Relative.Type.FARTHEST_CORNER;
                    } else if (i == 2) {
                        type = RadialGradientDrawable.Radius.Relative.Type.NEAREST_CORNER;
                    } else if (i == 3) {
                        type = RadialGradientDrawable.Radius.Relative.Type.FARTHEST_SIDE;
                    } else {
                        if (i != 4) {
                            throw new NoWhenBranchMatchedException();
                        }
                        type = RadialGradientDrawable.Radius.Relative.Type.NEAREST_SIDE;
                    }
                    return new RadialGradientDrawable.Radius.Relative(type);
                }

                public b() {
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public c(a aVar, a aVar2, List list, b bVar) {
                super(null);
                y45.j(aVar, "centerX");
                y45.j(aVar2, "centerY");
                y45.j(list, "colors");
                y45.j(bVar, "radius");
                this.a = aVar;
                this.b = aVar2;
                this.c = list;
                this.d = bVar;
            }

            public final a b() {
                return this.a;
            }

            public final a c() {
                return this.b;
            }

            public final List d() {
                return this.c;
            }

            public final b e() {
                return this.d;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof c)) {
                    return false;
                }
                c cVar = (c) obj;
                return y45.e(this.a, cVar.a) && y45.e(this.b, cVar.b) && y45.e(this.c, cVar.c) && y45.e(this.d, cVar.d);
            }

            public int hashCode() {
                return (((((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + this.c.hashCode()) * 31) + this.d.hashCode();
            }

            public String toString() {
                return "RadialGradient(centerX=" + this.a + ", centerY=" + this.b + ", colors=" + this.c + ", radius=" + this.d + ')';
            }
        }

        public static final class d extends DivBackgroundState {
            public final int a;

            public d(int i) {
                super(null);
                this.a = i;
            }

            public final int b() {
                return this.a;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof d) && this.a == ((d) obj).a;
            }

            public int hashCode() {
                return Integer.hashCode(this.a);
            }

            public String toString() {
                return "Solid(color=" + this.a + ')';
            }
        }

        public DivBackgroundState(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Drawable a(com.yandex.div.core.view2.a aVar, View view, wk2 wk2Var) {
            Drawable radialGradientDrawable;
            y45.j(aVar, "context");
            y45.j(view, TypedValues.AttributesType.S_TARGET);
            y45.j(wk2Var, "imageLoader");
            if (this instanceof Image) {
                return ((Image) this).b(aVar, view, wk2Var);
            }
            if (this instanceof b) {
                return ((b) this).c(aVar.a(), view, wk2Var);
            }
            if (this instanceof d) {
                radialGradientDrawable = new ColorDrawable(((d) this).b());
            } else if (this instanceof a) {
                a aVar2 = (a) this;
                radialGradientDrawable = new fl5(aVar2.b(), aVar2.c());
            } else {
                if (!(this instanceof c)) {
                    throw new NoWhenBranchMatchedException();
                }
                c cVar = (c) this;
                radialGradientDrawable = new RadialGradientDrawable(cVar.e().a(), cVar.b().a(), cVar.c().a(), i81.a1(cVar.d()));
            }
            return radialGradientDrawable;
        }

        public DivBackgroundState() {
        }
    }

    public DivBackgroundBinder(wk2 wk2Var) {
        y45.j(wk2Var, "imageLoader");
        this.a = wk2Var;
    }

    public final void c(List list, oj3 oj3Var, qj3 qj3Var, e74 e74Var) {
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                sj3.b(qj3Var, (DivBackground) it.next(), oj3Var, e74Var);
            }
        }
    }

    public final void d(View view, com.yandex.div.core.view2.a aVar, Drawable drawable, List list) {
        List listK;
        DisplayMetrics displayMetrics = view.getResources().getDisplayMetrics();
        oj3 oj3VarB = aVar.b();
        if (list != null) {
            List<DivBackground> list2 = list;
            listK = new ArrayList(z71.v(list2, 10));
            for (DivBackground divBackground : list2) {
                Div2View div2ViewA = aVar.a();
                y45.i(displayMetrics, "metrics");
                listK.add(s(divBackground, div2ViewA, displayMetrics, oj3VarB));
            }
        } else {
            listK = y71.k();
        }
        List listJ = j(view);
        Drawable drawableI = i(view);
        if (y45.e(listJ, listK) && y45.e(drawableI, drawable)) {
            return;
        }
        u(view, t(listK, aVar, view, drawable));
        n(view, listK);
        o(view, null);
        m(view, drawable);
    }

    public final void e(View view, com.yandex.div.core.view2.a aVar, Drawable drawable, List list, List list2) {
        List listK;
        DisplayMetrics displayMetrics = view.getResources().getDisplayMetrics();
        Div2View div2ViewA = aVar.a();
        oj3 oj3VarB = aVar.b();
        if (list != null) {
            List<DivBackground> list3 = list;
            listK = new ArrayList(z71.v(list3, 10));
            for (DivBackground divBackground : list3) {
                y45.i(displayMetrics, "metrics");
                listK.add(s(divBackground, div2ViewA, displayMetrics, oj3VarB));
            }
        } else {
            listK = y71.k();
        }
        List<DivBackground> list4 = list2;
        List arrayList = new ArrayList(z71.v(list4, 10));
        for (DivBackground divBackground2 : list4) {
            y45.i(displayMetrics, "metrics");
            arrayList.add(s(divBackground2, div2ViewA, displayMetrics, oj3VarB));
        }
        List listJ = j(view);
        List listK2 = k(view);
        Drawable drawableI = i(view);
        if (y45.e(listJ, listK) && y45.e(listK2, arrayList) && y45.e(drawableI, drawable)) {
            return;
        }
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_focused}, t(arrayList, aVar, view, drawable));
        if (list != null || drawable != null) {
            stateListDrawable.addState(StateSet.WILD_CARD, t(listK, aVar, view, drawable));
        }
        u(view, stateListDrawable);
        n(view, listK);
        o(view, arrayList);
        m(view, drawable);
    }

    public void f(com.yandex.div.core.view2.a aVar, View view, List list, List list2, List list3, List list4, qj3 qj3Var, Drawable drawable) {
        y45.j(aVar, "context");
        y45.j(view, "view");
        y45.j(qj3Var, "subscriber");
        if (list3 == null) {
            g(aVar, view, drawable, list, list2, qj3Var);
        } else {
            h(aVar, view, drawable, list, list2, list3, list4, qj3Var);
        }
    }

    public final void g(final com.yandex.div.core.view2.a aVar, final View view, final Drawable drawable, final List list, List list2, qj3 qj3Var) {
        List listK = list == null ? y71.k() : list;
        if (list2 == null) {
            list2 = y71.k();
        }
        Drawable drawableI = i(view);
        if (listK.size() == list2.size()) {
            Iterator it = listK.iterator();
            int i = 0;
            while (true) {
                if (!it.hasNext()) {
                    if (!y45.e(drawable, drawableI)) {
                        break;
                    } else {
                        return;
                    }
                }
                Object next = it.next();
                int i2 = i + 1;
                if (i < 0) {
                    y71.u();
                }
                if (!DivDataExtensionsKt.b((DivBackground) next, (DivBackground) list2.get(i))) {
                    break;
                } else {
                    i = i2;
                }
            }
        }
        d(view, aVar, drawable, list);
        List list3 = listK;
        if ((list3 instanceof Collection) && list3.isEmpty()) {
            return;
        }
        Iterator it2 = list3.iterator();
        while (it2.hasNext()) {
            if (!DivDataExtensionsKt.v((DivBackground) it2.next())) {
                c(list, aVar.b(), qj3Var, new e74() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(1);
                    }

                    @Override
                    public Object invoke(Object obj) {
                        m160invoke(obj);
                        return zfb.a;
                    }

                    public final void m160invoke(Object obj) {
                        y45.j(obj, "<anonymous parameter 0>");
                        this.this$0.d(view, aVar, drawable, list);
                    }
                });
                return;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:57:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:66:0x00e1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:67:? A[LOOP:2: B:55:0x00cf->B:67:?, LOOP_END, SYNTHETIC] */
    public final void h(final com.yandex.div.core.view2.a aVar, final View view, final Drawable drawable, final List list, List list2, final List list3, List list4, qj3 qj3Var) {
        List list5;
        Iterator it;
        List listK = list == null ? y71.k() : list;
        if (list2 == null) {
            list2 = y71.k();
        }
        if (list4 == null) {
            list4 = y71.k();
        }
        Drawable drawableI = i(view);
        if (listK.size() == list2.size()) {
            Iterator it2 = listK.iterator();
            int i = 0;
            int i2 = 0;
            while (true) {
                if (!it2.hasNext()) {
                    if (list3.size() != list4.size()) {
                        break;
                    }
                    Iterator it3 = list3.iterator();
                    while (true) {
                        if (!it3.hasNext()) {
                            if (!y45.e(drawable, drawableI)) {
                                break;
                            } else {
                                return;
                            }
                        }
                        Object next = it3.next();
                        int i3 = i + 1;
                        if (i < 0) {
                            y71.u();
                        }
                        if (!DivDataExtensionsKt.b((DivBackground) next, (DivBackground) list4.get(i))) {
                            break;
                        } else {
                            i = i3;
                        }
                    }
                } else {
                    Object next2 = it2.next();
                    int i4 = i2 + 1;
                    if (i2 < 0) {
                        y71.u();
                    }
                    if (!DivDataExtensionsKt.b((DivBackground) next2, (DivBackground) list2.get(i2))) {
                        break;
                    } else {
                        i2 = i4;
                    }
                }
            }
        }
        e(view, aVar, drawable, list, list3);
        List list6 = listK;
        if ((list6 instanceof Collection) && list6.isEmpty()) {
            list5 = list3;
            if (list5 instanceof Collection) {
            }
            it = list5.iterator();
            while (it.hasNext()) {
                if (!DivDataExtensionsKt.v((DivBackground) it.next())) {
                }
            }
            return;
        }
        Iterator it4 = list6.iterator();
        while (it4.hasNext()) {
            if (!DivDataExtensionsKt.v((DivBackground) it4.next())) {
            }
        }
        list5 = list3;
        if ((list5 instanceof Collection) || !list5.isEmpty()) {
            it = list5.iterator();
            while (it.hasNext()) {
                if (!DivDataExtensionsKt.v((DivBackground) it.next())) {
                }
            }
            return;
        }
        return;
        e74 e74Var = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m161invoke(obj);
                return zfb.a;
            }

            public final void m161invoke(Object obj) {
                y45.j(obj, "<anonymous parameter 0>");
                this.this$0.e(view, aVar, drawable, list, list3);
            }
        };
        oj3 oj3VarB = aVar.b();
        c(list, oj3VarB, qj3Var, e74Var);
        c(list3, oj3VarB, qj3Var, e74Var);
    }

    public final Drawable i(View view) {
        Object tag = view.getTag(com.yandex.div.R.id.div_additional_background_layer_tag);
        if (tag instanceof Drawable) {
            return (Drawable) tag;
        }
        return null;
    }

    public final List j(View view) {
        Object tag = view.getTag(com.yandex.div.R.id.div_default_background_list_tag);
        if (tag instanceof List) {
            return (List) tag;
        }
        return null;
    }

    public final List k(View view) {
        Object tag = view.getTag(com.yandex.div.R.id.div_focused_background_list_tag);
        if (tag instanceof List) {
            return (List) tag;
        }
        return null;
    }

    public final boolean l(DivImageBackground divImageBackground, oj3 oj3Var) {
        List list;
        return ((Number) divImageBackground.a.b(oj3Var)).doubleValue() == 1.0d && ((list = divImageBackground.d) == null || list.isEmpty());
    }

    public final void m(View view, Drawable drawable) {
        view.setTag(com.yandex.div.R.id.div_additional_background_layer_tag, drawable);
    }

    public final void n(View view, List list) {
        view.setTag(com.yandex.div.R.id.div_default_background_list_tag, list);
    }

    public final void o(View view, List list) {
        view.setTag(com.yandex.div.R.id.div_focused_background_list_tag, list);
    }

    public final DivBackgroundState.Image.a p(DivFilter divFilter, oj3 oj3Var) {
        int i;
        if (!(divFilter instanceof DivFilter.a)) {
            if (divFilter instanceof DivFilter.c) {
                return new DivBackgroundState.Image.a.b((DivFilter.c) divFilter);
            }
            throw new NoWhenBranchMatchedException();
        }
        DivFilter.a aVar = (DivFilter.a) divFilter;
        long jLongValue = ((Number) aVar.c().a.b(oj3Var)).longValue();
        long j = jLongValue >> 31;
        if (j == 0 || j == -1) {
            i = (int) jLongValue;
        } else {
            ae5 ae5Var = ae5.a;
            if (xi.o()) {
                xi.i("Unable convert '" + jLongValue + "' to Int");
            }
            i = jLongValue > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
        }
        return new DivBackgroundState.Image.a.C0285a(i, aVar);
    }

    public final DivBackgroundState.c.a q(DivRadialGradientCenter divRadialGradientCenter, DisplayMetrics displayMetrics, oj3 oj3Var) {
        if (divRadialGradientCenter instanceof DivRadialGradientCenter.b) {
            return new DivBackgroundState.c.a.C0286a(BaseDivViewExtensionsKt.K0(((DivRadialGradientCenter.b) divRadialGradientCenter).c(), displayMetrics, oj3Var));
        }
        if (divRadialGradientCenter instanceof DivRadialGradientCenter.c) {
            return new DivBackgroundState.c.a.b((float) ((Number) ((DivRadialGradientCenter.c) divRadialGradientCenter).c().a.b(oj3Var)).doubleValue());
        }
        throw new NoWhenBranchMatchedException();
    }

    public final DivBackgroundState.c.b r(DivRadialGradientRadius divRadialGradientRadius, DisplayMetrics displayMetrics, oj3 oj3Var) {
        if (divRadialGradientRadius instanceof DivRadialGradientRadius.b) {
            return new DivBackgroundState.c.b.a(BaseDivViewExtensionsKt.J0(((DivRadialGradientRadius.b) divRadialGradientRadius).c(), displayMetrics, oj3Var));
        }
        if (divRadialGradientRadius instanceof DivRadialGradientRadius.c) {
            return new DivBackgroundState.c.b.C0287b((DivRadialGradientRelativeRadius.Value) ((DivRadialGradientRadius.c) divRadialGradientRadius).c().a.b(oj3Var));
        }
        throw new NoWhenBranchMatchedException();
    }

    public final DivBackgroundState s(DivBackground divBackground, Div2View div2View, DisplayMetrics displayMetrics, oj3 oj3Var) {
        int i;
        int i2;
        int i3;
        int i4;
        ArrayList arrayList;
        List listK;
        int i5;
        if (divBackground instanceof DivBackground.c) {
            DivBackground.c cVar = (DivBackground.c) divBackground;
            long jLongValue = ((Number) cVar.c().a.b(oj3Var)).longValue();
            long j = jLongValue >> 31;
            if (j == 0 || j == -1) {
                i5 = (int) jLongValue;
            } else {
                ae5 ae5Var = ae5.a;
                if (xi.o()) {
                    xi.i("Unable convert '" + jLongValue + "' to Int");
                }
                i5 = jLongValue > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
            }
            return new DivBackgroundState.a(i5, z91.a(DivDataExtensionsKt.O(cVar.c(), oj3Var), div2View));
        }
        if (divBackground instanceof DivBackground.e) {
            DivBackground.e eVar = (DivBackground.e) divBackground;
            DivBackgroundState.c.a aVarQ = q(eVar.c().a, displayMetrics, oj3Var);
            DivBackgroundState.c.a aVarQ2 = q(eVar.c().b, displayMetrics, oj3Var);
            nj3 nj3Var = eVar.c().d;
            if (nj3Var == null || (listK = nj3Var.a(oj3Var)) == null) {
                listK = y71.k();
            }
            return new DivBackgroundState.c(aVarQ, aVarQ2, listK, r(eVar.c().e, displayMetrics, oj3Var));
        }
        if (divBackground instanceof DivBackground.b) {
            DivBackground.b bVar = (DivBackground.b) divBackground;
            double dDoubleValue = ((Number) bVar.c().a.b(oj3Var)).doubleValue();
            DivAlignmentHorizontal divAlignmentHorizontal = (DivAlignmentHorizontal) bVar.c().b.b(oj3Var);
            DivAlignmentVertical divAlignmentVertical = (DivAlignmentVertical) bVar.c().c.b(oj3Var);
            Uri uri = (Uri) bVar.c().e.b(oj3Var);
            boolean zBooleanValue = ((Boolean) bVar.c().f.b(oj3Var)).booleanValue();
            DivImageScale divImageScale = (DivImageScale) bVar.c().g.b(oj3Var);
            List list = bVar.c().d;
            if (list != null) {
                List list2 = list;
                arrayList = new ArrayList(z71.v(list2, 10));
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    arrayList.add(p((DivFilter) it.next(), oj3Var));
                }
            } else {
                arrayList = null;
            }
            return new DivBackgroundState.Image(dDoubleValue, divAlignmentHorizontal, divAlignmentVertical, uri, zBooleanValue, divImageScale, arrayList, l(bVar.c(), oj3Var));
        }
        if (divBackground instanceof DivBackground.f) {
            return new DivBackgroundState.d(((Number) ((DivBackground.f) divBackground).c().a.b(oj3Var)).intValue());
        }
        if (!(divBackground instanceof DivBackground.d)) {
            throw new NoWhenBranchMatchedException();
        }
        DivBackground.d dVar = (DivBackground.d) divBackground;
        Uri uri2 = (Uri) dVar.c().a.b(oj3Var);
        long jLongValue2 = ((Number) dVar.c().b.b.b(oj3Var)).longValue();
        long j2 = jLongValue2 >> 31;
        if (j2 == 0 || j2 == -1) {
            i = (int) jLongValue2;
        } else {
            ae5 ae5Var2 = ae5.a;
            if (xi.o()) {
                xi.i("Unable convert '" + jLongValue2 + "' to Int");
            }
            i = jLongValue2 > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
        }
        long jLongValue3 = ((Number) dVar.c().b.d.b(oj3Var)).longValue();
        long j3 = jLongValue3 >> 31;
        if (j3 == 0 || j3 == -1) {
            i2 = (int) jLongValue3;
        } else {
            ae5 ae5Var3 = ae5.a;
            if (xi.o()) {
                xi.i("Unable convert '" + jLongValue3 + "' to Int");
            }
            i2 = jLongValue3 > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
        }
        long jLongValue4 = ((Number) dVar.c().b.c.b(oj3Var)).longValue();
        long j4 = jLongValue4 >> 31;
        if (j4 == 0 || j4 == -1) {
            i3 = (int) jLongValue4;
        } else {
            ae5 ae5Var4 = ae5.a;
            if (xi.o()) {
                xi.i("Unable convert '" + jLongValue4 + "' to Int");
            }
            i3 = jLongValue4 > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
        }
        long jLongValue5 = ((Number) dVar.c().b.a.b(oj3Var)).longValue();
        long j5 = jLongValue5 >> 31;
        if (j5 == 0 || j5 == -1) {
            i4 = (int) jLongValue5;
        } else {
            ae5 ae5Var5 = ae5.a;
            if (xi.o()) {
                xi.i("Unable convert '" + jLongValue5 + "' to Int");
            }
            i4 = jLongValue5 > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
        }
        return new DivBackgroundState.b(uri2, new Rect(i, i2, i3, i4));
    }

    public final Drawable t(List list, com.yandex.div.core.view2.a aVar, View view, Drawable drawable) {
        if (drawable != null) {
            drawable.mutate();
        }
        if (list == null) {
            if (drawable != null) {
                return new LayerDrawable(new Drawable[]{drawable});
            }
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Drawable drawableMutate = ((DivBackgroundState) it.next()).a(aVar, view, this.a).mutate();
            if (drawableMutate != null) {
                arrayList.add(drawableMutate);
            }
        }
        List listE1 = i81.e1(arrayList);
        if (drawable != null) {
            listE1.add(drawable);
        }
        List list2 = listE1;
        if (list2.isEmpty()) {
            return null;
        }
        return new LayerDrawable((Drawable[]) list2.toArray(new Drawable[0]));
    }

    public final void u(View view, Drawable drawable) {
        boolean z;
        ArrayList arrayList = new ArrayList();
        if (drawable != null) {
            arrayList.add(drawable);
        }
        Drawable background = view.getBackground();
        LayerDrawable layerDrawable = background instanceof LayerDrawable ? (LayerDrawable) background : null;
        if ((layerDrawable != null ? layerDrawable.findDrawableByLayerId(com.yandex.div.R.drawable.native_animation_background) : null) != null) {
            Drawable drawable2 = ContextCompat.getDrawable(view.getContext(), com.yandex.div.R.drawable.native_animation_background);
            if (drawable2 != null) {
                arrayList.add(drawable2);
            }
            z = true;
        } else {
            z = false;
        }
        view.setBackground(new LayerDrawable((Drawable[]) arrayList.toArray(new Drawable[0])));
        if (z) {
            Drawable background2 = view.getBackground();
            y45.h(background2, "null cannot be cast to non-null type android.graphics.drawable.LayerDrawable");
            Drawable background3 = view.getBackground();
            y45.h(background3, "null cannot be cast to non-null type android.graphics.drawable.LayerDrawable");
            ((LayerDrawable) background2).setId(((LayerDrawable) background3).getNumberOfLayers() - 1, com.yandex.div.R.drawable.native_animation_background);
        }
    }
}
