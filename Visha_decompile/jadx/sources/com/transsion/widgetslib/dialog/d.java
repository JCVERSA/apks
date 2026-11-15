package com.transsion.widgetslib.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import com.transsion.widgetslib.R;
import com.transsion.widgetslib.view.liquid.effect.OSLiquidContainerRootLayoutInner;
import com.transsion.widgetslib.view.liquid.vfx.light.LightTypeConfig;
import defpackage.olb;

public class d extends Dialog {
    public PromptController b;
    public b c;
    public Integer d;

    public static class a {
        public d a;
        public final e b;

        public a(Context context) {
            this(context, 0);
        }

        public a A(int i) {
            e eVar = this.b;
            eVar.b = eVar.a.getText(i);
            return this;
        }

        public a B(CharSequence charSequence) {
            this.b.b = charSequence;
            return this;
        }

        public a C(CharSequence charSequence) {
            this.b.c = charSequence;
            return this;
        }

        public a D(int i) {
            e eVar = this.b;
            eVar.s = null;
            eVar.r = i;
            return this;
        }

        public a E(View view) {
            e eVar = this.b;
            eVar.s = view;
            eVar.r = 0;
            return this;
        }

        public d F() {
            d dVarA = a();
            dVarA.show();
            return dVarA;
        }

        public d a() {
            this.b.a(this.a.b);
            this.a.setCancelable(this.b.m);
            this.a.setCanceledOnTouchOutside(this.b.n);
            e eVar = this.b;
            if (!eVar.K) {
                this.a.setOnCancelListener(eVar.o);
                this.a.setOnDismissListener(this.b.p);
            }
            DialogInterface.OnKeyListener onKeyListener = this.b.q;
            if (onKeyListener != null) {
                this.a.setOnKeyListener(onKeyListener);
            }
            return this.a;
        }

        public a b(ListAdapter listAdapter, DialogInterface.OnClickListener onClickListener) {
            e eVar = this.b;
            eVar.v = listAdapter;
            eVar.w = onClickListener;
            return this;
        }

        public a c(boolean z) {
            this.b.H = z;
            return this;
        }

        public a d(boolean z) {
            this.b.I = z;
            return this;
        }

        public a e(boolean z) {
            this.b.m = z;
            return this;
        }

        public a f(boolean z) {
            this.b.n = z;
            return this;
        }

        public a g(Drawable drawable) {
            this.b.d = drawable;
            return this;
        }

        public Context getContext() {
            return this.b.a;
        }

        public a h(int i, DialogInterface.OnClickListener onClickListener) {
            e eVar = this.b;
            eVar.t = eVar.a.getResources().getTextArray(i);
            this.b.w = onClickListener;
            return this;
        }

        public a i(CharSequence[] charSequenceArr, DialogInterface.OnClickListener onClickListener) {
            e eVar = this.b;
            eVar.t = charSequenceArr;
            eVar.w = onClickListener;
            return this;
        }

        public a j(int i) {
            e eVar = this.b;
            eVar.e = eVar.a.getText(i);
            return this;
        }

        public a k(CharSequence charSequence) {
            this.b.e = charSequence;
            return this;
        }

        public a l(CharSequence[] charSequenceArr, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
            e eVar = this.b;
            eVar.t = charSequenceArr;
            eVar.A = zArr;
            eVar.B = onMultiChoiceClickListener;
            eVar.x = true;
            return this;
        }

        public a m(int i, DialogInterface.OnClickListener onClickListener) {
            e eVar = this.b;
            eVar.i = eVar.a.getText(i);
            this.b.j = onClickListener;
            return this;
        }

        public a n(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            e eVar = this.b;
            eVar.i = charSequence;
            eVar.j = onClickListener;
            return this;
        }

        public a o(int i, DialogInterface.OnClickListener onClickListener) {
            e eVar = this.b;
            eVar.k = eVar.a.getText(i);
            this.b.l = onClickListener;
            return this;
        }

        public a p(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            e eVar = this.b;
            eVar.k = charSequence;
            eVar.l = onClickListener;
            return this;
        }

        public a q(int i) {
            this.b.L = i;
            return this;
        }

        public a r(DialogInterface.OnCancelListener onCancelListener) {
            this.b.o = onCancelListener;
            return this;
        }

        public a s(DialogInterface.OnDismissListener onDismissListener) {
            this.b.p = onDismissListener;
            return this;
        }

        public void setInputDialog(boolean z) {
            this.b.J = z;
        }

        public a t(DialogInterface.OnKeyListener onKeyListener) {
            this.b.q = onKeyListener;
            return this;
        }

        public a u(int i, DialogInterface.OnClickListener onClickListener) {
            e eVar = this.b;
            eVar.f = eVar.a.getText(i);
            this.b.g = onClickListener;
            return this;
        }

        public a v(int i, boolean z, DialogInterface.OnClickListener onClickListener) {
            e eVar = this.b;
            eVar.f = eVar.a.getText(i);
            e eVar2 = this.b;
            eVar2.g = onClickListener;
            eVar2.G = z;
            return this;
        }

        public a w(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            e eVar = this.b;
            eVar.f = charSequence;
            eVar.g = onClickListener;
            return this;
        }

        public a x(int i) {
            this.a.b.setPromptDialogPaddingTop(i);
            return this;
        }

        public a y(int i, int i2, DialogInterface.OnClickListener onClickListener) {
            e eVar = this.b;
            eVar.t = eVar.a.getResources().getTextArray(i);
            e eVar2 = this.b;
            eVar2.C = i2;
            eVar2.w = onClickListener;
            eVar2.y = true;
            return this;
        }

        public a z(CharSequence[] charSequenceArr, int i, DialogInterface.OnClickListener onClickListener) {
            e eVar = this.b;
            eVar.t = charSequenceArr;
            eVar.C = i;
            eVar.w = onClickListener;
            eVar.y = true;
            return this;
        }

        public a(Context context, int i) {
            e eVar = new e(new ContextThemeWrapper(context, d.h(context, i)));
            this.b = eVar;
            this.a = new d(eVar.a, d.h(context, i));
        }

        public a(Context context, boolean z) {
            e eVar = new e(new ContextThemeWrapper(context, d.j(context, z)));
            this.b = eVar;
            this.a = new d(eVar.a, d.j(context, z));
        }
    }

    public interface b {
        void a();

        void b();

        void onConfigurationChanged(Configuration configuration);
    }

    public d(Context context, int i) {
        super(context, h(context, i));
        this.b = new PromptController(getContext(), this, getWindow());
    }

    public static int h(Context context, int i) {
        return i(context, i, false);
    }

    public static int i(Context context, int i, boolean z) {
        if (i >= 16777216) {
            return i;
        }
        return (z && olb.d) ? olb.r(context) : R.style.OS_Dialog_Alert_Base;
    }

    public static int j(Context context, boolean z) {
        return i(context, 0, z);
    }

    public void d() {
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = this.d.intValue();
        getWindow().setAttributes(attributes);
    }

    public Button e(int i) {
        return this.b.B(i);
    }

    public final void f() {
        View viewFindViewById;
        Window window = getWindow();
        if (window == null || (viewFindViewById = window.findViewById(android.R.id.content)) == null) {
            return;
        }
        int iP = olb.p(getContext());
        WindowManager windowManager = (WindowManager) getContext().getSystemService("window");
        if (windowManager == null) {
            return;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
        viewFindViewById.measure(View.MeasureSpec.makeMeasureSpec(iP, 1073741824), View.MeasureSpec.makeMeasureSpec(displayMetrics.heightPixels, Integer.MIN_VALUE));
        int measuredHeight = viewFindViewById.getMeasuredHeight();
        int iE = (int) ((olb.p0(window) ? olb.E(getContext()) : olb.D(getContext())) * 0.85f);
        WindowManager.LayoutParams attributes = window.getAttributes();
        if (measuredHeight > iE) {
            attributes.height = iE;
            window.setAttributes(attributes);
        }
    }

    public void g(Configuration configuration) {
        if (olb.Z(getContext())) {
            olb.S0(getContext(), this, this.b.H(), this.b.I(), this.b.E());
            olb.setUltraSmallModeDialogWidth(this);
        } else if (olb.g0(getContext())) {
            olb.R0(getContext(), this, this.b.H(), this.b.I(), this.b.E());
            olb.setPadDialogWidth(this);
        } else {
            olb.N0(getContext(), this, this.b.H(), this.b.I(), this.b.E());
            olb.setDialogWidth(this);
        }
        if (this.d != null) {
            d();
        }
        b bVar = this.c;
        if (bVar != null) {
            bVar.onConfigurationChanged(configuration);
        }
        if (olb.g0(getContext())) {
            f();
        }
    }

    public OSLiquidContainerRootLayoutInner getLiquidContainerView() {
        return this.b.getLiquidContainerView();
    }

    public View getListView() {
        return this.b.getListView();
    }

    public TextView getMessageTextView() {
        return this.b.getMessageTextView();
    }

    @Override
    public void hide() {
        b bVar = this.c;
        if (bVar != null) {
            bVar.b();
        }
        super.hide();
    }

    public void k(int i, CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        this.b.N(i, charSequence, onClickListener, null);
    }

    public void l() {
        this.b.e0();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.b.F();
        if (olb.Z(getContext())) {
            olb.setUltraSmallModeDialogWidth(this);
        } else if (olb.g0(getContext())) {
            olb.setPadDialogWidth(this);
        } else {
            olb.setDialogWidth(this);
        }
        if (this.d != null) {
            d();
        }
        if (olb.g0(getContext())) {
            f();
        }
        if (olb.Z(getContext())) {
            olb.S0(getContext(), this, this.b.H(), this.b.I(), this.b.E());
        } else if (olb.g0(getContext())) {
            olb.R0(getContext(), this, this.b.H(), this.b.I(), this.b.E());
        } else {
            olb.N0(getContext(), this, this.b.H(), this.b.I(), this.b.E());
        }
        this.b.P();
    }

    public void setDimAmount(float f) {
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.dimAmount = f;
        window.addFlags(2);
        window.setAttributes(attributes);
    }

    public void setLightTypeConfig(LightTypeConfig lightTypeConfig) {
        this.b.setLightTypeConfig(lightTypeConfig);
    }

    public void setMessage(CharSequence charSequence) {
        this.b.setMessage(charSequence);
    }

    public void setOnPromptDialogStatusChangedListener(b bVar) {
        this.c = bVar;
    }

    public void setPromptDialogPaddingTop(int i) {
        this.b.setPromptDialogPaddingTop(i);
    }

    @Override
    public void setTitle(CharSequence charSequence) {
        this.b.setTitle(charSequence);
    }

    public void setTitleTextAlignment(int i) {
        TextView titleView;
        PromptController promptController = this.b;
        if (promptController == null || (titleView = promptController.getTitleView()) == null) {
            return;
        }
        titleView.setTextAlignment(i);
    }

    public void setTitleTextAppearance(int i) {
        TextView titleView;
        PromptController promptController = this.b;
        if (promptController == null || (titleView = promptController.getTitleView()) == null) {
            return;
        }
        titleView.setTextAppearance(i);
    }

    public void setTitleTextDirection(int i) {
        TextView titleView;
        PromptController promptController = this.b;
        if (promptController == null || (titleView = promptController.getTitleView()) == null) {
            return;
        }
        titleView.setTextDirection(i);
    }

    public void setTitleViewBg(@ColorInt int i) {
        this.b.setTitleViewBg(i);
    }

    public void setTopTitle(int i) {
        this.b.setTopTitle(getContext().getResources().getString(i));
    }

    public void setView(View view) {
        this.b.f0(0, view);
    }

    @Override
    public void show() {
        b bVar = this.c;
        if (bVar != null) {
            bVar.a();
        }
        super.show();
    }

    public void setTopTitle(CharSequence charSequence) {
        this.b.setTopTitle(charSequence);
    }
}
