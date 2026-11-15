package cu;

import au.d;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.transsion.transfer.impl.l;
import com.transsion.transfer.wifi.bean.ReportTransferAction;
import com.transsion.transfer.wifi.util.g;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import qi.h;

public final class b {

    public static final b f58655a = new b();

    private b() {
    }

    private final String a() {
        String simpleName = b.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    private final Map b(ReportTransferAction reportTransferAction) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(ReportTransferAction.REPORT_TRANSFER_ACTION.getAction(), reportTransferAction.getAction());
        return linkedHashMap;
    }

    private final void c(Map map) {
        h.f69682a.z("transfer_status", map);
    }

    public final void d(String error, String str) {
        Intrinsics.h(error, "error");
        Map mapB = b(ReportTransferAction.xREPORT_TRANSFER_ACTION_CLIENT_CONNECT_FAILED);
        mapB.put("error", error);
        if (str == null) {
            str = "";
        }
        mapB.put("transfer_id", str);
        g.f(g.f53898a, a() + " --> reportClientConnectFailed() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void e(String str) {
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_CLIENT_CONNECT_SUCCESS);
        g.f(g.f53898a, a() + " --> reportClientConnectSuccess() --> map = " + mapB, false, 2, null);
        if (str == null) {
            str = "";
        }
        mapB.put("transfer_id", str);
        c(mapB);
    }

    public final void f(String str) {
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_CLIENT_DISCONNECT_BY_USER);
        if (str == null) {
            str = "";
        }
        mapB.put("transfer_id", str);
        g.f(g.f53898a, a() + " --> reportServerReceiveDisconnectClick() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void g(String remoteFilePath, boolean z10, String str, long j10, long j11, String str2) {
        Object objM453constructorimpl;
        Intrinsics.h(remoteFilePath, "remoteFilePath");
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_CLIENT_DOWNLOAD_FILE_END);
        mapB.put("task_id", d.b(remoteFilePath));
        try {
            Result.Companion companion = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(StringsKt.c1(au.a.a(remoteFilePath), '.', ""));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m459isFailureimpl(objM453constructorimpl)) {
            objM453constructorimpl = "";
        }
        mapB.put("file_type", objM453constructorimpl);
        mapB.put(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, String.valueOf(z10));
        if (str == null) {
            str = "";
        }
        mapB.put("error", str);
        mapB.put("file_size", String.valueOf(j10));
        mapB.put("time_cost", String.valueOf(j11));
        if (str2 == null) {
            str2 = "";
        }
        mapB.put("transfer_id", str2);
        g.f(g.f53898a, a() + " --> reportClientDownloadFileEnd() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void h(String path, long j10, String str) {
        Intrinsics.h(path, "path");
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_CLIENT_DOWNLOAD_FILE_START);
        mapB.put("task_id", d.b(path));
        mapB.put("file_size", String.valueOf(j10));
        if (str == null) {
            str = "";
        }
        mapB.put("transfer_id", str);
        g.f(g.f53898a, a() + " --> reportClientDownloadFileStart() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void i(String str) {
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_CLIENT_FETCH_FILES_START);
        if (str == null) {
            str = "";
        }
        mapB.put("transfer_id", str);
        g.f(g.f53898a, a() + " --> reportClientFetchFilesStart() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void j(String str, String str2) {
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_CLIENT_DISCONNECT);
        if (str == null) {
            str = "";
        }
        mapB.put(NativeComponentConstants.KEY_COMPONENT_TYPE, str);
        if (str2 == null) {
            str2 = "";
        }
        mapB.put("transfer_id", str2);
        g.f(g.f53898a, a() + " --> reportClientReceiveDisconnect() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void k(String str) {
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_CLIENT_RECEIVE_FILE_CMD);
        if (str == null) {
            str = "";
        }
        mapB.put("transfer_id", str);
        g.f(g.f53898a, a() + " --> reportClientReceiveServerUpdateFileList() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void l(String str) {
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_CLIENT_SEND_FILE_NOTIFY);
        if (str == null) {
            str = "";
        }
        mapB.put("transfer_id", str);
        g.f(g.f53898a, a() + " --> reportClientSendFileNotify() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void m(int i10, String str) {
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_CLIENT_NOTIFY_FINISH);
        mapB.put("file_list_size", String.valueOf(i10));
        if (str == null) {
            str = "";
        }
        mapB.put("transfer_id", str);
        g.f(g.f53898a, a() + " --> reportClientServerFilesFinish() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void n(String str) {
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_CLIENT_CONNECT_START);
        if (str == null) {
            str = "";
        }
        mapB.put("transfer_id", str);
        g.f(g.f53898a, a() + " --> reportClientStartConnect() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void o(String str) {
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_SERVER_CONNECT_SUCCESS);
        if (str == null) {
            str = "";
        }
        mapB.put("transfer_id", str);
        mapB.put("transfer_channel_info", l.f53697a.a());
        g.f(g.f53898a, a() + " --> reportServerConnectSuccess() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void p(String str) {
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_SERVER_DISCONNECT_BY_USER);
        if (str == null) {
            str = "";
        }
        mapB.put("transfer_id", str);
        mapB.put("transfer_channel_info", l.f53697a.a());
        g.f(g.f53898a, a() + " --> reportServerReceiveDisconnectClick() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void q(int i10, String str) {
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_SERVER_FETCH_FILES_HANDLE);
        mapB.put("file_list_size", String.valueOf(i10));
        if (str == null) {
            str = "";
        }
        mapB.put("transfer_id", str);
        mapB.put("transfer_channel_info", l.f53697a.a());
        g.f(g.f53898a, a() + " --> reportServerHandleFetchFiles() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void r() {
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_SERVER_OPEN);
        g.f(g.f53898a, a() + " --> reportServerOpen() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void s(String str, String str2) {
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_SERVER_DISCONNECT);
        if (str == null) {
            str = "";
        }
        mapB.put(NativeComponentConstants.KEY_COMPONENT_TYPE, str);
        if (str2 == null) {
            str2 = "";
        }
        mapB.put("transfer_id", str2);
        mapB.put("transfer_channel_info", l.f53697a.a());
        g.f(g.f53898a, a() + " --> reportServerReceiveDisconnect() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void t(String str) {
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_SERVER_RECEIVE_FILE_READY);
        if (str == null) {
            str = "";
        }
        mapB.put("transfer_id", str);
        mapB.put("transfer_channel_info", l.f53697a.a());
        g.f(g.f53898a, a() + " --> reportServerReceiveFile() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void u(String str) {
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_SERVER_SEND_FILE_CMD);
        if (str == null) {
            str = "";
        }
        mapB.put("transfer_id", str);
        mapB.put("transfer_channel_info", l.f53697a.a());
        g.f(g.f53898a, a() + " --> reportServerSendFileClick() --> map = " + mapB, false, 2, null);
        c(mapB);
    }
}
