package g0;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ProgressBar;
import android.widget.TextView;
import java.util.Locale;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZArchiver;

public final class a0 extends i implements DialogInterface.OnCancelListener, DialogInterface.OnClickListener, View.OnClickListener {

    public AlertDialog f912g;

    public ProgressBar f913h;

    public TextView f914i;

    public TextView f915j;

    public TextView f916k;

    public a0(ru.zdevs.zarchiver.d dVar, ZArchiver zArchiver, int i2) {
        this.f965f = dVar;
        AlertDialog.Builder builder = new AlertDialog.Builder(zArchiver);
        View viewInflate = LayoutInflater.from(zArchiver).inflate(R.layout.dlg_progress, (ViewGroup) null, false);
        builder.setView(viewInflate);
        TextView textView = (TextView) viewInflate.findViewById(R.id.tvProgress);
        if (textView != null) {
            textView.setText(zArchiver.getResources().getString(i2));
        }
        this.f913h = (ProgressBar) viewInflate.findViewById(R.id.pbProgress);
        this.f914i = (TextView) viewInflate.findViewById(R.id.tvProgressPercent);
        this.f915j = (TextView) viewInflate.findViewById(R.id.tvProgressName);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.tvProgressCaption);
        this.f916k = textView2;
        textView2.setVisibility(8);
        z0.f.g(this.f914i);
        z0.f.g(this.f915j);
        z0.f.g(this.f916k);
        builder.setPositiveButton(R.string.BTN_HIDE, this);
        builder.setNegativeButton(R.string.BTN_CANCEL, this);
        builder.setOnCancelListener(this);
        AlertDialog alertDialogCreate = builder.create();
        this.f912g = alertDialogCreate;
        alertDialogCreate.setCanceledOnTouchOutside(false);
        i.p(this.f912g);
        this.f913h.setIndeterminate(true);
        CheckBox checkBox = (CheckBox) viewInflate.findViewById(R.id.cbKeepScreenOn);
        checkBox.setOnClickListener(new z(this, checkBox));
        c();
    }

    @Override
    public final void e() {
        AlertDialog alertDialog = this.f912g;
        if (alertDialog != null) {
            try {
                alertDialog.dismiss();
            } catch (Exception unused) {
            }
            this.f912g = null;
        }
        this.f913h = null;
        this.f914i = null;
        this.f915j = null;
        this.f916k = null;
        g();
    }

    @Override
    public final int l() {
        return 2;
    }

    @Override
    public final void onCancel(DialogInterface dialogInterface) {
        i.c cVar = this.f960a;
        if (cVar != null) {
            cVar.b(this);
        }
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int i2) {
        i.c cVar;
        ZArchiver zArchiverZ;
        if (i2 == -1) {
            if (h1.h.c()) {
                i.d dVar = this.f961b;
                if (dVar != null) {
                    dVar.a(this);
                }
                e();
            } else if (Build.VERSION.SDK_INT >= 33 && (zArchiverZ = ZArchiver.z()) != null) {
                zArchiverZ.requestPermissions(new String[]{"android.permission.POST_NOTIFICATIONS"}, 0);
            }
        }
        if (i2 != -2 || (cVar = this.f960a) == null) {
            return;
        }
        cVar.b(this);
    }

    public final void t(int i2, int i3) {
        String str;
        float f2;
        String str2;
        String str3;
        if (this.f912g != null) {
            if (i2 > 0) {
                this.f913h.setIndeterminate(false);
                if (i3 >= 0) {
                    if (i3 > 102400) {
                        f2 = i3 / 102400.0f;
                        str2 = v0.h.f2193e;
                    } else {
                        f2 = i3 / 100.0f;
                        str2 = v0.h.f2194f;
                    }
                    if (i3 < 10) {
                        str3 = "%d%%\n%.2f%s";
                    } else {
                        str3 = i3 < 100 ? "%d%%\n%.1f%s" : "%d%%\n%.0f%s";
                    }
                    str = String.format(Locale.ENGLISH, str3, Integer.valueOf(i2), Float.valueOf(f2), str2);
                } else {
                    str = String.format(Locale.ENGLISH, "%d%%", Integer.valueOf(i2));
                }
                this.f914i.setText(str);
            } else {
                this.f913h.setIndeterminate(false);
                this.f914i.setText("");
            }
            this.f913h.setProgress(i2);
            this.f913h.postInvalidate();
            this.f914i.postInvalidate();
        }
    }

    @Override
    public final void onClick(View view) {
        if (view.getTag() != null) {
            onClick(this.f912g, ((Integer) view.getTag()).intValue());
        }
    }
}
