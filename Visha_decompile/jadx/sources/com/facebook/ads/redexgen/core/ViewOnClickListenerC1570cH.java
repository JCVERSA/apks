package com.facebook.ads.redexgen.core;

import android.view.View;

public class ViewOnClickListenerC1570cH implements View.OnClickListener {
    public static String[] A01 = {"iIV4C6PCamFbOwLs9osqMP65CW35qHVZ", "vu8ePLRZods6FhLp1sOjcscbCnKQtV0u", "aj5bYqq1P6NsPozz4AKHPhJxq4tExiSQ", "sREORf6VoPUSDy", "tYmkAFK6aojaVt6XrGIUitMYwL", "t5b15Ic4Fw72vyTqFljisKwND31PO9vi", "k2wG1EEpilyBuA", "DdpD6jZ5PRtvRqlim5b1myDycB"};
    public final C4Z A00;

    public ViewOnClickListenerC1570cH(C4Z c4z) {
        this.A00 = c4z;
    }

    @Override
    public final void onClick(View view) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            if (this.A00.A0V instanceof C7P) {
                boolean z = this.A00.A0K;
                if (A01[5].charAt(19) != 'i') {
                    throw new RuntimeException();
                }
                A01[5] = "JfKhMnDlcffILoVNGoui3HCKoOWuag6G";
                if (!z) {
                    this.A00.A0L = true;
                    this.A00.A0Z.ABr();
                    this.A00.A0g(((C7P) this.A00.A0V).A0M().toString());
                    if (((AbstractC0962Hr) this.A00).A06.A0n() >= 0) {
                        this.A00.A08.postDelayed(this.A00.A0l, ((AbstractC0962Hr) this.A00).A06.A0n());
                    }
                }
                this.A00.A0j(this.A00.A0K ? false : true);
            }
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
