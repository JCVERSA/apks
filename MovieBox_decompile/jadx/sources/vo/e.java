package vo;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.miniutils.constant.TimeConstants;
import com.tn.lib.widget.R$color;
import com.transsion.lib.push.R$mipmap;
import com.transsion.lib.push.R$string;
import com.transsion.push.bean.PushConfigHelper;
import com.transsion.push.notification.permission.NoticePermissionFrom;
import com.transsion.push.utils.u;
import gf.f;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

public final class e {

    public static final e f73683a = new e();

    public class a {

        public static final int[] f73684a;

        static {
            int[] iArr = new int[NoticePermissionFrom.values().length];
            try {
                iArr[NoticePermissionFrom.APP_START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[NoticePermissionFrom.DOWNLOAD_RES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[NoticePermissionFrom.PLAY_MUSIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f73684a = iArr;
        }
    }

    private e() {
    }

    public static final void g(NoticePermissionFrom noticePermissionFrom, f scope, List deniedList, boolean z10, boolean z11) {
        Intrinsics.h(scope, "scope");
        Intrinsics.h(deniedList, "deniedList");
        if (!z10) {
            wf.a.C0922a.f(wf.a.f74274a, "NoticePer", "请求权限之后，无需弹窗", false, 4, null);
            return;
        }
        if (z11) {
            wf.a.C0922a.f(wf.a.f74274a, "NoticePer", noticePermissionFrom + " 请求权限，需要跳到设置页，先展示提示弹窗", false, 4, null);
            scope.c(deniedList, new ff.a(null, f73683a.i(noticePermissionFrom), Utils.a().getString(R$string.permission_notice_turn_on), Integer.valueOf(R$mipmap.ic_notification_permission_tips), Integer.valueOf(R$color.white_20), 1, null));
            return;
        }
        if (noticePermissionFrom == NoticePermissionFrom.APP_START) {
            wf.a.C0922a.f(wf.a.f74274a, "NoticePer", "app 启动 直接请求权限", false, 4, null);
            scope.b(deniedList);
            return;
        }
        wf.a.C0922a.f(wf.a.f74274a, "NoticePer", noticePermissionFrom + " 请求权限前，提示弹窗", false, 4, null);
        scope.e(deniedList, new ff.a(null, f73683a.i(noticePermissionFrom), Utils.a().getString(R$string.permission_notice_turn_on), Integer.valueOf(R$mipmap.ic_notification_permission_tips), Integer.valueOf(R$color.white_20), 1, null));
    }

    public static final void h(boolean z10, List grantedList, List deniedList) {
        Intrinsics.h(grantedList, "grantedList");
        Intrinsics.h(deniedList, "deniedList");
        wf.a.C0922a.f(wf.a.f74274a, "NoticePer", "通知权限 请求权限结果:" + z10, false, 4, null);
    }

    private final boolean j(NoticePermissionFrom noticePermissionFrom) {
        int i10 = a.f73684a[noticePermissionFrom.ordinal()];
        if (i10 == 1) {
            return k();
        }
        if (i10 != 2) {
            return true;
        }
        u uVar = u.f48941a;
        boolean z10 = uVar.b().getBoolean("key_notification_permission_download", true);
        uVar.b().putBoolean("key_notification_permission_download", false);
        return z10;
    }

    private final boolean k() {
        u uVar = u.f48941a;
        long j10 = uVar.b().getLong("key_notification_permission_app_start_count", 0L);
        long j11 = uVar.b().getLong("key_notification_permission_app_start_last_time", 0L);
        Integer remindTime = PushConfigHelper.INSTANCE.getRemindTime();
        int iE = remindTime != null ? RangesKt.e(remindTime.intValue(), 1) : 48;
        if (!l() || System.currentTimeMillis() - j11 < TimeConstants.HOUR * iE) {
            wf.a.C0922a.f(wf.a.f74274a, "NoticePer", "app启动，小于" + iE + "小时，不请求 count:" + j10, false, 4, null);
            return false;
        }
        wf.a.f74274a.c("NoticePer", "app启动 超过" + iE + "小时，再次请求  count:" + j10, true);
        uVar.b().putLong("key_notification_permission_app_start_last_time", System.currentTimeMillis());
        uVar.b().putLong("key_notification_permission_app_start_count", j10 + 1);
        n();
        return true;
    }

    private final boolean l() {
        List listU0;
        try {
            Result.Companion companion = Result.INSTANCE;
            long jCurrentTimeMillis = System.currentTimeMillis();
            String string = u.f48941a.b().getString("key_notice_permission_app_start_limit_time", "");
            String str = string == null ? "" : string;
            if (str.length() == 0) {
                listU0 = new ArrayList();
            } else {
                List listR0 = StringsKt.R0(str, new char[]{','}, false, 0, 6, null);
                ArrayList arrayList = new ArrayList();
                Iterator it = listR0.iterator();
                while (it.hasNext()) {
                    Long lX = StringsKt.x((String) it.next());
                    if (lX != null) {
                        arrayList.add(lX);
                    }
                }
                listU0 = CollectionsKt.U0(arrayList);
            }
            final long j10 = jCurrentTimeMillis - 604800000;
            CollectionsKt.I(listU0, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(e.m(j10, ((Long) obj).longValue()));
                }
            });
            return listU0.size() < 2;
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
            return false;
        }
    }

    public static final boolean m(long j10, long j11) {
        return j11 < j10;
    }

    private final void n() {
        List listU0;
        try {
            Result.Companion companion = Result.INSTANCE;
            long jCurrentTimeMillis = System.currentTimeMillis();
            String string = u.f48941a.b().getString("key_notice_permission_app_start_limit_time", "");
            String str = string == null ? "" : string;
            if (str.length() == 0) {
                listU0 = new ArrayList();
            } else {
                List listR0 = StringsKt.R0(str, new char[]{','}, false, 0, 6, null);
                ArrayList arrayList = new ArrayList();
                Iterator it = listR0.iterator();
                while (it.hasNext()) {
                    Long lX = StringsKt.x((String) it.next());
                    if (lX != null) {
                        arrayList.add(lX);
                    }
                }
                listU0 = CollectionsKt.U0(arrayList);
            }
            final long j10 = jCurrentTimeMillis - 604800000;
            CollectionsKt.I(listU0, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(e.o(j10, ((Long) obj).longValue()));
                }
            });
            listU0.add(Long.valueOf(jCurrentTimeMillis));
            Result.m453constructorimpl(u.f48941a.b().putString("key_notice_permission_app_start_limit_time", CollectionsKt.s0(listU0, ",", null, null, 0, null, null, 62, null)));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    public static final boolean o(long j10, long j11) {
        return j11 < j10;
    }

    public final boolean e(Fragment fragment, NoticePermissionFrom from) {
        Intrinsics.h(fragment, "fragment");
        Intrinsics.h(from, "from");
        FragmentActivity activity = fragment.getActivity();
        if (activity != null) {
            return f73683a.f(activity, from);
        }
        return false;
    }

    public final boolean f(FragmentActivity activity, final NoticePermissionFrom from) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(from, "from");
        if (activity.isFinishing() || activity.isDestroyed()) {
            return false;
        }
        cf.c cVar = cf.c.f16930a;
        if (cVar.b(activity)) {
            wf.a.C0922a.v(wf.a.f74274a, "NoticePer", "checkRequestPermission , 权限已开启, from:" + from, false, 4, null);
            return false;
        }
        if (!j(from)) {
            wf.a.C0922a.v(wf.a.f74274a, "NoticePer", "checkRequestPermission 不请求权限, from:" + from, false, 4, null);
            return false;
        }
        wf.a.C0922a.f(wf.a.f74274a, "NoticePer", "checkRequestPermission from:" + from, false, 4, null);
        cVar.e(activity).b("android.permission.POST_NOTIFICATIONS").b().a(new df.b() {
            @Override
            public final void a(f fVar, List list, boolean z10, boolean z11) {
                e.g(from, fVar, list, z10, z11);
            }
        }).d(new df.c() {
            @Override
            public final void a(boolean z10, List list, List list2) {
                e.h(z10, list, list2);
            }
        });
        return true;
    }

    public final String i(NoticePermissionFrom from) {
        Intrinsics.h(from, "from");
        if (a.f73684a[from.ordinal()] == 3) {
            String string = Utils.a().getString(R$string.permission_notice_tips_music);
            Intrinsics.g(string, "getString(...)");
            return string;
        }
        String string2 = Utils.a().getString(R$string.permission_notice_tips_normal);
        Intrinsics.g(string2, "getString(...)");
        return string2;
    }
}
