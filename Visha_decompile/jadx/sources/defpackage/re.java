package defpackage;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.dvbsi.AppInfoTable;
import java.nio.ByteBuffer;
import java.util.ArrayList;

public final class re extends jm9 {
    public static Metadata c(pw7 pw7Var) {
        pw7Var.r(12);
        int iD = (pw7Var.d() + pw7Var.h(12)) - 4;
        pw7Var.r(44);
        pw7Var.s(pw7Var.h(12));
        pw7Var.r(16);
        ArrayList arrayList = new ArrayList();
        while (true) {
            String strL = null;
            if (pw7Var.d() >= iD) {
                break;
            }
            pw7Var.r(48);
            int iH = pw7Var.h(8);
            pw7Var.r(4);
            int iD2 = pw7Var.d() + pw7Var.h(12);
            String strL2 = null;
            while (pw7Var.d() < iD2) {
                int iH2 = pw7Var.h(8);
                int iH3 = pw7Var.h(8);
                int iD3 = pw7Var.d() + iH3;
                if (iH2 == 2) {
                    int iH4 = pw7Var.h(16);
                    pw7Var.r(8);
                    if (iH4 == 3) {
                        while (pw7Var.d() < iD3) {
                            strL = pw7Var.l(pw7Var.h(8), rv0.a);
                            int iH5 = pw7Var.h(8);
                            for (int i = 0; i < iH5; i++) {
                                pw7Var.s(pw7Var.h(8));
                            }
                        }
                    }
                } else if (iH2 == 21) {
                    strL2 = pw7Var.l(iH3, rv0.a);
                }
                pw7Var.p(iD3 * 8);
            }
            pw7Var.p(iD2 * 8);
            if (strL != null && strL2 != null) {
                arrayList.add(new AppInfoTable(iH, strL + strL2));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    @Override
    public Metadata b(eo6 eo6Var, ByteBuffer byteBuffer) {
        if (byteBuffer.get() == 116) {
            return c(new pw7(byteBuffer.array(), byteBuffer.limit()));
        }
        return null;
    }
}
