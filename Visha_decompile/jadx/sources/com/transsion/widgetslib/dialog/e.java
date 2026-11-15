package com.transsion.widgetslib.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.olb;

public final class e {
    public boolean[] A;
    public DialogInterface.OnMultiChoiceClickListener B;
    public Cursor D;
    public String E;
    public String F;
    public boolean G;
    public boolean I;
    public boolean J;
    public boolean K;
    public int L;
    public CharSequence N;
    public boolean O;
    public boolean Q;
    public boolean R;
    public boolean S;
    public boolean T;
    public boolean U;
    public boolean V;
    public boolean W;
    public boolean X;
    public final Context a;
    public CharSequence b;
    public CharSequence c;
    public Drawable d;
    public CharSequence e;
    public CharSequence f;
    public DialogInterface.OnClickListener g;
    public CharSequence i;
    public DialogInterface.OnClickListener j;
    public CharSequence k;
    public DialogInterface.OnClickListener l;
    public DialogInterface.OnCancelListener o;
    public DialogInterface.OnDismissListener p;
    public DialogInterface.OnKeyListener q;
    public int r;
    public View s;
    public CharSequence[] t;
    public RecyclerView.Adapter u;
    public ListAdapter v;
    public DialogInterface.OnClickListener w;
    public boolean x;
    public boolean y;
    public boolean z;
    public boolean h = true;
    public int C = -1;
    public boolean H = true;
    public boolean M = true;
    public int P = 0;
    public boolean m = true;
    public boolean n = true;

    public interface a {
        void onPrepareListView(ListView listView);
    }

    public e(Context context) {
        this.a = context;
    }

    public void a(PromptController promptController) {
        b();
        promptController.setTopTitle(this.c);
        promptController.setTitleView(this.b);
        promptController.setIcon(this.d);
        promptController.setMessageView(this.e);
        promptController.f0(this.r, this.s);
        promptController.setIsAlert(this.G);
        promptController.N(-1, this.f, this.g, null);
        promptController.setPositiveButtonEnable(this.h);
        promptController.N(-2, this.i, this.j, null);
        promptController.N(-3, this.k, this.l, null);
        promptController.setButtonVertical(this.I);
        promptController.setNoBtnBottomInsets(this.L);
        promptController.setInputMessagePosition(this.P);
        if (this.x) {
            CharSequence[] charSequenceArr = this.t;
            if (charSequenceArr != null) {
                promptController.Y(charSequenceArr, this.A, this.B);
            } else {
                Cursor cursor = this.D;
                if (cursor != null) {
                    promptController.W(cursor, this.E, this.F, this.B);
                }
            }
        } else if (this.y) {
            CharSequence[] charSequenceArr2 = this.t;
            if (charSequenceArr2 != null) {
                promptController.d0(charSequenceArr2, this.w);
            } else {
                RecyclerView.Adapter adapter = this.u;
                if (adapter == null && this.v == null) {
                    Cursor cursor2 = this.D;
                    if (cursor2 != null) {
                        promptController.a0(cursor2, this.E, this.w);
                    }
                } else if (adapter != null) {
                    promptController.c0(adapter, this.w);
                } else {
                    promptController.b0(this.v, this.w);
                }
            }
        } else if (this.z) {
            promptController.O(this.t, this.w);
        } else {
            CharSequence[] charSequenceArr3 = this.t;
            if (charSequenceArr3 != null) {
                promptController.U(charSequenceArr3, this.w);
            } else {
                RecyclerView.Adapter adapter2 = this.u;
                if (adapter2 == null && this.v == null) {
                    Cursor cursor3 = this.D;
                    if (cursor3 != null) {
                        promptController.R(cursor3, this.E, this.w);
                    }
                } else if (adapter2 != null) {
                    promptController.T(adapter2, this.w);
                } else {
                    promptController.S(this.v, this.w);
                }
            }
        }
        CharSequence charSequence = this.N;
        if (charSequence != null) {
            promptController.Z(charSequence, this.O, this.w);
        }
        if (this.y) {
            promptController.setCheckedItem(this.C);
        }
        promptController.setAutoDismiss(this.H);
        promptController.setIsInputDialog(this.J);
        promptController.setButtonChoiceDialog(this.z);
        promptController.setIsAppDialogFragment(this.K);
        promptController.setCancelable(this.m);
        promptController.setCanceledOnTouchOutside(this.n);
    }

    public final void b() {
        CharSequence charSequence = this.b;
        if (charSequence != null) {
            String strH0 = olb.H0(charSequence.toString());
            this.b = strH0;
            if (!this.Q) {
                this.b = olb.b(strH0.toString());
            }
        }
        CharSequence charSequence2 = this.e;
        if (charSequence2 != null && !this.R) {
            this.e = olb.b(charSequence2.toString());
        }
        CharSequence charSequence3 = this.f;
        if (charSequence3 != null) {
            String strH1 = olb.H0(charSequence3.toString());
            this.f = strH1;
            if (!this.S) {
                this.f = olb.b(strH1.toString());
            }
        }
        CharSequence charSequence4 = this.i;
        if (charSequence4 != null) {
            String strH2 = olb.H0(charSequence4.toString());
            this.i = strH2;
            if (!this.T) {
                this.i = olb.b(strH2.toString());
            }
        }
        CharSequence charSequence5 = this.k;
        if (charSequence5 != null) {
            String strH3 = olb.H0(charSequence5.toString());
            this.k = strH3;
            if (!this.U) {
                this.k = olb.b(strH3.toString());
            }
        }
        CharSequence charSequence6 = this.N;
        if (charSequence6 != null) {
            if (!this.W) {
                this.N = olb.H0(charSequence6.toString());
            }
            if (!this.V) {
                this.N = olb.b(this.N.toString());
            }
        }
        CharSequence[] charSequenceArr = this.t;
        if (charSequenceArr != null) {
            this.t = olb.c(charSequenceArr, this.X, this.W);
        }
    }
}
