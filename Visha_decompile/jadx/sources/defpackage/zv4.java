package defpackage;

import freemarker.template.utility.DateUtil;
import java.util.TimeZone;

public abstract class zv4 extends efa {
    public DateUtil.b b;
    public DateUtil.a c;

    public zv4(TimeZone timeZone) {
        super(timeZone);
    }

    public DateUtil.a c() {
        DateUtil.a aVar = this.c;
        if (aVar != null) {
            return aVar;
        }
        DateUtil.c cVar = new DateUtil.c();
        this.c = cVar;
        return cVar;
    }

    public DateUtil.b d() {
        DateUtil.b bVar = this.b;
        if (bVar != null) {
            return bVar;
        }
        DateUtil.d dVar = new DateUtil.d();
        this.b = dVar;
        return dVar;
    }

    public boolean e() {
        return false;
    }
}
