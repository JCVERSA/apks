package defpackage;

import java.util.TimeZone;

public class qrc extends zv4 {
    public qrc(TimeZone timeZone) {
        super(timeZone);
    }

    @Override
    public dfa a(int i, boolean z, String str) {
        return new prc(str, 2, i, z, b(), this);
    }
}
