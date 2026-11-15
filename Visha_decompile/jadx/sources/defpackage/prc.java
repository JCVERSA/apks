package defpackage;

import freemarker.core.w0;
import freemarker.template.utility.DateUtil;
import java.util.Date;
import java.util.TimeZone;

public final class prc extends w0 {
    public prc(String str, int i, int i2, boolean z, TimeZone timeZone, zv4 zv4Var) {
        super(str, i, i2, z, timeZone, zv4Var);
    }

    @Override
    public String f(Date date, boolean z, boolean z2, boolean z3, int i, TimeZone timeZone, DateUtil.b bVar) {
        return DateUtil.d(date, z, z2, z3, i, timeZone, bVar);
    }

    @Override
    public String g() {
        return "W3C XML Schema date";
    }

    @Override
    public String h() {
        return "W3C XML Schema dateTime";
    }

    @Override
    public String i() {
        return "W3C XML Schema time";
    }

    @Override
    public boolean j() {
        return true;
    }

    @Override
    public Date k(String str, TimeZone timeZone, DateUtil.a aVar) {
        return DateUtil.p(str, timeZone, aVar);
    }

    @Override
    public Date l(String str, TimeZone timeZone, DateUtil.a aVar) {
        return DateUtil.q(str, timeZone, aVar);
    }

    @Override
    public Date m(String str, TimeZone timeZone, DateUtil.a aVar) {
        return DateUtil.r(str, timeZone, aVar);
    }
}
