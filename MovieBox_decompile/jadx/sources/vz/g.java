package vz;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import okhttp3.internal.http2.Settings;
import org.mvel2.asm.ClassTooLargeException;

public class g extends f {
    private int A;
    private d B;
    private c C;
    private int D;

    private int f73889c;

    private final x f73890d;

    private int f73891e;

    private int f73892f;

    private int f73893g;

    private int f73894h;

    private int[] f73895i;

    private m f73896j;

    private m f73897k;

    private s f73898l;

    private s f73899m;

    private int f73900n;

    private d f73901o;

    private int f73902p;

    private int f73903q;

    private int f73904r;

    private int f73905s;

    private d f73906t;

    private b f73907u;

    private b f73908v;

    private b f73909w;

    private b f73910x;

    private u f73911y;

    private int f73912z;

    public g(int i10) {
        this(null, i10);
    }

    private c[] n() {
        c.a aVar = new c.a();
        aVar.b(this.C);
        for (m mVar = this.f73896j; mVar != null; mVar = (m) mVar.f73940b) {
            mVar.e(aVar);
        }
        for (s sVar = this.f73898l; sVar != null; sVar = (s) sVar.f73987b) {
            sVar.I(aVar);
        }
        return aVar.d();
    }

    private byte[] q(byte[] bArr, boolean z10) {
        c[] cVarArrN = n();
        this.f73896j = null;
        this.f73897k = null;
        this.f73898l = null;
        this.f73899m = null;
        this.f73907u = null;
        this.f73908v = null;
        this.f73909w = null;
        this.f73910x = null;
        this.f73911y = null;
        this.f73912z = 0;
        this.A = 0;
        this.B = null;
        this.C = null;
        this.D = z10 ? 3 : 0;
        new e(bArr, 0, false).a(this, cVarArrN, (z10 ? 8 : 0) | 256);
        return r();
    }

    @Override
    public final void a(int i10, int i11, String str, String str2, String str3, String[] strArr) {
        this.f73889c = i10;
        this.f73891e = i11;
        x xVar = this.f73890d;
        int i12 = i10 & Settings.DEFAULT_INITIAL_WINDOW_SIZE;
        this.f73892f = xVar.f0(i12, str);
        if (str2 != null) {
            this.f73904r = this.f73890d.D(str2);
        }
        this.f73893g = str3 == null ? 0 : this.f73890d.e(str3).f74041a;
        if (strArr != null && strArr.length > 0) {
            int length = strArr.length;
            this.f73894h = length;
            this.f73895i = new int[length];
            for (int i13 = 0; i13 < this.f73894h; i13++) {
                this.f73895i[i13] = this.f73890d.e(strArr[i13]).f74041a;
            }
        }
        if (this.D != 1 || i12 < 51) {
            return;
        }
        this.D = 2;
    }

    @Override
    public final a b(String str, boolean z10) {
        d dVar = new d();
        dVar.k(this.f73890d.D(str)).k(0);
        if (z10) {
            b bVar = new b(this.f73890d, dVar, this.f73907u);
            this.f73907u = bVar;
            return bVar;
        }
        b bVar2 = new b(this.f73890d, dVar, this.f73908v);
        this.f73908v = bVar2;
        return bVar2;
    }

    @Override
    public final void c(c cVar) {
        cVar.f73875c = this.C;
        this.C = cVar;
    }

    @Override
    public final l e(int i10, String str, String str2, String str3, Object obj) {
        m mVar = new m(this.f73890d, i10, str, str2, str3, obj);
        if (this.f73896j == null) {
            this.f73896j = mVar;
        } else {
            this.f73897k.f73940b = mVar;
        }
        this.f73897k = mVar;
        return mVar;
    }

    @Override
    public final void f(String str, String str2, String str3, int i10) {
        if (this.f73901o == null) {
            this.f73901o = new d();
        }
        w wVarE = this.f73890d.e(str);
        if (wVarE.f74047g == 0) {
            this.f73900n++;
            this.f73901o.k(wVarE.f74041a);
            this.f73901o.k(str2 == null ? 0 : this.f73890d.e(str2).f74041a);
            this.f73901o.k(str3 != null ? this.f73890d.D(str3) : 0);
            this.f73901o.k(i10);
            wVarE.f74047g = this.f73900n;
        }
    }

    @Override
    public final r g(int i10, String str, String str2, String str3, String[] strArr) {
        s sVar = new s(this.f73890d, i10, str, str2, str3, strArr, this.D);
        if (this.f73898l == null) {
            this.f73898l = sVar;
        } else {
            this.f73899m.f73987b = sVar;
        }
        this.f73899m = sVar;
        return sVar;
    }

    @Override
    public final t h(String str, int i10, String str2) {
        x xVar = this.f73890d;
        u uVar = new u(xVar, xVar.y(str).f74041a, i10, str2 == null ? 0 : this.f73890d.D(str2));
        this.f73911y = uVar;
        return uVar;
    }

    @Override
    public void i(String str) {
        this.f73912z = this.f73890d.e(str).f74041a;
    }

    @Override
    public void j(String str) {
        if (this.B == null) {
            this.B = new d();
        }
        this.A++;
        this.B.k(this.f73890d.e(str).f74041a);
    }

    @Override
    public final void k(String str, String str2, String str3) {
        this.f73902p = this.f73890d.e(str).f74041a;
        if (str2 == null || str3 == null) {
            return;
        }
        this.f73903q = this.f73890d.z(str2, str3);
    }

    @Override
    public final void l(String str, String str2) {
        if (str != null) {
            this.f73905s = this.f73890d.D(str);
        }
        if (str2 != null) {
            this.f73906t = new d().a(str2, 0, Integer.MAX_VALUE);
        }
    }

    @Override
    public final a m(int i10, z zVar, String str, boolean z10) {
        d dVar = new d();
        a0.a(i10, dVar);
        z.d(zVar, dVar);
        dVar.k(this.f73890d.D(str)).k(0);
        if (z10) {
            b bVar = new b(this.f73890d, dVar, this.f73909w);
            this.f73909w = bVar;
            return bVar;
        }
        b bVar2 = new b(this.f73890d, dVar, this.f73910x);
        this.f73910x = bVar2;
        return bVar2;
    }

    protected ClassLoader o() {
        return getClass().getClassLoader();
    }

    protected String p(String str, String str2) {
        ClassLoader classLoaderO = o();
        try {
            Class<?> cls = Class.forName(str.replace('/', '.'), false, classLoaderO);
            try {
                Class<?> cls2 = Class.forName(str2.replace('/', '.'), false, classLoaderO);
                if (cls.isAssignableFrom(cls2)) {
                    return str;
                }
                if (cls2.isAssignableFrom(cls)) {
                    return str2;
                }
                if (cls.isInterface() || cls2.isInterface()) {
                    return "java/lang/Object";
                }
                do {
                    cls = cls.getSuperclass();
                } while (!cls.isAssignableFrom(cls2));
                return cls.getName().replace('.', '/');
            } catch (ClassNotFoundException e10) {
                throw new TypeNotPresentException(str2, e10);
            }
        } catch (ClassNotFoundException e11) {
            throw new TypeNotPresentException(str, e11);
        }
    }

    public byte[] r() {
        int iJ;
        int i10;
        int i11;
        int iA = (this.f73894h * 2) + 24;
        int i12 = 0;
        for (m mVar = this.f73896j; mVar != null; mVar = (m) mVar.f73940b) {
            i12++;
            iA += mVar.f();
        }
        int i13 = 0;
        for (s sVar = this.f73898l; sVar != null; sVar = (s) sVar.f73987b) {
            i13++;
            iA += sVar.L();
        }
        d dVar = this.f73901o;
        if (dVar != null) {
            iA += dVar.f73879b + 8;
            this.f73890d.D("InnerClasses");
            iJ = 1;
        } else {
            iJ = 0;
        }
        if (this.f73902p != 0) {
            iJ++;
            iA += 10;
            this.f73890d.D("EnclosingMethod");
        }
        if ((this.f73891e & 4096) != 0 && (this.f73889c & Settings.DEFAULT_INITIAL_WINDOW_SIZE) < 49) {
            iJ++;
            iA += 6;
            this.f73890d.D("Synthetic");
        }
        if (this.f73904r != 0) {
            iJ++;
            iA += 8;
            this.f73890d.D(RequestParameters.SIGNATURE);
        }
        if (this.f73905s != 0) {
            iJ++;
            iA += 8;
            this.f73890d.D("SourceFile");
        }
        d dVar2 = this.f73906t;
        if (dVar2 != null) {
            iJ++;
            iA += dVar2.f73879b + 6;
            this.f73890d.D("SourceDebugExtension");
        }
        if ((this.f73891e & 131072) != 0) {
            iJ++;
            iA += 6;
            this.f73890d.D("Deprecated");
        }
        b bVar = this.f73907u;
        if (bVar != null) {
            iJ++;
            iA += bVar.f("RuntimeVisibleAnnotations");
        }
        b bVar2 = this.f73908v;
        if (bVar2 != null) {
            iJ++;
            iA += bVar2.f("RuntimeInvisibleAnnotations");
        }
        b bVar3 = this.f73909w;
        if (bVar3 != null) {
            iJ++;
            iA += bVar3.f("RuntimeVisibleTypeAnnotations");
        }
        b bVar4 = this.f73910x;
        if (bVar4 != null) {
            iJ++;
            iA += bVar4.f("RuntimeInvisibleTypeAnnotations");
        }
        if (this.f73890d.L() > 0) {
            iJ++;
            iA += this.f73890d.L();
        }
        u uVar = this.f73911y;
        if (uVar != null) {
            iJ += uVar.j();
            iA += this.f73911y.i();
        }
        if (this.f73912z != 0) {
            iJ++;
            iA += 8;
            this.f73890d.D("NestHost");
        }
        d dVar3 = this.B;
        if (dVar3 != null) {
            iJ++;
            iA += dVar3.f73879b + 8;
            this.f73890d.D("NestMembers");
        }
        c cVar = this.C;
        if (cVar != null) {
            int iC = iJ + cVar.c();
            iA += this.C.a(this.f73890d);
            iJ = iC;
        }
        int iQ = iA + this.f73890d.Q();
        int iP = this.f73890d.P();
        if (iP > 65535) {
            throw new ClassTooLargeException(this.f73890d.O(), iP);
        }
        d dVar4 = new d(iQ);
        dVar4.i(-889275714).i(this.f73889c);
        this.f73890d.e0(dVar4);
        dVar4.k((~((this.f73889c & Settings.DEFAULT_INITIAL_WINDOW_SIZE) < 49 ? 4096 : 0)) & this.f73891e).k(this.f73892f).k(this.f73893g);
        dVar4.k(this.f73894h);
        for (int i14 = 0; i14 < this.f73894h; i14++) {
            dVar4.k(this.f73895i[i14]);
        }
        dVar4.k(i12);
        for (m mVar2 = this.f73896j; mVar2 != null; mVar2 = (m) mVar2.f73940b) {
            mVar2.g(dVar4);
        }
        dVar4.k(i13);
        boolean zO = false;
        boolean zN = false;
        for (s sVar2 = this.f73898l; sVar2 != null; sVar2 = (s) sVar2.f73987b) {
            zO |= sVar2.O();
            zN |= sVar2.N();
            sVar2.S(dVar4);
        }
        dVar4.k(iJ);
        if (this.f73901o != null) {
            d dVarK = dVar4.k(this.f73890d.D("InnerClasses")).i(this.f73901o.f73879b + 2).k(this.f73900n);
            d dVar5 = this.f73901o;
            dVarK.h(dVar5.f73878a, 0, dVar5.f73879b);
        }
        if (this.f73902p != 0) {
            dVar4.k(this.f73890d.D("EnclosingMethod")).i(4).k(this.f73902p).k(this.f73903q);
        }
        if ((this.f73891e & 4096) != 0 && (this.f73889c & Settings.DEFAULT_INITIAL_WINDOW_SIZE) < 49) {
            dVar4.k(this.f73890d.D("Synthetic")).i(0);
        }
        if (this.f73904r != 0) {
            i10 = 2;
            dVar4.k(this.f73890d.D(RequestParameters.SIGNATURE)).i(2).k(this.f73904r);
        } else {
            i10 = 2;
        }
        if (this.f73905s != 0) {
            dVar4.k(this.f73890d.D("SourceFile")).i(i10).k(this.f73905s);
        }
        d dVar6 = this.f73906t;
        if (dVar6 != null) {
            int i15 = dVar6.f73879b;
            i11 = 0;
            dVar4.k(this.f73890d.D("SourceDebugExtension")).i(i15).h(this.f73906t.f73878a, 0, i15);
        } else {
            i11 = 0;
        }
        if ((this.f73891e & 131072) != 0) {
            dVar4.k(this.f73890d.D("Deprecated")).i(i11);
        }
        b bVar5 = this.f73907u;
        if (bVar5 != null) {
            bVar5.h(this.f73890d.D("RuntimeVisibleAnnotations"), dVar4);
        }
        b bVar6 = this.f73908v;
        if (bVar6 != null) {
            bVar6.h(this.f73890d.D("RuntimeInvisibleAnnotations"), dVar4);
        }
        b bVar7 = this.f73909w;
        if (bVar7 != null) {
            bVar7.h(this.f73890d.D("RuntimeVisibleTypeAnnotations"), dVar4);
        }
        b bVar8 = this.f73910x;
        if (bVar8 != null) {
            bVar8.h(this.f73890d.D("RuntimeInvisibleTypeAnnotations"), dVar4);
        }
        this.f73890d.d0(dVar4);
        u uVar2 = this.f73911y;
        if (uVar2 != null) {
            uVar2.k(dVar4);
        }
        if (this.f73912z != 0) {
            dVar4.k(this.f73890d.D("NestHost")).i(2).k(this.f73912z);
        }
        if (this.B != null) {
            d dVarK2 = dVar4.k(this.f73890d.D("NestMembers")).i(this.B.f73879b + 2).k(this.A);
            d dVar7 = this.B;
            dVarK2.h(dVar7.f73878a, 0, dVar7.f73879b);
        }
        c cVar2 = this.C;
        if (cVar2 != null) {
            cVar2.e(this.f73890d, dVar4);
        }
        return zN ? q(dVar4.f73878a, zO) : dVar4.f73878a;
    }

    public g(e eVar, int i10) {
        super(458752);
        this.f73890d = eVar == null ? new x(this) : new x(this, eVar);
        if ((i10 & 2) != 0) {
            this.D = 4;
        } else if ((i10 & 1) != 0) {
            this.D = 1;
        } else {
            this.D = 0;
        }
    }

    @Override
    public final void d() {
    }
}
