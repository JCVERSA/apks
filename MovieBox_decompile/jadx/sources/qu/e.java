package qu;

import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.transsion.upgradesdk.bean.UpgradeData;
import com.transsion.upgradesdk.manager.UpgradeDialogCallback;
import kotlin.jvm.internal.Intrinsics;
import tu.g;
import tu.l;
import tu.n;

public final class e implements UpgradeDialogCallback {

    public final f f70257a;

    public final boolean f70258b;

    public e(f fVar, boolean z10) {
        this.f70257a = fVar;
        this.f70258b = z10;
    }

    @Override
    public final void onDialogClick(int i10) {
        String str;
        String msg = "自定义弹窗按钮点击: " + i10;
        Intrinsics.h("UpgradeSdkManager", "tag");
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
        UpgradeData upgradeData = this.f70257a.f70262b;
        int i11 = (upgradeData == null || !upgradeData.isForceUpdate()) ? 1 : 2;
        f fVar = this.f70257a;
        boolean z12 = this.f70258b;
        fVar.getClass();
        if (i10 == 1) {
            UpgradeData upgradeData2 = fVar.f70262b;
            if (upgradeData2 != null && fVar.f70263c) {
                n.c(upgradeData2.getPkg(), upgradeData2.getDirectDwl(), upgradeData2.getHoverBtn(), com.transsion.upgradesdk.manager.f.f54520a);
            }
            str = "update";
        } else if (i10 == 2) {
            str = "exitapp";
        } else if (i10 != 3) {
            str = i10 != 4 ? "back_exit" : "back";
        } else {
            str = "later";
        }
        l.e(i11, z12, str, com.transsion.upgradesdk.bean.c.CUSTOM);
    }

    @Override
    public final void onDialogDismiss() {
        long jA = nu.d.a("UpgradeSdkManager", "tag", "自定义弹窗关闭", NotificationCompat.CATEGORY_MESSAGE);
        int i10 = 1;
        if (!g.f72839a && jA - g.f72840b >= 5000) {
            g.f72840b = jA;
            if (Log.isLoggable("upgradeSdkLog", 3)) {
                g.f72839a = true;
            }
            boolean z10 = g.f72839a;
        }
        boolean z11 = f.f70259o.a().f70264d;
        UpgradeData upgradeData = this.f70257a.f70262b;
        if (upgradeData != null && upgradeData.isForceUpdate()) {
            i10 = 2;
        }
        l.e(i10, this.f70258b, "dismiss", com.transsion.upgradesdk.bean.c.CUSTOM);
    }

    @Override
    public final void onDialogShow() {
        long jA = nu.d.a("UpgradeSdkManager", "tag", "自定义弹窗显示", NotificationCompat.CATEGORY_MESSAGE);
        int i10 = 1;
        if (!g.f72839a && jA - g.f72840b >= 5000) {
            g.f72840b = jA;
            if (Log.isLoggable("upgradeSdkLog", 3)) {
                g.f72839a = true;
            }
            boolean z10 = g.f72839a;
        }
        boolean z11 = f.f70259o.a().f70264d;
        UpgradeData upgradeData = this.f70257a.f70262b;
        if (upgradeData != null && upgradeData.isForceUpdate()) {
            i10 = 2;
        }
        l.d(i10, this.f70258b, com.transsion.upgradesdk.bean.c.CUSTOM);
    }
}
