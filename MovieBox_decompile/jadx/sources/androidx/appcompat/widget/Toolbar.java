package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Layout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$styleable;
import androidx.core.view.GravityCompat;
import androidx.core.view.MenuHost;
import androidx.core.view.MenuHostHelper;
import androidx.core.view.MenuProvider;
import androidx.core.view.ViewCompat;
import androidx.customview.view.AbsSavedState;
import androidx.p009lifecycle.Lifecycle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

public class Toolbar extends ViewGroup implements MenuHost {
    private ColorStateList A;
    private boolean B;
    private boolean C;
    private final ArrayList D;
    private final ArrayList E;
    private final int[] F;
    final MenuHostHelper G;
    private ArrayList H;
    g I;
    private final ActionMenuView.e J;
    private n0 K;
    private ActionMenuPresenter L;
    private e M;
    private androidx.appcompat.view.menu.l.a N;
    androidx.appcompat.view.menu.f.a O;
    private boolean P;
    private OnBackInvokedCallback Q;
    private OnBackInvokedDispatcher R;
    private boolean S;
    private final Runnable T;

    ActionMenuView f1604a;

    private TextView f1605b;

    private TextView f1606c;

    private ImageButton f1607d;

    private ImageView f1608e;

    private Drawable f1609f;

    private CharSequence f1610g;

    ImageButton f1611h;

    View f1612i;

    private Context f1613j;

    private int f1614k;

    private int f1615l;

    private int f1616m;

    int f1617n;

    private int f1618o;

    private int f1619p;

    private int f1620q;

    private int f1621r;

    private int f1622s;

    private d0 f1623t;

    private int f1624u;

    private int f1625v;

    private int f1626w;

    private CharSequence f1627x;

    private CharSequence f1628y;

    private ColorStateList f1629z;

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        int expandedMenuItemId;
        boolean isOverflowOpen;

        class a implements Parcelable.ClassLoaderCreator {
            a() {
            }

            @Override
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        }

        public SavedState(Parcel parcel) {
            this(parcel, null);
        }

        @Override
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.expandedMenuItemId);
            parcel.writeInt(this.isOverflowOpen ? 1 : 0);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.expandedMenuItemId = parcel.readInt();
            this.isOverflowOpen = parcel.readInt() != 0;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    class a implements ActionMenuView.e {
        a() {
        }

        @Override
        public boolean onMenuItemClick(MenuItem menuItem) {
            if (Toolbar.this.G.onMenuItemSelected(menuItem)) {
                return true;
            }
            g gVar = Toolbar.this.I;
            if (gVar != null) {
                return gVar.onMenuItemClick(menuItem);
            }
            return false;
        }
    }

    class b implements androidx.appcompat.view.menu.f.a {
        b() {
        }

        @Override
        public boolean a(androidx.appcompat.view.menu.f fVar, MenuItem menuItem) {
            androidx.appcompat.view.menu.f.a aVar = Toolbar.this.O;
            return aVar != null && aVar.a(fVar, menuItem);
        }

        @Override
        public void b(androidx.appcompat.view.menu.f fVar) {
            if (!Toolbar.this.f1604a.isOverflowMenuShowing()) {
                Toolbar.this.G.onPrepareMenu(fVar);
            }
            androidx.appcompat.view.menu.f.a aVar = Toolbar.this.O;
            if (aVar != null) {
                aVar.b(fVar);
            }
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override
        public void onClick(View view) {
            Toolbar.this.collapseActionView();
        }
    }

    static class d {
        @Nullable
        static OnBackInvokedDispatcher a(@NonNull View view) {
            return view.findOnBackInvokedDispatcher();
        }

        @NonNull
        static OnBackInvokedCallback b(@NonNull final Runnable runnable) {
            Objects.requireNonNull(runnable);
            return new OnBackInvokedCallback() {
                public final void onBackInvoked() {
                    runnable.run();
                }
            };
        }

        static void c(@NonNull Object obj, @NonNull Object obj2) {
            ((OnBackInvokedDispatcher) obj).registerOnBackInvokedCallback(1000000, (OnBackInvokedCallback) obj2);
        }

        static void d(@NonNull Object obj, @NonNull Object obj2) {
            ((OnBackInvokedDispatcher) obj).unregisterOnBackInvokedCallback((OnBackInvokedCallback) obj2);
        }
    }

    public interface g {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public Toolbar(@NonNull Context context) {
        this(context, null);
    }

    private boolean A(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    private void b(List list, int i10) {
        boolean z10 = getLayoutDirection() == 1;
        int childCount = getChildCount();
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i10, getLayoutDirection());
        list.clear();
        if (!z10) {
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = getChildAt(i11);
                f fVar = (f) childAt.getLayoutParams();
                if (fVar.f1636b == 0 && A(childAt) && l(fVar.f795a) == absoluteGravity) {
                    list.add(childAt);
                }
            }
            return;
        }
        for (int i12 = childCount - 1; i12 >= 0; i12--) {
            View childAt2 = getChildAt(i12);
            f fVar2 = (f) childAt2.getLayoutParams();
            if (fVar2.f1636b == 0 && A(childAt2) && l(fVar2.f795a) == absoluteGravity) {
                list.add(childAt2);
            }
        }
    }

    private void c(View view, boolean z10) {
        f fVarGenerateLayoutParams;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            fVarGenerateLayoutParams = generateDefaultLayoutParams();
        } else {
            fVarGenerateLayoutParams = !checkLayoutParams(layoutParams) ? generateLayoutParams(layoutParams) : (f) layoutParams;
        }
        fVarGenerateLayoutParams.f1636b = 1;
        if (!z10 || this.f1612i == null) {
            addView(view, fVarGenerateLayoutParams);
        } else {
            view.setLayoutParams(fVarGenerateLayoutParams);
            this.E.add(view);
        }
    }

    private void e() {
        if (this.f1623t == null) {
            this.f1623t = new d0();
        }
    }

    private void f() {
        if (this.f1608e == null) {
            this.f1608e = new AppCompatImageView(getContext());
        }
    }

    private void g() {
        h();
        if (this.f1604a.peekMenu() == null) {
            androidx.appcompat.view.menu.f fVar = (androidx.appcompat.view.menu.f) this.f1604a.getMenu();
            if (this.M == null) {
                this.M = new e();
            }
            this.f1604a.setExpandedActionViewsExclusive(true);
            fVar.c(this.M, this.f1613j);
            B();
        }
    }

    private ArrayList<MenuItem> getCurrentMenuItems() {
        ArrayList<MenuItem> arrayList = new ArrayList<>();
        Menu menu = getMenu();
        for (int i10 = 0; i10 < menu.size(); i10++) {
            arrayList.add(menu.getItem(i10));
        }
        return arrayList;
    }

    private MenuInflater getMenuInflater() {
        return new androidx.appcompat.view.g(getContext());
    }

    private void h() {
        if (this.f1604a == null) {
            ActionMenuView actionMenuView = new ActionMenuView(getContext());
            this.f1604a = actionMenuView;
            actionMenuView.setPopupTheme(this.f1614k);
            this.f1604a.setOnMenuItemClickListener(this.J);
            this.f1604a.setMenuCallbacks(this.N, new b());
            f fVarGenerateDefaultLayoutParams = generateDefaultLayoutParams();
            fVarGenerateDefaultLayoutParams.f795a = (this.f1617n & 112) | GravityCompat.END;
            this.f1604a.setLayoutParams(fVarGenerateDefaultLayoutParams);
            c(this.f1604a, false);
        }
    }

    private void i() {
        if (this.f1607d == null) {
            this.f1607d = new AppCompatImageButton(getContext(), null, R$attr.toolbarNavigationButtonStyle);
            f fVarGenerateDefaultLayoutParams = generateDefaultLayoutParams();
            fVarGenerateDefaultLayoutParams.f795a = (this.f1617n & 112) | GravityCompat.START;
            this.f1607d.setLayoutParams(fVarGenerateDefaultLayoutParams);
        }
    }

    private int l(int i10) {
        int layoutDirection = getLayoutDirection();
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i10, layoutDirection) & 7;
        if (absoluteGravity == 1 || absoluteGravity == 3 || absoluteGravity == 5) {
            return absoluteGravity;
        }
        return layoutDirection == 1 ? 5 : 3;
    }

    private int m(View view, int i10) {
        f fVar = (f) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i11 = i10 > 0 ? (measuredHeight - i10) / 2 : 0;
        int iN = n(fVar.f795a);
        if (iN == 48) {
            return getPaddingTop() - i11;
        }
        if (iN == 80) {
            return (((getHeight() - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin) - i11;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        int iMax = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
        int i12 = ((ViewGroup.MarginLayoutParams) fVar).topMargin;
        if (iMax < i12) {
            iMax = i12;
        } else {
            int i13 = (((height - paddingBottom) - measuredHeight) - iMax) - paddingTop;
            int i14 = ((ViewGroup.MarginLayoutParams) fVar).bottomMargin;
            if (i13 < i14) {
                iMax = Math.max(0, iMax - (i14 - i13));
            }
        }
        return paddingTop + iMax;
    }

    private int n(int i10) {
        int i11 = i10 & 112;
        return (i11 == 16 || i11 == 48 || i11 == 80) ? i11 : this.f1626w & 112;
    }

    private int o(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.getMarginStart() + marginLayoutParams.getMarginEnd();
    }

    private int p(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    private int q(List list, int[] iArr) {
        int i10 = iArr[0];
        int i11 = iArr[1];
        int size = list.size();
        int i12 = 0;
        int measuredWidth = 0;
        while (i12 < size) {
            View view = (View) list.get(i12);
            f fVar = (f) view.getLayoutParams();
            int i13 = ((ViewGroup.MarginLayoutParams) fVar).leftMargin - i10;
            int i14 = ((ViewGroup.MarginLayoutParams) fVar).rightMargin - i11;
            int iMax = Math.max(0, i13);
            int iMax2 = Math.max(0, i14);
            int iMax3 = Math.max(0, -i13);
            int iMax4 = Math.max(0, -i14);
            measuredWidth += iMax + view.getMeasuredWidth() + iMax2;
            i12++;
            i11 = iMax4;
            i10 = iMax3;
        }
        return measuredWidth;
    }

    private boolean r(View view) {
        return view.getParent() == this || this.E.contains(view);
    }

    private int s(View view, int i10, int[] iArr, int i11) {
        f fVar = (f) view.getLayoutParams();
        int i12 = ((ViewGroup.MarginLayoutParams) fVar).leftMargin - iArr[0];
        int iMax = i10 + Math.max(0, i12);
        iArr[0] = Math.max(0, -i12);
        int iM = m(view, i11);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax, iM, iMax + measuredWidth, view.getMeasuredHeight() + iM);
        return iMax + measuredWidth + ((ViewGroup.MarginLayoutParams) fVar).rightMargin;
    }

    private int t(View view, int i10, int[] iArr, int i11) {
        f fVar = (f) view.getLayoutParams();
        int i12 = ((ViewGroup.MarginLayoutParams) fVar).rightMargin - iArr[1];
        int iMax = i10 - Math.max(0, i12);
        iArr[1] = Math.max(0, -i12);
        int iM = m(view, i11);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax - measuredWidth, iM, iMax, view.getMeasuredHeight() + iM);
        return iMax - (measuredWidth + ((ViewGroup.MarginLayoutParams) fVar).leftMargin);
    }

    private int u(View view, int i10, int i11, int i12, int i13, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i14 = marginLayoutParams.leftMargin - iArr[0];
        int i15 = marginLayoutParams.rightMargin - iArr[1];
        int iMax = Math.max(0, i14) + Math.max(0, i15);
        iArr[0] = Math.max(0, -i14);
        iArr[1] = Math.max(0, -i15);
        view.measure(ViewGroup.getChildMeasureSpec(i10, getPaddingLeft() + getPaddingRight() + iMax + i11, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i12, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i13, marginLayoutParams.height));
        return view.getMeasuredWidth() + iMax;
    }

    private void v(View view, int i10, int i11, int i12, int i13, int i14) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i10, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i11, marginLayoutParams.width);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i12, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i13, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i14 >= 0) {
            if (mode != 0) {
                i14 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i14);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i14, 1073741824);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    private void w() {
        Menu menu = getMenu();
        ArrayList<MenuItem> currentMenuItems = getCurrentMenuItems();
        this.G.onCreateMenu(menu, getMenuInflater());
        ArrayList<MenuItem> currentMenuItems2 = getCurrentMenuItems();
        currentMenuItems2.removeAll(currentMenuItems);
        this.H = currentMenuItems2;
    }

    private void x() {
        removeCallbacks(this.T);
        post(this.T);
    }

    private boolean z() {
        if (!this.P) {
            return false;
        }
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (A(childAt) && childAt.getMeasuredWidth() > 0 && childAt.getMeasuredHeight() > 0) {
                return false;
            }
        }
        return true;
    }

    void B() {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        if (Build.VERSION.SDK_INT >= 33) {
            OnBackInvokedDispatcher onBackInvokedDispatcherA = d.a(this);
            boolean z10 = hasExpandedActionView() && onBackInvokedDispatcherA != null && isAttachedToWindow() && this.S;
            if (z10 && this.R == null) {
                if (this.Q == null) {
                    this.Q = d.b(new Runnable() {
                        @Override
                        public final void run() {
                            this.f1740a.collapseActionView();
                        }
                    });
                }
                d.c(onBackInvokedDispatcherA, this.Q);
                this.R = onBackInvokedDispatcherA;
                return;
            }
            if (z10 || (onBackInvokedDispatcher = this.R) == null) {
                return;
            }
            d.d(onBackInvokedDispatcher, this.Q);
            this.R = null;
        }
    }

    void a() {
        for (int size = this.E.size() - 1; size >= 0; size--) {
            addView((View) this.E.get(size));
        }
        this.E.clear();
    }

    @Override
    public void addMenuProvider(@NonNull MenuProvider menuProvider) {
        this.G.addMenuProvider(menuProvider);
    }

    public boolean canShowOverflowMenu() {
        ActionMenuView actionMenuView;
        return getVisibility() == 0 && (actionMenuView = this.f1604a) != null && actionMenuView.isOverflowReserved();
    }

    @Override
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof f);
    }

    public void collapseActionView() {
        e eVar = this.M;
        androidx.appcompat.view.menu.h hVar = eVar == null ? null : eVar.f1634b;
        if (hVar != null) {
            hVar.collapseActionView();
        }
    }

    void d() {
        if (this.f1611h == null) {
            AppCompatImageButton appCompatImageButton = new AppCompatImageButton(getContext(), null, R$attr.toolbarNavigationButtonStyle);
            this.f1611h = appCompatImageButton;
            appCompatImageButton.setImageDrawable(this.f1609f);
            this.f1611h.setContentDescription(this.f1610g);
            f fVarGenerateDefaultLayoutParams = generateDefaultLayoutParams();
            fVarGenerateDefaultLayoutParams.f795a = (this.f1617n & 112) | GravityCompat.START;
            fVarGenerateDefaultLayoutParams.f1636b = 2;
            this.f1611h.setLayoutParams(fVarGenerateDefaultLayoutParams);
            this.f1611h.setOnClickListener(new c());
        }
    }

    public void dismissPopupMenus() {
        ActionMenuView actionMenuView = this.f1604a;
        if (actionMenuView != null) {
            actionMenuView.dismissPopupMenus();
        }
    }

    @Nullable
    public CharSequence getCollapseContentDescription() {
        ImageButton imageButton = this.f1611h;
        if (imageButton != null) {
            return imageButton.getContentDescription();
        }
        return null;
    }

    @Nullable
    public Drawable getCollapseIcon() {
        ImageButton imageButton = this.f1611h;
        if (imageButton != null) {
            return imageButton.getDrawable();
        }
        return null;
    }

    public int getContentInsetEnd() {
        d0 d0Var = this.f1623t;
        if (d0Var != null) {
            return d0Var.a();
        }
        return 0;
    }

    public int getContentInsetEndWithActions() {
        int i10 = this.f1625v;
        return i10 != Integer.MIN_VALUE ? i10 : getContentInsetEnd();
    }

    public int getContentInsetLeft() {
        d0 d0Var = this.f1623t;
        if (d0Var != null) {
            return d0Var.b();
        }
        return 0;
    }

    public int getContentInsetRight() {
        d0 d0Var = this.f1623t;
        if (d0Var != null) {
            return d0Var.c();
        }
        return 0;
    }

    public int getContentInsetStart() {
        d0 d0Var = this.f1623t;
        if (d0Var != null) {
            return d0Var.d();
        }
        return 0;
    }

    public int getContentInsetStartWithNavigation() {
        int i10 = this.f1624u;
        return i10 != Integer.MIN_VALUE ? i10 : getContentInsetStart();
    }

    public int getCurrentContentInsetEnd() {
        androidx.appcompat.view.menu.f fVarPeekMenu;
        ActionMenuView actionMenuView = this.f1604a;
        return (actionMenuView == null || (fVarPeekMenu = actionMenuView.peekMenu()) == null || !fVarPeekMenu.hasVisibleItems()) ? getContentInsetEnd() : Math.max(getContentInsetEnd(), Math.max(this.f1625v, 0));
    }

    public int getCurrentContentInsetLeft() {
        return getLayoutDirection() == 1 ? getCurrentContentInsetEnd() : getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        return getLayoutDirection() == 1 ? getCurrentContentInsetStart() : getCurrentContentInsetEnd();
    }

    public int getCurrentContentInsetStart() {
        return getNavigationIcon() != null ? Math.max(getContentInsetStart(), Math.max(this.f1624u, 0)) : getContentInsetStart();
    }

    public Drawable getLogo() {
        ImageView imageView = this.f1608e;
        if (imageView != null) {
            return imageView.getDrawable();
        }
        return null;
    }

    public CharSequence getLogoDescription() {
        ImageView imageView = this.f1608e;
        if (imageView != null) {
            return imageView.getContentDescription();
        }
        return null;
    }

    public Menu getMenu() {
        g();
        return this.f1604a.getMenu();
    }

    @Nullable
    View getNavButtonView() {
        return this.f1607d;
    }

    @Nullable
    public CharSequence getNavigationContentDescription() {
        ImageButton imageButton = this.f1607d;
        if (imageButton != null) {
            return imageButton.getContentDescription();
        }
        return null;
    }

    @Nullable
    public Drawable getNavigationIcon() {
        ImageButton imageButton = this.f1607d;
        if (imageButton != null) {
            return imageButton.getDrawable();
        }
        return null;
    }

    ActionMenuPresenter getOuterActionMenuPresenter() {
        return this.L;
    }

    @Nullable
    public Drawable getOverflowIcon() {
        g();
        return this.f1604a.getOverflowIcon();
    }

    Context getPopupContext() {
        return this.f1613j;
    }

    public int getPopupTheme() {
        return this.f1614k;
    }

    public CharSequence getSubtitle() {
        return this.f1628y;
    }

    @Nullable
    final TextView getSubtitleTextView() {
        return this.f1606c;
    }

    public CharSequence getTitle() {
        return this.f1627x;
    }

    public int getTitleMarginBottom() {
        return this.f1622s;
    }

    public int getTitleMarginEnd() {
        return this.f1620q;
    }

    public int getTitleMarginStart() {
        return this.f1619p;
    }

    public int getTitleMarginTop() {
        return this.f1621r;
    }

    @Nullable
    final TextView getTitleTextView() {
        return this.f1605b;
    }

    public t getWrapper() {
        if (this.K == null) {
            this.K = new n0(this, true);
        }
        return this.K;
    }

    public boolean hasExpandedActionView() {
        e eVar = this.M;
        return (eVar == null || eVar.f1634b == null) ? false : true;
    }

    public boolean hideOverflowMenu() {
        ActionMenuView actionMenuView = this.f1604a;
        return actionMenuView != null && actionMenuView.hideOverflowMenu();
    }

    public void inflateMenu(int i10) {
        getMenuInflater().inflate(i10, getMenu());
    }

    @Override
    public void invalidateMenu() {
        Iterator it = this.H.iterator();
        while (it.hasNext()) {
            getMenu().removeItem(((MenuItem) it.next()).getItemId());
        }
        w();
    }

    public boolean isBackInvokedCallbackEnabled() {
        return this.S;
    }

    public boolean isOverflowMenuShowPending() {
        ActionMenuView actionMenuView = this.f1604a;
        return actionMenuView != null && actionMenuView.isOverflowMenuShowPending();
    }

    public boolean isOverflowMenuShowing() {
        ActionMenuView actionMenuView = this.f1604a;
        return actionMenuView != null && actionMenuView.isOverflowMenuShowing();
    }

    public boolean isTitleTruncated() {
        Layout layout;
        TextView textView = this.f1605b;
        if (textView == null || (layout = textView.getLayout()) == null) {
            return false;
        }
        int lineCount = layout.getLineCount();
        for (int i10 = 0; i10 < lineCount; i10++) {
            if (layout.getEllipsisCount(i10) > 0) {
                return true;
            }
        }
        return false;
    }

    @Override
    public f generateDefaultLayoutParams() {
        return new f(-2, -2);
    }

    @Override
    public f generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof f) {
            return new f((f) layoutParams);
        }
        if (layoutParams instanceof androidx.appcompat.app.a.C0013a) {
            return new f((androidx.appcompat.app.a.C0013a) layoutParams);
        }
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new f((ViewGroup.MarginLayoutParams) layoutParams) : new f(layoutParams);
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        B();
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.T);
        B();
    }

    @Override
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.C = false;
        }
        if (!this.C) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !zOnHoverEvent) {
                this.C = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.C = false;
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0268  */
    /* JADX WARN: Code duplicated, block: B:102:0x028a  */
    /* JADX WARN: Code duplicated, block: B:104:0x028d  */
    /* JADX WARN: Code duplicated, block: B:107:0x02a1 A[LOOP:0: B:106:0x029f->B:107:0x02a1, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:110:0x02c3 A[LOOP:1: B:109:0x02c1->B:110:0x02c3, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:114:0x02ed A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:115:0x02ef  */
    /* JADX WARN: Code duplicated, block: B:116:0x02f3  */
    /* JADX WARN: Code duplicated, block: B:119:0x02fc A[LOOP:2: B:118:0x02fa->B:119:0x02fc, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:19:0x0060 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:20:0x0062  */
    /* JADX WARN: Code duplicated, block: B:21:0x0069  */
    /* JADX WARN: Code duplicated, block: B:24:0x0077 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:25:0x0079  */
    /* JADX WARN: Code duplicated, block: B:26:0x0080  */
    /* JADX WARN: Code duplicated, block: B:29:0x00b4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:30:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:31:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:34:0x00cb A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:35:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:36:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:39:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:40:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:42:0x0104  */
    /* JADX WARN: Code duplicated, block: B:43:0x011c  */
    /* JADX WARN: Code duplicated, block: B:49:0x012a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:50:0x012c  */
    /* JADX WARN: Code duplicated, block: B:51:0x012f  */
    /* JADX WARN: Code duplicated, block: B:53:0x0133  */
    /* JADX WARN: Code duplicated, block: B:54:0x0136  */
    /* JADX WARN: Code duplicated, block: B:57:0x0146  */
    /* JADX WARN: Code duplicated, block: B:59:0x014e A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:66:0x0167  */
    /* JADX WARN: Code duplicated, block: B:68:0x016b  */
    /* JADX WARN: Code duplicated, block: B:70:0x017d  */
    /* JADX WARN: Code duplicated, block: B:71:0x0180  */
    /* JADX WARN: Code duplicated, block: B:73:0x018b  */
    /* JADX WARN: Code duplicated, block: B:75:0x0197  */
    /* JADX WARN: Code duplicated, block: B:76:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:78:0x01b6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:79:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:81:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:84:0x01d0  */
    /* JADX WARN: Code duplicated, block: B:85:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:87:0x01f7  */
    /* JADX WARN: Code duplicated, block: B:88:0x021b  */
    /* JADX WARN: Code duplicated, block: B:90:0x021e  */
    /* JADX WARN: Code duplicated, block: B:92:0x0227 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:93:0x0229  */
    /* JADX WARN: Code duplicated, block: B:95:0x022e  */
    /* JADX WARN: Code duplicated, block: B:98:0x0242  */
    /* JADX WARN: Code duplicated, block: B:99:0x0265  */
    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int iS;
        int iT;
        int iMax;
        int iMin;
        boolean zA;
        boolean zA2;
        int measuredHeight;
        TextView textView;
        TextView textView2;
        f fVar;
        f fVar2;
        boolean z11;
        int i14;
        int i15;
        int paddingTop;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int iMax2;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        int size;
        int iS2;
        int i28;
        int i29;
        int size2;
        int i30;
        int i31;
        int i32;
        int size3;
        boolean z12 = getLayoutDirection() == 1;
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop2 = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i33 = width - paddingRight;
        int[] iArr = this.F;
        iArr[1] = 0;
        iArr[0] = 0;
        int minimumHeight = ViewCompat.getMinimumHeight(this);
        int iMin2 = minimumHeight >= 0 ? Math.min(minimumHeight, i13 - i11) : 0;
        if (A(this.f1607d)) {
            if (z12) {
                iT = t(this.f1607d, i33, iArr, iMin2);
                iS = paddingLeft;
            } else {
                iS = s(this.f1607d, paddingLeft, iArr, iMin2);
            }
            if (A(this.f1611h)) {
                if (z12) {
                    iT = t(this.f1611h, iT, iArr, iMin2);
                } else {
                    iS = s(this.f1611h, iS, iArr, iMin2);
                }
            }
            if (A(this.f1604a)) {
                if (z12) {
                    iS = s(this.f1604a, iS, iArr, iMin2);
                } else {
                    iT = t(this.f1604a, iT, iArr, iMin2);
                }
            }
            int currentContentInsetLeft = getCurrentContentInsetLeft();
            int currentContentInsetRight = getCurrentContentInsetRight();
            iArr[0] = Math.max(0, currentContentInsetLeft - iS);
            iArr[1] = Math.max(0, currentContentInsetRight - (i33 - iT));
            iMax = Math.max(iS, currentContentInsetLeft);
            iMin = Math.min(iT, i33 - currentContentInsetRight);
            if (A(this.f1612i)) {
                if (z12) {
                    iMin = t(this.f1612i, iMin, iArr, iMin2);
                } else {
                    iMax = s(this.f1612i, iMax, iArr, iMin2);
                }
            }
            if (A(this.f1608e)) {
                if (z12) {
                    iMin = t(this.f1608e, iMin, iArr, iMin2);
                } else {
                    iMax = s(this.f1608e, iMax, iArr, iMin2);
                }
            }
            zA = A(this.f1605b);
            zA2 = A(this.f1606c);
            if (zA) {
                f fVar3 = (f) this.f1605b.getLayoutParams();
                measuredHeight = ((ViewGroup.MarginLayoutParams) fVar3).topMargin + this.f1605b.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) fVar3).bottomMargin;
            } else {
                measuredHeight = 0;
            }
            if (zA2) {
                f fVar4 = (f) this.f1606c.getLayoutParams();
                measuredHeight += ((ViewGroup.MarginLayoutParams) fVar4).topMargin + this.f1606c.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) fVar4).bottomMargin;
            }
            if (!zA || zA2) {
                if (zA) {
                    textView = this.f1605b;
                } else {
                    textView = this.f1606c;
                }
                if (zA2) {
                    textView2 = this.f1606c;
                } else {
                    textView2 = this.f1605b;
                }
                fVar = (f) textView.getLayoutParams();
                fVar2 = (f) textView2.getLayoutParams();
                z11 = (!zA && this.f1605b.getMeasuredWidth() > 0) || (zA2 && this.f1606c.getMeasuredWidth() > 0);
                i14 = this.f1626w & 112;
                i15 = paddingLeft;
                if (i14 == 48) {
                    paddingTop = getPaddingTop() + ((ViewGroup.MarginLayoutParams) fVar).topMargin + this.f1621r;
                } else if (i14 != 80) {
                    iMax2 = (((height - paddingTop2) - paddingBottom) - measuredHeight) / 2;
                    i23 = ((ViewGroup.MarginLayoutParams) fVar).topMargin;
                    i24 = this.f1621r;
                    if (iMax2 < i23 + i24) {
                        iMax2 = i23 + i24;
                    } else {
                        i25 = (((height - paddingBottom) - measuredHeight) - iMax2) - paddingTop2;
                        i26 = ((ViewGroup.MarginLayoutParams) fVar).bottomMargin;
                        i27 = this.f1622s;
                        if (i25 < i26 + i27) {
                            iMax2 = Math.max(0, iMax2 - ((((ViewGroup.MarginLayoutParams) fVar2).bottomMargin + i27) - i25));
                        }
                    }
                    paddingTop = paddingTop2 + iMax2;
                } else {
                    paddingTop = (((height - paddingBottom) - ((ViewGroup.MarginLayoutParams) fVar2).bottomMargin) - this.f1622s) - measuredHeight;
                }
                if (z12) {
                    if (z11) {
                        i20 = this.f1619p;
                    } else {
                        i20 = 0;
                    }
                    int i34 = i20 - iArr[1];
                    iMin -= Math.max(0, i34);
                    iArr[1] = Math.max(0, -i34);
                    if (zA) {
                        f fVar5 = (f) this.f1605b.getLayoutParams();
                        int measuredWidth = iMin - this.f1605b.getMeasuredWidth();
                        int measuredHeight2 = this.f1605b.getMeasuredHeight() + paddingTop;
                        this.f1605b.layout(measuredWidth, paddingTop, iMin, measuredHeight2);
                        i21 = measuredWidth - this.f1620q;
                        paddingTop = measuredHeight2 + ((ViewGroup.MarginLayoutParams) fVar5).bottomMargin;
                    } else {
                        i21 = iMin;
                    }
                    if (zA2) {
                        int i35 = paddingTop + ((ViewGroup.MarginLayoutParams) ((f) this.f1606c.getLayoutParams())).topMargin;
                        this.f1606c.layout(iMin - this.f1606c.getMeasuredWidth(), i35, iMin, this.f1606c.getMeasuredHeight() + i35);
                        i22 = iMin - this.f1620q;
                    } else {
                        i22 = iMin;
                    }
                    if (z11) {
                        iMin = Math.min(i21, i22);
                    }
                    iMax = iMax;
                } else {
                    if (z11) {
                        i16 = this.f1619p;
                    } else {
                        i16 = 0;
                    }
                    i17 = 0;
                    int i36 = i16 - iArr[0];
                    iMax += Math.max(0, i36);
                    iArr[0] = Math.max(0, -i36);
                    if (zA) {
                        f fVar6 = (f) this.f1605b.getLayoutParams();
                        int measuredWidth2 = this.f1605b.getMeasuredWidth() + iMax;
                        int measuredHeight3 = this.f1605b.getMeasuredHeight() + paddingTop;
                        this.f1605b.layout(iMax, paddingTop, measuredWidth2, measuredHeight3);
                        i18 = measuredWidth2 + this.f1620q;
                        paddingTop = measuredHeight3 + ((ViewGroup.MarginLayoutParams) fVar6).bottomMargin;
                    } else {
                        i18 = iMax;
                    }
                    if (zA2) {
                        int i37 = paddingTop + ((ViewGroup.MarginLayoutParams) ((f) this.f1606c.getLayoutParams())).topMargin;
                        int measuredWidth3 = this.f1606c.getMeasuredWidth() + iMax;
                        this.f1606c.layout(iMax, i37, measuredWidth3, this.f1606c.getMeasuredHeight() + i37);
                        i19 = measuredWidth3 + this.f1620q;
                    } else {
                        i19 = iMax;
                    }
                    if (z11) {
                        iMax = Math.max(i18, i19);
                    }
                }
                b(this.D, 3);
                size = this.D.size();
                iS2 = iMax;
                for (i28 = i17; i28 < size; i28++) {
                    iS2 = s((View) this.D.get(i28), iS2, iArr, iMin2);
                }
                i29 = iMin2;
                b(this.D, 5);
                size2 = this.D.size();
                for (i30 = i17; i30 < size2; i30++) {
                    iMin = t((View) this.D.get(i30), iMin, iArr, i29);
                }
                b(this.D, 1);
                int iQ = q(this.D, iArr);
                i31 = (i15 + (((width - i15) - paddingRight) / 2)) - (iQ / 2);
                i32 = iQ + i31;
                if (i31 >= iS2) {
                    if (i32 > iMin) {
                        iS2 = i31 - (i32 - iMin);
                    } else {
                        iS2 = i31;
                    }
                }
                size3 = this.D.size();
                while (i17 < size3) {
                    iS2 = s((View) this.D.get(i17), iS2, iArr, i29);
                    i17++;
                }
                this.D.clear();
            }
            i15 = paddingLeft;
            iMin2 = iMin2;
            i17 = 0;
            b(this.D, 3);
            size = this.D.size();
            iS2 = iMax;
            while (i28 < size) {
                iS2 = s((View) this.D.get(i28), iS2, iArr, iMin2);
            }
            i29 = iMin2;
            b(this.D, 5);
            size2 = this.D.size();
            while (i30 < size2) {
                iMin = t((View) this.D.get(i30), iMin, iArr, i29);
            }
            b(this.D, 1);
            int iQ2 = q(this.D, iArr);
            i31 = (i15 + (((width - i15) - paddingRight) / 2)) - (iQ2 / 2);
            i32 = iQ2 + i31;
            if (i31 >= iS2) {
                if (i32 > iMin) {
                    iS2 = i31 - (i32 - iMin);
                } else {
                    iS2 = i31;
                }
            }
            size3 = this.D.size();
            while (i17 < size3) {
                iS2 = s((View) this.D.get(i17), iS2, iArr, i29);
                i17++;
            }
            this.D.clear();
        }
        iS = paddingLeft;
        iT = i33;
        if (A(this.f1611h)) {
            if (z12) {
                iT = t(this.f1611h, iT, iArr, iMin2);
            } else {
                iS = s(this.f1611h, iS, iArr, iMin2);
            }
        }
        if (A(this.f1604a)) {
            if (z12) {
                iS = s(this.f1604a, iS, iArr, iMin2);
            } else {
                iT = t(this.f1604a, iT, iArr, iMin2);
            }
        }
        int currentContentInsetLeft2 = getCurrentContentInsetLeft();
        int currentContentInsetRight2 = getCurrentContentInsetRight();
        iArr[0] = Math.max(0, currentContentInsetLeft2 - iS);
        iArr[1] = Math.max(0, currentContentInsetRight2 - (i33 - iT));
        iMax = Math.max(iS, currentContentInsetLeft2);
        iMin = Math.min(iT, i33 - currentContentInsetRight2);
        if (A(this.f1612i)) {
            if (z12) {
                iMin = t(this.f1612i, iMin, iArr, iMin2);
            } else {
                iMax = s(this.f1612i, iMax, iArr, iMin2);
            }
        }
        if (A(this.f1608e)) {
            if (z12) {
                iMin = t(this.f1608e, iMin, iArr, iMin2);
            } else {
                iMax = s(this.f1608e, iMax, iArr, iMin2);
            }
        }
        zA = A(this.f1605b);
        zA2 = A(this.f1606c);
        if (zA) {
            f fVar7 = (f) this.f1605b.getLayoutParams();
            measuredHeight = ((ViewGroup.MarginLayoutParams) fVar7).topMargin + this.f1605b.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) fVar7).bottomMargin;
        } else {
            measuredHeight = 0;
        }
        if (zA2) {
            f fVar8 = (f) this.f1606c.getLayoutParams();
            measuredHeight += ((ViewGroup.MarginLayoutParams) fVar8).topMargin + this.f1606c.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) fVar8).bottomMargin;
        }
        if (zA) {
            if (zA) {
                textView = this.f1605b;
            } else {
                textView = this.f1606c;
            }
            if (zA2) {
                textView2 = this.f1606c;
            } else {
                textView2 = this.f1605b;
            }
            fVar = (f) textView.getLayoutParams();
            fVar2 = (f) textView2.getLayoutParams();
            if (zA) {
            }
            i14 = this.f1626w & 112;
            i15 = paddingLeft;
            if (i14 == 48) {
                paddingTop = getPaddingTop() + ((ViewGroup.MarginLayoutParams) fVar).topMargin + this.f1621r;
            } else if (i14 != 80) {
                iMax2 = (((height - paddingTop2) - paddingBottom) - measuredHeight) / 2;
                i23 = ((ViewGroup.MarginLayoutParams) fVar).topMargin;
                i24 = this.f1621r;
                if (iMax2 < i23 + i24) {
                    iMax2 = i23 + i24;
                } else {
                    i25 = (((height - paddingBottom) - measuredHeight) - iMax2) - paddingTop2;
                    i26 = ((ViewGroup.MarginLayoutParams) fVar).bottomMargin;
                    i27 = this.f1622s;
                    if (i25 < i26 + i27) {
                        iMax2 = Math.max(0, iMax2 - ((((ViewGroup.MarginLayoutParams) fVar2).bottomMargin + i27) - i25));
                    }
                }
                paddingTop = paddingTop2 + iMax2;
            } else {
                paddingTop = (((height - paddingBottom) - ((ViewGroup.MarginLayoutParams) fVar2).bottomMargin) - this.f1622s) - measuredHeight;
            }
            if (z12) {
                if (z11) {
                    i20 = this.f1619p;
                } else {
                    i20 = 0;
                }
                int i38 = i20 - iArr[1];
                iMin -= Math.max(0, i38);
                iArr[1] = Math.max(0, -i38);
                if (zA) {
                    f fVar9 = (f) this.f1605b.getLayoutParams();
                    int measuredWidth4 = iMin - this.f1605b.getMeasuredWidth();
                    int measuredHeight4 = this.f1605b.getMeasuredHeight() + paddingTop;
                    this.f1605b.layout(measuredWidth4, paddingTop, iMin, measuredHeight4);
                    i21 = measuredWidth4 - this.f1620q;
                    paddingTop = measuredHeight4 + ((ViewGroup.MarginLayoutParams) fVar9).bottomMargin;
                } else {
                    i21 = iMin;
                }
                if (zA2) {
                    int i39 = paddingTop + ((ViewGroup.MarginLayoutParams) ((f) this.f1606c.getLayoutParams())).topMargin;
                    this.f1606c.layout(iMin - this.f1606c.getMeasuredWidth(), i39, iMin, this.f1606c.getMeasuredHeight() + i39);
                    i22 = iMin - this.f1620q;
                } else {
                    i22 = iMin;
                }
                if (z11) {
                    iMin = Math.min(i21, i22);
                }
                iMax = iMax;
                i17 = 0;
            } else {
                if (z11) {
                    i16 = this.f1619p;
                } else {
                    i16 = 0;
                }
                i17 = 0;
                int i310 = i16 - iArr[0];
                iMax += Math.max(0, i310);
                iArr[0] = Math.max(0, -i310);
                if (zA) {
                    f fVar10 = (f) this.f1605b.getLayoutParams();
                    int measuredWidth5 = this.f1605b.getMeasuredWidth() + iMax;
                    int measuredHeight5 = this.f1605b.getMeasuredHeight() + paddingTop;
                    this.f1605b.layout(iMax, paddingTop, measuredWidth5, measuredHeight5);
                    i18 = measuredWidth5 + this.f1620q;
                    paddingTop = measuredHeight5 + ((ViewGroup.MarginLayoutParams) fVar10).bottomMargin;
                } else {
                    i18 = iMax;
                }
                if (zA2) {
                    int i311 = paddingTop + ((ViewGroup.MarginLayoutParams) ((f) this.f1606c.getLayoutParams())).topMargin;
                    int measuredWidth6 = this.f1606c.getMeasuredWidth() + iMax;
                    this.f1606c.layout(iMax, i311, measuredWidth6, this.f1606c.getMeasuredHeight() + i311);
                    i19 = measuredWidth6 + this.f1620q;
                } else {
                    i19 = iMax;
                }
                if (z11) {
                    iMax = Math.max(i18, i19);
                }
            }
        } else {
            if (zA) {
                textView = this.f1605b;
            } else {
                textView = this.f1606c;
            }
            if (zA2) {
                textView2 = this.f1606c;
            } else {
                textView2 = this.f1605b;
            }
            fVar = (f) textView.getLayoutParams();
            fVar2 = (f) textView2.getLayoutParams();
            if (zA) {
            }
            i14 = this.f1626w & 112;
            i15 = paddingLeft;
            if (i14 == 48) {
                paddingTop = getPaddingTop() + ((ViewGroup.MarginLayoutParams) fVar).topMargin + this.f1621r;
            } else if (i14 != 80) {
                iMax2 = (((height - paddingTop2) - paddingBottom) - measuredHeight) / 2;
                i23 = ((ViewGroup.MarginLayoutParams) fVar).topMargin;
                i24 = this.f1621r;
                if (iMax2 < i23 + i24) {
                    iMax2 = i23 + i24;
                } else {
                    i25 = (((height - paddingBottom) - measuredHeight) - iMax2) - paddingTop2;
                    i26 = ((ViewGroup.MarginLayoutParams) fVar).bottomMargin;
                    i27 = this.f1622s;
                    if (i25 < i26 + i27) {
                        iMax2 = Math.max(0, iMax2 - ((((ViewGroup.MarginLayoutParams) fVar2).bottomMargin + i27) - i25));
                    }
                }
                paddingTop = paddingTop2 + iMax2;
            } else {
                paddingTop = (((height - paddingBottom) - ((ViewGroup.MarginLayoutParams) fVar2).bottomMargin) - this.f1622s) - measuredHeight;
            }
            if (z12) {
                if (z11) {
                    i20 = this.f1619p;
                } else {
                    i20 = 0;
                }
                int i312 = i20 - iArr[1];
                iMin -= Math.max(0, i312);
                iArr[1] = Math.max(0, -i312);
                if (zA) {
                    f fVar11 = (f) this.f1605b.getLayoutParams();
                    int measuredWidth7 = iMin - this.f1605b.getMeasuredWidth();
                    int measuredHeight6 = this.f1605b.getMeasuredHeight() + paddingTop;
                    this.f1605b.layout(measuredWidth7, paddingTop, iMin, measuredHeight6);
                    i21 = measuredWidth7 - this.f1620q;
                    paddingTop = measuredHeight6 + ((ViewGroup.MarginLayoutParams) fVar11).bottomMargin;
                } else {
                    i21 = iMin;
                }
                if (zA2) {
                    int i313 = paddingTop + ((ViewGroup.MarginLayoutParams) ((f) this.f1606c.getLayoutParams())).topMargin;
                    this.f1606c.layout(iMin - this.f1606c.getMeasuredWidth(), i313, iMin, this.f1606c.getMeasuredHeight() + i313);
                    i22 = iMin - this.f1620q;
                } else {
                    i22 = iMin;
                }
                if (z11) {
                    iMin = Math.min(i21, i22);
                }
                iMax = iMax;
                i17 = 0;
            } else {
                if (z11) {
                    i16 = this.f1619p;
                } else {
                    i16 = 0;
                }
                i17 = 0;
                int i314 = i16 - iArr[0];
                iMax += Math.max(0, i314);
                iArr[0] = Math.max(0, -i314);
                if (zA) {
                    f fVar12 = (f) this.f1605b.getLayoutParams();
                    int measuredWidth8 = this.f1605b.getMeasuredWidth() + iMax;
                    int measuredHeight7 = this.f1605b.getMeasuredHeight() + paddingTop;
                    this.f1605b.layout(iMax, paddingTop, measuredWidth8, measuredHeight7);
                    i18 = measuredWidth8 + this.f1620q;
                    paddingTop = measuredHeight7 + ((ViewGroup.MarginLayoutParams) fVar12).bottomMargin;
                } else {
                    i18 = iMax;
                }
                if (zA2) {
                    int i315 = paddingTop + ((ViewGroup.MarginLayoutParams) ((f) this.f1606c.getLayoutParams())).topMargin;
                    int measuredWidth9 = this.f1606c.getMeasuredWidth() + iMax;
                    this.f1606c.layout(iMax, i315, measuredWidth9, this.f1606c.getMeasuredHeight() + i315);
                    i19 = measuredWidth9 + this.f1620q;
                } else {
                    i19 = iMax;
                }
                if (z11) {
                    iMax = Math.max(i18, i19);
                }
            }
        }
        b(this.D, 3);
        size = this.D.size();
        iS2 = iMax;
        while (i28 < size) {
            iS2 = s((View) this.D.get(i28), iS2, iArr, iMin2);
        }
        i29 = iMin2;
        b(this.D, 5);
        size2 = this.D.size();
        while (i30 < size2) {
            iMin = t((View) this.D.get(i30), iMin, iArr, i29);
        }
        b(this.D, 1);
        int iQ3 = q(this.D, iArr);
        i31 = (i15 + (((width - i15) - paddingRight) / 2)) - (iQ3 / 2);
        i32 = iQ3 + i31;
        if (i31 >= iS2) {
            if (i32 > iMin) {
                iS2 = i31 - (i32 - iMin);
            } else {
                iS2 = i31;
            }
        }
        size3 = this.D.size();
        while (i17 < size3) {
            iS2 = s((View) this.D.get(i17), iS2, iArr, i29);
            i17++;
        }
        this.D.clear();
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        int measuredWidth;
        int iMax;
        int iCombineMeasuredStates;
        int measuredWidth2;
        int measuredHeight;
        int iCombineMeasuredStates2;
        int iMax2;
        int[] iArr = this.F;
        boolean zB = u0.b(this);
        int i12 = !zB ? 1 : 0;
        if (A(this.f1607d)) {
            v(this.f1607d, i10, 0, i11, 0, this.f1618o);
            measuredWidth = this.f1607d.getMeasuredWidth() + o(this.f1607d);
            iMax = Math.max(0, this.f1607d.getMeasuredHeight() + p(this.f1607d));
            iCombineMeasuredStates = View.combineMeasuredStates(0, this.f1607d.getMeasuredState());
        } else {
            measuredWidth = 0;
            iMax = 0;
            iCombineMeasuredStates = 0;
        }
        if (A(this.f1611h)) {
            v(this.f1611h, i10, 0, i11, 0, this.f1618o);
            measuredWidth = this.f1611h.getMeasuredWidth() + o(this.f1611h);
            iMax = Math.max(iMax, this.f1611h.getMeasuredHeight() + p(this.f1611h));
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f1611h.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int iMax3 = Math.max(currentContentInsetStart, measuredWidth);
        iArr[zB ? 1 : 0] = Math.max(0, currentContentInsetStart - measuredWidth);
        if (A(this.f1604a)) {
            v(this.f1604a, i10, iMax3, i11, 0, this.f1618o);
            measuredWidth2 = this.f1604a.getMeasuredWidth() + o(this.f1604a);
            iMax = Math.max(iMax, this.f1604a.getMeasuredHeight() + p(this.f1604a));
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f1604a.getMeasuredState());
        } else {
            measuredWidth2 = 0;
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int iMax4 = iMax3 + Math.max(currentContentInsetEnd, measuredWidth2);
        iArr[i12] = Math.max(0, currentContentInsetEnd - measuredWidth2);
        if (A(this.f1612i)) {
            iMax4 += u(this.f1612i, i10, iMax4, i11, 0, iArr);
            iMax = Math.max(iMax, this.f1612i.getMeasuredHeight() + p(this.f1612i));
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f1612i.getMeasuredState());
        }
        if (A(this.f1608e)) {
            iMax4 += u(this.f1608e, i10, iMax4, i11, 0, iArr);
            iMax = Math.max(iMax, this.f1608e.getMeasuredHeight() + p(this.f1608e));
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f1608e.getMeasuredState());
        }
        int childCount = getChildCount();
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt = getChildAt(i13);
            if (((f) childAt.getLayoutParams()).f1636b == 0 && A(childAt)) {
                iMax4 += u(childAt, i10, iMax4, i11, 0, iArr);
                iMax = Math.max(iMax, childAt.getMeasuredHeight() + p(childAt));
                iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, childAt.getMeasuredState());
            }
        }
        int i14 = this.f1621r + this.f1622s;
        int i15 = this.f1619p + this.f1620q;
        if (A(this.f1605b)) {
            u(this.f1605b, i10, iMax4 + i15, i11, i14, iArr);
            int measuredWidth3 = this.f1605b.getMeasuredWidth() + o(this.f1605b);
            measuredHeight = this.f1605b.getMeasuredHeight() + p(this.f1605b);
            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates, this.f1605b.getMeasuredState());
            iMax2 = measuredWidth3;
        } else {
            measuredHeight = 0;
            iCombineMeasuredStates2 = iCombineMeasuredStates;
            iMax2 = 0;
        }
        if (A(this.f1606c)) {
            iMax2 = Math.max(iMax2, u(this.f1606c, i10, iMax4 + i15, i11, measuredHeight + i14, iArr));
            measuredHeight += this.f1606c.getMeasuredHeight() + p(this.f1606c);
            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, this.f1606c.getMeasuredState());
        }
        setMeasuredDimension(View.resolveSizeAndState(Math.max(iMax4 + iMax2 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i10, (-16777216) & iCombineMeasuredStates2), z() ? 0 : View.resolveSizeAndState(Math.max(Math.max(iMax, measuredHeight) + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i11, iCombineMeasuredStates2 << 16));
    }

    @Override
    protected void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem menuItemFindItem;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        ActionMenuView actionMenuView = this.f1604a;
        androidx.appcompat.view.menu.f fVarPeekMenu = actionMenuView != null ? actionMenuView.peekMenu() : null;
        int i10 = savedState.expandedMenuItemId;
        if (i10 != 0 && this.M != null && fVarPeekMenu != null && (menuItemFindItem = fVarPeekMenu.findItem(i10)) != null) {
            menuItemFindItem.expandActionView();
        }
        if (savedState.isOverflowOpen) {
            x();
        }
    }

    @Override
    public void onRtlPropertiesChanged(int i10) {
        super.onRtlPropertiesChanged(i10);
        e();
        this.f1623t.f(i10 == 1);
    }

    @Override
    protected Parcelable onSaveInstanceState() {
        androidx.appcompat.view.menu.h hVar;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        e eVar = this.M;
        if (eVar != null && (hVar = eVar.f1634b) != null) {
            savedState.expandedMenuItemId = hVar.getItemId();
        }
        savedState.isOverflowOpen = isOverflowMenuShowing();
        return savedState;
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.B = false;
        }
        if (!this.B) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !zOnTouchEvent) {
                this.B = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.B = false;
        }
        return true;
    }

    @Override
    public void removeMenuProvider(@NonNull MenuProvider menuProvider) {
        this.G.removeMenuProvider(menuProvider);
    }

    public void setBackInvokedCallbackEnabled(boolean z10) {
        if (this.S != z10) {
            this.S = z10;
            B();
        }
    }

    public void setCollapseContentDescription(int i10) {
        setCollapseContentDescription(i10 != 0 ? getContext().getText(i10) : null);
    }

    public void setCollapseIcon(int i10) {
        setCollapseIcon(g.a.b(getContext(), i10));
    }

    public void setCollapsible(boolean z10) {
        this.P = z10;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i10) {
        if (i10 < 0) {
            i10 = Integer.MIN_VALUE;
        }
        if (i10 != this.f1625v) {
            this.f1625v = i10;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetStartWithNavigation(int i10) {
        if (i10 < 0) {
            i10 = Integer.MIN_VALUE;
        }
        if (i10 != this.f1624u) {
            this.f1624u = i10;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetsAbsolute(int i10, int i11) {
        e();
        this.f1623t.e(i10, i11);
    }

    public void setContentInsetsRelative(int i10, int i11) {
        e();
        this.f1623t.g(i10, i11);
    }

    public void setLogo(int i10) {
        setLogo(g.a.b(getContext(), i10));
    }

    public void setLogoDescription(int i10) {
        setLogoDescription(getContext().getText(i10));
    }

    public void setMenu(androidx.appcompat.view.menu.f fVar, ActionMenuPresenter actionMenuPresenter) {
        if (fVar == null && this.f1604a == null) {
            return;
        }
        h();
        androidx.appcompat.view.menu.f fVarPeekMenu = this.f1604a.peekMenu();
        if (fVarPeekMenu == fVar) {
            return;
        }
        if (fVarPeekMenu != null) {
            fVarPeekMenu.R(this.L);
            fVarPeekMenu.R(this.M);
        }
        if (this.M == null) {
            this.M = new e();
        }
        actionMenuPresenter.J(true);
        if (fVar != null) {
            fVar.c(actionMenuPresenter, this.f1613j);
            fVar.c(this.M, this.f1613j);
        } else {
            actionMenuPresenter.k(this.f1613j, null);
            this.M.k(this.f1613j, null);
            actionMenuPresenter.h(true);
            this.M.h(true);
        }
        this.f1604a.setPopupTheme(this.f1614k);
        this.f1604a.setPresenter(actionMenuPresenter);
        this.L = actionMenuPresenter;
        B();
    }

    public void setMenuCallbacks(androidx.appcompat.view.menu.l.a aVar, androidx.appcompat.view.menu.f.a aVar2) {
        this.N = aVar;
        this.O = aVar2;
        ActionMenuView actionMenuView = this.f1604a;
        if (actionMenuView != null) {
            actionMenuView.setMenuCallbacks(aVar, aVar2);
        }
    }

    public void setNavigationContentDescription(int i10) {
        setNavigationContentDescription(i10 != 0 ? getContext().getText(i10) : null);
    }

    public void setNavigationIcon(int i10) {
        setNavigationIcon(g.a.b(getContext(), i10));
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        i();
        this.f1607d.setOnClickListener(onClickListener);
    }

    public void setOnMenuItemClickListener(g gVar) {
        this.I = gVar;
    }

    public void setOverflowIcon(@Nullable Drawable drawable) {
        g();
        this.f1604a.setOverflowIcon(drawable);
    }

    public void setPopupTheme(int i10) {
        if (this.f1614k != i10) {
            this.f1614k = i10;
            if (i10 == 0) {
                this.f1613j = getContext();
            } else {
                this.f1613j = new ContextThemeWrapper(getContext(), i10);
            }
        }
    }

    public void setSubtitle(int i10) {
        setSubtitle(getContext().getText(i10));
    }

    public void setSubtitleTextAppearance(Context context, int i10) {
        this.f1616m = i10;
        TextView textView = this.f1606c;
        if (textView != null) {
            textView.setTextAppearance(context, i10);
        }
    }

    public void setSubtitleTextColor(int i10) {
        setSubtitleTextColor(ColorStateList.valueOf(i10));
    }

    public void setTitle(int i10) {
        setTitle(getContext().getText(i10));
    }

    public void setTitleMargin(int i10, int i11, int i12, int i13) {
        this.f1619p = i10;
        this.f1621r = i11;
        this.f1620q = i12;
        this.f1622s = i13;
        requestLayout();
    }

    public void setTitleMarginBottom(int i10) {
        this.f1622s = i10;
        requestLayout();
    }

    public void setTitleMarginEnd(int i10) {
        this.f1620q = i10;
        requestLayout();
    }

    public void setTitleMarginStart(int i10) {
        this.f1619p = i10;
        requestLayout();
    }

    public void setTitleMarginTop(int i10) {
        this.f1621r = i10;
        requestLayout();
    }

    public void setTitleTextAppearance(Context context, int i10) {
        this.f1615l = i10;
        TextView textView = this.f1605b;
        if (textView != null) {
            textView.setTextAppearance(context, i10);
        }
    }

    public void setTitleTextColor(int i10) {
        setTitleTextColor(ColorStateList.valueOf(i10));
    }

    public boolean showOverflowMenu() {
        ActionMenuView actionMenuView = this.f1604a;
        return actionMenuView != null && actionMenuView.showOverflowMenu();
    }

    void y() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (((f) childAt.getLayoutParams()).f1636b != 2 && childAt != this.f1604a) {
                removeViewAt(childCount);
                this.E.add(childAt);
            }
        }
    }

    public static class f extends androidx.appcompat.app.a.C0013a {

        int f1636b;

        public f(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1636b = 0;
        }

        void a(ViewGroup.MarginLayoutParams marginLayoutParams) {
            ((ViewGroup.MarginLayoutParams) this).leftMargin = marginLayoutParams.leftMargin;
            ((ViewGroup.MarginLayoutParams) this).topMargin = marginLayoutParams.topMargin;
            ((ViewGroup.MarginLayoutParams) this).rightMargin = marginLayoutParams.rightMargin;
            ((ViewGroup.MarginLayoutParams) this).bottomMargin = marginLayoutParams.bottomMargin;
        }

        public f(int i10, int i11) {
            super(i10, i11);
            this.f1636b = 0;
            this.f795a = 8388627;
        }

        public f(f fVar) {
            super((androidx.appcompat.app.a.C0013a) fVar);
            this.f1636b = 0;
            this.f1636b = fVar.f1636b;
        }

        public f(androidx.appcompat.app.a.C0013a c0013a) {
            super(c0013a);
            this.f1636b = 0;
        }

        public f(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f1636b = 0;
            a(marginLayoutParams);
        }

        public f(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1636b = 0;
        }
    }

    public Toolbar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.toolbarStyle);
    }

    @Override
    public void addMenuProvider(@NonNull MenuProvider menuProvider, @NonNull androidx.p009lifecycle.u uVar) {
        this.G.addMenuProvider(menuProvider, uVar);
    }

    public void setCollapseContentDescription(@Nullable CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            d();
        }
        ImageButton imageButton = this.f1611h;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public void setCollapseIcon(@Nullable Drawable drawable) {
        if (drawable != null) {
            d();
            this.f1611h.setImageDrawable(drawable);
        } else {
            ImageButton imageButton = this.f1611h;
            if (imageButton != null) {
                imageButton.setImageDrawable(this.f1609f);
            }
        }
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            f();
            if (!r(this.f1608e)) {
                c(this.f1608e, true);
            }
        } else {
            ImageView imageView = this.f1608e;
            if (imageView != null && r(imageView)) {
                removeView(this.f1608e);
                this.E.remove(this.f1608e);
            }
        }
        ImageView imageView2 = this.f1608e;
        if (imageView2 != null) {
            imageView2.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            f();
        }
        ImageView imageView = this.f1608e;
        if (imageView != null) {
            imageView.setContentDescription(charSequence);
        }
    }

    public void setNavigationContentDescription(@Nullable CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            i();
        }
        ImageButton imageButton = this.f1607d;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
            o0.a(this.f1607d, charSequence);
        }
    }

    public void setNavigationIcon(@Nullable Drawable drawable) {
        if (drawable != null) {
            i();
            if (!r(this.f1607d)) {
                c(this.f1607d, true);
            }
        } else {
            ImageButton imageButton = this.f1607d;
            if (imageButton != null && r(imageButton)) {
                removeView(this.f1607d);
                this.E.remove(this.f1607d);
            }
        }
        ImageButton imageButton2 = this.f1607d;
        if (imageButton2 != null) {
            imageButton2.setImageDrawable(drawable);
        }
    }

    public void setSubtitle(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            TextView textView = this.f1606c;
            if (textView != null && r(textView)) {
                removeView(this.f1606c);
                this.E.remove(this.f1606c);
            }
        } else {
            if (this.f1606c == null) {
                Context context = getContext();
                AppCompatTextView appCompatTextView = new AppCompatTextView(context);
                this.f1606c = appCompatTextView;
                appCompatTextView.setSingleLine();
                this.f1606c.setEllipsize(TextUtils.TruncateAt.END);
                int i10 = this.f1616m;
                if (i10 != 0) {
                    this.f1606c.setTextAppearance(context, i10);
                }
                ColorStateList colorStateList = this.A;
                if (colorStateList != null) {
                    this.f1606c.setTextColor(colorStateList);
                }
            }
            if (!r(this.f1606c)) {
                c(this.f1606c, true);
            }
        }
        TextView textView2 = this.f1606c;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.f1628y = charSequence;
    }

    public void setSubtitleTextColor(@NonNull ColorStateList colorStateList) {
        this.A = colorStateList;
        TextView textView = this.f1606c;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            TextView textView = this.f1605b;
            if (textView != null && r(textView)) {
                removeView(this.f1605b);
                this.E.remove(this.f1605b);
            }
        } else {
            if (this.f1605b == null) {
                Context context = getContext();
                AppCompatTextView appCompatTextView = new AppCompatTextView(context);
                this.f1605b = appCompatTextView;
                appCompatTextView.setSingleLine();
                this.f1605b.setEllipsize(TextUtils.TruncateAt.END);
                int i10 = this.f1615l;
                if (i10 != 0) {
                    this.f1605b.setTextAppearance(context, i10);
                }
                ColorStateList colorStateList = this.f1629z;
                if (colorStateList != null) {
                    this.f1605b.setTextColor(colorStateList);
                }
            }
            if (!r(this.f1605b)) {
                c(this.f1605b, true);
            }
        }
        TextView textView2 = this.f1605b;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.f1627x = charSequence;
    }

    public void setTitleTextColor(@NonNull ColorStateList colorStateList) {
        this.f1629z = colorStateList;
        TextView textView = this.f1605b;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    public Toolbar(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f1626w = 8388627;
        this.D = new ArrayList();
        this.E = new ArrayList();
        this.F = new int[2];
        this.G = new MenuHostHelper(new Runnable() {
            @Override
            public final void run() {
                this.f1744a.invalidateMenu();
            }
        });
        this.H = new ArrayList();
        this.J = new a();
        this.T = new Runnable() {
            @Override
            public void run() {
                Toolbar.this.showOverflowMenu();
            }
        };
        j0 j0VarV = j0.v(getContext(), attributeSet, R$styleable.Toolbar, i10, 0);
        ViewCompat.saveAttributeDataForStyleable(this, context, R$styleable.Toolbar, attributeSet, j0VarV.r(), i10, 0);
        this.f1615l = j0VarV.n(R$styleable.Toolbar_titleTextAppearance, 0);
        this.f1616m = j0VarV.n(R$styleable.Toolbar_subtitleTextAppearance, 0);
        this.f1626w = j0VarV.l(R$styleable.Toolbar_android_gravity, this.f1626w);
        this.f1617n = j0VarV.l(R$styleable.Toolbar_buttonGravity, 48);
        int iE = j0VarV.e(R$styleable.Toolbar_titleMargin, 0);
        iE = j0VarV.s(R$styleable.Toolbar_titleMargins) ? j0VarV.e(R$styleable.Toolbar_titleMargins, iE) : iE;
        this.f1622s = iE;
        this.f1621r = iE;
        this.f1620q = iE;
        this.f1619p = iE;
        int iE2 = j0VarV.e(R$styleable.Toolbar_titleMarginStart, -1);
        if (iE2 >= 0) {
            this.f1619p = iE2;
        }
        int iE3 = j0VarV.e(R$styleable.Toolbar_titleMarginEnd, -1);
        if (iE3 >= 0) {
            this.f1620q = iE3;
        }
        int iE4 = j0VarV.e(R$styleable.Toolbar_titleMarginTop, -1);
        if (iE4 >= 0) {
            this.f1621r = iE4;
        }
        int iE5 = j0VarV.e(R$styleable.Toolbar_titleMarginBottom, -1);
        if (iE5 >= 0) {
            this.f1622s = iE5;
        }
        this.f1618o = j0VarV.f(R$styleable.Toolbar_maxButtonHeight, -1);
        int iE6 = j0VarV.e(R$styleable.Toolbar_contentInsetStart, Integer.MIN_VALUE);
        int iE7 = j0VarV.e(R$styleable.Toolbar_contentInsetEnd, Integer.MIN_VALUE);
        int iF = j0VarV.f(R$styleable.Toolbar_contentInsetLeft, 0);
        int iF2 = j0VarV.f(R$styleable.Toolbar_contentInsetRight, 0);
        e();
        this.f1623t.e(iF, iF2);
        if (iE6 != Integer.MIN_VALUE || iE7 != Integer.MIN_VALUE) {
            this.f1623t.g(iE6, iE7);
        }
        this.f1624u = j0VarV.e(R$styleable.Toolbar_contentInsetStartWithNavigation, Integer.MIN_VALUE);
        this.f1625v = j0VarV.e(R$styleable.Toolbar_contentInsetEndWithActions, Integer.MIN_VALUE);
        this.f1609f = j0VarV.g(R$styleable.Toolbar_collapseIcon);
        this.f1610g = j0VarV.p(R$styleable.Toolbar_collapseContentDescription);
        CharSequence charSequenceP = j0VarV.p(R$styleable.Toolbar_title);
        if (!TextUtils.isEmpty(charSequenceP)) {
            setTitle(charSequenceP);
        }
        CharSequence charSequenceP2 = j0VarV.p(R$styleable.Toolbar_subtitle);
        if (!TextUtils.isEmpty(charSequenceP2)) {
            setSubtitle(charSequenceP2);
        }
        this.f1613j = getContext();
        setPopupTheme(j0VarV.n(R$styleable.Toolbar_popupTheme, 0));
        Drawable drawableG = j0VarV.g(R$styleable.Toolbar_navigationIcon);
        if (drawableG != null) {
            setNavigationIcon(drawableG);
        }
        CharSequence charSequenceP3 = j0VarV.p(R$styleable.Toolbar_navigationContentDescription);
        if (!TextUtils.isEmpty(charSequenceP3)) {
            setNavigationContentDescription(charSequenceP3);
        }
        Drawable drawableG2 = j0VarV.g(R$styleable.Toolbar_logo);
        if (drawableG2 != null) {
            setLogo(drawableG2);
        }
        CharSequence charSequenceP4 = j0VarV.p(R$styleable.Toolbar_logoDescription);
        if (!TextUtils.isEmpty(charSequenceP4)) {
            setLogoDescription(charSequenceP4);
        }
        if (j0VarV.s(R$styleable.Toolbar_titleTextColor)) {
            setTitleTextColor(j0VarV.c(R$styleable.Toolbar_titleTextColor));
        }
        if (j0VarV.s(R$styleable.Toolbar_subtitleTextColor)) {
            setSubtitleTextColor(j0VarV.c(R$styleable.Toolbar_subtitleTextColor));
        }
        if (j0VarV.s(R$styleable.Toolbar_menu)) {
            inflateMenu(j0VarV.n(R$styleable.Toolbar_menu, 0));
        }
        j0VarV.x();
    }

    @Override
    @SuppressLint({"LambdaLast"})
    public void addMenuProvider(@NonNull MenuProvider menuProvider, @NonNull androidx.p009lifecycle.u uVar, @NonNull Lifecycle.State state) {
        this.G.addMenuProvider(menuProvider, uVar, state);
    }

    @Override
    public f generateLayoutParams(AttributeSet attributeSet) {
        return new f(getContext(), attributeSet);
    }

    private class e implements androidx.appcompat.view.menu.l {

        androidx.appcompat.view.menu.f f1633a;

        androidx.appcompat.view.menu.h f1634b;

        e() {
        }

        @Override
        public boolean c(androidx.appcompat.view.menu.f fVar, androidx.appcompat.view.menu.h hVar) {
            Toolbar.this.d();
            ViewParent parent = Toolbar.this.f1611h.getParent();
            Toolbar toolbar = Toolbar.this;
            if (parent != toolbar) {
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(toolbar.f1611h);
                }
                Toolbar toolbar2 = Toolbar.this;
                toolbar2.addView(toolbar2.f1611h);
            }
            Toolbar.this.f1612i = hVar.getActionView();
            this.f1634b = hVar;
            ViewParent parent2 = Toolbar.this.f1612i.getParent();
            Toolbar toolbar3 = Toolbar.this;
            if (parent2 != toolbar3) {
                if (parent2 instanceof ViewGroup) {
                    ((ViewGroup) parent2).removeView(toolbar3.f1612i);
                }
                f fVarGenerateDefaultLayoutParams = Toolbar.this.generateDefaultLayoutParams();
                Toolbar toolbar4 = Toolbar.this;
                fVarGenerateDefaultLayoutParams.f795a = (toolbar4.f1617n & 112) | GravityCompat.START;
                fVarGenerateDefaultLayoutParams.f1636b = 2;
                toolbar4.f1612i.setLayoutParams(fVarGenerateDefaultLayoutParams);
                Toolbar toolbar5 = Toolbar.this;
                toolbar5.addView(toolbar5.f1612i);
            }
            Toolbar.this.y();
            Toolbar.this.requestLayout();
            hVar.r(true);
            KeyEvent.Callback callback = Toolbar.this.f1612i;
            if (callback instanceof androidx.appcompat.view.c) {
                ((androidx.appcompat.view.c) callback).onActionViewExpanded();
            }
            Toolbar.this.B();
            return true;
        }

        @Override
        public boolean f(androidx.appcompat.view.menu.q qVar) {
            return false;
        }

        @Override
        public Parcelable g() {
            return null;
        }

        @Override
        public int getId() {
            return 0;
        }

        @Override
        public void h(boolean z10) {
            if (this.f1634b != null) {
                androidx.appcompat.view.menu.f fVar = this.f1633a;
                if (fVar != null) {
                    int size = fVar.size();
                    for (int i10 = 0; i10 < size; i10++) {
                        if (this.f1633a.getItem(i10) == this.f1634b) {
                            return;
                        }
                    }
                }
                j(this.f1633a, this.f1634b);
            }
        }

        @Override
        public boolean i() {
            return false;
        }

        @Override
        public boolean j(androidx.appcompat.view.menu.f fVar, androidx.appcompat.view.menu.h hVar) {
            KeyEvent.Callback callback = Toolbar.this.f1612i;
            if (callback instanceof androidx.appcompat.view.c) {
                ((androidx.appcompat.view.c) callback).onActionViewCollapsed();
            }
            Toolbar toolbar = Toolbar.this;
            toolbar.removeView(toolbar.f1612i);
            Toolbar toolbar2 = Toolbar.this;
            toolbar2.removeView(toolbar2.f1611h);
            Toolbar toolbar3 = Toolbar.this;
            toolbar3.f1612i = null;
            toolbar3.a();
            this.f1634b = null;
            Toolbar.this.requestLayout();
            hVar.r(false);
            Toolbar.this.B();
            return true;
        }

        @Override
        public void k(Context context, androidx.appcompat.view.menu.f fVar) {
            androidx.appcompat.view.menu.h hVar;
            androidx.appcompat.view.menu.f fVar2 = this.f1633a;
            if (fVar2 != null && (hVar = this.f1634b) != null) {
                fVar2.f(hVar);
            }
            this.f1633a = fVar;
        }

        @Override
        public void e(Parcelable parcelable) {
        }

        @Override
        public void b(androidx.appcompat.view.menu.f fVar, boolean z10) {
        }
    }
}
