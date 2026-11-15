package defpackage;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.SimpleTimeZone;

public class mna extends j1 implements v0 {
    public p1 b;

    public mna(p1 p1Var) {
        if (!(p1Var instanceof a2) && !(p1Var instanceof c1)) {
            throw new IllegalArgumentException("unknown object passed to Time");
        }
        this.b = p1Var;
    }

    public static mna n(Object obj) {
        if (obj == null || (obj instanceof mna)) {
            return (mna) obj;
        }
        if (obj instanceof a2) {
            return new mna((a2) obj);
        }
        if (obj instanceof c1) {
            return new mna((c1) obj);
        }
        throw new IllegalArgumentException("unknown object in factory: " + obj.getClass().getName());
    }

    @Override
    public p1 j() {
        return this.b;
    }

    public Date m() {
        try {
            p1 p1Var = this.b;
            return p1Var instanceof a2 ? ((a2) p1Var).x() : ((c1) p1Var).A();
        } catch (ParseException e) {
            throw new IllegalStateException("invalid date string: " + e.getMessage());
        }
    }

    public String o() {
        p1 p1Var = this.b;
        return p1Var instanceof a2 ? ((a2) p1Var).y() : ((c1) p1Var).C();
    }

    public String toString() {
        return o();
    }

    public mna(Date date, Locale locale) {
        SimpleTimeZone simpleTimeZone = new SimpleTimeZone(0, "Z");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss", locale);
        simpleDateFormat.setTimeZone(simpleTimeZone);
        String str = simpleDateFormat.format(date) + "Z";
        int i = Integer.parseInt(str.substring(0, 4));
        this.b = (i < 1950 || i > 2049) ? new rp1(str) : new eq1(str.substring(2));
    }
}
