package com.transsion.version.update;

import android.app.Activity;
import android.os.Build;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.integration.event.EventConstants;
import com.transsion.push.PushConstants;
import com.transsion.version.update.dialog.UpdateDialog;
import com.transsion.web.api.WebConstants;
import java.util.LinkedHashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class UpdateVersionRequest {

    private final String f55361a = "update";

    private n0 f55362b = o0.a(y0.b());

    private final Lazy f55363c = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return UpdateVersionRequest.g();
        }
    });

    private RemoteVersionInfo f55364d;

    private final boolean f(NoticeConfig noticeConfig) {
        String updateVersionName;
        int notifyTimes = noticeConfig != null ? noticeConfig.getNotifyTimes() : 3;
        long notifyInterval = noticeConfig != null ? (long) noticeConfig.getNotifyInterval() : 24L;
        if (noticeConfig == null || (updateVersionName = noticeConfig.getUpdateVersionName()) == null) {
            updateVersionName = "";
        }
        d dVar = d.f55366a;
        String string = dVar.b().getString("showed_target_version_name", "");
        boolean z10 = false;
        int i10 = dVar.b().getInt("update_dialog_showed_times", 0);
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, this.f55361a, "checkShowUpdateDialog 之前已展示版本 " + string + "   计划版本 " + updateVersionName + " 已展示次数 " + i10, false, 4, null);
        if (!Intrinsics.c(string, updateVersionName)) {
            dVar.b().putInt("update_dialog_showed_times", 0);
            i10 = 0;
        }
        long j10 = 60;
        boolean z11 = ((notifyInterval * j10) * j10) * ((long) 1000) < System.currentTimeMillis() - dVar.b().getLong("update_dialog_show_timestamp", 0L);
        if (i10 < notifyTimes && z11) {
            z10 = true;
        }
        wf.a.C0922a.f(c0922a, this.f55361a, "checkShowUpdateDialog 检查结果为 " + z10 + " 已展示次数 " + i10 + " 提醒次数 " + notifyTimes + " 间隔时长为 " + notifyInterval + " 小时 间隔时长是否合格 " + z11, false, 4, null);
        return z10;
    }

    public static final a g() {
        return (a) kg.c.f63982e.a().h(a.class);
    }

    private final boolean i() {
        d dVar = d.f55366a;
        boolean z10 = dVar.b().getBoolean("NEW_USER_FIRST_LAUNCH", true);
        if (z10) {
            dVar.b().putBoolean("NEW_USER_FIRST_LAUNCH", false);
        }
        return z10;
    }

    private final void j(String str, RemoteVersionInfo remoteVersionInfo) {
        NoticeConfig noticeConfig;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EventConstants.KEY_ACTION, "check");
        String updateVersionName = null;
        linkedHashMap.put("check_result", String.valueOf(remoteVersionInfo != null ? Boolean.valueOf(remoteVersionInfo.getHasUpdate()) : null));
        linkedHashMap.put(PushConstants.PUSH_SERVICE_TYPE_FORCE_UPDATE, String.valueOf(remoteVersionInfo != null ? Boolean.valueOf(remoteVersionInfo.getForceUpdate()) : null));
        if (remoteVersionInfo != null && (noticeConfig = remoteVersionInfo.getNoticeConfig()) != null) {
            updateVersionName = noticeConfig.getUpdateVersionName();
        }
        linkedHashMap.put("target_version_name", String.valueOf(updateVersionName));
        linkedHashMap.put(WebConstants.PAGE_FROM, str);
        e.f55374a.b(linkedHashMap);
    }

    private final void k(Activity activity, final RemoteVersionInfo remoteVersionInfo, final String str, boolean z10, String str2) {
        if (activity instanceof FragmentActivity) {
            UpdateDialog updateDialogA = UpdateDialog.INSTANCE.a(remoteVersionInfo, z10, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return UpdateVersionRequest.m(str, remoteVersionInfo, ((Boolean) obj).booleanValue());
                }
            });
            if (!(Build.VERSION.SDK_INT >= 24 ? ((FragmentActivity) activity).isInPictureInPictureMode() : false)) {
                FragmentActivity fragmentActivity = (FragmentActivity) activity;
                FragmentManager supportFragmentManager = fragmentActivity.getSupportFragmentManager();
                Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
                String simpleName = UpdateDialog.class.getSimpleName();
                if (!fragmentActivity.isFinishing() && !fragmentActivity.isDestroyed() && !supportFragmentManager.T0() && !updateDialogA.isAdded() && supportFragmentManager.k0(simpleName) == null) {
                    updateDialogA.k0(activity, simpleName);
                }
            }
        } else {
            tv.h hVarA = tv.h.f72860g.a(activity, remoteVersionInfo, z10, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return UpdateVersionRequest.n(str, remoteVersionInfo, ((Boolean) obj).booleanValue());
                }
            });
            if (!activity.isInPictureInPictureMode()) {
                hVarA.g(activity);
            }
        }
        e.f55374a.c(str, z10, "mb", str2);
    }

    static void l(UpdateVersionRequest updateVersionRequest, Activity activity, RemoteVersionInfo remoteVersionInfo, String str, boolean z10, String str2, int i10, Object obj) {
        if ((i10 & 16) != 0) {
            str2 = "";
        }
        updateVersionRequest.k(activity, remoteVersionInfo, str, z10, str2);
    }

    public static final Unit m(String str, RemoteVersionInfo remoteVersionInfo, boolean z10) {
        e.f55374a.a(str, z10, "mb");
        if (z10) {
            new vv.a().a(str, Utils.a(), remoteVersionInfo);
        }
        return Unit.f64096a;
    }

    public static final Unit n(String str, RemoteVersionInfo remoteVersionInfo, boolean z10) {
        e.f55374a.a(str, z10, "mb");
        if (z10) {
            new vv.a().a(str, Utils.a(), remoteVersionInfo);
        }
        return Unit.f64096a;
    }

    public final void o(final Activity activity, final String str, final RemoteVersionInfo remoteVersionInfo, final boolean z10) {
        String updateVersionName;
        if (!UpdateManager.f55354f.a().d()) {
            l(this, activity, remoteVersionInfo, str, z10, null, 16, null);
            return;
        }
        NoticeConfig noticeConfig = remoteVersionInfo.getNoticeConfig();
        if (noticeConfig == null || (updateVersionName = noticeConfig.getUpdateVersionName()) == null) {
            updateVersionName = "";
        }
        uv.a.f73257a.a(str, z10, activity, updateVersionName, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return UpdateVersionRequest.p(this.f55375a, activity, remoteVersionInfo, str, z10, (String) obj);
            }
        });
    }

    public static final Unit p(UpdateVersionRequest updateVersionRequest, Activity activity, RemoteVersionInfo remoteVersionInfo, String str, boolean z10, String errorMsg) {
        Intrinsics.h(errorMsg, "errorMsg");
        updateVersionRequest.k(activity, remoteVersionInfo, str, z10, errorMsg);
        return Unit.f64096a;
    }

    public final a h() {
        return (a) this.f55363c.getValue();
    }

    public final Object q(Activity activity, String str, String str2, String str3, boolean z10, Continuation continuation) {
        return Boolean.FALSE;
    }
}
