package q9;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.metadata.mp4.SlowMotionData;
import com.google.android.exoplayer2.util.d0;
import i9.a0;
import java.util.ArrayList;
import java.util.List;

final class m {

    private static final com.google.common.base.o f69526d = com.google.common.base.o.f(':');

    private static final com.google.common.base.o f69527e = com.google.common.base.o.f('*');

    private final List f69528a = new ArrayList();

    private int f69529b = 0;

    private int f69530c;

    private static final class a {

        public final int f69531a;

        public final long f69532b;

        public final int f69533c;

        public a(int i10, long j10, int i11) {
            this.f69531a = i10;
            this.f69532b = j10;
            this.f69533c = i11;
        }
    }

    private void a(i9.m mVar, a0 a0Var) {
        d0 d0Var = new d0(8);
        mVar.readFully(d0Var.d(), 0, 8);
        this.f69530c = d0Var.q() + 8;
        if (d0Var.n() != 1397048916) {
            a0Var.f61884a = 0L;
        } else {
            a0Var.f61884a = mVar.getPosition() - ((long) (this.f69530c - 12));
            this.f69529b = 2;
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

    private void d(i9.m mVar, a0 a0Var) {
        long length = mVar.getLength();
        int i10 = this.f69530c - 20;
        d0 d0Var = new d0(i10);
        mVar.readFully(d0Var.d(), 0, i10);
        for (int i11 = 0; i11 < i10 / 12; i11++) {
            d0Var.Q(2);
            short s10 = d0Var.s();
            if (s10 == 2192 || s10 == 2816 || s10 == 2817 || s10 == 2819 || s10 == 2820) {
                this.f69528a.add(new a(s10, (length - ((long) this.f69530c)) - ((long) d0Var.q()), d0Var.q()));
            } else {
                d0Var.Q(8);
            }
        }
        if (this.f69528a.isEmpty()) {
            a0Var.f61884a = 0L;
        } else {
            this.f69529b = 3;
            a0Var.f61884a = ((a) this.f69528a.get(0)).f69532b;
        }
    }

    private void e(i9.m mVar, List list) throws ParserException {
        long position = mVar.getPosition();
        int length = (int) ((mVar.getLength() - mVar.getPosition()) - ((long) this.f69530c));
        d0 d0Var = new d0(length);
        mVar.readFully(d0Var.d(), 0, length);
        for (int i10 = 0; i10 < this.f69528a.size(); i10++) {
            a aVar = (a) this.f69528a.get(i10);
            d0Var.P((int) (aVar.f69532b - position));
            d0Var.Q(4);
            int iQ = d0Var.q();
            int iB = b(d0Var.A(iQ));
            int i11 = aVar.f69533c - (iQ + 8);
            if (iB == 2192) {
                list.add(f(d0Var, i11));
            } else if (iB != 2816 && iB != 2817 && iB != 2819 && iB != 2820) {
                throw new IllegalStateException();
            }
        }
    }

    private static SlowMotionData f(d0 d0Var, int i10) throws ParserException {
        ArrayList arrayList = new ArrayList();
        List listI = f69527e.i(d0Var.A(i10));
        for (int i11 = 0; i11 < listI.size(); i11++) {
            List listI2 = f69526d.i((CharSequence) listI.get(i11));
            if (listI2.size() != 3) {
                throw ParserException.createForMalformedContainer(null, null);
            }
            try {
                arrayList.add(new SlowMotionData.Segment(Long.parseLong((String) listI2.get(0)), Long.parseLong((String) listI2.get(1)), 1 << (Integer.parseInt((String) listI2.get(2)) - 1)));
            } catch (NumberFormatException e10) {
                throw ParserException.createForMalformedContainer(null, e10);
            }
        }
        return new SlowMotionData(arrayList);
    }

    public int c(i9.m mVar, a0 a0Var, List list) throws ParserException {
        int i10 = this.f69529b;
        long j10 = 0;
        if (i10 == 0) {
            long length = mVar.getLength();
            if (length != -1 && length >= 8) {
                j10 = length - 8;
            }
            a0Var.f61884a = j10;
            this.f69529b = 1;
        } else if (i10 == 1) {
            a(mVar, a0Var);
        } else if (i10 == 2) {
            d(mVar, a0Var);
        } else {
            if (i10 != 3) {
                throw new IllegalStateException();
            }
            e(mVar, list);
            a0Var.f61884a = 0L;
        }
        return 1;
    }

    public void g() {
        this.f69528a.clear();
        this.f69529b = 0;
    }
}
