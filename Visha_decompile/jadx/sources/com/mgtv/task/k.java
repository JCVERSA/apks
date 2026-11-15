package com.mgtv.task;

import android.app.ProgressDialog;

public class k extends ProgressDialog implements i {
    private int a;

    @Override
    public void a(int i) {
        this.a = i;
    }

    @Override
    public void hide() {
        dismiss();
    }

    @Override
    public int a() {
        return this.a;
    }
}
