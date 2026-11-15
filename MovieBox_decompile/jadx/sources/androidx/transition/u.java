package androidx.transition;

import android.animation.TimeInterpolator;
import android.util.AndroidRuntimeException;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;

public class u extends j {
    int P;
    ArrayList N = new ArrayList();
    private boolean O = true;
    boolean Q = false;
    private int R = 0;

    class a extends r {

        final j f14776a;

        a(j jVar) {
            this.f14776a = jVar;
        }

        @Override
        public void e(j jVar) {
            this.f14776a.W();
            jVar.S(this);
        }
    }

    static class b extends r {

        u f14778a;

        b(u uVar) {
            this.f14778a = uVar;
        }

        @Override
        public void b(j jVar) {
            u uVar = this.f14778a;
            if (uVar.Q) {
                return;
            }
            uVar.d0();
            this.f14778a.Q = true;
        }

        @Override
        public void e(j jVar) {
            u uVar = this.f14778a;
            int i10 = uVar.P - 1;
            uVar.P = i10;
            if (i10 == 0) {
                uVar.Q = false;
                uVar.p();
            }
            jVar.S(this);
        }
    }

    private void i0(j jVar) {
        this.N.add(jVar);
        jVar.f14726r = this;
    }

    private void r0() {
        b bVar = new b(this);
        Iterator it = this.N.iterator();
        while (it.hasNext()) {
            ((j) it.next()).a(bVar);
        }
        this.P = this.N.size();
    }

    @Override
    public void Q(View view) {
        super.Q(view);
        int size = this.N.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((j) this.N.get(i10)).Q(view);
        }
    }

    @Override
    public void U(View view) {
        super.U(view);
        int size = this.N.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((j) this.N.get(i10)).U(view);
        }
    }

    @Override
    protected void W() {
        if (this.N.isEmpty()) {
            d0();
            p();
            return;
        }
        r0();
        if (this.O) {
            Iterator it = this.N.iterator();
            while (it.hasNext()) {
                ((j) it.next()).W();
            }
            return;
        }
        for (int i10 = 1; i10 < this.N.size(); i10++) {
            ((j) this.N.get(i10 - 1)).a(new a((j) this.N.get(i10)));
        }
        j jVar = (j) this.N.get(0);
        if (jVar != null) {
            jVar.W();
        }
    }

    @Override
    public void Y(j.e eVar) {
        super.Y(eVar);
        this.R |= 8;
        int size = this.N.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((j) this.N.get(i10)).Y(eVar);
        }
    }

    @Override
    public void a0(g gVar) {
        super.a0(gVar);
        this.R |= 4;
        if (this.N != null) {
            for (int i10 = 0; i10 < this.N.size(); i10++) {
                ((j) this.N.get(i10)).a0(gVar);
            }
        }
    }

    @Override
    public void b0(t tVar) {
        super.b0(tVar);
        this.R |= 2;
        int size = this.N.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((j) this.N.get(i10)).b0(tVar);
        }
    }

    @Override
    protected void cancel() {
        super.cancel();
        int size = this.N.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((j) this.N.get(i10)).cancel();
        }
    }

    @Override
    String e0(String str) {
        String strE0 = super.e0(str);
        for (int i10 = 0; i10 < this.N.size(); i10++) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(strE0);
            sb2.append("\n");
            sb2.append(((j) this.N.get(i10)).e0(str + "  "));
            strE0 = sb2.toString();
        }
        return strE0;
    }

    @Override
    public u a(j.f fVar) {
        return (u) super.a(fVar);
    }

    @Override
    public void g(w wVar) {
        if (H(wVar.f14781b)) {
            for (j jVar : this.N) {
                if (jVar.H(wVar.f14781b)) {
                    jVar.g(wVar);
                    wVar.f14782c.add(jVar);
                }
            }
        }
    }

    @Override
    public u b(View view) {
        for (int i10 = 0; i10 < this.N.size(); i10++) {
            ((j) this.N.get(i10)).b(view);
        }
        return (u) super.b(view);
    }

    public u h0(j jVar) {
        i0(jVar);
        long j10 = this.f14711c;
        if (j10 >= 0) {
            jVar.X(j10);
        }
        if ((this.R & 1) != 0) {
            jVar.Z(s());
        }
        if ((this.R & 2) != 0) {
            jVar.b0(w());
        }
        if ((this.R & 4) != 0) {
            jVar.a0(v());
        }
        if ((this.R & 8) != 0) {
            jVar.Y(r());
        }
        return this;
    }

    @Override
    void i(w wVar) {
        super.i(wVar);
        int size = this.N.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((j) this.N.get(i10)).i(wVar);
        }
    }

    @Override
    public void j(w wVar) {
        if (H(wVar.f14781b)) {
            for (j jVar : this.N) {
                if (jVar.H(wVar.f14781b)) {
                    jVar.j(wVar);
                    wVar.f14782c.add(jVar);
                }
            }
        }
    }

    public j j0(int i10) {
        if (i10 < 0 || i10 >= this.N.size()) {
            return null;
        }
        return (j) this.N.get(i10);
    }

    public int k0() {
        return this.N.size();
    }

    @Override
    public u S(j.f fVar) {
        return (u) super.S(fVar);
    }

    @Override
    public j clone() {
        u uVar = (u) super.clone();
        uVar.N = new ArrayList();
        int size = this.N.size();
        for (int i10 = 0; i10 < size; i10++) {
            uVar.i0(((j) this.N.get(i10)).clone());
        }
        return uVar;
    }

    @Override
    public u T(View view) {
        for (int i10 = 0; i10 < this.N.size(); i10++) {
            ((j) this.N.get(i10)).T(view);
        }
        return (u) super.T(view);
    }

    @Override
    public u X(long j10) {
        ArrayList arrayList;
        super.X(j10);
        if (this.f14711c >= 0 && (arrayList = this.N) != null) {
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                ((j) this.N.get(i10)).X(j10);
            }
        }
        return this;
    }

    @Override
    void o(ViewGroup viewGroup, x xVar, x xVar2, ArrayList arrayList, ArrayList arrayList2) {
        long jZ = z();
        int size = this.N.size();
        for (int i10 = 0; i10 < size; i10++) {
            j jVar = (j) this.N.get(i10);
            if (jZ > 0 && (this.O || i10 == 0)) {
                long jZ2 = jVar.z();
                if (jZ2 > 0) {
                    jVar.c0(jZ2 + jZ);
                } else {
                    jVar.c0(jZ);
                }
            }
            jVar.o(viewGroup, xVar, xVar2, arrayList, arrayList2);
        }
    }

    @Override
    public u Z(TimeInterpolator timeInterpolator) {
        this.R |= 1;
        ArrayList arrayList = this.N;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                ((j) this.N.get(i10)).Z(timeInterpolator);
            }
        }
        return (u) super.Z(timeInterpolator);
    }

    public u p0(int i10) {
        if (i10 == 0) {
            this.O = true;
        } else {
            if (i10 != 1) {
                throw new AndroidRuntimeException("Invalid parameter for TransitionSet ordering: " + i10);
            }
            this.O = false;
        }
        return this;
    }

    @Override
    public u c0(long j10) {
        return (u) super.c0(j10);
    }
}
