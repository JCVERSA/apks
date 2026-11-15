package com.monetization.ads.nativeads.view.pager;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.monetization.ads.nativeads.view.pager.MultiBannerControlsContainer;
import com.yandex.mobile.ads.R;
import com.yandex.mobile.ads.impl.ju1;
import com.yandex.mobile.ads.impl.n50;
import com.yandex.mobile.ads.impl.pw1;
import com.yandex.mobile.ads.impl.v30;
import defpackage.c74;
import defpackage.y45;
import defpackage.yi5;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bB#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bB+\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\rJ\u0015\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0011\u0010\u0012J\u0015\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0013\u0010\u0012¨\u0006\u0014"}, d2 = {"Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", MethodDecl.initName, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "defStyleRes", "(Landroid/content/Context;Landroid/util/AttributeSet;II)V", "Landroid/view/View$OnClickListener;", "listener", "Lzfb;", "setOnClickLeftButtonListener", "(Landroid/view/View$OnClickListener;)V", "setOnClickRightButtonListener", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
public final class MultiBannerControlsContainer extends FrameLayout {
    private final v30 a;
    private final yi5 b;
    private final n50 c;
    private boolean d;

    public static final class a extends Lambda implements c74 {
        public a() {
            super(0);
        }

        @Override
        public final Object invoke() {
            int i = pw1.l;
            pw1 pw1VarA = pw1.a.a();
            Context context = MultiBannerControlsContainer.this.getContext();
            y45.i(context, "getContext(...)");
            ju1 ju1VarA = pw1VarA.a(context);
            return Boolean.valueOf((ju1VarA == null || ju1VarA.p0()) ? false : true);
        }
    }

    public static final class b extends ViewPager2.OnPageChangeCallback {
        final ViewPager2 a;
        final MultiBannerControlsContainer b;

        public b(ViewPager2 viewPager2, MultiBannerControlsContainer multiBannerControlsContainer) {
            this.a = viewPager2;
            this.b = multiBannerControlsContainer;
        }

        @Override
        public final void onPageSelected(int i) {
            RecyclerView.Adapter adapter = this.a.getAdapter();
            this.b.a(i, adapter != null ? adapter.getItemCount() : 0);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MultiBannerControlsContainer(Context context) {
        super(context);
        y45.j(context, "context");
        this.a = new v30();
        this.b = kotlin.b.a(new a());
        this.c = new n50();
        this.d = true;
    }

    public final void setOnClickLeftButtonListener(View.OnClickListener listener) {
        y45.j(listener, "listener");
        View viewFindViewById = findViewById(R.id.left_scroll_control_button);
        ImageView imageView = viewFindViewById instanceof ImageView ? (ImageView) viewFindViewById : null;
        if (imageView != null) {
            imageView.setOnClickListener(listener);
        }
    }

    public final void setOnClickRightButtonListener(View.OnClickListener listener) {
        y45.j(listener, "listener");
        View viewFindViewById = findViewById(R.id.right_scroll_control_button);
        ImageView imageView = viewFindViewById instanceof ImageView ? (ImageView) viewFindViewById : null;
        if (imageView != null) {
            imageView.setOnClickListener(listener);
        }
    }

    public final void a(ViewPager2 viewPager2) {
        y45.j(viewPager2, "viewPager");
        viewPager2.registerOnPageChangeCallback(new b(viewPager2, this));
        viewPager2.addOnLayoutChangeListener(new View.OnLayoutChangeListener() {
            @Override
            public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                MultiBannerControlsContainer.a(this.b, view, i, i2, i3, i4, i5, i6, i7, i8);
            }
        });
    }

    public static final void a(MultiBannerControlsContainer multiBannerControlsContainer, View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        y45.j(multiBannerControlsContainer, "this$0");
        if (view instanceof ViewPager2) {
            boolean z = multiBannerControlsContainer.d;
            boolean zA = multiBannerControlsContainer.c.a(view, i, i2, i3, i4);
            multiBannerControlsContainer.d = zA;
            if (zA != z) {
                ViewPager2 viewPager2 = (ViewPager2) view;
                int currentItem = viewPager2.getCurrentItem();
                RecyclerView.Adapter adapter = viewPager2.getAdapter();
                multiBannerControlsContainer.a(currentItem, adapter != null ? adapter.getItemCount() : 0);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MultiBannerControlsContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        y45.j(context, "context");
        this.a = new v30();
        this.b = kotlin.b.a(new a());
        this.c = new n50();
        this.d = true;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MultiBannerControlsContainer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.a = new v30();
        this.b = kotlin.b.a(new a());
        this.c = new n50();
        this.d = true;
    }

    public final void a(int i, int i2) {
        int i3 = R.id.left_scroll_control_button;
        View viewFindViewById = findViewById(i3);
        ImageView imageView = viewFindViewById instanceof ImageView ? (ImageView) viewFindViewById : null;
        int i4 = R.id.right_scroll_control_button;
        View viewFindViewById2 = findViewById(i4);
        ImageView imageView2 = viewFindViewById2 instanceof ImageView ? (ImageView) viewFindViewById2 : null;
        int i5 = R.id.dot_indicator;
        View viewFindViewById3 = findViewById(i5);
        ImageView imageView3 = viewFindViewById3 instanceof ImageView ? (ImageView) viewFindViewById3 : null;
        if (!this.d) {
            if (imageView != null) {
                imageView.setVisibility(8);
            }
            if (imageView2 != null) {
                imageView2.setVisibility(8);
            }
            if (imageView3 == null) {
                return;
            }
            imageView3.setVisibility(8);
            return;
        }
        View viewFindViewById4 = findViewById(i5);
        ImageView imageView4 = viewFindViewById4 instanceof ImageView ? (ImageView) viewFindViewById4 : null;
        if (imageView4 != null) {
            imageView4.setVisibility(0);
            v30 v30Var = this.a;
            Context context = getContext();
            y45.i(context, "getContext(...)");
            imageView4.setImageDrawable(v30Var.a(context, i, i2));
        }
        View viewFindViewById5 = findViewById(i3);
        ImageView imageView5 = viewFindViewById5 instanceof ImageView ? (ImageView) viewFindViewById5 : null;
        View viewFindViewById6 = findViewById(i4);
        ImageView imageView6 = viewFindViewById6 instanceof ImageView ? (ImageView) viewFindViewById6 : null;
        if (!((Boolean) this.b.getValue()).booleanValue() || imageView5 == null || imageView6 == null) {
            if (imageView5 != null) {
                imageView5.setVisibility(8);
            }
            if (imageView6 == null) {
                return;
            }
            imageView6.setVisibility(8);
            return;
        }
        if (i == 0) {
            imageView5.setVisibility(8);
            imageView6.setVisibility(0);
        } else if (i == i2 - 1) {
            imageView5.setVisibility(0);
            imageView6.setVisibility(8);
        } else {
            imageView5.setVisibility(0);
            imageView6.setVisibility(0);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MultiBannerControlsContainer(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        y45.j(context, "context");
        this.a = new v30();
        this.b = kotlin.b.a(new a());
        this.c = new n50();
        this.d = true;
    }
}
