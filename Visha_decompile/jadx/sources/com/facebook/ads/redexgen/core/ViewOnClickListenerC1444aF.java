package com.facebook.ads.redexgen.core;

import android.view.View;
import java.util.Iterator;

public class ViewOnClickListenerC1444aF implements View.OnClickListener {
    public final C1447aI A00;

    public ViewOnClickListenerC1444aF(C1447aI c1447aI) {
        this.A00 = c1447aI;
    }

    @Override
    public final void onClick(View view) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A05.AE7();
            if (this.A00.A00 != null) {
                XP.A0J(this.A00.A00);
            }
            Iterator it = this.A00.A07.iterator();
            while (it.hasNext()) {
                XP.A0L((View) it.next(), 0);
            }
            XP.A0H(this.A00);
            if (this.A00.A06 == null) {
                return;
            }
            XP.A0L(this.A00.A06, 0);
            this.A00.A06.A0h(EnumC1651db.A02, 14);
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
