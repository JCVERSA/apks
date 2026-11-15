package androidx.datastore.preferences.protobuf;

import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

final class k implements Writer {

    private final CodedOutputStream f8533a;

    static class a {

        static final int[] f8534a;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            f8534a = iArr;
            try {
                iArr[WireFormat.FieldType.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f8534a[WireFormat.FieldType.FIXED32.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f8534a[WireFormat.FieldType.INT32.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f8534a[WireFormat.FieldType.SFIXED32.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f8534a[WireFormat.FieldType.SINT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f8534a[WireFormat.FieldType.UINT32.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f8534a[WireFormat.FieldType.FIXED64.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f8534a[WireFormat.FieldType.INT64.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f8534a[WireFormat.FieldType.SFIXED64.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f8534a[WireFormat.FieldType.SINT64.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f8534a[WireFormat.FieldType.UINT64.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f8534a[WireFormat.FieldType.STRING.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    private k(CodedOutputStream codedOutputStream) {
        CodedOutputStream codedOutputStream2 = (CodedOutputStream) w.b(codedOutputStream, "output");
        this.f8533a = codedOutputStream2;
        codedOutputStream2.f8363a = this;
    }

    private void A(int i10, f0 f0Var, boolean z10) {
        int i11 = 0;
        if (!z10) {
            while (i11 < f0Var.size()) {
                this.f8533a.D0(i10, f0Var.getLong(i11));
                i11++;
            }
            return;
        }
        this.f8533a.T0(i10, 2);
        int iZ = 0;
        for (int i12 = 0; i12 < f0Var.size(); i12++) {
            iZ += CodedOutputStream.z(f0Var.getLong(i12));
        }
        this.f8533a.V0(iZ);
        while (i11 < f0Var.size()) {
            this.f8533a.E0(f0Var.getLong(i11));
            i11++;
        }
    }

    private void B(int i10, List list, boolean z10) {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f8533a.D0(i10, ((Long) list.get(i11)).longValue());
                i11++;
            }
            return;
        }
        this.f8533a.T0(i10, 2);
        int iZ = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iZ += CodedOutputStream.z(((Long) list.get(i12)).longValue());
        }
        this.f8533a.V0(iZ);
        while (i11 < list.size()) {
            this.f8533a.E0(((Long) list.get(i11)).longValue());
            i11++;
        }
    }

    private void C(int i10, Object obj) {
        if (obj instanceof String) {
            this.f8533a.R0(i10, (String) obj);
        } else {
            this.f8533a.l0(i10, (ByteString) obj);
        }
    }

    private void D(int i10, v vVar, boolean z10) {
        int i11 = 0;
        if (!z10) {
            while (i11 < vVar.size()) {
                this.f8533a.J0(i10, vVar.getInt(i11));
                i11++;
            }
            return;
        }
        this.f8533a.T0(i10, 2);
        int iJ = 0;
        for (int i12 = 0; i12 < vVar.size(); i12++) {
            iJ += CodedOutputStream.J(vVar.getInt(i12));
        }
        this.f8533a.V0(iJ);
        while (i11 < vVar.size()) {
            this.f8533a.K0(vVar.getInt(i11));
            i11++;
        }
    }

    private void E(int i10, List list, boolean z10) {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f8533a.J0(i10, ((Integer) list.get(i11)).intValue());
                i11++;
            }
            return;
        }
        this.f8533a.T0(i10, 2);
        int iJ = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iJ += CodedOutputStream.J(((Integer) list.get(i12)).intValue());
        }
        this.f8533a.V0(iJ);
        while (i11 < list.size()) {
            this.f8533a.K0(((Integer) list.get(i11)).intValue());
            i11++;
        }
    }

    private void F(int i10, f0 f0Var, boolean z10) {
        int i11 = 0;
        if (!z10) {
            while (i11 < f0Var.size()) {
                this.f8533a.L0(i10, f0Var.getLong(i11));
                i11++;
            }
            return;
        }
        this.f8533a.T0(i10, 2);
        int iL = 0;
        for (int i12 = 0; i12 < f0Var.size(); i12++) {
            iL += CodedOutputStream.L(f0Var.getLong(i12));
        }
        this.f8533a.V0(iL);
        while (i11 < f0Var.size()) {
            this.f8533a.M0(f0Var.getLong(i11));
            i11++;
        }
    }

    private void G(int i10, List list, boolean z10) {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f8533a.L0(i10, ((Long) list.get(i11)).longValue());
                i11++;
            }
            return;
        }
        this.f8533a.T0(i10, 2);
        int iL = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iL += CodedOutputStream.L(((Long) list.get(i12)).longValue());
        }
        this.f8533a.V0(iL);
        while (i11 < list.size()) {
            this.f8533a.M0(((Long) list.get(i11)).longValue());
            i11++;
        }
    }

    private void H(int i10, v vVar, boolean z10) {
        int i11 = 0;
        if (!z10) {
            while (i11 < vVar.size()) {
                this.f8533a.N0(i10, vVar.getInt(i11));
                i11++;
            }
            return;
        }
        this.f8533a.T0(i10, 2);
        int iN = 0;
        for (int i12 = 0; i12 < vVar.size(); i12++) {
            iN += CodedOutputStream.N(vVar.getInt(i12));
        }
        this.f8533a.V0(iN);
        while (i11 < vVar.size()) {
            this.f8533a.O0(vVar.getInt(i11));
            i11++;
        }
    }

    private void J(int i10, f0 f0Var, boolean z10) {
        int i11 = 0;
        if (!z10) {
            while (i11 < f0Var.size()) {
                this.f8533a.P0(i10, f0Var.getLong(i11));
                i11++;
            }
            return;
        }
        this.f8533a.T0(i10, 2);
        int iP = 0;
        for (int i12 = 0; i12 < f0Var.size(); i12++) {
            iP += CodedOutputStream.P(f0Var.getLong(i12));
        }
        this.f8533a.V0(iP);
        while (i11 < f0Var.size()) {
            this.f8533a.Q0(f0Var.getLong(i11));
            i11++;
        }
    }

    private void K(int i10, List list, boolean z10) {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f8533a.P0(i10, ((Long) list.get(i11)).longValue());
                i11++;
            }
            return;
        }
        this.f8533a.T0(i10, 2);
        int iP = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iP += CodedOutputStream.P(((Long) list.get(i12)).longValue());
        }
        this.f8533a.V0(iP);
        while (i11 < list.size()) {
            this.f8533a.Q0(((Long) list.get(i11)).longValue());
            i11++;
        }
    }

    private void L(int i10, v vVar, boolean z10) {
        int i11 = 0;
        if (!z10) {
            while (i11 < vVar.size()) {
                this.f8533a.U0(i10, vVar.getInt(i11));
                i11++;
            }
            return;
        }
        this.f8533a.T0(i10, 2);
        int iU = 0;
        for (int i12 = 0; i12 < vVar.size(); i12++) {
            iU += CodedOutputStream.U(vVar.getInt(i12));
        }
        this.f8533a.V0(iU);
        while (i11 < vVar.size()) {
            this.f8533a.V0(vVar.getInt(i11));
            i11++;
        }
    }

    private void N(int i10, f0 f0Var, boolean z10) {
        int i11 = 0;
        if (!z10) {
            while (i11 < f0Var.size()) {
                this.f8533a.W0(i10, f0Var.getLong(i11));
                i11++;
            }
            return;
        }
        this.f8533a.T0(i10, 2);
        int iW = 0;
        for (int i12 = 0; i12 < f0Var.size(); i12++) {
            iW += CodedOutputStream.W(f0Var.getLong(i12));
        }
        this.f8533a.V0(iW);
        while (i11 < f0Var.size()) {
            this.f8533a.X0(f0Var.getLong(i11));
            i11++;
        }
    }

    private void O(int i10, List list, boolean z10) {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f8533a.W0(i10, ((Long) list.get(i11)).longValue());
                i11++;
            }
            return;
        }
        this.f8533a.T0(i10, 2);
        int iW = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iW += CodedOutputStream.W(((Long) list.get(i12)).longValue());
        }
        this.f8533a.V0(iW);
        while (i11 < list.size()) {
            this.f8533a.X0(((Long) list.get(i11)).longValue());
            i11++;
        }
    }

    public static k g(CodedOutputStream codedOutputStream) {
        k kVar = codedOutputStream.f8363a;
        return kVar != null ? kVar : new k(codedOutputStream);
    }

    private void h(int i10, f fVar, boolean z10) {
        int i11 = 0;
        if (!z10) {
            while (i11 < fVar.size()) {
                this.f8533a.h0(i10, fVar.getBoolean(i11));
                i11++;
            }
            return;
        }
        this.f8533a.T0(i10, 2);
        int iF = 0;
        for (int i12 = 0; i12 < fVar.size(); i12++) {
            iF += CodedOutputStream.f(fVar.getBoolean(i12));
        }
        this.f8533a.V0(iF);
        while (i11 < fVar.size()) {
            this.f8533a.i0(fVar.getBoolean(i11));
            i11++;
        }
    }

    private void i(int i10, List list, boolean z10) {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f8533a.h0(i10, ((Boolean) list.get(i11)).booleanValue());
                i11++;
            }
            return;
        }
        this.f8533a.T0(i10, 2);
        int iF = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iF += CodedOutputStream.f(((Boolean) list.get(i12)).booleanValue());
        }
        this.f8533a.V0(iF);
        while (i11 < list.size()) {
            this.f8533a.i0(((Boolean) list.get(i11)).booleanValue());
            i11++;
        }
    }

    private void j(int i10, boolean z10, Object obj, h0.a aVar) {
        this.f8533a.T0(i10, 2);
        this.f8533a.V0(h0.b(aVar, Boolean.valueOf(z10), obj));
        h0.e(this.f8533a, aVar, Boolean.valueOf(z10), obj);
    }

    private void k(int i10, h0.a aVar, Map map) {
        int size = map.size();
        int[] iArr = new int[size];
        Iterator it = map.keySet().iterator();
        int i11 = 0;
        while (it.hasNext()) {
            iArr[i11] = ((Integer) it.next()).intValue();
            i11++;
        }
        Arrays.sort(iArr);
        for (int i12 = 0; i12 < size; i12++) {
            int i13 = iArr[i12];
            Object obj = map.get(Integer.valueOf(i13));
            this.f8533a.T0(i10, 2);
            this.f8533a.V0(h0.b(aVar, Integer.valueOf(i13), obj));
            h0.e(this.f8533a, aVar, Integer.valueOf(i13), obj);
        }
    }

    private void l(int i10, h0.a aVar, Map map) {
        int size = map.size();
        long[] jArr = new long[size];
        Iterator it = map.keySet().iterator();
        int i11 = 0;
        while (it.hasNext()) {
            jArr[i11] = ((Long) it.next()).longValue();
            i11++;
        }
        Arrays.sort(jArr);
        for (int i12 = 0; i12 < size; i12++) {
            long j10 = jArr[i12];
            Object obj = map.get(Long.valueOf(j10));
            this.f8533a.T0(i10, 2);
            this.f8533a.V0(h0.b(aVar, Long.valueOf(j10), obj));
            h0.e(this.f8533a, aVar, Long.valueOf(j10), obj);
        }
    }

    private void m(int i10, h0.a aVar, Map map) {
        switch (a.f8534a[aVar.f8469a.ordinal()]) {
            case 1:
                Object obj = map.get(Boolean.FALSE);
                if (obj != null) {
                    j(i10, false, obj, aVar);
                }
                Object obj2 = map.get(Boolean.TRUE);
                if (obj2 != null) {
                    j(i10, true, obj2, aVar);
                    return;
                }
                return;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                k(i10, aVar, map);
                return;
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                l(i10, aVar, map);
                return;
            case 12:
                n(i10, aVar, map);
                return;
            default:
                throw new IllegalArgumentException("does not support key type: " + aVar.f8469a);
        }
    }

    private void n(int i10, h0.a aVar, Map map) {
        int size = map.size();
        String[] strArr = new String[size];
        Iterator it = map.keySet().iterator();
        int i11 = 0;
        while (it.hasNext()) {
            strArr[i11] = (String) it.next();
            i11++;
        }
        Arrays.sort(strArr);
        for (int i12 = 0; i12 < size; i12++) {
            String str = strArr[i12];
            Object obj = map.get(str);
            this.f8533a.T0(i10, 2);
            this.f8533a.V0(h0.b(aVar, str, obj));
            h0.e(this.f8533a, aVar, str, obj);
        }
    }

    private void o(int i10, l lVar, boolean z10) {
        int i11 = 0;
        if (!z10) {
            while (i11 < lVar.size()) {
                this.f8533a.n0(i10, lVar.getDouble(i11));
                i11++;
            }
            return;
        }
        this.f8533a.T0(i10, 2);
        int iK = 0;
        for (int i12 = 0; i12 < lVar.size(); i12++) {
            iK += CodedOutputStream.k(lVar.getDouble(i12));
        }
        this.f8533a.V0(iK);
        while (i11 < lVar.size()) {
            this.f8533a.o0(lVar.getDouble(i11));
            i11++;
        }
    }

    private void p(int i10, List list, boolean z10) {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f8533a.n0(i10, ((Double) list.get(i11)).doubleValue());
                i11++;
            }
            return;
        }
        this.f8533a.T0(i10, 2);
        int iK = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iK += CodedOutputStream.k(((Double) list.get(i12)).doubleValue());
        }
        this.f8533a.V0(iK);
        while (i11 < list.size()) {
            this.f8533a.o0(((Double) list.get(i11)).doubleValue());
            i11++;
        }
    }

    private void q(int i10, v vVar, boolean z10) {
        int i11 = 0;
        if (!z10) {
            while (i11 < vVar.size()) {
                this.f8533a.p0(i10, vVar.getInt(i11));
                i11++;
            }
            return;
        }
        this.f8533a.T0(i10, 2);
        int iM = 0;
        for (int i12 = 0; i12 < vVar.size(); i12++) {
            iM += CodedOutputStream.m(vVar.getInt(i12));
        }
        this.f8533a.V0(iM);
        while (i11 < vVar.size()) {
            this.f8533a.q0(vVar.getInt(i11));
            i11++;
        }
    }

    private void r(int i10, List list, boolean z10) {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f8533a.p0(i10, ((Integer) list.get(i11)).intValue());
                i11++;
            }
            return;
        }
        this.f8533a.T0(i10, 2);
        int iM = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iM += CodedOutputStream.m(((Integer) list.get(i12)).intValue());
        }
        this.f8533a.V0(iM);
        while (i11 < list.size()) {
            this.f8533a.q0(((Integer) list.get(i11)).intValue());
            i11++;
        }
    }

    private void s(int i10, v vVar, boolean z10) {
        int i11 = 0;
        if (!z10) {
            while (i11 < vVar.size()) {
                this.f8533a.r0(i10, vVar.getInt(i11));
                i11++;
            }
            return;
        }
        this.f8533a.T0(i10, 2);
        int iO = 0;
        for (int i12 = 0; i12 < vVar.size(); i12++) {
            iO += CodedOutputStream.o(vVar.getInt(i12));
        }
        this.f8533a.V0(iO);
        while (i11 < vVar.size()) {
            this.f8533a.s0(vVar.getInt(i11));
            i11++;
        }
    }

    private void t(int i10, List list, boolean z10) {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f8533a.r0(i10, ((Integer) list.get(i11)).intValue());
                i11++;
            }
            return;
        }
        this.f8533a.T0(i10, 2);
        int iO = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iO += CodedOutputStream.o(((Integer) list.get(i12)).intValue());
        }
        this.f8533a.V0(iO);
        while (i11 < list.size()) {
            this.f8533a.s0(((Integer) list.get(i11)).intValue());
            i11++;
        }
    }

    private void u(int i10, f0 f0Var, boolean z10) {
        int i11 = 0;
        if (!z10) {
            while (i11 < f0Var.size()) {
                this.f8533a.t0(i10, f0Var.getLong(i11));
                i11++;
            }
            return;
        }
        this.f8533a.T0(i10, 2);
        int iQ = 0;
        for (int i12 = 0; i12 < f0Var.size(); i12++) {
            iQ += CodedOutputStream.q(f0Var.getLong(i12));
        }
        this.f8533a.V0(iQ);
        while (i11 < f0Var.size()) {
            this.f8533a.u0(f0Var.getLong(i11));
            i11++;
        }
    }

    private void v(int i10, List list, boolean z10) {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f8533a.t0(i10, ((Long) list.get(i11)).longValue());
                i11++;
            }
            return;
        }
        this.f8533a.T0(i10, 2);
        int iQ = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iQ += CodedOutputStream.q(((Long) list.get(i12)).longValue());
        }
        this.f8533a.V0(iQ);
        while (i11 < list.size()) {
            this.f8533a.u0(((Long) list.get(i11)).longValue());
            i11++;
        }
    }

    private void w(int i10, t tVar, boolean z10) {
        int i11 = 0;
        if (!z10) {
            while (i11 < tVar.size()) {
                this.f8533a.v0(i10, tVar.getFloat(i11));
                i11++;
            }
            return;
        }
        this.f8533a.T0(i10, 2);
        int iS = 0;
        for (int i12 = 0; i12 < tVar.size(); i12++) {
            iS += CodedOutputStream.s(tVar.getFloat(i12));
        }
        this.f8533a.V0(iS);
        while (i11 < tVar.size()) {
            this.f8533a.w0(tVar.getFloat(i11));
            i11++;
        }
    }

    private void x(int i10, List list, boolean z10) {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f8533a.v0(i10, ((Float) list.get(i11)).floatValue());
                i11++;
            }
            return;
        }
        this.f8533a.T0(i10, 2);
        int iS = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iS += CodedOutputStream.s(((Float) list.get(i12)).floatValue());
        }
        this.f8533a.V0(iS);
        while (i11 < list.size()) {
            this.f8533a.w0(((Float) list.get(i11)).floatValue());
            i11++;
        }
    }

    private void y(int i10, v vVar, boolean z10) {
        int i11 = 0;
        if (!z10) {
            while (i11 < vVar.size()) {
                this.f8533a.B0(i10, vVar.getInt(i11));
                i11++;
            }
            return;
        }
        this.f8533a.T0(i10, 2);
        int iX = 0;
        for (int i12 = 0; i12 < vVar.size(); i12++) {
            iX += CodedOutputStream.x(vVar.getInt(i12));
        }
        this.f8533a.V0(iX);
        while (i11 < vVar.size()) {
            this.f8533a.C0(vVar.getInt(i11));
            i11++;
        }
    }

    private void z(int i10, List list, boolean z10) {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f8533a.B0(i10, ((Integer) list.get(i11)).intValue());
                i11++;
            }
            return;
        }
        this.f8533a.T0(i10, 2);
        int iX = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iX += CodedOutputStream.x(((Integer) list.get(i12)).intValue());
        }
        this.f8533a.V0(iX);
        while (i11 < list.size()) {
            this.f8533a.C0(((Integer) list.get(i11)).intValue());
            i11++;
        }
    }

    public void I(int i10, List list, boolean z10) {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f8533a.N0(i10, ((Integer) list.get(i11)).intValue());
                i11++;
            }
            return;
        }
        this.f8533a.T0(i10, 2);
        int iN = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iN += CodedOutputStream.N(((Integer) list.get(i12)).intValue());
        }
        this.f8533a.V0(iN);
        while (i11 < list.size()) {
            this.f8533a.O0(((Integer) list.get(i11)).intValue());
            i11++;
        }
    }

    public void M(int i10, List list, boolean z10) {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.f8533a.U0(i10, ((Integer) list.get(i11)).intValue());
                i11++;
            }
            return;
        }
        this.f8533a.T0(i10, 2);
        int iU = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iU += CodedOutputStream.U(((Integer) list.get(i12)).intValue());
        }
        this.f8533a.V0(iU);
        while (i11 < list.size()) {
            this.f8533a.V0(((Integer) list.get(i11)).intValue());
            i11++;
        }
    }

    @Override
    public void a(int i10, List list, b1 b1Var) {
        for (int i11 = 0; i11 < list.size(); i11++) {
            e(i10, list.get(i11), b1Var);
        }
    }

    @Override
    public void b(int i10, ByteString byteString) {
        this.f8533a.l0(i10, byteString);
    }

    @Override
    public void c(int i10, Object obj, b1 b1Var) {
        this.f8533a.F0(i10, (n0) obj, b1Var);
    }

    @Override
    public void d(int i10, h0.a aVar, Map map) {
        if (this.f8533a.b0()) {
            m(i10, aVar, map);
            return;
        }
        for (Map.Entry entry : map.entrySet()) {
            this.f8533a.T0(i10, 2);
            this.f8533a.V0(h0.b(aVar, entry.getKey(), entry.getValue()));
            h0.e(this.f8533a, aVar, entry.getKey(), entry.getValue());
        }
    }

    @Override
    public void e(int i10, Object obj, b1 b1Var) {
        this.f8533a.y0(i10, (n0) obj, b1Var);
    }

    @Override
    public void f(int i10, List list, b1 b1Var) {
        for (int i11 = 0; i11 < list.size(); i11++) {
            c(i10, list.get(i11), b1Var);
        }
    }

    @Override
    public Writer.FieldOrder fieldOrder() {
        return Writer.FieldOrder.ASCENDING;
    }

    @Override
    public void writeBool(int i10, boolean z10) {
        this.f8533a.h0(i10, z10);
    }

    @Override
    public void writeBoolList(int i10, List list, boolean z10) {
        if (list instanceof f) {
            h(i10, (f) list, z10);
        } else {
            i(i10, list, z10);
        }
    }

    @Override
    public void writeBytesList(int i10, List list) {
        for (int i11 = 0; i11 < list.size(); i11++) {
            this.f8533a.l0(i10, (ByteString) list.get(i11));
        }
    }

    @Override
    public void writeDouble(int i10, double d10) {
        this.f8533a.n0(i10, d10);
    }

    @Override
    public void writeDoubleList(int i10, List list, boolean z10) {
        if (list instanceof l) {
            o(i10, (l) list, z10);
        } else {
            p(i10, list, z10);
        }
    }

    @Override
    public void writeEndGroup(int i10) {
        this.f8533a.T0(i10, 4);
    }

    @Override
    public void writeEnum(int i10, int i11) {
        this.f8533a.p0(i10, i11);
    }

    @Override
    public void writeEnumList(int i10, List list, boolean z10) {
        if (list instanceof v) {
            q(i10, (v) list, z10);
        } else {
            r(i10, list, z10);
        }
    }

    @Override
    public void writeFixed32(int i10, int i11) {
        this.f8533a.r0(i10, i11);
    }

    @Override
    public void writeFixed32List(int i10, List list, boolean z10) {
        if (list instanceof v) {
            s(i10, (v) list, z10);
        } else {
            t(i10, list, z10);
        }
    }

    @Override
    public void writeFixed64(int i10, long j10) {
        this.f8533a.t0(i10, j10);
    }

    @Override
    public void writeFixed64List(int i10, List list, boolean z10) {
        if (list instanceof f0) {
            u(i10, (f0) list, z10);
        } else {
            v(i10, list, z10);
        }
    }

    @Override
    public void writeFloat(int i10, float f10) {
        this.f8533a.v0(i10, f10);
    }

    @Override
    public void writeFloatList(int i10, List list, boolean z10) {
        if (list instanceof t) {
            w(i10, (t) list, z10);
        } else {
            x(i10, list, z10);
        }
    }

    @Override
    public void writeInt32(int i10, int i11) {
        this.f8533a.B0(i10, i11);
    }

    @Override
    public void writeInt32List(int i10, List list, boolean z10) {
        if (list instanceof v) {
            y(i10, (v) list, z10);
        } else {
            z(i10, list, z10);
        }
    }

    @Override
    public void writeInt64(int i10, long j10) {
        this.f8533a.D0(i10, j10);
    }

    @Override
    public void writeInt64List(int i10, List list, boolean z10) {
        if (list instanceof f0) {
            A(i10, (f0) list, z10);
        } else {
            B(i10, list, z10);
        }
    }

    @Override
    public final void writeMessageSetItem(int i10, Object obj) {
        if (obj instanceof ByteString) {
            this.f8533a.I0(i10, (ByteString) obj);
        } else {
            this.f8533a.H0(i10, (n0) obj);
        }
    }

    @Override
    public void writeSFixed32(int i10, int i11) {
        this.f8533a.J0(i10, i11);
    }

    @Override
    public void writeSFixed32List(int i10, List list, boolean z10) {
        if (list instanceof v) {
            D(i10, (v) list, z10);
        } else {
            E(i10, list, z10);
        }
    }

    @Override
    public void writeSFixed64(int i10, long j10) {
        this.f8533a.L0(i10, j10);
    }

    @Override
    public void writeSFixed64List(int i10, List list, boolean z10) {
        if (list instanceof f0) {
            F(i10, (f0) list, z10);
        } else {
            G(i10, list, z10);
        }
    }

    @Override
    public void writeSInt32(int i10, int i11) {
        this.f8533a.N0(i10, i11);
    }

    @Override
    public void writeSInt32List(int i10, List list, boolean z10) {
        if (list instanceof v) {
            H(i10, (v) list, z10);
        } else {
            I(i10, list, z10);
        }
    }

    @Override
    public void writeSInt64(int i10, long j10) {
        this.f8533a.P0(i10, j10);
    }

    @Override
    public void writeSInt64List(int i10, List list, boolean z10) {
        if (list instanceof f0) {
            J(i10, (f0) list, z10);
        } else {
            K(i10, list, z10);
        }
    }

    @Override
    public void writeStartGroup(int i10) {
        this.f8533a.T0(i10, 3);
    }

    @Override
    public void writeString(int i10, String str) {
        this.f8533a.R0(i10, str);
    }

    @Override
    public void writeStringList(int i10, List list) {
        int i11 = 0;
        if (!(list instanceof b0)) {
            while (i11 < list.size()) {
                this.f8533a.R0(i10, (String) list.get(i11));
                i11++;
            }
        } else {
            b0 b0Var = (b0) list;
            while (i11 < list.size()) {
                C(i10, b0Var.getRaw(i11));
                i11++;
            }
        }
    }

    @Override
    public void writeUInt32(int i10, int i11) {
        this.f8533a.U0(i10, i11);
    }

    @Override
    public void writeUInt32List(int i10, List list, boolean z10) {
        if (list instanceof v) {
            L(i10, (v) list, z10);
        } else {
            M(i10, list, z10);
        }
    }

    @Override
    public void writeUInt64(int i10, long j10) {
        this.f8533a.W0(i10, j10);
    }

    @Override
    public void writeUInt64List(int i10, List list, boolean z10) {
        if (list instanceof f0) {
            N(i10, (f0) list, z10);
        } else {
            O(i10, list, z10);
        }
    }
}
