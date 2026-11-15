package com.transsion.widgetslib.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.TextView;
import com.transsion.widgetslib.R;
import com.transsion.widgetslib.view.OSLoadingView;
import defpackage.olb;

public class b {
    public Context a;
    public d.a b;
    public String c;
    public OSLoadingView d;
    public d e;
    public boolean f;

    public class a implements DialogInterface.OnDismissListener {
        public a() {
        }

        @Override
        public void onDismiss(DialogInterface dialogInterface) {
            if (b.this.d != null) {
                b.this.d.release();
            }
        }
    }

    public b(Context context) {
        this(context, false);
    }

    public d b() {
        View viewInflate = olb.Z(this.a) ? LayoutInflater.from(this.a).inflate(R.layout.os_ultra_small_dialog_loading_bottom, (ViewGroup) null) : LayoutInflater.from(this.a).inflate(R.layout.os_dialog_loading_bottom, (ViewGroup) null);
        ((TextView) viewInflate.findViewById(R.id.messageTv)).setText(this.c);
        this.d = (OSLoadingView) viewInflate.findViewById(R.id.osLoading);
        this.b.E(viewInflate);
        d dVarA = this.b.a();
        Window window = dVarA.getWindow();
        window.setWindowAnimations(R.style.OsInputDialogAnimStyle);
        if (!this.f) {
            dVarA.setOnDismissListener(new a());
        }
        window.setSoftInputMode(0);
        return dVarA;
    }

    public b c(int i) {
        d(this.a.getResources().getString(i));
        return this;
    }

    public b d(String str) {
        this.c = str;
        return this;
    }

    public d e() {
        d dVarB = b();
        this.e = dVarB;
        dVarB.show();
        return this.e;
    }

    public b(Context context, boolean z) {
        this.a = context;
        d.a aVar = new d.a(context, z);
        this.b = aVar;
        aVar.f(false);
        this.b.e(false);
    }
}
