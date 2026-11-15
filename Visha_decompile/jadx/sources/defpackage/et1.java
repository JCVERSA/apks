package defpackage;

import freemarker.ext.beans.b;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.Date;

public class et1 extends rd0 implements ffa {
    public static final fq6 i = new dt1();
    public final int h;

    public et1(Date date, b bVar) {
        super(date, bVar);
        if (date instanceof java.sql.Date) {
            this.h = 2;
            return;
        }
        if (date instanceof Time) {
            this.h = 1;
        } else if (date instanceof Timestamp) {
            this.h = 3;
        } else {
            this.h = bVar.r();
        }
    }

    @Override
    public Date f() {
        return (Date) this.b;
    }

    @Override
    public int j() {
        return this.h;
    }
}
