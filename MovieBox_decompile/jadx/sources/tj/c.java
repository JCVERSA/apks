package tj;

import android.app.Activity;
import android.text.TextUtils;
import ci.p;
import com.blankj.utilcode.util.o;
import com.transsion.bean.HomePopupEntity;
import com.transsion.bean.HomePopupInfo;
import com.transsion.bean.HomePopupRequestEntity;
import com.transsion.commercialization.dialog.TaskCommonDialog;
import com.transsion.commercialization.dialog.TrendingFloatView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class c implements wj.a {

    public static final a f72754d = new a(null);

    private TrendingFloatView f72755a;

    private final Lazy f72756b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            c.d();
            return null;
        }
    });

    private WeakReference f72757c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static e d() {
        i();
        return null;
    }

    private final String e() {
        String simpleName = c.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    private final List f(HomePopupEntity homePopupEntity, boolean z10, String str) {
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f42221a;
        String string = bVar.b().getString("global_dialog_date", "");
        String strB = p.b(p.f16947a, Long.valueOf((homePopupEntity != null ? homePopupEntity.getTs() : 0L) * 1000), null, 2, null);
        if (TextUtils.equals(strB, string) || !z10) {
            String string2 = Intrinsics.c(str, "popup") ? bVar.b().getString("global_dialog_history", null) : bVar.b().getString("global_widget_history", null);
            if (string2 == null) {
                return new ArrayList();
            }
            Object objE = o.e(string2, o.g(HomePopupRequestEntity.class));
            Intrinsics.g(objE, "fromJson(...)");
            return (List) objE;
        }
        wf.a.C0922a.l(wf.a.f74274a, "zxb_popup", e() + " --> getDialogRecord() --> 不是同一天数据，return mutableListOf() --> currentDate = " + strB + " -- globalDialogDate = " + string + " --> 不是同一天数据，需要清空本地保存的数据", false, 4, null);
        if (Intrinsics.c(str, "popup")) {
            bVar.b().putString("global_dialog_history", null);
        } else {
            bVar.b().putString("global_widget_history", null);
        }
        return new ArrayList();
    }

    static List g(c cVar, HomePopupEntity homePopupEntity, boolean z10, String str, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        if ((i10 & 4) != 0) {
            str = "popup";
        }
        return cVar.f(homePopupEntity, z10, str);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    private final void h(HomePopupEntity homePopupEntity, String str) {
        HomePopupInfo widget;
        HomePopupInfo homePopupInfo;
        if (Intrinsics.c(str, "popup")) {
            if (homePopupEntity != null) {
                widget = homePopupEntity.getPopup();
                homePopupInfo = widget;
            } else {
                homePopupInfo = null;
            }
        } else if (homePopupEntity != null) {
            widget = homePopupEntity.getWidget();
            homePopupInfo = widget;
        } else {
            homePopupInfo = null;
        }
        if (homePopupInfo == null) {
            wf.a.C0922a.l(wf.a.f74274a, "zxb_popup", e() + " --> saveDialogRecord() --> popup == null --> 保存数据异常 -- type = " + str, false, 4, null);
            return;
        }
        List<HomePopupRequestEntity> listG = g(this, homePopupEntity, false, str, 2, null);
        HomePopupRequestEntity homePopupRequestEntity = null;
        for (HomePopupRequestEntity homePopupRequestEntity2 : listG) {
            if (homePopupRequestEntity2 != null && homePopupRequestEntity2.getId() == homePopupInfo.getId()) {
                homePopupRequestEntity = homePopupRequestEntity2;
            }
        }
        if (homePopupRequestEntity == null) {
            listG.add(new HomePopupRequestEntity(homePopupInfo.getId(), Long.valueOf(homePopupEntity != null ? homePopupEntity.getTs() : 0L), 1));
        } else {
            homePopupRequestEntity.setCount(homePopupRequestEntity.getCount() + 1);
            homePopupRequestEntity.setTs(homePopupEntity != null ? Long.valueOf(homePopupEntity.getTs()) : null);
        }
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f42221a;
        bVar.b().putString(Intrinsics.c(str, "popup") ? "global_dialog_history" : "global_widget_history", o.j(listG));
        bVar.b().putString("global_dialog_date", p.b(p.f16947a, Long.valueOf((homePopupEntity != null ? homePopupEntity.getTs() : 0L) * 1000), null, 2, null));
        wf.a.C0922a.f(wf.a.f74274a, "zxb_popup", e() + " --> saveDialogRecord() --> type = " + str + " --> 展示记录保存 --> homePopup = " + homePopupEntity, false, 4, null);
    }

    private static final e i() {
        android.support.v4.media.session.c.a(kg.c.f63982e.a().h(e.class));
        return null;
    }

    public static final void j(HomePopupEntity homePopupEntity, Function1 function1, Activity activity) {
        new TaskCommonDialog().x0(homePopupEntity).w0(function1).k0(activity, "TaskCommonDialog");
    }

    @Override
    public void a(HomePopupEntity homePopupEntity) {
        h(homePopupEntity, "widget");
    }

    @Override
    public void b(final HomePopupEntity homePopupEntity, final Function1 callback) {
        Intrinsics.h(callback, "callback");
        final Activity activityB = com.blankj.utilcode.util.a.b();
        if (activityB != null) {
            activityB.runOnUiThread(new Runnable() {
                @Override
                public final void run() {
                    c.j(homePopupEntity, callback, activityB);
                }
            });
        }
    }

    @Override
    public void onDestroy() {
        this.f72755a = null;
        WeakReference weakReference = this.f72757c;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.f72757c = null;
    }
}
