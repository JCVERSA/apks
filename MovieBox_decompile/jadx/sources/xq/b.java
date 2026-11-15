package xq;

import android.content.Context;
import android.view.View;
import com.therouter.TheRouter;
import com.transsion.shorttv.bean.Subject;
import com.transsion.web.api.WebConstants;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import qi.h;

public abstract class b {
    public static final void a(View view) {
        Intrinsics.h(view, "<this>");
        view.setPadding(view.getPaddingStart(), cr.a.a(36), view.getPaddingEnd(), view.getPaddingBottom());
    }

    public static final int b(Context context) {
        Intrinsics.h(context, "context");
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier <= 0) {
            identifier = cr.a.a(24);
        }
        return context.getResources().getDimensionPixelSize(identifier);
    }

    public static final void c(Subject subject) {
        if (subject == null) {
            return;
        }
        hr.c.k(TheRouter.c(pr.a.f69252a.b()).K("id", subject.getSubjectId()).F("ep", 1).K("ops", subject.getOps()));
    }

    public static final void d(String pageName, String moduleName, String str, String str2, String str3, String str4) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(moduleName, "moduleName");
        HashMap map = new HashMap();
        map.put("module_name", moduleName);
        if (str != null) {
            map.put("group_id", str);
        }
        if (str2 != null) {
            map.put("subject_id", str2);
        }
        if (str3 != null) {
            map.put("post_id", str3);
        }
        if (str4 != null) {
            map.put("ops", str4);
        }
        h.f69682a.o(pageName, map);
    }

    public static void e(String str, String str2, String str3, String str4, String str5, String str6, int i10, Object obj) {
        String str7 = (i10 & 4) != 0 ? "" : str3;
        String str8 = (i10 & 8) != 0 ? "" : str4;
        String str9 = (i10 & 16) != 0 ? "" : str5;
        if ((i10 & 32) != 0) {
            str6 = null;
        }
        d(str, str2, str7, str8, str9, str6);
    }

    public static final void f(String pageName, String pageFrom, String duration) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(pageFrom, "pageFrom");
        Intrinsics.h(duration, "duration");
        HashMap map = new HashMap();
        map.put(WebConstants.PAGE_FROM, pageFrom);
        map.put("duration", duration);
        h.f69682a.q(pageName, "pt", map);
    }
}
