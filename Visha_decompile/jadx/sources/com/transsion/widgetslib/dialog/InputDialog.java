package com.transsion.widgetslib.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.timepicker.TimeModel;
import com.transsion.widgetslib.R;
import com.transsion.widgetslib.dialog.InputDialog;
import com.transsion.widgetslib.widget.editext.ExtendedEditText;
import com.transsion.widgetslib.widget.editext.OSMaterialEditText;
import defpackage.olb;
import defpackage.v05;
import java.lang.ref.WeakReference;

public class InputDialog implements View.OnFocusChangeListener {
    public Context b;
    public com.transsion.widgetslib.dialog.d.a c;
    public ExtendedEditText d;
    public ViewTreeObserver.OnGlobalLayoutListener e;
    public DialogInterface.OnDismissListener f;
    public boolean g;
    public TextView h;
    public TextView i;
    public View j;
    public int k;
    public int l;
    public int m;
    public boolean n;
    public boolean o;
    public boolean p;
    public String q;
    public View r;
    public OSMaterialEditText s;
    public h t;
    public v05 u;
    public boolean v;
    public boolean w;

    public class a implements DialogInterface.OnClickListener {
        public final g b;

        public a(g gVar) {
            this.b = gVar;
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            g gVar = this.b;
            if (gVar != null) {
                gVar.a(InputDialog.this.d.getText().toString());
            }
        }
    }

    public class b implements com.transsion.widgetslib.dialog.d.b {
        public b() {
        }

        @Override
        public void a() {
            InputDialog.this.u.d();
        }

        @Override
        public void b() {
            InputDialog.this.u.c();
        }

        @Override
        public void onConfigurationChanged(Configuration configuration) {
            InputDialog.this.u.b(configuration);
        }
    }

    public class c implements DialogInterface.OnDismissListener {
        public c() {
        }

        @Override
        public void onDismiss(DialogInterface dialogInterface) {
            InputDialog.this.n(dialogInterface);
        }
    }

    public static class d implements TextWatcher {
        public WeakReference b;
        public int c;
        public int d;
        public int e;
        public String f;

        public d(InputDialog inputDialog, int i) {
            this.f = "";
            if (inputDialog != null) {
                this.b = new WeakReference(inputDialog);
                this.c = i;
                this.e = inputDialog.l;
                this.d = inputDialog.m;
                if (inputDialog.d != null) {
                    this.f = inputDialog.d.getText().toString();
                }
            }
        }

        @Override
        public void afterTextChanged(Editable editable) {
            InputDialog inputDialog = (InputDialog) this.b.get();
            if (inputDialog == null) {
                return;
            }
            if (inputDialog.o(-1) != null && inputDialog.getNeedEmptyUnable()) {
                inputDialog.o(-1).setEnabled(editable.toString().length() > 0);
            }
            if (inputDialog.i != null && inputDialog.i.getVisibility() == 0) {
                int length = editable.length();
                int i = this.c;
                if (length < i) {
                    TextView textView = inputDialog.i;
                    StringBuilder sb = new StringBuilder();
                    sb.append(String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(length)));
                    sb.append("/");
                    sb.append(String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(this.c)));
                    textView.setText(sb);
                } else if (length == i && length != 0) {
                    TextView textView2 = inputDialog.i;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(this.c)));
                    sb2.append("/");
                    sb2.append(String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(this.c)));
                    textView2.setText(sb2);
                }
            }
            if (inputDialog.getmOSMaterialEditText() == null || inputDialog.w) {
                this.f = editable.toString();
                return;
            }
            String string = editable.toString();
            if (TextUtils.equals(string, this.f)) {
                return;
            }
            this.f = string;
            inputDialog.getmOSMaterialEditText().setError("");
            inputDialog.setOSMaterialEditTextError(false);
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    public interface e {
        void a(EditText editText);
    }

    public interface f {
        void a(EditText editText, TextView textView);
    }

    public interface g {
        void a(String str);
    }

    public static class h extends Handler {
        public WeakReference a;

        public h(EditText editText) {
            super(Looper.getMainLooper());
            this.a = new WeakReference(editText);
        }

        public WeakReference getEditTextWR() {
            return this.a;
        }
    }

    public InputDialog(Context context) {
        this(context, false);
    }

    public static WindowInsetsCompat q(Window window, View view, WindowInsetsCompat windowInsetsCompat) {
        if (windowInsetsCompat.isVisible(WindowInsetsCompat.Type.ime())) {
            window.setAttributes(window.getAttributes());
        }
        return ViewCompat.onApplyWindowInsets(view, windowInsetsCompat);
    }

    public InputDialog A(int i) {
        this.c.A(i);
        return this;
    }

    public final void B(final CharSequence charSequence) {
        if (this.d == null || TextUtils.isEmpty(charSequence)) {
            return;
        }
        this.d.post(new Runnable() {
            @Override
            public void run() {
                String strH0 = olb.H0(TextUtils.ellipsize(charSequence, InputDialog.this.d.getPaint(), (InputDialog.this.d.getWidth() - InputDialog.this.d.getPaddingStart()) - InputDialog.this.d.getPaddingEnd(), TextUtils.TruncateAt.END).toString());
                if (!InputDialog.this.v) {
                    strH0 = olb.b(strH0);
                }
                InputDialog.this.d.setHint(strH0);
            }
        });
    }

    public boolean getNeedEmptyUnable() {
        return this.p;
    }

    public EditText getmEditText() {
        return this.d;
    }

    public TextView getmErrorText() {
        return this.h;
    }

    public OSMaterialEditText getmOSMaterialEditText() {
        return this.s;
    }

    public final void l() {
        this.j = LayoutInflater.from(this.b).inflate(R.layout.os_input_dialog_layout, (ViewGroup) null);
        if (olb.Z(this.b)) {
            View view = this.j;
            Resources resources = this.b.getResources();
            int i = R.dimen.os_ultra_small_dialog_padding_left_right;
            view.setPaddingRelative(resources.getDimensionPixelSize(i), this.b.getResources().getDimensionPixelSize(R.dimen.os_ultra_small_dialog_edit_text_top_margin), this.b.getResources().getDimensionPixelSize(i), this.j.getPaddingBottom());
        }
        this.c.E(this.j);
    }

    public com.transsion.widgetslib.dialog.d m() {
        ExtendedEditText extendedEditText;
        final Window window;
        com.transsion.widgetslib.dialog.d dVarA = this.c.a();
        this.u.a(dVarA.getWindow());
        dVarA.setOnPromptDialogStatusChangedListener(new b());
        dVarA.getWindow().setSoftInputMode(this.u.f() ? 48 : 16);
        if (olb.g0(this.b) && olb.Y(this.b) && (window = dVarA.getWindow()) != null) {
            window.setGravity(17);
            window.setSoftInputMode(16);
            ViewCompat.setOnApplyWindowInsetsListener(window.getDecorView(), new OnApplyWindowInsetsListener() {
                @Override
                public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                    return InputDialog.q(window, view, windowInsetsCompat);
                }
            });
        }
        if (this.n && (extendedEditText = this.d) != null) {
            if (extendedEditText.getText().length() != 0) {
                ExtendedEditText extendedEditText2 = this.d;
                extendedEditText2.setSelection(extendedEditText2.getText().length());
            }
            this.e = new ViewTreeObserver.OnGlobalLayoutListener() {
                @Override
                public void onGlobalLayout() {
                    if (InputDialog.this.g) {
                        return;
                    }
                    InputDialog.this.g = true;
                    InputDialog.this.d.requestFocus();
                    InputDialog.this.d.postDelayed(new Runnable() {
                        @Override
                        public void run() {
                            ((InputMethodManager) InputDialog.this.b.getSystemService("input_method")).showSoftInput(InputDialog.this.d, 0);
                        }
                    }, 200L);
                }
            };
            this.d.getViewTreeObserver().addOnGlobalLayoutListener(this.e);
        }
        if (!this.o) {
            dVarA.setOnDismissListener(new c());
        }
        return dVarA;
    }

    public void n(DialogInterface dialogInterface) {
        ExtendedEditText extendedEditText;
        this.u.e();
        if (this.e != null && (extendedEditText = this.d) != null && extendedEditText.getViewTreeObserver() != null) {
            this.d.getViewTreeObserver().removeOnGlobalLayoutListener(this.e);
            this.e = null;
        }
        DialogInterface.OnDismissListener onDismissListener = this.f;
        if (onDismissListener != null) {
            onDismissListener.onDismiss(dialogInterface);
        }
        ExtendedEditText extendedEditText2 = this.d;
        if (extendedEditText2 != null) {
            extendedEditText2.clearTextChangedListeners();
        }
        this.g = false;
    }

    public Button o(int i) {
        return this.c.a.e(i);
    }

    @Override
    public void onFocusChange(View view, boolean z) {
        if (o(-1) == null || !this.p) {
            return;
        }
        o(-1).setEnabled(this.d.getText().toString().length() > 0);
    }

    public final void p() {
        OSMaterialEditText oSMaterialEditText = (OSMaterialEditText) this.j.findViewById(R.id.input_edit_text);
        this.s = oSMaterialEditText;
        this.d = oSMaterialEditText.getEditText();
        this.s.setDialogMode(true);
        this.d.setOnFocusChangeListener(this);
        this.d.addTextChangedListener(new d(this, 0));
        this.q = this.b.getString(R.string.os_dialog_input_tip_max);
        this.r = this.s.getRootLayout();
    }

    public InputDialog r(boolean z) {
        this.c.c(z);
        return this;
    }

    public InputDialog s(int i, g gVar) {
        return t(this.b.getText(i), gVar);
    }

    public void setHasContent(boolean z) {
        this.s.updateUnderlineView(z, false);
    }

    public void setOSMaterialEditTextError(boolean z) {
        OSMaterialEditText oSMaterialEditText = this.s;
        if (oSMaterialEditText != null) {
            oSMaterialEditText.setErrorLine(z);
        }
    }

    public void setOnDismissListener(DialogInterface.OnDismissListener onDismissListener) {
        this.f = onDismissListener;
    }

    public void setTextWatcher(TextWatcher textWatcher) {
        this.d.addTextChangedListener(textWatcher);
    }

    public InputDialog t(CharSequence charSequence, g gVar) {
        this.c.w(charSequence, new a(gVar));
        return this;
    }

    public InputDialog u(CharSequence charSequence, CharSequence charSequence2, e eVar) {
        this.d.setText(charSequence);
        B(charSequence2);
        if (eVar != null) {
            eVar.a(this.d);
        }
        return this;
    }

    public InputDialog v(CharSequence charSequence, CharSequence charSequence2, int i, f fVar) {
        if (charSequence.toString().length() < i) {
            this.d.setText(charSequence);
        } else {
            this.d.setText(charSequence.toString().substring(0, i));
        }
        B(charSequence2);
        this.s.setInputNum(i, null);
        this.d.addTextChangedListener(new d(this, i));
        if (fVar != null) {
            fVar.a(this.d, this.i);
        }
        return this;
    }

    public InputDialog w(boolean z) {
        this.p = z;
        return this;
    }

    public InputDialog x(int i, DialogInterface.OnClickListener onClickListener) {
        return y(this.b.getText(i), onClickListener);
    }

    public InputDialog y(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        this.c.n(charSequence, onClickListener);
        return this;
    }

    public InputDialog z(boolean z) {
        this.n = z;
        return this;
    }

    public InputDialog(Context context, boolean z) {
        this.p = true;
        com.transsion.widgetslib.dialog.d.a aVar = new com.transsion.widgetslib.dialog.d.a(context, z);
        this.c = aVar;
        this.b = aVar.getContext();
        this.c.setInputDialog(true);
        this.k = ContextCompat.getColor(this.b, R.color.os_red_basic_color);
        this.l = ContextCompat.getColor(this.b, R.color.os_gray_secondary_color);
        this.m = ContextCompat.getColor(this.b, R.color.os_fill_primary_color);
        if (this.j == null) {
            l();
        }
        p();
        this.t = new h(this.d);
        this.u = new v05();
    }
}
