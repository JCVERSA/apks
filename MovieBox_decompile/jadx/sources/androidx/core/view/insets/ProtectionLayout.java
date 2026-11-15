package androidx.core.view.insets;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.R$id;
import java.util.ArrayList;
import java.util.List;

public class ProtectionLayout extends FrameLayout {
    private static final Object PROTECTION_VIEW = new Object();
    private c mGroup;
    private final List<Protection> mProtections;

    class a implements Protection.a.InterfaceC0063a {

        final FrameLayout.LayoutParams f8094a;

        final View f8095b;

        a(FrameLayout.LayoutParams layoutParams, View view) {
            this.f8094a = layoutParams;
            this.f8095b = view;
        }

        @Override
        public void a(int i10) {
            FrameLayout.LayoutParams layoutParams = this.f8094a;
            layoutParams.height = i10;
            this.f8095b.setLayoutParams(layoutParams);
        }

        @Override
        public void b(z0.c cVar) {
            FrameLayout.LayoutParams layoutParams = this.f8094a;
            layoutParams.leftMargin = cVar.f76465a;
            layoutParams.topMargin = cVar.f76466b;
            layoutParams.rightMargin = cVar.f76467c;
            layoutParams.bottomMargin = cVar.f76468d;
            this.f8095b.setLayoutParams(layoutParams);
        }

        @Override
        public void c(float f10) {
            this.f8095b.setAlpha(f10);
        }

        @Override
        public void d(int i10) {
            FrameLayout.LayoutParams layoutParams = this.f8094a;
            layoutParams.width = i10;
            this.f8095b.setLayoutParams(layoutParams);
        }

        @Override
        public void e(float f10) {
            this.f8095b.setTranslationX(f10);
        }

        @Override
        public void f(float f10) {
            this.f8095b.setTranslationY(f10);
        }

        @Override
        public void g(Drawable drawable) {
            this.f8095b.setBackground(drawable);
        }

        @Override
        public void onVisibilityChanged(boolean z10) {
            this.f8095b.setVisibility(z10 ? 0 : 4);
        }
    }

    public ProtectionLayout(Context context) {
        super(context);
        this.mProtections = new ArrayList();
    }

    /* JADX WARN: Code duplicated, block: B:18:0x008c  */
    private void addProtectionView(Context context, int i10, Protection protection) {
        int iQ;
        int i11;
        int iM;
        Protection.a attributes = protection.getAttributes();
        int side = protection.getSide();
        int i12 = -1;
        if (side != 1) {
            if (side == 2) {
                iM = attributes.m();
                i11 = 48;
            } else if (side == 4) {
                iQ = attributes.q();
                i11 = 5;
            } else {
                if (side != 8) {
                    throw new IllegalArgumentException("Unexpected side: " + protection.getSide());
                }
                iM = attributes.m();
                i11 = 80;
            }
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i12, iM, i11);
            z0.c cVarN = attributes.n();
            layoutParams.leftMargin = cVarN.f76465a;
            layoutParams.topMargin = cVarN.f76466b;
            layoutParams.rightMargin = cVarN.f76467c;
            layoutParams.bottomMargin = cVarN.f76468d;
            View view = new View(context);
            view.setTag(PROTECTION_VIEW);
            view.setTranslationX(attributes.o());
            view.setTranslationY(attributes.p());
            view.setAlpha(attributes.k());
            view.setVisibility(attributes.r() ? 0 : 4);
            view.setBackground(attributes.l());
            attributes.t(new a(layoutParams, view));
            addView(view, i10, layoutParams);
        }
        iQ = attributes.q();
        i11 = 3;
        i12 = iQ;
        iM = -1;
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i12, iM, i11);
        z0.c cVarN2 = attributes.n();
        layoutParams2.leftMargin = cVarN2.f76465a;
        layoutParams2.topMargin = cVarN2.f76466b;
        layoutParams2.rightMargin = cVarN2.f76467c;
        layoutParams2.bottomMargin = cVarN2.f76468d;
        View view2 = new View(context);
        view2.setTag(PROTECTION_VIEW);
        view2.setTranslationX(attributes.o());
        view2.setTranslationY(attributes.p());
        view2.setAlpha(attributes.k());
        view2.setVisibility(attributes.r() ? 0 : 4);
        view2.setBackground(attributes.l());
        attributes.t(new a(layoutParams2, view2));
        addView(view2, i10, layoutParams2);
    }

    private void addProtectionViews() {
        if (this.mProtections.isEmpty()) {
            return;
        }
        this.mGroup = new c(getOrInstallSystemBarStateMonitor(), this.mProtections);
        int childCount = getChildCount();
        int i10 = this.mGroup.i();
        for (int i11 = 0; i11 < i10; i11++) {
            addProtectionView(getContext(), i11 + childCount, this.mGroup.h(i11));
        }
    }

    private f getOrInstallSystemBarStateMonitor() {
        ViewGroup viewGroup = (ViewGroup) getRootView();
        Object tag = viewGroup.getTag(R$id.tag_system_bar_state_monitor);
        if (tag instanceof f) {
            return (f) tag;
        }
        f fVar = new f(viewGroup);
        viewGroup.setTag(R$id.tag_system_bar_state_monitor, fVar);
        return fVar;
    }

    private void maybeUninstallSystemBarStateMonitor() {
        ViewGroup viewGroup = (ViewGroup) getRootView();
        Object tag = viewGroup.getTag(R$id.tag_system_bar_state_monitor);
        if (tag instanceof f) {
            f fVar = (f) tag;
            if (fVar.k()) {
                return;
            }
            fVar.h();
            viewGroup.setTag(R$id.tag_system_bar_state_monitor, null);
        }
    }

    private void removeProtectionViews() {
        if (this.mGroup != null) {
            removeViews(getChildCount() - this.mGroup.i(), this.mGroup.i());
            int i10 = this.mGroup.i();
            for (int i11 = 0; i11 < i10; i11++) {
                this.mGroup.h(i11).getAttributes().t(null);
            }
            this.mGroup.g();
            this.mGroup = null;
        }
    }

    @Override
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        if (view != null && view.getTag() != PROTECTION_VIEW) {
            c cVar = this.mGroup;
            int childCount = getChildCount() - (cVar != null ? cVar.i() : 0);
            if (i10 > childCount || i10 < 0) {
                i10 = childCount;
            }
        }
        super.addView(view, i10, layoutParams);
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mGroup != null) {
            removeProtectionViews();
        }
        addProtectionViews();
        requestApplyInsets();
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeProtectionViews();
        maybeUninstallSystemBarStateMonitor();
    }

    public void setProtections(List<Protection> list) {
        this.mProtections.clear();
        this.mProtections.addAll(list);
        if (isAttachedToWindow()) {
            removeProtectionViews();
            addProtectionViews();
            requestApplyInsets();
        }
    }

    public ProtectionLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ProtectionLayout(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public ProtectionLayout(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.mProtections = new ArrayList();
    }

    public ProtectionLayout(Context context, List<Protection> list) {
        super(context);
        this.mProtections = new ArrayList();
        setProtections(list);
    }
}
