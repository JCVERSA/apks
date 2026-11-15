package com.transsion.widgetslib.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.text.method.ScrollingMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.transsion.widgetslib.R;
import defpackage.olb;
import java.util.Locale;

public class c {
    public Context a;
    public d.a b;
    public View c;
    public TextView d;
    public TextView e;
    public ProgressBar f;
    public LinearLayout g;
    public int h;
    public boolean i;
    public boolean j;
    public boolean k;

    public c(Context context) {
        this(context, false);
    }

    public d a() {
        if (this.i) {
            this.d.setVisibility(0);
        }
        d dVarA = this.b.a();
        dVarA.getWindow().setSoftInputMode(0);
        return dVarA;
    }

    public final void b() {
        if (this.e.getVisibility() == 0 && this.j) {
            this.g.setPadding(0, (int) this.a.getResources().getDimension(R.dimen.os_progress_intro_padding_top), 0, 0);
        }
    }

    public final void c() {
        if (olb.Z(this.a)) {
            this.c = LayoutInflater.from(this.a).inflate(R.layout.os_ultra_small_dialog_progress, (ViewGroup) null);
        } else {
            this.c = LayoutInflater.from(this.a).inflate(R.layout.os_dialog_progress, (ViewGroup) null);
        }
        this.f = (ProgressBar) this.c.findViewById(R.id.dialog_progress_bar);
        this.d = (TextView) this.c.findViewById(R.id.dialog_progress_tv);
        this.e = (TextView) this.c.findViewById(R.id.text_progress_message);
        if (olb.q0(this.a)) {
            ViewGroup.LayoutParams layoutParams = this.f.getLayoutParams();
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                marginLayoutParams.topMargin = this.a.getResources().getDimensionPixelOffset(R.dimen.os_dialog_progress_bar_margin_top_sh);
                marginLayoutParams.bottomMargin = this.a.getResources().getDimensionPixelOffset(R.dimen.os_dialog_progress_bar_margin_bottom_sh);
            }
            this.b.x(this.a.getResources().getDimensionPixelOffset(R.dimen.os_dialog_progress_padding_top));
        }
        this.e.setMovementMethod(ScrollingMovementMethod.getInstance());
        this.g = (LinearLayout) this.c.findViewById(R.id.ll_intro);
        if (this.i) {
            this.d.setVisibility(0);
        }
        this.b.E(this.c);
    }

    public c d(boolean z) {
        this.b.e(z);
        return this;
    }

    public c e(boolean z) {
        this.b.f(z);
        return this;
    }

    public c f(int i, DialogInterface.OnClickListener onClickListener) {
        return g(this.a.getText(i), onClickListener);
    }

    public c g(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        this.b.n(charSequence, onClickListener);
        return this;
    }

    public c h(int i) {
        if (this.c == null) {
            c();
        }
        this.f.setProgress(Math.min(i, this.h));
        String language = this.a.getResources().getConfiguration().locale.getLanguage();
        int iFloor = (int) Math.floor((Math.min(i, this.h) / this.h) * 100.0f);
        if ("tr".equals(language) || "ar".equals(language)) {
            this.d.setLayoutDirection(0);
            if (olb.m0()) {
                this.d.setText(String.format(Locale.getDefault(), "%%%d", Integer.valueOf(iFloor)));
            } else {
                this.d.setText(String.format(Locale.getDefault(), "%d%%", Integer.valueOf(iFloor)));
            }
        } else if (olb.m0()) {
            this.d.setLayoutDirection(0);
            this.d.setText(String.format(Locale.getDefault(), "%%%d", Integer.valueOf(iFloor)));
        } else {
            this.d.setText(String.format(Locale.getDefault(), "%d%%", Integer.valueOf(iFloor)));
        }
        return this;
    }

    public c i(int i) {
        TextView textView = this.e;
        if (textView != null) {
            textView.setVisibility(0);
            if (!this.k) {
                this.e.setText(olb.b(this.a.getText(i).toString()));
            }
            this.e.setText(this.a.getText(i));
        }
        b();
        return this;
    }

    public c j(CharSequence charSequence) {
        TextView textView = this.e;
        if (textView != null) {
            textView.setVisibility(0);
            if (!this.k) {
                charSequence = olb.b(charSequence.toString());
            }
            this.e.setText(charSequence);
        }
        b();
        return this;
    }

    public c k(int i) {
        this.b.A(i);
        this.j = true;
        b();
        return this;
    }

    public d l() {
        d dVarA = a();
        dVarA.show();
        return dVarA;
    }

    public c(Context context, boolean z) {
        this.h = 100;
        this.i = false;
        this.j = false;
        d.a aVar = new d.a(context, z);
        this.b = aVar;
        this.a = aVar.getContext();
        e(false);
        d(false);
        this.b.q(context.getResources().getDimensionPixelOffset(R.dimen.os_progress_dialog_no_btn_insets));
        this.b.a.setPromptDialogPaddingTop(context.getResources().getDimensionPixelOffset(R.dimen.os_progress_dialog_no_btn_insets_top));
        if (this.c == null) {
            c();
        }
    }
}
