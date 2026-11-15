package com.transsion.widgets;

import android.view.View;
import com.app.hubert.guide.core.Controller;
import defpackage.df7;
import defpackage.sr8;

public class RelativeGuide extends sr8 {
    private df7 mListener;

    public RelativeGuide(int i, int i2) {
        super(i, i2);
    }

    @Override
    public void onLayoutInflated(View view, Controller controller) {
        super.onLayoutInflated(view, controller);
        df7 df7Var = this.mListener;
        if (df7Var != null) {
            df7Var.a(view, controller);
        }
    }

    public void setOnLayoutInflatedListener(df7 df7Var) {
        this.mListener = df7Var;
    }

    public RelativeGuide(int i, int i2, int i3) {
        super(i, i2, i3);
    }
}
