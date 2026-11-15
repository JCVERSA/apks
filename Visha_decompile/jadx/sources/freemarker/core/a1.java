package freemarker.core;

import defpackage.dfa;
import defpackage.efa;
import defpackage.l85;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.TimeZone;

public class a1 extends efa {
    public static final Map d = new HashMap();
    public final Locale b;
    public Map[] c;

    public static final class a {
        public final int a;
        public final String b;
        public final Locale c;
        public final TimeZone d;

        public a(int i, String str, Locale locale, TimeZone timeZone) {
            this.a = i;
            this.b = str;
            this.c = locale;
            this.d = timeZone;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.a == aVar.a && aVar.b.equals(this.b) && aVar.c.equals(this.c) && aVar.d.equals(this.d);
        }

        public int hashCode() {
            return this.d.hashCode() ^ ((this.a ^ this.b.hashCode()) ^ this.c.hashCode());
        }
    }

    public a1(TimeZone timeZone, Locale locale) {
        super(timeZone);
        this.b = locale;
    }

    @Override
    public dfa a(int i, boolean z, String str) {
        Map[] mapArr = this.c;
        if (mapArr == null) {
            mapArr = new Map[4];
            this.c = mapArr;
        }
        Map map = mapArr[i];
        if (map == null) {
            map = new HashMap();
            mapArr[i] = map;
        }
        dfa dfaVar = (dfa) map.get(str);
        if (dfaVar != null) {
            return dfaVar;
        }
        l85 l85Var = new l85(c(i, str));
        map.put(str, l85Var);
        return l85Var;
    }

    public final DateFormat c(int i, String str) {
        DateFormat simpleDateFormat;
        a aVar = new a(i, str, this.b, b());
        Map map = d;
        synchronized (map) {
            try {
                simpleDateFormat = (DateFormat) map.get(aVar);
                if (simpleDateFormat == null) {
                    StringTokenizer stringTokenizer = new StringTokenizer(str, "_");
                    int iE = stringTokenizer.hasMoreTokens() ? e(stringTokenizer.nextToken()) : 2;
                    if (iE != -1) {
                        if (i == 0) {
                            throw new UnknownDateTypeFormattingUnsupportedException();
                        }
                        if (i == 1) {
                            simpleDateFormat = DateFormat.getTimeInstance(iE, aVar.c);
                        } else if (i == 2) {
                            simpleDateFormat = DateFormat.getDateInstance(iE, aVar.c);
                        } else if (i == 3) {
                            int iE2 = stringTokenizer.hasMoreTokens() ? e(stringTokenizer.nextToken()) : iE;
                            if (iE2 != -1) {
                                simpleDateFormat = DateFormat.getDateTimeInstance(iE, iE2, aVar.c);
                            }
                        }
                    }
                    if (simpleDateFormat == null) {
                        try {
                            simpleDateFormat = new SimpleDateFormat(str, aVar.c);
                        } catch (IllegalArgumentException e) {
                            String message = e.getMessage();
                            if (message == null) {
                                message = "Illegal SimpleDateFormat pattern";
                            }
                            throw new java.text.ParseException(message, 0);
                        }
                    }
                    simpleDateFormat.setTimeZone(aVar.d);
                    map.put(aVar, simpleDateFormat);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return (DateFormat) simpleDateFormat.clone();
    }

    public boolean d() {
        return true;
    }

    public final int e(String str) {
        if ("short".equals(str)) {
            return 3;
        }
        if ("medium".equals(str)) {
            return 2;
        }
        if ("long".equals(str)) {
            return 1;
        }
        return "full".equals(str) ? 0 : -1;
    }
}
