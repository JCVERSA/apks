package defpackage;

import androidx.media3.common.C;
import com.transsion.xuanniao.account.model.data.CloudConfigRes;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class wbe extends xbe {
    public long b;
    public long[] c;
    public long[] d;

    public wbe() {
        super(new s8e());
        this.b = C.TIME_UNSET;
        this.c = new long[0];
        this.d = new long[0];
    }

    public static Double g(u4h u4hVar) {
        return Double.valueOf(Double.longBitsToDouble(u4hVar.N()));
    }

    public static Object h(u4h u4hVar, int i) {
        if (i == 0) {
            return g(u4hVar);
        }
        if (i == 1) {
            return Boolean.valueOf(u4hVar.G() == 1);
        }
        if (i == 2) {
            return i(u4hVar);
        }
        if (i != 3) {
            if (i == 8) {
                return j(u4hVar);
            }
            if (i != 10) {
                if (i != 11) {
                    return null;
                }
                Date date = new Date((long) g(u4hVar).doubleValue());
                u4hVar.m(2);
                return date;
            }
            int iJ = u4hVar.J();
            ArrayList arrayList = new ArrayList(iJ);
            for (int i2 = 0; i2 < iJ; i2++) {
                Object objH = h(u4hVar, u4hVar.G());
                if (objH != null) {
                    arrayList.add(objH);
                }
            }
            return arrayList;
        }
        HashMap map = new HashMap();
        while (true) {
            String strI = i(u4hVar);
            int iG = u4hVar.G();
            if (iG == 9) {
                return map;
            }
            Object objH2 = h(u4hVar, iG);
            if (objH2 != null) {
                map.put(strI, objH2);
            }
        }
    }

    public static String i(u4h u4hVar) {
        int iK = u4hVar.K();
        int iW = u4hVar.w();
        u4hVar.m(iK);
        return new String(u4hVar.n(), iW, iK);
    }

    public static HashMap j(u4h u4hVar) {
        int iJ = u4hVar.J();
        HashMap map = new HashMap(iJ);
        for (int i = 0; i < iJ; i++) {
            String strI = i(u4hVar);
            Object objH = h(u4hVar, u4hVar.G());
            if (objH != null) {
                map.put(strI, objH);
            }
        }
        return map;
    }

    @Override
    public final boolean a(u4h u4hVar) {
        return true;
    }

    @Override
    public final boolean b(u4h u4hVar, long j) {
        if (u4hVar.G() == 2 && "onMetaData".equals(i(u4hVar)) && u4hVar.u() != 0 && u4hVar.G() == 8) {
            HashMap mapJ = j(u4hVar);
            Object obj = mapJ.get("duration");
            if (obj instanceof Double) {
                double dDoubleValue = ((Double) obj).doubleValue();
                if (dDoubleValue > 0.0d) {
                    this.b = (long) (dDoubleValue * 1000000.0d);
                }
            }
            Object obj2 = mapJ.get("keyframes");
            if (obj2 instanceof Map) {
                Map map = (Map) obj2;
                Object obj3 = map.get("filepositions");
                Object obj4 = map.get(CloudConfigRes.UNIT_TIMES);
                if ((obj3 instanceof List) && (obj4 instanceof List)) {
                    List list = (List) obj3;
                    List list2 = (List) obj4;
                    int size = list2.size();
                    this.c = new long[size];
                    this.d = new long[size];
                    for (int i = 0; i < size; i++) {
                        Object obj5 = list.get(i);
                        Object obj6 = list2.get(i);
                        if (!(obj6 instanceof Double) || !(obj5 instanceof Double)) {
                            this.c = new long[0];
                            this.d = new long[0];
                            break;
                        }
                        this.c[i] = (long) (((Double) obj6).doubleValue() * 1000000.0d);
                        this.d[i] = ((Double) obj5).longValue();
                    }
                }
            }
        }
        return false;
    }

    public final long d() {
        return this.b;
    }

    public final long[] e() {
        return this.d;
    }

    public final long[] f() {
        return this.c;
    }
}
