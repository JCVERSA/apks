package androidx.datastore.preferences.protobuf;

import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

abstract class d1 {

    private static final Class f8429a = A();

    private static final h1 f8430b = B();

    private static final h1 f8431c = new j1();

    private static Class A() {
        if (x0.f8619d) {
            return null;
        }
        try {
            return Class.forName("androidx.datastore.preferences.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            return null;
        }
    }

    private static h1 B() {
        try {
            Class clsC = C();
            if (clsC == null) {
                return null;
            }
            return (h1) clsC.getConstructor(null).newInstance(null);
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Class C() {
        if (x0.f8619d) {
            return null;
        }
        try {
            return Class.forName("androidx.datastore.preferences.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            return null;
        }
    }

    static void D(p pVar, Object obj, Object obj2) {
        s sVarC = pVar.c(obj2);
        if (sVarC.k()) {
            return;
        }
        pVar.d(obj).r(sVarC);
    }

    static void E(i0 i0Var, Object obj, Object obj2, long j10) {
        k1.W(obj, j10, i0Var.mergeFrom(k1.G(obj, j10), k1.G(obj2, j10)));
    }

    static void F(h1 h1Var, Object obj, Object obj2) {
        h1Var.p(obj, h1Var.k(h1Var.g(obj), h1Var.g(obj2)));
    }

    public static void G(Class cls) {
        Class cls2;
        if (!GeneratedMessageLite.class.isAssignableFrom(cls) && !x0.f8619d && (cls2 = f8429a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    static boolean H(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    static Object I(Object obj, int i10, int i11, Object obj2, h1 h1Var) {
        if (obj2 == null) {
            obj2 = h1Var.f(obj);
        }
        h1Var.e(obj2, i10, i11);
        return obj2;
    }

    public static h1 J() {
        return f8430b;
    }

    public static h1 K() {
        return f8431c;
    }

    public static void L(int i10, List list, Writer writer, boolean z10) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeBoolList(i10, list, z10);
    }

    public static void M(int i10, List list, Writer writer) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeBytesList(i10, list);
    }

    public static void N(int i10, List list, Writer writer, boolean z10) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeDoubleList(i10, list, z10);
    }

    public static void O(int i10, List list, Writer writer, boolean z10) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeEnumList(i10, list, z10);
    }

    public static void P(int i10, List list, Writer writer, boolean z10) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeFixed32List(i10, list, z10);
    }

    public static void Q(int i10, List list, Writer writer, boolean z10) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeFixed64List(i10, list, z10);
    }

    public static void R(int i10, List list, Writer writer, boolean z10) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeFloatList(i10, list, z10);
    }

    public static void S(int i10, List list, Writer writer, b1 b1Var) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.a(i10, list, b1Var);
    }

    public static void T(int i10, List list, Writer writer, boolean z10) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeInt32List(i10, list, z10);
    }

    public static void U(int i10, List list, Writer writer, boolean z10) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeInt64List(i10, list, z10);
    }

    public static void V(int i10, List list, Writer writer, b1 b1Var) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.f(i10, list, b1Var);
    }

    public static void W(int i10, List list, Writer writer, boolean z10) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeSFixed32List(i10, list, z10);
    }

    public static void X(int i10, List list, Writer writer, boolean z10) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeSFixed64List(i10, list, z10);
    }

    public static void Y(int i10, List list, Writer writer, boolean z10) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeSInt32List(i10, list, z10);
    }

    public static void Z(int i10, List list, Writer writer, boolean z10) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeSInt64List(i10, list, z10);
    }

    static int a(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return z10 ? CodedOutputStream.S(i10) + CodedOutputStream.C(size) : size * CodedOutputStream.e(i10, true);
    }

    public static void a0(int i10, List list, Writer writer) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeStringList(i10, list);
    }

    static int b(List list) {
        return list.size();
    }

    public static void b0(int i10, List list, Writer writer, boolean z10) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeUInt32List(i10, list, z10);
    }

    static int c(int i10, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iS = size * CodedOutputStream.S(i10);
        for (int i11 = 0; i11 < list.size(); i11++) {
            iS += CodedOutputStream.i((ByteString) list.get(i11));
        }
        return iS;
    }

    public static void c0(int i10, List list, Writer writer, boolean z10) {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeUInt64List(i10, list, z10);
    }

    static int d(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iE = e(list);
        return z10 ? CodedOutputStream.S(i10) + CodedOutputStream.C(iE) : iE + (size * CodedOutputStream.S(i10));
    }

    static int e(List list) {
        int iM;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof v) {
            v vVar = (v) list;
            iM = 0;
            while (i10 < size) {
                iM += CodedOutputStream.m(vVar.getInt(i10));
                i10++;
            }
        } else {
            iM = 0;
            while (i10 < size) {
                iM += CodedOutputStream.m(((Integer) list.get(i10)).intValue());
                i10++;
            }
        }
        return iM;
    }

    static int f(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return z10 ? CodedOutputStream.S(i10) + CodedOutputStream.C(size * 4) : size * CodedOutputStream.n(i10, 0);
    }

    static int g(List list) {
        return list.size() * 4;
    }

    static int h(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return z10 ? CodedOutputStream.S(i10) + CodedOutputStream.C(size * 8) : size * CodedOutputStream.p(i10, 0L);
    }

    static int i(List list) {
        return list.size() * 8;
    }

    static int j(int i10, List list, b1 b1Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iT = 0;
        for (int i11 = 0; i11 < size; i11++) {
            iT += CodedOutputStream.t(i10, (n0) list.get(i11), b1Var);
        }
        return iT;
    }

    static int k(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iL = l(list);
        return z10 ? CodedOutputStream.S(i10) + CodedOutputStream.C(iL) : iL + (size * CodedOutputStream.S(i10));
    }

    static int l(List list) {
        int iX;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof v) {
            v vVar = (v) list;
            iX = 0;
            while (i10 < size) {
                iX += CodedOutputStream.x(vVar.getInt(i10));
                i10++;
            }
        } else {
            iX = 0;
            while (i10 < size) {
                iX += CodedOutputStream.x(((Integer) list.get(i10)).intValue());
                i10++;
            }
        }
        return iX;
    }

    static int m(int i10, List list, boolean z10) {
        if (list.size() == 0) {
            return 0;
        }
        int iN = n(list);
        return z10 ? CodedOutputStream.S(i10) + CodedOutputStream.C(iN) : iN + (list.size() * CodedOutputStream.S(i10));
    }

    static int n(List list) {
        int iZ;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof f0) {
            f0 f0Var = (f0) list;
            iZ = 0;
            while (i10 < size) {
                iZ += CodedOutputStream.z(f0Var.getLong(i10));
                i10++;
            }
        } else {
            iZ = 0;
            while (i10 < size) {
                iZ += CodedOutputStream.z(((Long) list.get(i10)).longValue());
                i10++;
            }
        }
        return iZ;
    }

    static int o(int i10, Object obj, b1 b1Var) {
        return obj instanceof a0 ? CodedOutputStream.A(i10, (a0) obj) : CodedOutputStream.D(i10, (n0) obj, b1Var);
    }

    static int p(int i10, List list, b1 b1Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iS = CodedOutputStream.S(i10) * size;
        for (int i11 = 0; i11 < size; i11++) {
            Object obj = list.get(i11);
            iS += obj instanceof a0 ? CodedOutputStream.B((a0) obj) : CodedOutputStream.F((n0) obj, b1Var);
        }
        return iS;
    }

    static int q(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iR = r(list);
        return z10 ? CodedOutputStream.S(i10) + CodedOutputStream.C(iR) : iR + (size * CodedOutputStream.S(i10));
    }

    static int r(List list) {
        int iN;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof v) {
            v vVar = (v) list;
            iN = 0;
            while (i10 < size) {
                iN += CodedOutputStream.N(vVar.getInt(i10));
                i10++;
            }
        } else {
            iN = 0;
            while (i10 < size) {
                iN += CodedOutputStream.N(((Integer) list.get(i10)).intValue());
                i10++;
            }
        }
        return iN;
    }

    static int s(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iT = t(list);
        return z10 ? CodedOutputStream.S(i10) + CodedOutputStream.C(iT) : iT + (size * CodedOutputStream.S(i10));
    }

    static int t(List list) {
        int iP;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof f0) {
            f0 f0Var = (f0) list;
            iP = 0;
            while (i10 < size) {
                iP += CodedOutputStream.P(f0Var.getLong(i10));
                i10++;
            }
        } else {
            iP = 0;
            while (i10 < size) {
                iP += CodedOutputStream.P(((Long) list.get(i10)).longValue());
                i10++;
            }
        }
        return iP;
    }

    static int u(int i10, List list) {
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        int iS = CodedOutputStream.S(i10) * size;
        if (list instanceof b0) {
            b0 b0Var = (b0) list;
            while (i11 < size) {
                Object raw = b0Var.getRaw(i11);
                iS += raw instanceof ByteString ? CodedOutputStream.i((ByteString) raw) : CodedOutputStream.R((String) raw);
                i11++;
            }
        } else {
            while (i11 < size) {
                Object obj = list.get(i11);
                iS += obj instanceof ByteString ? CodedOutputStream.i((ByteString) obj) : CodedOutputStream.R((String) obj);
                i11++;
            }
        }
        return iS;
    }

    static int v(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iW = w(list);
        return z10 ? CodedOutputStream.S(i10) + CodedOutputStream.C(iW) : iW + (size * CodedOutputStream.S(i10));
    }

    static int w(List list) {
        int iU;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof v) {
            v vVar = (v) list;
            iU = 0;
            while (i10 < size) {
                iU += CodedOutputStream.U(vVar.getInt(i10));
                i10++;
            }
        } else {
            iU = 0;
            while (i10 < size) {
                iU += CodedOutputStream.U(((Integer) list.get(i10)).intValue());
                i10++;
            }
        }
        return iU;
    }

    static int x(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iY = y(list);
        return z10 ? CodedOutputStream.S(i10) + CodedOutputStream.C(iY) : iY + (size * CodedOutputStream.S(i10));
    }

    static int y(List list) {
        int iW;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof f0) {
            f0 f0Var = (f0) list;
            iW = 0;
            while (i10 < size) {
                iW += CodedOutputStream.W(f0Var.getLong(i10));
                i10++;
            }
        } else {
            iW = 0;
            while (i10 < size) {
                iW += CodedOutputStream.W(((Long) list.get(i10)).longValue());
                i10++;
            }
        }
        return iW;
    }

    static Object z(Object obj, int i10, List list, w.c cVar, Object obj2, h1 h1Var) {
        if (cVar == null) {
            return obj2;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i11 = 0;
            for (int i12 = 0; i12 < size; i12++) {
                Integer num = (Integer) list.get(i12);
                int iIntValue = num.intValue();
                if (cVar.isInRange(iIntValue)) {
                    if (i12 != i11) {
                        list.set(i11, num);
                    }
                    i11++;
                } else {
                    obj2 = I(obj, i10, iIntValue, obj2, h1Var);
                }
            }
            if (i11 != size) {
                list.subList(i11, size).clear();
            }
        } else {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                int iIntValue2 = ((Integer) it.next()).intValue();
                if (!cVar.isInRange(iIntValue2)) {
                    obj2 = I(obj, i10, iIntValue2, obj2, h1Var);
                    it.remove();
                }
            }
        }
        return obj2;
    }
}
