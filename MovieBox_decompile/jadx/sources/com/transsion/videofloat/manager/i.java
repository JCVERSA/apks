package com.transsion.videofloat.manager;

import android.app.Application;
import android.provider.Settings;
import androidx.fragment.app.FragmentActivity;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.permissionx.guolindev.callback.PermissionDialogClickType;
import com.tencent.mmkv.MMKV;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.videofloat.R$mipmap;
import com.transsion.videofloat.R$string;
import com.transsion.videofloat.dialog.VideoFloatPermissionDialog;
import com.transsion.videofloat.view.VideoFloatView;
import com.transsion.web.api.WebConstants;
import java.util.HashMap;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import on.e0;

public final class i implements cw.b {

    private VideoFloatView f55805b;

    private boolean f55806c;

    public static final class a implements gw.a {

        final gw.a f55807a;

        final i f55808b;

        a(gw.a aVar, i iVar) {
            this.f55807a = aVar;
            this.f55808b = iVar;
        }

        @Override
        public boolean a(dw.a aVar) {
            gw.a aVar2 = this.f55807a;
            if (aVar2 != null) {
                return aVar2.a(aVar);
            }
            return false;
        }

        @Override
        public void b(dw.a aVar) {
            String strK;
            this.f55808b.f55806c = false;
            gw.a aVar2 = this.f55807a;
            if (aVar2 != null) {
                aVar2.b(aVar);
            }
            this.f55808b.f55805b = null;
            if (aVar == null || (strK = aVar.k()) == null) {
                return;
            }
            a0.f55763a.e(strK);
        }

        @Override
        public void c(dw.a aVar) {
            if (aVar != null) {
                i iVar = this.f55808b;
                String strR = aVar.r();
                UGCVideo uGCVideoV = aVar.v();
                iVar.q(strR, uGCVideoV != null ? uGCVideoV.getUgcVideoId() : null, aVar.h(), aVar.e());
            }
            gw.a aVar2 = this.f55807a;
            if (aVar2 != null) {
                aVar2.c(aVar);
            }
        }
    }

    private final void n(FragmentActivity fragmentActivity, boolean z10, String str, String str2, String str3, String str4) {
        if (p()) {
            return;
        }
        w(this, fragmentActivity, z10, str, str2, str3, str4, null, 64, null);
    }

    public static final Unit o(Function1 function1, i iVar, dw.a aVar, boolean z10, gw.a aVar2, boolean z11) {
        if (z11) {
            if (function1 != null) {
                function1.invoke(Boolean.TRUE);
            }
            iVar.u(aVar, z10, aVar2);
        } else if (function1 != null) {
            function1.invoke(Boolean.FALSE);
        }
        return Unit.f64096a;
    }

    private final boolean p() {
        return Settings.canDrawOverlays(Utils.a());
    }

    public final void q(String str, String str2, String str3, String str4) {
        HashMap map = new HashMap();
        if (str != null) {
            map.put("subject_id", str);
        }
        if (str4 != null) {
            map.put("ops", str4);
        }
        if (str2 != null) {
            map.put("ugc_video_id", str2);
        }
        map.put("opt_type", "float_back_page");
        map.put(NativeComponentConstants.KEY_COMPONENT_TYPE, "float");
        qi.h.f69682a.o(str3, map);
    }

    private final void r(boolean z10, String str, String str2, String str3, String str4) {
        HashMap map = new HashMap();
        if (str != null) {
            map.put("subject_id", str);
        }
        if (str2 != null) {
            map.put("ugc_video_id", str2);
        }
        if (str4 != null) {
            map.put("ops", str4);
        }
        map.put("opt_type", z10 ? "allow" : "cancel");
        map.put(WebConstants.PAGE_FROM, str3);
        qi.h.f69682a.o(cw.b.f58659a.d(), map);
    }

    private final void s(String str, String str2, String str3, String str4) {
        HashMap map = new HashMap();
        if (str != null) {
            map.put("subject_id", str);
        }
        if (str2 != null) {
            map.put("ugc_video_id", str2);
        }
        if (str4 != null) {
            map.put("ops", str4);
        }
        map.put(WebConstants.PAGE_FROM, str3);
        qi.h.f69682a.p(cw.b.f58659a.d(), map);
    }

    private final void t(boolean z10, boolean z11) {
        HashMap map = new HashMap();
        map.put("has_permission", String.valueOf(z11));
        map.put(EventConstants.KEY_ACTION, z10 ? "click" : "auto");
        qi.h.f69682a.q("float_opt", "app_perf", map);
    }

    private final void u(dw.a aVar, boolean z10, gw.a aVar2) {
        cw.b.C0694b.a(this, false, 1, null);
        if (this.f55805b == null) {
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            this.f55805b = new VideoFloatView(applicationA);
        }
        VideoFloatView videoFloatView = this.f55805b;
        if (videoFloatView != null) {
            wf.a.C0922a.f(wf.a.f74274a, "VideoFloat", "showFloat", false, 4, null);
            a0.f55763a.a(aVar.k(), aVar.f());
            this.f55806c = true;
            videoFloatView.addToWindow(z10, aVar);
            videoFloatView.setVideoFloatListener(new a(aVar2, this));
        }
    }

    private final void v(FragmentActivity fragmentActivity, final boolean z10, final String str, final String str2, final String str3, final String str4, final Function1 function1) {
        cf.c.f16930a.e(fragmentActivity).b("android.permission.SYSTEM_ALERT_WINDOW").b().a(new df.b() {
            @Override
            public final void a(gf.f fVar, List list, boolean z11, boolean z12) {
                i.x(z10, this, str2, str3, str, str4, fVar, list, z11, z12);
            }
        }).c(new df.a() {
            @Override
            public final void a(BaseDialog baseDialog, Boolean bool, PermissionDialogClickType permissionDialogClickType) {
                i.y(this.f55793a, str2, str3, str, str4, baseDialog, bool, permissionDialogClickType);
            }
        }).d(new df.c() {
            @Override
            public final void a(boolean z11, List list, List list2) {
                i.z(this.f55798a, function1, z11, list, list2);
            }
        });
    }

    static void w(i iVar, FragmentActivity fragmentActivity, boolean z10, String str, String str2, String str3, String str4, Function1 function1, int i10, Object obj) {
        iVar.v(fragmentActivity, z10, str, str2, str3, str4, (i10 & 64) != 0 ? null : function1);
    }

    public static final void x(boolean z10, i iVar, String str, String str2, String str3, String str4, gf.f scope, List deniedList, boolean z11, boolean z12) {
        Intrinsics.h(scope, "scope");
        Intrinsics.h(deniedList, "deniedList");
        if (!z11) {
            wf.a.C0922a.f(wf.a.f74274a, "VideoFloat", "请求权限之后，", false, 4, null);
            return;
        }
        wf.a.C0922a.f(wf.a.f74274a, "VideoFloat", "请求权限前，提示弹窗，isFullLand：" + z10, false, 4, null);
        if (z10) {
            scope.d(new VideoFloatPermissionDialog(false, deniedList));
        } else {
            scope.e(deniedList, new ff.a(null, Utils.a().getString(R$string.video_float_tips_v2), Utils.a().getString(R$string.video_float_enable), Integer.valueOf(R$mipmap.video_float_ic_permission_img), Integer.valueOf(R$color.white_20), 1, null));
        }
        iVar.s(str, str2, str3, str4);
    }

    public static final void y(i iVar, String str, String str2, String str3, String str4, BaseDialog baseDialog, Boolean bool, PermissionDialogClickType permissionDialogClickType) {
        iVar.r(permissionDialogClickType == PermissionDialogClickType.POSITIVE, str, str2, str3, str4);
    }

    public static final void z(i iVar, Function1 function1, boolean z10, List grantedList, List deniedList) {
        Intrinsics.h(grantedList, "grantedList");
        Intrinsics.h(deniedList, "deniedList");
        wf.a.C0922a.f(wf.a.f74274a, "VideoFloat", "请求权限结果:" + z10, false, 4, null);
        iVar.t(true, z10);
        if (z10) {
            if (function1 != null) {
                function1.invoke(Boolean.TRUE);
            }
        } else if (function1 != null) {
            function1.invoke(Boolean.FALSE);
        }
    }

    @Override
    public boolean b(String tag) {
        dw.a floatBean;
        Intrinsics.h(tag, "tag");
        VideoFloatView videoFloatView = this.f55805b;
        if (videoFloatView == null || (floatBean = videoFloatView.getFloatBean()) == null) {
            return false;
        }
        return Intrinsics.c(tag, floatBean.r() + floatBean.q() + floatBean.c());
    }

    @Override
    public boolean c(com.transsion.player.orplayer.f fVar) {
        boolean zC;
        wf.a.C0922a c0922a = wf.a.f74274a;
        boolean z10 = this.f55806c;
        VideoFloatView videoFloatView = this.f55805b;
        wf.a.C0922a.f(c0922a, "VideoFloat", "1-isEnterFloat：" + z10 + ", " + (videoFloatView != null ? videoFloatView.getOrPlayer() : null) + ", " + fVar + " ", false, 4, null);
        if (!this.f55806c) {
            return false;
        }
        VideoFloatView videoFloatView2 = this.f55805b;
        if ((videoFloatView2 != null ? videoFloatView2.getOrPlayer() : null) == null) {
            zC = false;
        } else {
            VideoFloatView videoFloatView3 = this.f55805b;
            zC = Intrinsics.c(videoFloatView3 != null ? videoFloatView3.getOrPlayer() : null, fVar);
        }
        return zC;
    }

    @Override
    public void d() {
        t(false, p());
    }

    @Override
    public void e(FragmentActivity activity, final dw.a floatBean, final boolean z10, boolean z11, final Function1 function1, final gw.a aVar) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(floatBean, "floatBean");
        Function0 function0J = e0.f67859a.j();
        if (function0J == null || !((Boolean) function0J.invoke()).booleanValue()) {
            if (function1 != null) {
                function1.invoke(Boolean.FALSE);
            }
            wf.a.f74274a.c("VideoFloat", "单播放器 禁用pip功能", true);
            return;
        }
        floatBean.D(z10);
        if (p()) {
            wf.a.C0922a.f(wf.a.f74274a, "VideoFloat", "checkShowFloatView--has permission showFloat", false, 4, null);
            if (function1 != null) {
                function1.invoke(Boolean.TRUE);
            }
            u(floatBean, z10, aVar);
            return;
        }
        wf.a.f74274a.c("VideoFloat", "checkShowFloatView no permission proactive:" + z10, true);
        if (!z10) {
            if (function1 != null) {
                function1.invoke(Boolean.FALSE);
            }
        } else {
            String strH = floatBean.h();
            String strR = floatBean.r();
            UGCVideo uGCVideoV = floatBean.v();
            v(activity, z11, strH, strR, uGCVideoV != null ? uGCVideoV.getUgcVideoId() : null, floatBean.e(), new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return i.o(function1, this, floatBean, z10, aVar, ((Boolean) obj).booleanValue());
                }
            });
        }
    }

    @Override
    public void f(FragmentActivity activity, String str, String str2, String pageName, String str3) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(pageName, "pageName");
        Function0 function0J = e0.f67859a.j();
        if ((function0J == null || !((Boolean) function0J.invoke()).booleanValue()) && !cw.e.f58665a.b().c()) {
            com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f42221a;
            MMKV mmkvB = bVar.b();
            cw.b.a aVar = cw.b.f58659a;
            if (mmkvB.getBoolean(aVar.b(), false) || activity.isDestroyed() || activity.isFinishing()) {
                return;
            }
            bVar.b().putBoolean(aVar.b(), true);
            n(activity, false, pageName, str, str2, str3);
        }
    }

    @Override
    public void g(boolean z10) {
        if (!z10) {
            a0.f55763a.d();
        }
        this.f55806c = false;
        VideoFloatView videoFloatView = this.f55805b;
        if (videoFloatView != null) {
            videoFloatView.removeFromWindow();
        }
        this.f55805b = null;
    }

    @Override
    public boolean isPlaying() {
        VideoFloatView videoFloatView;
        if (this.f55806c && (videoFloatView = this.f55805b) != null) {
            return videoFloatView.isPlaying();
        }
        return false;
    }
}
