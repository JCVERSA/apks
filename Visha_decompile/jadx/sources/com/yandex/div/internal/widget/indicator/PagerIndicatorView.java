package com.yandex.div.internal.widget.indicator;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.yandex.div.core.view2.divs.pager.DivPagerAdapter;
import com.yandex.div.core.view2.divs.widgets.DivPagerView;
import com.yandex.div.internal.widget.indicator.PagerIndicatorView;
import defpackage.en9;
import defpackage.qz4;
import defpackage.sz4;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0010\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\r\u0010\u000eJ\u001f\u0010\u0011\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u0013H\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u0019\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u0019\u0010\u001aJ\u0013\u0010\u001c\u001a\u00020\f*\u00020\u001bH\u0002¢\u0006\u0004\b\u001c\u0010\u001dR\u0018\u0010 \u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0018\u0010\"\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010!R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u0014\u0010(\u001a\u00020%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'¨\u0006)"}, d2 = {"Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;", "Landroid/view/View;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Lsz4;", "style", "Lzfb;", "setStyle", "(Lsz4;)V", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "(II)V", "Landroid/graphics/Canvas;", "canvas", "onDraw", "(Landroid/graphics/Canvas;)V", "Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;", "newDivPager", "attachPager", "(Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;)V", "Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;", "c", "(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;)V", "b", "Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;", "stripDrawer", "Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;", "divPager", "d", "Lsz4;", "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;", "e", "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;", "onPageChangeListener", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class PagerIndicatorView extends View {

    public IndicatorsStripDrawer stripDrawer;

    public DivPagerView divPager;

    public sz4 style;

    public final ViewPager2.OnPageChangeCallback onPageChangeListener;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PagerIndicatorView(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    public static final void b(PagerIndicatorView pagerIndicatorView) {
        y45.j(pagerIndicatorView, "this$0");
        IndicatorsStripDrawer indicatorsStripDrawer = pagerIndicatorView.stripDrawer;
        if (indicatorsStripDrawer != null) {
            pagerIndicatorView.c(indicatorsStripDrawer);
        }
    }

    public final void attachPager(DivPagerView newDivPager) {
        y45.j(newDivPager, "newDivPager");
        DivPagerView divPagerView = this.divPager;
        if (divPagerView != null) {
            divPagerView.removeChangePageCallbackForIndicators(this.onPageChangeListener);
        }
        newDivPager.addChangePageCallbackForIndicators(this.onPageChangeListener);
        if (newDivPager == this.divPager) {
            return;
        }
        this.divPager = newDivPager;
        if (newDivPager.getViewPager().getAdapter() == null) {
            throw new IllegalArgumentException("Attached pager adapter is null!");
        }
        IndicatorsStripDrawer indicatorsStripDrawer = this.stripDrawer;
        if (indicatorsStripDrawer != null) {
            c(indicatorsStripDrawer);
        }
        newDivPager.setPagerOnItemsCountChange$div_release(new DivPagerView.a() {
            @Override
            public final void a() {
                PagerIndicatorView.b(this.a);
            }
        });
    }

    public final void c(IndicatorsStripDrawer indicatorsStripDrawer) {
        ViewPager2 viewPager;
        DivPagerView divPagerView = this.divPager;
        RecyclerView.Adapter adapter = (divPagerView == null || (viewPager = divPagerView.getViewPager()) == null) ? null : viewPager.getAdapter();
        DivPagerAdapter divPagerAdapter = adapter instanceof DivPagerAdapter ? (DivPagerAdapter) adapter : null;
        if (divPagerAdapter != null) {
            indicatorsStripDrawer.p(divPagerAdapter.getVisibleItems().size());
            indicatorsStripDrawer.o(divPagerAdapter.B());
            invalidate();
        }
    }

    @Override
    public void onDraw(Canvas canvas) {
        y45.j(canvas, "canvas");
        super.onDraw(canvas);
        canvas.translate(getPaddingLeft(), getPaddingTop());
        IndicatorsStripDrawer indicatorsStripDrawer = this.stripDrawer;
        if (indicatorsStripDrawer != null) {
            indicatorsStripDrawer.m(canvas);
        }
    }

    /* JADX WARN: Code duplicated, block: B:44:0x00a4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:45:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:46:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:49:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:53:? A[RETURN, SYNTHETIC] */
    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int paddingLeft;
        int paddingRight;
        int i;
        IndicatorsStripDrawer indicatorsStripDrawer;
        ViewPager2 viewPager;
        RecyclerView.Adapter adapter;
        c cVarA;
        b bVarD;
        c cVarA2;
        b bVarD2;
        int mode = View.MeasureSpec.getMode(heightMeasureSpec);
        int size = View.MeasureSpec.getSize(heightMeasureSpec);
        sz4 sz4Var = this.style;
        float fB = 0.0f;
        int iA = (int) (((sz4Var == null || (cVarA2 = sz4Var.a()) == null || (bVarD2 = cVarA2.d()) == null) ? 0.0f : bVarD2.a()) + getPaddingTop() + getPaddingBottom());
        if (mode == Integer.MIN_VALUE) {
            size = Math.min(iA, size);
        } else if (mode != 1073741824) {
            size = iA;
        }
        int mode2 = View.MeasureSpec.getMode(widthMeasureSpec);
        int size2 = View.MeasureSpec.getSize(widthMeasureSpec);
        sz4 sz4Var2 = this.style;
        if (sz4Var2 != null && (cVarA = sz4Var2.a()) != null && (bVarD = cVarA.d()) != null) {
            fB = bVarD.b();
        }
        sz4 sz4Var3 = this.style;
        a aVarD = sz4Var3 != null ? sz4Var3.d() : null;
        if (!(aVarD instanceof a.C0302a)) {
            if (aVarD instanceof a.b) {
                i = size2;
            } else {
                if (aVarD != null) {
                    throw new NoWhenBranchMatchedException();
                }
                paddingLeft = ((int) fB) + getPaddingLeft();
                paddingRight = getPaddingRight();
            }
            if (mode2 != Integer.MIN_VALUE) {
                size2 = Math.min(i, size2);
            } else if (mode2 != 1073741824) {
                size2 = i;
            }
            setMeasuredDimension(size2, size);
            indicatorsStripDrawer = this.stripDrawer;
            if (indicatorsStripDrawer != null) {
                indicatorsStripDrawer.k((size2 - getPaddingLeft()) - getPaddingRight(), (size - getPaddingTop()) - getPaddingBottom());
            }
        }
        float fA = ((a.C0302a) aVarD).a();
        DivPagerView divPagerView = this.divPager;
        paddingLeft = ((int) ((fA * ((divPagerView == null || (viewPager = divPagerView.getViewPager()) == null || (adapter = viewPager.getAdapter()) == null) ? 0 : adapter.getItemCount())) + fB)) + getPaddingLeft();
        paddingRight = getPaddingRight();
        i = paddingLeft + paddingRight;
        if (mode2 != Integer.MIN_VALUE) {
            size2 = Math.min(i, size2);
        } else if (mode2 != 1073741824) {
            size2 = i;
        }
        setMeasuredDimension(size2, size);
        indicatorsStripDrawer = this.stripDrawer;
        if (indicatorsStripDrawer != null) {
            indicatorsStripDrawer.k((size2 - getPaddingLeft()) - getPaddingRight(), (size - getPaddingTop()) - getPaddingBottom());
        }
    }

    public final void setStyle(sz4 style) {
        y45.j(style, "style");
        this.style = style;
        IndicatorsStripDrawer indicatorsStripDrawer = new IndicatorsStripDrawer(style, en9.a(style), qz4.a(style), this);
        indicatorsStripDrawer.k((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        c(indicatorsStripDrawer);
        this.stripDrawer = indicatorsStripDrawer;
        requestLayout();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PagerIndicatorView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public PagerIndicatorView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PagerIndicatorView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.onPageChangeListener = new ViewPager2.OnPageChangeCallback() {
            public final int a(int i2) {
                ViewPager2 viewPager;
                DivPagerView divPagerView = this.d.divPager;
                RecyclerView.Adapter adapter = (divPagerView == null || (viewPager = divPagerView.getViewPager()) == null) ? null : viewPager.getAdapter();
                DivPagerAdapter divPagerAdapter = adapter instanceof DivPagerAdapter ? (DivPagerAdapter) adapter : null;
                if (divPagerAdapter == null) {
                    return i2;
                }
                int size = divPagerAdapter.getVisibleItems().size();
                return (divPagerAdapter.getRealPosition(i2) + size) % size;
            }

            /* JADX WARN: Code duplicated, block: B:6:0x000f A[PHI: r1
              0x000f: PHI (r1v2 float) = (r1v0 float), (r1v1 float) binds: [B:5:0x000d, B:8:0x0015] A[DONT_GENERATE, DONT_INLINE]] */
            @Override
            public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
                IndicatorsStripDrawer indicatorsStripDrawer = this.d.stripDrawer;
                if (indicatorsStripDrawer != null) {
                    PagerIndicatorView pagerIndicatorView = this.d;
                    float f = 0.0f;
                    if (positionOffset < 0.0f) {
                        positionOffset = f;
                    } else {
                        f = 1.0f;
                        if (positionOffset > 1.0f) {
                            positionOffset = f;
                        }
                    }
                    indicatorsStripDrawer.n(a(position), positionOffset);
                    pagerIndicatorView.invalidate();
                }
            }

            @Override
            public void onPageSelected(int position) {
                IndicatorsStripDrawer indicatorsStripDrawer = this.d.stripDrawer;
                if (indicatorsStripDrawer != null) {
                    PagerIndicatorView pagerIndicatorView = this.d;
                    indicatorsStripDrawer.o(a(position));
                    pagerIndicatorView.invalidate();
                }
            }
        };
    }
}
