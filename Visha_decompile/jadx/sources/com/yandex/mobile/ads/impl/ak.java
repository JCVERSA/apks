package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.net.Uri;
import defpackage.e74;
import defpackage.ky5;
import defpackage.y45;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Lambda;
import org.mozilla.javascript.ES6Iterator;

public abstract class ak<T> extends i62<o3, o8<T>> {
    private final o3 C;
    private final String D;
    private final cd1<T> E;
    private final sx1 F;
    private final o4 G;
    private final e8 H;
    private final Context I;
    private final mq1 J;

    public static final class a extends Lambda implements e74 {
        public static final a b = new a();

        public a() {
            super(1);
        }

        public static String a(hn1 hn1Var) {
            y45.j(hn1Var, "it");
            return hn1Var.getKey() + "=" + hn1Var.getValue();
        }

        @Override
        public final Object invoke(Object obj) {
            return a((hn1) obj);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ak(Context context, o3 o3Var, String str, String str2, cd1 cd1Var, eq1 eq1Var, qk.a aVar, lq1 lq1Var, sx1 sx1Var, int i) {
        sx1 sx1VarA;
        if ((i & 256) != 0) {
            sx1.a.getClass();
            sx1VarA = sx1.a.a(context);
        } else {
            sx1VarA = sx1Var;
        }
        this(context, o3Var, str, str2, cd1Var, eq1Var, aVar, lq1Var, sx1VarA, new o4(), new e8());
    }

    private final o8<T> a(xc1 xc1Var, Map<String, String> map, ts tsVar) {
        cd1<T> cd1Var = this.E;
        Context context = this.I;
        y45.i(context, "context");
        xi2 xi2VarA = cd1Var.a(context, this.C);
        vh0 vh0Var = vh0.L;
        String strA = nf0.a(map, vh0Var);
        vh0Var.a();
        sp0.e(new Object[0]);
        this.F.a(strA);
        return xi2VarA.a(xc1Var, map, tsVar);
    }

    @Override
    public final byte[] b() throws ai {
        if (1 == f()) {
            try {
                String str = this.D;
                Charset charsetForName = Charset.forName("UTF-8");
                y45.i(charsetForName, "forName(...)");
                byte[] bytes = str.getBytes(charsetForName);
                y45.i(bytes, "getBytes(...)");
                return bytes;
            } catch (UnsupportedEncodingException unused) {
                sp0.a(new Object[0]);
            }
        }
        return null;
    }

    @Override
    public Map<String, String> e() {
        Map mapE = ky5.e();
        String strA = this.F.a();
        if (strA != null) {
            sp0.e(new Object[0]);
        }
        String strA2 = vh0.N.a();
        o4 o4Var = this.G;
        Context context = this.I;
        y45.i(context, "context");
        mapE.put(strA2, o4Var.b(context));
        String strA3 = vh0.O.a();
        o4 o4Var2 = this.G;
        Context context2 = this.I;
        y45.i(context2, "context");
        mapE.put(strA3, o4Var2.a(context2));
        mapE.putAll(this.C.k().d());
        return ky5.d(mapE);
    }

    @Override
    public final String l() {
        StringBuilder sb = new StringBuilder();
        if (f() == 0) {
            sb.append(this.D);
        }
        List<hn1> listF = this.C.k().f();
        if (sb.length() > 0 && !listF.isEmpty()) {
            sb.append("&");
        }
        sb.append(defpackage.i81.y0(listF, "&", null, null, 0, null, a.b, 30, null));
        String string = Uri.parse(super.l()).buildUpon().encodedQuery(sb.toString()).build().toString();
        y45.i(string, "toString(...)");
        return string;
    }

    @Override
    public final mq1 w() {
        return this.J;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ak(Context context, o3 o3Var, String str, String str2, cd1<T> cd1Var, eq1 eq1Var, qk.a<o8<T>> aVar, lq1<o3, o8<T>> lq1Var, sx1 sx1Var, o4 o4Var, e8 e8Var) {
        super(context, o3Var, 1, str, aVar, o3Var, lq1Var, eq1Var, 1792);
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(str, "url");
        y45.j(str2, "query");
        y45.j(cd1Var, "networkResponseParserCreator");
        y45.j(aVar, "listener");
        y45.j(lq1Var, "requestReporter");
        y45.j(sx1Var, "sessionStorage");
        y45.j(o4Var, "adIdHeaderProvider");
        y45.j(e8Var, "adRequestRetryPolicyCreator");
        o3Var.k().getClass();
        this.C = o3Var;
        this.D = str2;
        this.E = cd1Var;
        this.F = sx1Var;
        this.G = o4Var;
        this.H = e8Var;
        this.I = context.getApplicationContext();
        sp0.e(new Object[0]);
        a(context);
        this.J = mq1.e;
    }

    @Override
    public final si2 b(si2 si2Var) {
        y45.j(si2Var, "requestError");
        sp0.c(new Object[0]);
        int i = r3.d;
        return super.b((si2) r3.a.a(si2Var.b));
    }

    @Override
    public final xq1<o8<T>> a(xc1 xc1Var, int i) {
        ts tsVar;
        y45.j(xc1Var, "response");
        a(Integer.valueOf(i));
        if (b(xc1Var, i)) {
            Map<String, String> mapL = xc1Var.c;
            if (mapL == null) {
                mapL = kotlin.collections.a.l();
            }
            a(mapL);
            String strA = nf0.a(mapL, vh0.f);
            if (strA == null) {
                strA = "";
            }
            ts.c.getClass();
            y45.j(strA, ES6Iterator.VALUE_PROPERTY);
            ts[] tsVarArrValues = ts.values();
            int length = tsVarArrValues.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    tsVar = null;
                    break;
                }
                tsVar = tsVarArrValues[i2];
                if (y45.e(tsVar.a(), strA)) {
                    break;
                }
                i2++;
            }
            if (tsVar == this.C.b()) {
                o8<T> o8VarA = a(xc1Var, mapL, tsVar);
                if (204 != i) {
                    xq1<o8<T>> xq1VarA = xq1.a(o8VarA, wh0.a(xc1Var));
                    y45.i(xq1VarA, "success(...)");
                    return xq1VarA;
                }
            }
        }
        int i3 = r3.d;
        xq1<o8<T>> xq1VarA2 = xq1.a(r3.a.a(xc1Var));
        y45.i(xq1VarA2, "error(...)");
        return xq1VarA2;
    }

    public boolean b(xc1 xc1Var, int i) {
        y45.j(xc1Var, "networkResponse");
        if (200 != i) {
            return false;
        }
        y45.j(xc1Var, "networkResponse");
        byte[] bArr = xc1Var.b;
        if (bArr != null) {
            return (bArr.length == 0) ^ true;
        }
        return false;
    }

    private final void a(Context context) {
        Integer numR;
        int i = pw1.l;
        ju1 ju1VarA = pw1.a.a().a(context);
        a(this.H.a(context, (ju1VarA == null || (numR = ju1VarA.R()) == null) ? this.C.h() : numR.intValue()));
    }
}
