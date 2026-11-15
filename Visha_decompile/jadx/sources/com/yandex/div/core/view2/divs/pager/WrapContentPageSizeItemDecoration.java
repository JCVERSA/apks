package com.yandex.div.core.view2.divs.pager;

import android.graphics.Rect;
import android.view.View;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.livecaption.constant.ICode;
import com.yandex.div2.DivPager;
import defpackage.odc;
import defpackage.s86;
import defpackage.sn2;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;

@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ/\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0018\u0010\u001c\u001a\u00020\u0002*\u00020\f8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u001bR\u0018\u0010\u001d\u001a\u00020\u0002*\u00020\f8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u001bR\u0018\u0010\u001f\u001a\u00020\u0002*\u00020\f8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001b¨\u0006 "}, d2 = {"Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeItemDecoration;", "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;", "", "parentSize", "Lsn2;", "paddings", "Lcom/yandex/div2/DivPager$ItemAlignment;", "alignment", MethodDecl.initName, "(ILsn2;Lcom/yandex/div2/DivPager$ItemAlignment;)V", "Landroid/graphics/Rect;", "outRect", "Landroid/view/View;", "view", "Landroidx/recyclerview/widget/RecyclerView;", "parent", "Landroidx/recyclerview/widget/RecyclerView$State;", ICode.CALL.CALL_KEY_STATE, "Lzfb;", "getItemOffsets", "(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V", "b", "I", "c", "Lsn2;", "d", "Lcom/yandex/div2/DivPager$ItemAlignment;", "(Landroid/view/View;)I", "horizontalOffset", "topOffset", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "bottomOffset", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class WrapContentPageSizeItemDecoration extends RecyclerView.ItemDecoration {

    public final int parentSize;

    public final sn2 paddings;

    public final DivPager.ItemAlignment alignment;

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[DivPager.ItemAlignment.values().length];
            try {
                iArr[DivPager.ItemAlignment.START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DivPager.ItemAlignment.CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DivPager.ItemAlignment.END.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public WrapContentPageSizeItemDecoration(int i, sn2 sn2Var, DivPager.ItemAlignment itemAlignment) {
        y45.j(sn2Var, "paddings");
        y45.j(itemAlignment, "alignment");
        this.parentSize = i;
        this.paddings = sn2Var;
        this.alignment = itemAlignment;
    }

    public final int a(View view) {
        float fI;
        int i = a.a[this.alignment.ordinal()];
        if (i == 1) {
            fI = (this.parentSize - this.paddings.i()) - view.getMeasuredHeight();
        } else if (i == 2) {
            fI = (this.parentSize - view.getMeasuredHeight()) / 2.0f;
        } else {
            if (i != 3) {
                throw new NoWhenBranchMatchedException();
            }
            fI = this.paddings.f();
        }
        return s86.c(fI);
    }

    public final int b(View view) {
        float fI;
        int measuredWidth;
        float measuredWidth2;
        int i = a.a[this.alignment.ordinal()];
        if (i != 1) {
            if (i == 2) {
                measuredWidth2 = (this.parentSize - view.getMeasuredWidth()) / 2.0f;
            } else {
                if (i != 3) {
                    throw new NoWhenBranchMatchedException();
                }
                fI = this.parentSize - this.paddings.f();
                measuredWidth = view.getMeasuredWidth();
            }
            return s86.c(measuredWidth2);
        }
        fI = this.parentSize - this.paddings.i();
        measuredWidth = view.getMeasuredWidth();
        measuredWidth2 = fI - measuredWidth;
        return s86.c(measuredWidth2);
    }

    public final int c(View view) {
        float fI;
        int i = a.a[this.alignment.ordinal()];
        if (i == 1) {
            fI = this.paddings.i();
        } else if (i == 2) {
            fI = (this.parentSize - view.getMeasuredHeight()) / 2.0f;
        } else {
            if (i != 3) {
                throw new NoWhenBranchMatchedException();
            }
            fI = (this.parentSize - this.paddings.f()) - view.getMeasuredHeight();
        }
        return s86.c(fI);
    }

    @Override
    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
        View child;
        y45.j(outRect, "outRect");
        y45.j(view, "view");
        y45.j(parent, "parent");
        y45.j(state, ICode.CALL.CALL_KEY_STATE);
        int width = parent.getWidth();
        sn2 sn2Var = this.paddings;
        int iC = width - s86.c(sn2Var.g() + sn2Var.h());
        int height = parent.getHeight();
        sn2 sn2Var2 = this.paddings;
        view.measure(odc.h(iC), odc.h(height - s86.c(sn2Var2.j() + sn2Var2.e())));
        DivPagerPageLayout divPagerPageLayout = view instanceof DivPagerPageLayout ? (DivPagerPageLayout) view : null;
        if (divPagerPageLayout == null || (child = divPagerPageLayout.getChild()) == null) {
            return;
        }
        Integer numB = this.paddings.b();
        int iIntValue = numB != null ? numB.intValue() : b(child);
        Integer numD = this.paddings.d();
        int iIntValue2 = numD != null ? numD.intValue() : c(child);
        Integer numC = this.paddings.c();
        int iIntValue3 = numC != null ? numC.intValue() : b(child);
        Integer numA = this.paddings.a();
        outRect.set(iIntValue, iIntValue2, iIntValue3, numA != null ? numA.intValue() : a(child));
    }
}
