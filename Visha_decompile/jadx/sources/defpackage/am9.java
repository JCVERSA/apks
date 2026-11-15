package defpackage;

import java.sql.Time;
import java.sql.Timestamp;
import java.util.Date;

public class am9 implements ffa {
    public final Date b;
    public final int c;

    public am9(java.sql.Date date) {
        this(date, 2);
    }

    @Override
    public Date f() {
        return this.b;
    }

    @Override
    public int j() {
        return this.c;
    }

    public String toString() {
        return this.b.toString();
    }

    public am9(Time time) {
        this(time, 1);
    }

    public am9(Timestamp timestamp) {
        this(timestamp, 3);
    }

    public am9(Date date, int i) {
        if (date != null) {
            this.b = date;
            this.c = i;
            return;
        }
        throw new IllegalArgumentException("date == null");
    }
}
