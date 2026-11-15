package defpackage;

import com.google.android.datatransport.cct.internal.ClientInfo;
import com.google.android.datatransport.cct.internal.QosTier;
import java.util.List;

public abstract class xp5 {

    public static abstract class a {
        public abstract xp5 a();

        public abstract a b(ClientInfo clientInfo);

        public abstract a c(List list);

        public abstract a d(Integer num);

        public abstract a e(String str);

        public abstract a f(QosTier qosTier);

        public abstract a g(long j);

        public abstract a h(long j);

        public a i(int i) {
            return d(Integer.valueOf(i));
        }

        public a j(String str) {
            return e(str);
        }
    }

    public static a a() {
        return new j30.b();
    }

    public abstract ClientInfo b();

    public abstract List c();

    public abstract Integer d();

    public abstract String e();

    public abstract QosTier f();

    public abstract long g();

    public abstract long h();
}
