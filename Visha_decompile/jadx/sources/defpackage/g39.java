package defpackage;

import androidx.media3.common.C;
import com.google.android.exoplayer2.extractor.flv.TagPayloadReader;
import com.transsion.xuanniao.account.model.data.CloudConfigRes;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class g39 extends TagPayloadReader {
    public long b;
    public long[] c;
    public long[] d;

    public g39() {
        super(new s33());
        this.b = C.TIME_UNSET;
        this.c = new long[0];
        this.d = new long[0];
    }

    public static Boolean g(qw7 qw7Var) {
        return Boolean.valueOf(qw7Var.C() == 1);
    }

    public static Object h(qw7 qw7Var, int i) {
        if (i == 0) {
            return j(qw7Var);
        }
        if (i == 1) {
            return g(qw7Var);
        }
        if (i == 2) {
            return n(qw7Var);
        }
        if (i == 3) {
            return l(qw7Var);
        }
        if (i == 8) {
            return k(qw7Var);
        }
        if (i == 10) {
            return m(qw7Var);
        }
        if (i != 11) {
            return null;
        }
        return i(qw7Var);
    }

    public static Date i(qw7 qw7Var) {
        Date date = new Date((long) j(qw7Var).doubleValue());
        qw7Var.P(2);
        return date;
    }

    public static Double j(qw7 qw7Var) {
        return Double.valueOf(Double.longBitsToDouble(qw7Var.v()));
    }

    public static HashMap k(qw7 qw7Var) {
        int iG = qw7Var.G();
        HashMap map = new HashMap(iG);
        for (int i = 0; i < iG; i++) {
            String strN = n(qw7Var);
            Object objH = h(qw7Var, o(qw7Var));
            if (objH != null) {
                map.put(strN, objH);
            }
        }
        return map;
    }

    public static HashMap l(qw7 qw7Var) {
        HashMap map = new HashMap();
        while (true) {
            String strN = n(qw7Var);
            int iO = o(qw7Var);
            if (iO == 9) {
                return map;
            }
            Object objH = h(qw7Var, iO);
            if (objH != null) {
                map.put(strN, objH);
            }
        }
    }

    public static ArrayList m(qw7 qw7Var) {
        int iG = qw7Var.G();
        ArrayList arrayList = new ArrayList(iG);
        for (int i = 0; i < iG; i++) {
            Object objH = h(qw7Var, o(qw7Var));
            if (objH != null) {
                arrayList.add(objH);
            }
        }
        return arrayList;
    }

    public static String n(qw7 qw7Var) {
        int I = qw7Var.I();
        int iE = qw7Var.e();
        qw7Var.P(I);
        return new String(qw7Var.d(), iE, I);
    }

    public static int o(qw7 qw7Var) {
        return qw7Var.C();
    }

    @Override
    public boolean b(qw7 qw7Var) {
        return true;
    }

    @Override
    public boolean c(qw7 qw7Var, long j) {
        if (o(qw7Var) != 2 || !"onMetaData".equals(n(qw7Var)) || qw7Var.a() == 0 || o(qw7Var) != 8) {
            return false;
        }
        HashMap mapK = k(qw7Var);
        Object obj = mapK.get("duration");
        if (obj instanceof Double) {
            double dDoubleValue = ((Double) obj).doubleValue();
            if (dDoubleValue > 0.0d) {
                this.b = (long) (dDoubleValue * 1000000.0d);
            }
        }
        Object obj2 = mapK.get("keyframes");
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
        return false;
    }

    public long d() {
        return this.b;
    }

    public long[] e() {
        return this.d;
    }

    public long[] f() {
        return this.c;
    }
}
