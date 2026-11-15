package defpackage;

import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public abstract class ls0 {
    public static Set a = Collections.unmodifiableSet(new HashSet());
    public static List b = Collections.unmodifiableList(new ArrayList());

    public static boolean[] a(s0 s0Var) {
        if (s0Var == null) {
            return null;
        }
        byte[] bArrX = s0Var.x();
        int length = (bArrX.length * 8) - s0Var.i();
        boolean[] zArr = new boolean[length];
        for (int i = 0; i != length; i++) {
            zArr[i] = (bArrX[i / 8] & (128 >>> (i % 8))) != 0;
        }
        return zArr;
    }

    public static Set b(gk3 gk3Var) {
        return gk3Var == null ? a : Collections.unmodifiableSet(new HashSet(Arrays.asList(gk3Var.m())));
    }

    public static List c(gk3 gk3Var) {
        return gk3Var == null ? b : Collections.unmodifiableList(Arrays.asList(gk3Var.o()));
    }

    public static Set d(gk3 gk3Var) {
        return gk3Var == null ? a : Collections.unmodifiableSet(new HashSet(Arrays.asList(gk3Var.u())));
    }

    public static boolean e(oa oaVar, oa oaVar2) {
        if (!oaVar.m().s(oaVar2.m())) {
            return false;
        }
        if (qi8.c("org.bouncycastle.x509.allow_absent_equiv_NULL")) {
            if (oaVar.p() == null) {
                return oaVar2.p() == null || oaVar2.p().equals(up1.c);
            }
            if (oaVar2.p() == null) {
                return oaVar.p() == null || oaVar.p().equals(up1.c);
            }
        }
        if (oaVar.p() != null) {
            return oaVar.p().equals(oaVar2.p());
        }
        if (oaVar2.p() != null) {
            return oaVar2.p().equals(oaVar.p());
        }
        return true;
    }

    public static p1 f(byte[] bArr) throws IOException {
        p1 p1VarT = p1.t(bArr);
        if (p1VarT != null) {
            return p1VarT;
        }
        throw new IOException("no content found");
    }

    public static Date g(c1 c1Var) {
        try {
            return c1Var.A();
        } catch (ParseException e) {
            throw new IllegalStateException("unable to recover date: " + e.getMessage());
        }
    }
}
