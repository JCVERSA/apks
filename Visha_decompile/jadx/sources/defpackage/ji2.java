package defpackage;

import android.net.Uri;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivAction;
import com.yandex.div2.DivActionDownload;
import com.yandex.div2.DivDownloadCallbacks;
import java.util.List;

public final class ji2 {
    public static final ji2 a = new ji2();

    public static final class a implements ao2 {
        public final Div2View a;
        public final List b;
        public final oj3 c;
        public final List d;

        public a(Div2View div2View, List list, oj3 oj3Var, List list2) {
            this.a = div2View;
            this.b = list;
            this.c = oj3Var;
            this.d = list2;
        }
    }

    public static final boolean a(Uri uri, sv2 sv2Var) {
        String authority;
        y45.j(sv2Var, "divViewFacade");
        if (uri == null || (authority = uri.getAuthority()) == null || !y45.e("download", authority)) {
            return false;
        }
        if (uri.getQueryParameter("url") == null) {
            xi.i("url param is required!");
            return false;
        }
        if (sv2Var instanceof Div2View) {
            return true;
        }
        xi.i("Div2View should be used!");
        return false;
    }

    public static final boolean d(DivAction divAction, Div2View div2View, oj3 oj3Var) {
        Uri uri;
        y45.j(divAction, "action");
        y45.j(div2View, "view");
        y45.j(oj3Var, "resolver");
        Expression expression = divAction.k;
        if (expression == null || (uri = (Uri) expression.b(oj3Var)) == null) {
            return false;
        }
        return a.c(uri, divAction.a, div2View, oj3Var);
    }

    public static final boolean f(wp2 wp2Var, Div2View div2View, oj3 oj3Var) {
        Uri uri;
        y45.j(wp2Var, "action");
        y45.j(div2View, "view");
        y45.j(oj3Var, "resolver");
        Expression url = wp2Var.getUrl();
        if (url == null || (uri = (Uri) url.b(oj3Var)) == null) {
            return false;
        }
        return a.c(uri, wp2Var.a(), div2View, oj3Var);
    }

    public final boolean b(String str, List list, List list2, Div2View div2View, oj3 oj3Var) {
        jn5 jn5VarC = div2View.getDiv2Component().h().c(div2View, str, new a(div2View, list, oj3Var, list2));
        y45.i(jn5VarC, "loadRef");
        div2View.addLoadReference(jn5VarC, div2View);
        return true;
    }

    public final boolean c(Uri uri, DivDownloadCallbacks divDownloadCallbacks, Div2View div2View, oj3 oj3Var) {
        String queryParameter = uri.getQueryParameter("url");
        if (queryParameter == null) {
            return false;
        }
        return b(queryParameter, divDownloadCallbacks != null ? divDownloadCallbacks.b : null, divDownloadCallbacks != null ? divDownloadCallbacks.a : null, div2View, oj3Var);
    }

    public final boolean e(DivActionDownload divActionDownload, DivDownloadCallbacks divDownloadCallbacks, Div2View div2View, oj3 oj3Var) {
        List list;
        List list2;
        y45.j(divActionDownload, "action");
        y45.j(div2View, "view");
        y45.j(oj3Var, "resolver");
        Uri uri = (Uri) divActionDownload.c.b(oj3Var);
        List list3 = divActionDownload.a;
        if (list3 != null) {
            list = list3;
        } else if (divDownloadCallbacks != null) {
            list3 = divDownloadCallbacks.a;
            list = list3;
        } else {
            list = null;
        }
        List list4 = divActionDownload.b;
        if (list4 == null) {
            list2 = divDownloadCallbacks != null ? divDownloadCallbacks.b : null;
        } else {
            list2 = list4;
        }
        String string = uri.toString();
        y45.i(string, "url.toString()");
        return b(string, list2, list, div2View, oj3Var);
    }
}
