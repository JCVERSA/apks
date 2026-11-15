package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$layout;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.core.view.ActionProvider;
import androidx.core.view.GravityCompat;
import java.util.ArrayList;

class ActionMenuPresenter extends androidx.appcompat.view.menu.b implements ActionProvider.SubUiVisibilityListener {
    OpenOverflowRunnable A;
    private b B;
    final e C;
    int D;

    c f1297k;

    private Drawable f1298l;

    private boolean f1299m;

    private boolean f1300n;

    private boolean f1301o;

    private int f1302p;

    private int f1303q;

    private int f1304r;

    private boolean f1305s;

    private boolean f1306t;

    private boolean f1307u;

    private boolean f1308v;

    private int f1309w;

    private final SparseBooleanArray f1310x;

    d f1311y;

    a f1312z;

    private class OpenOverflowRunnable implements Runnable {
        private d mPopup;

        public OpenOverflowRunnable(d dVar) {
            this.mPopup = dVar;
        }

        @Override
        public void run() {
            if (((androidx.appcompat.view.menu.b) ActionMenuPresenter.this).f1101c != null) {
                ((androidx.appcompat.view.menu.b) ActionMenuPresenter.this).f1101c.d();
            }
            View view = (View) ((androidx.appcompat.view.menu.b) ActionMenuPresenter.this).f1107i;
            if (view != null && view.getWindowToken() != null && this.mPopup.m()) {
                ActionMenuPresenter.this.f1311y = this.mPopup;
            }
            ActionMenuPresenter.this.A = null;
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    private static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        public int openSubMenuId;

        class a implements Parcelable.Creator {
            a() {
            }

            @Override
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        }

        SavedState() {
        }

        @Override
        public int describeContents() {
            return 0;
        }

        @Override
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeInt(this.openSubMenuId);
        }

        SavedState(Parcel parcel) {
            this.openSubMenuId = parcel.readInt();
        }
    }

    private class a extends androidx.appcompat.view.menu.k {
        public a(Context context, androidx.appcompat.view.menu.q qVar, View view) {
            super(context, qVar, view, false, R$attr.actionOverflowMenuStyle);
            if (!((androidx.appcompat.view.menu.h) qVar.getItem()).l()) {
                View view2 = ActionMenuPresenter.this.f1297k;
                f(view2 == null ? (View) ((androidx.appcompat.view.menu.b) ActionMenuPresenter.this).f1107i : view2);
            }
            j(ActionMenuPresenter.this.C);
        }

        @Override
        protected void e() {
            ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
            actionMenuPresenter.f1312z = null;
            actionMenuPresenter.D = 0;
            super.e();
        }
    }

    private class b extends ActionMenuItemView.b {
        b() {
        }

        @Override
        public androidx.appcompat.view.menu.o a() {
            a aVar = ActionMenuPresenter.this.f1312z;
            if (aVar != null) {
                return aVar.c();
            }
            return null;
        }
    }

    private class c extends AppCompatImageView implements ActionMenuView.a {

        class a extends ForwardingListener {

            final ActionMenuPresenter f1316j;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(View view, ActionMenuPresenter actionMenuPresenter) {
                super(view);
                this.f1316j = actionMenuPresenter;
            }

            @Override
            public androidx.appcompat.view.menu.o b() {
                d dVar = ActionMenuPresenter.this.f1311y;
                if (dVar == null) {
                    return null;
                }
                return dVar.c();
            }

            @Override
            public boolean c() {
                ActionMenuPresenter.this.N();
                return true;
            }

            @Override
            public boolean d() {
                ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
                if (actionMenuPresenter.A != null) {
                    return false;
                }
                actionMenuPresenter.D();
                return true;
            }
        }

        public c(Context context) {
            super(context, null, R$attr.actionOverflowButtonStyle);
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            o0.a(this, getContentDescription());
            setOnTouchListener(new a(this, ActionMenuPresenter.this));
        }

        @Override
        public boolean needsDividerAfter() {
            return false;
        }

        @Override
        public boolean needsDividerBefore() {
            return false;
        }

        @Override
        public boolean performClick() {
            if (super.performClick()) {
                return true;
            }
            playSoundEffect(0);
            ActionMenuPresenter.this.N();
            return true;
        }

        @Override
        protected boolean setFrame(int i10, int i11, int i12, int i13) {
            boolean frame = super.setFrame(i10, i11, i12, i13);
            Drawable drawable = getDrawable();
            Drawable background = getBackground();
            if (drawable != null && background != null) {
                int width = getWidth();
                int height = getHeight();
                int iMax = Math.max(width, height) / 2;
                int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
                int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
                a1.a.l(background, paddingLeft - iMax, paddingTop - iMax, paddingLeft + iMax, paddingTop + iMax);
            }
            return frame;
        }
    }

    private class d extends androidx.appcompat.view.menu.k {
        public d(Context context, androidx.appcompat.view.menu.f fVar, View view, boolean z10) {
            super(context, fVar, view, z10, R$attr.actionOverflowMenuStyle);
            h(GravityCompat.END);
            j(ActionMenuPresenter.this.C);
        }

        @Override
        protected void e() {
            if (((androidx.appcompat.view.menu.b) ActionMenuPresenter.this).f1101c != null) {
                ((androidx.appcompat.view.menu.b) ActionMenuPresenter.this).f1101c.close();
            }
            ActionMenuPresenter.this.f1311y = null;
            super.e();
        }
    }

    private class e implements androidx.appcompat.view.menu.l.a {
        e() {
        }

        @Override
        public void b(androidx.appcompat.view.menu.f fVar, boolean z10) {
            if (fVar instanceof androidx.appcompat.view.menu.q) {
                fVar.F().e(false);
            }
            androidx.appcompat.view.menu.l.a aVarO = ActionMenuPresenter.this.o();
            if (aVarO != null) {
                aVarO.b(fVar, z10);
            }
        }

        @Override
        public boolean c(androidx.appcompat.view.menu.f fVar) {
            if (fVar == ((androidx.appcompat.view.menu.b) ActionMenuPresenter.this).f1101c) {
                return false;
            }
            ActionMenuPresenter.this.D = ((androidx.appcompat.view.menu.q) fVar).getItem().getItemId();
            androidx.appcompat.view.menu.l.a aVarO = ActionMenuPresenter.this.o();
            if (aVarO != null) {
                return aVarO.c(fVar);
            }
            return false;
        }
    }

    public ActionMenuPresenter(Context context) {
        super(context, R$layout.abc_action_menu_layout, R$layout.abc_action_menu_item_layout);
        this.f1310x = new SparseBooleanArray();
        this.C = new e();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private View B(MenuItem menuItem) {
        ViewGroup viewGroup = (ViewGroup) this.f1107i;
        if (viewGroup == null) {
            return null;
        }
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = viewGroup.getChildAt(i10);
            if ((childAt instanceof androidx.appcompat.view.menu.m.a) && ((androidx.appcompat.view.menu.m.a) childAt).getItemData() == menuItem) {
                return childAt;
            }
        }
        return null;
    }

    public boolean A() {
        return D() | E();
    }

    public Drawable C() {
        c cVar = this.f1297k;
        if (cVar != null) {
            return cVar.getDrawable();
        }
        if (this.f1299m) {
            return this.f1298l;
        }
        return null;
    }

    public boolean D() {
        Object obj;
        OpenOverflowRunnable openOverflowRunnable = this.A;
        if (openOverflowRunnable != null && (obj = this.f1107i) != null) {
            ((View) obj).removeCallbacks(openOverflowRunnable);
            this.A = null;
            return true;
        }
        d dVar = this.f1311y;
        if (dVar == null) {
            return false;
        }
        dVar.b();
        return true;
    }

    public boolean E() {
        a aVar = this.f1312z;
        if (aVar == null) {
            return false;
        }
        aVar.b();
        return true;
    }

    public boolean F() {
        return this.A != null || G();
    }

    public boolean G() {
        d dVar = this.f1311y;
        return dVar != null && dVar.d();
    }

    public boolean H() {
        return this.f1300n;
    }

    public void I(Configuration configuration) {
        if (!this.f1305s) {
            this.f1304r = androidx.appcompat.view.a.b(this.f1100b).d();
        }
        androidx.appcompat.view.menu.f fVar = this.f1101c;
        if (fVar != null) {
            fVar.N(true);
        }
    }

    public void J(boolean z10) {
        this.f1308v = z10;
    }

    public void K(ActionMenuView actionMenuView) {
        this.f1107i = actionMenuView;
        actionMenuView.initialize(this.f1101c);
    }

    public void L(Drawable drawable) {
        c cVar = this.f1297k;
        if (cVar != null) {
            cVar.setImageDrawable(drawable);
        } else {
            this.f1299m = true;
            this.f1298l = drawable;
        }
    }

    public void M(boolean z10) {
        this.f1300n = z10;
        this.f1301o = true;
    }

    public boolean N() {
        androidx.appcompat.view.menu.f fVar;
        if (!this.f1300n || G() || (fVar = this.f1101c) == null || this.f1107i == null || this.A != null || fVar.B().isEmpty()) {
            return false;
        }
        OpenOverflowRunnable openOverflowRunnable = new OpenOverflowRunnable(new d(this.f1100b, this.f1101c, this.f1297k, true));
        this.A = openOverflowRunnable;
        ((View) this.f1107i).post(openOverflowRunnable);
        return true;
    }

    @Override
    public void b(androidx.appcompat.view.menu.f fVar, boolean z10) {
        A();
        super.b(fVar, z10);
    }

    @Override
    public void e(Parcelable parcelable) {
        int i10;
        MenuItem menuItemFindItem;
        if ((parcelable instanceof SavedState) && (i10 = ((SavedState) parcelable).openSubMenuId) > 0 && (menuItemFindItem = this.f1101c.findItem(i10)) != null) {
            f((androidx.appcompat.view.menu.q) menuItemFindItem.getSubMenu());
        }
    }

    @Override
    public boolean f(androidx.appcompat.view.menu.q qVar) {
        boolean z10 = false;
        if (!qVar.hasVisibleItems()) {
            return false;
        }
        androidx.appcompat.view.menu.q qVar2 = qVar;
        while (qVar2.j0() != this.f1101c) {
            qVar2 = (androidx.appcompat.view.menu.q) qVar2.j0();
        }
        View viewB = B(qVar2.getItem());
        if (viewB == null) {
            return false;
        }
        this.D = qVar.getItem().getItemId();
        int size = qVar.size();
        for (int i10 = 0; i10 < size; i10++) {
            MenuItem item = qVar.getItem(i10);
            if (item.isVisible() && item.getIcon() != null) {
                z10 = true;
                break;
            }
        }
        a aVar = new a(this.f1100b, qVar, viewB);
        this.f1312z = aVar;
        aVar.g(z10);
        this.f1312z.k();
        super.f(qVar);
        return true;
    }

    @Override
    public Parcelable g() {
        SavedState savedState = new SavedState();
        savedState.openSubMenuId = this.D;
        return savedState;
    }

    @Override
    public void h(boolean z10) {
        super.h(z10);
        ((View) this.f1107i).requestLayout();
        androidx.appcompat.view.menu.f fVar = this.f1101c;
        boolean z11 = false;
        if (fVar != null) {
            ArrayList arrayListU = fVar.u();
            int size = arrayListU.size();
            for (int i10 = 0; i10 < size; i10++) {
                ActionProvider actionProviderA = ((androidx.appcompat.view.menu.h) arrayListU.get(i10)).a();
                if (actionProviderA != null) {
                    actionProviderA.setSubUiVisibilityListener(this);
                }
            }
        }
        androidx.appcompat.view.menu.f fVar2 = this.f1101c;
        ArrayList arrayListB = fVar2 != null ? fVar2.B() : null;
        if (this.f1300n && arrayListB != null) {
            int size2 = arrayListB.size();
            if (size2 == 1) {
                z11 = !((androidx.appcompat.view.menu.h) arrayListB.get(0)).isActionViewExpanded();
            } else if (size2 > 0) {
                z11 = true;
            }
        }
        if (z11) {
            if (this.f1297k == null) {
                this.f1297k = new c(this.f1099a);
            }
            ViewGroup viewGroup = (ViewGroup) this.f1297k.getParent();
            if (viewGroup != this.f1107i) {
                if (viewGroup != null) {
                    viewGroup.removeView(this.f1297k);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.f1107i;
                actionMenuView.addView(this.f1297k, actionMenuView.generateOverflowButtonLayoutParams());
            }
        } else {
            c cVar = this.f1297k;
            if (cVar != null) {
                Object parent = cVar.getParent();
                Object obj = this.f1107i;
                if (parent == obj) {
                    ((ViewGroup) obj).removeView(this.f1297k);
                }
            }
        }
        ((ActionMenuView) this.f1107i).setOverflowReserved(this.f1300n);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.appcompat.widget.ActionMenuPresenter] */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r15v1, types: [androidx.appcompat.view.menu.h] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [int] */
    /* JADX WARN: Type inference failed for: r3v12 */
    @Override
    public boolean i() {
        ArrayList arrayListG;
        int size;
        int i10;
        int iG;
        ?? r10;
        ActionMenuPresenter actionMenuPresenter = this;
        androidx.appcompat.view.menu.f fVar = actionMenuPresenter.f1101c;
        View view = null;
        ?? r11 = 0;
        if (fVar != null) {
            arrayListG = fVar.G();
            size = arrayListG.size();
        } else {
            arrayListG = null;
            size = 0;
        }
        int i11 = actionMenuPresenter.f1304r;
        int i12 = actionMenuPresenter.f1303q;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) actionMenuPresenter.f1107i;
        boolean z10 = false;
        int i13 = 0;
        int i14 = 0;
        for (int i15 = 0; i15 < size; i15++) {
            androidx.appcompat.view.menu.h hVar = (androidx.appcompat.view.menu.h) arrayListG.get(i15);
            if (hVar.o()) {
                i13++;
            } else if (hVar.n()) {
                i14++;
            } else {
                z10 = true;
            }
            if (actionMenuPresenter.f1308v && hVar.isActionViewExpanded()) {
                i11 = 0;
            }
        }
        if (actionMenuPresenter.f1300n && (z10 || i14 + i13 > i11)) {
            i11--;
        }
        int i16 = i11 - i13;
        SparseBooleanArray sparseBooleanArray = actionMenuPresenter.f1310x;
        sparseBooleanArray.clear();
        if (actionMenuPresenter.f1306t) {
            int i17 = actionMenuPresenter.f1309w;
            iG = i12 / i17;
            i10 = i17 + ((i12 % i17) / iG);
        } else {
            i10 = 0;
            iG = 0;
        }
        int i18 = 0;
        int i19 = 0;
        ?? r12 = actionMenuPresenter;
        while (i18 < size) {
            ?? r15 = (androidx.appcompat.view.menu.h) arrayListG.get(i18);
            if (r15.o()) {
                View viewP = r12.p(r15, view, viewGroup);
                if (r12.f1306t) {
                    iG -= ActionMenuView.g(viewP, i10, iG, iMakeMeasureSpec, r11);
                } else {
                    viewP.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                }
                int measuredWidth = viewP.getMeasuredWidth();
                i12 -= measuredWidth;
                if (i19 == 0) {
                    i19 = measuredWidth;
                }
                int groupId = r15.getGroupId();
                if (groupId != 0) {
                    sparseBooleanArray.put(groupId, true);
                }
                r15.u(true);
                r10 = r11;
            } else if (r15.n()) {
                int groupId2 = r15.getGroupId();
                boolean z11 = sparseBooleanArray.get(groupId2);
                boolean z12 = (i16 > 0 || z11) && i12 > 0 && (!r12.f1306t || iG > 0);
                boolean z13 = z12;
                if (z12) {
                    View viewP2 = r12.p(r15, null, viewGroup);
                    if (r12.f1306t) {
                        int iG2 = ActionMenuView.g(viewP2, i10, iG, iMakeMeasureSpec, 0);
                        iG -= iG2;
                        if (iG2 == 0) {
                            z13 = false;
                        }
                    } else {
                        viewP2.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                    }
                    boolean z14 = z13;
                    int measuredWidth2 = viewP2.getMeasuredWidth();
                    i12 -= measuredWidth2;
                    if (i19 == 0) {
                        i19 = measuredWidth2;
                    }
                    z12 = z14 & (!r12.f1306t ? i12 + i19 <= 0 : i12 < 0);
                }
                if (z12 && groupId2 != 0) {
                    sparseBooleanArray.put(groupId2, true);
                } else if (z11) {
                    sparseBooleanArray.put(groupId2, false);
                    for (int i20 = 0; i20 < i18; i20++) {
                        androidx.appcompat.view.menu.h hVar2 = (androidx.appcompat.view.menu.h) arrayListG.get(i20);
                        if (hVar2.getGroupId() == groupId2) {
                            if (hVar2.l()) {
                                i16++;
                            }
                            hVar2.u(false);
                        }
                    }
                }
                if (z12) {
                    i16--;
                }
                r15.u(z12);
                r10 = 0;
            } else {
                r10 = r11;
                r15.u(r10);
            }
            i18++;
            r11 = r10;
            size = size;
            view = null;
            r12 = this;
        }
        return true;
    }

    @Override
    public void k(Context context, androidx.appcompat.view.menu.f fVar) {
        super.k(context, fVar);
        Resources resources = context.getResources();
        androidx.appcompat.view.a aVarB = androidx.appcompat.view.a.b(context);
        if (!this.f1301o) {
            this.f1300n = aVarB.h();
        }
        if (!this.f1307u) {
            this.f1302p = aVarB.c();
        }
        if (!this.f1305s) {
            this.f1304r = aVarB.d();
        }
        int measuredWidth = this.f1302p;
        if (this.f1300n) {
            if (this.f1297k == null) {
                c cVar = new c(this.f1099a);
                this.f1297k = cVar;
                if (this.f1299m) {
                    cVar.setImageDrawable(this.f1298l);
                    this.f1298l = null;
                    this.f1299m = false;
                }
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.f1297k.measure(iMakeMeasureSpec, iMakeMeasureSpec);
            }
            measuredWidth -= this.f1297k.getMeasuredWidth();
        } else {
            this.f1297k = null;
        }
        this.f1303q = measuredWidth;
        this.f1309w = (int) (resources.getDisplayMetrics().density * 56.0f);
    }

    @Override
    public void l(androidx.appcompat.view.menu.h hVar, androidx.appcompat.view.menu.m.a aVar) {
        aVar.initialize(hVar, 0);
        ActionMenuItemView actionMenuItemView = (ActionMenuItemView) aVar;
        actionMenuItemView.setItemInvoker((ActionMenuView) this.f1107i);
        if (this.B == null) {
            this.B = new b();
        }
        actionMenuItemView.setPopupCallback(this.B);
    }

    @Override
    public boolean n(ViewGroup viewGroup, int i10) {
        if (viewGroup.getChildAt(i10) == this.f1297k) {
            return false;
        }
        return super.n(viewGroup, i10);
    }

    @Override
    public void onSubUiVisibilityChanged(boolean z10) {
        if (z10) {
            super.f(null);
            return;
        }
        androidx.appcompat.view.menu.f fVar = this.f1101c;
        if (fVar != null) {
            fVar.e(false);
        }
    }

    @Override
    public View p(androidx.appcompat.view.menu.h hVar, View view, ViewGroup viewGroup) {
        View actionView = hVar.getActionView();
        if (actionView == null || hVar.j()) {
            actionView = super.p(hVar, view, viewGroup);
        }
        actionView.setVisibility(hVar.isActionViewExpanded() ? 8 : 0);
        ActionMenuView actionMenuView = (ActionMenuView) viewGroup;
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        if (!actionMenuView.checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(actionMenuView.generateLayoutParams(layoutParams));
        }
        return actionView;
    }

    @Override
    public androidx.appcompat.view.menu.m q(ViewGroup viewGroup) {
        androidx.appcompat.view.menu.m mVar = this.f1107i;
        androidx.appcompat.view.menu.m mVarQ = super.q(viewGroup);
        if (mVar != mVarQ) {
            ((ActionMenuView) mVarQ).setPresenter(this);
        }
        return mVarQ;
    }

    @Override
    public boolean s(int i10, androidx.appcompat.view.menu.h hVar) {
        return hVar.l();
    }
}
