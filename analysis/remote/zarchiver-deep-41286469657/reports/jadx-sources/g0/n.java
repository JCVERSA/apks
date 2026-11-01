package g0;

import android.app.AlertDialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.ZArchiver;

public final class n extends i implements DialogInterface.OnClickListener, View.OnClickListener {

    public AlertDialog f979g;

    public class a implements DialogInterface.OnShowListener {

        public class ViewOnClickListenerC0017a implements View.OnClickListener {
            @Override
            public final void onClick(View view) {
                try {
                    ZArchiver zArchiverZ = ZArchiver.z();
                    if (zArchiverZ != null) {
                        h1.h.e(zArchiverZ, new Intent("android.intent.action.VIEW", Uri.parse("http://zdevs.ru/za/errors_desc.html")));
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }

        public a() {
        }

        @Override
        public final void onShow(DialogInterface dialogInterface) {
            n nVar = n.this;
            i.i(nVar.f979g);
            AlertDialog alertDialog = (AlertDialog) dialogInterface;
            Button button = alertDialog.getButton(-2);
            if (button != null) {
                button.setOnClickListener(nVar);
            }
            z0.e.j(alertDialog, new ViewOnClickListenerC0017a());
        }
    }

    public n(ru.zdevs.zarchiver.d dVar, Context context, e0.a.b[] bVarArr) {
        this.f965f = dVar;
        t(context, R.string.MES_END_WITH_ERROR, new c0.c(context, bVarArr));
        c();
    }

    @Override
    public final void e() {
        AlertDialog alertDialog = this.f979g;
        if (alertDialog != null) {
            alertDialog.dismiss();
            this.f979g = null;
        }
        g();
    }

    @Override
    public final int l() {
        return 4;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int i2) {
        i.d dVar;
        if (i2 == -1 && (dVar = this.f961b) != null) {
            dVar.a(this);
        }
        e();
    }

    public final void t(Context context, int i2, BaseAdapter baseAdapter) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(i2);
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.dlg_errors, (ViewGroup) null, false);
        builder.setView(viewInflate);
        ListView listView = (ListView) viewInflate.findViewById(R.id.lvErrors);
        listView.setAdapter((ListAdapter) baseAdapter);
        z0.e.l(listView);
        builder.setPositiveButton(R.string.BTN_OK, this);
        builder.setNegativeButton(R.string.BTN_COPY, this);
        boolean z2 = (baseAdapter instanceof c0.c) && ((c0.c) baseAdapter).f395c;
        if (Build.VERSION.SDK_INT >= 21 && z2) {
            builder.setNeutralButton("help", (DialogInterface.OnClickListener) null);
        }
        AlertDialog alertDialogCreate = builder.create();
        this.f979g = alertDialogCreate;
        alertDialogCreate.setCanceledOnTouchOutside(false);
        this.f979g.setOnShowListener(new a());
    }

    @Override
    public final void onClick(View view) {
        ClipboardManager clipboardManager;
        AlertDialog alertDialog = this.f979g;
        if (alertDialog == null || (clipboardManager = (ClipboardManager) alertDialog.getContext().getSystemService("clipboard")) == null) {
            return;
        }
        BaseAdapter baseAdapter = (BaseAdapter) ((ListView) this.f979g.findViewById(R.id.lvErrors)).getAdapter();
        StringBuilder sb = new StringBuilder();
        int count = baseAdapter.getCount();
        for (int i2 = 0; i2 < count; i2++) {
            sb.append(baseAdapter.getItem(i2).toString());
        }
        try {
            clipboardManager.setPrimaryClip(ClipData.newPlainText("ZA Errors", sb.length() > 1 ? sb.substring(1) : ""));
            if (Build.VERSION.SDK_INT < 33) {
                ZApp.i(R.string.MES_COPIED);
            }
        } catch (SecurityException unused) {
            ZApp.j("SecurityException");
        }
    }

    public n(ru.zdevs.zarchiver.d dVar, ZArchiver zArchiver, e0.i[] iVarArr) {
        this.f965f = dVar;
        t(zArchiver, iVarArr.length > 1 ? R.string.MES_SUCESSFUL_TESTS : R.string.MES_SUCESSFUL_TEST, new c0.k(zArchiver, iVarArr));
        c();
    }
}
