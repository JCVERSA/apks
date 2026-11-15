package freemarker.core;

import androidx.media3.common.C;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.transsion.apiinvoke.common.router.ProcessInfo;
import com.youth.banner.config.BannerConfig;
import defpackage.aq6;
import defpackage.b24;
import defpackage.bga;
import defpackage.bj;
import defpackage.bz4;
import defpackage.d1d;
import defpackage.da1;
import defpackage.dl;
import defpackage.ifa;
import defpackage.j47;
import defpackage.me1;
import defpackage.mga;
import defpackage.n0a;
import defpackage.pfa;
import defpackage.qu9;
import defpackage.qx4;
import defpackage.ru1;
import defpackage.rw2;
import defpackage.sl5;
import defpackage.sx9;
import defpackage.v83;
import defpackage.w6b;
import defpackage.wd1;
import defpackage.xga;
import defpackage.xl9;
import defpackage.xo8;
import defpackage.y07;
import defpackage.yk3;
import defpackage.yr0;
import defpackage.z9b;
import defpackage.zfa;
import defpackage.zo3;
import freemarker.template.Template;
import freemarker.template.TemplateModelException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.StringTokenizer;
import java.util.Vector;
import org.apache.commons.text.StringSubstitutor;

public class FMParser implements yk3 {
    public static int[] F;
    public static int[] G;
    public static int[] H;
    public static int[] I;
    public static int[] J;
    public static Class K;
    public Vector A;
    public int[] B;
    public int C;
    public int[] D;
    public int E;
    public Template b;
    public boolean c;
    public boolean d;
    public List e;
    public int f;
    public boolean g;
    public boolean h;
    public LinkedList i;
    public int j;
    public int k;
    public u0 l;
    public xl9 m;
    public Token n;
    public Token o;
    public int p;
    public Token q;
    public Token r;
    public int s;
    public boolean t;
    public int u;
    public final int[] v;
    public final a[] w;
    public boolean x;
    public int y;
    public final LookaheadSuccess z;

    public static final class LookaheadSuccess extends Error {
        private LookaheadSuccess() {
        }
    }

    public static final class a {
        public int a;
        public Token b;
        public int c;
        public a d;
    }

    public static class b {
        public String a;
        public int b;

        public b() {
        }
    }

    static {
        v4();
        w4();
        x4();
        y4();
        z4();
    }

    public FMParser(Template template, Reader reader, boolean z, boolean z2) {
        this(reader);
        N4(template);
        this.l.v0(this);
        this.l.h = z;
        this.c = z2;
    }

    public static void v4() {
        F = new int[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67108864, 33554432, 0, 0, 458752, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6291456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1073741824, 0, 0, 0, 0, 0, 32768, 0, -33472, 0, 0, 0, -33472, -33472, 0, 0, -33472, 0, 0, 0, 0, 0};
    }

    public static void w4() {
        G = new int[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65536, 96, 0, 65536, 16, 0, 0, 0, 805306368, 262144, 524288, 201326592, 31457280, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1792, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33554432, 0, -33685503, 0, 0, 0, -33685503, -33685503, 0, 0, -33685503, 0, 0, 0, 0, 0};
    }

    public static void x4() {
        H = new int[]{266338304, 266338304, 0, 0, 0, 0, 0, 0, C.ENCODING_PCM_32BIT_BIG_ENDIAN, 1879048192, 1879048192, 100663296, 6291456, BannerConfig.INDICATOR_SELECTED_COLOR, 0, 25165824, 25165824, 6291456, 25165824, 0, 0, 0, 266338304, 0, 0, 0, 0, 0, 0, 0, 0, 266338304, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 266338304, 0, 266338304, 0, 0, 0, 0, 256, 256, 0, 0, 10, 1792, 0, 0, 7946, 7946, 7936, 7936, 7946, 256, 0, 96, 0, 0};
    }

    public static void y4() {
        I = new int[]{C.ENCODING_PCM_24BIT_BIG_ENDIAN, 1359052800, 16777216, 98304, 98304, 3276800, 14, 30720, 0, 0, 0, 0, 0, 1358954497, 16777216, 30720, 423936, 0, 0, 167772160, 33554432, 167772160, 1359052800, 67108864, 0, 0, 0, 0, 0, 0, 0, 1359052800, 0, 0, 0, 0, 0, 0, 0, 498, 1536, 2034, 33554432, 498, 1536, 2034, 0, 0, 0, 2034, 67108864, 0, 0, 1073741824, 0, 524288, 2, 33554432, Integer.MIN_VALUE, 0, 0, 0, 33554432, 0, 0, 0, 67108864, 0, Integer.MIN_VALUE, 0, 1392607232, 33554432, 1359052800, 0, 67108864, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33554432, 0};
    }

    public static Class z0(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    public static void z4() {
        J = new int[]{33, 33, 0, 0, 0, 0, 0, 24576, 0, 0, 0, 0, 32, 65536, 65536, 28, 60, 0, 0, 0, 0, 0, 33, 0, 0, 0, 0, 8, 0, 0, 16, 33, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 0, 2052, 0, 32, 0, 0, 32, 0, 0, 0, 0, 0, 32768, 32768, 32768, 32768, 32768, 32800, 0, 6144, 0, 32, 33, 0, 33, 0, 0, 32, 6144, 0, 0, 0, 6144, 0, 0, 1966080, 1966080, 0, 0, 0, 0, 0, 0, 32, 0, 0, 32};
    }

    /* JADX WARN: Code duplicated, block: B:20:0x003f  */
    /* JADX WARN: Code duplicated, block: B:22:0x0047  */
    /* JADX WARN: Code duplicated, block: B:25:0x0051 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:26:0x0053  */
    /* JADX WARN: Code duplicated, block: B:27:0x0057  */
    /* JADX WARN: Code duplicated, block: B:29:0x0068  */
    /* JADX WARN: Code duplicated, block: B:33:0x007c  */
    /* JADX WARN: Code duplicated, block: B:38:0x009b  */
    /* JADX WARN: Code duplicated, block: B:40:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:42:0x00ac A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:43:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:46:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:48:0x0082 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:49:0x00b2 A[SYNTHETIC] */
    public final v0 A() throws ParseException {
        int iA4;
        int iA5;
        int iA6;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Token tokenU4 = u4(128);
        int iA7 = this.p;
        if (iA7 == -1) {
            iA7 = A4();
        }
        if (iA7 != 111 && iA7 != 112 && iA7 != 120 && iA7 != 124 && iA7 != 126 && iA7 != 128 && iA7 != 133) {
            switch (iA7) {
                case 85:
                case 86:
                case 87:
                case 88:
                case 89:
                case 90:
                case 91:
                    t0 t0VarU = u();
                    iA4 = this.p;
                    if (iA4 == -1) {
                        iA4 = A4();
                    }
                    if (iA4 != 121) {
                        u4(121);
                    } else {
                        if (iA4 == 123) {
                            this.v[19] = this.u;
                            u4(-1);
                            throw new ParseException();
                        }
                        u4(123);
                    }
                    t0 t0VarU2 = u();
                    O4(t0VarU);
                    arrayList.add(t0VarU);
                    arrayList2.add(t0VarU2);
                    while (true) {
                        iA5 = this.p;
                        if (iA5 == -1) {
                            iA5 = A4();
                        }
                        if (iA5 != 121) {
                            this.v[20] = this.u;
                        } else {
                            u4(121);
                            t0 t0VarU3 = u();
                            iA6 = this.p;
                            if (iA6 == -1) {
                                iA6 = A4();
                            }
                            if (iA6 != 121) {
                                u4(121);
                            } else {
                                if (iA6 == 123) {
                                    this.v[21] = this.u;
                                    u4(-1);
                                    throw new ParseException();
                                }
                                u4(123);
                            }
                            t0 t0VarU4 = u();
                            O4(t0VarU3);
                            arrayList.add(t0VarU3);
                            arrayList2.add(t0VarU4);
                        }
                        break;
                    }
                    break;
                default:
                    this.v[22] = this.u;
                    break;
            }
        } else {
            t0 t0VarU5 = u();
            iA4 = this.p;
            if (iA4 == -1) {
                iA4 = A4();
            }
            if (iA4 != 121) {
                u4(121);
            } else {
                if (iA4 == 123) {
                    this.v[19] = this.u;
                    u4(-1);
                    throw new ParseException();
                }
                u4(123);
            }
            t0 t0VarU6 = u();
            O4(t0VarU5);
            arrayList.add(t0VarU5);
            arrayList2.add(t0VarU6);
            while (true) {
                iA5 = this.p;
                if (iA5 == -1) {
                    iA5 = A4();
                }
                if (iA5 != 121) {
                    this.v[20] = this.u;
                } else {
                    u4(121);
                    t0 t0VarU7 = u();
                    iA6 = this.p;
                    if (iA6 == -1) {
                        iA6 = A4();
                    }
                    if (iA6 != 121) {
                        u4(121);
                    } else {
                        if (iA6 == 123) {
                            this.v[21] = this.u;
                            u4(-1);
                            throw new ParseException();
                        }
                        u4(123);
                    }
                    t0 t0VarU8 = u();
                    O4(t0VarU7);
                    arrayList.add(t0VarU7);
                    arrayList2.add(t0VarU8);
                }
            }
        }
        Token tokenU5 = u4(129);
        v0 v0Var = new v0(arrayList, arrayList2);
        v0Var.E(this.b, tokenU4, tokenU5);
        return v0Var;
    }

    public final t0 A0(t0 t0Var) {
        return !this.i.isEmpty() ? ((p0) this.i.getFirst()).l0(t0Var) : t0Var;
    }

    public final boolean A1() {
        return D4(126) || S3() || D4(127);
    }

    public final boolean A2() {
        return D4(58);
    }

    public final boolean A3() {
        Token token = this.q;
        if (!D4(89)) {
            return false;
        }
        this.q = token;
        return D4(90);
    }

    public final int A4() {
        Token token = this.n;
        Token token2 = token.next;
        this.o = token2;
        if (token2 != null) {
            int i = token2.kind;
            this.p = i;
            return i;
        }
        Token tokenJ = this.l.j();
        token.next = tokenJ;
        int i2 = tokenJ.kind;
        this.p = i2;
        return i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void B() throws ParseException {
        String asString;
        String string;
        int iA4 = this.p;
        if (iA4 == -1) {
            iA4 = A4();
        }
        if (iA4 != 72) {
            this.v[90] = this.u;
        } else {
            u4(72);
        }
        int iA5 = this.p;
        if (iA5 == -1) {
            iA5 = A4();
        }
        if (iA5 != 69) {
            if (iA5 == 70) {
                u4(70);
                return;
            } else {
                this.v[92] = this.u;
                u4(-1);
                throw new ParseException();
            }
        }
        u4(69);
        while (true) {
            int iA6 = this.p;
            if (iA6 == -1) {
                iA6 = A4();
            }
            if (iA6 != 133) {
                this.v[91] = this.u;
                K();
                return;
            }
            Token tokenU4 = u4(133);
            u4(97);
            t0 t0VarU = u();
            this.l.e(tokenU4);
            String str = tokenU4.image;
            String str2 = null;
            try {
                zfa zfaVarK = t0VarU.K(null);
                if (zfaVarK instanceof mga) {
                    try {
                        asString = ((mga) t0VarU).getAsString();
                    } catch (TemplateModelException unused) {
                        asString = null;
                    }
                } else {
                    asString = null;
                }
                if (this.b != null) {
                    if (str.equalsIgnoreCase("encoding")) {
                        if (asString == null) {
                            throw new ParseException("Expecting an encoding string.", t0VarU);
                        }
                        String strW0 = this.b.w0();
                        if (strW0 != null && !strW0.equalsIgnoreCase(asString)) {
                            throw new Template.WrongEncodingException(asString, strW0);
                        }
                    } else if (str.equalsIgnoreCase("STRIP_WHITESPACE") || str.equals("stripWhitespace")) {
                        this.c = D0(t0VarU);
                    } else if (str.equalsIgnoreCase("STRIP_TEXT") || str.equals("stripText")) {
                        this.d = D0(t0VarU);
                    } else if (str.equalsIgnoreCase("STRICT_SYNTAX") || str.equals("strictSyntax")) {
                        this.l.h = D0(t0VarU);
                    } else if (str.equalsIgnoreCase("ns_prefixes") || str.equals("nsPrefixes")) {
                        if (!(zfaVarK instanceof pfa)) {
                            throw new ParseException("Expecting a hash of prefixes to namespace URI's.", t0VarU);
                        }
                        pfa pfaVar = (pfa) zfaVarK;
                        bga it = pfaVar.keys().iterator();
                        while (it.hasNext()) {
                            String asString2 = ((mga) it.next()).getAsString();
                            zfa zfaVar = pfaVar.get(asString2);
                            if (!(zfaVar instanceof mga)) {
                                throw new ParseException("Non-string value in prefix to namespace hash.", t0VarU);
                            }
                            try {
                                this.b.p0(asString2, ((mga) zfaVar).getAsString());
                            } catch (IllegalArgumentException e) {
                                throw new ParseException(e.getMessage(), t0VarU);
                            }
                        }
                    } else {
                        if (!str.equalsIgnoreCase("attributes")) {
                            if (str.equals("charset")) {
                                str2 = "encoding";
                            } else if (str.equals("xmlns")) {
                                str2 = this.l.o == 12 ? "nsPrefixes" : "ns_prefixes";
                            }
                            StringBuffer stringBuffer = new StringBuffer();
                            stringBuffer.append("Unknown FTL header parameter: ");
                            stringBuffer.append(tokenU4.image);
                            if (str2 == null) {
                                string = "";
                            } else {
                                StringBuffer stringBuffer2 = new StringBuffer();
                                stringBuffer2.append(". Did you mean ");
                                stringBuffer2.append(str2);
                                stringBuffer2.append("?");
                                string = stringBuffer2.toString();
                            }
                            stringBuffer.append(string);
                            throw new ParseException(stringBuffer.toString(), this.b, tokenU4);
                        }
                        if (!(zfaVarK instanceof pfa)) {
                            throw new ParseException("Expecting a hash of attribute names to values.", t0VarU);
                        }
                        pfa pfaVar2 = (pfa) zfaVarK;
                        try {
                            bga it2 = pfaVar2.keys().iterator();
                            while (it2.hasNext()) {
                                String asString3 = ((mga) it2.next()).getAsString();
                                this.b.S(asString3, ru1.b(pfaVar2.get(asString3)));
                            }
                        } catch (TemplateModelException unused2) {
                        }
                    }
                }
            } catch (Exception e2) {
                StringBuffer stringBuffer3 = new StringBuffer();
                stringBuffer3.append("Could not evaluate expression: ");
                stringBuffer3.append(t0VarU.o());
                stringBuffer3.append(" \nUnderlying cause: ");
                stringBuffer3.append(e2.getMessage());
                throw new ParseException(stringBuffer3.toString(), t0VarU, e2);
            }
        }
    }

    public final String B0() {
        return this.l.o == 12 ? "#forEach" : "#foreach";
    }

    public final boolean B1() {
        if (D4(95) || D4(133)) {
            return true;
        }
        Token token = this.q;
        if (!n2()) {
            return false;
        }
        this.q = token;
        return false;
    }

    public final boolean B2() {
        return D4(59);
    }

    public final boolean B3() {
        if (D4(128)) {
            return true;
        }
        Token token = this.q;
        if (O3()) {
            this.q = token;
        }
        return D4(129);
    }

    public final void B4() {
        this.x = true;
        for (int i = 0; i < 16; i++) {
            a aVar = this.w[i];
            do {
                if (aVar.a > this.u) {
                    this.s = aVar.c;
                    Token token = aVar.b;
                    this.q = token;
                    this.r = token;
                    switch (i) {
                        case 0:
                            d4();
                            break;
                        case 1:
                            l4();
                            break;
                        case 2:
                            m4();
                            break;
                        case 3:
                            n4();
                            break;
                        case 4:
                            o4();
                            break;
                        case 5:
                            p4();
                            break;
                        case 6:
                            q4();
                            break;
                        case 7:
                            r4();
                            break;
                        case 8:
                            s4();
                            break;
                        case 9:
                            e4();
                            break;
                        case 10:
                            f4();
                            break;
                        case 11:
                            g4();
                            break;
                        case 12:
                            h4();
                            break;
                        case 13:
                            i4();
                            break;
                        case 14:
                            j4();
                            break;
                        case 15:
                            k4();
                            break;
                    }
                }
                aVar = aVar.d;
            } while (aVar != null);
        }
        this.x = false;
    }

    public final x0 C() throws ParseException {
        Token tokenU4 = u4(133);
        x0 x0Var = new x0(tokenU4.image);
        x0Var.E(this.b, tokenU4, tokenU4);
        return x0Var;
    }

    public ParseException C0() {
        this.A.removeAllElements();
        boolean[] zArr = new boolean[149];
        for (int i = 0; i < 149; i++) {
            zArr[i] = false;
        }
        int i2 = this.C;
        if (i2 >= 0) {
            zArr[i2] = true;
            this.C = -1;
        }
        for (int i3 = 0; i3 < 95; i3++) {
            if (this.v[i3] == this.u) {
                for (int i4 = 0; i4 < 32; i4++) {
                    int i5 = 1 << i4;
                    if ((F[i3] & i5) != 0) {
                        zArr[i4] = true;
                    }
                    if ((G[i3] & i5) != 0) {
                        zArr[i4 + 32] = true;
                    }
                    if ((H[i3] & i5) != 0) {
                        zArr[i4 + 64] = true;
                    }
                    if ((I[i3] & i5) != 0) {
                        zArr[i4 + 96] = true;
                    }
                    if ((J[i3] & i5) != 0) {
                        zArr[i4 + 128] = true;
                    }
                }
            }
        }
        for (int i6 = 0; i6 < 149; i6++) {
            if (zArr[i6]) {
                int[] iArr = {i6};
                this.B = iArr;
                this.A.addElement(iArr);
            }
        }
        this.E = 0;
        B4();
        t4(0, 0);
        int[][] iArr2 = new int[this.A.size()][];
        for (int i7 = 0; i7 < this.A.size(); i7++) {
            iArr2[i7] = (int[]) this.A.elementAt(i7);
        }
        return new ParseException(this.n, iArr2, yk3.D1);
    }

    public final boolean C1() {
        Token token = this.q;
        if (!D4(144)) {
            return false;
        }
        this.q = token;
        return o2();
    }

    public final boolean C2() {
        return D4(61);
    }

    public final boolean C3() {
        Token token = this.q;
        if (!D4(85)) {
            return false;
        }
        this.q = token;
        return P3();
    }

    public final void C4(int i, int i2) {
        a aVar = this.w[i];
        while (aVar.a > this.u) {
            a aVar2 = aVar.d;
            if (aVar2 == null) {
                a aVar3 = new a();
                aVar.d = aVar3;
                aVar = aVar3;
                break;
            }
            aVar = aVar2;
        }
        aVar.a = (this.u + i2) - this.s;
        aVar.b = this.n;
        aVar.c = i2;
    }

    public final t0 D() throws ParseException {
        int iA4 = this.p;
        if (iA4 == -1) {
            iA4 = A4();
        }
        if (iA4 == 85 || iA4 == 86) {
            return l0(false);
        }
        if (iA4 == 133) {
            return C();
        }
        this.v[12] = this.u;
        u4(-1);
        throw new ParseException();
    }

    public final boolean D0(t0 t0Var) throws ParseException {
        try {
            zfa zfaVarK = t0Var.K(null);
            if (zfaVarK instanceof freemarker.template.a) {
                try {
                    return ((freemarker.template.a) zfaVarK).getAsBoolean();
                } catch (TemplateModelException unused) {
                }
            }
            if (!(zfaVarK instanceof mga)) {
                throw new ParseException("Expecting boolean (true/false) parameter", t0Var);
            }
            try {
                return n0a.u(((mga) zfaVarK).getAsString());
            } catch (Exception e) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(e.getMessage());
                stringBuffer.append("\nExpecting boolean (true/false), found: ");
                stringBuffer.append(t0Var.o());
                throw new ParseException(stringBuffer.toString(), t0Var);
            }
        } catch (Exception e2) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(e2.getMessage());
            stringBuffer2.append("\nCould not evaluate expression: ");
            stringBuffer2.append(t0Var.o());
            throw new ParseException(stringBuffer2.toString(), t0Var, e2);
        }
    }

    public final boolean D1() {
        return D4(96);
    }

    public final boolean D2() {
        return F2();
    }

    public final boolean D3() {
        Token token = this.q;
        if (!Q3()) {
            return false;
        }
        this.q = token;
        return R3();
    }

    public final boolean D4(int i) {
        Token token = this.q;
        if (token == this.r) {
            this.s--;
            Token token2 = token.next;
            if (token2 == null) {
                Token tokenJ = this.l.j();
                token.next = tokenJ;
                this.q = tokenJ;
                this.r = tokenJ;
            } else {
                this.q = token2;
                this.r = token2;
            }
        } else {
            this.q = token.next;
        }
        if (this.x) {
            Token token3 = this.n;
            int i2 = 0;
            while (token3 != null && token3 != this.q) {
                i2++;
                token3 = token3.next;
            }
            if (token3 != null) {
                t4(i, i2);
            }
        }
        Token token4 = this.q;
        if (token4.kind != i) {
            return true;
        }
        if (this.s == 0 && token4 == this.r) {
            throw this.z;
        }
        return false;
    }

    public final ifa E() throws ParseException {
        Token tokenU4 = u4(8);
        t0 t0VarU = u();
        u4(139);
        ifa ifaVarW = W();
        me1 me1Var = new me1(t0VarU, ifaVarW, 0);
        me1Var.C(this.b, tokenU4, ifaVarW);
        qx4 qx4Var = new qx4(me1Var);
        while (true) {
            int iA4 = this.p;
            if (iA4 == -1) {
                iA4 = A4();
            }
            if (iA4 != 9) {
                break;
            }
            Token tokenU5 = u4(9);
            t0 t0VarU2 = u();
            K();
            ifa ifaVarW2 = W();
            me1 me1Var2 = new me1(t0VarU2, ifaVarW2, 2);
            me1Var2.C(this.b, tokenU5, ifaVarW2);
            qx4Var.l0(me1Var2);
        }
        this.v[24] = this.u;
        int iA5 = this.p;
        if (iA5 == -1) {
            iA5 = A4();
        }
        if (iA5 != 48) {
            this.v[25] = this.u;
        } else {
            Token tokenU6 = u4(48);
            ifa ifaVarW3 = W();
            me1 me1Var3 = new me1(null, ifaVarW3, 1);
            me1Var3.C(this.b, tokenU6, ifaVarW3);
            qx4Var.l0(me1Var3);
        }
        qx4Var.E(this.b, tokenU4, u4(33));
        return qx4Var;
    }

    public final boolean E0(int i) {
        this.s = i;
        Token token = this.n;
        this.q = token;
        this.r = token;
        try {
            return true ^ d4();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            C4(0, i);
        }
    }

    public final boolean E1() {
        return D4(93);
    }

    public final boolean E2() {
        Token token;
        if (H2()) {
            return true;
        }
        do {
            token = this.q;
        } while (!I2());
        this.q = token;
        return false;
    }

    public final boolean E3() {
        return D4(124) || S3() || D4(125);
    }

    public final void E4(t0 t0Var, String str) throws ParseException {
        if (t0Var instanceof i) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Found: ");
            stringBuffer.append(t0Var.o());
            stringBuffer.append(". Expecting ");
            stringBuffer.append(str);
            throw new ParseException(stringBuffer.toString(), t0Var);
        }
    }

    public final b1 F() throws ParseException {
        Token tokenU4 = u4(20);
        t0 t0VarU = u();
        u4(131);
        Token tokenU5 = u4(133);
        Token tokenK = K();
        b1 b1Var = new b1(this.b, t0VarU, tokenU5.image);
        b1Var.E(this.b, tokenU4, tokenK);
        this.b.n0(b1Var);
        return b1Var;
    }

    public final boolean F0(int i) {
        this.s = i;
        Token token = this.n;
        this.q = token;
        this.r = token;
        try {
            return true ^ e4();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            C4(9, i);
        }
    }

    public final boolean F1() {
        return D4(94);
    }

    public final boolean F2() {
        return J2();
    }

    public final boolean F3() {
        return D4(133);
    }

    public final void F4(t0 t0Var, String str) throws ParseException {
        if (t0Var instanceof v0) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Found hash literal: ");
            stringBuffer.append(t0Var.o());
            stringBuffer.append(". Expecting ");
            stringBuffer.append(str);
            throw new ParseException(stringBuffer.toString(), t0Var);
        }
    }

    public final bz4 G() throws ParseException {
        Token tokenU4 = u4(19);
        t0 t0VarU = u();
        int iA4 = this.p;
        if (iA4 == -1) {
            iA4 = A4();
        }
        if (iA4 != 122) {
            this.v[50] = this.u;
        } else {
            u4(122);
        }
        t0 t0Var = null;
        t0 t0Var2 = null;
        t0 t0Var3 = null;
        while (true) {
            int iA5 = this.p;
            if (iA5 == -1) {
                iA5 = A4();
            }
            if (iA5 != 133) {
                this.v[51] = this.u;
                Token tokenK = K();
                bz4 bz4Var = new bz4(this.b, t0VarU, t0Var, t0Var2, t0Var3);
                bz4Var.E(this.b, tokenU4, tokenK);
                return bz4Var;
            }
            Token tokenU5 = u4(133);
            u4(97);
            t0 t0VarU2 = u();
            String str = tokenU5.image;
            if (str.equalsIgnoreCase("parse")) {
                t0Var2 = t0VarU2;
            } else if (str.equalsIgnoreCase("encoding")) {
                t0Var = t0VarU2;
            } else {
                if (!str.equalsIgnoreCase("ignore_missing") && !str.equals("ignoreMissing")) {
                    String str2 = str.equals("ignoreMissing") ? "ignore_missing" : null;
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("Unsupported named #include parameter: \"");
                    stringBuffer.append(str);
                    stringBuffer.append("\". Supported parameters are: ");
                    stringBuffer.append("\"parse\", \"encoding\", \"ignore_missing\".");
                    stringBuffer.append(str2 == null ? "" : " Supporting camelCase parameter names is planned for FreeMarker 2.4.0; check if an update is available, and if it indeed supports camel case.");
                    throw new ParseException(stringBuffer.toString(), this.b, tokenU5);
                }
                this.l.e(tokenU5);
                t0Var3 = t0VarU2;
            }
        }
    }

    public final boolean G0(int i) {
        this.s = i;
        Token token = this.n;
        this.q = token;
        this.r = token;
        try {
            return true ^ f4();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            C4(10, i);
        }
    }

    public final boolean G1() {
        return E2();
    }

    public final boolean G2() {
        Token token = this.q;
        if (D4(72)) {
            this.q = token;
        }
        Token token2 = this.q;
        if (K2()) {
            this.q = token2;
            if (L2()) {
                return true;
            }
        }
        return M2();
    }

    public final boolean G3() {
        return D4(126) || F2() || D4(127);
    }

    public final void G4(t0 t0Var, String str) throws ParseException {
        if (t0Var instanceof c1) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Found list literal: ");
            stringBuffer.append(t0Var.o());
            stringBuffer.append(". Expecting ");
            stringBuffer.append(str);
            throw new ParseException(stringBuffer.toString(), t0Var);
        }
    }

    public final y0 H() throws ParseException {
        String string;
        Token tokenU4 = u4(11);
        Token tokenU5 = u4(133);
        u4(139);
        b bVarK4 = K4();
        if (bVarK4 == null) {
            throw new ParseException("#items must be inside a #list block.", this.b, tokenU4);
        }
        if (bVarK4.a != null) {
            if (bVarK4.b != 1) {
                string = bVarK4.b == 2 ? "Can't nest #items into each other that belong to the same #list." : "The parent #list of the #items must not have \"as loopVar\" parameter.";
            } else {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(B0());
                stringBuffer.append(" doesn't support nested #items.");
                string = stringBuffer.toString();
            }
            throw new ParseException(string, this.b, tokenU4);
        }
        bVarK4.b = 2;
        bVarK4.a = tokenU5.image;
        this.f++;
        ifa ifaVarW = W();
        Token tokenU6 = u4(35);
        this.f--;
        bVarK4.a = null;
        y0 y0Var = new y0(tokenU5.image, ifaVarW);
        y0Var.E(this.b, tokenU4, tokenU6);
        return y0Var;
    }

    public final boolean H0(int i) {
        this.s = i;
        Token token = this.n;
        this.q = token;
        this.r = token;
        try {
            return true ^ g4();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            C4(11, i);
        }
    }

    public final boolean H1() {
        return D4(72);
    }

    public final boolean H2() {
        Token token;
        if (N2()) {
            return true;
        }
        do {
            token = this.q;
        } while (!O2());
        this.q = token;
        return false;
    }

    public final boolean H3() {
        return D4(91) || D4(133);
    }

    public final void H4(t0 t0Var, String str) throws ParseException {
        if (t0Var instanceof k1) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Found number literal: ");
            stringBuffer.append(t0Var.o());
            stringBuffer.append(". Expecting ");
            stringBuffer.append(str);
            throw new ParseException(stringBuffer.toString(), t0Var);
        }
    }

    public final ifa I() throws ParseException {
        Token tokenU4;
        v83 v83VarQ;
        Token tokenU5 = u4(10);
        t0 t0VarU = u();
        int iA4 = this.p;
        if (iA4 == -1) {
            iA4 = A4();
        }
        if (iA4 != 131) {
            this.v[27] = this.u;
            tokenU4 = null;
        } else {
            u4(131);
            tokenU4 = u4(133);
        }
        u4(139);
        b bVarM4 = M4();
        if (tokenU4 != null) {
            bVarM4.a = tokenU4.image;
            this.f++;
        }
        ifa ifaVarW = W();
        if (tokenU4 != null) {
            this.f--;
        } else if (bVarM4.b != 2) {
            throw new ParseException("#list must have either \"as loopVar\" parameter or nested #items that belongs to it.", this.b, tokenU5);
        }
        L4();
        int iA5 = this.p;
        if (iA5 == -1) {
            iA5 = A4();
        }
        if (iA5 != 48) {
            this.v[28] = this.u;
            v83VarQ = null;
        } else {
            v83VarQ = q();
        }
        Token tokenU6 = u4(34);
        z0 z0Var = new z0(t0VarU, tokenU4 != null ? tokenU4.image : null, ifaVarW, false);
        z0Var.E(this.b, tokenU5, tokenU6);
        if (v83VarQ == null) {
            return z0Var;
        }
        sl5 sl5Var = new sl5(z0Var, v83VarQ);
        sl5Var.E(this.b, tokenU5, tokenU6);
        return sl5Var;
    }

    public final boolean I0(int i) {
        this.s = i;
        Token token = this.n;
        this.q = token;
        this.r = token;
        try {
            return true ^ h4();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            C4(12, i);
        }
    }

    public final boolean I1() {
        return D4(8);
    }

    public final boolean I2() {
        Token token = this.q;
        if (P2()) {
            this.q = token;
            if (Q2()) {
                return true;
            }
        }
        return H2();
    }

    public final boolean I3() {
        Token token = this.q;
        if (!T3()) {
            return false;
        }
        this.q = token;
        if (!U3()) {
            return false;
        }
        this.q = token;
        if (!V3()) {
            return false;
        }
        this.q = token;
        if (!W3()) {
            return false;
        }
        this.q = token;
        if (!X3()) {
            return false;
        }
        this.q = token;
        return Y3();
    }

    public final void I4(t0 t0Var, String str) throws ParseException {
        if (t0Var instanceof r1) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Found string literal: ");
            stringBuffer.append(t0Var);
            stringBuffer.append(". Expecting: ");
            stringBuffer.append(str);
            throw new ParseException(stringBuffer.toString(), t0Var);
        }
    }

    public final c1 J() throws ParseException {
        new ArrayList();
        Token tokenU4 = u4(124);
        ArrayList arrayListA0 = a0();
        Token tokenU5 = u4(125);
        c1 c1Var = new c1(arrayListA0);
        c1Var.E(this.b, tokenU4, tokenU5);
        return c1Var;
    }

    public final boolean J0(int i) {
        this.s = i;
        Token token = this.n;
        this.q = token;
        this.r = token;
        try {
            return true ^ i4();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            C4(13, i);
        }
    }

    public final boolean J1() {
        return D4(10);
    }

    public final boolean J2() {
        Token token;
        if (R2()) {
            return true;
        }
        do {
            token = this.q;
        } while (!S2());
        this.q = token;
        return false;
    }

    public final boolean J3() {
        Token token = this.q;
        if (!Z3()) {
            return false;
        }
        this.q = token;
        return a4();
    }

    public final void J4(t0 t0Var) throws ParseException {
        I4(t0Var, "number");
        G4(t0Var, "number");
        F4(t0Var, "number");
        E4(t0Var, "number");
    }

    public final Token K() throws ParseException {
        int iA4 = this.p;
        if (iA4 == -1) {
            iA4 = A4();
        }
        if (iA4 == 139) {
            return u4(139);
        }
        if (iA4 == 140) {
            return u4(140);
        }
        this.v[80] = this.u;
        u4(-1);
        throw new ParseException();
    }

    public final boolean K0(int i) {
        this.s = i;
        Token token = this.n;
        this.q = token;
        this.r = token;
        try {
            return true ^ j4();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            C4(14, i);
        }
    }

    public final boolean K1() {
        return D4(13);
    }

    public final boolean K2() {
        return D4(15) || F2();
    }

    public final boolean K3() {
        Token token;
        if (b4()) {
            return true;
        }
        do {
            token = this.q;
        } while (!b4());
        this.q = token;
        return false;
    }

    public final b K4() {
        List list = this.e;
        int size = list != null ? list.size() : 0;
        if (size != 0) {
            return (b) this.e.get(size - 1);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v19 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5, types: [int] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r8v7 */
    public final e1 L() throws ParseException {
        Token tokenU4;
        boolean z;
        ?? r7;
        Token tokenU5;
        t0 t0VarU;
        ArrayList arrayList = new ArrayList();
        HashMap map = new HashMap();
        ArrayList arrayList2 = new ArrayList();
        int iA4 = this.p;
        int i = -1;
        if (iA4 == -1) {
            iA4 = A4();
        }
        ?? r8 = 0;
        if (iA4 == 21) {
            tokenU4 = u4(21);
            z = true;
        } else {
            if (iA4 != 22) {
                this.v[52] = this.u;
                u4(-1);
                throw new ParseException();
            }
            tokenU4 = u4(22);
            z = false;
        }
        if (this.g || this.h) {
            throw new ParseException("Macros cannot be nested.", this.b, tokenU4);
        }
        if (z) {
            this.h = true;
        } else {
            this.g = true;
        }
        t0 t0VarD = D();
        String asString = t0VarD instanceof r1 ? ((r1) t0VarD).getAsString() : ((x0) t0VarD).X();
        int iA5 = this.p;
        if (iA5 == -1) {
            iA5 = A4();
        }
        if (iA5 != 126) {
            this.v[53] = this.u;
        } else {
            u4(126);
        }
        boolean z2 = false;
        boolean z3 = false;
        String str = null;
        while (true) {
            int iA6 = this.p;
            if (iA6 == i) {
                iA6 = A4();
            }
            if (iA6 != 133) {
                this.v[54] = this.u;
                int iA7 = this.p;
                if (iA7 == i) {
                    iA7 = A4();
                }
                if (iA7 != 127) {
                    this.v[58] = this.u;
                } else {
                    u4(127);
                }
                u4(139);
                List list = this.e;
                this.e = null;
                int i2 = this.k;
                int i3 = d1d.f;
                if (i2 >= i3) {
                    int i4 = this.f;
                    this.f = r8;
                    r7 = i4;
                } else {
                    r7 = r8;
                }
                ifa ifaVarW = W();
                int iA8 = this.p;
                if (iA8 == i) {
                    iA8 = A4();
                }
                if (iA8 == 43) {
                    tokenU5 = u4(43);
                    if (!z) {
                        throw new ParseException("Expected macro end tag here.", this.b, tokenU4);
                    }
                } else {
                    if (iA8 != 44) {
                        this.v[59] = this.u;
                        u4(i);
                        throw new ParseException();
                    }
                    tokenU5 = u4(44);
                    if (z) {
                        throw new ParseException("Expected function end tag here.", this.b, tokenU4);
                    }
                }
                Token token = tokenU5;
                this.e = list;
                if (this.k >= i3) {
                    this.f = r7;
                }
                this.h = r8;
                this.g = r8;
                e1 e1Var = new e1(asString, arrayList, map, str, z, ifaVarW);
                e1Var.E(this.b, tokenU4, token);
                this.b.o0(e1Var);
                return e1Var;
            }
            Token tokenU6 = u4(133);
            int iA9 = this.p;
            if (iA9 == i) {
                iA9 = A4();
            }
            if (iA9 != 115) {
                this.v[55] = this.u;
            } else {
                u4(115);
                z2 = true;
            }
            int iA10 = this.p;
            if (iA10 == i) {
                iA10 = A4();
            }
            if (iA10 != 97) {
                this.v[56] = this.u;
                t0VarU = null;
            } else {
                u4(97);
                t0VarU = u();
                arrayList2.add(tokenU6.image);
                z3 = true;
            }
            int iA11 = this.p;
            if (iA11 == i) {
                iA11 = A4();
            }
            if (iA11 != 121) {
                this.v[57] = this.u;
            } else {
                u4(121);
            }
            if (str != null) {
                throw new ParseException("There may only be one \"catch-all\" parameter in a macro declaration, and it must be the last parameter.", this.b, tokenU6);
            }
            if (!z2) {
                arrayList.add(tokenU6.image);
                if (z3 && t0VarU == null) {
                    throw new ParseException("In a macro declaration, parameters without a default value must all occur before the parameters with default values.", this.b, tokenU6);
                }
                map.put(tokenU6.image, t0VarU);
            } else {
                if (t0VarU != null) {
                    throw new ParseException("\"Catch-all\" macro parameter may not have a default value.", this.b, tokenU6);
                }
                str = tokenU6.image;
            }
            i = -1;
            r8 = 0;
        }
    }

    public final boolean L0(int i) {
        this.s = i;
        Token token = this.n;
        this.q = token;
        this.r = token;
        try {
            return true ^ k4();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            C4(15, i);
        }
    }

    public final boolean L1() {
        Token token = this.q;
        if (!p2()) {
            return false;
        }
        this.q = token;
        if (!q2()) {
            return false;
        }
        this.q = token;
        return r2();
    }

    public final boolean L2() {
        return D4(57);
    }

    public final boolean L3() {
        return D4(75);
    }

    public final void L4() {
        List list = this.e;
        list.remove(list.size() - 1);
    }

    public final g1 M(t0 t0Var) throws ParseException {
        new ArrayList();
        u4(126);
        ArrayList arrayListA0 = a0();
        Token tokenU4 = u4(127);
        arrayListA0.trimToSize();
        g1 g1Var = new g1(t0Var, arrayListA0);
        g1Var.B(this.b, t0Var, tokenU4);
        return g1Var;
    }

    public final boolean M0(int i) {
        this.s = i;
        Token token = this.n;
        this.q = token;
        this.r = token;
        try {
            return !l4();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            C4(1, i);
        }
    }

    public final boolean M1() {
        return D4(19);
    }

    public final boolean M2() {
        Token token = this.q;
        if (!T2()) {
            return false;
        }
        this.q = token;
        return false;
    }

    public final boolean M3() {
        return D4(76);
    }

    public final b M4() {
        if (this.e == null) {
            this.e = new ArrayList(4);
        }
        b bVar = new b();
        this.e.add(bVar);
        return bVar;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0053 A[FALL_THROUGH] */
    public final aq6 N() throws ParseException {
        ifa ifaVarZ;
        aq6 aq6Var = new aq6();
        this.j++;
        ifa ifaVar = null;
        while (true) {
            int iA4 = this.p;
            if (iA4 == -1) {
                iA4 = A4();
            }
            if (iA4 != 6 && iA4 != 8 && iA4 != 65 && iA4 != 67) {
                switch (iA4) {
                    default:
                        switch (iA4) {
                            default:
                                switch (iA4) {
                                    default:
                                        switch (iA4) {
                                            case 58:
                                            case 59:
                                            case 60:
                                            case 61:
                                            case 62:
                                            case 63:
                                                break;
                                            default:
                                                switch (iA4) {
                                                    case 72:
                                                    case 73:
                                                    case 74:
                                                        ifaVarZ = Y();
                                                        break;
                                                    case 75:
                                                        ifaVarZ = m0();
                                                        break;
                                                    case 76:
                                                        ifaVarZ = V();
                                                        break;
                                                    default:
                                                        this.v[85] = this.u;
                                                        u4(-1);
                                                        throw new ParseException();
                                                }
                                                break;
                                        }
                                    case 49:
                                    case 50:
                                    case 51:
                                    case 52:
                                    case 53:
                                    case 54:
                                    case 55:
                                    case 56:
                                        ifaVarZ = z();
                                        break;
                                }
                            case 16:
                            case 17:
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
                            case 26:
                            case 27:
                            case 28:
                            case 29:
                            case 30:
                            case 31:
                            case 32:
                                ifaVarZ = z();
                                break;
                        }
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                        ifaVarZ = z();
                        break;
                }
            } else {
                ifaVarZ = z();
            }
            if (ifaVar == null) {
                ifaVar = ifaVarZ;
            }
            aq6Var.l0(ifaVarZ);
            int iA5 = this.p;
            if (iA5 == -1) {
                iA5 = A4();
            }
            if (iA5 != 6 && iA5 != 8 && iA5 != 65 && iA5 != 67) {
                switch (iA5) {
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                        continue;
                    default:
                        switch (iA5) {
                            case 16:
                            case 17:
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
                            case 26:
                            case 27:
                            case 28:
                            case 29:
                            case 30:
                            case 31:
                            case 32:
                                continue;
                            default:
                                switch (iA5) {
                                    case 49:
                                    case 50:
                                    case 51:
                                    case 52:
                                    case 53:
                                    case 54:
                                    case 55:
                                    case 56:
                                        continue;
                                    default:
                                        switch (iA5) {
                                            case 58:
                                            case 59:
                                            case 60:
                                            case 61:
                                            case 62:
                                            case 63:
                                                continue;
                                            default:
                                                switch (iA5) {
                                                    case 72:
                                                    case 73:
                                                    case 74:
                                                    case 75:
                                                    case 76:
                                                        break;
                                                    default:
                                                        this.v[86] = this.u;
                                                        this.j--;
                                                        aq6Var.A(this.b, ifaVar, ifaVarZ);
                                                        return aq6Var;
                                                }
                                                break;
                                        }
                                        break;
                                }
                                break;
                        }
                        break;
                }
            }
        }
    }

    public final boolean N0(int i) {
        this.s = i;
        Token token = this.n;
        this.q = token;
        this.r = token;
        try {
            return true ^ m4();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            C4(2, i);
        }
    }

    public final boolean N1() {
        return D4(20);
    }

    public final boolean N2() {
        Token token = this.q;
        if (!U2()) {
            return false;
        }
        this.q = token;
        if (!V2()) {
            return false;
        }
        this.q = token;
        return W2();
    }

    public final boolean N3() {
        Token token = this.q;
        if (!c4()) {
            return false;
        }
        this.q = token;
        if (!U0()) {
            return false;
        }
        this.q = token;
        if (!V0()) {
            return false;
        }
        this.q = token;
        if (!W0()) {
            return false;
        }
        this.q = token;
        if (!X0()) {
            return false;
        }
        this.q = token;
        if (!Y0()) {
            return false;
        }
        this.q = token;
        if (!Z0()) {
            return false;
        }
        this.q = token;
        if (!a1()) {
            return false;
        }
        this.q = token;
        if (!b1()) {
            return false;
        }
        this.q = token;
        if (!c1()) {
            return false;
        }
        this.q = token;
        if (!d1()) {
            return false;
        }
        this.q = token;
        if (!e1()) {
            return false;
        }
        this.q = token;
        if (!f1()) {
            return false;
        }
        this.q = token;
        if (!g1()) {
            return false;
        }
        this.q = token;
        if (!h1()) {
            return false;
        }
        this.q = token;
        if (!i1()) {
            return false;
        }
        this.q = token;
        if (!j1()) {
            return false;
        }
        this.q = token;
        if (!k1()) {
            return false;
        }
        this.q = token;
        if (!l1()) {
            return false;
        }
        this.q = token;
        if (!m1()) {
            return false;
        }
        this.q = token;
        if (!n1()) {
            return false;
        }
        this.q = token;
        if (!o1()) {
            return false;
        }
        this.q = token;
        if (!p1()) {
            return false;
        }
        this.q = token;
        if (!q1()) {
            return false;
        }
        this.q = token;
        if (!r1()) {
            return false;
        }
        this.q = token;
        if (!s1()) {
            return false;
        }
        this.q = token;
        if (!t1()) {
            return false;
        }
        this.q = token;
        if (!u1()) {
            return false;
        }
        this.q = token;
        return v1();
    }

    public void N4(Template template) {
        this.b = template;
    }

    public final t0 O() throws ParseException {
        int i;
        t0 t0VarQ0 = q0();
        while (N0(Integer.MAX_VALUE)) {
            int iA4 = this.p;
            if (iA4 == -1) {
                iA4 = A4();
            }
            if (iA4 == 113) {
                u4(113);
                i = 1;
            } else if (iA4 == 116) {
                u4(116);
                i = 2;
            } else {
                if (iA4 != 117) {
                    this.v[5] = this.u;
                    u4(-1);
                    throw new ParseException();
                }
                u4(117);
                i = 3;
            }
            t0 t0VarQ1 = q0();
            J4(t0VarQ0);
            J4(t0VarQ1);
            t0 dVar = new d(t0VarQ0, t0VarQ1, i);
            dVar.A(this.b, t0VarQ0, t0VarQ1);
            t0VarQ0 = dVar;
        }
        return t0VarQ0;
    }

    public final boolean O0(int i) {
        this.s = i;
        Token token = this.n;
        this.q = token;
        this.r = token;
        try {
            return true ^ n4();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            C4(3, i);
        }
    }

    public final boolean O1() {
        Token token = this.q;
        if (!D4(22)) {
            return false;
        }
        this.q = token;
        return s2();
    }

    public final boolean O2() {
        Token token = this.q;
        if (X2()) {
            this.q = token;
            if (Y2()) {
                this.q = token;
                if (Z2()) {
                    return true;
                }
            }
        }
        return N2();
    }

    public final boolean O3() {
        Token token;
        if (F2()) {
            return true;
        }
        Token token2 = this.q;
        if (D4(121)) {
            this.q = token2;
            if (D4(123)) {
                return true;
            }
        }
        if (F2()) {
            return true;
        }
        do {
            token = this.q;
        } while (!w1());
        this.q = token;
        return false;
    }

    public final void O4(t0 t0Var) throws ParseException {
        H4(t0Var, "string");
        G4(t0Var, "string");
        F4(t0Var, "string");
        E4(t0Var, "string");
    }

    public final HashMap P() throws ParseException {
        int iA4;
        HashMap map = new HashMap();
        do {
            Token tokenU4 = u4(133);
            u4(97);
            this.l.c(4);
            this.l.m = true;
            map.put(tokenU4.image, u());
            iA4 = this.p;
            if (iA4 == -1) {
                iA4 = A4();
            }
        } while (iA4 == 133);
        this.v[69] = this.u;
        this.l.m = false;
        return map;
    }

    public final boolean P0(int i) {
        this.s = i;
        Token token = this.n;
        this.q = token;
        this.r = token;
        try {
            return true ^ o4();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            C4(4, i);
        }
    }

    public final boolean P1() {
        return D4(29);
    }

    public final boolean P2() {
        return D4(111);
    }

    public final boolean P3() {
        return D4(86);
    }

    public final ifa Q() throws ParseException {
        Token tokenU4;
        h hVar;
        int iA4 = this.p;
        if (iA4 == -1) {
            iA4 = A4();
        }
        if (iA4 == 58) {
            tokenU4 = u4(58);
            hVar = new h(null);
            hVar.E(this.b, tokenU4, tokenU4);
        } else {
            if (iA4 != 59) {
                this.v[36] = this.u;
                u4(-1);
                throw new ParseException();
            }
            tokenU4 = u4(59);
            ArrayList arrayListA0 = a0();
            Token tokenK = K();
            hVar = new h(arrayListA0);
            hVar.E(this.b, tokenU4, tokenK);
        }
        if (this.g) {
            return hVar;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Cannot use a ");
        stringBuffer.append(tokenU4.image);
        stringBuffer.append(" instruction outside a macro.");
        throw new ParseException(stringBuffer.toString(), this.b, tokenU4);
    }

    public final boolean Q0(int i) {
        this.s = i;
        Token token = this.n;
        this.q = token;
        this.r = token;
        try {
            return true ^ p4();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            C4(5, i);
        }
    }

    public final boolean Q1() {
        return D4(67);
    }

    public final boolean Q2() {
        return D4(112);
    }

    public final boolean Q3() {
        return D4(87);
    }

    public final y07 R() throws ParseException {
        Token tokenU4 = u4(65);
        if (this.i.isEmpty()) {
            throw new ParseException("#noescape with no matching #escape encountered.", this.b, tokenU4);
        }
        Object objRemoveFirst = this.i.removeFirst();
        ifa ifaVarW = W();
        Token tokenU5 = u4(66);
        this.i.addFirst(objRemoveFirst);
        y07 y07Var = new y07(ifaVarW);
        y07Var.E(this.b, tokenU4, tokenU5);
        return y07Var;
    }

    public final boolean R0(int i) {
        this.s = i;
        Token token = this.n;
        this.q = token;
        this.r = token;
        try {
            return true ^ q4();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            C4(6, i);
        }
    }

    public final boolean R1() {
        return D4(11);
    }

    public final boolean R2() {
        Token token;
        if (a3()) {
            return true;
        }
        do {
            token = this.q;
        } while (!b3());
        this.q = token;
        return false;
    }

    public final boolean R3() {
        return D4(88);
    }

    public final xga S() throws ParseException {
        StringBuffer stringBuffer = new StringBuffer();
        Token tokenU4 = u4(32);
        Token tokenT0 = t0(tokenU4, stringBuffer);
        xga xgaVar = new xga(stringBuffer.toString(), true);
        xgaVar.E(this.b, tokenU4, tokenT0);
        return xgaVar;
    }

    public final boolean S0(int i) {
        this.s = i;
        Token token = this.n;
        this.q = token;
        this.r = token;
        try {
            return true ^ r4();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            C4(7, i);
        }
    }

    public final boolean S1() {
        return D4(12);
    }

    public final boolean S2() {
        return D4(119) || R2();
    }

    public final boolean S3() {
        Token token = this.q;
        if (!x1()) {
            return false;
        }
        this.q = token;
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [freemarker.core.t0, freemarker.core.t1] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5, types: [freemarker.core.t0] */
    /* JADX WARN: Type inference failed for: r2v6, types: [freemarker.core.j1, freemarker.core.t1] */
    /* JADX WARN: Type inference failed for: r2v8 */
    public final t0 T() throws ParseException {
        int iA4;
        ArrayList arrayList = new ArrayList();
        do {
            arrayList.add(u4(120));
            iA4 = this.p;
            if (iA4 == -1) {
                iA4 = A4();
            }
        } while (iA4 == 120);
        this.v[2] = this.u;
        ?? r2 = 0;
        int i = 0;
        ?? B0 = b0();
        while (i < arrayList.size()) {
            ?? j1Var = new j1(B0);
            j1Var.C(this.b, (Token) arrayList.get((arrayList.size() - i) - 1), B0);
            i++;
            B0 = j1Var;
            r2 = j1Var;
        }
        return r2;
    }

    public final boolean T0(int i) {
        this.s = i;
        Token token = this.n;
        this.q = token;
        this.r = token;
        try {
            return true ^ s4();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            C4(8, i);
        }
    }

    public final boolean T1() {
        return D4(27);
    }

    public final boolean T2() {
        return c3();
    }

    public final boolean T3() {
        return y1();
    }

    public final t0 U() throws ParseException {
        Token tokenU4;
        int iA4 = this.p;
        if (iA4 == -1) {
            iA4 = A4();
        }
        if (iA4 == 89) {
            tokenU4 = u4(89);
        } else {
            if (iA4 != 90) {
                this.v[11] = this.u;
                u4(-1);
                throw new ParseException();
            }
            tokenU4 = u4(90);
        }
        k1 k1Var = new k1(this.b.f().l(tokenU4.image));
        k1Var.E(this.b, tokenU4, tokenU4);
        return k1Var;
    }

    public final boolean U0() {
        return J1();
    }

    public final boolean U1() {
        Token token = this.q;
        if (!D4(30)) {
            return false;
        }
        this.q = token;
        return D4(31);
    }

    public final boolean U2() {
        return d3();
    }

    public final boolean U3() {
        return z1();
    }

    public final j47 V() throws ParseException {
        Token tokenU4;
        j47 j47Var;
        String strNextToken;
        Token tokenU5 = u4(76);
        t0 t0VarU = u();
        J4(t0VarU);
        int iA4 = this.p;
        if (iA4 == -1) {
            iA4 = A4();
        }
        if (iA4 != 122) {
            this.v[23] = this.u;
            tokenU4 = null;
        } else {
            u4(122);
            tokenU4 = u4(133);
        }
        Token tokenU6 = u4(129);
        if (tokenU4 != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(tokenU4.image, "mM", true);
            int i = -1;
            int i2 = -1;
            loop0: while (true) {
                char c = '-';
                while (true) {
                    if (!stringTokenizer.hasMoreTokens()) {
                        if (i == -1) {
                            if (i2 == -1) {
                                throw new ParseException("Invalid format specification, at least one of m and M must be specified!", this.b, tokenU4);
                            }
                            i = i2;
                        } else if (i2 == -1) {
                            i2 = 0;
                        }
                        if (i2 > i) {
                            throw new ParseException("Invalid format specification, min cannot be greater than max!", this.b, tokenU4);
                        }
                        if (i2 <= 50 && i <= 50) {
                            j47Var = new j47(t0VarU, i2, i);
                            break loop0;
                        }
                        throw new ParseException("Cannot specify more than 50 fraction digits", this.b, tokenU4);
                    }
                    strNextToken = stringTokenizer.nextToken();
                    if (c != '-') {
                        break;
                    }
                    if (strNextToken.equals(CmcdData.OBJECT_TYPE_MANIFEST)) {
                        c = 'm';
                    } else {
                        if (!strNextToken.equals("M")) {
                            throw new ParseException();
                        }
                        c = 'M';
                    }
                }
                if (c != 'M') {
                    if (c != 'm') {
                        throw new ParseException("Invalid formatting string", this.b, tokenU4);
                    }
                    if (i2 != -1) {
                        throw new ParseException("Invalid formatting string", this.b, tokenU4);
                    }
                    try {
                        i2 = Integer.parseInt(strNextToken);
                    } catch (ParseException unused) {
                        StringBuffer stringBuffer = new StringBuffer();
                        stringBuffer.append("Invalid format specifier ");
                        stringBuffer.append(tokenU4.image);
                        throw new ParseException(stringBuffer.toString(), this.b, tokenU4);
                    } catch (NumberFormatException unused2) {
                        StringBuffer stringBuffer2 = new StringBuffer();
                        stringBuffer2.append("Invalid number in the format specifier ");
                        stringBuffer2.append(tokenU4.image);
                        throw new ParseException(stringBuffer2.toString(), this.b, tokenU4);
                    }
                } else {
                    if (i != -1) {
                        throw new ParseException("Invalid formatting string", this.b, tokenU4);
                    }
                    i = Integer.parseInt(strNextToken);
                }
            }
        } else {
            j47Var = new j47(t0VarU);
        }
        j47Var.E(this.b, tokenU5, tokenU6);
        return j47Var;
    }

    public final boolean V0() {
        return K1();
    }

    public final boolean V1() {
        return D4(32);
    }

    public final boolean V2() {
        return e3();
    }

    public final boolean V3() {
        return A1();
    }

    public final ifa W() {
        xga xgaVar = xga.o;
        int iA4 = this.p;
        if (iA4 == -1) {
            iA4 = A4();
        }
        if (iA4 != 6 && iA4 != 8 && iA4 != 65 && iA4 != 67) {
            switch (iA4) {
                case 10:
                case 11:
                case 12:
                case 13:
                case 14:
                    break;
                default:
                    switch (iA4) {
                        case 16:
                        case 17:
                        case 18:
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        case 24:
                        case 25:
                        case 26:
                        case 27:
                        case 28:
                        case 29:
                        case 30:
                        case 31:
                        case 32:
                            break;
                        default:
                            switch (iA4) {
                                case 49:
                                case 50:
                                case 51:
                                case 52:
                                case 53:
                                case 54:
                                case 55:
                                case 56:
                                    break;
                                default:
                                    switch (iA4) {
                                        case 58:
                                        case 59:
                                        case 60:
                                        case 61:
                                        case 62:
                                        case 63:
                                            break;
                                        default:
                                            switch (iA4) {
                                                case 72:
                                                case 73:
                                                case 74:
                                                case 75:
                                                case 76:
                                                    break;
                                                default:
                                                    this.v[89] = this.u;
                                                    return xgaVar;
                                            }
                                            break;
                                    }
                                    break;
                            }
                            break;
                    }
                    break;
            }
        }
        return N();
    }

    public final boolean W0() {
        return L1();
    }

    public final boolean W1() {
        return D4(23);
    }

    public final boolean W2() {
        return f3();
    }

    public final boolean W3() {
        return B1();
    }

    public final t0 X() throws ParseException {
        t0 t0VarC = c();
        while (S0(Integer.MAX_VALUE)) {
            u4(119);
            t0 t0VarC2 = c();
            x0(t0VarC);
            x0(t0VarC2);
            t0 l1Var = new l1(t0VarC, t0VarC2);
            l1Var.A(this.b, t0VarC, t0VarC2);
            t0VarC = l1Var;
        }
        return t0VarC;
    }

    public final boolean X0() {
        return M1();
    }

    public final boolean X1() {
        return D4(14);
    }

    public final boolean X2() {
        return D4(113);
    }

    public final boolean X3() {
        return C1();
    }

    public final xga Y() throws ParseException {
        StringBuffer stringBuffer = new StringBuffer();
        Token tokenU4 = null;
        Token token = null;
        Token token2 = null;
        do {
            int iA4 = this.p;
            if (iA4 == -1) {
                iA4 = A4();
            }
            switch (iA4) {
                case 72:
                    token2 = tokenU4;
                    tokenU4 = u4(72);
                    break;
                case 73:
                    tokenU4 = u4(73);
                    break;
                case 74:
                    tokenU4 = u4(74);
                    break;
                default:
                    this.v[82] = this.u;
                    u4(-1);
                    throw new ParseException();
            }
            stringBuffer.append(tokenU4.image);
            if (token == null) {
                token = tokenU4;
            }
            if (token2 != null) {
                token2.next = null;
            }
        } while (K0(Integer.MAX_VALUE));
        if (this.d && this.j == 1) {
            return xga.o;
        }
        xga xgaVar = new xga(stringBuffer.toString(), false);
        xgaVar.E(this.b, token, tokenU4);
        return xgaVar;
    }

    public final boolean Y0() {
        return N1();
    }

    public final boolean Y1() {
        return D4(28);
    }

    public final boolean Y2() {
        return D4(116);
    }

    public final boolean Y3() {
        return D1();
    }

    public final t0 Z() throws ParseException {
        Token tokenU4 = u4(126);
        t0 t0VarU = u();
        Token tokenU5 = u4(127);
        m1 m1Var = new m1(t0VarU);
        m1Var.E(this.b, tokenU4, tokenU5);
        return m1Var;
    }

    public final boolean Z0() {
        return O1();
    }

    public final boolean Z1() {
        return D4(49);
    }

    public final boolean Z2() {
        return D4(117);
    }

    public final boolean Z3() {
        Token token = this.q;
        if (E1()) {
            this.q = token;
            if (F1()) {
                return true;
            }
        }
        return E2();
    }

    public final t0 a(t0 t0Var) throws ParseException {
        int iA4 = this.p;
        if (iA4 == -1) {
            iA4 = A4();
        }
        if (iA4 == 91) {
            return o(t0Var);
        }
        if (iA4 != 120) {
            if (iA4 == 124) {
                return p(t0Var);
            }
            if (iA4 == 126) {
                return M(t0Var);
            }
            if (iA4 != 144) {
                if (iA4 == 95) {
                    return h(t0Var);
                }
                if (iA4 == 96) {
                    return t(t0Var);
                }
                this.v[13] = this.u;
                u4(-1);
                throw new ParseException();
            }
        }
        return n(t0Var);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0036  */
    /* JADX WARN: Code duplicated, block: B:18:0x0041  */
    /* JADX WARN: Code duplicated, block: B:33:0x0067  */
    /* JADX WARN: Code duplicated, block: B:35:0x006d  */
    /* JADX WARN: Code duplicated, block: B:36:0x0076  */
    /* JADX WARN: Code duplicated, block: B:38:0x005a A[SYNTHETIC] */
    public final ArrayList a0() throws ParseException {
        int iA4;
        int iA5;
        ArrayList arrayList = new ArrayList();
        int iA6 = this.p;
        if (iA6 == -1) {
            iA6 = A4();
        }
        if (iA6 != 111 && iA6 != 112 && iA6 != 120 && iA6 != 124 && iA6 != 126 && iA6 != 128 && iA6 != 133) {
            switch (iA6) {
                case 85:
                case 86:
                case 87:
                case 88:
                case 89:
                case 90:
                case 91:
                    arrayList.add(u());
                    while (true) {
                        iA4 = this.p;
                        if (iA4 == -1) {
                            iA4 = A4();
                        }
                        if (iA4 != 111) {
                            switch (iA4) {
                                case 85:
                                case 86:
                                case 87:
                                case 88:
                                case 89:
                                case 90:
                                case 91:
                                    break;
                                default:
                                    this.v[70] = this.u;
                                    break;
                            }
                        }
                        iA5 = this.p;
                        if (iA5 == -1) {
                            iA5 = A4();
                        }
                        if (iA5 != 121) {
                            this.v[71] = this.u;
                        } else {
                            u4(121);
                        }
                        arrayList.add(u());
                    }
                    break;
                default:
                    this.v[72] = this.u;
                    break;
            }
        } else {
            arrayList.add(u());
            while (true) {
                iA4 = this.p;
                if (iA4 == -1) {
                    iA4 = A4();
                }
                if (iA4 != 111 && iA4 != 112 && iA4 != 120 && iA4 != 121 && iA4 != 124 && iA4 != 126 && iA4 != 128 && iA4 != 133) {
                    switch (iA4) {
                        case 85:
                        case 86:
                        case 87:
                        case 88:
                        case 89:
                        case 90:
                        case 91:
                            break;
                        default:
                            this.v[70] = this.u;
                            break;
                    }
                }
                iA5 = this.p;
                if (iA5 == -1) {
                    iA5 = A4();
                }
                if (iA5 != 121) {
                    this.v[71] = this.u;
                } else {
                    u4(121);
                }
                arrayList.add(u());
            }
        }
        return arrayList;
    }

    public final boolean a1() {
        return P1();
    }

    public final boolean a2() {
        Token token = this.q;
        if (!t2()) {
            return false;
        }
        this.q = token;
        return u2();
    }

    public final boolean a3() {
        if (g3()) {
            return true;
        }
        Token token = this.q;
        if (!h3()) {
            return false;
        }
        this.q = token;
        return false;
    }

    public final boolean a4() {
        if (D4(92)) {
            return true;
        }
        Token token = this.q;
        if (!G1()) {
            return false;
        }
        this.q = token;
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [freemarker.core.t0, freemarker.core.t1] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r1v6, types: [freemarker.core.d] */
    /* JADX WARN: Type inference failed for: r1v7, types: [freemarker.core.t1] */
    /* JADX WARN: Type inference failed for: r1v8, types: [freemarker.core.a] */
    /* JADX WARN: Type inference failed for: r5v0, types: [freemarker.core.FMParser] */
    public final t0 b() throws ParseException {
        boolean z;
        ?? dVar;
        ?? O = O();
        while (M0(Integer.MAX_VALUE)) {
            int iA4 = this.p;
            if (iA4 == -1) {
                iA4 = A4();
            }
            if (iA4 == 111) {
                u4(111);
                z = true;
            } else {
                if (iA4 != 112) {
                    this.v[4] = this.u;
                    u4(-1);
                    throw new ParseException();
                }
                u4(112);
                z = false;
            }
            t0 t0VarO = O();
            if (z) {
                dVar = new freemarker.core.a(O, t0VarO);
            } else {
                J4(O);
                J4(t0VarO);
                dVar = new d(O, t0VarO, 0);
            }
            dVar.A(this.b, O, t0VarO);
            O = dVar;
        }
        return O;
    }

    public final t0 b0() throws ParseException {
        t0 t0VarJ;
        int iA4 = this.p;
        if (iA4 == -1) {
            iA4 = A4();
        }
        if (iA4 == 124) {
            t0VarJ = J();
        } else if (iA4 == 126) {
            t0VarJ = Z();
        } else if (iA4 == 128) {
            t0VarJ = A();
        } else if (iA4 != 133) {
            switch (iA4) {
                case 85:
                case 86:
                    t0VarJ = l0(true);
                    break;
                case 87:
                case 88:
                    t0VarJ = f();
                    break;
                case 89:
                case 90:
                    t0VarJ = U();
                    break;
                case 91:
                    t0VarJ = i();
                    break;
                default:
                    this.v[0] = this.u;
                    u4(-1);
                    throw new ParseException();
            }
        } else {
            t0VarJ = C();
        }
        while (E0(Integer.MAX_VALUE)) {
            t0VarJ = a(t0VarJ);
        }
        return t0VarJ;
    }

    public final boolean b1() {
        return Q1();
    }

    public final boolean b2() {
        Token token = this.q;
        if (!D4(51)) {
            return false;
        }
        this.q = token;
        return v2();
    }

    public final boolean b3() {
        return D4(118) || a3();
    }

    public final boolean b4() {
        Token token = this.q;
        if (!H1()) {
            return false;
        }
        this.q = token;
        if (!D4(73)) {
            return false;
        }
        this.q = token;
        return D4(74);
    }

    public final t0 c() throws ParseException {
        t0 t0VarR = r();
        while (R0(Integer.MAX_VALUE)) {
            u4(118);
            t0 t0VarR2 = r();
            x0(t0VarR);
            x0(t0VarR2);
            t0 bVar = new freemarker.core.b(t0VarR, t0VarR2);
            bVar.A(this.b, t0VarR, t0VarR2);
            t0VarR = bVar;
        }
        return t0VarR;
    }

    public final t0 c0() throws ParseException {
        int i;
        Token token;
        int i2;
        t0 t0VarB = b();
        int iA4 = this.p;
        if (iA4 == -1) {
            iA4 = A4();
        }
        switch (iA4) {
            case 92:
            case 93:
            case 94:
                int iA5 = this.p;
                if (iA5 == -1) {
                    iA5 = A4();
                }
                t0 t0VarB2 = null;
                switch (iA5) {
                    case 92:
                        Token tokenU4 = u4(92);
                        if (Q0(Integer.MAX_VALUE)) {
                            t0VarB2 = b();
                            i = 0;
                        } else {
                            i = 2;
                        }
                        int i3 = i;
                        token = tokenU4;
                        i2 = i3;
                        break;
                    case 93:
                    case 94:
                        int iA6 = this.p;
                        if (iA6 == -1) {
                            iA6 = A4();
                        }
                        if (iA6 == 93) {
                            u4(93);
                            i2 = 1;
                        } else {
                            if (iA6 != 94) {
                                this.v[8] = this.u;
                                u4(-1);
                                throw new ParseException();
                            }
                            u4(94);
                            i2 = 3;
                        }
                        t0VarB2 = b();
                        token = null;
                        break;
                    default:
                        this.v[9] = this.u;
                        u4(-1);
                        throw new ParseException();
                }
                J4(t0VarB);
                if (t0VarB2 != null) {
                    J4(t0VarB2);
                }
                o1 o1Var = new o1(t0VarB, t0VarB2, i2);
                if (t0VarB2 != null) {
                    o1Var.A(this.b, t0VarB, t0VarB2);
                } else {
                    o1Var.B(this.b, t0VarB, token);
                }
                return o1Var;
            default:
                this.v[10] = this.u;
                return t0VarB;
        }
    }

    public final boolean c1() {
        return R1();
    }

    public final boolean c2() {
        return D4(52);
    }

    public final boolean c3() {
        Token token;
        if (i3()) {
            return true;
        }
        do {
            token = this.q;
        } while (!i3());
        this.q = token;
        return false;
    }

    public final boolean c4() {
        return I1();
    }

    /* JADX WARN: Code duplicated, block: B:137:0x0250  */
    /* JADX WARN: Code duplicated, block: B:139:0x0254  */
    /* JADX WARN: Code duplicated, block: B:142:0x025c  */
    /* JADX WARN: Code duplicated, block: B:145:0x0270  */
    /* JADX WARN: Code duplicated, block: B:149:0x027a  */
    /* JADX WARN: Code duplicated, block: B:150:0x027e  */
    /* JADX WARN: Code duplicated, block: B:151:0x0284  */
    /* JADX WARN: Code duplicated, block: B:152:0x028c  */
    /* JADX WARN: Code duplicated, block: B:153:0x0296  */
    /* JADX WARN: Code duplicated, block: B:182:0x025f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:86:0x016d  */
    /* JADX WARN: Code duplicated, block: B:88:0x0171  */
    /* JADX WARN: Code duplicated, block: B:91:0x0179  */
    /* JADX WARN: Code duplicated, block: B:92:0x017c  */
    /* JADX WARN: Code duplicated, block: B:94:0x018d  */
    /* JADX WARN: Code duplicated, block: B:95:0x0191  */
    /* JADX WARN: Code duplicated, block: B:96:0x0195  */
    /* JADX WARN: Code duplicated, block: B:97:0x019b  */
    /* JADX WARN: Code duplicated, block: B:98:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:99:0x01a7  */
    public final ifa d() throws ParseException {
        Token tokenU4;
        int i;
        int iA4;
        Token token;
        t0 t0VarU;
        int i2;
        t0 t0Var;
        int iA5;
        Token token2;
        t0 t0VarU2;
        Token tokenU5;
        ArrayList arrayList = new ArrayList();
        int iA6 = this.p;
        if (iA6 == -1) {
            iA6 = A4();
        }
        switch (iA6) {
            case 16:
                tokenU4 = u4(16);
                i = 1;
                break;
            case 17:
                tokenU4 = u4(17);
                i = 3;
                break;
            case 18:
                tokenU4 = u4(18);
                if (!this.g && !this.h) {
                    throw new ParseException("Local variable assigned outside a macro.", this.b, tokenU4);
                }
                i = 2;
                break;
                break;
            default:
                this.v[38] = this.u;
                u4(-1);
                throw new ParseException();
        }
        t0 t0VarD = D();
        String asString = t0VarD instanceof r1 ? ((r1) t0VarD).getAsString() : ((x0) t0VarD).X();
        int iA7 = this.p;
        if (iA7 == -1) {
            iA7 = A4();
        }
        t0 t0VarU3 = null;
        if (iA7 != 97) {
            if (iA7 == 130 || iA7 == 139) {
                int iA8 = this.p;
                if (iA8 == -1) {
                    iA8 = A4();
                }
                if (iA8 != 130) {
                    this.v[47] = this.u;
                } else {
                    Token tokenU6 = u4(130);
                    t0VarU3 = u();
                    if (i != 1) {
                        throw new ParseException("Cannot assign to namespace here.", this.b, tokenU6);
                    }
                }
                t0 t0Var2 = t0VarU3;
                u4(139);
                ifa ifaVarW = W();
                int iA9 = this.p;
                if (iA9 == -1) {
                    iA9 = A4();
                }
                switch (iA9) {
                    case 40:
                        tokenU5 = u4(40);
                        if (i != 2) {
                            throw new ParseException("Mismatched assignment tags.", this.b, tokenU5);
                        }
                        break;
                    case 41:
                        tokenU5 = u4(41);
                        if (i != 3) {
                            throw new ParseException("Mismatched assignment tags", this.b, tokenU5);
                        }
                        break;
                    case 42:
                        tokenU5 = u4(42);
                        if (i != 1) {
                            throw new ParseException("Mismatched assignment tags.", this.b, tokenU5);
                        }
                        break;
                    default:
                        this.v[48] = this.u;
                        u4(-1);
                        throw new ParseException();
                }
                g gVar = new g(ifaVarW, asString, i, t0Var2);
                gVar.E(this.b, tokenU4, tokenU5);
                return gVar;
            }
            switch (iA7) {
                case 100:
                case 101:
                case 102:
                case 103:
                case 104:
                case 105:
                case 106:
                    break;
                default:
                    this.v[49] = this.u;
                    u4(-1);
                    throw new ParseException();
            }
        }
        int iA10 = this.p;
        if (iA10 == -1) {
            iA10 = A4();
        }
        int i3 = 106;
        int i4 = 105;
        if (iA10 != 97) {
            switch (iA10) {
                case 100:
                case 101:
                case 102:
                case 103:
                case 104:
                    iA4 = this.p;
                    if (iA4 == -1) {
                        iA4 = A4();
                    }
                    if (iA4 != 97) {
                        switch (iA4) {
                            case 100:
                                u4(100);
                                break;
                            case 101:
                                u4(101);
                                break;
                            case 102:
                                u4(102);
                                break;
                            case 103:
                                u4(103);
                                break;
                            case 104:
                                u4(104);
                                break;
                            default:
                                this.v[39] = this.u;
                                u4(-1);
                                throw new ParseException();
                        }
                    } else {
                        u4(97);
                    }
                    token = this.n;
                    t0VarU = u();
                    break;
                case 105:
                case 106:
                    int iA11 = this.p;
                    if (iA11 == -1) {
                        iA11 = A4();
                    }
                    if (iA11 == 105) {
                        u4(105);
                    } else {
                        if (iA11 != 106) {
                            this.v[40] = this.u;
                            u4(-1);
                            throw new ParseException();
                        }
                        u4(106);
                    }
                    token = this.n;
                    t0VarU = null;
                    break;
                default:
                    this.v[41] = this.u;
                    u4(-1);
                    throw new ParseException();
            }
        } else {
            iA4 = this.p;
            if (iA4 == -1) {
                iA4 = A4();
            }
            if (iA4 != 97) {
                switch (iA4) {
                    case 100:
                        u4(100);
                        break;
                    case 101:
                        u4(101);
                        break;
                    case 102:
                        u4(102);
                        break;
                    case 103:
                        u4(103);
                        break;
                    case 104:
                        u4(104);
                        break;
                    default:
                        this.v[39] = this.u;
                        u4(-1);
                        throw new ParseException();
                }
            } else {
                u4(97);
            }
            token = this.n;
            t0VarU = u();
        }
        e eVar = new e(asString, token.kind, t0VarU, i);
        if (t0VarU != null) {
            eVar.A(this.b, t0VarD, t0VarU);
        } else {
            eVar.B(this.b, t0VarD, token);
        }
        arrayList.add(eVar);
        while (F0(Integer.MAX_VALUE)) {
            int iA12 = this.p;
            if (iA12 == -1) {
                iA12 = A4();
            }
            if (iA12 != 121) {
                this.v[42] = this.u;
            } else {
                u4(121);
            }
            t0 t0VarD2 = D();
            String asString2 = t0VarD2 instanceof r1 ? ((r1) t0VarD2).getAsString() : ((x0) t0VarD2).X();
            int iA13 = this.p;
            if (iA13 == -1) {
                iA13 = A4();
            }
            if (iA13 != 97) {
                switch (iA13) {
                    case 100:
                    case 101:
                    case 102:
                    case 103:
                    case 104:
                        iA5 = this.p;
                        if (iA5 == -1) {
                            iA5 = A4();
                        }
                        if (iA5 != 97) {
                            switch (iA5) {
                                case 100:
                                    u4(100);
                                    break;
                                case 101:
                                    u4(101);
                                    break;
                                case 102:
                                    u4(102);
                                    break;
                                case 103:
                                    u4(103);
                                    break;
                                case 104:
                                    u4(104);
                                    break;
                                default:
                                    this.v[43] = this.u;
                                    u4(-1);
                                    throw new ParseException();
                            }
                        } else {
                            u4(97);
                        }
                        token2 = this.n;
                        t0VarU2 = u();
                        break;
                    case 105:
                    case 106:
                        int iA14 = this.p;
                        if (iA14 == -1) {
                            iA14 = A4();
                        }
                        if (iA14 == i4) {
                            u4(i4);
                        } else {
                            if (iA14 != i3) {
                                this.v[44] = this.u;
                                u4(-1);
                                throw new ParseException();
                            }
                            u4(i3);
                        }
                        token2 = this.n;
                        t0VarU2 = null;
                        break;
                    default:
                        this.v[45] = this.u;
                        u4(-1);
                        throw new ParseException();
                }
            } else {
                iA5 = this.p;
                if (iA5 == -1) {
                    iA5 = A4();
                }
                if (iA5 != 97) {
                    switch (iA5) {
                        case 100:
                            u4(100);
                            break;
                        case 101:
                            u4(101);
                            break;
                        case 102:
                            u4(102);
                            break;
                        case 103:
                            u4(103);
                            break;
                        case 104:
                            u4(104);
                            break;
                        default:
                            this.v[43] = this.u;
                            u4(-1);
                            throw new ParseException();
                    }
                } else {
                    u4(97);
                }
                token2 = this.n;
                t0VarU2 = u();
            }
            e eVar2 = new e(asString2, token2.kind, t0VarU2, i);
            if (t0VarU2 != null) {
                eVar2.A(this.b, t0VarD2, t0VarU2);
            } else {
                eVar2.B(this.b, t0VarD2, token2);
            }
            arrayList.add(eVar2);
            i3 = 106;
            i4 = 105;
        }
        int iA15 = this.p;
        if (iA15 == -1) {
            iA15 = A4();
        }
        if (iA15 != 130) {
            this.v[46] = this.u;
            t0Var = null;
            i2 = 1;
        } else {
            Token tokenU7 = u4(130);
            t0 t0VarU4 = u();
            i2 = 1;
            if (i != 1) {
                throw new ParseException("Cannot assign to namespace here.", this.b, tokenU7);
            }
            t0Var = t0VarU4;
        }
        Token tokenK = K();
        if (arrayList.size() == i2) {
            e eVar3 = (e) arrayList.get(0);
            eVar3.n0(t0Var);
            eVar3.E(this.b, tokenU4, tokenK);
            return eVar3;
        }
        bj bjVar = new bj(i);
        for (int i5 = 0; i5 < arrayList.size(); i5++) {
            bjVar.l0((e) arrayList.get(i5));
        }
        bjVar.m0(t0Var);
        bjVar.E(this.b, tokenU4, tokenK);
        return bjVar;
    }

    public final xo8 d0() throws ParseException {
        Token tokenU4 = u4(7);
        ifa ifaVarW = W();
        xo8 xo8Var = new xo8(ifaVarW);
        xo8Var.C(this.b, tokenU4, ifaVarW);
        return xo8Var;
    }

    public final boolean d1() {
        return S1();
    }

    public final boolean d2() {
        Token token = this.q;
        if (!w2()) {
            return false;
        }
        this.q = token;
        if (!x2()) {
            return false;
        }
        this.q = token;
        if (!y2()) {
            return false;
        }
        this.q = token;
        return z2();
    }

    public final boolean d3() {
        Token token = this.q;
        if (D4(111)) {
            this.q = token;
            if (j3()) {
                return true;
            }
        }
        return f3();
    }

    public final boolean d4() {
        Token token = this.q;
        if (!D4(91)) {
            return false;
        }
        this.q = token;
        if (!D4(124)) {
            return false;
        }
        this.q = token;
        if (!D4(126)) {
            return false;
        }
        this.q = token;
        if (!D4(95)) {
            return false;
        }
        this.q = token;
        if (!D4(120)) {
            return false;
        }
        this.q = token;
        if (!D4(144)) {
            return false;
        }
        this.q = token;
        return D4(96);
    }

    public final dl e() throws ParseException {
        Token tokenU4;
        Token tokenU5 = u4(6);
        ifa ifaVarW = W();
        xo8 xo8VarD0 = d0();
        int iA4 = this.p;
        if (iA4 == -1) {
            iA4 = A4();
        }
        if (iA4 == 37) {
            tokenU4 = u4(37);
        } else {
            if (iA4 != 38) {
                this.v[26] = this.u;
                u4(-1);
                throw new ParseException();
            }
            tokenU4 = u4(38);
        }
        dl dlVar = new dl(ifaVarW, xo8VarD0);
        dlVar.E(this.b, tokenU5, tokenU4);
        return dlVar;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0047  */
    public final p1 e0() throws ParseException {
        Token tokenU4;
        t0 t0Var;
        t0 t0VarU;
        int iA4 = this.p;
        if (iA4 == -1) {
            iA4 = A4();
        }
        Token tokenK = null;
        t0 t0VarU2 = null;
        if (iA4 == 60) {
            tokenU4 = u4(60);
            t0Var = null;
            t0VarU = null;
        } else {
            if (iA4 != 61) {
                this.v[33] = this.u;
                u4(-1);
                throw new ParseException();
            }
            tokenU4 = u4(61);
            int iA5 = this.p;
            if (iA5 == -1) {
                iA5 = A4();
            }
            if (iA5 != 111 && iA5 != 112 && iA5 != 120 && iA5 != 124 && iA5 != 126 && iA5 != 128 && iA5 != 133) {
                switch (iA5) {
                    case 85:
                    case 86:
                    case 87:
                    case 88:
                    case 89:
                    case 90:
                    case 91:
                        t0VarU = u();
                        break;
                    default:
                        this.v[31] = this.u;
                        t0VarU = null;
                        break;
                }
            } else {
                t0VarU = u();
            }
            int iA6 = this.p;
            if (iA6 == -1) {
                iA6 = A4();
            }
            if (iA6 != 132) {
                this.v[32] = this.u;
            } else {
                u4(132);
                t0VarU2 = u();
            }
            t0 t0Var2 = t0VarU2;
            tokenK = K();
            t0Var = t0Var2;
        }
        if (tokenK == null) {
            tokenK = tokenU4;
        }
        p1 p1Var = new p1(t0VarU, t0Var);
        p1Var.E(this.b, tokenU4, tokenK);
        return p1Var;
    }

    public final boolean e1() {
        return T1();
    }

    public final boolean e2() {
        Token token = this.q;
        if (!A2()) {
            return false;
        }
        this.q = token;
        return B2();
    }

    public final boolean e3() {
        Token token;
        if (k3()) {
            return true;
        }
        do {
            token = this.q;
        } while (!k3());
        this.q = token;
        return f3();
    }

    public final boolean e4() {
        Token token = this.q;
        if (D4(121)) {
            this.q = token;
        }
        Token token2 = this.q;
        if (D4(133)) {
            this.q = token2;
            if (D4(85)) {
                return true;
            }
        }
        Token token3 = this.q;
        if (!D4(97)) {
            return false;
        }
        this.q = token3;
        if (!D4(100)) {
            return false;
        }
        this.q = token3;
        if (!D4(101)) {
            return false;
        }
        this.q = token3;
        if (!D4(102)) {
            return false;
        }
        this.q = token3;
        if (!D4(103)) {
            return false;
        }
        this.q = token3;
        if (!D4(104)) {
            return false;
        }
        this.q = token3;
        if (!D4(105)) {
            return false;
        }
        this.q = token3;
        return D4(106);
    }

    public final t0 f() throws ParseException {
        Token tokenU4;
        i iVar;
        int iA4 = this.p;
        if (iA4 == -1) {
            iA4 = A4();
        }
        if (iA4 == 87) {
            tokenU4 = u4(87);
            iVar = new i(false);
        } else {
            if (iA4 != 88) {
                this.v[18] = this.u;
                u4(-1);
                throw new ParseException();
            }
            tokenU4 = u4(88);
            iVar = new i(true);
        }
        iVar.E(this.b, tokenU4, tokenU4);
        return iVar;
    }

    public final t0 f0() throws ParseException {
        Token tokenU4;
        t0 t0VarC0 = c0();
        if (!P0(Integer.MAX_VALUE)) {
            return t0VarC0;
        }
        int iA4 = this.p;
        if (iA4 == -1) {
            iA4 = A4();
        }
        if (iA4 == 141) {
            tokenU4 = u4(141);
        } else if (iA4 != 142) {
            switch (iA4) {
                case 107:
                    tokenU4 = u4(107);
                    break;
                case 108:
                    tokenU4 = u4(108);
                    break;
                case 109:
                    tokenU4 = u4(109);
                    break;
                case 110:
                    tokenU4 = u4(110);
                    break;
                default:
                    this.v[7] = this.u;
                    u4(-1);
                    throw new ParseException();
            }
        } else {
            tokenU4 = u4(142);
        }
        t0 t0VarC1 = c0();
        F4(t0VarC0, "scalar");
        F4(t0VarC1, "scalar");
        G4(t0VarC0, "scalar");
        G4(t0VarC1, "scalar");
        I4(t0VarC0, "number");
        I4(t0VarC1, "number");
        k0 k0Var = new k0(t0VarC0, t0VarC1, tokenU4.image);
        k0Var.A(this.b, t0VarC0, t0VarC1);
        return k0Var;
    }

    public final boolean f1() {
        return U1();
    }

    public final boolean f2() {
        return D4(63);
    }

    public final boolean f3() {
        Token token;
        Token token2 = this.q;
        if (l3()) {
            this.q = token2;
            if (m3()) {
                this.q = token2;
                if (n3()) {
                    this.q = token2;
                    if (o3()) {
                        this.q = token2;
                        if (p3()) {
                            this.q = token2;
                            if (q3()) {
                                this.q = token2;
                                if (r3()) {
                                    this.q = token2;
                                    if (s3()) {
                                        return true;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        do {
            token = this.q;
        } while (!t3());
        this.q = token;
        return false;
    }

    public final boolean f4() {
        return D4(133) || D4(97);
    }

    public final BreakInstruction g() throws ParseException {
        Token tokenU4 = u4(49);
        if (this.f >= 1) {
            BreakInstruction breakInstruction = new BreakInstruction();
            breakInstruction.E(this.b, tokenU4, tokenU4);
            return breakInstruction;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(tokenU4.image);
        stringBuffer.append(" must be nested inside a directive that supports it: ");
        stringBuffer.append(" #list with \"as\", #items, #switch (or the deprecated ");
        stringBuffer.append(B0());
        stringBuffer.append(")");
        throw new ParseException(stringBuffer.toString(), this.b, tokenU4);
    }

    public final ReturnInstruction g0() throws ParseException {
        Token tokenU4;
        t0 t0VarU;
        Token tokenK;
        int iA4 = this.p;
        if (iA4 == -1) {
            iA4 = A4();
        }
        if (iA4 == 26) {
            tokenU4 = u4(26);
            t0VarU = u();
            tokenK = K();
        } else {
            if (iA4 != 50) {
                this.v[34] = this.u;
                u4(-1);
                throw new ParseException();
            }
            tokenU4 = u4(50);
            t0VarU = null;
            tokenK = tokenU4;
        }
        if (this.g) {
            if (t0VarU != null) {
                throw new ParseException("A macro cannot return a value", this.b, tokenU4);
            }
        } else if (this.h) {
            if (t0VarU == null) {
                throw new ParseException("A function must return a value", this.b, tokenU4);
            }
        } else if (t0VarU == null) {
            throw new ParseException("A return instruction can only occur inside a macro or function", this.b, tokenU4);
        }
        ReturnInstruction returnInstruction = new ReturnInstruction(t0VarU);
        returnInstruction.E(this.b, tokenU4, tokenK);
        return returnInstruction;
    }

    public final boolean g1() {
        return V1();
    }

    public final boolean g2() {
        return D4(65);
    }

    public final boolean g3() {
        if (u3()) {
            return true;
        }
        Token token = this.q;
        if (!v3()) {
            return false;
        }
        this.q = token;
        return false;
    }

    public final boolean g4() {
        return D4(126);
    }

    public final t0 h(t0 t0Var) throws Throwable {
        u4(95);
        Token tokenU4 = u4(133);
        this.l.e(tokenU4);
        j jVarE0 = j.e0(this.k, t0Var, tokenU4, this.l);
        jVarE0.B(this.b, t0Var, tokenU4);
        if (!(jVarE0 instanceof qu9)) {
            return jVarE0;
        }
        if (jVarE0 instanceof l) {
            if (t0Var instanceof x0) {
                String strX = ((x0) t0Var).X();
                y0(strX, t0Var, tokenU4);
                ((l) jVarE0).h0(strX);
                return jVarE0;
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Expression used as the left hand operand of ?");
            stringBuffer.append(tokenU4.image);
            stringBuffer.append(" must be a simple loop variable name.");
            throw new ParseException(stringBuffer.toString(), t0Var);
        }
        if (jVarE0 instanceof m) {
            Token tokenU5 = u4(126);
            ArrayList arrayListA0 = a0();
            Token tokenU6 = u4(127);
            jVarE0.B(this.b, t0Var, tokenU6);
            ((m) jVarE0).h0(arrayListA0, tokenU5, tokenU6);
            return jVarE0;
        }
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append("Unhandled ");
        Class clsZ0 = K;
        if (clsZ0 == null) {
            clsZ0 = z0("freemarker.core.SpecialBuiltIn");
            K = clsZ0;
        }
        stringBuffer2.append(clsZ0.getName());
        stringBuffer2.append(" subclass: ");
        stringBuffer2.append(jVarE0.getClass());
        throw new AssertionError(stringBuffer2.toString());
    }

    public final ifa h0() throws ParseException {
        if (L0(Integer.MAX_VALUE)) {
            B();
        }
        ifa ifaVarW = W();
        u4(0);
        ifaVarW.i0();
        ifa ifaVarE0 = ifaVarW.e0(this.c);
        ifaVarE0.i0();
        return ifaVarE0;
    }

    public final boolean h1() {
        return W1();
    }

    public final boolean h2() {
        return D4(24);
    }

    public final boolean h3() {
        Token token = this.q;
        if (D4(99)) {
            this.q = token;
            if (D4(97)) {
                this.q = token;
                if (D4(98)) {
                    return true;
                }
            }
        }
        return g3();
    }

    public final boolean h4() {
        return D4(133) || D4(97);
    }

    public final j0 i() throws ParseException {
        Token tokenU4 = u4(91);
        Token tokenU5 = u4(133);
        this.l.e(tokenU5);
        j0 j0Var = new j0(tokenU5, this.l);
        j0Var.E(this.b, tokenU4, tokenU5);
        return j0Var;
    }

    public final q1 i0() throws ParseException {
        Token tokenU4;
        Token tokenU5 = u4(12);
        if (K4() == null) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("#sep must be inside a #list (or ");
            stringBuffer.append(B0());
            stringBuffer.append(") block.");
            throw new ParseException(stringBuffer.toString(), this.b, tokenU5);
        }
        ifa ifaVarW = W();
        int iA4 = this.p;
        if (iA4 == -1) {
            iA4 = A4();
        }
        if (iA4 != 36) {
            this.v[29] = this.u;
            tokenU4 = null;
        } else {
            tokenU4 = u4(36);
        }
        q1 q1Var = new q1(ifaVarW);
        if (tokenU4 != null) {
            q1Var.E(this.b, tokenU5, tokenU4);
        } else {
            q1Var.C(this.b, tokenU5, ifaVarW);
        }
        return q1Var;
    }

    public final boolean i1() {
        return X1();
    }

    public final boolean i2() {
        Token token = this.q;
        if (!D4(60)) {
            return false;
        }
        this.q = token;
        return C2();
    }

    public final boolean i3() {
        Token token = this.q;
        if (!w3()) {
            return false;
        }
        this.q = token;
        if (!x3()) {
            return false;
        }
        this.q = token;
        if (!y3()) {
            return false;
        }
        this.q = token;
        return z3();
    }

    public final boolean i4() {
        return G2();
    }

    public final ifa j() throws ParseException {
        ArrayList arrayListA0;
        HashMap mapP;
        Token tokenU4 = u4(27);
        String str = u4(133).image;
        if (I0(Integer.MAX_VALUE)) {
            mapP = P();
            arrayListA0 = null;
        } else {
            if (H0(Integer.MAX_VALUE)) {
                u4(126);
            }
            arrayListA0 = a0();
            int iA4 = this.p;
            if (iA4 == -1) {
                iA4 = A4();
            }
            if (iA4 != 127) {
                this.v[68] = this.u;
            } else {
                u4(127);
            }
            mapP = null;
        }
        Token tokenK = K();
        v1 v1Var = arrayListA0 != null ? new v1(new x0(str), arrayListA0, (ifa) null, (List) null) : new v1(new x0(str), mapP, (ifa) null, (List) null);
        v1Var.p = true;
        v1Var.E(this.b, tokenU4, tokenK);
        return v1Var;
    }

    public final n1 j0() throws ParseException {
        Token tokenU4 = u4(28);
        Token tokenU5 = u4(133);
        u4(97);
        t0 t0VarU = u();
        Token tokenK = K();
        this.l.e(tokenU5);
        n1 n1Var = new n1(tokenU5, this.l, t0VarU, this.b.t0());
        n1Var.E(this.b, tokenU4, tokenK);
        return n1Var;
    }

    public final boolean j1() {
        return Y1();
    }

    public final boolean j2() {
        return D4(62);
    }

    public final boolean j3() {
        return D4(112);
    }

    public final boolean j4() {
        Token token = this.q;
        if (!D4(72)) {
            return false;
        }
        this.q = token;
        if (!D4(73)) {
            return false;
        }
        this.q = token;
        return D4(74);
    }

    public final yr0 k() throws ParseException {
        Token tokenU4;
        t0 t0VarU;
        int iA4 = this.p;
        if (iA4 == -1) {
            iA4 = A4();
        }
        if (iA4 != 72) {
            this.v[78] = this.u;
        } else {
            u4(72);
        }
        int iA5 = this.p;
        if (iA5 == -1) {
            iA5 = A4();
        }
        if (iA5 == 15) {
            tokenU4 = u4(15);
            t0VarU = u();
            u4(139);
        } else {
            if (iA5 != 57) {
                this.v[79] = this.u;
                u4(-1);
                throw new ParseException();
            }
            tokenU4 = u4(57);
            t0VarU = null;
        }
        ifa ifaVarW = W();
        yr0 yr0Var = new yr0(t0VarU, ifaVarW);
        yr0Var.C(this.b, tokenU4, ifaVarW);
        return yr0Var;
    }

    public final sx9 k0() throws ParseException {
        Token tokenU4;
        t0 t0VarU;
        int iA4 = this.p;
        if (iA4 == -1) {
            iA4 = A4();
        }
        if (iA4 == 25) {
            tokenU4 = u4(25);
            t0VarU = u();
            K();
        } else {
            if (iA4 != 51) {
                this.v[35] = this.u;
                u4(-1);
                throw new ParseException();
            }
            tokenU4 = u4(51);
            t0VarU = null;
        }
        sx9 sx9Var = new sx9(t0VarU);
        sx9Var.E(this.b, tokenU4, tokenU4);
        return sx9Var;
    }

    public final boolean k1() {
        return Z1();
    }

    public final boolean k2() {
        return D4(6);
    }

    public final boolean k3() {
        return D4(120);
    }

    public final boolean k4() {
        Token token = this.q;
        if (D4(72)) {
            this.q = token;
        }
        Token token2 = this.q;
        if (!D4(70)) {
            return false;
        }
        this.q = token2;
        return D4(69);
    }

    public final da1 l() throws ParseException {
        Token tokenU4;
        StringBuffer stringBuffer = new StringBuffer();
        int iA4 = this.p;
        if (iA4 == -1) {
            iA4 = A4();
        }
        if (iA4 == 30) {
            tokenU4 = u4(30);
        } else {
            if (iA4 != 31) {
                this.v[73] = this.u;
                u4(-1);
                throw new ParseException();
            }
            tokenU4 = u4(31);
        }
        Token tokenT0 = t0(tokenU4, stringBuffer);
        da1 da1Var = new da1(stringBuffer.toString());
        da1Var.E(this.b, tokenU4, tokenT0);
        return da1Var;
    }

    public final r1 l0(boolean z) throws ParseException {
        Token tokenU4;
        boolean z2;
        String strA;
        int iA4 = this.p;
        if (iA4 == -1) {
            iA4 = A4();
        }
        if (iA4 == 85) {
            tokenU4 = u4(85);
            z2 = false;
        } else {
            if (iA4 != 86) {
                this.v[17] = this.u;
                u4(-1);
                throw new ParseException();
            }
            tokenU4 = u4(86);
            z2 = true;
        }
        String str = tokenU4.image;
        String strSubstring = str.substring(1, str.length() - 1);
        if (z2) {
            strA = strSubstring.substring(1);
        } else {
            try {
                strA = n0a.a(strSubstring);
            } catch (ParseException e) {
                e.lineNumber = tokenU4.beginLine;
                e.columnNumber = tokenU4.beginColumn;
                e.endLineNumber = tokenU4.endLine;
                e.endColumnNumber = tokenU4.endColumn;
                throw e;
            }
        }
        r1 r1Var = new r1(strA);
        r1Var.E(this.b, tokenU4, tokenU4);
        if (z && !z2 && (tokenU4.image.indexOf(StringSubstitutor.DEFAULT_VAR_START) >= 0 || tokenU4.image.indexOf("#{") >= 0)) {
            r1Var.Y(this.l);
        }
        return r1Var;
    }

    public final boolean l1() {
        return a2();
    }

    public final boolean l2() {
        Token token = this.q;
        if (D4(121)) {
            this.q = token;
        }
        return F2();
    }

    public final boolean l3() {
        return A3();
    }

    public final boolean l4() {
        Token token = this.q;
        if (!D4(111)) {
            return false;
        }
        this.q = token;
        return D4(112);
    }

    public final wd1 m() throws ParseException {
        Token tokenU4 = u4(29);
        ifa ifaVarW = W();
        Token tokenU5 = u4(45);
        wd1 wd1Var = new wd1(ifaVarW);
        wd1Var.E(this.b, tokenU4, tokenU5);
        return wd1Var;
    }

    public final rw2 m0() throws ParseException {
        Token tokenU4 = u4(75);
        t0 t0VarU = u();
        F4(t0VarU, "string or something automatically convertible to string (number, date or boolean)");
        G4(t0VarU, "string or something automatically convertible to string (number, date or boolean)");
        Token tokenU5 = u4(129);
        rw2 rw2Var = new rw2(t0VarU, A0(t0VarU));
        rw2Var.E(this.b, tokenU4, tokenU5);
        return rw2Var;
    }

    public final boolean m1() {
        return b2();
    }

    public final boolean m2() {
        Token token = this.q;
        if (!D4(107)) {
            return false;
        }
        this.q = token;
        if (!D4(108)) {
            return false;
        }
        this.q = token;
        if (!D4(109)) {
            return false;
        }
        this.q = token;
        if (!D4(110)) {
            return false;
        }
        this.q = token;
        if (!D4(87)) {
            return false;
        }
        this.q = token;
        if (!D4(88)) {
            return false;
        }
        this.q = token;
        if (!D4(130)) {
            return false;
        }
        this.q = token;
        if (!D4(131)) {
            return false;
        }
        this.q = token;
        return D4(132);
    }

    public final boolean m3() {
        return B3();
    }

    public final boolean m4() {
        Token token = this.q;
        if (!D4(113)) {
            return false;
        }
        this.q = token;
        if (!D4(116)) {
            return false;
        }
        this.q = token;
        return D4(117);
    }

    public final t0 n(t0 t0Var) throws ParseException {
        Token tokenU4;
        int iA4 = this.p;
        if (iA4 == -1) {
            iA4 = A4();
        }
        t0 t0VarU = null;
        if (iA4 == 120) {
            tokenU4 = u4(120);
            if (T0(Integer.MAX_VALUE)) {
                t0VarU = u();
            }
        } else {
            if (iA4 != 144) {
                this.v[14] = this.u;
                u4(-1);
                throw new ParseException();
            }
            tokenU4 = u4(144);
        }
        l0 l0Var = new l0(t0Var, t0VarU);
        if (t0VarU == null) {
            l0Var.B(this.b, t0Var, tokenU4);
        } else {
            l0Var.A(this.b, t0Var, t0VarU);
        }
        return l0Var;
    }

    public final s1 n0() throws ParseException {
        Token tokenU4 = u4(14);
        t0 t0VarU = u();
        u4(139);
        this.f++;
        s1 s1Var = new s1(t0VarU);
        boolean z = false;
        while (J0(2)) {
            yr0 yr0VarK = k();
            if (yr0VarK.n == null) {
                if (z) {
                    throw new ParseException("You can only have one default case in a switch statement", this.b, tokenU4);
                }
                z = true;
            }
            s1Var.l0(yr0VarK);
        }
        int iA4 = this.p;
        if (iA4 == -1) {
            iA4 = A4();
        }
        if (iA4 != 72) {
            this.v[77] = this.u;
        } else {
            u4(72);
        }
        Token tokenU5 = u4(47);
        this.f--;
        s1Var.E(this.b, tokenU4, tokenU5);
        return s1Var;
    }

    public final boolean n1() {
        return c2();
    }

    public final boolean n2() {
        return D4(126) || S3() || D4(127);
    }

    public final boolean n3() {
        return C3();
    }

    public final boolean n4() {
        Token token = this.q;
        if (!D4(99)) {
            return false;
        }
        this.q = token;
        if (!D4(97)) {
            return false;
        }
        this.q = token;
        return D4(98);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0049 A[FALL_THROUGH] */
    /* JADX WARN: Code duplicated, block: B:21:0x004d  */
    /* JADX WARN: Code duplicated, block: B:23:0x0053 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:24:0x0055  */
    /* JADX WARN: Code duplicated, block: B:25:0x0058  */
    /* JADX WARN: Code duplicated, block: B:26:0x005b  */
    /* JADX WARN: Code duplicated, block: B:28:0x006c  */
    /* JADX WARN: Code duplicated, block: B:29:0x0073  */
    /* JADX WARN: Code duplicated, block: B:30:0x007a  */
    /* JADX WARN: Code duplicated, block: B:31:0x0081  */
    /* JADX WARN: Code duplicated, block: B:32:0x0088  */
    /* JADX WARN: Code duplicated, block: B:33:0x008f  */
    /* JADX WARN: Code duplicated, block: B:34:0x0096  */
    /* JADX WARN: Code duplicated, block: B:35:0x009d  */
    /* JADX WARN: Code duplicated, block: B:36:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:41:0x00cb  */
    public final t0 o(t0 t0Var) throws ParseException {
        int iA4;
        Token tokenU4;
        u4(91);
        int iA5 = this.p;
        if (iA5 == -1) {
            iA5 = A4();
        }
        if (iA5 == 87 || iA5 == 88) {
            iA4 = this.p;
            if (iA4 == -1) {
                iA4 = A4();
            }
            if (iA4 != 87) {
                tokenU4 = u4(87);
            } else if (iA4 != 88) {
                switch (iA4) {
                    case 107:
                        tokenU4 = u4(107);
                        break;
                    case 108:
                        tokenU4 = u4(108);
                        break;
                    case 109:
                        tokenU4 = u4(109);
                        break;
                    case 110:
                        tokenU4 = u4(110);
                        break;
                    default:
                        switch (iA4) {
                            case 130:
                                tokenU4 = u4(130);
                                break;
                            case 131:
                                tokenU4 = u4(131);
                                break;
                            case 132:
                                tokenU4 = u4(132);
                                break;
                            default:
                                this.v[15] = this.u;
                                u4(-1);
                                throw new ParseException();
                        }
                        break;
                }
            } else {
                tokenU4 = u4(88);
            }
            if (!Character.isLetter(tokenU4.image.charAt(0))) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(tokenU4.image);
                stringBuffer.append(" is not a valid identifier.");
                throw new ParseException(stringBuffer.toString(), this.b, tokenU4);
            }
        } else if (iA5 == 113) {
            tokenU4 = u4(113);
        } else if (iA5 != 114) {
            switch (iA5) {
                default:
                    switch (iA5) {
                        case 130:
                        case 131:
                        case 132:
                            break;
                        case 133:
                            tokenU4 = u4(133);
                            break;
                        default:
                            this.v[16] = this.u;
                            u4(-1);
                            throw new ParseException();
                    }
                case 107:
                case 108:
                case 109:
                case 110:
                    iA4 = this.p;
                    if (iA4 == -1) {
                        iA4 = A4();
                    }
                    if (iA4 != 87) {
                        tokenU4 = u4(87);
                    } else if (iA4 != 88) {
                        switch (iA4) {
                            case 107:
                                tokenU4 = u4(107);
                                break;
                            case 108:
                                tokenU4 = u4(108);
                                break;
                            case 109:
                                tokenU4 = u4(109);
                                break;
                            case 110:
                                tokenU4 = u4(110);
                                break;
                            default:
                                switch (iA4) {
                                    case 130:
                                        tokenU4 = u4(130);
                                        break;
                                    case 131:
                                        tokenU4 = u4(131);
                                        break;
                                    case 132:
                                        tokenU4 = u4(132);
                                        break;
                                    default:
                                        this.v[15] = this.u;
                                        u4(-1);
                                        throw new ParseException();
                                }
                                break;
                        }
                    } else {
                        tokenU4 = u4(88);
                    }
                    if (!Character.isLetter(tokenU4.image.charAt(0))) {
                        StringBuffer stringBuffer2 = new StringBuffer();
                        stringBuffer2.append(tokenU4.image);
                        stringBuffer2.append(" is not a valid identifier.");
                        throw new ParseException(stringBuffer2.toString(), this.b, tokenU4);
                    }
                    break;
            }
        } else {
            tokenU4 = u4(114);
        }
        G4(t0Var, "hash");
        I4(t0Var, "hash");
        E4(t0Var, "hash");
        m0 m0Var = new m0(t0Var, tokenU4.image);
        m0Var.B(this.b, t0Var, tokenU4);
        return m0Var;
    }

    public final w6b o0() throws ParseException {
        Token tokenU4;
        Token tokenU5 = u4(23);
        t0 t0VarU = u();
        int iA4 = this.p;
        if (iA4 == -1) {
            iA4 = A4();
        }
        if (iA4 != 122) {
            this.v[74] = this.u;
        } else {
            u4(122);
        }
        ifa ifaVarW = null;
        HashMap map = null;
        while (true) {
            int iA5 = this.p;
            if (iA5 == -1) {
                iA5 = A4();
            }
            if (iA5 != 133) {
                break;
            }
            Token tokenU6 = u4(133);
            u4(97);
            t0 t0VarU2 = u();
            if (map == null) {
                map = new HashMap();
            }
            map.put(tokenU6.image, t0VarU2);
        }
        this.v[75] = this.u;
        int iA6 = this.p;
        if (iA6 == -1) {
            iA6 = A4();
        }
        if (iA6 == 139) {
            u4(139);
            ifaVarW = W();
            tokenU4 = u4(46);
        } else {
            if (iA6 != 140) {
                this.v[76] = this.u;
                u4(-1);
                throw new ParseException();
            }
            tokenU4 = u4(140);
        }
        w6b w6bVar = new w6b(t0VarU, map, ifaVarW);
        w6bVar.E(this.b, tokenU5, tokenU4);
        return w6bVar;
    }

    public final boolean o1() {
        return d2();
    }

    public final boolean o2() {
        if (D4(120)) {
            return true;
        }
        Token token = this.q;
        if (!D2()) {
            return false;
        }
        this.q = token;
        return false;
    }

    public final boolean o3() {
        return D3();
    }

    public final boolean o4() {
        Token token = this.q;
        if (!D4(142)) {
            return false;
        }
        this.q = token;
        if (!D4(110)) {
            return false;
        }
        this.q = token;
        if (!D4(141)) {
            return false;
        }
        this.q = token;
        if (!D4(109)) {
            return false;
        }
        this.q = token;
        if (!D4(108)) {
            return false;
        }
        this.q = token;
        if (!D4(108)) {
            return false;
        }
        this.q = token;
        return D4(107);
    }

    public final t0 p(t0 t0Var) throws ParseException {
        u4(124);
        t0 t0VarU = u();
        Token tokenU4 = u4(125);
        E4(t0Var, "list or hash");
        H4(t0Var, "list or hash");
        n0 n0Var = new n0(t0Var, t0VarU);
        n0Var.B(this.b, t0Var, tokenU4);
        return n0Var;
    }

    public final ifa p0() throws ParseException {
        Token tokenU4;
        z9b z9bVar;
        int iA4 = this.p;
        if (iA4 == -1) {
            iA4 = A4();
        }
        switch (iA4) {
            case 53:
                tokenU4 = u4(53);
                z9bVar = new z9b(true, true);
                break;
            case 54:
                tokenU4 = u4(54);
                z9bVar = new z9b(true, false);
                break;
            case 55:
                tokenU4 = u4(55);
                z9bVar = new z9b(false, true);
                break;
            case 56:
                tokenU4 = u4(56);
                z9bVar = new z9b(false, false);
                break;
            default:
                this.v[37] = this.u;
                u4(-1);
                throw new ParseException();
        }
        z9bVar.E(this.b, tokenU4, tokenU4);
        return z9bVar;
    }

    public final boolean p1() {
        return e2();
    }

    public final boolean p2() {
        return D4(16);
    }

    public final boolean p3() {
        return E3();
    }

    public final boolean p4() {
        return E2();
    }

    public final v83 q() throws ParseException {
        Token tokenU4 = u4(48);
        ifa ifaVarW = W();
        v83 v83Var = new v83(ifaVarW);
        v83Var.C(this.b, tokenU4, ifaVarW);
        return v83Var;
    }

    public final t0 q0() throws ParseException {
        int iA4 = this.p;
        if (iA4 == -1) {
            iA4 = A4();
        }
        if (iA4 == 111 || iA4 == 112) {
            return r0();
        }
        if (iA4 == 120) {
            return T();
        }
        if (iA4 != 124 && iA4 != 126 && iA4 != 128 && iA4 != 133) {
            switch (iA4) {
                case 85:
                case 86:
                case 87:
                case 88:
                case 89:
                case 90:
                case 91:
                    break;
                default:
                    this.v[1] = this.u;
                    u4(-1);
                    throw new ParseException();
            }
        }
        return b0();
    }

    public final boolean q1() {
        return f2();
    }

    public final boolean q2() {
        return D4(17);
    }

    public final boolean q3() {
        return F3();
    }

    public final boolean q4() {
        return D4(118);
    }

    public final t0 r() throws ParseException {
        Token tokenU4;
        t0 t0VarF0 = f0();
        if (!O0(Integer.MAX_VALUE)) {
            return t0VarF0;
        }
        int iA4 = this.p;
        if (iA4 == -1) {
            iA4 = A4();
        }
        switch (iA4) {
            case 97:
                tokenU4 = u4(97);
                break;
            case 98:
                tokenU4 = u4(98);
                break;
            case 99:
                tokenU4 = u4(99);
                break;
            default:
                this.v[6] = this.u;
                u4(-1);
                throw new ParseException();
        }
        t0 t0VarF1 = f0();
        F4(t0VarF0, "scalar");
        F4(t0VarF1, "scalar");
        G4(t0VarF0, "scalar");
        G4(t0VarF1, "scalar");
        k0 k0Var = new k0(t0VarF0, t0VarF1, tokenU4.image);
        k0Var.A(this.b, t0VarF0, t0VarF1);
        return k0Var;
    }

    public final t0 r0() throws ParseException {
        Token tokenU4;
        boolean z;
        int iA4 = this.p;
        if (iA4 == -1) {
            iA4 = A4();
        }
        if (iA4 == 111) {
            tokenU4 = u4(111);
            z = false;
        } else {
            if (iA4 != 112) {
                this.v[3] = this.u;
                u4(-1);
                throw new ParseException();
            }
            tokenU4 = u4(112);
            z = true;
        }
        t0 t0VarB0 = b0();
        u1 u1Var = new u1(t0VarB0, z);
        u1Var.C(this.b, tokenU4, t0VarB0);
        return u1Var;
    }

    public final boolean r1() {
        return g2();
    }

    public final boolean r2() {
        return D4(18);
    }

    public final boolean r3() {
        return G3();
    }

    public final boolean r4() {
        return D4(119);
    }

    public final p0 s() throws ParseException {
        Token tokenU4 = u4(63);
        Token tokenU5 = u4(133);
        u4(131);
        t0 t0VarU = u();
        u4(139);
        p0 p0Var = new p0(tokenU5.image, t0VarU, A0(t0VarU));
        this.i.addFirst(p0Var);
        p0Var.m0(W());
        this.i.removeFirst();
        p0Var.E(this.b, tokenU4, u4(64));
        return p0Var;
    }

    public final ifa s0() throws ParseException {
        ArrayList arrayListA0;
        HashMap mapP;
        ArrayList arrayList;
        int i;
        Token tokenU4;
        List list;
        Token tokenU5 = u4(67);
        t0 t0VarU = u();
        ifa ifaVarW = null;
        t0 t0Var = ((t0VarU instanceof x0) || ((t0VarU instanceof m0) && ((m0) t0VarU).Y())) ? t0VarU : null;
        int iA4 = this.p;
        if (iA4 == -1) {
            iA4 = A4();
        }
        if (iA4 != 143) {
            this.v[60] = this.u;
        } else {
            u4(143);
        }
        if (G0(Integer.MAX_VALUE)) {
            mapP = P();
            arrayListA0 = null;
        } else {
            arrayListA0 = a0();
            mapP = null;
        }
        int iA5 = this.p;
        if (iA5 == -1) {
            iA5 = A4();
        }
        if (iA5 != 122) {
            this.v[66] = this.u;
            arrayList = null;
        } else {
            u4(122);
            arrayList = new ArrayList(4);
            int iA6 = this.p;
            if (iA6 == -1) {
                iA6 = A4();
            }
            if (iA6 == 133 || iA6 == 143) {
                int iA7 = this.p;
                if (iA7 == -1) {
                    iA7 = A4();
                }
                if (iA7 != 143) {
                    this.v[61] = this.u;
                } else {
                    u4(143);
                }
                arrayList.add(u4(133).image);
                while (true) {
                    int iA8 = this.p;
                    if (iA8 == -1) {
                        iA8 = A4();
                    }
                    if (iA8 != 121 && iA8 != 143) {
                        break;
                    }
                    int iA9 = this.p;
                    if (iA9 == -1) {
                        iA9 = A4();
                    }
                    if (iA9 != 143) {
                        this.v[63] = this.u;
                    } else {
                        u4(143);
                    }
                    u4(121);
                    int iA10 = this.p;
                    if (iA10 == -1) {
                        iA10 = A4();
                    }
                    if (iA10 != 143) {
                        this.v[64] = this.u;
                    } else {
                        u4(143);
                    }
                    arrayList.add(u4(133).image);
                }
                this.v[62] = this.u;
            } else {
                this.v[65] = this.u;
            }
        }
        int iA11 = this.p;
        if (iA11 == -1) {
            iA11 = A4();
        }
        if (iA11 == 139) {
            u4(139);
            if (arrayList == null || (list = this.e) == null || list.isEmpty()) {
                i = 0;
            } else {
                int size = this.e.size();
                int size2 = arrayList.size();
                i = 0;
                for (int i2 = 0; i2 < size2; i2++) {
                    String str = (String) arrayList.get(i2);
                    for (int i3 = size - 1; i3 >= 0; i3--) {
                        b bVar = (b) this.e.get(i3);
                        if (bVar.a != null && bVar.a.equals(str)) {
                            if (bVar.b == 3) {
                                break;
                            }
                            b bVarM4 = M4();
                            bVarM4.a = str;
                            bVarM4.b = 3;
                            i++;
                            break;
                        }
                    }
                }
            }
            ifaVarW = W();
            Token tokenU6 = u4(68);
            for (int i4 = 0; i4 < i; i4++) {
                L4();
            }
            String str2 = tokenU6.image;
            String strTrim = str2.substring(3, str2.length() - 1).trim();
            if (strTrim.length() > 0) {
                if (t0Var == null) {
                    throw new ParseException("Expecting </@>", this.b, tokenU6);
                }
                String strO = t0Var.o();
                if (!strTrim.equals(strO)) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("Expecting </@> or </@");
                    stringBuffer.append(strO);
                    stringBuffer.append(">");
                    throw new ParseException(stringBuffer.toString(), this.b, tokenU6);
                }
            }
            tokenU4 = tokenU6;
        } else {
            if (iA11 != 140) {
                this.v[67] = this.u;
                u4(-1);
                throw new ParseException();
            }
            tokenU4 = u4(140);
        }
        v1 v1Var = arrayListA0 != null ? new v1(t0VarU, arrayListA0, ifaVarW, arrayList) : new v1(t0VarU, mapP, ifaVarW, arrayList);
        v1Var.E(this.b, tokenU5, tokenU4);
        return v1Var;
    }

    public final boolean s1() {
        return h2();
    }

    public final boolean s2() {
        return D4(21);
    }

    public final boolean s3() {
        return H3();
    }

    public final boolean s4() {
        return F2();
    }

    public final t0 t(t0 t0Var) throws ParseException {
        Token tokenU4 = u4(96);
        s0 s0Var = new s0(t0Var);
        s0Var.B(this.b, t0Var, tokenU4);
        return s0Var;
    }

    public final Token t0(Token token, StringBuffer stringBuffer) throws ParseException {
        Token tokenU4;
        while (true) {
            int iA4 = this.p;
            if (iA4 == -1) {
                iA4 = A4();
            }
            switch (iA4) {
                case 145:
                    tokenU4 = u4(145);
                    break;
                case 146:
                    tokenU4 = u4(146);
                    break;
                case 147:
                    tokenU4 = u4(147);
                    break;
                case 148:
                    tokenU4 = u4(148);
                    break;
                default:
                    this.v[83] = this.u;
                    u4(-1);
                    throw new ParseException();
            }
            stringBuffer.append(tokenU4.image);
            int iA5 = this.p;
            if (iA5 == -1) {
                iA5 = A4();
            }
            switch (iA5) {
                case 145:
                case 146:
                case 147:
                case 148:
                    break;
                default:
                    this.v[84] = this.u;
                    stringBuffer.setLength(stringBuffer.length() - tokenU4.image.length());
                    if (tokenU4.image.endsWith(ProcessInfo.SPLIT_NEW_VERSION) || d1d.f(this.b) < d1d.d) {
                        return tokenU4;
                    }
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append("Unclosed \"");
                    stringBuffer2.append(token.image);
                    stringBuffer2.append("\"");
                    throw new ParseException(stringBuffer2.toString(), this.b, token);
            }
        }
    }

    public final boolean t1() {
        return i2();
    }

    public final boolean t2() {
        return D4(50);
    }

    public final boolean t3() {
        return I3();
    }

    public final void t4(int i, int i2) {
        if (i2 >= 100) {
            return;
        }
        int i3 = this.E;
        if (i2 == i3 + 1) {
            int[] iArr = this.D;
            this.E = i3 + 1;
            iArr[i3] = i;
            return;
        }
        if (i3 != 0) {
            this.B = new int[i3];
            for (int i4 = 0; i4 < this.E; i4++) {
                this.B[i4] = this.D[i4];
            }
            Enumeration enumerationElements = this.A.elements();
            boolean z = false;
            while (enumerationElements.hasMoreElements()) {
                int[] iArr2 = (int[]) enumerationElements.nextElement();
                if (iArr2.length == this.B.length) {
                    int i5 = 0;
                    while (true) {
                        int[] iArr3 = this.B;
                        if (i5 >= iArr3.length) {
                            z = true;
                            break;
                        } else {
                            if (iArr2[i5] != iArr3[i5]) {
                                z = false;
                                break;
                            }
                            i5++;
                        }
                    }
                    if (z) {
                        break;
                    }
                }
            }
            if (!z) {
                this.A.addElement(this.B);
            }
            if (i2 != 0) {
                int[] iArr4 = this.D;
                this.E = i2;
                iArr4[i2 - 1] = i;
            }
        }
    }

    public final t0 u() {
        return X();
    }

    public final w1 u0() throws ParseException {
        t0 t0VarU;
        Token tokenU4 = u4(24);
        t0 t0VarU2 = u();
        int iA4 = this.p;
        if (iA4 == -1) {
            iA4 = A4();
        }
        if (iA4 != 132) {
            this.v[30] = this.u;
            t0VarU = null;
        } else {
            u4(132);
            t0VarU = u();
        }
        Token tokenK = K();
        w1 w1Var = new w1(t0VarU2, t0VarU);
        w1Var.E(this.b, tokenU4, tokenK);
        return w1Var;
    }

    public final boolean u1() {
        return j2();
    }

    public final boolean u2() {
        return D4(26);
    }

    public final boolean u3() {
        if (E2()) {
            return true;
        }
        Token token = this.q;
        if (!J3()) {
            return false;
        }
        this.q = token;
        return false;
    }

    public final Token u4(int i) throws ParseException {
        Token token = this.n;
        Token token2 = token.next;
        if (token2 != null) {
            this.n = token2;
        } else {
            Token tokenJ = this.l.j();
            token.next = tokenJ;
            this.n = tokenJ;
        }
        this.p = -1;
        if (this.n.kind != i) {
            this.n = token;
            this.C = i;
            throw C0();
        }
        this.u++;
        int i2 = this.y + 1;
        this.y = i2;
        if (i2 > 100) {
            int i3 = 0;
            this.y = 0;
            while (true) {
                a[] aVarArr = this.w;
                if (i3 >= aVarArr.length) {
                    break;
                }
                for (a aVar = aVarArr[i3]; aVar != null; aVar = aVar.d) {
                    if (aVar.a < this.u) {
                        aVar.b = null;
                    }
                }
                i3++;
            }
        }
        return this.n;
    }

    public final zo3 v() throws ParseException {
        Token tokenU4 = u4(62);
        if (!this.g) {
            throw new ParseException("Cannot fall back outside a macro.", this.b, tokenU4);
        }
        zo3 zo3Var = new zo3();
        zo3Var.E(this.b, tokenU4, tokenU4);
        return zo3Var;
    }

    public int v0() {
        return this.l.o;
    }

    public final boolean v1() {
        return k2();
    }

    public final boolean v2() {
        return D4(25);
    }

    public final boolean v3() {
        Token token = this.q;
        if (D4(142)) {
            this.q = token;
            if (D4(110)) {
                this.q = token;
                if (D4(141)) {
                    this.q = token;
                    if (D4(109)) {
                        this.q = token;
                        if (D4(108)) {
                            this.q = token;
                            if (D4(107)) {
                                return true;
                            }
                        }
                    }
                }
            }
        }
        return u3();
    }

    public final ifa w() throws ParseException {
        Token tokenU4 = u4(52);
        b24 b24Var = new b24();
        b24Var.E(this.b, tokenU4, tokenU4);
        return b24Var;
    }

    public int w0() {
        return this.l.j ? 2 : 1;
    }

    public final boolean w1() {
        if (D4(121) || F2()) {
            return true;
        }
        Token token = this.q;
        if (D4(121)) {
            this.q = token;
            if (D4(123)) {
                return true;
            }
        }
        return F2();
    }

    public final boolean w2() {
        return D4(53);
    }

    public final boolean w3() {
        return K3();
    }

    public final z0 x() throws ParseException {
        Token tokenU4 = u4(13);
        Token tokenU5 = u4(133);
        u4(130);
        t0 t0VarU = u();
        u4(139);
        b bVarM4 = M4();
        bVarM4.a = tokenU5.image;
        bVarM4.b = 1;
        this.f++;
        ifa ifaVarW = W();
        Token tokenU6 = u4(39);
        this.f--;
        L4();
        z0 z0Var = new z0(t0VarU, tokenU5.image, ifaVarW, true);
        z0Var.E(this.b, tokenU4, tokenU6);
        return z0Var;
    }

    public final void x0(t0 t0Var) throws ParseException {
        I4(t0Var, "boolean (true/false)");
        G4(t0Var, "boolean (true/false)");
        F4(t0Var, "boolean (true/false)");
        H4(t0Var, "boolean (true/false)");
    }

    public final boolean x1() {
        Token token;
        if (F2()) {
            return true;
        }
        do {
            token = this.q;
        } while (!l2());
        this.q = token;
        return false;
    }

    public final boolean x2() {
        return D4(54);
    }

    public final boolean x3() {
        return L3();
    }

    public final ifa y() throws ParseException {
        ifa ifaVarY;
        aq6 aq6Var = new aq6();
        ifa ifaVar = null;
        while (true) {
            int iA4 = this.p;
            if (iA4 == -1) {
                iA4 = A4();
            }
            switch (iA4) {
                case 72:
                case 73:
                case 74:
                    ifaVarY = Y();
                    break;
                case 75:
                    ifaVarY = m0();
                    break;
                case 76:
                    ifaVarY = V();
                    break;
                default:
                    this.v[87] = this.u;
                    u4(-1);
                    throw new ParseException();
            }
            if (ifaVar == null) {
                ifaVar = ifaVarY;
            }
            aq6Var.l0(ifaVarY);
            int iA5 = this.p;
            if (iA5 == -1) {
                iA5 = A4();
            }
            switch (iA5) {
                case 72:
                case 73:
                case 74:
                case 75:
                case 76:
                    break;
                default:
                    this.v[88] = this.u;
                    aq6Var.A(this.b, ifaVar, ifaVarY);
                    return aq6Var;
            }
        }
    }

    public final void y0(String str, t0 t0Var, Token token) throws ParseException {
        b bVar;
        List list = this.e;
        int size = list != null ? list.size() : 0;
        do {
            size--;
            if (size < 0) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("The left hand operand of ?");
                stringBuffer.append(token.image);
                stringBuffer.append(" must be a loop variable, ");
                stringBuffer.append("but there's no loop variable in scope with this name: ");
                stringBuffer.append(str);
                throw new ParseException(stringBuffer.toString(), t0Var);
            }
            bVar = (b) this.e.get(size);
        } while (!str.equals(bVar.a));
        if (bVar.b != 3) {
            return;
        }
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append("The left hand operand of ?");
        stringBuffer2.append(token.image);
        stringBuffer2.append(" can't be the loop variable of an user defined directive: ");
        stringBuffer2.append(str);
        throw new ParseException(stringBuffer2.toString(), t0Var);
    }

    public final boolean y1() {
        if (D4(91)) {
            return true;
        }
        Token token = this.q;
        if (!D4(133)) {
            return false;
        }
        this.q = token;
        if (!D4(113)) {
            return false;
        }
        this.q = token;
        if (!D4(114)) {
            return false;
        }
        this.q = token;
        return m2();
    }

    public final boolean y2() {
        return D4(55);
    }

    public final boolean y3() {
        return M3();
    }

    /* JADX WARN: Code duplicated, block: B:31:0x007b  */
    /* JADX WARN: Code duplicated, block: B:32:0x0080  */
    public final ifa z() throws ParseException {
        int iA4 = this.p;
        if (iA4 == -1) {
            iA4 = A4();
        }
        if (iA4 == 6) {
            return e();
        }
        if (iA4 == 8) {
            return E();
        }
        if (iA4 == 65) {
            return R();
        }
        if (iA4 == 67) {
            return s0();
        }
        switch (iA4) {
            case 10:
                return I();
            case 11:
                return H();
            case 12:
                return i0();
            case 13:
                return x();
            case 14:
                return n0();
            default:
                switch (iA4) {
                    case 16:
                    case 17:
                    case 18:
                        return d();
                    case 19:
                        return G();
                    case 20:
                        return F();
                    case 21:
                    case 22:
                        return L();
                    case 23:
                        return o0();
                    case 24:
                        return u0();
                    case 25:
                        return k0();
                    case 26:
                        return g0();
                    case 27:
                        return j();
                    case 28:
                        return j0();
                    case 29:
                        return m();
                    case 30:
                    case 31:
                        return l();
                    case 32:
                        return S();
                    default:
                        switch (iA4) {
                            case 49:
                                return g();
                            case 50:
                                return g0();
                            case 51:
                                return k0();
                            case 52:
                                return w();
                            case 53:
                            case 54:
                            case 55:
                            case 56:
                                return p0();
                            default:
                                switch (iA4) {
                                    case 58:
                                    case 59:
                                        return Q();
                                    case 60:
                                    case 61:
                                        return e0();
                                    case 62:
                                        return v();
                                    case 63:
                                        return s();
                                    default:
                                        this.v[81] = this.u;
                                        u4(-1);
                                        throw new ParseException();
                                }
                        }
                }
        }
    }

    public final boolean z1() {
        return D4(124) || F2() || D4(125);
    }

    public final boolean z2() {
        return D4(56);
    }

    public final boolean z3() {
        return N3();
    }

    public FMParser(Template template, Reader reader, boolean z, boolean z2, int i, int i2, int i3) {
        this(template, reader, z, z2);
        if (i == 0) {
            this.l.k = true;
        } else if (i == 1) {
            this.l.j = false;
        } else if (i == 2) {
            this.l.j = true;
        } else {
            throw new IllegalArgumentException("Illegal argument for tagSyntax");
        }
        switch (i2) {
            case 10:
            case 11:
            case 12:
                u0 u0Var = this.l;
                u0Var.n = i2;
                u0Var.o = i2;
                u0Var.q = i3;
                this.k = i3;
                return;
            default:
                throw new IllegalArgumentException("Illegal argument for namingConvention");
        }
    }

    public FMParser(Reader reader) {
        this.i = new LinkedList();
        int i = 0;
        this.t = false;
        this.v = new int[95];
        this.w = new a[16];
        this.x = false;
        this.y = 0;
        this.z = new LookaheadSuccess();
        this.A = new Vector();
        this.C = -1;
        this.D = new int[100];
        this.m = new xl9(reader, 1, 1);
        this.l = new u0(this.m);
        this.n = new Token();
        this.p = -1;
        this.u = 0;
        for (int i2 = 0; i2 < 95; i2++) {
            this.v[i2] = -1;
        }
        while (true) {
            a[] aVarArr = this.w;
            if (i >= aVarArr.length) {
                return;
            }
            aVarArr[i] = new a();
            i++;
        }
    }

    public FMParser(u0 u0Var) {
        this.i = new LinkedList();
        int i = 0;
        this.t = false;
        this.v = new int[95];
        this.w = new a[16];
        this.x = false;
        this.y = 0;
        this.z = new LookaheadSuccess();
        this.A = new Vector();
        this.C = -1;
        this.D = new int[100];
        this.l = u0Var;
        this.n = new Token();
        this.p = -1;
        this.u = 0;
        for (int i2 = 0; i2 < 95; i2++) {
            this.v[i2] = -1;
        }
        while (true) {
            a[] aVarArr = this.w;
            if (i >= aVarArr.length) {
                return;
            }
            aVarArr[i] = new a();
            i++;
        }
    }
}
