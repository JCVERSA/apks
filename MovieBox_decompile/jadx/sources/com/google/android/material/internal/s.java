package com.google.android.material.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R$dimen;
import com.google.android.material.R$layout;
import java.util.ArrayList;

public class s implements androidx.appcompat.view.menu.l {
    private int A;
    int B;

    private NavigationMenuView f28405a;

    LinearLayout f28406b;

    private androidx.appcompat.view.menu.l.a f28407c;

    androidx.appcompat.view.menu.f f28408d;

    private int f28409e;

    c f28410f;

    LayoutInflater f28411g;

    ColorStateList f28413i;

    ColorStateList f28416l;

    ColorStateList f28417m;

    Drawable f28418n;

    RippleDrawable f28419o;

    int f28420p;

    int f28421q;

    int f28422r;

    int f28423s;

    int f28424t;

    int f28425u;

    int f28426v;

    int f28427w;

    boolean f28428x;

    private int f28430z;

    int f28412h = 0;

    int f28414j = 0;

    boolean f28415k = true;

    boolean f28429y = true;
    private int C = -1;
    final View.OnClickListener D = new a();

    class a implements View.OnClickListener {
        a() {
        }

        @Override
        public void onClick(View view) {
            boolean z10 = true;
            s.this.a0(true);
            androidx.appcompat.view.menu.h itemData = ((NavigationMenuItemView) view).getItemData();
            s sVar = s.this;
            boolean zP = sVar.f28408d.P(itemData, sVar, 0);
            if (itemData != null && itemData.isCheckable() && zP) {
                s.this.f28410f.s(itemData);
            } else {
                z10 = false;
            }
            s.this.a0(false);
            if (z10) {
                s.this.h(false);
            }
        }
    }

    private static class b extends l {
        public b(View view) {
            super(view);
        }
    }

    private class c extends RecyclerView.Adapter {

        private final ArrayList f28432a = new ArrayList();

        private androidx.appcompat.view.menu.h f28433b;

        private boolean f28434c;

        class a extends AccessibilityDelegateCompat {

            final int f28436a;

            final boolean f28437b;

            a(int i10, boolean z10) {
                this.f28436a = i10;
                this.f28437b = z10;
            }

            @Override
            public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(c.this.h(this.f28436a), 1, 1, 1, this.f28437b, view.isSelected()));
            }
        }

        c() {
            p();
        }

        public int h(int i10) {
            int i11 = i10;
            for (int i12 = 0; i12 < i10; i12++) {
                if (s.this.f28410f.getItemViewType(i12) == 2 || s.this.f28410f.getItemViewType(i12) == 3) {
                    i11--;
                }
            }
            return i11;
        }

        private void i(int i10, int i11) {
            while (i10 < i11) {
                ((g) this.f28432a.get(i10)).f28442b = true;
                i10++;
            }
        }

        private void p() {
            if (this.f28434c) {
                return;
            }
            boolean z10 = true;
            this.f28434c = true;
            this.f28432a.clear();
            this.f28432a.add(new d());
            int size = s.this.f28408d.G().size();
            int i10 = -1;
            int i11 = 0;
            boolean z11 = false;
            int size2 = 0;
            while (i11 < size) {
                androidx.appcompat.view.menu.h hVar = (androidx.appcompat.view.menu.h) s.this.f28408d.G().get(i11);
                if (hVar.isChecked()) {
                    s(hVar);
                }
                if (hVar.isCheckable()) {
                    hVar.t(false);
                }
                if (hVar.hasSubMenu()) {
                    SubMenu subMenu = hVar.getSubMenu();
                    if (subMenu.hasVisibleItems()) {
                        if (i11 != 0) {
                            this.f28432a.add(new f(s.this.B, 0));
                        }
                        this.f28432a.add(new g(hVar));
                        int size3 = this.f28432a.size();
                        int size4 = subMenu.size();
                        int i12 = 0;
                        boolean z12 = false;
                        while (i12 < size4) {
                            androidx.appcompat.view.menu.h hVar2 = (androidx.appcompat.view.menu.h) subMenu.getItem(i12);
                            if (hVar2.isVisible()) {
                                if (!z12 && hVar2.getIcon() != null) {
                                    z12 = z10;
                                }
                                if (hVar2.isCheckable()) {
                                    hVar2.t(false);
                                }
                                if (hVar.isChecked()) {
                                    s(hVar);
                                }
                                this.f28432a.add(new g(hVar2));
                            }
                            i12++;
                            z10 = true;
                        }
                        if (z12) {
                            i(size3, this.f28432a.size());
                        }
                    }
                } else {
                    int groupId = hVar.getGroupId();
                    if (groupId != i10) {
                        size2 = this.f28432a.size();
                        z11 = hVar.getIcon() != null;
                        if (i11 != 0) {
                            size2++;
                            ArrayList arrayList = this.f28432a;
                            int i13 = s.this.B;
                            arrayList.add(new f(i13, i13));
                        }
                    } else if (!z11 && hVar.getIcon() != null) {
                        i(size2, this.f28432a.size());
                        z11 = true;
                    }
                    g gVar = new g(hVar);
                    gVar.f28442b = z11;
                    this.f28432a.add(gVar);
                    i10 = groupId;
                }
                i11++;
                z10 = true;
            }
            this.f28434c = false;
        }

        private void r(View view, int i10, boolean z10) {
            ViewCompat.setAccessibilityDelegate(view, new a(i10, z10));
        }

        @Override
        public int getItemCount() {
            return this.f28432a.size();
        }

        @Override
        public long getItemId(int i10) {
            return i10;
        }

        @Override
        public int getItemViewType(int i10) {
            e eVar = (e) this.f28432a.get(i10);
            if (eVar instanceof f) {
                return 2;
            }
            if (eVar instanceof d) {
                return 3;
            }
            if (eVar instanceof g) {
                return ((g) eVar).a().hasSubMenu() ? 1 : 0;
            }
            throw new RuntimeException("Unknown item type.");
        }

        public Bundle j() {
            Bundle bundle = new Bundle();
            androidx.appcompat.view.menu.h hVar = this.f28433b;
            if (hVar != null) {
                bundle.putInt("android:menu:checked", hVar.getItemId());
            }
            SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
            int size = this.f28432a.size();
            for (int i10 = 0; i10 < size; i10++) {
                e eVar = (e) this.f28432a.get(i10);
                if (eVar instanceof g) {
                    androidx.appcompat.view.menu.h hVarA = ((g) eVar).a();
                    View actionView = hVarA != null ? hVarA.getActionView() : null;
                    if (actionView != null) {
                        ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
                        actionView.saveHierarchyState(parcelableSparseArray);
                        sparseArray.put(hVarA.getItemId(), parcelableSparseArray);
                    }
                }
            }
            bundle.putSparseParcelableArray("android:menu:action_views", sparseArray);
            return bundle;
        }

        public androidx.appcompat.view.menu.h k() {
            return this.f28433b;
        }

        int l() {
            int i10 = 0;
            for (int i11 = 0; i11 < s.this.f28410f.getItemCount(); i11++) {
                int itemViewType = s.this.f28410f.getItemViewType(i11);
                if (itemViewType == 0 || itemViewType == 1) {
                    i10++;
                }
            }
            return i10;
        }

        @Override
        public void onBindViewHolder(l lVar, int i10) {
            int itemViewType = getItemViewType(i10);
            if (itemViewType != 0) {
                if (itemViewType != 1) {
                    if (itemViewType != 2) {
                        return;
                    }
                    f fVar = (f) this.f28432a.get(i10);
                    lVar.itemView.setPadding(s.this.f28424t, fVar.b(), s.this.f28425u, fVar.a());
                    return;
                }
                TextView textView = (TextView) lVar.itemView;
                textView.setText(((g) this.f28432a.get(i10)).a().getTitle());
                androidx.core.widget.l.p(textView, s.this.f28412h);
                textView.setPadding(s.this.f28426v, textView.getPaddingTop(), s.this.f28427w, textView.getPaddingBottom());
                ColorStateList colorStateList = s.this.f28413i;
                if (colorStateList != null) {
                    textView.setTextColor(colorStateList);
                }
                r(textView, i10, true);
                return;
            }
            NavigationMenuItemView navigationMenuItemView = (NavigationMenuItemView) lVar.itemView;
            navigationMenuItemView.setIconTintList(s.this.f28417m);
            navigationMenuItemView.setTextAppearance(s.this.f28414j);
            ColorStateList colorStateList2 = s.this.f28416l;
            if (colorStateList2 != null) {
                navigationMenuItemView.setTextColor(colorStateList2);
            }
            Drawable drawable = s.this.f28418n;
            ViewCompat.setBackground(navigationMenuItemView, drawable != null ? drawable.getConstantState().newDrawable() : null);
            RippleDrawable rippleDrawable = s.this.f28419o;
            if (rippleDrawable != null) {
                navigationMenuItemView.setForeground(rippleDrawable.getConstantState().newDrawable());
            }
            g gVar = (g) this.f28432a.get(i10);
            navigationMenuItemView.setNeedsEmptyIcon(gVar.f28442b);
            s sVar = s.this;
            int i11 = sVar.f28420p;
            int i12 = sVar.f28421q;
            navigationMenuItemView.setPadding(i11, i12, i11, i12);
            navigationMenuItemView.setIconPadding(s.this.f28422r);
            s sVar2 = s.this;
            if (sVar2.f28428x) {
                navigationMenuItemView.setIconSize(sVar2.f28423s);
            }
            navigationMenuItemView.setMaxLines(s.this.f28430z);
            navigationMenuItemView.initialize(gVar.a(), s.this.f28415k);
            r(navigationMenuItemView, i10, false);
        }

        @Override
        public l onCreateViewHolder(ViewGroup viewGroup, int i10) {
            if (i10 == 0) {
                s sVar = s.this;
                return new i(sVar.f28411g, viewGroup, sVar.D);
            }
            if (i10 == 1) {
                return new k(s.this.f28411g, viewGroup);
            }
            if (i10 == 2) {
                return new j(s.this.f28411g, viewGroup);
            }
            if (i10 != 3) {
                return null;
            }
            return new b(s.this.f28406b);
        }

        @Override
        public void onViewRecycled(l lVar) {
            if (lVar instanceof i) {
                ((NavigationMenuItemView) lVar.itemView).recycle();
            }
        }

        public void q(Bundle bundle) {
            androidx.appcompat.view.menu.h hVarA;
            View actionView;
            ParcelableSparseArray parcelableSparseArray;
            androidx.appcompat.view.menu.h hVarA2;
            int i10 = bundle.getInt("android:menu:checked", 0);
            if (i10 != 0) {
                this.f28434c = true;
                int size = this.f28432a.size();
                for (int i11 = 0; i11 < size; i11++) {
                    e eVar = (e) this.f28432a.get(i11);
                    if ((eVar instanceof g) && (hVarA2 = ((g) eVar).a()) != null && hVarA2.getItemId() == i10) {
                        s(hVarA2);
                        break;
                    }
                }
                this.f28434c = false;
                p();
            }
            SparseArray sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:action_views");
            if (sparseParcelableArray != null) {
                int size2 = this.f28432a.size();
                for (int i12 = 0; i12 < size2; i12++) {
                    e eVar2 = (e) this.f28432a.get(i12);
                    if ((eVar2 instanceof g) && (hVarA = ((g) eVar2).a()) != null && (actionView = hVarA.getActionView()) != null && (parcelableSparseArray = (ParcelableSparseArray) sparseParcelableArray.get(hVarA.getItemId())) != null) {
                        actionView.restoreHierarchyState(parcelableSparseArray);
                    }
                }
            }
        }

        public void s(androidx.appcompat.view.menu.h hVar) {
            if (this.f28433b == hVar || !hVar.isCheckable()) {
                return;
            }
            androidx.appcompat.view.menu.h hVar2 = this.f28433b;
            if (hVar2 != null) {
                hVar2.setChecked(false);
            }
            this.f28433b = hVar;
            hVar.setChecked(true);
        }

        public void t(boolean z10) {
            this.f28434c = z10;
        }

        public void u() {
            p();
            notifyDataSetChanged();
        }
    }

    private static class d implements e {
        d() {
        }
    }

    private interface e {
    }

    private static class f implements e {

        private final int f28439a;

        private final int f28440b;

        public f(int i10, int i11) {
            this.f28439a = i10;
            this.f28440b = i11;
        }

        public int a() {
            return this.f28440b;
        }

        public int b() {
            return this.f28439a;
        }
    }

    private static class g implements e {

        private final androidx.appcompat.view.menu.h f28441a;

        boolean f28442b;

        g(androidx.appcompat.view.menu.h hVar) {
            this.f28441a = hVar;
        }

        public androidx.appcompat.view.menu.h a() {
            return this.f28441a;
        }
    }

    private class h extends androidx.recyclerview.widget.o {
        h(RecyclerView recyclerView) {
            super(recyclerView);
        }

        @Override
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(s.this.f28410f.l(), 1, false));
        }
    }

    private static class i extends l {
        public i(LayoutInflater layoutInflater, ViewGroup viewGroup, View.OnClickListener onClickListener) {
            super(layoutInflater.inflate(R$layout.design_navigation_item, viewGroup, false));
            this.itemView.setOnClickListener(onClickListener);
        }
    }

    private static class j extends l {
        public j(LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(R$layout.design_navigation_item_separator, viewGroup, false));
        }
    }

    private static class k extends l {
        public k(LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(R$layout.design_navigation_item_subheader, viewGroup, false));
        }
    }

    private static abstract class l extends RecyclerView.a0 {
        public l(View view) {
            super(view);
        }
    }

    private boolean C() {
        return q() > 0;
    }

    private void b0() {
        int i10 = (C() || !this.f28429y) ? 0 : this.A;
        NavigationMenuView navigationMenuView = this.f28405a;
        navigationMenuView.setPadding(0, i10, 0, navigationMenuView.getPaddingBottom());
    }

    public int A() {
        return this.f28427w;
    }

    public int B() {
        return this.f28426v;
    }

    public View D(int i10) {
        View viewInflate = this.f28411g.inflate(i10, (ViewGroup) this.f28406b, false);
        l(viewInflate);
        return viewInflate;
    }

    public void E(View view) {
        this.f28406b.removeView(view);
        if (C()) {
            return;
        }
        NavigationMenuView navigationMenuView = this.f28405a;
        navigationMenuView.setPadding(0, this.A, 0, navigationMenuView.getPaddingBottom());
    }

    public void F(boolean z10) {
        if (this.f28429y != z10) {
            this.f28429y = z10;
            b0();
        }
    }

    public void G(androidx.appcompat.view.menu.h hVar) {
        this.f28410f.s(hVar);
    }

    public void H(int i10) {
        this.f28425u = i10;
        h(false);
    }

    public void I(int i10) {
        this.f28424t = i10;
        h(false);
    }

    public void J(int i10) {
        this.f28409e = i10;
    }

    public void K(Drawable drawable) {
        this.f28418n = drawable;
        h(false);
    }

    public void L(RippleDrawable rippleDrawable) {
        this.f28419o = rippleDrawable;
        h(false);
    }

    public void M(int i10) {
        this.f28420p = i10;
        h(false);
    }

    public void N(int i10) {
        this.f28422r = i10;
        h(false);
    }

    public void O(int i10) {
        if (this.f28423s != i10) {
            this.f28423s = i10;
            this.f28428x = true;
            h(false);
        }
    }

    public void P(ColorStateList colorStateList) {
        this.f28417m = colorStateList;
        h(false);
    }

    public void Q(int i10) {
        this.f28430z = i10;
        h(false);
    }

    public void R(int i10) {
        this.f28414j = i10;
        h(false);
    }

    public void S(boolean z10) {
        this.f28415k = z10;
        h(false);
    }

    public void T(ColorStateList colorStateList) {
        this.f28416l = colorStateList;
        h(false);
    }

    public void U(int i10) {
        this.f28421q = i10;
        h(false);
    }

    public void V(int i10) {
        this.C = i10;
        NavigationMenuView navigationMenuView = this.f28405a;
        if (navigationMenuView != null) {
            navigationMenuView.setOverScrollMode(i10);
        }
    }

    public void W(ColorStateList colorStateList) {
        this.f28413i = colorStateList;
        h(false);
    }

    public void X(int i10) {
        this.f28427w = i10;
        h(false);
    }

    public void Y(int i10) {
        this.f28426v = i10;
        h(false);
    }

    public void Z(int i10) {
        this.f28412h = i10;
        h(false);
    }

    public void a0(boolean z10) {
        c cVar = this.f28410f;
        if (cVar != null) {
            cVar.t(z10);
        }
    }

    @Override
    public void b(androidx.appcompat.view.menu.f fVar, boolean z10) {
        androidx.appcompat.view.menu.l.a aVar = this.f28407c;
        if (aVar != null) {
            aVar.b(fVar, z10);
        }
    }

    @Override
    public boolean c(androidx.appcompat.view.menu.f fVar, androidx.appcompat.view.menu.h hVar) {
        return false;
    }

    @Override
    public void e(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:list");
            if (sparseParcelableArray != null) {
                this.f28405a.restoreHierarchyState(sparseParcelableArray);
            }
            Bundle bundle2 = bundle.getBundle("android:menu:adapter");
            if (bundle2 != null) {
                this.f28410f.q(bundle2);
            }
            SparseArray<Parcelable> sparseParcelableArray2 = bundle.getSparseParcelableArray("android:menu:header");
            if (sparseParcelableArray2 != null) {
                this.f28406b.restoreHierarchyState(sparseParcelableArray2);
            }
        }
    }

    @Override
    public boolean f(androidx.appcompat.view.menu.q qVar) {
        return false;
    }

    @Override
    public Parcelable g() {
        Bundle bundle = new Bundle();
        if (this.f28405a != null) {
            SparseArray<Parcelable> sparseArray = new SparseArray<>();
            this.f28405a.saveHierarchyState(sparseArray);
            bundle.putSparseParcelableArray("android:menu:list", sparseArray);
        }
        c cVar = this.f28410f;
        if (cVar != null) {
            bundle.putBundle("android:menu:adapter", cVar.j());
        }
        if (this.f28406b != null) {
            SparseArray<Parcelable> sparseArray2 = new SparseArray<>();
            this.f28406b.saveHierarchyState(sparseArray2);
            bundle.putSparseParcelableArray("android:menu:header", sparseArray2);
        }
        return bundle;
    }

    @Override
    public int getId() {
        return this.f28409e;
    }

    @Override
    public void h(boolean z10) {
        c cVar = this.f28410f;
        if (cVar != null) {
            cVar.u();
        }
    }

    @Override
    public boolean i() {
        return false;
    }

    @Override
    public boolean j(androidx.appcompat.view.menu.f fVar, androidx.appcompat.view.menu.h hVar) {
        return false;
    }

    @Override
    public void k(Context context, androidx.appcompat.view.menu.f fVar) {
        this.f28411g = LayoutInflater.from(context);
        this.f28408d = fVar;
        this.B = context.getResources().getDimensionPixelOffset(R$dimen.design_navigation_separator_vertical_padding);
    }

    public void l(View view) {
        this.f28406b.addView(view);
        NavigationMenuView navigationMenuView = this.f28405a;
        navigationMenuView.setPadding(0, 0, 0, navigationMenuView.getPaddingBottom());
    }

    public void m(WindowInsetsCompat windowInsetsCompat) {
        int systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
        if (this.A != systemWindowInsetTop) {
            this.A = systemWindowInsetTop;
            b0();
        }
        NavigationMenuView navigationMenuView = this.f28405a;
        navigationMenuView.setPadding(0, navigationMenuView.getPaddingTop(), 0, windowInsetsCompat.getSystemWindowInsetBottom());
        ViewCompat.dispatchApplyWindowInsets(this.f28406b, windowInsetsCompat);
    }

    public androidx.appcompat.view.menu.h n() {
        return this.f28410f.k();
    }

    public int o() {
        return this.f28425u;
    }

    public int p() {
        return this.f28424t;
    }

    public int q() {
        return this.f28406b.getChildCount();
    }

    public View r(int i10) {
        return this.f28406b.getChildAt(i10);
    }

    public Drawable s() {
        return this.f28418n;
    }

    public int t() {
        return this.f28420p;
    }

    public int u() {
        return this.f28422r;
    }

    public int v() {
        return this.f28430z;
    }

    public ColorStateList w() {
        return this.f28416l;
    }

    public ColorStateList x() {
        return this.f28417m;
    }

    public int y() {
        return this.f28421q;
    }

    public androidx.appcompat.view.menu.m z(ViewGroup viewGroup) {
        if (this.f28405a == null) {
            NavigationMenuView navigationMenuView = (NavigationMenuView) this.f28411g.inflate(R$layout.design_navigation_menu, viewGroup, false);
            this.f28405a = navigationMenuView;
            navigationMenuView.setAccessibilityDelegateCompat(new h(this.f28405a));
            if (this.f28410f == null) {
                c cVar = new c();
                this.f28410f = cVar;
                cVar.setHasStableIds(true);
            }
            int i10 = this.C;
            if (i10 != -1) {
                this.f28405a.setOverScrollMode(i10);
            }
            LinearLayout linearLayout = (LinearLayout) this.f28411g.inflate(R$layout.design_navigation_item_header, (ViewGroup) this.f28405a, false);
            this.f28406b = linearLayout;
            ViewCompat.setImportantForAccessibility(linearLayout, 2);
            this.f28405a.setAdapter(this.f28410f);
        }
        return this.f28405a;
    }
}
