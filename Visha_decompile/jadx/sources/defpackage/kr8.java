package defpackage;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.alibaba.android.arouter.utils.Consts;
import freemarker.core._TemplateModelException;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import okhttp3.internal.ws.WebSocketProtocol;

public abstract class kr8 {
    public static final pq5 a;
    public static volatile boolean b;
    public static final Object c;
    public static int d;
    public static final fs6 e;
    public static final long f;
    public static final long g;
    public static final long h;
    public static final long i;

    public static class a {
        public final String a;
        public final int b;
        public final int c;

        public a(String str, int i) {
            this.a = str;
            this.b = i;
            this.c = str.hashCode() + (i * 31);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aVar.b == this.b && aVar.a.equals(this.a);
        }

        public int hashCode() {
            return this.c;
        }
    }

    static {
        pq5 pq5VarK = pq5.k("freemarker.runtime");
        a = pq5VarK;
        b = pq5VarK.t();
        c = new Object();
        e = new fs6(50, 150);
        f = d(2);
        g = d(8);
        h = d(4);
        i = d(32);
    }

    public static void a(String str, long j) throws _TemplateModelException {
        b(str, j, false);
    }

    public static void b(String str, long j, boolean z) throws _TemplateModelException {
        String str2;
        if (z || b) {
            if ((g & j) != 0) {
                str2 = CmcdData.OBJECT_TYPE_MANIFEST;
            } else if ((i & j) != 0) {
                str2 = "s";
            } else if ((j & h) == 0) {
                return;
            } else {
                str2 = "c";
            }
            Object[] objArr = {"?", str, " doesn't support the \"", str2, "\" flag without the \"r\" flag."};
            if (z) {
                throw new _TemplateModelException(objArr);
            }
            e(new q0d(objArr).toString());
        }
    }

    public static Pattern c(String str, int i2) throws _TemplateModelException {
        Pattern pattern;
        a aVar = new a(str, i2);
        fs6 fs6Var = e;
        synchronized (fs6Var) {
            pattern = (Pattern) fs6Var.get(aVar);
        }
        if (pattern != null) {
            return pattern;
        }
        try {
            Pattern patternCompile = Pattern.compile(str, i2);
            synchronized (fs6Var) {
                fs6Var.put(aVar, patternCompile);
            }
            return patternCompile;
        } catch (PatternSyntaxException e2) {
            throw new _TemplateModelException(e2, new Object[]{"Malformed regular expression: ", new i0d(e2)});
        }
    }

    public static long d(int i2) {
        return ((long) i2) & WebSocketProtocol.PAYLOAD_SHORT_MAX;
    }

    public static void e(String str) {
        if (b) {
            synchronized (c) {
                int i2 = d;
                if (i2 >= 25) {
                    b = false;
                    return;
                }
                d = i2 + 1;
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(str);
                stringBuffer.append(" This will be an error in some later FreeMarker version!");
                String string = stringBuffer.toString();
                if (i2 + 1 == 25) {
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append(string);
                    stringBuffer2.append(" [Will not log more regular expression flag problems until restart!]");
                    string = stringBuffer2.toString();
                }
                a.z(string);
            }
        }
    }

    public static long f(String str) {
        long j;
        long j2 = 0;
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt == 'c') {
                j = h;
            } else if (cCharAt == 'f') {
                j = 8589934592L;
            } else if (cCharAt == 'i') {
                j = f;
            } else if (cCharAt == 'm') {
                j = g;
            } else if (cCharAt != 'r') {
                if (cCharAt == 's') {
                    j = i;
                } else if (b) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("Unrecognized regular expression flag: ");
                    stringBuffer.append(n0a.D(String.valueOf(cCharAt)));
                    stringBuffer.append(Consts.DOT);
                    e(stringBuffer.toString());
                }
            } else {
                j = 4294967296L;
            }
            j2 |= j;
        }
        return j2;
    }
}
