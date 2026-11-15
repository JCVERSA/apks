package cu;

import android.os.Build;
import com.transsion.transfer.wifi.bean.PermissionState;
import com.transsion.transfer.wifi.bean.ReportTransferAction;
import com.transsion.transfer.wifi.permission.PermissionsBean;
import com.transsion.transfer.wifi.permission.d;
import com.transsion.transfer.wifi.util.WifiUtils;
import com.transsion.transfer.wifi.util.g;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import qi.h;

public final class c {

    public static final c f58656a = new c();

    private c() {
    }

    private final String a() {
        String simpleName = c.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    private final Map b(ReportTransferAction reportTransferAction) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(ReportTransferAction.REPORT_TRANSFER_ACTION.getAction(), reportTransferAction.getAction());
        linkedHashMap.put("is_p2p_supported", String.valueOf(WifiUtils.f53888a.q()));
        linkedHashMap.put("sdk_int", String.valueOf(Build.VERSION.SDK_INT));
        return linkedHashMap;
    }

    private final void c(Map map) {
        h.f69682a.q("wifi_p2p", "transfer", map);
    }

    public final void d() {
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_CONNECT_CANCEL);
        g.f(g.f53898a, a() + " --> reportConnectWifiCancel() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void e(int i10) {
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_CONNECT_FAIL);
        mapB.put("code", String.valueOf(i10));
        g.f(g.f53898a, a() + " --> reportConnectWifiFail() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void f(long j10) {
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_CONNECT_SUCCESS);
        mapB.put("duration", String.valueOf(j10));
        g.f(g.f53898a, a() + " --> reportConnectWifiSuccess() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void g() {
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_CONNECT_TRIGGER);
        g.f(g.f53898a, a() + " --> reportConnectWifiTrigger() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void h() {
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_CREATE_CANCEL);
        g.f(g.f53898a, a() + " --> reportCreateWifiP2PCancel() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void i(int i10) {
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_CREATE_FAIL);
        mapB.put("code", String.valueOf(i10));
        g.f(g.f53898a, a() + " --> reportCreateWifiP2PFail() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void j(long j10, long j11) {
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_CREATE_SUCCESS);
        mapB.put("duration", String.valueOf(j10));
        mapB.put("qr_duration", String.valueOf(j11));
        g.f(g.f53898a, a() + " --> reportCreateWifiP2PSuccess() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void k() {
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_CREATE_TRIGGER);
        g.f(g.f53898a, a() + " --> reportCreateWifiP2PTrigger() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void l(String str, String permissions, PermissionState permissionsState) {
        Intrinsics.h(permissions, "permissions");
        Intrinsics.h(permissionsState, "permissionsState");
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_PERMISSION_REQUEST);
        mapB.put("user_role", Intrinsics.c(str, "com.transsion.transfer.wifi.util.send") ? "sender" : "receiver");
        mapB.put("permissions", permissions);
        mapB.put("state", permissionsState.getState());
    }

    public final void m(String str) {
        String str2;
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_PERMISSION_PAGE_PV);
        if (Intrinsics.c(str, "com.transsion.transfer.wifi.util.send")) {
            for (PermissionsBean permissionsBean : d.f53834a.e()) {
                mapB.put(permissionsBean.getPermission(), permissionsBean.getState().getState());
            }
            str2 = "sender";
        } else {
            for (PermissionsBean permissionsBean2 : d.f53834a.c()) {
                mapB.put(permissionsBean2.getPermission(), permissionsBean2.getState().getState());
            }
            str2 = "receiver";
        }
        mapB.put("user_role", str2);
        g.f(g.f53898a, a() + " --> reportPermission() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void n() {
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_SHARE_APK_DIALOG);
        g.f(g.f53898a, a() + " --> reportShareApkDialogShow() --> map = " + mapB, false, 2, null);
        c(mapB);
    }
}
