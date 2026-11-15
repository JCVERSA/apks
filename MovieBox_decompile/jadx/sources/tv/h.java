package tv;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import com.blankj.utilcode.util.i;
import com.transsion.version.update.NoticeConfig;
import com.transsion.version.update.R$string;
import com.transsion.version.update.R$style;
import com.transsion.version.update.RemoteVersionInfo;
import com.transsion.version.update.UpdateManager;
import kj.j;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class h extends j {

    public static final a f72860g = new a(null);

    private final sv.b f72861b;

    private Function1 f72862c;

    private String f72863d;

    private boolean f72864e;

    private RemoteVersionInfo f72865f;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final h a(Context context, RemoteVersionInfo remoteVersionInfo, boolean z10, Function1 callback) {
            Intrinsics.h(context, "context");
            Intrinsics.h(remoteVersionInfo, "remoteVersionInfo");
            Intrinsics.h(callback, "callback");
            h hVar = new h(context);
            hVar.o(remoteVersionInfo, z10);
            hVar.n(callback);
            return hVar;
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(Context context) {
        super(context, R$style.BottomDialogTheme);
        Intrinsics.h(context, "context");
        sv.b bVarC = sv.b.c(LayoutInflater.from(context), null, false);
        Intrinsics.g(bVarC, "inflate(...)");
        this.f72861b = bVarC;
        this.f72863d = "";
        setContentView(bVarC.getRoot());
        setCanceledOnTouchOutside(false);
        Window window = getWindow();
        if (window != null) {
            window.setGravity(80);
            window.setDimAmount(0.5f);
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes = attributes == null ? new WindowManager.LayoutParams() : attributes;
            attributes.width = oj.a.f67826a.a(context);
            attributes.height = -2;
            window.setBackgroundDrawable(null);
            window.setAttributes(attributes);
        }
        setOnDismissListener(new DialogInterface.OnDismissListener() {
            @Override
            public final void onDismiss(DialogInterface dialogInterface) {
                h.l(this.f72856a, dialogInterface);
            }
        });
        p();
    }

    public static final void l(h hVar, DialogInterface dialogInterface) {
        hVar.e();
    }

    private final void m(RemoteVersionInfo remoteVersionInfo) {
        String updateVersionName;
        NoticeConfig noticeConfig;
        NoticeConfig noticeConfig2;
        NoticeConfig noticeConfig3;
        boolean z10 = remoteVersionInfo != null && remoteVersionInfo.getForceUpdate();
        String updateDesc = null;
        String updateTitle = (remoteVersionInfo == null || (noticeConfig3 = remoteVersionInfo.getNoticeConfig()) == null) ? null : noticeConfig3.getUpdateTitle();
        if (remoteVersionInfo != null && (noticeConfig2 = remoteVersionInfo.getNoticeConfig()) != null) {
            updateDesc = noticeConfig2.getUpdateDesc();
        }
        i.f(remoteVersionInfo != null ? remoteVersionInfo.getInstallPkgSize() : 0L, 1048576);
        if (remoteVersionInfo == null || (noticeConfig = remoteVersionInfo.getNoticeConfig()) == null || (updateVersionName = noticeConfig.getUpdateVersionName()) == null) {
            updateVersionName = "";
        }
        this.f72863d = updateVersionName;
        try {
            Drawable applicationIcon = getContext().getPackageManager().getApplicationIcon(getContext().getPackageName());
            Intrinsics.g(applicationIcon, "getApplicationIcon(...)");
            this.f72861b.f72426d.setImageDrawable(applicationIcon);
        } catch (Exception unused) {
            this.f72861b.f72426d.setVisibility(8);
        }
        this.f72861b.f72433k.setText(getContext().getString(R$string.version, this.f72863d));
        if (updateTitle != null && updateTitle.length() != 0) {
            this.f72861b.f72432j.setText(updateTitle);
        }
        if (updateDesc != null && updateDesc.length() != 0) {
            this.f72861b.f72429g.setText(updateDesc);
        }
        setCancelable(!z10);
        setCanceledOnTouchOutside(true ^ z10);
        this.f72861b.f72424b.setVisibility(z10 ? 8 : 0);
    }

    private final void p() {
        this.f72861b.f72424b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                h.q(this.f72857a, view);
            }
        });
        this.f72861b.f72425c.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                h.r(this.f72858a, view);
            }
        });
        setOnShowListener(new DialogInterface.OnShowListener() {
            @Override
            public final void onShow(DialogInterface dialogInterface) {
                h.s(this.f72859a, dialogInterface);
            }
        });
    }

    public static final void q(h hVar, View view) {
        hVar.dismiss();
        Function1 function1 = hVar.f72862c;
        if (function1 != null) {
            function1.invoke(Boolean.FALSE);
        }
    }

    public static final void r(h hVar, View view) {
        RemoteVersionInfo remoteVersionInfo = hVar.f72865f;
        if (remoteVersionInfo == null || !remoteVersionInfo.getForceUpdate()) {
            hVar.dismiss();
        }
        Function1 function1 = hVar.f72862c;
        if (function1 != null) {
            function1.invoke(Boolean.TRUE);
        }
    }

    public static final void s(h hVar, DialogInterface dialogInterface) {
        wf.a.C0922a.f(wf.a.f74274a, "update", "onShow Listener  " + hVar, false, 4, null);
        if (hVar.f72864e) {
            return;
        }
        UpdateManager.f55354f.a().h(hVar.f72863d);
    }

    @Override
    public boolean b() {
        if (this.f72864e) {
            return true;
        }
        wf.a.C0922a.g(wf.a.f74274a, "被弹窗拦截策略拦截 " + this, false, 2, null);
        return false;
    }

    @Override
    public void f() {
        super.f();
        wf.a.C0922a.f(wf.a.f74274a, "update", "onShow " + this, false, 4, null);
    }

    public final void n(Function1 callback) {
        Intrinsics.h(callback, "callback");
        this.f72862c = callback;
    }

    public final void o(RemoteVersionInfo remoteVersionInfo, boolean z10) {
        this.f72865f = remoteVersionInfo;
        m(remoteVersionInfo);
        this.f72864e = z10;
    }
}
