package defpackage;

import com.cloud.hisavana.sdk.y;

public final class lxd {
    public static final lxd a = new lxd();
    public static Integer b;
    public static Integer c;

    public static final void c(Integer num, Integer num2) {
        if (num != null) {
            b = num;
            o9.e().p("show_data_sync_time_interval", num.intValue());
        }
        if (num2 != null) {
            c = num2;
            o9.e().p("click_data_sync_time_interval", num2.intValue());
        }
        ikd.b().i("AttrDataManager", "showDataSyncTimeInterval = " + num + "，clickDataSyncTimeInterval = " + num2);
        y.a.h();
    }

    public final int a() {
        if (c == null) {
            c = Integer.valueOf(o9.e().g("click_data_sync_time_interval", -1));
        }
        Integer num = c;
        if (num != null) {
            return num.intValue();
        }
        return -1;
    }

    public final void b(e74 e74Var, c74 c74Var, c74 c74Var2) {
        int iA = a();
        ikd.b().i("AttrDataManager", "clickDataSyncAction timeInterval = " + iA);
        if (iA > 0) {
            if (e74Var != null) {
                e74Var.invoke(Integer.valueOf(iA));
            }
        } else if (iA == 0) {
            if (c74Var != null) {
                c74Var.invoke();
            }
        } else if (c74Var2 != null) {
            c74Var2.invoke();
        }
    }

    public final int d() {
        if (b == null) {
            b = Integer.valueOf(o9.e().g("show_data_sync_time_interval", -1));
        }
        Integer num = b;
        if (num != null) {
            return num.intValue();
        }
        return -1;
    }
}
