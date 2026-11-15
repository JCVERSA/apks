package com.google.android.exoplayer2.extractor.flv;

import com.google.android.exoplayer2.util.d0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import i9.k;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

final class c extends TagPayloadReader {

    private long f24408b;

    private long[] f24409c;

    private long[] f24410d;

    public c() {
        super(new k());
        this.f24408b = C.TIME_UNSET;
        this.f24409c = new long[0];
        this.f24410d = new long[0];
    }

    private static Boolean g(d0 d0Var) {
        return Boolean.valueOf(d0Var.D() == 1);
    }

    private static Object h(d0 d0Var, int i10) {
        if (i10 == 0) {
            return j(d0Var);
        }
        if (i10 == 1) {
            return g(d0Var);
        }
        if (i10 == 2) {
            return n(d0Var);
        }
        if (i10 == 3) {
            return l(d0Var);
        }
        if (i10 == 8) {
            return k(d0Var);
        }
        if (i10 == 10) {
            return m(d0Var);
        }
        if (i10 != 11) {
            return null;
        }
        return i(d0Var);
    }

    private static Date i(d0 d0Var) {
        Date date = new Date((long) j(d0Var).doubleValue());
        d0Var.Q(2);
        return date;
    }

    private static Double j(d0 d0Var) {
        return Double.valueOf(Double.longBitsToDouble(d0Var.w()));
    }

    private static HashMap k(d0 d0Var) {
        int iH = d0Var.H();
        HashMap map = new HashMap(iH);
        for (int i10 = 0; i10 < iH; i10++) {
            String strN = n(d0Var);
            Object objH = h(d0Var, o(d0Var));
            if (objH != null) {
                map.put(strN, objH);
            }
        }
        return map;
    }

    private static HashMap l(d0 d0Var) {
        HashMap map = new HashMap();
        while (true) {
            String strN = n(d0Var);
            int iO = o(d0Var);
            if (iO == 9) {
                return map;
            }
            Object objH = h(d0Var, iO);
            if (objH != null) {
                map.put(strN, objH);
            }
        }
    }

    private static ArrayList m(d0 d0Var) {
        int iH = d0Var.H();
        ArrayList arrayList = new ArrayList(iH);
        for (int i10 = 0; i10 < iH; i10++) {
            Object objH = h(d0Var, o(d0Var));
            if (objH != null) {
                arrayList.add(objH);
            }
        }
        return arrayList;
    }

    private static String n(d0 d0Var) {
        int iJ = d0Var.J();
        int iE = d0Var.e();
        d0Var.Q(iJ);
        return new String(d0Var.d(), iE, iJ);
    }

    private static int o(d0 d0Var) {
        return d0Var.D();
    }

    @Override
    protected boolean b(d0 d0Var) {
        return true;
    }

    @Override
    protected boolean c(d0 d0Var, long j10) {
        if (o(d0Var) != 2 || !"onMetaData".equals(n(d0Var)) || d0Var.a() == 0 || o(d0Var) != 8) {
            return false;
        }
        HashMap mapK = k(d0Var);
        Object obj = mapK.get("duration");
        if (obj instanceof Double) {
            double dDoubleValue = ((Double) obj).doubleValue();
            if (dDoubleValue > 0.0d) {
                this.f24408b = (long) (dDoubleValue * 1000000.0d);
            }
        }
        Object obj2 = mapK.get("keyframes");
        if (obj2 instanceof Map) {
            Map map = (Map) obj2;
            Object obj3 = map.get("filepositions");
            Object obj4 = map.get("times");
            if ((obj3 instanceof List) && (obj4 instanceof List)) {
                List list = (List) obj3;
                List list2 = (List) obj4;
                int size = list2.size();
                this.f24409c = new long[size];
                this.f24410d = new long[size];
                for (int i10 = 0; i10 < size; i10++) {
                    Object obj5 = list.get(i10);
                    Object obj6 = list2.get(i10);
                    if (!(obj6 instanceof Double) || !(obj5 instanceof Double)) {
                        this.f24409c = new long[0];
                        this.f24410d = new long[0];
                        break;
                    }
                    this.f24409c[i10] = (long) (((Double) obj6).doubleValue() * 1000000.0d);
                    this.f24410d[i10] = ((Double) obj5).longValue();
                }
            }
        }
        return false;
    }

    public long d() {
        return this.f24408b;
    }

    public long[] e() {
        return this.f24410d;
    }

    public long[] f() {
        return this.f24409c;
    }
}
