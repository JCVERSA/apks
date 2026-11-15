package defpackage;

import android.util.Log;
import com.lzy.okgo.model.Progress;
import com.yandex.div.logging.Severity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class ne5 {
    public static final ne5 a = new ne5();
    public static final List b = new ArrayList();

    public final boolean a(Severity severity) {
        y45.j(severity, "minLevel");
        return pp5.d(severity);
    }

    public final void b(int i, String str, String str2) {
        y45.j(str, Progress.TAG);
        y45.j(str2, "message");
        Log.println(i, str, str2);
        List list = b;
        synchronized (list) {
            Iterator it = list.iterator();
            if (it.hasNext()) {
                ubc.a(it.next());
                throw null;
            }
            zfb zfbVar = zfb.a;
        }
    }
}
