package t7;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public abstract class e implements t7.d, t7.c {

    private static final Pattern f72550c = Pattern.compile("\\{([^{}]*)\\}");

    private String f72551a;

    private List f72552b;

    static class a extends d {

        String f72553c;

        private ThreadLocal f72554d;

        class C0887a extends ThreadLocal {
            C0887a() {
            }

            @Override
            public SimpleDateFormat initialValue() {
                return new SimpleDateFormat(a.this.f72553c, Locale.US);
            }
        }

        a(String str, String str2, String str3) {
            super(str, str2);
            C0887a c0887a = new C0887a();
            this.f72554d = c0887a;
            this.f72553c = str3;
            try {
                ((SimpleDateFormat) c0887a.get()).format(new Date());
            } catch (Exception e10) {
                throw new IllegalArgumentException("Bad date pattern: " + str3, e10);
            }
        }

        @Override
        protected String a(String str, long j10, int i10, String str2, String str3) {
            return str.replace(this.f72557a, ((SimpleDateFormat) this.f72554d.get()).format(new Date(j10)));
        }
    }

    static class b extends d {

        boolean f72556c;

        b(String str, String str2, boolean z10) {
            super(str, str2);
            this.f72556c = z10;
        }

        @Override
        protected String a(String str, long j10, int i10, String str2, String str3) {
            return this.f72556c ? str.replace(this.f72557a, s7.c.a(i10)) : str.replace(this.f72557a, s7.c.b(i10));
        }
    }

    static class c extends d {
        c(String str, String str2) {
            super(str, str2);
        }

        @Override
        protected String a(String str, long j10, int i10, String str2, String str3) {
            return str.replace(this.f72557a, str3);
        }
    }

    static abstract class d {

        String f72557a;

        String f72558b;

        d(String str, String str2) {
            this.f72557a = str;
            this.f72558b = str2;
        }

        protected abstract String a(String str, long j10, int i10, String str2, String str3);
    }

    static class C0888e extends d {
        C0888e(String str, String str2) {
            super(str, str2);
        }

        @Override
        protected String a(String str, long j10, int i10, String str2, String str3) {
            return str.replace(this.f72557a, str2);
        }
    }

    public e(String str) {
        if (str == null) {
            throw new NullPointerException("Pattern should not be null");
        }
        this.f72551a = str;
        List listG = g(h(str));
        this.f72552b = listG;
        if (listG.size() != 0) {
            return;
        }
        throw new IllegalArgumentException("No recognizable parameter found in the pattern " + str);
    }

    static a c(String str, String str2) {
        if (str2.startsWith("d ") && str2.length() > 2) {
            return new a(str, str2, str2.substring(2));
        }
        if (str2.equals(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D)) {
            return new a(str, str2, "yyyy-MM-dd HH:mm:ss.SSS");
        }
        return null;
    }

    static b d(String str, String str2) {
        if (str2.equals("l")) {
            return new b(str, str2, false);
        }
        if (str2.equals("L")) {
            return new b(str, str2, true);
        }
        return null;
    }

    static c e(String str, String str2) {
        if (str2.equals("m")) {
            return new c(str, str2);
        }
        return null;
    }

    private static d f(String str) {
        String str2 = "{" + str + "}";
        String strTrim = str.trim();
        a aVarC = c(str2, strTrim);
        if (aVarC != null) {
            return aVarC;
        }
        b bVarD = d(str2, strTrim);
        if (bVarD != null) {
            return bVarD;
        }
        C0888e c0888eI = i(str2, strTrim);
        if (c0888eI != null) {
            return c0888eI;
        }
        c cVarE = e(str2, strTrim);
        if (cVarE != null) {
            return cVarE;
        }
        return null;
    }

    private static List g(List list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            d dVarF = f((String) it.next());
            if (dVarF != null) {
                arrayList.add(dVarF);
            }
        }
        return arrayList;
    }

    static List h(String str) {
        ArrayList arrayList = new ArrayList(4);
        Matcher matcher = f72550c.matcher(str);
        while (matcher.find()) {
            arrayList.add(matcher.group(1));
        }
        return arrayList;
    }

    static C0888e i(String str, String str2) {
        if (str2.equals("t")) {
            return new C0888e(str, str2);
        }
        return null;
    }

    @Override
    public CharSequence a(long j10, int i10, String str, String str2) {
        String str3 = this.f72551a;
        Iterator it = this.f72552b.iterator();
        String strA = str3;
        while (it.hasNext()) {
            strA = ((d) it.next()).a(strA, j10, i10, str, str2);
        }
        return strA;
    }

    @Override
    public CharSequence b(int i10, String str, String str2) {
        return a(System.currentTimeMillis(), i10, str, str2);
    }
}
