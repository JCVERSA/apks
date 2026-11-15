package com.facebook.ads.redexgen.core;

import android.content.DialogInterface;
import android.widget.EditText;

public class DialogInterfaceOnClickListenerC1355Xc implements DialogInterface.OnClickListener {
    public final EditText A00;
    public final C1136Om A01;

    public DialogInterfaceOnClickListenerC1355Xc(C1136Om c1136Om, EditText editText) {
        this.A01 = c1136Om;
        this.A00 = editText;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.A01.A03.execute(new C1139Op(this, dialogInterface));
    }
}
