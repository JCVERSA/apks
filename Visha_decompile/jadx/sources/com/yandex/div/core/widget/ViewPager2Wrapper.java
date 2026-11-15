package com.yandex.div.core.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.view.ViewGroupKt;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.yandex.div.core.view2.divs.pager.DivPagerAdapter;
import com.yandex.div.core.view2.divs.pager.DivPagerPageTransformer;
import defpackage.e74;
import defpackage.odc;
import defpackage.pc9;
import defpackage.s74;
import defpackage.y45;
import defpackage.zfb;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref$IntRef;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0010\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\r\u0010\u000eJ\u0015\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u0018\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001d\u001a\u00020\u001aH\u0000¢\u0006\u0004\b\u001b\u0010\u001cJ#\u0010 \u001a\u00020\f2\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\f0\u001eH\u0002¢\u0006\u0004\b \u0010!J)\u0010%\u001a\u00020\u00062\u0018\u0010$\u001a\u0014\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00060\"H\u0002¢\u0006\u0004\b%\u0010&R\u001a\u0010+\u001a\u00020'8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b \u0010(\u001a\u0004\b)\u0010*R.\u00104\u001a\u0004\u0018\u00010,2\b\u0010-\u001a\u0004\u0018\u00010,8\u0000@@X\u0080\u000e¢\u0006\u0012\n\u0004\b.\u0010/\u001a\u0004\b0\u00101\"\u0004\b2\u00103R$\u00109\u001a\u00020\u00062\u0006\u0010-\u001a\u00020\u00068F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b5\u00106\"\u0004\b7\u00108¨\u0006:"}, d2 = {"Lcom/yandex/div/core/widget/ViewPager2Wrapper;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Landroid/view/View;", "child", "Lzfb;", "addView", "(Landroid/view/View;)V", "Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;", "viewPool", "setRecycledViewPool", "(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V", "Landroidx/recyclerview/widget/RecyclerView;", "getRecyclerView", "()Landroidx/recyclerview/widget/RecyclerView;", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "(II)V", "", "isWrapContentAlongCrossAxis$div_release", "()Z", "isWrapContentAlongCrossAxis", "Lkotlin/Function1;", "block", "b", "(Le74;)V", "Lkotlin/Function2;", "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;", "decoratedDimensionGetter", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(Ls74;)I", "Landroidx/viewpager2/widget/ViewPager2;", "Landroidx/viewpager2/widget/ViewPager2;", "getViewPager", "()Landroidx/viewpager2/widget/ViewPager2;", "viewPager", "Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;", ES6Iterator.VALUE_PROPERTY, "c", "Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;", "getPageTransformer$div_release", "()Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;", "setPageTransformer$div_release", "(Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;)V", "pageTransformer", "getOrientation", "()I", "setOrientation", "(I)V", "orientation", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class ViewPager2Wrapper extends FrameLayout {

    public final ViewPager2 viewPager;

    public DivPagerPageTransformer pageTransformer;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ViewPager2Wrapper(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    public final int a(final s74 decoratedDimensionGetter) {
        final Ref$IntRef ref$IntRef = new Ref$IntRef();
        b(new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((RecyclerView) obj);
                return zfb.a;
            }

            public final void invoke(RecyclerView recyclerView) {
                y45.j(recyclerView, "$this$withRecyclerView");
                pc9<View> children = ViewGroupKt.getChildren(recyclerView);
                Ref$IntRef ref$IntRef2 = ref$IntRef;
                s74 s74Var = decoratedDimensionGetter;
                for (View view : children) {
                    RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
                    if (layoutManager != null) {
                        int i = ref$IntRef2.element;
                        y45.i(layoutManager, "it");
                        ref$IntRef2.element = Math.max(i, ((Number) s74Var.invoke(layoutManager, view)).intValue());
                    }
                }
            }
        });
        return ref$IntRef.element;
    }

    @Override
    public final void addView(View child) {
        super.addView(child);
    }

    public final void b(e74 block) {
        RecyclerView recyclerView = getRecyclerView();
        if (recyclerView == null) {
            return;
        }
        block.invoke(recyclerView);
    }

    public final int getOrientation() {
        return getViewPager().getOrientation();
    }

    public final DivPagerPageTransformer getPageTransformer() {
        return this.pageTransformer;
    }

    public final RecyclerView getRecyclerView() {
        View childAt = getViewPager().getChildAt(0);
        if (childAt instanceof RecyclerView) {
            return (RecyclerView) childAt;
        }
        return null;
    }

    public ViewPager2 getViewPager() {
        return this.viewPager;
    }

    public final boolean isWrapContentAlongCrossAxis$div_release() {
        if (getOrientation() == 0 && getLayoutParams().height == -2) {
            return true;
        }
        return getOrientation() == 1 && getLayoutParams().width == -2;
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (!isWrapContentAlongCrossAxis$div_release()) {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
            return;
        }
        measureChild(getViewPager(), widthMeasureSpec, heightMeasureSpec);
        int orientation = getOrientation();
        if (orientation == 0) {
            super.onMeasure(widthMeasureSpec, odc.h(a(ViewPager2Wrapper$onMeasure$maxHeight$1.INSTANCE)));
        } else {
            if (orientation != 1) {
                return;
            }
            super.onMeasure(odc.h(a(ViewPager2Wrapper$onMeasure$maxWidth$1.INSTANCE)), heightMeasureSpec);
        }
    }

    public final void setOrientation(int i) {
        DivPagerAdapter divPagerAdapter = (DivPagerAdapter) getViewPager().getAdapter();
        if (getViewPager().getOrientation() == i && divPagerAdapter != null && divPagerAdapter.getOrientation() == i) {
            return;
        }
        getViewPager().setOrientation(i);
        if (divPagerAdapter != null) {
            divPagerAdapter.N(i);
        }
        b(new e74() {
            @Override
            public Object invoke(Object obj) {
                invoke((RecyclerView) obj);
                return zfb.a;
            }

            public final void invoke(RecyclerView recyclerView) {
                y45.j(recyclerView, "$this$withRecyclerView");
                recyclerView.getRecycledViewPool().clear();
                for (View view : ViewGroupKt.getChildren(recyclerView)) {
                    view.setTranslationX(0.0f);
                    view.setTranslationY(0.0f);
                }
            }
        });
    }

    public final void setPageTransformer$div_release(DivPagerPageTransformer divPagerPageTransformer) {
        this.pageTransformer = divPagerPageTransformer;
        getViewPager().setPageTransformer(divPagerPageTransformer);
    }

    public final void setRecycledViewPool(final RecyclerView.RecycledViewPool viewPool) {
        y45.j(viewPool, "viewPool");
        b(new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((RecyclerView) obj);
                return zfb.a;
            }

            public final void invoke(RecyclerView recyclerView) {
                y45.j(recyclerView, "$this$withRecyclerView");
                recyclerView.setRecycledViewPool(viewPool);
            }
        });
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ViewPager2Wrapper(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public ViewPager2Wrapper(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewPager2Wrapper(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.viewPager = new ViewPager2(context);
        addView(getViewPager());
    }
}
