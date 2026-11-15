package defpackage;

import java.util.List;
import org.acra.sender.ReportSenderException;

public interface uu8 {

    public static final class a {
        public final us8 a;
        public final ReportSenderException b;

        public a(us8 us8Var, ReportSenderException reportSenderException) {
            y45.j(us8Var, "sender");
            y45.j(reportSenderException, "exception");
            this.a = us8Var;
            this.b = reportSenderException;
        }

        public final ReportSenderException a() {
            return this.b;
        }

        public final us8 b() {
            return this.a;
        }
    }

    boolean a(List list, List list2);
}
