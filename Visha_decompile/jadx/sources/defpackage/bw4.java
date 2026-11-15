package defpackage;

import java.util.TimeZone;

public class bw4 extends zv4 {
    public bw4(TimeZone timeZone) {
        super(timeZone);
    }

    @Override
    public dfa a(int i, boolean z, String str) {
        return new aw4(str, 3, i, z, b(), this);
    }
}
