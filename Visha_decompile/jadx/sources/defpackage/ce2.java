package defpackage;

import android.net.Uri;
import androidx.webkit.ProxyConfig;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div.logging.Severity;
import com.yandex.div2.DivAction;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;

public class ce2 {
    public static final a e = new a(null);
    public final xi5 a;
    public final boolean b;
    public final boolean c;
    public final boolean d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public ce2(xi5 xi5Var, boolean z, boolean z2, boolean z3) {
        y45.j(xi5Var, "sendBeaconManagerLazy");
        this.a = xi5Var;
        this.b = z;
        this.c = z2;
        this.d = z3;
    }

    public final boolean a(String str) {
        return y45.e(str, ProxyConfig.MATCH_HTTP) || y45.e(str, ProxyConfig.MATCH_HTTPS);
    }

    public void b(DivAction divAction, oj3 oj3Var) {
        Uri uri;
        y45.j(divAction, "action");
        y45.j(oj3Var, "resolver");
        Expression expression = divAction.d;
        if (expression == null || (uri = (Uri) expression.b(oj3Var)) == null) {
            return;
        }
        if (a(uri.getScheme())) {
            if (this.d) {
                ae5 ae5Var = ae5.a;
                if (xi.o()) {
                    xi.i("SendBeaconManager was not configured");
                    return;
                }
                return;
            }
            return;
        }
        ne5 ne5Var = ne5.a;
        if (ne5Var.a(Severity.WARNING)) {
            ne5Var.b(5, "DivActionBeaconSender", "Trying to send beacon with unsupported URL '" + uri + '\'');
        }
    }

    public void c(DivAction divAction, oj3 oj3Var) {
        Uri uri;
        y45.j(divAction, "action");
        y45.j(oj3Var, "resolver");
        Expression expression = divAction.d;
        if (expression == null || (uri = (Uri) expression.b(oj3Var)) == null) {
            return;
        }
        if (a(uri.getScheme())) {
            if (this.b) {
                ae5 ae5Var = ae5.a;
                if (xi.o()) {
                    xi.i("SendBeaconManager was not configured");
                    return;
                }
                return;
            }
            return;
        }
        ne5 ne5Var = ne5.a;
        if (ne5Var.a(Severity.WARNING)) {
            ne5Var.b(5, "DivActionBeaconSender", "Trying to send beacon with unsupported URL '" + uri + '\'');
        }
    }

    public void d(wp2 wp2Var, oj3 oj3Var) {
        Uri uri;
        y45.j(wp2Var, "action");
        y45.j(oj3Var, "resolver");
        Expression url = wp2Var.getUrl();
        if (url == null || (uri = (Uri) url.b(oj3Var)) == null) {
            return;
        }
        if (a(uri.getScheme())) {
            if (this.c) {
                ae5 ae5Var = ae5.a;
                if (xi.o()) {
                    xi.i("SendBeaconManager was not configured");
                    return;
                }
                return;
            }
            return;
        }
        ne5 ne5Var = ne5.a;
        if (ne5Var.a(Severity.WARNING)) {
            ne5Var.b(5, "DivActionBeaconSender", "Trying to send beacon with unsupported URL '" + uri + '\'');
        }
    }

    public final Map e(wp2 wp2Var, oj3 oj3Var) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Expression expressionF = wp2Var.f();
        if (expressionF != null) {
            String string = ((Uri) expressionF.b(oj3Var)).toString();
            y45.i(string, "referer.evaluate(resolver).toString()");
            linkedHashMap.put("Referer", string);
        }
        return linkedHashMap;
    }

    public final Map f(DivAction divAction, oj3 oj3Var) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Expression expression = divAction.g;
        if (expression != null) {
            String string = ((Uri) expression.b(oj3Var)).toString();
            y45.i(string, "referer.evaluate(resolver).toString()");
            linkedHashMap.put("Referer", string);
        }
        return linkedHashMap;
    }
}
