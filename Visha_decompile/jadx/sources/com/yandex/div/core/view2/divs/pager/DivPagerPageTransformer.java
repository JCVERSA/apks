package com.yandex.div.core.view2.divs.pager;

import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivAnimationInterpolator;
import com.yandex.div2.DivPageTransformation;
import com.yandex.div2.DivPageTransformationOverlap;
import com.yandex.div2.DivPageTransformationSlide;
import defpackage.eu2;
import defpackage.oj3;
import defpackage.pdc;
import defpackage.tn2;
import defpackage.wn8;
import defpackage.y45;
import defpackage.zl2;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b \b\u0000\u0018\u00002\u00020\u0001BG\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u001f\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J#\u0010\u001a\u001a\u00020\u0016*\u00020\u00192\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ#\u0010\u001d\u001a\u00020\u0016*\u00020\u001c2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u001d\u0010\u001eJa\u0010'\u001a\u00020\u0016*\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00072\f\u0010!\u001a\b\u0012\u0004\u0012\u00020 0\u001f2\f\u0010#\u001a\b\u0012\u0004\u0012\u00020\"0\u001f2\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\"0\u001f2\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\"0\u001f2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\"0\u001fH\u0002¢\u0006\u0004\b'\u0010(J%\u0010*\u001a\u00020\u0016*\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00072\b\b\u0002\u0010)\u001a\u00020\u000fH\u0002¢\u0006\u0004\b*\u0010+J#\u0010.\u001a\u00020\u0016*\u00020\u00132\u0006\u0010,\u001a\u00020\t2\u0006\u0010-\u001a\u00020\u0007H\u0002¢\u0006\u0004\b.\u0010/J#\u00102\u001a\u00020\u0016*\u00020\u00132\u0006\u00100\u001a\u00020\u00072\u0006\u00101\u001a\u00020\"H\u0002¢\u0006\u0004\b2\u00103J#\u00105\u001a\u00020\u0016*\u00020\u00132\u0006\u00100\u001a\u00020\u00072\u0006\u00104\u001a\u00020\"H\u0002¢\u0006\u0004\b5\u00103J'\u00108\u001a\u00020\"2\u0006\u00106\u001a\u00020\"2\u0006\u00107\u001a\u00020\"2\u0006\u00100\u001a\u00020\u0007H\u0002¢\u0006\u0004\b8\u00109R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010:R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010;R\u001a\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010<R\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010=R\u0016\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010>R\u0014\u0010\u000e\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b?\u0010@R\u0014\u0010\u0010\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u0010A¨\u0006B"}, d2 = {"Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;", "Landroidx/viewpager2/widget/ViewPager2$PageTransformer;", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "Loj3;", "resolver", "Landroid/util/SparseArray;", "", "pageTranslations", "", "parentSize", "Lcom/yandex/div2/DivPageTransformation;", "pageTransformation", "Ltn2;", "offsetProvider", "", "isHorizontal", MethodDecl.initName, "(Landroidx/recyclerview/widget/RecyclerView;Loj3;Landroid/util/SparseArray;ILcom/yandex/div2/DivPageTransformation;Ltn2;Z)V", "Landroid/view/View;", "page", "position", "Lzfb;", "transformPage", "(Landroid/view/View;F)V", "Lcom/yandex/div2/DivPageTransformationSlide;", "b", "(Lcom/yandex/div2/DivPageTransformationSlide;Landroid/view/View;F)V", "Lcom/yandex/div2/DivPageTransformationOverlap;", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(Lcom/yandex/div2/DivPageTransformationOverlap;Landroid/view/View;F)V", "Lcom/yandex/div/json/expressions/Expression;", "Lcom/yandex/div2/DivAnimationInterpolator;", "interpolator", "", "nextPageAlpha", "nextPageScale", "previousPageAlpha", "previousPageScale", "c", "(Landroid/view/View;FLcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V", "overlap", "e", "(Landroid/view/View;FZ)V", "pagePosition", TypedValues.CycleType.S_WAVE_OFFSET, "d", "(Landroid/view/View;IF)V", "interpolatedValue", "cornerAlpha", GslbInterceptor.HEADER_KEY_GSLB, "(Landroid/view/View;FD)V", "cornerScale", CmcdData.STREAMING_FORMAT_HLS, "value1", "value2", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "(DDF)D", "Landroidx/recyclerview/widget/RecyclerView;", "Loj3;", "Landroid/util/SparseArray;", "I", "Lcom/yandex/div2/DivPageTransformation;", "f", "Ltn2;", "Z", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class DivPagerPageTransformer implements ViewPager2.PageTransformer {

    public final RecyclerView recyclerView;

    public final oj3 resolver;

    public final SparseArray pageTranslations;

    public final int parentSize;

    public final DivPageTransformation pageTransformation;

    public final tn2 offsetProvider;

    public final boolean isHorizontal;

    public DivPagerPageTransformer(RecyclerView recyclerView, oj3 oj3Var, SparseArray sparseArray, int i, DivPageTransformation divPageTransformation, tn2 tn2Var, boolean z) {
        y45.j(recyclerView, "recyclerView");
        y45.j(oj3Var, "resolver");
        y45.j(sparseArray, "pageTranslations");
        y45.j(tn2Var, "offsetProvider");
        this.recyclerView = recyclerView;
        this.resolver = oj3Var;
        this.pageTranslations = sparseArray;
        this.parentSize = i;
        this.pageTransformation = divPageTransformation;
        this.offsetProvider = tn2Var;
        this.isHorizontal = z;
    }

    public static void f(DivPagerPageTransformer divPagerPageTransformer, View view, float f, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        divPagerPageTransformer.e(view, f, z);
    }

    public final void a(DivPageTransformationOverlap divPageTransformationOverlap, View view, float f) {
        c(view, f, divPageTransformationOverlap.a, divPageTransformationOverlap.b, divPageTransformationOverlap.c, divPageTransformationOverlap.d, divPageTransformationOverlap.e);
        if (f > 0.0f || (f < 0.0f && ((Boolean) divPageTransformationOverlap.f.b(this.resolver)).booleanValue())) {
            f(this, view, f, false, 2, null);
            view.setTranslationZ(0.0f);
        } else {
            e(view, f, true);
            view.setTranslationZ(-Math.abs(f));
        }
    }

    public final void b(DivPageTransformationSlide divPageTransformationSlide, View view, float f) {
        c(view, f, divPageTransformationSlide.a, divPageTransformationSlide.b, divPageTransformationSlide.c, divPageTransformationSlide.d, divPageTransformationSlide.e);
        f(this, view, f, false, 2, null);
    }

    public final void c(View view, float f, Expression expression, Expression expression2, Expression expression3, Expression expression4, Expression expression5) {
        float interpolation = 1 - eu2.d((DivAnimationInterpolator) expression.b(this.resolver)).getInterpolation(Math.abs(wn8.f(wn8.c(f, -1.0f), 1.0f)));
        if (f > 0.0f) {
            g(view, interpolation, ((Number) expression2.b(this.resolver)).doubleValue());
            h(view, interpolation, ((Number) expression3.b(this.resolver)).doubleValue());
        } else {
            g(view, interpolation, ((Number) expression4.b(this.resolver)).doubleValue());
            h(view, interpolation, ((Number) expression5.b(this.resolver)).doubleValue());
        }
    }

    public final void d(View view, int i, float f) {
        this.pageTranslations.put(i, Float.valueOf(f));
        if (this.isHorizontal) {
            view.setTranslationX(f);
        } else {
            view.setTranslationY(f);
        }
    }

    public final void e(View view, float f, boolean z) {
        int childAdapterPosition = this.recyclerView.getChildAdapterPosition(view);
        if (childAdapterPosition == -1) {
            return;
        }
        float f2 = -(z ? this.parentSize * f : this.offsetProvider.k(f, childAdapterPosition, this.pageTransformation instanceof DivPageTransformation.b));
        if (this.isHorizontal && pdc.f(this.recyclerView)) {
            f2 = -f2;
        }
        d(view, childAdapterPosition, f2);
    }

    public final void g(View view, float f, double d) {
        int childAdapterPosition = this.recyclerView.getChildAdapterPosition(view);
        RecyclerView.Adapter adapter = this.recyclerView.getAdapter();
        DivPagerAdapter divPagerAdapter = adapter instanceof DivPagerAdapter ? (DivPagerAdapter) adapter : null;
        if (divPagerAdapter == null) {
            return;
        }
        view.setAlpha((float) i(((Number) ((zl2) divPagerAdapter.getItemsToShow().get(childAdapterPosition)).c().b().p().b(this.resolver)).doubleValue(), d, f));
    }

    public final void h(View view, float f, double d) {
        if (d == 1.0d) {
            return;
        }
        float fI = (float) i(1.0d, d, f);
        view.setScaleX(fI);
        view.setScaleY(fI);
    }

    public final double i(double value1, double value2, float interpolatedValue) {
        return Math.min(value1, value2) + (Math.abs(value2 - value1) * ((double) interpolatedValue));
    }

    @Override
    public void transformPage(View page, float position) {
        y45.j(page, "page");
        DivPageTransformation divPageTransformation = this.pageTransformation;
        Object objB = divPageTransformation != null ? divPageTransformation.b() : null;
        if (objB instanceof DivPageTransformationSlide) {
            b((DivPageTransformationSlide) objB, page, position);
        } else if (objB instanceof DivPageTransformationOverlap) {
            a((DivPageTransformationOverlap) objB, page, position);
        } else {
            f(this, page, position, false, 2, null);
        }
    }
}
