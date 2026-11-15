package com.transsion.player.longvideo.member;

import android.app.Application;
import androidx.fragment.app.FragmentManager;
import com.blankj.utilcode.util.Utils;
import com.transsion.ad.ps.activate.PSActivateManager;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.member.MemberResolutionDao;
import com.transsion.memberapi.MemberSource;
import com.transsion.wrapperad.activate.ui.LongVodActivateDialog;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class ResolutionMemberManager {

    public static final ResolutionMemberManager f46182a = new ResolutionMemberManager();

    private static final Lazy f46183b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return ResolutionMemberManager.h();
        }
    });

    private ResolutionMemberManager() {
    }

    public final String d() {
        String simpleName = ResolutionMemberManager.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final MemberResolutionDao e() {
        return (MemberResolutionDao) f46183b.getValue();
    }

    public static final MemberResolutionDao h() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).r1();
    }

    public final Object f(ln.a aVar, Continuation continuation) {
        return aVar == null ? Boxing.a(false) : kotlinx.coroutines.i.g(y0.b(), new ResolutionMemberManager$isUnlock$2(aVar, null), continuation);
    }

    public final Object g(ln.a aVar, Continuation continuation) {
        return kotlinx.coroutines.i.g(y0.b(), new ResolutionMemberManager$isVipResolutionTip$2(aVar, null), continuation);
    }

    public final void i(FragmentManager fragmentManager, MemberSource from, final ln.a aVar, String str, final nw.e eVar) {
        Intrinsics.h(fragmentManager, "fragmentManager");
        Intrinsics.h(from, "from");
        if (mw.a.f66724a.k(from)) {
            wf.a.C0922a.g(wf.a.f74274a, d() + " --> showRewardDialog() --> 解锁高清视频播放权限开关关闭 --> from = " + from, false, 2, null);
            return;
        }
        if (PSActivateManager.f41122a.d()) {
            LongVodActivateDialog longVodActivateDialog = new LongVodActivateDialog();
            longVodActivateDialog.v0(new nw.e() {
                @Override
                public void a(boolean z10) {
                    kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new ResolutionMemberManager$showRewardDialog$1$1$onActivate$1(z10, aVar, eVar, null), 3, null);
                }
            });
            longVodActivateDialog.r0(from, str);
            longVodActivateDialog.show(fragmentManager, "解锁高清视频播放权限");
            return;
        }
        wf.a.C0922a.g(wf.a.f74274a, d() + " --> showRewardDialog() --> 没有激励广告，无法解锁高清视频播放权限 --> from = " + from, false, 2, null);
        if (eVar != null) {
            eVar.a(false);
        }
    }

    public final Object j(ln.a aVar, Continuation continuation) {
        if (aVar == null) {
            return Unit.f64096a;
        }
        Object objG = kotlinx.coroutines.i.g(y0.b(), new ResolutionMemberManager$unlock$2(aVar, null), continuation);
        return objG == IntrinsicsKt.f() ? objG : Unit.f64096a;
    }

    public final Object k(ln.a aVar, Continuation continuation) {
        if (aVar == null) {
            return Unit.f64096a;
        }
        Object objG = kotlinx.coroutines.i.g(y0.b(), new ResolutionMemberManager$updateVipResolutionTip$2(aVar, null), continuation);
        return objG == IntrinsicsKt.f() ? objG : Unit.f64096a;
    }
}
