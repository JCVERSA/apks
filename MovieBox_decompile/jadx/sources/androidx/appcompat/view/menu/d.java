package androidx.appcompat.view.menu;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import androidx.appcompat.R$layout;
import java.util.ArrayList;

public class d implements l, AdapterView.OnItemClickListener {

    Context f1112a;

    LayoutInflater f1113b;

    f f1114c;

    ExpandedMenuView f1115d;

    int f1116e;

    int f1117f;

    int f1118g;

    private l.a f1119h;

    a f1120i;

    private int f1121j;

    private class a extends BaseAdapter {

        private int f1122a = -1;

        public a() {
            a();
        }

        void a() {
            h hVarX = d.this.f1114c.x();
            if (hVarX != null) {
                ArrayList arrayListB = d.this.f1114c.B();
                int size = arrayListB.size();
                for (int i10 = 0; i10 < size; i10++) {
                    if (((h) arrayListB.get(i10)) == hVarX) {
                        this.f1122a = i10;
                        return;
                    }
                }
            }
            this.f1122a = -1;
        }

        @Override
        public h getItem(int i10) {
            ArrayList arrayListB = d.this.f1114c.B();
            int i11 = i10 + d.this.f1116e;
            int i12 = this.f1122a;
            if (i12 >= 0 && i11 >= i12) {
                i11++;
            }
            return (h) arrayListB.get(i11);
        }

        @Override
        public int getCount() {
            int size = d.this.f1114c.B().size() - d.this.f1116e;
            return this.f1122a < 0 ? size : size - 1;
        }

        @Override
        public long getItemId(int i10) {
            return i10;
        }

        @Override
        public View getView(int i10, View view, ViewGroup viewGroup) {
            if (view == null) {
                d dVar = d.this;
                view = dVar.f1113b.inflate(dVar.f1118g, viewGroup, false);
            }
            ((m.a) view).initialize(getItem(i10), 0);
            return view;
        }

        @Override
        public void notifyDataSetChanged() {
            a();
            super.notifyDataSetChanged();
        }
    }

    public d(Context context, int i10) {
        this(i10, 0);
        this.f1112a = context;
        this.f1113b = LayoutInflater.from(context);
    }

    public ListAdapter a() {
        if (this.f1120i == null) {
            this.f1120i = new a();
        }
        return this.f1120i;
    }

    @Override
    public void b(f fVar, boolean z10) {
        l.a aVar = this.f1119h;
        if (aVar != null) {
            aVar.b(fVar, z10);
        }
    }

    @Override
    public boolean c(f fVar, h hVar) {
        return false;
    }

    @Override
    public void d(l.a aVar) {
        this.f1119h = aVar;
    }

    @Override
    public void e(Parcelable parcelable) {
        m((Bundle) parcelable);
    }

    @Override
    public boolean f(q qVar) {
        if (!qVar.hasVisibleItems()) {
            return false;
        }
        new g(qVar).d(null);
        l.a aVar = this.f1119h;
        if (aVar == null) {
            return true;
        }
        aVar.c(qVar);
        return true;
    }

    @Override
    public Parcelable g() {
        if (this.f1115d == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        n(bundle);
        return bundle;
    }

    @Override
    public int getId() {
        return this.f1121j;
    }

    @Override
    public void h(boolean z10) {
        a aVar = this.f1120i;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    @Override
    public boolean i() {
        return false;
    }

    @Override
    public boolean j(f fVar, h hVar) {
        return false;
    }

    @Override
    public void k(Context context, f fVar) {
        if (this.f1117f != 0) {
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, this.f1117f);
            this.f1112a = contextThemeWrapper;
            this.f1113b = LayoutInflater.from(contextThemeWrapper);
        } else if (this.f1112a != null) {
            this.f1112a = context;
            if (this.f1113b == null) {
                this.f1113b = LayoutInflater.from(context);
            }
        }
        this.f1114c = fVar;
        a aVar = this.f1120i;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    public m l(ViewGroup viewGroup) {
        if (this.f1115d == null) {
            this.f1115d = (ExpandedMenuView) this.f1113b.inflate(R$layout.abc_expanded_menu_layout, viewGroup, false);
            if (this.f1120i == null) {
                this.f1120i = new a();
            }
            this.f1115d.setAdapter((ListAdapter) this.f1120i);
            this.f1115d.setOnItemClickListener(this);
        }
        return this.f1115d;
    }

    public void m(Bundle bundle) {
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:list");
        if (sparseParcelableArray != null) {
            this.f1115d.restoreHierarchyState(sparseParcelableArray);
        }
    }

    public void n(Bundle bundle) {
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        ExpandedMenuView expandedMenuView = this.f1115d;
        if (expandedMenuView != null) {
            expandedMenuView.saveHierarchyState(sparseArray);
        }
        bundle.putSparseParcelableArray("android:menu:list", sparseArray);
    }

    @Override
    public void onItemClick(AdapterView adapterView, View view, int i10, long j10) {
        this.f1114c.P(this.f1120i.getItem(i10), this, 0);
    }

    public d(int i10, int i11) {
        this.f1118g = i10;
        this.f1117f = i11;
    }
}
