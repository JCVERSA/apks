package kotlin.reflect.jvm.internal.impl.protobuf;

import defpackage.ej5;
import defpackage.po0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class e {
    public static final e d = new e(true);
    public boolean b;
    public boolean c = false;
    public final h a = h.p(16);

    public static class a {
        public static final int[] a;
        public static final int[] b;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            b = iArr;
            try {
                iArr[WireFormat.FieldType.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                b[WireFormat.FieldType.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                b[WireFormat.FieldType.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                b[WireFormat.FieldType.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                b[WireFormat.FieldType.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                b[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                b[WireFormat.FieldType.FIXED32.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                b[WireFormat.FieldType.BOOL.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                b[WireFormat.FieldType.STRING.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                b[WireFormat.FieldType.BYTES.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                b[WireFormat.FieldType.UINT32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                b[WireFormat.FieldType.SFIXED32.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                b[WireFormat.FieldType.SFIXED64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                b[WireFormat.FieldType.SINT32.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                b[WireFormat.FieldType.SINT64.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                b[WireFormat.FieldType.GROUP.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                b[WireFormat.FieldType.MESSAGE.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                b[WireFormat.FieldType.ENUM.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            int[] iArr2 = new int[WireFormat.JavaType.values().length];
            a = iArr2;
            try {
                iArr2[WireFormat.JavaType.INT.ordinal()] = 1;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                a[WireFormat.JavaType.LONG.ordinal()] = 2;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                a[WireFormat.JavaType.FLOAT.ordinal()] = 3;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                a[WireFormat.JavaType.DOUBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                a[WireFormat.JavaType.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                a[WireFormat.JavaType.STRING.ordinal()] = 6;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                a[WireFormat.JavaType.BYTE_STRING.ordinal()] = 7;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                a[WireFormat.JavaType.ENUM.ordinal()] = 8;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                a[WireFormat.JavaType.MESSAGE.ordinal()] = 9;
            } catch (NoSuchFieldError unused27) {
            }
        }
    }

    public interface b extends Comparable {
        g.a c(g.a aVar, g gVar);

        WireFormat.JavaType getLiteJavaType();

        WireFormat.FieldType getLiteType();

        int getNumber();

        boolean isPacked();

        boolean isRepeated();
    }

    public e() {
    }

    public static int d(WireFormat.FieldType fieldType, int i, Object obj) {
        int iC = CodedOutputStream.C(i);
        if (fieldType == WireFormat.FieldType.GROUP) {
            iC *= 2;
        }
        return iC + e(fieldType, obj);
    }

    public static int e(WireFormat.FieldType fieldType, Object obj) {
        switch (a.b[fieldType.ordinal()]) {
            case 1:
                return CodedOutputStream.g(((Double) obj).doubleValue());
            case 2:
                return CodedOutputStream.m(((Float) obj).floatValue());
            case 3:
                return CodedOutputStream.q(((Long) obj).longValue());
            case 4:
                return CodedOutputStream.E(((Long) obj).longValue());
            case 5:
                return CodedOutputStream.p(((Integer) obj).intValue());
            case 6:
                return CodedOutputStream.k(((Long) obj).longValue());
            case 7:
                return CodedOutputStream.j(((Integer) obj).intValue());
            case 8:
                return CodedOutputStream.b(((Boolean) obj).booleanValue());
            case 9:
                return CodedOutputStream.B((String) obj);
            case 10:
                return obj instanceof po0 ? CodedOutputStream.e((po0) obj) : CodedOutputStream.c((byte[]) obj);
            case 11:
                return CodedOutputStream.D(((Integer) obj).intValue());
            case 12:
                return CodedOutputStream.w(((Integer) obj).intValue());
            case 13:
                return CodedOutputStream.x(((Long) obj).longValue());
            case 14:
                return CodedOutputStream.y(((Integer) obj).intValue());
            case 15:
                return CodedOutputStream.A(((Long) obj).longValue());
            case 16:
                return CodedOutputStream.n((g) obj);
            case 17:
                return CodedOutputStream.s((g) obj);
            case 18:
                return obj instanceof f.a ? CodedOutputStream.i(((f.a) obj).getNumber()) : CodedOutputStream.i(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    public static int f(b bVar, Object obj) {
        WireFormat.FieldType liteType = bVar.getLiteType();
        int number = bVar.getNumber();
        if (!bVar.isRepeated()) {
            return d(liteType, number, obj);
        }
        int iD = 0;
        if (bVar.isPacked()) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                iD += e(liteType, it.next());
            }
            return CodedOutputStream.C(number) + iD + CodedOutputStream.u(iD);
        }
        Iterator it2 = ((List) obj).iterator();
        while (it2.hasNext()) {
            iD += d(liteType, number, it2.next());
        }
        return iD;
    }

    public static e g() {
        return d;
    }

    public static int l(WireFormat.FieldType fieldType, boolean z) {
        if (z) {
            return 2;
        }
        return fieldType.getWireType();
    }

    public static e t() {
        return new e();
    }

    public static Object u(c cVar, WireFormat.FieldType fieldType, boolean z) {
        switch (a.b[fieldType.ordinal()]) {
            case 1:
                return Double.valueOf(cVar.l());
            case 2:
                return Float.valueOf(cVar.p());
            case 3:
                return Long.valueOf(cVar.s());
            case 4:
                return Long.valueOf(cVar.L());
            case 5:
                return Integer.valueOf(cVar.r());
            case 6:
                return Long.valueOf(cVar.o());
            case 7:
                return Integer.valueOf(cVar.n());
            case 8:
                return Boolean.valueOf(cVar.j());
            case 9:
                return z ? cVar.I() : cVar.H();
            case 10:
                return cVar.k();
            case 11:
                return Integer.valueOf(cVar.K());
            case 12:
                return Integer.valueOf(cVar.D());
            case 13:
                return Long.valueOf(cVar.E());
            case 14:
                return Integer.valueOf(cVar.F());
            case 15:
                return Long.valueOf(cVar.G());
            case 16:
                throw new IllegalArgumentException("readPrimitiveField() cannot handle nested groups.");
            case 17:
                throw new IllegalArgumentException("readPrimitiveField() cannot handle embedded messages.");
            case 18:
                throw new IllegalArgumentException("readPrimitiveField() cannot handle enums.");
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0021  */
    public static void w(WireFormat.FieldType fieldType, Object obj) {
        obj.getClass();
        boolean z = true;
        boolean z2 = false;
        switch (a.a[fieldType.getJavaType().ordinal()]) {
            case 1:
                z2 = obj instanceof Integer;
                break;
            case 2:
                z2 = obj instanceof Long;
                break;
            case 3:
                z2 = obj instanceof Float;
                break;
            case 4:
                z2 = obj instanceof Double;
                break;
            case 5:
                z2 = obj instanceof Boolean;
                break;
            case 6:
                z2 = obj instanceof String;
                break;
            case 7:
                if (!(obj instanceof po0) && !(obj instanceof byte[])) {
                    z = false;
                }
                z2 = z;
                break;
            case 8:
                if (!(obj instanceof Integer) && !(obj instanceof f.a)) {
                    z = false;
                }
                z2 = z;
                break;
            case 9:
                z2 = obj instanceof g;
                break;
        }
        if (!z2) {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
    }

    public static void x(CodedOutputStream codedOutputStream, WireFormat.FieldType fieldType, int i, Object obj) throws IOException {
        if (fieldType == WireFormat.FieldType.GROUP) {
            codedOutputStream.X(i, (g) obj);
        } else {
            codedOutputStream.v0(i, l(fieldType, false));
            y(codedOutputStream, fieldType, obj);
        }
    }

    public static void y(CodedOutputStream codedOutputStream, WireFormat.FieldType fieldType, Object obj) throws IOException {
        switch (a.b[fieldType.ordinal()]) {
            case 1:
                codedOutputStream.Q(((Double) obj).doubleValue());
                break;
            case 2:
                codedOutputStream.W(((Float) obj).floatValue());
                break;
            case 3:
                codedOutputStream.b0(((Long) obj).longValue());
                break;
            case 4:
                codedOutputStream.y0(((Long) obj).longValue());
                break;
            case 5:
                codedOutputStream.a0(((Integer) obj).intValue());
                break;
            case 6:
                codedOutputStream.U(((Long) obj).longValue());
                break;
            case 7:
                codedOutputStream.T(((Integer) obj).intValue());
                break;
            case 8:
                codedOutputStream.L(((Boolean) obj).booleanValue());
                break;
            case 9:
                codedOutputStream.u0((String) obj);
                break;
            case 10:
                if (!(obj instanceof po0)) {
                    codedOutputStream.M((byte[]) obj);
                } else {
                    codedOutputStream.O((po0) obj);
                }
                break;
            case 11:
                codedOutputStream.x0(((Integer) obj).intValue());
                break;
            case 12:
                codedOutputStream.p0(((Integer) obj).intValue());
                break;
            case 13:
                codedOutputStream.q0(((Long) obj).longValue());
                break;
            case 14:
                codedOutputStream.r0(((Integer) obj).intValue());
                break;
            case 15:
                codedOutputStream.t0(((Long) obj).longValue());
                break;
            case 16:
                codedOutputStream.Y((g) obj);
                break;
            case 17:
                codedOutputStream.d0((g) obj);
                break;
            case 18:
                if (!(obj instanceof f.a)) {
                    codedOutputStream.S(((Integer) obj).intValue());
                } else {
                    codedOutputStream.S(((f.a) obj).getNumber());
                }
                break;
        }
    }

    public static void z(b bVar, Object obj, CodedOutputStream codedOutputStream) throws IOException {
        WireFormat.FieldType liteType = bVar.getLiteType();
        int number = bVar.getNumber();
        if (!bVar.isRepeated()) {
            x(codedOutputStream, liteType, number, obj);
            return;
        }
        List list = (List) obj;
        if (!bVar.isPacked()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                x(codedOutputStream, liteType, number, it.next());
            }
            return;
        }
        codedOutputStream.v0(number, 2);
        Iterator it2 = list.iterator();
        int iE = 0;
        while (it2.hasNext()) {
            iE += e(liteType, it2.next());
        }
        codedOutputStream.n0(iE);
        Iterator it3 = list.iterator();
        while (it3.hasNext()) {
            y(codedOutputStream, liteType, it3.next());
        }
    }

    public void a(b bVar, Object obj) {
        List arrayList;
        if (!bVar.isRepeated()) {
            throw new IllegalArgumentException("addRepeatedField() can only be called on repeated fields.");
        }
        w(bVar.getLiteType(), obj);
        Object objH = h(bVar);
        if (objH == null) {
            arrayList = new ArrayList();
            this.a.q(bVar, arrayList);
        } else {
            arrayList = (List) objH;
        }
        arrayList.add(obj);
    }

    public e clone() {
        e eVarT = t();
        for (int i = 0; i < this.a.k(); i++) {
            Map.Entry entryH = this.a.h(i);
            eVarT.v((b) entryH.getKey(), entryH.getValue());
        }
        for (Map.Entry entry : this.a.l()) {
            eVarT.v((b) entry.getKey(), entry.getValue());
        }
        eVarT.c = this.c;
        return eVarT;
    }

    public final Object c(Object obj) {
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public Object h(b bVar) {
        return this.a.get(bVar);
    }

    public Object i(b bVar, int i) {
        if (!bVar.isRepeated()) {
            throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
        }
        Object objH = h(bVar);
        if (objH != null) {
            return ((List) objH).get(i);
        }
        throw new IndexOutOfBoundsException();
    }

    public int j(b bVar) {
        if (!bVar.isRepeated()) {
            throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
        }
        Object objH = h(bVar);
        if (objH == null) {
            return 0;
        }
        return ((List) objH).size();
    }

    public int k() {
        int iF = 0;
        for (int i = 0; i < this.a.k(); i++) {
            Map.Entry entryH = this.a.h(i);
            iF += f((b) entryH.getKey(), entryH.getValue());
        }
        for (Map.Entry entry : this.a.l()) {
            iF += f((b) entry.getKey(), entry.getValue());
        }
        return iF;
    }

    public boolean m(b bVar) {
        if (bVar.isRepeated()) {
            throw new IllegalArgumentException("hasField() can only be called on non-repeated fields.");
        }
        return this.a.get(bVar) != null;
    }

    public boolean n() {
        for (int i = 0; i < this.a.k(); i++) {
            if (!o(this.a.h(i))) {
                return false;
            }
        }
        Iterator it = this.a.l().iterator();
        while (it.hasNext()) {
            if (!o((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    public final boolean o(Map.Entry entry) {
        b bVar = (b) entry.getKey();
        if (bVar.getLiteJavaType() != WireFormat.JavaType.MESSAGE) {
            return true;
        }
        if (!bVar.isRepeated()) {
            Object value = entry.getValue();
            if (value instanceof g) {
                return ((g) value).isInitialized();
            }
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
        Iterator it = ((List) entry.getValue()).iterator();
        while (it.hasNext()) {
            if (!((g) it.next()).isInitialized()) {
                return false;
            }
        }
        return true;
    }

    public Iterator p() {
        return this.c ? new ej5(this.a.entrySet().iterator()) : this.a.entrySet().iterator();
    }

    public void q() {
        if (this.b) {
            return;
        }
        this.a.o();
        this.b = true;
    }

    public void r(e eVar) {
        for (int i = 0; i < eVar.a.k(); i++) {
            s(eVar.a.h(i));
        }
        Iterator it = eVar.a.l().iterator();
        while (it.hasNext()) {
            s((Map.Entry) it.next());
        }
    }

    public final void s(Map.Entry entry) {
        b bVar = (b) entry.getKey();
        Object value = entry.getValue();
        if (bVar.isRepeated()) {
            Object objH = h(bVar);
            if (objH == null) {
                objH = new ArrayList();
            }
            Iterator it = ((List) value).iterator();
            while (it.hasNext()) {
                ((List) objH).add(c(it.next()));
            }
            this.a.q(bVar, objH);
            return;
        }
        if (bVar.getLiteJavaType() != WireFormat.JavaType.MESSAGE) {
            this.a.q(bVar, c(value));
            return;
        }
        Object objH2 = h(bVar);
        if (objH2 == null) {
            this.a.q(bVar, c(value));
        } else {
            this.a.q(bVar, bVar.c(((g) objH2).toBuilder(), (g) value).build());
        }
    }

    public void v(b bVar, Object obj) {
        if (!bVar.isRepeated()) {
            w(bVar.getLiteType(), obj);
        } else {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                w(bVar.getLiteType(), it.next());
            }
            obj = arrayList;
        }
        this.a.q(bVar, obj);
    }

    public e(boolean z) {
        q();
    }
}
