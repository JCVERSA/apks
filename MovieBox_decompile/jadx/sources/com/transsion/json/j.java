package com.transsion.json;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class j {

    public static final char[] f44719f = "0123456789ABCDEF".toCharArray();

    private boolean f44723d;

    private String f44724e;

    private final Map f44721b = new HashMap();

    private final List f44722c = new ArrayList();

    private final com.transsion.json.b.p f44720a = new com.transsion.json.b.p(w.a());

    public j a(boolean z10) {
        this.f44723d = z10;
        return this;
    }

    public j b(String... strArr) {
        for (String str : strArr) {
            e(str);
        }
        return this;
    }

    public String c(Object obj) {
        return d(obj, t.SHALLOW, new s(new StringBuilder()));
    }

    protected String d(Object obj, t tVar, p pVar) {
        h hVarQ = h.q();
        hVarQ.k(this.f44724e);
        hVarQ.m(this.f44723d);
        hVarQ.g(pVar);
        hVarQ.h(tVar);
        hVarQ.e(this.f44720a);
        hVarQ.l(this.f44721b);
        hVarQ.s(this.f44722c);
        try {
            String strY = hVarQ.y();
            if (strY == null || strY.trim().equals("")) {
                hVarQ.j(obj);
            } else {
                hVarQ.H();
                hVarQ.u(strY);
                hVarQ.j(obj);
                hVarQ.D();
            }
            return hVarQ.v().toString();
        } finally {
            h.c();
        }
    }

    protected void e(String str) {
        int iLastIndexOf = str.lastIndexOf(46);
        if (iLastIndexOf > 0) {
            r rVar = new r(str.substring(0, iLastIndexOf), true);
            if (!rVar.c()) {
                this.f44722c.add(rVar);
            }
        }
        this.f44722c.add(new r(str, false));
    }
}
