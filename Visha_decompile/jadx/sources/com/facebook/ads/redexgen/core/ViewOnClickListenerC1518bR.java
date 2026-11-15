package com.facebook.ads.redexgen.core;

import android.net.Uri;
import android.view.View;

public class ViewOnClickListenerC1518bR implements View.OnClickListener {
    public final C0989Is A00;

    public ViewOnClickListenerC1518bR(C0989Is c0989Is) {
        this.A00 = c0989Is;
    }

    @Override
    public final void onClick(View view) throws Throwable {
        Uri uriA0M;
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            if (this.A00.A0X != null && (uriA0M = ((C7P) this.A00.A0X).A0M()) != null) {
                if (!this.A00.A0D) {
                    this.A00.A0E = true;
                    this.A00.A0j(uriA0M.toString());
                    if (this.A00.A0c.A0E() != null) {
                        this.A00.A0c.A0E().ABr();
                    }
                    if (this.A00.A0Y.A0n() >= 0) {
                        this.A00.A0S.postDelayed(this.A00.A0d, this.A00.A0Y.A0n());
                    }
                }
                this.A00.A0n(this.A00.A0D ? false : true);
            }
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
