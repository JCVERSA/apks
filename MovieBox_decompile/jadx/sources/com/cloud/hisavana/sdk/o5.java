package com.cloud.hisavana.sdk;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

public final class o5 {

    public static final o5 f22109a = new o5();

    private static Integer f22110b;

    private static Integer f22111c;

    private o5() {
    }

    public static final void b(Integer num, Integer num2) {
        if (num != null) {
            f22110b = num;
            l7.a.e().p("show_data_sync_time_interval", num.intValue());
        }
        if (num2 != null) {
            f22111c = num2;
            l7.a.e().p("click_data_sync_time_interval", num2.intValue());
        }
        b4.b().i("AttrDataManager", "showDataSyncTimeInterval = " + num + "，clickDataSyncTimeInterval = " + num2);
        x.f22413a.h();
    }

    public final int a() {
        if (f22111c == null) {
            f22111c = Integer.valueOf(l7.a.e().g("click_data_sync_time_interval", -1));
        }
        Integer num = f22111c;
        if (num != null) {
            return num.intValue();
        }
        return -1;
    }

    public final void c(Function1 function1, Function0 function0, Function0 function2) {
        int iA = a();
        b4.b().i("AttrDataManager", "clickDataSyncAction timeInterval = " + iA);
        if (iA > 0) {
            if (function1 != null) {
                function1.invoke(Integer.valueOf(iA));
            }
        } else if (iA == 0) {
            if (function0 != null) {
                function0.invoke();
            }
        } else if (function2 != null) {
            function2.invoke();
        }
    }

    public final int d() {
        if (f22110b == null) {
            f22110b = Integer.valueOf(l7.a.e().g("show_data_sync_time_interval", -1));
        }
        Integer num = f22110b;
        if (num != null) {
            return num.intValue();
        }
        return -1;
    }
}
