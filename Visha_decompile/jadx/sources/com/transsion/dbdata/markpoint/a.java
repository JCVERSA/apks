package com.transsion.dbdata.markpoint;

import android.os.Bundle;
import com.alibaba.android.arouter.utils.TextUtils;
import com.transsion.athena.data.TrackData;
import com.transsion.push.PushConstants;
import defpackage.hb0;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class a extends hb0 {
    public static final C0214a a = new C0214a(null);

    public static final class C0214a {
        public C0214a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static void c(C0214a c0214a, String str, int i, int i2, Object obj) {
            if ((i2 & 2) != 0) {
                i = 0;
            }
            c0214a.b(str, i);
        }

        public static void t(C0214a c0214a, long j, int i, long j2, int i2, Object obj) {
            if ((i2 & 4) != 0) {
                j2 = System.currentTimeMillis();
            }
            c0214a.s(j, i, j2);
        }

        public final void a(String str, TrackData trackData, Bundle bundle) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            String strE = MarkFileTransferInfo.a.e();
            trackData.add("transfer_id", strE);
            bundle.putString("transfer_id", strE);
            hb0.markDirect(str, trackData, bundle);
        }

        public final void b(String str, int i) {
            y45.j(str, "cancelStep");
            TrackData trackData = new TrackData();
            trackData.add("progress", i);
            trackData.add("cancel_stepstring", str);
            Bundle bundle = new Bundle();
            bundle.putInt("progress", i);
            bundle.putString("cancel_stepstring", str);
            a("vd_filetransfer_cancel_cl", trackData, bundle);
        }

        public final void d() {
            a("vd_filetransfer_device_cl", new TrackData(), new Bundle());
        }

        public final void e(boolean z, long j, int i) {
            TrackData trackData = new TrackData();
            Bundle bundle = new Bundle();
            trackData.add("status", z ? 1 : 0);
            trackData.add("connect_duration", j);
            if (!z) {
                trackData.add("error_code", i);
                bundle.putInt("error_code", i);
            }
            bundle.putInt("status", z ? 1 : 0);
            bundle.putLong("connect_duration", j);
            a("vd_filetransfer_device_connect", trackData, bundle);
        }

        public final void f(int i, long j) {
            TrackData trackData = new TrackData();
            Bundle bundle = new Bundle();
            trackData.add("device_count", i);
            trackData.add("scan_duration", j);
            bundle.putInt("device_count", i);
            bundle.putLong("scan_duration", j);
            a("vd_filetransfer_device_found", trackData, bundle);
        }

        public final void g(String str, int i) {
            y45.j(str, "step");
            String strU = u(i);
            TrackData trackData = new TrackData();
            Bundle bundle = new Bundle();
            trackData.add("error_type", strU);
            trackData.add("error_step", str);
            trackData.add("error_code", i);
            bundle.putString("error_type", strU);
            bundle.putString("error_step", str);
            bundle.putInt("error_code", i);
            a("vd_filetransfer_error_show", trackData, bundle);
            MarkFileTransferInfo.a.l(Integer.valueOf(i));
        }

        public final void h(int i) {
            TrackData trackData = new TrackData();
            Bundle bundle = new Bundle();
            trackData.add("total_size", i);
            bundle.putInt("total_size", i);
            a("vd_filetransfer_file_cl", trackData, bundle);
        }

        public final void i() {
            a("vd_filetransfer_fileselect_show", new TrackData(), new Bundle());
        }

        public final void j() {
            String strD = MarkFileTransferInfo.a.d();
            TrackData trackData = new TrackData();
            Bundle bundle = new Bundle();
            trackData.add("from", strD);
            bundle.putString("from", strD);
            a("vd_filetransfer_show", trackData, bundle);
        }

        public final void k() {
            a("vd_filetransfer_history_cl", new TrackData(), new Bundle());
        }

        public final void l() {
            MarkFileTransferInfo markFileTransferInfo = MarkFileTransferInfo.a;
            MarkFileTransferInfo.PermissionType permissionTypeF = markFileTransferInfo.f();
            if (permissionTypeF != null) {
                String permission = permissionTypeF.getPermission();
                String result = permissionTypeF.getResult();
                TrackData trackData = new TrackData();
                Bundle bundle = new Bundle();
                trackData.add("permission_type", permission);
                trackData.add("result", result);
                bundle.putString("permission_type", permission);
                bundle.putString("result", result);
                a.a.a("vd_filetransfer_permission_result", trackData, bundle);
                markFileTransferInfo.n(null);
            }
        }

        public final void m(String str) {
            y45.j(str, "type");
            TrackData trackData = new TrackData();
            Bundle bundle = new Bundle();
            trackData.add("permission_type", str);
            bundle.putString("permission_type", str);
            a("vd_filetransfer_permission_show", trackData, bundle);
        }

        public final void n() {
            a("vd_filetransfer_receive_cl", new TrackData(), new Bundle());
        }

        public final void o(int i) {
            MarkFileTransferInfo markFileTransferInfo = MarkFileTransferInfo.a;
            Integer numC = markFileTransferInfo.c();
            int iIntValue = numC != null ? numC.intValue() : 1006;
            TrackData trackData = new TrackData();
            Bundle bundle = new Bundle();
            trackData.add(PushConstants.SP_KEY_RETRY_COUNT, i);
            trackData.add("error_code", iIntValue);
            bundle.putInt(PushConstants.SP_KEY_RETRY_COUNT, i);
            bundle.putInt("error_code", iIntValue);
            a("vd_filetransfer_retry_cl", trackData, bundle);
            markFileTransferInfo.l(null);
        }

        public final void p() {
            a("vd_filetransfer_send_cl", new TrackData(), new Bundle());
        }

        public final void q(int i, long j, long j2, int i2, int i3) {
            TrackData trackData = new TrackData();
            trackData.add("status", i);
            trackData.add("duration", j);
            trackData.add("average_speed", j2);
            trackData.add("file_count_success", i2);
            trackData.add("file_count_fail", i3);
            Bundle bundle = new Bundle();
            bundle.putInt("status", i);
            bundle.putLong("duration", j);
            bundle.putLong("average_speed", j2);
            bundle.putInt("file_count_success", i2);
            bundle.putInt("file_count_fail", i3);
            a("vd_filetransfer_complete", trackData, bundle);
        }

        public final void r(int i, long j, long j2) {
            TrackData trackData = new TrackData();
            trackData.add("progress_percentage", i);
            trackData.add("current_speed", j);
            trackData.add("elapsed_duration", j2);
            Bundle bundle = new Bundle();
            bundle.putInt("progress_percentage", i);
            bundle.putLong("current_speed", j);
            bundle.putLong("elapsed_duration", j2);
            a("vd_filetransfer_progress", trackData, bundle);
        }

        public final void s(long j, int i, long j2) {
            TrackData trackData = new TrackData();
            trackData.add("total_size", j);
            trackData.add("file_count", i);
            trackData.add("start_timestamp", j2);
            Bundle bundle = new Bundle();
            bundle.putLong("total_size", j);
            bundle.putInt("file_count", i);
            bundle.putLong("start_timestamp", j2);
            a("vd_filetransfer_start", trackData, bundle);
        }

        public final String u(int i) {
            switch (i) {
                case 1001:
                    return "permission";
                case 1002:
                case 1007:
                case 1008:
                    return "network";
                case 1003:
                case 1004:
                default:
                    return "unknown";
                case 1005:
                case 1006:
                    return "device";
            }
        }

        public C0214a() {
        }
    }
}
