package ru.zdevs.zarchiver.ui;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import d0.h;
import g0.i;
import g0.v;
import h0.e;
import q0.g;
import ru.zdevs.zarchiver.R;

public class FSSelect extends ListView implements AdapterView.OnItemClickListener, AdapterView.OnItemLongClickListener, i.d, w0.a.c {

    public b f1734a;

    public c f1735b;

    public h.a f1736c;

    public final ru.zdevs.zarchiver.b f1737d;

    public g f1738e;

    public final h0.b[] f1739f;

    public boolean f1740g;

    public TextView f1741h;

    public final w0.a f1742i;

    public static class a implements w0.a.b {

        public final h0.h f1743a;

        public final d0.b f1744b;

        public final int f1745c;

        public a(h0.h hVar, d0.b bVar, int i2) {
            this.f1743a = hVar;
            this.f1744b = bVar;
            this.f1745c = i2;
        }

        @Override
        public final int a() {
            return 1;
        }
    }

    public interface b {
        void onFileSelect(String str, String str2, int i2);
    }

    public interface c {
        void onPathChange(h0.h hVar);
    }

    public static class d extends w0.c {

        public final ru.zdevs.zarchiver.b f1746e;

        public final h0.h f1747f;

        public final h0.b[] f1748g;

        public final int f1749h;

        public d(ru.zdevs.zarchiver.b bVar, h0.h hVar, h0.b[] bVarArr, int i2) {
            this.f1746e = bVar;
            this.f1747f = hVar;
            this.f1748g = bVarArr;
            this.f1749h = i2;
        }

        @Override
        public final w0.a.b f() {
            h0.h hVar;
            int iF;
            d0.b bVar = new d0.b(0);
            h0.b[] bVarArr = this.f1748g;
            int length = bVarArr.length;
            int i2 = 0;
            while (true) {
                hVar = this.f1747f;
                if (i2 >= length) {
                    iF = R.string.MES_ACCESS_DENIED;
                    break;
                }
                h0.b bVar2 = bVarArr[i2];
                if (bVar2 != null && bVar2.g(hVar, bVar, this.f1749h)) {
                    iF = bVar2.f();
                    break;
                }
                i2++;
            }
            int size = bVar.size();
            if (size > 1) {
                e.i(this.f1746e.f1658h, bVar);
            } else if (size == 0 && iF == R.string.MES_ACCESS_DENIED) {
                bVar.add(0, new d0.d("..", (byte) 3));
            }
            return new a(hVar, bVar, iF);
        }
    }

    public FSSelect(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1742i = new w0.a();
        h0.b[] bVarArr = new h0.b[3];
        this.f1739f = bVarArr;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 21) {
            bVarArr[0] = new j0.a();
        } else {
            bVarArr[0] = new j0.b();
        }
        bVarArr[1] = i2 >= 23 ? new m0.a() : null;
        ru.zdevs.zarchiver.b bVar = new ru.zdevs.zarchiver.b(0);
        this.f1737d = bVar;
        bVar.l(new h0.h(t0.b.f2081b[0]), (byte) 0, 0);
        setCacheColorHint(0);
        setDrawingCacheEnabled(false);
        setOnItemClickListener(this);
    }

    @Override
    public final boolean a(i iVar) {
        switch (((v) iVar).f1050j) {
            case 14:
                ((d0.c) getAdapter()).g();
                return true;
            case 15:
                ((d0.c) getAdapter()).h();
                return true;
            case 16:
                ((d0.c) getAdapter()).i();
                return true;
            default:
                return false;
        }
    }

    @Override
    public final void b(w0.a.b bVar) {
        setFileList((a) bVar);
    }

    public final void d() {
        if ((t0.b.f2089j & 4128768) != 0) {
            if (this.f1738e == null) {
                this.f1738e = new g(getContext());
            }
            this.f1738e.d(null, t0.b.f2090k);
            d0.c cVar = (d0.c) getAdapter();
            if (cVar != null) {
                cVar.f565m = this.f1738e;
            }
        }
        this.f1742i.a(this, getContext());
    }

    public final void e() {
        g gVar = this.f1738e;
        if (gVar != null) {
            gVar.e(0);
            this.f1738e = null;
        }
        w0.a aVar = this.f1742i;
        aVar.f(100, 1, -1);
        aVar.d(this);
    }

    public final void finalize() throws Throwable {
        e();
        super.finalize();
    }

    public h0.h getPath() {
        return this.f1737d.f1653c;
    }

    @Override
    public final void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
        ru.zdevs.zarchiver.b bVar = this.f1737d;
        d0.d dVarB = bVar.f1667q.b(i2);
        if (dVarB == null) {
            return;
        }
        if (dVarB.f()) {
            h0.h hVar = new h0.h(bVar.f1653c);
            if (dVarB.g()) {
                hVar.c();
            } else {
                hVar.a(dVarB.f539a);
            }
            setPath(hVar);
            return;
        }
        if (this.f1740g) {
            ((d0.c) getAdapter()).j(i2, 2);
            return;
        }
        b bVar2 = this.f1734a;
        if (bVar2 != null) {
            bVar2.onFileSelect(bVar.f1653c.r(), dVarB.f539a, dVarB.d());
        }
    }

    @Override
    public final boolean onItemLongClick(AdapterView<?> adapterView, View view, int i2, long j2) {
        d0.d dVarA;
        d0.c cVar = (d0.c) getAdapter();
        if (cVar == null || (dVarA = cVar.a(i2)) == null) {
            return false;
        }
        if (!dVarA.g()) {
            Context context = getContext();
            h0.g gVar = new h0.g(context);
            gVar.a(14);
            gVar.a(16);
            gVar.a(15);
            String string = getContext().getString(R.string.MENU_SELECT);
            gVar.f1103d = string;
            v vVar = new v(context, gVar.f1102c, string, 1);
            vVar.f961b = this;
            String str = gVar.f1105f;
            if (str != null) {
                vVar.o(gVar.f1104e, str);
            }
            vVar.v();
        } else if (cVar.f560h.f521a > 0) {
            cVar.h();
        } else {
            cVar.g();
        }
        return true;
    }

    public void setEmptyText(TextView textView) {
        this.f1741h = textView;
    }

    public void setFileList(a aVar) {
        setEnabled(true);
        TextView textView = this.f1741h;
        if (textView != null) {
            int i2 = aVar.f1745c;
            if (i2 != 0) {
                textView.setText(i2);
                this.f1741h.setVisibility(0);
            } else {
                textView.setVisibility(8);
            }
        }
        d0.b bVar = aVar.f1744b;
        ru.zdevs.zarchiver.b bVar2 = this.f1737d;
        synchronized (bVar2.f1651a) {
            bVar2.f1667q = bVar;
            bVar2.f1669s = null;
            bVar2.f1656f &= -3;
        }
        h0.h hVar = aVar.f1743a;
        bVar2.l(hVar, (byte) 0, 0);
        h hVarB = bVar2.b(getContext(), (h) getAdapter());
        hVarB.f565m = this.f1738e;
        hVarB.f566n = this.f1736c;
        hVarB.m(this.f1740g);
        setAdapter((ListAdapter) hVarB);
        c cVar = this.f1735b;
        if (cVar != null) {
            cVar.onPathChange(hVar);
        }
    }

    public void setMultiSelect(boolean z2) {
        this.f1740g = z2;
        if (z2) {
            setOnItemLongClickListener(this);
        } else {
            setOnItemLongClickListener(null);
        }
    }

    public void setOnFileClickListener(b bVar) {
        this.f1734a = bVar;
    }

    public void setOnItemSelectChanged(h.a aVar) {
        this.f1736c = aVar;
    }

    public void setOnPathChangeListener(c cVar) {
        this.f1735b = cVar;
    }

    public void setPath(h0.h hVar) {
        String strN;
        boolean zM = hVar.m();
        h0.b[] bVarArr = this.f1739f;
        if (zM && bVarArr[2] != null && (strN = x0.d.n(hVar.f1108c)) != null) {
            hVar.p(strN);
            hVar.q("root");
        }
        int i2 = bVarArr[2] == null ? 6 : 4;
        ru.zdevs.zarchiver.b bVar = this.f1737d;
        if (bVar.f1659i) {
            i2 |= 32;
        }
        new d(bVar, hVar, bVarArr, i2).g(null, this.f1742i);
        setEnabled(false);
    }

    public void setRootSupport(boolean z2) {
        h0.b[] bVarArr = this.f1739f;
        if (z2) {
            bVarArr[2] = new j0.c();
        } else {
            bVarArr[2] = null;
        }
    }
}
