package rr;

import android.os.Bundle;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.shorttv.bean.Subject;
import com.transsion.shorttv.ui.dialog.ShortTvDownloadResDialog;
import kotlin.jvm.internal.Intrinsics;
import qi.h;

public final class a {

    public static final a f71324a = new a();

    private a() {
    }

    public final void a(FragmentActivity activity, String str, String str2, String str3, boolean z10, Subject subject, String str4, Boolean bool) {
        String subjectId;
        String string = str2;
        Intrinsics.h(activity, "activity");
        if (!z10 && Intrinsics.c(bool, Boolean.FALSE)) {
            Navigator navigatorZ = TheRouter.c(pr.a.f69252a.b()).z("download", true);
            if (str4 == null) {
                subjectId = subject != null ? subject.getSubjectId() : null;
            } else {
                subjectId = str4;
            }
            Navigator.x(navigatorZ.K("id", subjectId).K("ops", str2), activity, null, 2, null);
            return;
        }
        if (string == null || str2.length() == 0) {
            Bundle extras = activity.getIntent().getExtras();
            string = extras != null ? extras.getString("ops") : null;
        }
        String str5 = string;
        FragmentManager supportFragmentManager = activity.getSupportFragmentManager();
        Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
        ShortTvDownloadResDialog.INSTANCE.a(str, h.f69682a.h(), subject, str5, str3, z10).show(supportFragmentManager, "download");
    }
}
