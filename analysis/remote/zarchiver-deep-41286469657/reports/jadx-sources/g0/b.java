package g0;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Handler;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListAdapter;
import android.widget.ListView;
import java.io.InvalidObjectException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.ui.text.ExEditText;

public final class b extends i implements DialogInterface.OnCancelListener, DialogInterface.OnClickListener, View.OnClickListener, AdapterView.OnItemClickListener, w0.a.c, TextWatcher {

    public AlertDialog f917g;

    public AlertDialog f918h;

    public String f919i;

    public String f920j;

    public final String f921k;

    public final w0.a f922l = new w0.a();

    public RunnableC0016b f923m;

    public static class a implements w0.a.b {

        public final ArrayList<c0.a.C0003a> f924a;

        public a(ArrayList<c0.a.C0003a> arrayList) {
            this.f924a = arrayList;
        }

        @Override
        public final int a() {
            return 0;
        }
    }

    public static class RunnableC0016b implements Runnable {

        public final Dialog f925a;

        public final CharSequence f926b;

        public RunnableC0016b(Dialog dialog, CharSequence charSequence) {
            this.f925a = dialog;
            this.f926b = charSequence;
        }

        @Override
        public final void run() {
            ListView listView = (ListView) this.f925a.findViewById(R.id.lvPopupList);
            if (listView != null) {
                c0.a aVar = (c0.a) listView.getAdapter();
                aVar.getClass();
                CharSequence charSequence = this.f926b;
                int length = charSequence.length();
                ArrayList<c0.a.C0003a> arrayList = aVar.f374b;
                if (length != 0) {
                    String string = charSequence.toString();
                    ArrayList<c0.a.C0003a> arrayList2 = new ArrayList<>(arrayList.size());
                    for (c0.a.C0003a c0003a : arrayList) {
                        if (c0003a.f378b.toLowerCase().contains(string) || c0003a.f377a.packageName.toLowerCase().contains(string)) {
                            arrayList2.add(c0003a);
                        }
                    }
                    aVar.f375c = arrayList2;
                    aVar.f376d = string;
                } else {
                    aVar.f375c = arrayList;
                    aVar.f376d = null;
                }
                aVar.notifyDataSetChanged();
            }
        }
    }

    public static class c extends w0.c {
        @Override
        public final w0.a.b f() {
            ZApp zApp;
            Thread threadCurrentThread = Thread.currentThread();
            int priority = threadCurrentThread.getPriority();
            threadCurrentThread.setPriority(10);
            List listO = a0.c.o();
            if (listO == null || (zApp = ZApp.f1434c) == null) {
                return null;
            }
            PackageManager packageManager = zApp.getPackageManager();
            ArrayList arrayList = new ArrayList(listO.size());
            Iterator it = listO.iterator();
            while (it.hasNext()) {
                arrayList.add(new c0.a.C0003a((PackageInfo) it.next(), packageManager));
            }
            Collections.sort(arrayList);
            threadCurrentThread.setPriority(priority);
            return new a(arrayList);
        }

        @Override
        public final int j() {
            return 0;
        }
    }

    public b(ru.zdevs.zarchiver.d dVar, Context context, String str) {
        this.f965f = dVar;
        this.f919i = "";
        this.f920j = "";
        this.f921k = str;
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(R.string.NF_TTL_NEW_FOLDER);
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.dlg_app_folder_name, (ViewGroup) null, false);
        builder.setView(viewInflate);
        builder.setPositiveButton(R.string.BTN_OK, this);
        builder.setNegativeButton(R.string.BTN_CANCEL, this);
        builder.setOnCancelListener(this);
        ExEditText exEditText = (ExEditText) viewInflate.findViewById(R.id.edt_text);
        exEditText.setKeyListener(null);
        exEditText.setText(this.f919i);
        ((Button) viewInflate.findViewById(R.id.btn_select)).setOnClickListener(this);
        AlertDialog alertDialogCreate = builder.create();
        this.f917g = alertDialogCreate;
        alertDialogCreate.setCanceledOnTouchOutside(false);
        i.p(this.f917g);
        c();
    }

    @Override
    public final void afterTextChanged(Editable editable) {
    }

    @Override
    public final void b(w0.a.b bVar) {
        a aVar = (a) bVar;
        AlertDialog alertDialog = this.f918h;
        if (alertDialog == null) {
            return;
        }
        ListView listView = (ListView) alertDialog.findViewById(R.id.lvPopupList);
        if (listView == null || aVar.f924a == null) {
            this.f918h.dismiss();
            return;
        }
        this.f918h.findViewById(R.id.pbLoading).setVisibility(4);
        ExEditText exEditText = (ExEditText) this.f918h.findViewById(R.id.etFilter);
        boolean z2 = false;
        exEditText.setVisibility(0);
        listView.setAdapter((ListAdapter) new c0.a(this.f918h.getContext(), aVar.f924a));
        if (exEditText.requestFocus() && ((InputMethodManager) exEditText.getContext().getSystemService("input_method")).showSoftInput(exEditText, 1)) {
            z2 = true;
        }
        exEditText.f1979a = !z2;
        exEditText.addTextChangedListener(this);
    }

    @Override
    public final void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        try {
            Handler handlerF = ZApp.f();
            RunnableC0016b runnableC0016b = this.f923m;
            if (runnableC0016b != null) {
                handlerF.removeCallbacks(runnableC0016b);
            }
            AlertDialog alertDialog = this.f918h;
            if (alertDialog != null && charSequence != null) {
                RunnableC0016b runnableC0016b2 = new RunnableC0016b(alertDialog, charSequence);
                this.f923m = runnableC0016b2;
                if (Build.VERSION.SDK_INT >= 29) {
                    handlerF.postDelayed(runnableC0016b2, 4000L);
                } else {
                    handlerF.postDelayed(runnableC0016b2, 2000L);
                }
            }
        } catch (InvalidObjectException unused) {
        }
    }

    @Override
    public final void e() {
        w0.a aVar = this.f922l;
        aVar.d(this);
        aVar.f(Integer.MAX_VALUE, 1, -1);
        AlertDialog alertDialog = this.f918h;
        if (alertDialog != null) {
            alertDialog.dismiss();
            this.f918h = null;
        }
        AlertDialog alertDialog2 = this.f917g;
        if (alertDialog2 != null) {
            EditText editText = (EditText) alertDialog2.findViewById(R.id.edt_text);
            if (editText != null) {
                this.f919i = editText.getText().toString();
            }
            this.f917g.dismiss();
            this.f917g = null;
        }
        g();
    }

    @Override
    public final int l() {
        return 17;
    }

    @Override
    public final void onCancel(DialogInterface dialogInterface) {
        i.c cVar = this.f960a;
        if (cVar != null) {
            cVar.b(this);
        }
        e();
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int i2) {
        i.c cVar;
        i.d dVar;
        EditText editText;
        AlertDialog alertDialog = this.f917g;
        if (alertDialog != null && (editText = (EditText) alertDialog.findViewById(R.id.edt_text)) != null) {
            this.f919i = editText.getText().toString();
        }
        if (i2 == -1 && (dVar = this.f961b) != null) {
            dVar.a(this);
        }
        if (i2 == -2 && (cVar = this.f960a) != null) {
            cVar.b(this);
        }
        e();
    }

    @Override
    public final void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
        if (i2 < 0 || adapterView == null || i2 >= adapterView.getCount()) {
            return;
        }
        this.f919i = ((c0.a.C0003a) adapterView.getItemAtPosition(i2)).f377a.packageName;
        AlertDialog alertDialog = this.f917g;
        if (alertDialog != null) {
            ((EditText) alertDialog.findViewById(R.id.edt_text)).setText(this.f919i);
        }
        AlertDialog alertDialog2 = this.f918h;
        if (alertDialog2 != null) {
            alertDialog2.dismiss();
        }
    }

    @Override
    public final void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
    }

    @Override
    public final void onClick(View view) {
        RunnableC0016b runnableC0016b;
        Context context;
        if (view.getId() == R.id.etFilter) {
            try {
                Handler handlerF = ZApp.f();
                if (Build.VERSION.SDK_INT >= 29 && (runnableC0016b = this.f923m) != null && handlerF.hasCallbacks(runnableC0016b)) {
                    handlerF.removeCallbacks(this.f923m);
                    handlerF.post(this.f923m);
                    this.f923m = null;
                }
            } catch (InvalidObjectException unused) {
            }
            ExEditText exEditText = (ExEditText) view;
            exEditText.f1979a = false;
            ((InputMethodManager) exEditText.getContext().getSystemService("input_method")).hideSoftInputFromWindow(exEditText.getWindowToken(), 0);
            return;
        }
        AlertDialog alertDialog = this.f917g;
        if (alertDialog == null || (context = alertDialog.getContext()) == null) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(R.string.NF_TTL_NEW_FOLDER);
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.dlg_app_list, (ViewGroup) null, false);
        builder.setView(viewInflate);
        ListView listView = (ListView) viewInflate.findViewById(R.id.lvPopupList);
        listView.setChoiceMode(1);
        listView.setOnItemClickListener(this);
        ExEditText exEditText2 = (ExEditText) viewInflate.findViewById(R.id.etFilter);
        exEditText2.setRawInputType(1);
        exEditText2.setImeOptions(3);
        exEditText2.f1980b = this;
        exEditText2.setOnEditorActionListener(exEditText2);
        exEditText2.f1981c = 0;
        builder.setNegativeButton(R.string.BTN_CANCEL, (DialogInterface.OnClickListener) null);
        AlertDialog alertDialogCreate = builder.create();
        this.f918h = alertDialogCreate;
        alertDialogCreate.setCanceledOnTouchOutside(false);
        i.p(this.f918h);
        this.f918h.show();
        new c().g(this.f917g.getContext(), this.f922l);
    }
}
