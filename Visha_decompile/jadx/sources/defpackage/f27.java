package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;
import com.transsion.sniffer_load.R;
import com.transsion.widgetslib.dialog.d;

public abstract class f27 {
    public static d a;

    public class a implements DialogInterface.OnDismissListener {
        @Override
        public void onDismiss(DialogInterface dialogInterface) {
            f27.a = null;
        }
    }

    public class b implements DialogInterface.OnClickListener {
        public final c b;
        public final CheckBox c;

        public b(c cVar, CheckBox checkBox) {
            this.b = cVar;
            this.c = checkBox;
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            this.b.a(this.c.isChecked());
            dialogInterface.dismiss();
            f27.a = null;
        }
    }

    public interface c {
        void a(boolean z);
    }

    public static void a(Context context, String str, String str2, String str3, c cVar) {
        d dVar = a;
        if (dVar == null || !dVar.isShowing()) {
            boolean z = context instanceof Activity;
            if (z && ((Activity) context).isFinishing()) {
                return;
            }
            if (z && ((Activity) context).isDestroyed()) {
                return;
            }
            View viewInflate = LayoutInflater.from(context).inflate(R.layout.layout_notice, (ViewGroup) null, false);
            ((TextView) viewInflate.findViewById(R.id.tv_content)).setText(str);
            ((TextView) viewInflate.findViewById(R.id.tv_notice)).setText(str2);
            a = new d.a(context).B(str3).E(viewInflate).f(false).u(R.string.got_it, new b(cVar, (CheckBox) viewInflate.findViewById(R.id.cb_check))).s(new a()).F();
        }
    }
}
