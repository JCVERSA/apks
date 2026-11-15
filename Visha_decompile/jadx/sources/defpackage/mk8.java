package defpackage;

import com.transsion.push.utils.PushLogUtils;
import java.util.ArrayList;
import java.util.List;

public class mk8 {

    public static final class a {
        public static final mk8 a = new mk8();
    }

    public static mk8 b() {
        return a.a;
    }

    public void a(List list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        try {
            throw null;
        } catch (Exception e) {
            PushLogUtils.LOG.g("delete msg fail, e:" + e.getMessage());
        }
    }

    public void c(String str) {
        try {
            throw null;
        } catch (Exception e) {
            PushLogUtils.LOG.i("insert report record fail, e:" + e.getMessage());
        }
    }

    public List d() {
        new ArrayList();
        throw null;
    }
}
