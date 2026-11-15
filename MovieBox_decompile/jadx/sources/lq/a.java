package lq;

import android.content.Context;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    public static final a f66097a = new a();

    private static String f66098b = "";

    private static Function0 f66099c;

    private static Function4 f66100d;

    private static Function1 f66101e;

    private a() {
    }

    public final void a() {
        f66098b = "";
        f66099c = null;
        f66100d = null;
        f66101e = null;
    }

    public final String b() {
        return f66098b;
    }

    public final String c() {
        String str;
        Function0 function0 = f66099c;
        return (function0 == null || (str = (String) function0.invoke()) == null) ? "" : str;
    }

    public void d(String appName, Function0 userId, Function4 reportShow, Function1 toastShow) {
        Intrinsics.h(appName, "appName");
        Intrinsics.h(userId, "userId");
        Intrinsics.h(reportShow, "reportShow");
        Intrinsics.h(toastShow, "toastShow");
        f66098b = appName;
        f66099c = userId;
        f66100d = reportShow;
        f66101e = toastShow;
    }

    public final void e(Context context, String str, String id2, com.transsion.share.share.a aVar) {
        Intrinsics.h(context, "context");
        Intrinsics.h(id2, "id");
        Function4 function4 = f66100d;
        if (function4 != null) {
            function4.invoke(context, str, id2, aVar);
        }
    }

    public final void f(String content) {
        Intrinsics.h(content, "content");
        Function1 function1 = f66101e;
        if (function1 != null) {
            function1.invoke(content);
        }
    }
}
