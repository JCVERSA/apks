package com.yandex.mobile.ads.impl;

import android.view.View;
import android.widget.TextView;
import defpackage.y45;

public final class pz1 {
    private final cn0 a;
    private final an0 b;

    public pz1(cn0 cn0Var) {
        y45.j(cn0Var, "viewHolderManager");
        this.a = cn0Var;
        this.b = new an0();
    }

    public final void a() {
        ob2 adUiElements;
        ob2 adUiElements2;
        t70 t70VarB;
        t70 t70VarB2;
        bn0 bn0VarA = this.a.a();
        if (bn0VarA == null || (t70VarB2 = bn0VarA.b()) == null) {
            adUiElements = null;
        } else {
            this.b.getClass();
            y45.j(t70VarB2, "instreamAdView");
            adUiElements = t70VarB2.getAdUiElements();
        }
        TextView textViewM = adUiElements != null ? adUiElements.m() : null;
        if (textViewM != null) {
            textViewM.setVisibility(8);
        }
        bn0 bn0VarA2 = this.a.a();
        if (bn0VarA2 == null || (t70VarB = bn0VarA2.b()) == null) {
            adUiElements2 = null;
        } else {
            this.b.getClass();
            y45.j(t70VarB, "instreamAdView");
            adUiElements2 = t70VarB.getAdUiElements();
        }
        View viewN = adUiElements2 != null ? adUiElements2.n() : null;
        if (viewN != null) {
            viewN.setVisibility(0);
            viewN.setEnabled(true);
        }
    }

    public final void a(long j, long j2) {
        ob2 adUiElements;
        t70 t70VarB;
        bn0 bn0VarA = this.a.a();
        if (bn0VarA == null || (t70VarB = bn0VarA.b()) == null) {
            adUiElements = null;
        } else {
            this.b.getClass();
            y45.j(t70VarB, "instreamAdView");
            adUiElements = t70VarB.getAdUiElements();
        }
        TextView textViewM = adUiElements != null ? adUiElements.m() : null;
        int i = ((int) ((j - j2) / ((long) 1000))) + 1;
        if (textViewM != null) {
            textViewM.setText(String.valueOf(i));
            textViewM.setVisibility(0);
        }
    }
}
