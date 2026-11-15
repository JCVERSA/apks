package defpackage;

import android.content.Context;
import java.util.concurrent.Callable;
import org.schabi.newpipe.extractor.Info;
import org.schabi.newpipe.extractor.InfoItem;
import org.schabi.newpipe.extractor.a;
import org.schabi.newpipe.extractor.stream.StreamInfo;

public abstract class ff6 {
    public static final vz4 a = vz4.d();

    public static xm9 d(boolean z, final int i, final String str, final InfoItem.InfoType infoType, xm9 xm9Var) {
        e(i);
        xm9 xm9VarE = xm9Var.e(new zf1() {
            @Override
            public final void accept(Object obj) {
                ff6.k(i, str, infoType, (Info) obj);
            }
        });
        if (!z) {
            return b96.b(n(i, str, infoType), xm9VarE.w()).e().l();
        }
        a.g(i, str, infoType);
        return xm9VarE;
    }

    public static void e(int i) {
        if (i == -1) {
            throw new IllegalArgumentException("serviceId is NO_SERVICE_ID");
        }
    }

    public static void f() {
        vz4.d().i();
    }

    public static c23 g() {
        e23 e23VarL = e23.l(null);
        vz4.d().a();
        return e23VarL;
    }

    public static int h() {
        return ce9.a.q();
    }

    public static xm9 i(final int i, final String str) {
        e(i);
        return d(false, i, str, InfoItem.InfoType.STREAM, xm9.j(new Callable() {
            @Override
            public final Object call() {
                return ff6.l(i, str);
            }
        }));
    }

    public static void j(Context context) {
        a.h(g(), fo5.b(context), fo5.a(context));
    }

    public static void k(int i, String str, InfoItem.InfoType infoType, Info info) {
        a.f(i, str, info, infoType);
    }

    public static StreamInfo l(int i, String str) {
        return StreamInfo.getInfo(a.f(i), str);
    }

    public static l96 m(int i, String str, InfoItem.InfoType infoType) {
        Info infoB = a.b(i, str, infoType);
        return infoB != null ? b96.g(infoB) : b96.e();
    }

    public static b96 n(final int i, final String str, final InfoItem.InfoType infoType) {
        e(i);
        return b96.d(new Callable() {
            @Override
            public final Object call() {
                return ff6.m(i, str, infoType);
            }
        });
    }
}
