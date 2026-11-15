package defpackage;

import freemarker.core.w0;
import freemarker.template.utility.DateUtil;
import java.util.Date;
import java.util.TimeZone;

public final class aw4 extends w0 {
    public aw4(String str, int i, int i2, boolean z, TimeZone timeZone, zv4 zv4Var) {
        super(str, i, i2, z, timeZone, zv4Var);
    }

    @Override
    public String f(Date date, boolean z, boolean z2, boolean z3, int i, TimeZone timeZone, DateUtil.b bVar) {
        return DateUtil.b(date, z, z2, z2 && z3, i, timeZone, bVar);
    }

    @Override
    public String g() {
        return "ISO 8601 (subset) date";
    }

    @Override
    public String h() {
        return "ISO 8601 (subset) date-time";
    }

    @Override
    public String i() {
        return "ISO 8601 (subset) time";
    }

    @Override
    public boolean j() {
        return false;
    }

    @Override
    public Date k(String str, TimeZone timeZone, DateUtil.a aVar) {
        return DateUtil.k(str, timeZone, aVar);
    }

    @Override
    public Date l(String str, TimeZone timeZone, DateUtil.a aVar) {
        return DateUtil.l(str, timeZone, aVar);
    }

    @Override
    public Date m(String str, TimeZone timeZone, DateUtil.a aVar) {
        return DateUtil.m(str, timeZone, aVar);
    }
}
