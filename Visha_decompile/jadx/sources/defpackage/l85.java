package defpackage;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class l85 extends dfa {
    public final DateFormat a;

    public l85(DateFormat dateFormat) {
        this.a = dateFormat;
    }

    @Override
    public String a(ffa ffaVar) {
        return this.a.format(ffaVar.f());
    }

    @Override
    public String b() {
        DateFormat dateFormat = this.a;
        return dateFormat instanceof SimpleDateFormat ? ((SimpleDateFormat) dateFormat).toPattern() : dateFormat.toString();
    }

    @Override
    public boolean c() {
        return true;
    }

    @Override
    public Date d(String str) {
        return this.a.parse(str);
    }
}
