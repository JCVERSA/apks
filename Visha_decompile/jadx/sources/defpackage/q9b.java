package defpackage;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import org.apache.commons.text.StringSubstitutor;

public class q9b {
    public final Date a;
    public final String b;
    public final String c;
    public final String d;
    public final Date e;
    public final String f;

    public q9b(String str, String str2, String str3, String str4, Date date, Date date2) {
        this.a = date;
        this.b = str2;
        this.d = str;
        this.e = date2;
        this.f = str4;
        this.c = str3;
    }

    public String a() {
        return this.f;
    }

    public String toString() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HH:mm:ss dd.MM.yyyy", Locale.US);
        return "{key: " + this.b + ", value: " + this.f + ", module: " + this.d + ", created: " + simpleDateFormat.format(this.a) + ", updated: " + simpleDateFormat.format(this.e) + ", migratedKey: " + this.c + StringSubstitutor.DEFAULT_VAR_END;
    }
}
