package com.transsion.push.db;

import com.transsion.push.utils.PushLogUtils;
import java.util.ArrayList;
import java.util.List;

public class h {

    private static final class a {

        private static final h f48734a = new h();
    }

    public static h b() {
        return a.f48734a;
    }

    public void a(List list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        try {
            throw null;
        } catch (Exception e10) {
            PushLogUtils.LOG.g("delete msg fail, e:" + e10.getMessage());
        }
    }

    public void c(String str) {
        try {
            throw null;
        } catch (Exception e10) {
            PushLogUtils.LOG.i("insert report record fail, e:" + e10.getMessage());
        }
    }

    public List d() {
        new ArrayList();
        throw null;
    }
}
