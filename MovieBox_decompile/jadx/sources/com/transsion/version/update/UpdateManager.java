package com.transsion.version.update;

import android.app.Activity;
import android.os.Build;
import android.text.TextUtils;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.integration.event.EventConstants;
import com.tencent.mmkv.MMKV;
import com.transsion.upgradesdk.manager.UpgradeSdkManager;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class UpdateManager {

    public static final a f55354f = new a(null);

    private static volatile UpdateManager f55355g;

    private UpdateVersionRequest f55356a = new UpdateVersionRequest();

    private final String f55357b = "TECNO";

    private final String f55358c = "INFINIX";

    private final String f55359d = "ITEL";

    private final HashSet f55360e = SetsKt.g("TECNO", "INFINIX", "ITEL");

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final UpdateManager a() {
            UpdateManager updateManager = UpdateManager.f55355g;
            if (updateManager == null) {
                synchronized (this) {
                    updateManager = new UpdateManager();
                    UpdateManager.f55355g = updateManager;
                }
            }
            return updateManager;
        }

        private a() {
        }
    }

    private final boolean f() {
        d dVar = d.f55366a;
        boolean z10 = false;
        int i10 = dVar.b().getInt("key_last_installed_version_v2", 0);
        int iF = com.blankj.utilcode.util.c.f();
        if (i10 != 0 && i10 < iF) {
            z10 = true;
        }
        if (z10) {
            dVar.b().putInt("key_last_installed_version_v2", iF);
        }
        return z10;
    }

    public static Object j(UpdateManager updateManager, Activity activity, String str, String str2, String str3, boolean z10, Continuation continuation, int i10, Object obj) {
        if ((i10 & 16) != 0) {
            z10 = false;
        }
        return updateManager.i(activity, str, str2, str3, z10, continuation);
    }

    public final void c() {
        d dVar = d.f55366a;
        int i10 = dVar.b().getInt("key_last_installed_version_v2", 0);
        String string = dVar.b().getString("key_user_clicked_dialog_type", "");
        if (!f() || string == null || string.length() <= 0) {
            return;
        }
        dVar.b().remove("key_user_clicked_dialog_type");
        e.f55374a.b(MapsKt.l(TuplesKt.a(EventConstants.KEY_ACTION, "update_success"), TuplesKt.a("last_version", String.valueOf(i10)), TuplesKt.a("dialog_type", string)));
    }

    public final boolean d() {
        String string;
        Object obj;
        MMKV mmkvC = mg.a.f66402a.c();
        if (mmkvC == null || (string = mmkvC.getString("phone_brand", Build.BRAND)) == null) {
            string = Build.BRAND;
        }
        if (TextUtils.isEmpty(string)) {
            return false;
        }
        wf.a.C0922a.f(wf.a.f74274a, "update", "brand " + string, false, 4, null);
        Intrinsics.e(string);
        String upperCase = string.toUpperCase(Locale.ROOT);
        Intrinsics.g(upperCase, "toUpperCase(...)");
        Iterator it = this.f55360e.iterator();
        while (true) {
            obj = null;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (StringsKt.W(upperCase, (String) next, false, 2, null)) {
                obj = next;
                break;
            }
        }
        return ((String) obj) != null;
    }

    public final void e(String appKey) {
        Intrinsics.h(appKey, "appKey");
        if (d()) {
            UpgradeSdkManager.getInstance().init(Utils.a(), appKey, false);
        }
    }

    public final boolean g() {
        return d.f55366a.b().getInt("target_version_code", 0) > com.blankj.utilcode.util.c.f();
    }

    public final void h(String str) {
        d dVar = d.f55366a;
        dVar.b().putString("showed_target_version_name", str);
        dVar.b().putInt("update_dialog_showed_times", dVar.b().getInt("update_dialog_showed_times", 0) + 1);
        dVar.b().putLong("update_dialog_show_timestamp", System.currentTimeMillis());
        wf.a.C0922a.f(wf.a.f74274a, "update", "记录展示版本为 " + str + "已展示次数为 " + dVar.b().getInt("update_dialog_showed_times", 0), false, 4, null);
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object i(Activity activity, String str, String str2, String str3, boolean z10, Continuation continuation) {
        UpdateManager$startCheckUpdate$1 updateManager$startCheckUpdate$1;
        Boolean bool;
        if (continuation instanceof UpdateManager$startCheckUpdate$1) {
            updateManager$startCheckUpdate$1 = (UpdateManager$startCheckUpdate$1) continuation;
            int i10 = updateManager$startCheckUpdate$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                updateManager$startCheckUpdate$1.label = i10 - Integer.MIN_VALUE;
            } else {
                updateManager$startCheckUpdate$1 = new UpdateManager$startCheckUpdate$1(this, continuation);
            }
        } else {
            updateManager$startCheckUpdate$1 = new UpdateManager$startCheckUpdate$1(this, continuation);
        }
        UpdateManager$startCheckUpdate$1 updateManager$startCheckUpdate$2 = updateManager$startCheckUpdate$1;
        Object objQ = updateManager$startCheckUpdate$2.result;
        Object objF = IntrinsicsKt.f();
        int i11 = updateManager$startCheckUpdate$2.label;
        if (i11 == 0) {
            ResultKt.b(objQ);
            UpdateVersionRequest updateVersionRequest = this.f55356a;
            if (updateVersionRequest != null) {
                updateManager$startCheckUpdate$2.label = 1;
                objQ = updateVersionRequest.q(activity, str, str2, str3, z10, updateManager$startCheckUpdate$2);
                if (objQ == objF) {
                    return objF;
                }
            } else {
                bool = null;
            }
            c();
            return Boxing.a(Intrinsics.c(bool, Boxing.a(true)));
        }
        if (i11 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(objQ);
        bool = (Boolean) objQ;
        c();
        return Boxing.a(Intrinsics.c(bool, Boxing.a(true)));
    }
}
