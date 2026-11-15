package com.yandex.div.internal.widget.tabs;

import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.collection.ArrayMap;
import androidx.core.view.ViewCompat;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import defpackage.bu2;
import defpackage.cdc;
import defpackage.fda;
import defpackage.ndc;
import defpackage.oj3;
import defpackage.pdc;
import defpackage.pp5;
import defpackage.qj3;
import defpackage.xi;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

public abstract class b {
    public final cdc a;
    public final View b;
    public final InterfaceC0305b c;
    public final d d;
    public final ScrollableViewPager e;
    public com.yandex.div.internal.widget.tabs.d f;
    public final ViewPagerFixedSizeLayout g;
    public ViewPagerFixedSizeLayout.a h;
    public final String k;
    public final String l;
    public final c m;
    public final Map i = new ArrayMap();
    public final Map j = new ArrayMap();
    public final PagerAdapter n = new a();
    public boolean o = false;
    public g p = null;
    public boolean q = false;

    public class a extends PagerAdapter {
        public SparseArray f;

        public a() {
        }

        @Override
        public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
            if (pdc.f(b.this.e)) {
                i = (getCount() - i) - 1;
            }
            ViewGroup viewGroup2 = (ViewGroup) obj;
            ((e) b.this.i.remove(viewGroup2)).c();
            b.this.j.remove(Integer.valueOf(i));
            pp5.a("BaseDivTabbedCardUi", "destroyItem pos " + i);
            viewGroup.removeView(viewGroup2);
        }

        @Override
        public int getCount() {
            if (b.this.p == null) {
                return 0;
            }
            return b.this.p.a().size();
        }

        @Override
        public int getItemPosition(Object obj) {
            return -2;
        }

        @Override
        public Object instantiateItem(ViewGroup viewGroup, int i) {
            ViewGroup viewGroup2;
            if (pdc.f(b.this.e)) {
                i = (getCount() - i) - 1;
            }
            pp5.a("BaseDivTabbedCardUi", "instantiateItem pos " + i);
            e eVar = (e) b.this.j.get(Integer.valueOf(i));
            if (eVar != null) {
                viewGroup2 = eVar.a;
                xi.d(eVar.a.getParent());
            } else {
                ViewGroup viewGroup3 = (ViewGroup) b.this.a.a(b.this.l);
                e eVar2 = new e(b.this, viewGroup3, (g.a) b.this.p.a().get(i), i, null);
                b.this.j.put(Integer.valueOf(i), eVar2);
                viewGroup2 = viewGroup3;
                eVar = eVar2;
            }
            viewGroup.addView(viewGroup2);
            b.this.i.put(viewGroup2, eVar);
            if (i == b.this.e.getCurrentItem()) {
                eVar.b();
            }
            SparseArray<Parcelable> sparseArray = this.f;
            if (sparseArray != null) {
                viewGroup2.restoreHierarchyState(sparseArray);
            }
            return viewGroup2;
        }

        @Override
        public boolean isViewFromObject(View view, Object obj) {
            return obj == view;
        }

        @Override
        public void restoreState(Parcelable parcelable, ClassLoader classLoader) {
            if (!(parcelable instanceof Bundle)) {
                this.f = null;
                return;
            }
            Bundle bundle = (Bundle) parcelable;
            bundle.setClassLoader(getClass().getClassLoader());
            this.f = bundle.getSparseParcelableArray("div_tabs_child_states");
        }

        @Override
        public Parcelable saveState() {
            SparseArray<Parcelable> sparseArray = new SparseArray<>(b.this.i.size());
            Iterator it = b.this.i.keySet().iterator();
            while (it.hasNext()) {
                ((ViewGroup) it.next()).saveHierarchyState(sparseArray);
            }
            Bundle bundle = new Bundle();
            bundle.putSparseParcelableArray("div_tabs_child_states", sparseArray);
            return bundle;
        }
    }

    public interface InterfaceC0305b {

        public interface a {
            void a(Object obj, int i);

            void b(int i, boolean z);
        }

        void fixScrollPosition(int i);

        ViewPager.OnPageChangeListener getCustomPageChangeListener();

        void manuallyScroll(int i);

        void setData(List list, int i, oj3 oj3Var, qj3 qj3Var);

        void setHost(a aVar);

        void setIntermediateState(int i, float f);

        void setTypefaceProvider(bu2 bu2Var);

        void setViewPool(cdc cdcVar, String str);
    }

    public interface c {
        void a(Object obj, int i);
    }

    public class d implements InterfaceC0305b.a {
        public d() {
        }

        @Override
        public void a(Object obj, int i) {
            b.this.m.a(obj, i);
        }

        @Override
        public void b(int i, boolean z) {
            if (z) {
                b.this.o = true;
            }
            b.this.e.setCurrentItem(i);
        }

        public d(b bVar, a aVar) {
            this();
        }
    }

    public class e {
        public final ViewGroup a;
        public final g.a b;
        public final int c;
        public Object d;

        public e(b bVar, ViewGroup viewGroup, g.a aVar, int i, a aVar2) {
            this(viewGroup, aVar, i);
        }

        public void b() {
            if (this.d != null) {
                return;
            }
            this.d = b.this.o(this.a, this.b, this.c);
        }

        public void c() {
            Object obj = this.d;
            if (obj == null) {
                return;
            }
            b.this.x(obj);
            this.d = null;
        }

        public e(ViewGroup viewGroup, g.a aVar, int i) {
            this.a = viewGroup;
            this.b = aVar;
            this.c = i;
        }
    }

    public class f implements ViewPager.PageTransformer {
        public f() {
        }

        @Override
        public void transformPage(View view, float f) {
            e eVar;
            if (!b.this.q && f > -1.0f && f < 1.0f && (eVar = (e) b.this.i.get(view)) != null) {
                eVar.b();
            }
        }

        public f(b bVar, a aVar) {
            this();
        }
    }

    public interface g {

        public interface a {
            Integer a();

            Object b();

            Integer c();

            String getTitle();
        }

        List a();
    }

    public static class i {
        public final int a;
        public final int b;
        public final int c;
        public final boolean d;
        public final boolean e;
        public final String f;
        public final String g;

        public i(int i, int i2, int i3, boolean z, boolean z2, String str, String str2) {
            this.a = i;
            this.b = i2;
            this.c = i3;
            this.d = z;
            this.e = z2;
            this.f = str;
            this.g = str2;
        }

        public int a() {
            return this.c;
        }

        public int b() {
            return this.b;
        }

        public int c() {
            return this.a;
        }

        public String d() {
            return this.f;
        }

        public String e() {
            return this.g;
        }

        public boolean f() {
            return this.e;
        }

        public boolean g() {
            return this.d;
        }
    }

    public b(cdc cdcVar, View view, i iVar, com.yandex.div.internal.widget.tabs.d dVar, fda fdaVar, ViewPager.OnPageChangeListener onPageChangeListener, c cVar, ViewPager.OnPageChangeListener onPageChangeListener2) {
        a aVar = null;
        this.a = cdcVar;
        this.b = view;
        this.f = dVar;
        this.m = cVar;
        d dVar2 = new d(this, aVar);
        this.d = dVar2;
        String strD = iVar.d();
        this.k = strD;
        this.l = iVar.e();
        InterfaceC0305b interfaceC0305b = (InterfaceC0305b) ndc.b(view, iVar.c());
        this.c = interfaceC0305b;
        interfaceC0305b.setHost(dVar2);
        interfaceC0305b.setTypefaceProvider(fdaVar.a());
        interfaceC0305b.setViewPool(cdcVar, strD);
        ScrollableViewPager scrollableViewPager = (ScrollableViewPager) ndc.b(view, iVar.b());
        this.e = scrollableViewPager;
        ViewCompat.setLayoutDirection(scrollableViewPager, scrollableViewPager.getResources().getConfiguration().getLayoutDirection());
        scrollableViewPager.setAdapter(null);
        scrollableViewPager.clearOnPageChangeListeners();
        scrollableViewPager.addOnPageChangeListener(new h(this, aVar));
        ViewPager.OnPageChangeListener customPageChangeListener = interfaceC0305b.getCustomPageChangeListener();
        if (customPageChangeListener != null) {
            scrollableViewPager.addOnPageChangeListener(customPageChangeListener);
        }
        if (onPageChangeListener != null) {
            scrollableViewPager.addOnPageChangeListener(onPageChangeListener);
        }
        scrollableViewPager.addOnPageChangeListener(onPageChangeListener2);
        scrollableViewPager.setScrollEnabled(iVar.g());
        scrollableViewPager.setEdgeScrollEnabled(iVar.f());
        scrollableViewPager.setPageTransformer(false, new f(this, aVar));
        this.g = (ViewPagerFixedSizeLayout) ndc.b(view, iVar.a());
        r();
    }

    public abstract Object o(ViewGroup viewGroup, g.a aVar, int i2);

    public final int p(int i2, g gVar) {
        if (gVar == null) {
            return -1;
        }
        return Math.min(i2, gVar.a().size() - 1);
    }

    public final int q() {
        g gVar = this.p;
        if (gVar == null) {
            return 0;
        }
        return gVar.a().size();
    }

    public final void r() {
        if (this.g == null) {
            return;
        }
        ViewPagerFixedSizeLayout.a aVarA = this.f.a((ViewGroup) this.a.a(this.l), new com.yandex.div.internal.widget.tabs.d.b() {
            @Override
            public final int a(ViewGroup viewGroup, int i2, int i3, int i4) {
                return this.a.s(viewGroup, i2, i3, i4);
            }
        }, new com.yandex.div.internal.widget.tabs.d.a() {
            @Override
            public final int apply() {
                return this.a.q();
            }
        });
        this.h = aVarA;
        this.g.setHeightCalculator(aVarA);
    }

    public final int s(ViewGroup viewGroup, int i2, int i3, int i4) {
        ViewGroup viewGroup2;
        int measuredHeight;
        if (this.p == null) {
            return -1;
        }
        ViewPagerFixedSizeLayout viewPagerFixedSizeLayout = this.g;
        boolean z = false;
        int i5 = viewPagerFixedSizeLayout != null ? viewPagerFixedSizeLayout.get_collapsiblePaddingBottom() : 0;
        List listA = this.p.a();
        if (i4 >= 0 && i4 < listA.size()) {
            z = true;
        }
        xi.g("Tab index is out ouf bounds!", z);
        g.a aVar = (g.a) listA.get(i4);
        Integer numA = aVar.a();
        if (numA != null) {
            measuredHeight = numA.intValue();
        } else {
            e eVar = (e) this.j.get(Integer.valueOf(i4));
            if (eVar == null) {
                viewGroup2 = (ViewGroup) this.a.a(this.l);
                e eVar2 = new e(this, viewGroup2, aVar, i4, null);
                this.j.put(Integer.valueOf(i4), eVar2);
                eVar = eVar2;
            } else {
                viewGroup2 = eVar.a;
            }
            eVar.b();
            viewGroup2.forceLayout();
            viewGroup2.measure(View.MeasureSpec.makeMeasureSpec(i2, 1073741824), u(i3, aVar));
            measuredHeight = viewGroup2.getMeasuredHeight();
        }
        return measuredHeight + i5;
    }

    public void t() {
        pp5.a("BaseDivTabbedCardUi", "requestViewPagerLayout");
        ViewPagerFixedSizeLayout.a aVar = this.h;
        if (aVar != null) {
            aVar.b();
        }
        ViewPagerFixedSizeLayout viewPagerFixedSizeLayout = this.g;
        if (viewPagerFixedSizeLayout != null) {
            viewPagerFixedSizeLayout.requestLayout();
        }
    }

    public final int u(int i2, g.a aVar) {
        return aVar.c().intValue() == -1 ? i2 : View.MeasureSpec.makeMeasureSpec(0, 0);
    }

    public void v(g gVar, oj3 oj3Var, qj3 qj3Var) {
        int iP = p(this.e.getCurrentItem(), gVar);
        this.j.clear();
        this.p = gVar;
        if (this.e.getAdapter() != null) {
            this.q = true;
            try {
                this.n.notifyDataSetChanged();
                this.q = false;
            } catch (Throwable th) {
                this.q = false;
                throw th;
            }
        }
        List listEmptyList = gVar == null ? Collections.emptyList() : gVar.a();
        this.c.setData(listEmptyList, iP, oj3Var, qj3Var);
        if (this.e.getAdapter() == null) {
            this.e.setAdapter(this.n);
        } else if (!listEmptyList.isEmpty() && iP != -1) {
            this.e.setCurrentItem(iP);
            this.c.manuallyScroll(iP);
        }
        t();
    }

    public void w(Set set) {
        this.e.setDisabledScrollPages(set);
    }

    public abstract void x(Object obj);

    public class h implements ViewPager.OnPageChangeListener {
        public int b;

        public h() {
            this.b = 0;
        }

        public final void a(int i) {
            if (b.this.h == null || b.this.g == null) {
                return;
            }
            b.this.h.d(i, 0.0f);
            b.this.g.requestLayout();
        }

        public final void b(int i, float f) {
            if (b.this.g == null || b.this.h == null) {
                return;
            }
            b.this.h.d(i, f);
            if (b.this.g.shouldRequestLayoutOnScroll(i, f)) {
                if (!b.this.g.isInLayout()) {
                    b.this.g.requestLayout();
                    return;
                }
                ViewPagerFixedSizeLayout viewPagerFixedSizeLayout = b.this.g;
                final ViewPagerFixedSizeLayout viewPagerFixedSizeLayout2 = b.this.g;
                Objects.requireNonNull(viewPagerFixedSizeLayout2);
                viewPagerFixedSizeLayout.post(new Runnable() {
                    @Override
                    public final void run() {
                        viewPagerFixedSizeLayout2.requestLayout();
                    }
                });
            }
        }

        @Override
        public void onPageScrollStateChanged(int i) {
            this.b = i;
            if (i == 0) {
                int currentItem = b.this.e.getCurrentItem();
                a(currentItem);
                if (!b.this.o) {
                    b.this.c.fixScrollPosition(currentItem);
                }
                b.this.o = false;
            }
        }

        @Override
        public void onPageScrolled(int i, float f, int i2) {
            if (this.b != 0) {
                b(i, f);
            }
            if (b.this.o) {
                return;
            }
            b.this.c.setIntermediateState(i, f);
        }

        @Override
        public void onPageSelected(int i) {
            if (b.this.h == null) {
                b.this.e.requestLayout();
            } else if (this.b == 0) {
                a(i);
            }
        }

        public h(b bVar, a aVar) {
            this();
        }
    }
}
