package defpackage;

import android.util.SparseArray;
import androidx.media3.common.MimeTypes;
import com.google.android.exoplayer2.k;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.List;

public final class r62 implements nab.c {
    public final int a;
    public final List b;

    public r62(int i) {
        this(i, ImmutableList.of());
    }

    @Override
    public nab a(int i, nab.b bVar) {
        if (i != 2) {
            if (i == 3 || i == 4) {
                return new x08(new tr6(bVar.b));
            }
            if (i == 21) {
                return new x08(new nx4());
            }
            if (i == 27) {
                if (e(4)) {
                    return null;
                }
                return new x08(new qk4(b(bVar), e(1), e(8)));
            }
            if (i == 36) {
                return new x08(new rk4(b(bVar)));
            }
            if (i == 89) {
                return new x08(new c43(bVar.c));
            }
            if (i != 138) {
                if (i == 172) {
                    return new x08(new r4(bVar.b));
                }
                if (i == 257) {
                    return new ca9(new rx7(MimeTypes.APPLICATION_AIT));
                }
                if (i == 134) {
                    if (e(16)) {
                        return null;
                    }
                    return new ca9(new rx7(MimeTypes.APPLICATION_SCTE35));
                }
                if (i != 135) {
                    switch (i) {
                        case 15:
                            if (e(2)) {
                                return null;
                            }
                            return new x08(new g9(false, bVar.b));
                        case 16:
                            return new x08(new pk4(c(bVar)));
                        case 17:
                            if (e(2)) {
                                return null;
                            }
                            return new x08(new ri5(bVar.b));
                        default:
                            switch (i) {
                                case 128:
                                    break;
                                case 129:
                                    break;
                                case 130:
                                    if (!e(64)) {
                                        return null;
                                    }
                                    break;
                                default:
                                    return null;
                            }
                            break;
                    }
                }
                return new x08(new m4(bVar.b));
            }
            return new x08(new p33(bVar.b));
        }
        return new x08(new ok4(c(bVar)));
    }

    public final ra9 b(nab.b bVar) {
        return new ra9(d(bVar));
    }

    public final ekb c(nab.b bVar) {
        return new ekb(d(bVar));
    }

    @Override
    public SparseArray createInitialPayloadReaders() {
        return new SparseArray();
    }

    public final List d(nab.b bVar) {
        String str;
        int i;
        if (e(32)) {
            return this.b;
        }
        qw7 qw7Var = new qw7(bVar.d);
        List arrayList = this.b;
        while (qw7Var.a() > 0) {
            int iC = qw7Var.C();
            int iE = qw7Var.e() + qw7Var.C();
            if (iC == 134) {
                arrayList = new ArrayList();
                int iC2 = qw7Var.C() & 31;
                for (int i2 = 0; i2 < iC2; i2++) {
                    String strZ = qw7Var.z(3);
                    int iC3 = qw7Var.C();
                    boolean z = (iC3 & 128) != 0;
                    if (z) {
                        i = iC3 & 63;
                        str = MimeTypes.APPLICATION_CEA708;
                    } else {
                        str = MimeTypes.APPLICATION_CEA608;
                        i = 1;
                    }
                    byte bC = (byte) qw7Var.C();
                    qw7Var.P(1);
                    arrayList.add(new k.b().e0(str).V(strZ).F(i).T(z ? b51.b((bC & 64) != 0) : null).E());
                }
            }
            qw7Var.O(iE);
        }
        return arrayList;
    }

    public final boolean e(int i) {
        return (this.a & i) != 0;
    }

    public r62(int i, List list) {
        this.a = i;
        this.b = list;
    }
}
