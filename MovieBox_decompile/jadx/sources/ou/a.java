package ou;

import android.app.Application;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.tencent.mmkv.MMKV;
import com.transsion.upgradesdk.bean.UpgradeData;
import kotlin.jvm.internal.Intrinsics;
import nu.d;
import qu.f;
import tu.g;
import tu.h;
import tu.i;
import tu.l;

public abstract class a {
    public static boolean a(UpgradeData upgradeData) {
        Application application;
        Intrinsics.h(upgradeData, "upgradeData");
        if (upgradeData.isForceUpdate()) {
            return true;
        }
        try {
            h hVar = i.f72841b;
            Application application2 = pu.a.f69263a;
            if (application2 != null) {
                application = application2;
            } else {
                Intrinsics.y(MimeTypes.BASE_TYPE_APPLICATION);
                application = null;
            }
            i iVarA = hVar.a(application);
            Intrinsics.h("KV_UPGRADE_LAST_TARGET_VERSION", "key");
            MMKV mmkv = iVarA.f72843a;
            long jH = mmkv != null ? mmkv.h("KV_UPGRADE_LAST_TARGET_VERSION", 0L) : 0L;
            if (jH != upgradeData.getPkgVersion()) {
                String msg = "filter  ->> 目标版本变化，重置弹窗次数。last=" + jH + ", current=" + upgradeData.getPkgVersion();
                Intrinsics.h("ValidateCheckUtils", "tag");
                Intrinsics.h(msg, "msg");
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (!g.f72839a && jCurrentTimeMillis - g.f72840b >= 5000) {
                    g.f72840b = jCurrentTimeMillis;
                    if (Log.isLoggable("upgradeSdkLog", 3)) {
                        g.f72839a = true;
                    }
                    boolean z10 = g.f72839a;
                }
                boolean z11 = f.f70259o.a().f70264d;
                Application application3 = pu.a.f69263a;
                if (application3 == null) {
                    Intrinsics.y(MimeTypes.BASE_TYPE_APPLICATION);
                    application3 = null;
                }
                i iVarA2 = hVar.a(application3);
                long pkgVersion = upgradeData.getPkgVersion();
                Intrinsics.h("KV_UPGRADE_LAST_TARGET_VERSION", "key");
                MMKV mmkv2 = iVarA2.f72843a;
                if (mmkv2 != null) {
                    mmkv2.t("KV_UPGRADE_LAST_TARGET_VERSION", pkgVersion);
                }
                Application application4 = pu.a.f69263a;
                if (application4 == null) {
                    Intrinsics.y(MimeTypes.BASE_TYPE_APPLICATION);
                    application4 = null;
                }
                i iVarA3 = hVar.a(application4);
                Intrinsics.h("KV_UPGRADE_POPUP_TIMES", "key");
                MMKV mmkv3 = iVarA3.f72843a;
                if (mmkv3 != null) {
                    mmkv3.s("KV_UPGRADE_POPUP_TIMES", 0);
                }
                l.a(2, 3, "reset_target_version", null, 24);
            }
        } catch (Exception unused) {
            long jA = d.a("ValidateCheckUtils", "tag", "目标版本频控检查异常", NotificationCompat.CATEGORY_MESSAGE);
            boolean z12 = g.f72839a;
            if (!z12 && jA - g.f72840b >= 5000) {
                g.f72840b = jA;
                if (Log.isLoggable("upgradeSdkLog", 3)) {
                    g.f72839a = true;
                }
                z12 = g.f72839a;
            }
            if (f.f70259o.a().f70264d || z12) {
                Log.e("ValidateCheckUtils", "目标版本频控检查异常");
            }
        }
        if (!upgradeData.checkDialogPopInterval()) {
            l.a(2, 6, "1", null, 24);
            return false;
        }
        if (upgradeData.checkDialogPopTimes()) {
            return true;
        }
        long jA2 = d.a("ValidateCheckUtils", "tag", "filter  ->> 弹窗次数", NotificationCompat.CATEGORY_MESSAGE);
        if (!g.f72839a && jA2 - g.f72840b >= 5000) {
            g.f72840b = jA2;
            if (Log.isLoggable("upgradeSdkLog", 3)) {
                g.f72839a = true;
            }
            boolean z13 = g.f72839a;
        }
        boolean z14 = f.f70259o.a().f70264d;
        l.a(2, 6, "2", null, 24);
        return false;
    }
}
