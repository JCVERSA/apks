package com.yandex.div.core.view2.divs.pager;

import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.GravityCompat;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.R;
import com.yandex.div.core.state.DivStatePath;
import com.yandex.div.core.view2.DivViewCreator;
import com.yandex.div.core.view2.a;
import com.yandex.div.core.view2.divs.DivCollectionViewHolder;
import com.yandex.div.internal.widget.DivLayoutParams;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div.logging.Severity;
import com.yandex.div2.Div;
import com.yandex.div2.DivAlignmentHorizontal;
import com.yandex.div2.DivAlignmentVertical;
import com.yandex.div2.DivPager;
import defpackage.c74;
import defpackage.ne5;
import defpackage.og2;
import defpackage.oj3;
import defpackage.qc2;
import defpackage.rg2;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\b\u0000\u0018\u0000 .2\u00020\u0001:\u0001/BS\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\f0\u000e\u0012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u000e¢\u0006\u0004\b\u0012\u0010\u0013J-\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u0017¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u001aH\u0014¢\u0006\u0004\b\u001d\u0010\u001eJ#\u0010#\u001a\u00020\u001a*\u00020\u001f2\u0006\u0010\u0016\u001a\u00020 2\u0006\u0010\"\u001a\u00020!H\u0002¢\u0006\u0004\b#\u0010$R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\u0014\u0010\r\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\f0\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010,R\u001a\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010,¨\u00060"}, d2 = {"Lcom/yandex/div/core/view2/divs/pager/DivPagerViewHolder;", "Lcom/yandex/div/core/view2/divs/DivCollectionViewHolder;", "Lcom/yandex/div/core/view2/a;", "parentContext", "Lcom/yandex/div/core/view2/divs/pager/DivPagerPageLayout;", "pageLayout", "Lrg2;", "divBinder", "Lcom/yandex/div/core/view2/DivViewCreator;", "viewCreator", "Lcom/yandex/div/core/state/DivStatePath;", "path", "", "accessibilityEnabled", "Lkotlin/Function0;", "isHorizontal", "Lcom/yandex/div2/DivPager$ItemAlignment;", "crossAxisAlignment", MethodDecl.initName, "(Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/view2/divs/pager/DivPagerPageLayout;Lrg2;Lcom/yandex/div/core/view2/DivViewCreator;Lcom/yandex/div/core/state/DivStatePath;ZLc74;Lc74;)V", "bindingContext", "Lcom/yandex/div2/Div;", TtmlNode.TAG_DIV, "", "position", "index", "Lzfb;", CmcdData.STREAMING_FORMAT_HLS, "(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/Div;II)V", "d", "()V", "Lcom/yandex/div/internal/widget/DivLayoutParams;", "Log2;", "Loj3;", "resolver", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "(Lcom/yandex/div/internal/widget/DivLayoutParams;Log2;Loj3;)V", "w", "Lcom/yandex/div/core/view2/a;", "x", "Lcom/yandex/div/core/view2/divs/pager/DivPagerPageLayout;", "y", "Z", "z", "Lc74;", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "B", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class DivPagerViewHolder extends DivCollectionViewHolder {

    public final c74 crossAxisAlignment;

    public final a parentContext;

    public final DivPagerPageLayout pageLayout;

    public final boolean accessibilityEnabled;

    public final c74 isHorizontal;

    public static final class b implements View.OnAttachStateChangeListener {
        public b() {
        }

        @Override
        public void onViewAttachedToWindow(View view) {
            y45.j(view, "view");
        }

        @Override
        public void onViewDetachedFromWindow(View view) {
            y45.j(view, "view");
            Div divC = DivPagerViewHolder.this.getOldDiv();
            if (divC == null) {
                return;
            }
            DivPagerViewHolder.this.parentContext.a().getDiv2Component().H().s(DivPagerViewHolder.this.parentContext, view, divC);
        }
    }

    public static final class c implements qc2 {
        public final View b;
        public final b c;

        public c(View view, b bVar) {
            this.b = view;
            this.c = bVar;
        }

        @Override
        public final void close() {
            this.b.removeOnAttachStateChangeListener(this.c);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivPagerViewHolder(a aVar, DivPagerPageLayout divPagerPageLayout, rg2 rg2Var, DivViewCreator divViewCreator, DivStatePath divStatePath, boolean z, c74 c74Var, c74 c74Var2) {
        super(divPagerPageLayout, aVar, rg2Var, divViewCreator, divStatePath);
        y45.j(aVar, "parentContext");
        y45.j(divPagerPageLayout, "pageLayout");
        y45.j(rg2Var, "divBinder");
        y45.j(divViewCreator, "viewCreator");
        y45.j(divStatePath, "path");
        y45.j(c74Var, "isHorizontal");
        y45.j(c74Var2, "crossAxisAlignment");
        this.parentContext = aVar;
        this.pageLayout = divPagerPageLayout;
        this.accessibilityEnabled = z;
        this.isHorizontal = c74Var;
        this.crossAxisAlignment = c74Var2;
        View view = this.itemView;
        y45.i(view, "itemView");
        b bVar = new b();
        view.addOnAttachStateChangeListener(bVar);
        new c(view, bVar);
    }

    @Override
    public void d() {
        ne5 ne5Var = ne5.a;
        if (ne5Var.a(Severity.DEBUG)) {
            ne5Var.b(3, "DivPagerViewHolder", "Pager holder reuse failed");
        }
    }

    public final void h(a bindingContext, Div div, int position, int index) {
        y45.j(bindingContext, "bindingContext");
        y45.j(div, TtmlNode.TAG_DIV);
        a(bindingContext, div, index);
        View child = this.pageLayout.getChild();
        ViewGroup.LayoutParams layoutParams = child != null ? child.getLayoutParams() : null;
        DivLayoutParams divLayoutParams = layoutParams instanceof DivLayoutParams ? (DivLayoutParams) layoutParams : null;
        if (divLayoutParams != null) {
            i(divLayoutParams, div.b(), bindingContext.b());
        }
        if (this.accessibilityEnabled) {
            this.pageLayout.setTag(R.id.div_pager_item_clip_id, Integer.valueOf(position));
        }
    }

    public final void i(DivLayoutParams divLayoutParams, og2 og2Var, oj3 oj3Var) {
        Enum r3;
        Expression expressionO = ((Boolean) this.isHorizontal.invoke()).booleanValue() ? og2Var.o() : og2Var.g();
        if (expressionO == null || (r3 = (Enum) expressionO.b(oj3Var)) == null) {
            r3 = (Enum) this.crossAxisAlignment.invoke();
        }
        int i = 17;
        if (((Boolean) this.isHorizontal.invoke()).booleanValue()) {
            if (r3 != DivPager.ItemAlignment.CENTER && r3 != DivAlignmentVertical.CENTER) {
                i = (r3 == DivPager.ItemAlignment.END || r3 == DivAlignmentVertical.BOTTOM) ? 80 : 48;
            }
        } else if (r3 != DivPager.ItemAlignment.CENTER && r3 != DivAlignmentHorizontal.CENTER) {
            if (r3 == DivPager.ItemAlignment.END || r3 == DivAlignmentHorizontal.END) {
                i = GravityCompat.END;
            } else if (r3 == DivAlignmentHorizontal.LEFT) {
                i = 3;
            } else {
                i = r3 == DivAlignmentHorizontal.RIGHT ? 5 : GravityCompat.START;
            }
        }
        divLayoutParams.m(i);
        this.pageLayout.requestLayout();
    }
}
