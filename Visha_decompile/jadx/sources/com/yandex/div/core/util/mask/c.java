package com.yandex.div.core.util.mask;

import defpackage.e74;
import defpackage.wn8;
import defpackage.y45;
import defpackage.zfb;
import org.json.JSONException;

public final class c extends BaseInputMask {
    public final e74 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(e74 e74Var) {
        super(d.b());
        y45.j(e74Var, "onError");
        this.e = e74Var;
    }

    public final void A(int i) {
        int i2 = 0;
        int i3 = 0;
        while (i2 < m().size() && i3 < i) {
            int i4 = i2 + 1;
            if (m().get(i2) instanceof BaseInputMask.a.C0282a) {
                i3++;
            }
            i2 = i4;
        }
        w(k(i2));
    }

    public final String B(String str) throws JSONException {
        String strC = d.c(str);
        if (y45.e(strC, o().c())) {
            return null;
        }
        return strC;
    }

    public final zfb C(String str) throws JSONException {
        String strB = B(str);
        if (strB == null) {
            return null;
        }
        D(strB);
        return zfb.a;
    }

    public final void D(String str) {
        y(new BaseInputMask.b(str, d.a(), o().a()), false);
    }

    @Override
    public void a(String str, Integer num) throws JSONException {
        y45.j(str, "newValue");
        e.a aVar = e.d;
        e eVarA = aVar.a(q(), str);
        if (num != null) {
            eVarA = new e(wn8.d(num.intValue() - eVarA.a(), 0), eVarA.a(), eVarA.b());
        }
        String strP = p();
        int iT = t(eVarA, str);
        String strP2 = p();
        String strB = B(strP2);
        if (strB == null) {
            e(eVarA, iT);
            return;
        }
        D(strB);
        BaseInputMask.v(this, strP2, 0, null, 4, null);
        e eVarA2 = aVar.a(strP, strP2);
        A(eVarA2.c() + eVarA2.a());
    }

    @Override
    public void r(Exception exc) {
        y45.j(exc, "exception");
        this.e.invoke(exc);
    }

    @Override
    public void s(String str) throws JSONException {
        y45.j(str, "newRawValue");
        C(str);
        super.s(str);
    }
}
