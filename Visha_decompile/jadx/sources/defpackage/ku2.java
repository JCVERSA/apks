package defpackage;

import android.net.Uri;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivVideo;
import com.yandex.div2.DivVideoSource;
import java.util.ArrayList;
import java.util.List;

public abstract class ku2 {
    public static final List a(DivVideo divVideo, oj3 oj3Var) {
        y45.j(divVideo, "<this>");
        y45.j(oj3Var, "resolver");
        List<DivVideoSource> list = divVideo.Q;
        ArrayList arrayList = new ArrayList(z71.v(list, 10));
        for (DivVideoSource divVideoSource : list) {
            Uri uri = (Uri) divVideoSource.d.b(oj3Var);
            String str = (String) divVideoSource.b.b(oj3Var);
            DivVideoSource.Resolution resolution = divVideoSource.c;
            Long l = null;
            qu2 qu2Var = resolution != null ? new qu2((int) ((Number) resolution.b.b(oj3Var)).longValue(), (int) ((Number) resolution.a.b(oj3Var)).longValue()) : null;
            Expression expression = divVideoSource.a;
            if (expression != null) {
                l = (Long) expression.b(oj3Var);
            }
            arrayList.add(new ru2(uri, str, qu2Var, l));
        }
        return arrayList;
    }
}
