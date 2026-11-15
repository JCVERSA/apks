package com.facebook.ads.redexgen.core;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;

public class ViewOnClickListenerC1199Qx implements View.OnClickListener {
    public static String[] A04 = {"dOcdx", "8bjq9", "S62xmG9bLAzPQTe5DIuTVykAuxzH3OOO", "EFLmmctArUbvil4YjfVv5mcKtZGwqpiw", "pomIX56rypqB03AcIrSNKF", "mejemOmbs1cZK7MlHCtmuskixcqeH5iG", "45z4wnlhvnWTCVb", "bTLTNp7fFtJJ30XE5CJx6is"};
    public final Context A00;
    public final LinearLayout A01;
    public final C1795fx A02;
    public final C1178Qc A03;

    public ViewOnClickListenerC1199Qx(C1795fx c1795fx, C1178Qc c1178Qc, Context context, LinearLayout linearLayout) {
        this.A02 = c1795fx;
        this.A03 = c1178Qc;
        this.A00 = context;
        this.A01 = linearLayout;
    }

    @Override
    public final void onClick(View view) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            this.A03.A1J();
            if (U7.A2S(this.A00)) {
                this.A01.performAccessibilityAction(128, null);
            }
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
            String[] strArr = A04;
            if (strArr[0].length() != strArr[1].length()) {
                throw new RuntimeException();
            }
            A04[3] = "4MuYgj3AagdEPQ2lSwdOEm9Gyp8HLE2k";
        }
    }
}
