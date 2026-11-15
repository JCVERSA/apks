package androidx.work.impl.utils;

import android.app.Application;
import kotlin.jvm.internal.Intrinsics;

final class a {

    public static final a f15339a = new a();

    private a() {
    }

    public final String a() {
        String processName = Application.getProcessName();
        Intrinsics.g(processName, "getProcessName()");
        return processName;
    }
}
