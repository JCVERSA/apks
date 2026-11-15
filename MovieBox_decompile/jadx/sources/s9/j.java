package s9;

import android.util.SparseArray;
import com.google.android.exoplayer2.p1;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.List;

public final class j implements i0.c {

    private final int f71762a;

    private final List f71763b;

    public j() {
        this(0);
    }

    private d0 b(i0.b bVar) {
        return new d0(d(bVar));
    }

    private k0 c(i0.b bVar) {
        return new k0(d(bVar));
    }

    private List d(i0.b bVar) {
        String str;
        int i10;
        if (e(32)) {
            return this.f71763b;
        }
        com.google.android.exoplayer2.util.d0 d0Var = new com.google.android.exoplayer2.util.d0(bVar.f71756d);
        List arrayList = this.f71763b;
        while (d0Var.a() > 0) {
            int iD = d0Var.D();
            int iE = d0Var.e() + d0Var.D();
            if (iD == 134) {
                arrayList = new ArrayList();
                int iD2 = d0Var.D() & 31;
                for (int i11 = 0; i11 < iD2; i11++) {
                    String strA = d0Var.A(3);
                    int iD3 = d0Var.D();
                    boolean z10 = (iD3 & 128) != 0;
                    if (z10) {
                        i10 = iD3 & 63;
                        str = MimeTypes.APPLICATION_CEA708;
                    } else {
                        str = MimeTypes.APPLICATION_CEA608;
                        i10 = 1;
                    }
                    byte bD = (byte) d0Var.D();
                    d0Var.Q(1);
                    arrayList.add(new p1.b().e0(str).V(strA).F(i10).T(z10 ? com.google.android.exoplayer2.util.f.b((bD & 64) != 0) : null).E());
                }
            }
            d0Var.P(iE);
        }
        return arrayList;
    }

    private boolean e(int i10) {
        return (i10 & this.f71762a) != 0;
    }

    @Override
    public i0 a(int i10, i0.b bVar) {
        if (i10 != 2) {
            if (i10 == 3 || i10 == 4) {
                return new w(new t(bVar.f71754b));
            }
            if (i10 == 21) {
                return new w(new r());
            }
            if (i10 == 27) {
                if (e(4)) {
                    return null;
                }
                return new w(new p(b(bVar), e(1), e(8)));
            }
            if (i10 == 36) {
                return new w(new q(b(bVar)));
            }
            if (i10 == 89) {
                return new w(new l(bVar.f71755c));
            }
            if (i10 != 138) {
                if (i10 == 172) {
                    return new w(new f(bVar.f71754b));
                }
                if (i10 == 257) {
                    return new c0(new v("application/vnd.dvb.ait"));
                }
                if (i10 == 134) {
                    if (e(16)) {
                        return null;
                    }
                    return new c0(new v(MimeTypes.APPLICATION_SCTE35));
                }
                if (i10 != 135) {
                    switch (i10) {
                        case 15:
                            if (e(2)) {
                                return null;
                            }
                            return new w(new i(false, bVar.f71754b));
                        case 16:
                            return new w(new o(c(bVar)));
                        case 17:
                            if (e(2)) {
                                return null;
                            }
                            return new w(new s(bVar.f71754b));
                        default:
                            switch (i10) {
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
                return new w(new c(bVar.f71754b));
            }
            return new w(new k(bVar.f71754b));
        }
        return new w(new n(c(bVar)));
    }

    @Override
    public SparseArray createInitialPayloadReaders() {
        return new SparseArray();
    }

    public j(int i10) {
        this(i10, ImmutableList.of());
    }

    public j(int i10, List list) {
        this.f71762a = i10;
        this.f71763b = list;
    }
}
