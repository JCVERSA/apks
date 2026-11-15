package defpackage;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.metadata.mp4.SlowMotionData;
import com.hunantv.media.player.MgtvMediaPlayer;
import java.util.ArrayList;
import java.util.List;

public final class na9 {
    public static final hv9 d = hv9.f(':');
    public static final hv9 e = hv9.f('*');
    public final List a = new ArrayList();
    public int b = 0;
    public int c;

    public static final class a {
        public final int a;
        public final long b;
        public final int c;

        public a(int i, long j, int i2) {
            this.a = i;
            this.b = j;
            this.c = i2;
        }
    }

    public static int b(String str) throws ParserException {
        str.hashCode();
        switch (str) {
            case "SlowMotion_Data":
                return 2192;
            case "Super_SlowMotion_Edit_Data":
                return 2819;
            case "Super_SlowMotion_Data":
                return 2816;
            case "Super_SlowMotion_Deflickering_On":
                return MgtvMediaPlayer.MEDIA_INFO_PREPARE_WILL_PLAYING;
            case "Super_SlowMotion_BGM":
                return 2817;
            default:
                throw ParserException.createForMalformedContainer("Invalid SEF name", null);
        }
    }

    public static SlowMotionData f(qw7 qw7Var, int i) throws ParserException {
        ArrayList arrayList = new ArrayList();
        List listI = e.i(qw7Var.z(i));
        for (int i2 = 0; i2 < listI.size(); i2++) {
            List listI2 = d.i((CharSequence) listI.get(i2));
            if (listI2.size() != 3) {
                throw ParserException.createForMalformedContainer(null, null);
            }
            try {
                arrayList.add(new SlowMotionData.Segment(Long.parseLong((String) listI2.get(0)), Long.parseLong((String) listI2.get(1)), 1 << (Integer.parseInt((String) listI2.get(2)) - 1)));
            } catch (NumberFormatException e2) {
                throw ParserException.createForMalformedContainer(null, e2);
            }
        }
        return new SlowMotionData(arrayList);
    }

    public final void a(pk3 pk3Var, id8 id8Var) {
        qw7 qw7Var = new qw7(8);
        pk3Var.readFully(qw7Var.d(), 0, 8);
        this.c = qw7Var.p() + 8;
        if (qw7Var.n() != 1397048916) {
            id8Var.a = 0L;
        } else {
            id8Var.a = pk3Var.getPosition() - ((long) (this.c - 12));
            this.b = 2;
        }
    }

    public int c(pk3 pk3Var, id8 id8Var, List list) throws ParserException {
        int i = this.b;
        long j = 0;
        if (i == 0) {
            long length = pk3Var.getLength();
            if (length != -1 && length >= 8) {
                j = length - 8;
            }
            id8Var.a = j;
            this.b = 1;
        } else if (i == 1) {
            a(pk3Var, id8Var);
        } else if (i == 2) {
            d(pk3Var, id8Var);
        } else {
            if (i != 3) {
                throw new IllegalStateException();
            }
            e(pk3Var, list);
            id8Var.a = 0L;
        }
        return 1;
    }

    public final void d(pk3 pk3Var, id8 id8Var) {
        long length = pk3Var.getLength();
        int i = this.c - 20;
        qw7 qw7Var = new qw7(i);
        pk3Var.readFully(qw7Var.d(), 0, i);
        for (int i2 = 0; i2 < i / 12; i2++) {
            qw7Var.P(2);
            short sR = qw7Var.r();
            if (sR == 2192 || sR == 2816 || sR == 2817 || sR == 2819 || sR == 2820) {
                this.a.add(new a(sR, (length - ((long) this.c)) - ((long) qw7Var.p()), qw7Var.p()));
            } else {
                qw7Var.P(8);
            }
        }
        if (this.a.isEmpty()) {
            id8Var.a = 0L;
        } else {
            this.b = 3;
            id8Var.a = ((a) this.a.get(0)).b;
        }
    }

    public final void e(pk3 pk3Var, List list) throws ParserException {
        long position = pk3Var.getPosition();
        int length = (int) ((pk3Var.getLength() - pk3Var.getPosition()) - ((long) this.c));
        qw7 qw7Var = new qw7(length);
        pk3Var.readFully(qw7Var.d(), 0, length);
        for (int i = 0; i < this.a.size(); i++) {
            a aVar = (a) this.a.get(i);
            qw7Var.O((int) (aVar.b - position));
            qw7Var.P(4);
            int iP = qw7Var.p();
            int iB = b(qw7Var.z(iP));
            int i2 = aVar.c - (iP + 8);
            if (iB == 2192) {
                list.add(f(qw7Var, i2));
            } else if (iB != 2816 && iB != 2817 && iB != 2819 && iB != 2820) {
                throw new IllegalStateException();
            }
        }
    }

    public void g() {
        this.a.clear();
        this.b = 0;
    }
}
