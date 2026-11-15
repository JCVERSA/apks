package com.yandex.mobile.ads.impl;

import android.util.SparseArray;
import androidx.annotation.Nullable;
import androidx.media3.common.MimeTypes;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class t00 implements p72.c {
    private final int a;
    private final List<jc0> b;

    public t00() {
        this(kk0.h());
    }

    @Override
    @Nullable
    public final p72 a(int i, p72.b bVar) {
        if (i != 2) {
            if (i == 3 || i == 4) {
                return new vg1(new e21(bVar.a));
            }
            if (i == 21) {
                return new vg1(new vi0());
            }
            if (i == 27) {
                if (a(4)) {
                    return null;
                }
                return new vg1(new ef0(new jx1(a(bVar)), a(1), a(8)));
            }
            if (i == 36) {
                return new vg1(new ff0(new jx1(a(bVar))));
            }
            if (i == 89) {
                return new vg1(new x40(bVar.b));
            }
            if (i != 138) {
                if (i == 172) {
                    return new vg1(new v(bVar.a));
                }
                if (i == 257) {
                    return new dx1(new lg1(MimeTypes.APPLICATION_AIT));
                }
                if (i == 134) {
                    if (a(16)) {
                        return null;
                    }
                    return new dx1(new lg1(MimeTypes.APPLICATION_SCTE35));
                }
                if (i != 135) {
                    switch (i) {
                        case 15:
                            if (a(2)) {
                                return null;
                            }
                            return new vg1(new ib(bVar.a, false));
                        case 16:
                            return new vg1(new df0(new e92(a(bVar))));
                        case 17:
                            if (a(2)) {
                                return null;
                            }
                            return new vg1(new er0(bVar.a));
                        default:
                            switch (i) {
                                case 128:
                                    break;
                                case 129:
                                    break;
                                case 130:
                                    if (!a(64)) {
                                        return null;
                                    }
                                    break;
                                default:
                                    return null;
                            }
                            break;
                    }
                }
                return new vg1(new s(bVar.a));
            }
            return new vg1(new n40(bVar.a));
        }
        return new vg1(new cf0(new e92(a(bVar))));
    }

    public t00(List list) {
        this.a = 0;
        this.b = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v3 */
    private List<jc0> a(p72.b bVar) {
        String str;
        int i;
        List<byte[]> listSingletonList;
        if (a(32)) {
            return this.b;
        }
        ag1 ag1Var = new ag1(bVar.c);
        ArrayList arrayList = this.b;
        while (ag1Var.a() > 0) {
            int iT = ag1Var.t();
            int iD = ag1Var.d() + ag1Var.t();
            if (iT == 134) {
                arrayList = new ArrayList();
                int iT2 = ag1Var.t() & 31;
                for (int i2 = 0; i2 < iT2; i2++) {
                    String strA = ag1Var.a(3, lo.c);
                    int iT3 = ag1Var.t();
                    boolean z = (iT3 & 128) != 0;
                    if (z) {
                        i = iT3 & 63;
                        str = MimeTypes.APPLICATION_CEA708;
                    } else {
                        str = MimeTypes.APPLICATION_CEA608;
                        i = 1;
                    }
                    byte bT = (byte) ag1Var.t();
                    ag1Var.f(1);
                    if (z) {
                        listSingletonList = Collections.singletonList((bT & 64) != 0 ? new byte[]{1} : new byte[]{0});
                    } else {
                        listSingletonList = null;
                    }
                    arrayList.add(new jc0.a().e(str).d(strA).a(i).a(listSingletonList).a());
                }
            }
            ag1Var.e(iD);
            arrayList = arrayList;
        }
        return arrayList;
    }

    private boolean a(int i) {
        return (this.a & i) != 0;
    }

    @Override
    public final SparseArray<p72> a() {
        return new SparseArray<>();
    }
}
