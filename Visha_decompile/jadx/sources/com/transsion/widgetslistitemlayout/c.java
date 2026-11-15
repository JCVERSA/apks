package com.transsion.widgetslistitemlayout;

import android.content.Context;
import android.graphics.Rect;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.transsion.widgetslib.widget.OSIconTextView;
import defpackage.olb;
import java.util.ArrayList;
import java.util.List;

public class c {
    public Context a;
    public EditText b;
    public EditText c;
    public OSIconTextView d;
    public OSIconTextView e;
    public LinearLayout f;
    public LinearLayout g;
    public int h;
    public String i;
    public boolean j;
    public boolean k;
    public boolean l;
    public boolean m;
    public int n;
    public String o;
    public h q;
    public final List p = new ArrayList();
    public TextWatcher r = new a();

    public class a implements TextWatcher {
        public a() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            if (c.this.q != null) {
                c.this.q.b();
            }
            EditText editTextO = c.this.o();
            if (editTextO != null) {
                c.this.P(editTextO.hasFocus(), editable.length() > 0);
            }
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    public class b extends EditText {
        public final Runnable b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Context context, Runnable runnable) {
            super(context);
            this.b = runnable;
        }

        @Override
        public boolean onKeyPreIme(int i, KeyEvent keyEvent) {
            if (i != 4 || keyEvent.getAction() != 1) {
                return super.onKeyPreIme(i, keyEvent);
            }
            Runnable runnable = this.b;
            if (runnable != null) {
                runnable.run();
            }
            return true;
        }
    }

    public class ViewOnFocusChangeListenerC0269c implements View.OnFocusChangeListener {
        public ViewOnFocusChangeListenerC0269c() {
        }

        @Override
        public void onFocusChange(View view, boolean z) {
            if (view instanceof EditText) {
                c.this.v((EditText) view, z);
            }
        }
    }

    public class d implements View.OnTouchListener {
        public d() {
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (!c.this.l || motionEvent.getAction() != 0) {
                return false;
            }
            view.requestFocus();
            if (c.this.q == null) {
                return false;
            }
            c.this.q.c((EditText) view);
            return false;
        }
    }

    public class e implements View.OnClickListener {
        public e() {
        }

        @Override
        public void onClick(View view) {
            c.this.g();
        }
    }

    public class f implements View.OnClickListener {
        public f() {
        }

        @Override
        public void onClick(View view) {
            if (c.this.b != null) {
                c.this.b.requestFocus();
                if (c.this.q != null) {
                    c.this.q.c(c.this.b);
                }
            }
        }
    }

    public interface g {
    }

    public interface h {
        void a(String str);

        void b();

        void c(EditText editText);
    }

    public c(Context context) {
        this.a = context;
        this.n = context.getResources().getDimensionPixelSize(R.dimen.os_icon_small_size) + context.getResources().getDimensionPixelSize(R.dimen.os_space025);
    }

    public static boolean y(MotionEvent motionEvent, View view) {
        if (view == null || view.getVisibility() != 0) {
            return false;
        }
        Rect rect = new Rect();
        view.getGlobalVisibleRect(rect);
        return rect.contains((int) motionEvent.getRawX(), (int) motionEvent.getRawY());
    }

    public final void A(EditText editText, EditText editText2) {
        for (TextWatcher textWatcher : this.p) {
            if (editText != null) {
                editText.removeTextChangedListener(textWatcher);
            }
            if (editText2 != null) {
                editText2.addTextChangedListener(textWatcher);
            }
        }
    }

    public void B(TextView textView) {
        TextView textViewN = n(textView);
        if (textViewN != null) {
            textViewN.setMaxWidth(Integer.MAX_VALUE);
        }
        LinearLayout linearLayout = this.f;
        if (linearLayout != null) {
            ViewGroup.LayoutParams layoutParams = linearLayout.getLayoutParams();
            layoutParams.width = -2;
            this.f.setLayoutParams(layoutParams);
        }
    }

    public void C() {
        String string;
        EditText editText;
        if (!this.k || (editText = this.c) == null) {
            EditText editText2 = this.b;
            string = editText2 != null ? editText2.getText().toString() : "";
        } else {
            string = editText.getText().toString();
        }
        this.o = string;
        h hVar = this.q;
        if (hVar != null) {
            hVar.a(string);
        }
    }

    public void D(String str) {
        EditText editText = this.b;
        if (editText != null) {
            editText.setHint(str);
        }
        EditText editText2 = this.c;
        if (editText2 != null) {
            editText2.setHint(str);
        }
    }

    public void E(boolean z) {
        int iM = z ? olb.m(this.a, R.attr.os_text_info, R.color.os_text_info_hios) : olb.m(this.a, R.attr.os_text_disable, R.color.os_text_disable_hios);
        EditText editText = this.b;
        if (editText != null) {
            editText.setTextColor(iM);
        }
    }

    public void F(EditText editText, boolean z) {
        if (editText == null) {
            return;
        }
        if (z) {
            editText.setVisibility(0);
            editText.setCursorVisible(true);
            editText.setFocusable(true);
            editText.setFocusableInTouchMode(true);
            editText.setClickable(true);
            return;
        }
        editText.setVisibility(8);
        editText.setCursorVisible(false);
        editText.setFocusable(false);
        editText.setFocusableInTouchMode(false);
        editText.setClickable(false);
    }

    public void G(boolean z) {
        this.l = z;
    }

    public void H(String str, TextView textView, TextView textView2, boolean z) {
        EditText editText;
        if (str == null) {
            str = "";
        }
        this.o = str;
        if (!TextUtils.isEmpty(str) && !TextUtils.equals(str, this.i)) {
            this.j = true;
        }
        if (!this.k || (editText = this.c) == null) {
            EditText editText2 = this.b;
            if (editText2 != null) {
                editText2.setText(str);
            }
        } else {
            editText.setText(str);
        }
        if (textView != null && textView.getVisibility() == 0) {
            textView.setText(str);
        }
        if (textView2 == null || textView2.getVisibility() != 0 || z) {
            return;
        }
        textView2.setText(str);
    }

    public void I(String str) {
        this.i = str;
        this.j = false;
    }

    public void J(h hVar) {
        this.q = hVar;
    }

    public void K(boolean z) {
        this.m = z;
    }

    public String L(boolean z, String str, boolean z2) {
        int i;
        int i2;
        this.k = z;
        if (z) {
            EditText editText = this.b;
            if (editText != null) {
                int iMax = Math.max(0, editText.getSelectionStart());
                String string = this.b.getText().toString();
                this.b.setVisibility(8);
                i2 = iMax;
                str = string;
            } else {
                i2 = 0;
            }
            EditText editText2 = this.c;
            if (editText2 != null) {
                editText2.setVisibility(0);
                this.c.setCursorVisible(true);
                this.c.setFocusable(true);
                this.c.setFocusableInTouchMode(true);
                this.c.setClickable(true);
                this.c.setEnabled(z2);
                this.c.setText(str);
                this.c.setSelection(Math.min(i2, str.length()));
                this.c.requestFocus();
            }
        } else {
            EditText editText3 = this.c;
            if (editText3 != null) {
                int iMax2 = Math.max(0, editText3.getSelectionStart());
                String string2 = this.c.getText().toString();
                this.c.setVisibility(8);
                this.c.setCursorVisible(false);
                this.c.setFocusable(false);
                this.c.setFocusableInTouchMode(false);
                i = iMax2;
                str = string2;
            } else {
                i = 0;
            }
            EditText editText4 = this.b;
            if (editText4 != null) {
                editText4.setVisibility(0);
                this.b.setCursorVisible(true);
                this.b.setFocusable(true);
                this.b.setFocusableInTouchMode(true);
                this.b.setClickable(true);
                this.b.setEnabled(z2);
                this.b.setText(str);
                this.b.setSelection(Math.min(i, str.length()));
                this.b.requestFocus();
            }
        }
        A(z ? this.b : this.c, z ? this.c : this.b);
        this.o = str;
        return str;
    }

    public void M(TextView textView) {
        if (this.b == null || textView == null || TextUtils.equals(textView.getText(), this.b.getText())) {
            return;
        }
        this.b.setText(textView.getText());
    }

    public void N(TextView textView) {
        EditText editText = this.b;
        if (editText == null || textView == null || TextUtils.equals(editText.getText(), textView.getText())) {
            return;
        }
        textView.setText(this.b.getText());
    }

    public void O(TextView textView) {
        TextWatcher textWatcher = this.r;
        if (textWatcher == null) {
            return;
        }
        if (textView != null) {
            textView.removeTextChangedListener(textWatcher);
        }
        EditText editText = this.b;
        if (editText != null) {
            editText.removeTextChangedListener(this.r);
        }
        EditText editText2 = this.c;
        if (editText2 != null) {
            editText2.removeTextChangedListener(this.r);
        }
    }

    public void P(boolean z, boolean z2) {
        boolean z3 = z && z2;
        OSIconTextView oSIconTextView = this.d;
        int i = 8;
        if (oSIconTextView != null) {
            oSIconTextView.setVisibility((!z3 || this.k) ? 8 : 0);
        }
        OSIconTextView oSIconTextView2 = this.e;
        if (oSIconTextView2 != null) {
            if (z3 && this.k) {
                i = 0;
            }
            oSIconTextView2.setVisibility(i);
        }
        if (!this.k || this.g == null) {
            return;
        }
        EditText editText = this.c;
        int i2 = (!z3 || (editText != null && editText.getLineCount() > 1)) ? this.h : 0;
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.g.getLayoutParams();
        if (marginLayoutParams.topMargin != i2) {
            marginLayoutParams.topMargin = i2;
            this.g.setLayoutParams(marginLayoutParams);
        }
    }

    public void Q(TextView textView, View view, boolean z) {
        if (textView == null) {
            return;
        }
        if (!this.l) {
            N(textView);
            F(this.b, false);
            if (view != null) {
                view.setOnClickListener(null);
                view.setClickable(false);
            }
            textView.setVisibility(0);
            return;
        }
        F(this.b, true);
        EditText editText = this.b;
        if (editText != null) {
            editText.setEnabled(z);
        }
        M(textView);
        if (view != null) {
            view.setOnClickListener(new f());
        }
        textView.setVisibility(8);
    }

    public void f(TextView textView) {
        TextWatcher textWatcher = this.r;
        if (textWatcher == null) {
            return;
        }
        if (textView != null) {
            textView.removeTextChangedListener(textWatcher);
            textView.addTextChangedListener(this.r);
        }
        EditText editText = this.b;
        if (editText != null) {
            editText.removeTextChangedListener(this.r);
            this.b.addTextChangedListener(this.r);
        }
        EditText editText2 = this.c;
        if (editText2 != null) {
            editText2.removeTextChangedListener(this.r);
            this.c.addTextChangedListener(this.r);
        }
    }

    public final void g() {
        EditText editText;
        if (this.k && (editText = this.c) != null) {
            editText.setText("");
            return;
        }
        EditText editText2 = this.b;
        if (editText2 != null) {
            editText2.setText("");
        }
    }

    public void h(Runnable runnable) {
        boolean z;
        EditText editText = this.b;
        boolean z2 = true;
        if (editText == null || !editText.hasFocus()) {
            z = false;
        } else {
            this.b.clearFocus();
            z = true;
        }
        EditText editText2 = this.c;
        if (editText2 == null || !editText2.hasFocus()) {
            z2 = z;
        } else {
            this.c.clearFocus();
        }
        if (!z2 || runnable == null) {
            return;
        }
        runnable.run();
    }

    public void i() {
        for (TextWatcher textWatcher : this.p) {
            EditText editText = this.b;
            if (editText != null) {
                editText.removeTextChangedListener(textWatcher);
            }
            EditText editText2 = this.c;
            if (editText2 != null) {
                editText2.removeTextChangedListener(textWatcher);
            }
        }
        this.p.clear();
    }

    public final EditText j(int i, boolean z, Runnable runnable) {
        b bVar = new b(this.a, runnable);
        int iM = olb.m(this.a, R.attr.os_text_info, R.color.os_text_info_hios);
        bVar.setId(View.generateViewId());
        bVar.setPaddingRelative(0, 0, 0, 0);
        bVar.setMinimumHeight(0);
        bVar.setMinHeight(0);
        bVar.setGravity(i);
        bVar.setBackground(null);
        bVar.setSingleLine(z);
        bVar.setTextSize(0, this.a.getResources().getDimension(R.dimen.os_subhead_font));
        bVar.setLineHeight(this.a.getResources().getDimensionPixelSize(R.dimen.os_dimen_subhead_font_line_height));
        bVar.setFocusable(false);
        bVar.setFocusableInTouchMode(false);
        bVar.setTextColor(iM);
        bVar.setHintTextColor(iM);
        bVar.setTextCursorDrawable(R.drawable.os_edit_text_cursor);
        bVar.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0269c());
        bVar.setOnTouchListener(new d());
        return bVar;
    }

    public final OSIconTextView k() {
        OSIconTextView oSIconTextView = new OSIconTextView(this.a);
        int dimensionPixelSize = this.a.getResources().getDimensionPixelSize(R.dimen.os_icon_small_size);
        int dimensionPixelSize2 = this.a.getResources().getDimensionPixelSize(R.dimen.os_space025);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(dimensionPixelSize, dimensionPixelSize);
        layoutParams.setMarginStart(dimensionPixelSize2);
        layoutParams.gravity = 16;
        oSIconTextView.setLayoutParams(layoutParams);
        oSIconTextView.setText(this.a.getString(R.string.os_Close_fill));
        oSIconTextView.setTextSize(0, this.a.getResources().getDimension(R.dimen.os_icon_mini_size));
        oSIconTextView.setGravity(17);
        oSIconTextView.setVisibility(8);
        oSIconTextView.setOnClickListener(new e());
        return oSIconTextView;
    }

    public void l(View view, TextView textView, String str, Runnable runnable) {
        if (this.b == null && (view instanceof LinearLayout)) {
            int dimensionPixelSize = this.a.getResources().getDimensionPixelSize(R.dimen.os_list_item_describe_title_padding_start);
            EditText editTextJ = j(8388629, !this.m, runnable);
            int dimensionPixelOffset = this.a.getResources().getDimensionPixelOffset(R.dimen.os_list_item_padding_top);
            editTextJ.setPaddingRelative(dimensionPixelSize, dimensionPixelOffset, 0, dimensionPixelOffset);
            if (textView != null) {
                editTextJ.setText(textView.getText());
            } else if (!TextUtils.isEmpty(str)) {
                editTextJ.setText(str);
            }
            LinearLayout linearLayout = new LinearLayout(this.a);
            linearLayout.setOrientation(0);
            linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
            linearLayout.setGravity(8388629);
            editTextJ.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
            this.b = editTextJ;
            this.f = linearLayout;
            linearLayout.addView(editTextJ);
            OSIconTextView oSIconTextViewK = k();
            this.d = oSIconTextViewK;
            linearLayout.addView(oSIconTextViewK);
            ((LinearLayout) view).addView(linearLayout, 0);
            f(textView);
        }
    }

    public void m(View view, int i, Runnable runnable) {
        View viewFindViewById;
        if (this.c != null || view == null || (viewFindViewById = view.findViewById(i)) == null) {
            return;
        }
        EditText editTextJ = j(8388659, false, runnable);
        LinearLayout linearLayout = new LinearLayout(this.a);
        linearLayout.setOrientation(0);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        View viewFindViewById2 = view.findViewById(R.id.lil_subtitle);
        if (viewFindViewById2 == null || !(viewFindViewById2.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            layoutParams.topMargin = olb.h(this.a, 2);
        } else {
            layoutParams.topMargin = ((ViewGroup.MarginLayoutParams) viewFindViewById2.getLayoutParams()).topMargin;
        }
        linearLayout.setLayoutParams(layoutParams);
        this.h = layoutParams.topMargin;
        this.g = linearLayout;
        linearLayout.setGravity(8388629);
        editTextJ.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
        this.c = editTextJ;
        linearLayout.addView(editTextJ);
        OSIconTextView oSIconTextViewK = k();
        this.e = oSIconTextViewK;
        linearLayout.addView(oSIconTextViewK);
        ((LinearLayout) viewFindViewById).addView(linearLayout);
        f(null);
    }

    public TextView n(TextView textView) {
        EditText editText;
        if (this.l) {
            if (this.k && (editText = this.c) != null) {
                return editText;
            }
            EditText editText2 = this.b;
            if (editText2 != null) {
                return editText2;
            }
        }
        return textView;
    }

    public EditText o() {
        EditText editText;
        return (!this.k || (editText = this.c) == null) ? this.b : editText;
    }

    public int p() {
        return this.n;
    }

    public LinearLayout q() {
        return this.f;
    }

    public EditText r() {
        return this.b;
    }

    public String s() {
        EditText editText;
        if (this.k && (editText = this.c) != null) {
            return editText.getText().toString();
        }
        EditText editText2 = this.b;
        return editText2 != null ? editText2.getText().toString() : this.o;
    }

    public void setOnEditFocusChangeListener(g gVar) {
    }

    public String t() {
        return this.i;
    }

    public EditText u() {
        return this.c;
    }

    public final void v(EditText editText, boolean z) {
        if (z) {
            editText.setTextColor(olb.m(this.a, R.attr.os_text_primary, R.color.os_text_primary_hios));
            if (!TextUtils.isEmpty(this.i) && !this.j) {
                editText.setText("");
            }
        } else {
            editText.setTextColor(olb.m(this.a, R.attr.os_text_info, R.color.os_text_info_hios));
            if (!TextUtils.isEmpty(this.i)) {
                if (editText.getText().toString().isEmpty()) {
                    editText.setText(this.i);
                    this.j = false;
                } else {
                    this.j = true;
                }
            }
            C();
        }
        P(z, editText.length() > 0);
    }

    public boolean w() {
        return this.k;
    }

    public boolean x() {
        return this.l;
    }

    public boolean z(MotionEvent motionEvent, View view) {
        EditText editText;
        if (!this.l) {
            return false;
        }
        if (y(motionEvent, view)) {
            return true;
        }
        if (this.k && (editText = this.c) != null) {
            Object parent = editText.getParent();
            if ((parent instanceof View) && y(motionEvent, (View) parent)) {
                return true;
            }
        }
        return false;
    }
}
