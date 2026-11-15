package e3;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.j0;
import java.util.ArrayList;
import java.util.List;
import k2.l0;

final class q {

    private static final com.google.common.base.o f59393d = com.google.common.base.o.f(':');

    private static final com.google.common.base.o f59394e = com.google.common.base.o.f('*');

    private final List f59395a = new ArrayList();

    private int f59396b = 0;

    private int f59397c;

    private static final class a {

        public final int f59398a;

        public final long f59399b;

        public final int f59400c;

        public a(int i10, long j10, int i11) {
            this.f59398a = i10;
            this.f59399b = j10;
            this.f59400c = i11;
        }
    }

    private void a(k2.s sVar, l0 l0Var) {
        j0 j0Var = new j0(8);
        sVar.readFully(j0Var.e(), 0, 8);
        this.f59397c = j0Var.u() + 8;
        if (j0Var.q() != 1397048916) {
            l0Var.f63627a = 0L;
        } else {
            l0Var.f63627a = sVar.getPosition() - ((long) (this.f59397c - 12));
            this.f59396b = 2;
        }
    }

    private static int b(String str) throws ParserException {
        str.hashCode();
        switch (str) {
            case "SlowMotion_Data":
                return 2192;
            case "Super_SlowMotion_Edit_Data":
                return 2819;
            case "Super_SlowMotion_Data":
                return 2816;
            case "Super_SlowMotion_Deflickering_On":
                return 2820;
            case "Super_SlowMotion_BGM":
                return 2817;
            default:
                throw ParserException.createForMalformedContainer("Invalid SEF name", null);
        }
    }

    private void d(k2.s sVar, l0 l0Var) {
        long length = sVar.getLength();
        int i10 = this.f59397c - 20;
        j0 j0Var = new j0(i10);
        sVar.readFully(j0Var.e(), 0, i10);
        for (int i11 = 0; i11 < i10 / 12; i11++) {
            j0Var.X(2);
            short sW = j0Var.w();
            if (sW == 2192 || sW == 2816 || sW == 2817 || sW == 2819 || sW == 2820) {
                this.f59395a.add(new a(sW, (length - ((long) this.f59397c)) - ((long) j0Var.u()), j0Var.u()));
            } else {
                j0Var.X(8);
            }
        }
        if (this.f59395a.isEmpty()) {
            l0Var.f63627a = 0L;
        } else {
            this.f59396b = 3;
            l0Var.f63627a = ((a) this.f59395a.get(0)).f59399b;
        }
    }

    private void e(k2.s sVar, List list) throws ParserException {
        long position = sVar.getPosition();
        int length = (int) ((sVar.getLength() - sVar.getPosition()) - ((long) this.f59397c));
        j0 j0Var = new j0(length);
        sVar.readFully(j0Var.e(), 0, length);
        for (int i10 = 0; i10 < this.f59395a.size(); i10++) {
            a aVar = (a) this.f59395a.get(i10);
            j0Var.W((int) (aVar.f59399b - position));
            j0Var.X(4);
            int iU = j0Var.u();
            int iB = b(j0Var.E(iU));
            int i11 = aVar.f59400c - (iU + 8);
            if (iB == 2192) {
                list.add(f(j0Var, i11));
            } else if (iB != 2816 && iB != 2817 && iB != 2819 && iB != 2820) {
                throw new IllegalStateException();
            }
        }
    }

    private static z2.c f(j0 j0Var, int i10) throws ParserException {
        ArrayList arrayList = new ArrayList();
        List listI = f59394e.i(j0Var.E(i10));
        for (int i11 = 0; i11 < listI.size(); i11++) {
            List listI2 = f59393d.i((CharSequence) listI.get(i11));
            if (listI2.size() != 3) {
                throw ParserException.createForMalformedContainer(null, null);
            }
            try {
                arrayList.add(new z2.c.a(Long.parseLong((String) listI2.get(0)), Long.parseLong((String) listI2.get(1)), 1 << (Integer.parseInt((String) listI2.get(2)) - 1)));
            } catch (NumberFormatException e10) {
                throw ParserException.createForMalformedContainer(null, e10);
            }
        }
        return new z2.c(arrayList);
    }

    public int c(k2.s sVar, l0 l0Var, List list) throws ParserException {
        int i10 = this.f59396b;
        long j10 = 0;
        if (i10 == 0) {
            long length = sVar.getLength();
            if (length != -1 && length >= 8) {
                j10 = length - 8;
            }
            l0Var.f63627a = j10;
            this.f59396b = 1;
        } else if (i10 == 1) {
            a(sVar, l0Var);
        } else if (i10 == 2) {
            d(sVar, l0Var);
        } else {
            if (i10 != 3) {
                throw new IllegalStateException();
            }
            e(sVar, list);
            l0Var.f63627a = 0L;
        }
        return 1;
    }

    public void g() {
        this.f59395a.clear();
        this.f59396b = 0;
    }
}
