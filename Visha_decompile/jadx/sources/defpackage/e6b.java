package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import com.transsion.playercommon.core.MainApp;
import com.transsion.sniffer_load.R;
import com.transsion.utils.ToastUtils;
import com.transsion.widgetslib.dialog.d;

public class e6b {
    public Context a;
    public c b;

    public class a implements DialogInterface.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            if (e6b.this.b != null) {
                e6b.this.b.a(true);
            }
            dialogInterface.dismiss();
        }
    }

    public class b implements DialogInterface.OnClickListener {
        public b() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            if (e6b.this.b != null) {
                e6b.this.b.a(false);
            }
            dialogInterface.dismiss();
        }
    }

    public interface c {
        void a(boolean z);
    }

    public e6b(Context context, c cVar) {
        this.a = context;
        this.b = cVar;
    }

    public void b(boolean z) {
        int i = MainApp.w;
        if (i == 0) {
            ToastUtils.s(R.string.net_not_connect);
            c cVar = this.b;
            if (cVar != null) {
                cVar.a(false);
                return;
            }
            return;
        }
        if (i != 2 && i != 3 && i != 4 && i != 5) {
            c cVar2 = this.b;
            if (cVar2 != null) {
                cVar2.a(true);
                return;
            }
            return;
        }
        if (!MainApp.h && !MainApp.i) {
            c(this.a, z);
            return;
        }
        c cVar3 = this.b;
        if (cVar3 != null) {
            cVar3.a(true);
        }
    }

    public final void c(Context context, boolean z) {
        int i;
        if (context instanceof Activity) {
            Activity activity = (Activity) context;
            if (activity.isFinishing() || activity.isDestroyed()) {
                return;
            }
            d.a aVar = new d.a(context);
            boolean zA = com.transsion.utils.a.A();
            if (z) {
                i = com.transsion.playercommon.R.string.visha_non_wifi_upload_warning;
            } else {
                i = zA ? com.transsion.playercommon.R.string.tablet_visha_non_wifi_download_warning : com.transsion.playercommon.R.string.visha_non_wifi_download_warning;
            }
            aVar.j(i).m(com.transsion.playercommon.R.string.cancel, new b()).u(com.transsion.playercommon.R.string.ok, new a()).F();
        }
    }
}
