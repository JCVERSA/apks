package g0;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.os.Build;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ProgressBar;
import android.widget.TextView;
import ru.zdevs.zarchiver.R;

public final class y extends i implements DialogInterface.OnCancelListener, DialogInterface.OnKeyListener {

    public Dialog f1074g;

    public ProgressBar f1075h;

    public final int f1076i;

    public y(ru.zdevs.zarchiver.d dVar, Context context, int i2, int i3) {
        this(i3, context, context.getResources().getString(i2), dVar);
    }

    @Override
    public final void e() {
        Dialog dialog = this.f1074g;
        if (dialog != null) {
            try {
                dialog.dismiss();
            } catch (Exception unused) {
            }
            this.f1074g = null;
        }
        g();
    }

    @Override
    public final int l() {
        return 1;
    }

    @Override
    public final void n(Context context, Configuration configuration) {
        if (Build.VERSION.SDK_INT < 21 || (this.f1076i & 1) == 0) {
            return;
        }
        try {
            Window window = this.f1074g.getWindow();
            if (window == null) {
                return;
            }
            View viewFindViewById = this.f1074g.findViewById(R.id.sup_container);
            if (!z0.e.c(context, true, configuration)) {
                window.setFlags(0, 134217728);
                viewFindViewById.setPadding(0, 0, 0, 0);
            } else {
                window.setFlags(134217728, 134217728);
                int identifier = context.getResources().getIdentifier("navigation_bar_height", "dimen", "android");
                viewFindViewById.setPadding(0, 0, 0, identifier > 0 ? context.getResources().getDimensionPixelSize(identifier) : 0);
            }
        } catch (Exception unused) {
        }
    }

    @Override
    public final void onCancel(DialogInterface dialogInterface) {
        i.c cVar = this.f960a;
        if (cVar != null) {
            cVar.b(this);
        }
    }

    @Override
    public final boolean onKey(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() != 4 || keyEvent.getAction() != 1) {
            return false;
        }
        onCancel(dialogInterface);
        return false;
    }

    public final void t() {
        Dialog dialog = this.f1074g;
        if (dialog != null) {
            i.s(dialog);
        }
    }

    public y(int i2, Context context, String str, ru.zdevs.zarchiver.d dVar) {
        this.f965f = dVar;
        this.f1076i = i2;
        if (Build.VERSION.SDK_INT < 21 || (i2 & 1) == 0) {
            ProgressDialog progressDialog = new ProgressDialog(context);
            progressDialog.setProgressStyle(1);
            progressDialog.setIndeterminate(true);
            progressDialog.setProgressNumberFormat(null);
            progressDialog.setProgressPercentFormat(null);
            progressDialog.setTitle(R.string.app_name);
            progressDialog.setMessage(str);
            progressDialog.setCancelable(false);
            progressDialog.setOnKeyListener(this);
            progressDialog.setCanceledOnTouchOutside(false);
            this.f1074g = progressDialog;
            i.p(progressDialog);
        } else {
            View viewInflate = LayoutInflater.from(context).inflate(R.layout.dlg_bottom_process, (ViewGroup) null, false);
            this.f1075h = (ProgressBar) viewInflate.findViewById(R.id.progress);
            ((TextView) viewInflate.findViewById(R.id.title)).setText(str);
            a1.f.a aVar = new a1.f.a();
            aVar.f161a = viewInflate;
            aVar.f162b = false;
            aVar.f164d = context.getResources().getDimensionPixelSize(R.dimen.bottomsheet_dlg_width);
            aVar.f165e = 0;
            aVar.f166f = z0.e.c(context, true, null);
            aVar.f167g = false;
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(R.attr.bottomSheetStyle, typedValue, true);
            a1.f fVar = new a1.f(context, typedValue.resourceId, aVar);
            this.f1074g = fVar;
            fVar.setOnKeyListener(this);
        }
        c();
    }
}
