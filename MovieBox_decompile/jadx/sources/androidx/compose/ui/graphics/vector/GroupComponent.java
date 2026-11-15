package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.b5;
import androidx.compose.ui.graphics.i4;
import androidx.compose.ui.graphics.j1;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.x0;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

public final class GroupComponent extends i {

    private float[] f4370b;

    private final List f4371c;

    private boolean f4372d;

    private long f4373e;

    private List f4374f;

    private boolean f4375g;

    private Path f4376h;

    private Function1 f4377i;

    private final Function1 f4378j;

    private String f4379k;

    private float f4380l;

    private float f4381m;

    private float f4382n;

    private float f4383o;

    private float f4384p;

    private float f4385q;

    private float f4386r;

    private boolean f4387s;

    public GroupComponent() {
        super(null);
        this.f4371c = new ArrayList();
        this.f4372d = true;
        this.f4373e = u1.f4349b.e();
        this.f4374f = k.d();
        this.f4375g = true;
        this.f4378j = new Function1<i, Unit>() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((i) obj);
                return Unit.f64096a;
            }

            public final void invoke(i iVar) {
                this.this$0.n(iVar);
                Function1 function1B = this.this$0.b();
                if (function1B != null) {
                    function1B.invoke(iVar);
                }
            }
        };
        this.f4379k = "";
        this.f4383o = 1.0f;
        this.f4384p = 1.0f;
        this.f4387s = true;
    }

    private final boolean h() {
        return !this.f4374f.isEmpty();
    }

    private final void k() {
        this.f4372d = false;
        this.f4373e = u1.f4349b.e();
    }

    private final void l(j1 j1Var) {
        if (this.f4372d && j1Var != null) {
            if (j1Var instanceof b5) {
                m(((b5) j1Var).b());
            } else {
                k();
            }
        }
    }

    private final void m(long j10) {
        if (this.f4372d && j10 != 16) {
            long j11 = this.f4373e;
            if (j11 == 16) {
                this.f4373e = j10;
            } else {
                if (k.e(j11, j10)) {
                    return;
                }
                k();
            }
        }
    }

    public final void n(i iVar) {
        if (iVar instanceof PathComponent) {
            PathComponent pathComponent = (PathComponent) iVar;
            l(pathComponent.e());
            l(pathComponent.g());
        } else if (iVar instanceof GroupComponent) {
            GroupComponent groupComponent = (GroupComponent) iVar;
            if (groupComponent.f4372d && this.f4372d) {
                m(groupComponent.f4373e);
            } else {
                k();
            }
        }
    }

    private final void x() {
        if (h()) {
            Path pathA = this.f4376h;
            if (pathA == null) {
                pathA = x0.a();
                this.f4376h = pathA;
            }
            h.c(this.f4374f, pathA);
        }
    }

    private final void y() {
        float[] fArrC = this.f4370b;
        if (fArrC == null) {
            fArrC = i4.c(null, 1, null);
            this.f4370b = fArrC;
        } else {
            i4.h(fArrC);
        }
        i4.q(fArrC, this.f4381m + this.f4385q, this.f4382n + this.f4386r, 0.0f, 4, null);
        i4.k(fArrC, this.f4380l);
        i4.l(fArrC, this.f4383o, this.f4384p, 1.0f);
        i4.q(fArrC, -this.f4381m, -this.f4382n, 0.0f, 4, null);
    }

    @Override
    public void a(z.g gVar) {
        if (this.f4387s) {
            y();
            this.f4387s = false;
        }
        if (this.f4375g) {
            x();
            this.f4375g = false;
        }
        z.d dVarG0 = gVar.G0();
        long jI = dVarG0.i();
        dVarG0.e().n();
        try {
            z.j jVarC = dVarG0.c();
            float[] fArr = this.f4370b;
            if (fArr != null) {
                jVarC.d(i4.a(fArr).r());
            }
            Path path = this.f4376h;
            if (h() && path != null) {
                z.i.a(jVarC, path, 0, 2, null);
            }
            List list = this.f4371c;
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                ((i) list.get(i10)).a(gVar);
            }
        } finally {
            dVarG0.e().j();
            dVarG0.f(jI);
        }
    }

    @Override
    public Function1 b() {
        return this.f4377i;
    }

    @Override
    public void d(Function1 function1) {
        this.f4377i = function1;
    }

    public final int f() {
        return this.f4371c.size();
    }

    public final long g() {
        return this.f4373e;
    }

    public final void i(int i10, i iVar) {
        if (i10 < f()) {
            this.f4371c.set(i10, iVar);
        } else {
            this.f4371c.add(iVar);
        }
        n(iVar);
        iVar.d(this.f4378j);
        c();
    }

    public final boolean j() {
        return this.f4372d;
    }

    public final void o(List list) {
        this.f4374f = list;
        this.f4375g = true;
        c();
    }

    public final void p(String str) {
        this.f4379k = str;
        c();
    }

    public final void q(float f10) {
        this.f4381m = f10;
        this.f4387s = true;
        c();
    }

    public final void r(float f10) {
        this.f4382n = f10;
        this.f4387s = true;
        c();
    }

    public final void s(float f10) {
        this.f4380l = f10;
        this.f4387s = true;
        c();
    }

    public final void t(float f10) {
        this.f4383o = f10;
        this.f4387s = true;
        c();
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("VGroup: ");
        sb2.append(this.f4379k);
        List list = this.f4371c;
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            i iVar = (i) list.get(i10);
            sb2.append("\t");
            sb2.append(iVar.toString());
            sb2.append("\n");
        }
        return sb2.toString();
    }

    public final void u(float f10) {
        this.f4384p = f10;
        this.f4387s = true;
        c();
    }

    public final void v(float f10) {
        this.f4385q = f10;
        this.f4387s = true;
        c();
    }

    public final void w(float f10) {
        this.f4386r = f10;
        this.f4387s = true;
        c();
    }
}
