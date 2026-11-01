package g0;

import android.app.AlertDialog;
import android.content.Context;
import android.content.res.Configuration;
import android.text.format.DateFormat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ScrollView;
import android.widget.TextView;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZArchiver;

public final class c extends i implements View.OnClickListener {

    public static final int[] f928n = {R.id.btn_cancel, R.id.btn_rename, R.id.btn_replace, R.id.btn_skip};

    public AlertDialog f929g;

    public int f930h;

    public boolean f931i;

    public ScrollView f932j;

    public boolean f933k;

    public boolean f934l;

    public boolean f935m;

    public c(ru.zdevs.zarchiver.d dVar, ZArchiver zArchiver, e0.c cVar) {
        this.f965f = dVar;
        this.f933k = false;
        this.f934l = false;
        this.f935m = false;
        AlertDialog.Builder builder = new AlertDialog.Builder(zArchiver);
        builder.setTitle(zArchiver.getString(R.string.OVERW_TTL_ASK_OVERWRITE));
        Configuration configuration = zArchiver.getResources().getConfiguration();
        int i2 = configuration.orientation;
        this.f930h = (i2 == 2 || (configuration.screenLayout & 15) > 3) ? R.layout.dlg_ask_overwrite_land : R.layout.dlg_ask_overwrite;
        this.f931i = i2 == 2 && (configuration.screenLayout & 15) < 3;
        View viewInflate = LayoutInflater.from(zArchiver).inflate(this.f930h, (ViewGroup) null, false);
        ScrollView scrollView = new ScrollView(zArchiver);
        this.f932j = scrollView;
        scrollView.addView(viewInflate);
        builder.setView(this.f932j);
        ((TextView) viewInflate.findViewById(R.id.text)).setText(zArchiver.getString(R.string.OVERW_TEXT).replace("%1", cVar.f665d));
        ((TextView) viewInflate.findViewById(R.id.tv_src)).setText(t(zArchiver, cVar.f663b, cVar.f664c));
        ((TextView) viewInflate.findViewById(R.id.tv_dest)).setText(t(zArchiver, cVar.f666e, cVar.f667f));
        ((CheckBox) viewInflate.findViewById(R.id.cb_to_all)).setChecked(this.f933k);
        int[] iArr = f928n;
        for (int i3 = 0; i3 < 4; i3++) {
            viewInflate.findViewById(iArr[i3]).setOnClickListener(this);
        }
        builder.setCancelable(false);
        AlertDialog alertDialogCreate = builder.create();
        this.f929g = alertDialogCreate;
        alertDialogCreate.setCanceledOnTouchOutside(false);
        i.p(this.f929g);
        c();
    }

    public static String t(ZArchiver zArchiver, long j2, int i2) {
        return v0.h.b(j2, 0, zArchiver.getString(R.string.FINFO_SIZE)) + '\n' + zArchiver.getString(R.string.FINFO_LAST_MOD) + ' ' + DateFormat.getDateFormat(zArchiver).format(Long.valueOf(((long) i2) * 1000)) + ' ' + DateFormat.getTimeFormat(zArchiver).format(Integer.valueOf(i2));
    }

    @Override
    public final void e() {
        AlertDialog alertDialog = this.f929g;
        if (alertDialog != null) {
            this.f933k = ((CheckBox) alertDialog.findViewById(R.id.cb_to_all)).isChecked();
        }
        AlertDialog alertDialog2 = this.f929g;
        if (alertDialog2 != null) {
            alertDialog2.dismiss();
            this.f929g = null;
        }
        g();
    }

    @Override
    public final int l() {
        return 9;
    }

    @Override
    public final void n(Context context, Configuration configuration) {
        if (this.f929g == null || this.f932j == null) {
            return;
        }
        int i2 = configuration.orientation;
        int i3 = (i2 == 2 || (configuration.screenLayout & 15) > 3) ? R.layout.dlg_ask_overwrite_land : R.layout.dlg_ask_overwrite;
        if (this.f930h == i3) {
            return;
        }
        this.f930h = i3;
        this.f931i = i2 == 2 && (configuration.screenLayout & 15) < 3;
        View viewInflate = LayoutInflater.from(context).inflate(this.f930h, (ViewGroup) null, false);
        i.m(this.f932j, viewInflate);
        i.q(this.f929g, this.f931i);
        int[] iArr = f928n;
        for (int i4 = 0; i4 < 4; i4++) {
            viewInflate.findViewById(iArr[i4]).setOnClickListener(this);
        }
        this.f932j.removeAllViews();
        this.f932j.addView(viewInflate);
    }

    @Override
    public final void onClick(View view) {
        AlertDialog alertDialog = this.f929g;
        if (alertDialog != null) {
            this.f933k = ((CheckBox) alertDialog.findViewById(R.id.cb_to_all)).isChecked();
        }
        int id = view.getId();
        if (id == R.id.btn_skip) {
            i.c cVar = this.f960a;
            if (cVar != null) {
                cVar.b(this);
            }
        } else if (id == R.id.btn_replace) {
            i.d dVar = this.f961b;
            if (dVar != null) {
                dVar.a(this);
            }
        } else if (id == R.id.btn_rename) {
            this.f935m = true;
            i.d dVar2 = this.f961b;
            if (dVar2 != null) {
                dVar2.a(this);
            }
        } else if (id == R.id.btn_cancel) {
            this.f934l = true;
            i.c cVar2 = this.f960a;
            if (cVar2 != null) {
                cVar2.b(this);
            }
        }
        e();
    }
}
