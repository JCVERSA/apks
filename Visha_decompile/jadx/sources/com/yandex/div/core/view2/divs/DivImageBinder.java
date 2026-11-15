package com.yandex.div.core.view2.divs;

import android.graphics.Bitmap;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.PictureDrawable;
import android.net.Uri;
import android.view.animation.Interpolator;
import android.widget.ImageView;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.core.images.BitmapSource;
import com.yandex.div.core.util.DivDataExtensionsKt;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.core.view2.DivPlaceholderLoader;
import com.yandex.div.core.view2.divs.widgets.DivImageView;
import com.yandex.div.core.widget.LoadableImageView;
import com.yandex.div.internal.widget.AspectImageView;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivAlignmentHorizontal;
import com.yandex.div2.DivAlignmentVertical;
import com.yandex.div2.DivAnimationInterpolator;
import com.yandex.div2.DivBlendMode;
import com.yandex.div2.DivFadeTransition;
import com.yandex.div2.DivFilter;
import com.yandex.div2.DivImage;
import com.yandex.div2.DivImageScale;
import defpackage.by4;
import defpackage.dq0;
import defpackage.e74;
import defpackage.eu2;
import defpackage.gy4;
import defpackage.jn5;
import defpackage.oj3;
import defpackage.ok2;
import defpackage.uj3;
import defpackage.wc3;
import defpackage.wk2;
import defpackage.wu2;
import defpackage.xc3;
import defpackage.y45;
import defpackage.y71;
import defpackage.zfb;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public final class DivImageBinder extends wu2 {
    public final wk2 b;
    public final DivPlaceholderLoader c;
    public final xc3 d;

    public static final class a extends ok2 {
        public final DivImageView b;
        public final DivImageBinder c;
        public final com.yandex.div.core.view2.a d;
        public final DivImage e;
        public final oj3 f;
        public final Uri g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(DivImageView divImageView, DivImageBinder divImageBinder, com.yandex.div.core.view2.a aVar, DivImage divImage, oj3 oj3Var, Uri uri, Div2View div2View) {
            super(div2View);
            this.b = divImageView;
            this.c = divImageBinder;
            this.d = aVar;
            this.e = divImage;
            this.f = oj3Var;
            this.g = uri;
        }

        @Override
        public void a() {
            super.a();
            this.b.setImageUrl$div_release(null);
        }

        @Override
        public void b(dq0 dq0Var) {
            y45.j(dq0Var, "cachedBitmap");
            super.b(dq0Var);
            this.b.setCurrentBitmapWithoutFilters$div_release(dq0Var.a());
            this.c.p(this.b, this.d, this.e.t);
            this.c.s(this.b, this.e, this.f, dq0Var.d());
            this.b.imageLoaded();
            DivImageBinder divImageBinder = this.c;
            DivImageView divImageView = this.b;
            Expression expression = this.e.P;
            divImageBinder.u(divImageView, expression != null ? (Integer) expression.b(this.f) : null, (DivBlendMode) this.e.Q.b(this.f));
            this.b.invalidate();
        }

        @Override
        public void c(PictureDrawable pictureDrawable) {
            y45.j(pictureDrawable, "pictureDrawable");
            if (!this.c.D(this.e)) {
                b(gy4.b(pictureDrawable, this.g, null, 2, null));
                return;
            }
            super.c(pictureDrawable);
            this.b.setImageDrawable(pictureDrawable);
            this.c.s(this.b, this.e, this.f, null);
            this.b.imageLoaded();
            this.b.invalidate();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivImageBinder(DivBaseBinder divBaseBinder, wk2 wk2Var, DivPlaceholderLoader divPlaceholderLoader, xc3 xc3Var) {
        super(divBaseBinder);
        y45.j(divBaseBinder, "baseBinder");
        y45.j(wk2Var, "imageLoader");
        y45.j(divPlaceholderLoader, "placeholderLoader");
        y45.j(xc3Var, "errorCollectors");
        this.b = wk2Var;
        this.c = divPlaceholderLoader;
        this.d = xc3Var;
    }

    public final void A(final DivImageView divImageView, final DivImage divImage, DivImage divImage2, final oj3 oj3Var) {
        if (uj3.b(divImage.P, divImage2 != null ? divImage2.P : null)) {
            if (uj3.b(divImage.Q, divImage2 != null ? divImage2.Q : null)) {
                return;
            }
        }
        Expression expression = divImage.P;
        u(divImageView, expression != null ? (Integer) expression.b(oj3Var) : null, (DivBlendMode) divImage.Q.b(oj3Var));
        if (uj3.f(divImage.P) && uj3.d(divImage.Q)) {
            return;
        }
        e74 e74Var = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m191invoke(obj);
                return zfb.a;
            }

            public final void m191invoke(Object obj) {
                y45.j(obj, "<anonymous parameter 0>");
                DivImageBinder divImageBinder = this.this$0;
                DivImageView divImageView2 = divImageView;
                Expression expression2 = divImage.P;
                divImageBinder.u(divImageView2, expression2 != null ? (Integer) expression2.b(oj3Var) : null, (DivBlendMode) divImage.Q.b(oj3Var));
            }
        };
        Expression expression2 = divImage.P;
        divImageView.addSubscription(expression2 != null ? expression2.e(oj3Var, e74Var) : null);
        divImageView.addSubscription(divImage.Q.e(oj3Var, e74Var));
    }

    public final void B(ImageView imageView) {
        imageView.setColorFilter((ColorFilter) null);
    }

    public final boolean C(oj3 oj3Var, DivImageView divImageView, DivImage divImage) {
        return !divImageView.isImageLoaded() && ((Boolean) divImage.x.b(oj3Var)).booleanValue();
    }

    public final boolean D(DivImage divImage) {
        List list;
        return divImage.P == null && ((list = divImage.t) == null || list.isEmpty());
    }

    public final void E(final DivImageView divImageView, final com.yandex.div.core.view2.a aVar, final DivImage divImage, final wc3 wc3Var) {
        final oj3 oj3VarB = aVar.b();
        e74 e74Var = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m192invoke(obj);
                return zfb.a;
            }

            public final void m192invoke(Object obj) {
                y45.j(obj, "<anonymous parameter 0>");
                if (divImageView.isImageLoaded()) {
                    return;
                }
                DivImageBinder divImageBinder = this;
                DivImageView divImageView2 = divImageView;
                com.yandex.div.core.view2.a aVar2 = aVar;
                DivImage divImage2 = divImage;
                divImageBinder.t(divImageView2, aVar2, divImage2, divImageBinder.C(oj3VarB, divImageView2, divImage2), wc3Var);
            }
        };
        Expression expression = divImage.K;
        divImageView.addSubscription(expression != null ? expression.e(oj3VarB, e74Var) : null);
        divImageView.addSubscription(divImage.G.e(oj3VarB, e74Var));
    }

    public final void o(AspectImageView aspectImageView, DivAlignmentHorizontal divAlignmentHorizontal, DivAlignmentVertical divAlignmentVertical) {
        aspectImageView.setGravity(BaseDivViewExtensionsKt.O(divAlignmentHorizontal, divAlignmentVertical));
    }

    public final void p(final DivImageView divImageView, com.yandex.div.core.view2.a aVar, List list) {
        Bitmap currentBitmapWithoutFilters = divImageView.getCurrentBitmapWithoutFilters();
        if (currentBitmapWithoutFilters == null) {
            divImageView.setImageBitmap(null);
        } else {
            BaseDivViewExtensionsKt.h(divImageView, aVar, currentBitmapWithoutFilters, list, new e74() {
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
                    divImageView.setImageBitmap(bitmap);
                }
            });
        }
    }

    public final boolean q(DivImageView divImageView, com.yandex.div.core.view2.a aVar, DivImage divImage, wc3 wc3Var) {
        oj3 oj3VarB = aVar.b();
        Uri uri = (Uri) divImage.B.b(oj3VarB);
        if (y45.e(uri, divImageView.getImageUrl())) {
            return false;
        }
        boolean zC = C(oj3VarB, divImageView, divImage);
        divImageView.resetImageLoaded();
        B(divImageView);
        jn5 loadReference = divImageView.getLoadReference();
        if (loadReference != null) {
            loadReference.cancel();
        }
        t(divImageView, aVar, divImage, zC, wc3Var);
        divImageView.setImageUrl$div_release(uri);
        jn5 jn5VarLoadImage = this.b.loadImage(uri.toString(), new a(divImageView, this, aVar, divImage, oj3VarB, uri, aVar.a()));
        y45.i(jn5VarLoadImage, "private fun DivImageView…        return true\n    }");
        aVar.a().addLoadReference(jn5VarLoadImage, divImageView);
        divImageView.setLoadReference$div_release(jn5VarLoadImage);
        return true;
    }

    public final void r(DivImageView divImageView, DivImageScale divImageScale) {
        divImageView.setImageScale(BaseDivViewExtensionsKt.B0(divImageScale));
    }

    public final void s(DivImageView divImageView, DivImage divImage, oj3 oj3Var, BitmapSource bitmapSource) {
        divImageView.animate().cancel();
        DivFadeTransition divFadeTransition = divImage.i;
        float fDoubleValue = (float) ((Number) divImage.p().b(oj3Var)).doubleValue();
        if (divFadeTransition == null || bitmapSource == BitmapSource.MEMORY) {
            divImageView.setAlpha(fDoubleValue);
            return;
        }
        long jLongValue = ((Number) divFadeTransition.b().b(oj3Var)).longValue();
        Interpolator interpolatorD = eu2.d((DivAnimationInterpolator) divFadeTransition.c().b(oj3Var));
        divImageView.setAlpha((float) ((Number) divFadeTransition.a.b(oj3Var)).doubleValue());
        divImageView.animate().alpha(fDoubleValue).setDuration(jLongValue).setInterpolator(interpolatorD).setStartDelay(((Number) divFadeTransition.d().b(oj3Var)).longValue());
    }

    public final void t(final DivImageView divImageView, final com.yandex.div.core.view2.a aVar, final DivImage divImage, boolean z, wc3 wc3Var) {
        final oj3 oj3VarB = aVar.b();
        DivPlaceholderLoader divPlaceholderLoader = this.c;
        Expression expression = divImage.K;
        divPlaceholderLoader.b(divImageView, wc3Var, expression != null ? (String) expression.b(oj3VarB) : null, ((Number) divImage.G.b(oj3VarB)).intValue(), z, new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((Drawable) obj);
                return zfb.a;
            }

            public final void invoke(Drawable drawable) {
                if (divImageView.isImageLoaded() || divImageView.isImagePreview()) {
                    return;
                }
                divImageView.setPlaceholder(drawable);
            }
        }, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((by4) obj);
                return zfb.a;
            }

            public final void invoke(by4 by4Var) {
                y45.j(by4Var, "it");
                if (divImageView.isImageLoaded()) {
                    return;
                }
                if (!(by4Var instanceof by4.a)) {
                    if (by4Var instanceof by4.b) {
                        divImageView.previewLoaded();
                        divImageView.setImageDrawable(((by4.b) by4Var).f());
                        return;
                    }
                    return;
                }
                divImageView.setCurrentBitmapWithoutFilters$div_release(((by4.a) by4Var).f());
                this.p(divImageView, aVar, divImage.t);
                divImageView.previewLoaded();
                DivImageBinder divImageBinder = this;
                DivImageView divImageView2 = divImageView;
                Expression expression2 = divImage.P;
                divImageBinder.u(divImageView2, expression2 != null ? (Integer) expression2.b(oj3VarB) : null, (DivBlendMode) divImage.Q.b(oj3VarB));
            }
        });
    }

    public final void u(LoadableImageView loadableImageView, Integer num, DivBlendMode divBlendMode) {
        if ((loadableImageView.isImageLoaded() || loadableImageView.isImagePreview()) && num != null) {
            loadableImageView.setColorFilter(num.intValue(), BaseDivViewExtensionsKt.E0(divBlendMode));
        } else {
            B(loadableImageView);
        }
    }

    @Override
    public void a(DivImageView divImageView, com.yandex.div.core.view2.a aVar, DivImage divImage, DivImage divImage2) {
        y45.j(divImageView, "<this>");
        y45.j(aVar, "bindingContext");
        y45.j(divImage, TtmlNode.TAG_DIV);
        BaseDivViewExtensionsKt.j(divImageView, aVar, divImage.b, divImage.d, divImage.D, divImage.r, divImage.z, divImage.y, divImage.J, divImage.I, divImage.c, divImage.r(), divImage.m);
        Div2View div2ViewA = aVar.a();
        oj3 oj3VarB = aVar.b();
        wc3 wc3VarA = this.d.a(div2ViewA.getDataTag(), div2ViewA.getDivData());
        BaseDivViewExtensionsKt.A(divImageView, divImage.j, divImage2 != null ? divImage2.j : null, oj3VarB);
        y(divImageView, divImage, divImage2, oj3VarB);
        w(divImageView, divImage, divImage2, oj3VarB);
        z(divImageView, aVar, divImage, divImage2, wc3VarA);
        A(divImageView, divImage, divImage2, oj3VarB);
        x(divImageView, aVar, divImage, divImage2);
    }

    public final void w(final DivImageView divImageView, final DivImage divImage, DivImage divImage2, final oj3 oj3Var) {
        if (uj3.b(divImage.o, divImage2 != null ? divImage2.o : null)) {
            if (uj3.b(divImage.p, divImage2 != null ? divImage2.p : null)) {
                return;
            }
        }
        o(divImageView, (DivAlignmentHorizontal) divImage.o.b(oj3Var), (DivAlignmentVertical) divImage.p.b(oj3Var));
        if (uj3.d(divImage.o) && uj3.d(divImage.p)) {
            return;
        }
        e74 e74Var = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m189invoke(obj);
                return zfb.a;
            }

            public final void m189invoke(Object obj) {
                y45.j(obj, "<anonymous parameter 0>");
                this.this$0.o(divImageView, (DivAlignmentHorizontal) divImage.o.b(oj3Var), (DivAlignmentVertical) divImage.p.b(oj3Var));
            }
        };
        divImageView.addSubscription(divImage.o.e(oj3Var, e74Var));
        divImageView.addSubscription(divImage.p.e(oj3Var, e74Var));
    }

    /* JADX WARN: Code duplicated, block: B:31:0x005e  */
    public final void x(final DivImageView divImageView, final com.yandex.div.core.view2.a aVar, final DivImage divImage, DivImage divImage2) {
        boolean z;
        List list;
        List list2;
        List list3 = divImage.t;
        Boolean boolValueOf = null;
        boolean zE = y45.e(list3 != null ? Integer.valueOf(list3.size()) : null, (divImage2 == null || (list2 = divImage2.t) == null) ? null : Integer.valueOf(list2.size()));
        boolean z2 = false;
        if (zE) {
            List list4 = divImage.t;
            if (list4 != null) {
                int i = 0;
                z = true;
                for (Object obj : list4) {
                    int i2 = i + 1;
                    if (i < 0) {
                        y71.u();
                    }
                    DivFilter divFilter = (DivFilter) obj;
                    if (!z) {
                        z = false;
                    } else if (DivDataExtensionsKt.h(divFilter, (divImage2 == null || (list = divImage2.t) == null) ? null : (DivFilter) list.get(i))) {
                        z = true;
                    } else {
                        z = false;
                    }
                    i = i2;
                }
            } else {
                z = true;
            }
            if (z) {
                return;
            }
        }
        p(divImageView, aVar, divImage.t);
        List list5 = divImage.t;
        if (list5 != null) {
            List list6 = list5;
            if (!(list6 instanceof Collection) || !list6.isEmpty()) {
                Iterator it = list6.iterator();
                do {
                    if (!it.hasNext()) {
                        z2 = true;
                        break;
                    }
                } while (DivDataExtensionsKt.B((DivFilter) it.next()));
            } else {
                z2 = true;
                break;
            }
            boolValueOf = Boolean.valueOf(z2);
        }
        if (y45.e(boolValueOf, Boolean.FALSE)) {
            e74 e74Var = new e74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override
                public Object invoke(Object obj2) {
                    m190invoke(obj2);
                    return zfb.a;
                }

                public final void m190invoke(Object obj2) {
                    y45.j(obj2, "<anonymous parameter 0>");
                    this.this$0.p(divImageView, aVar, divImage.t);
                }
            };
            List<DivFilter> list7 = divImage.t;
            if (list7 != null) {
                for (DivFilter divFilter2 : list7) {
                    if (divFilter2 instanceof DivFilter.a) {
                        divImageView.addSubscription(((DivFilter.a) divFilter2).c().a.e(aVar.b(), e74Var));
                    }
                }
            }
        }
    }

    public final void y(final DivImageView divImageView, DivImage divImage, DivImage divImage2, oj3 oj3Var) {
        if (uj3.b(divImage.N, divImage2 != null ? divImage2.N : null)) {
            return;
        }
        r(divImageView, (DivImageScale) divImage.N.b(oj3Var));
        if (uj3.d(divImage.N)) {
            return;
        }
        divImageView.addSubscription(divImage.N.e(oj3Var, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((DivImageScale) obj);
                return zfb.a;
            }

            public final void invoke(DivImageScale divImageScale) {
                y45.j(divImageScale, "scale");
                this.this$0.r(divImageView, divImageScale);
            }
        }));
    }

    /* JADX WARN: Code duplicated, block: B:19:0x002c  */
    public final void z(final DivImageView divImageView, final com.yandex.div.core.view2.a aVar, final DivImage divImage, DivImage divImage2, final wc3 wc3Var) {
        boolean z;
        boolean zB = uj3.b(divImage.B, divImage2 != null ? divImage2.B : null);
        if (uj3.b(divImage.K, divImage2 != null ? divImage2.K : null)) {
            if (uj3.b(divImage.G, divImage2 != null ? divImage2.G : null)) {
                z = false;
            } else {
                z = true;
            }
        } else {
            z = true;
        }
        boolean z2 = uj3.f(divImage.K) && uj3.d(divImage.G);
        boolean z3 = !divImageView.isImageLoaded() && z;
        if (z3 && !z2) {
            E(divImageView, aVar, divImage, wc3Var);
        }
        if (!zB && !uj3.f(divImage.B)) {
            divImageView.addSubscription(divImage.B.e(aVar.b(), new e74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override
                public Object invoke(Object obj) {
                    invoke((Uri) obj);
                    return zfb.a;
                }

                public final void invoke(Uri uri) {
                    y45.j(uri, "it");
                    this.this$0.q(divImageView, aVar, divImage, wc3Var);
                }
            }));
        }
        if (q(divImageView, aVar, divImage, wc3Var) || !z3) {
            return;
        }
        t(divImageView, aVar, divImage, C(aVar.b(), divImageView, divImage), wc3Var);
    }
}
