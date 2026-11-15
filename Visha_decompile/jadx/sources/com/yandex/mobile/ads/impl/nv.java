package com.yandex.mobile.ads.impl;

import android.widget.CheckBox;
import android.widget.ProgressBar;
import android.widget.TextView;
import defpackage.y45;

public final class nv implements aw0 {
    private final CheckBox a;
    private final ProgressBar b;
    private final TextView c;

    public nv() {
        this(0);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof nv)) {
            return false;
        }
        nv nvVar = (nv) obj;
        return y45.e(this.a, nvVar.a) && y45.e(this.b, nvVar.b) && y45.e(this.c, nvVar.c);
    }

    @Override
    public final TextView getCountDownProgress() {
        return this.c;
    }

    @Override
    public final CheckBox getMuteControl() {
        return this.a;
    }

    @Override
    public final ProgressBar getVideoProgress() {
        return this.b;
    }

    public final int hashCode() {
        CheckBox checkBox = this.a;
        int iHashCode = (checkBox == null ? 0 : checkBox.hashCode()) * 31;
        ProgressBar progressBar = this.b;
        int iHashCode2 = (iHashCode + (progressBar == null ? 0 : progressBar.hashCode())) * 31;
        TextView textView = this.c;
        return iHashCode2 + (textView != null ? textView.hashCode() : 0);
    }

    public final String toString() {
        return "CustomControlsContainer(muteControl=" + this.a + ", videoProgress=" + this.b + ", countDownProgress=" + this.c + ")";
    }

    public nv(int i) {
        this(null, null, null);
    }

    public nv(CheckBox checkBox, ProgressBar progressBar, TextView textView) {
        this.a = checkBox;
        this.b = progressBar;
        this.c = textView;
    }
}
