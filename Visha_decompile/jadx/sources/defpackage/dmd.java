package defpackage;

import com.transsion.json.b.p;
import com.transsion.json.t;
import com.transsion.json.w;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class dmd {
    public static final char[] f = "0123456789ABCDEF".toCharArray();
    public boolean d;
    public String e;
    public final Map b = new HashMap();
    public final List c = new ArrayList();
    public final p a = new p(w.a());

    public String a(Object obj) {
        return b(obj, t.SHALLOW, new uud(new StringBuilder()));
    }

    public String b(Object obj, t tVar, xqd xqdVar) {
        khd khdVarP = khd.p();
        khdVarP.i(this.e);
        khdVarP.m(this.d);
        khdVarP.k(xqdVar);
        khdVarP.f(tVar);
        khdVarP.e(this.a);
        khdVarP.j(this.b);
        khdVarP.s(this.c);
        try {
            String strY = khdVarP.y();
            if (strY == null || strY.trim().equals("")) {
                khdVarP.h(obj);
            } else {
                khdVarP.H();
                khdVarP.u(strY);
                khdVarP.h(obj);
                khdVarP.D();
            }
            return khdVarP.v().toString();
        } finally {
            khd.c();
        }
    }

    public dmd c(boolean z) {
        this.d = z;
        return this;
    }

    public dmd d(String... strArr) {
        for (String str : strArr) {
            e(str);
        }
        return this;
    }

    public void e(String str) {
        int iLastIndexOf = str.lastIndexOf(46);
        if (iLastIndexOf > 0) {
            ctd ctdVar = new ctd(str.substring(0, iLastIndexOf), true);
            if (!ctdVar.c()) {
                this.c.add(ctdVar);
            }
        }
        this.c.add(new ctd(str, false));
    }
}
