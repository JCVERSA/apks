package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.Resources;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R$id;
import com.google.android.material.R$string;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.internal.a0;
import com.google.android.material.internal.f0;
import java.util.Locale;

class l implements TimePickerView.f, i {

    private final LinearLayout f29312a;

    private final TimeModel f29313b;

    private final TextWatcher f29314c = new a();

    private final TextWatcher f29315d = new b();

    private final ChipTextInputComboView f29316e;

    private final ChipTextInputComboView f29317f;

    private final j f29318g;

    private final EditText f29319h;

    private final EditText f29320i;

    private MaterialButtonToggleGroup f29321j;

    class a extends a0 {
        a() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            try {
                if (TextUtils.isEmpty(editable)) {
                    l.this.f29313b.i(0);
                } else {
                    l.this.f29313b.i(Integer.parseInt(editable.toString()));
                }
            } catch (NumberFormatException unused) {
            }
        }
    }

    class b extends a0 {
        b() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            try {
                if (TextUtils.isEmpty(editable)) {
                    l.this.f29313b.h(0);
                } else {
                    l.this.f29313b.h(Integer.parseInt(editable.toString()));
                }
            } catch (NumberFormatException unused) {
            }
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override
        public void onClick(View view) {
            l.this.c(((Integer) view.getTag(R$id.selection_type)).intValue());
        }
    }

    class d extends com.google.android.material.timepicker.b {

        final TimeModel f29325b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(Context context, int i10, TimeModel timeModel) {
            super(context, i10);
            this.f29325b = timeModel;
        }

        @Override
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setContentDescription(view.getResources().getString(this.f29325b.c(), String.valueOf(this.f29325b.d())));
        }
    }

    class e extends com.google.android.material.timepicker.b {

        final TimeModel f29327b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(Context context, int i10, TimeModel timeModel) {
            super(context, i10);
            this.f29327b = timeModel;
        }

        @Override
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setContentDescription(view.getResources().getString(R$string.material_minute_suffix, String.valueOf(this.f29327b.f29273c)));
        }
    }

    public l(LinearLayout linearLayout, TimeModel timeModel) {
        this.f29312a = linearLayout;
        this.f29313b = timeModel;
        Resources resources = linearLayout.getResources();
        ChipTextInputComboView chipTextInputComboView = (ChipTextInputComboView) linearLayout.findViewById(R$id.material_minute_text_input);
        this.f29316e = chipTextInputComboView;
        ChipTextInputComboView chipTextInputComboView2 = (ChipTextInputComboView) linearLayout.findViewById(R$id.material_hour_text_input);
        this.f29317f = chipTextInputComboView2;
        TextView textView = (TextView) chipTextInputComboView.findViewById(R$id.material_label);
        TextView textView2 = (TextView) chipTextInputComboView2.findViewById(R$id.material_label);
        textView.setText(resources.getString(R$string.material_timepicker_minute));
        textView2.setText(resources.getString(R$string.material_timepicker_hour));
        chipTextInputComboView.setTag(R$id.selection_type, 12);
        chipTextInputComboView2.setTag(R$id.selection_type, 10);
        if (timeModel.f29271a == 0) {
            k();
        }
        c cVar = new c();
        chipTextInputComboView2.setOnClickListener(cVar);
        chipTextInputComboView.setOnClickListener(cVar);
        chipTextInputComboView2.c(timeModel.e());
        chipTextInputComboView.c(timeModel.f());
        this.f29319h = chipTextInputComboView2.e().getEditText();
        this.f29320i = chipTextInputComboView.e().getEditText();
        this.f29318g = new j(chipTextInputComboView2, chipTextInputComboView, timeModel);
        chipTextInputComboView2.f(new d(linearLayout.getContext(), R$string.material_hour_selection, timeModel));
        chipTextInputComboView.f(new e(linearLayout.getContext(), R$string.material_minute_selection, timeModel));
        f();
    }

    private void d() {
        this.f29319h.addTextChangedListener(this.f29315d);
        this.f29320i.addTextChangedListener(this.f29314c);
    }

    public void g(MaterialButtonToggleGroup materialButtonToggleGroup, int i10, boolean z10) {
        if (z10) {
            this.f29313b.j(i10 == R$id.material_clock_period_pm_button ? 1 : 0);
        }
    }

    private void h() {
        this.f29319h.removeTextChangedListener(this.f29315d);
        this.f29320i.removeTextChangedListener(this.f29314c);
    }

    private void j(TimeModel timeModel) {
        h();
        Locale locale = this.f29312a.getResources().getConfiguration().locale;
        String str = String.format(locale, TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(timeModel.f29273c));
        String str2 = String.format(locale, TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(timeModel.d()));
        this.f29316e.g(str);
        this.f29317f.g(str2);
        d();
        l();
    }

    private void k() {
        MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) this.f29312a.findViewById(R$id.material_clock_period_toggle);
        this.f29321j = materialButtonToggleGroup;
        materialButtonToggleGroup.addOnButtonCheckedListener(new MaterialButtonToggleGroup.c() {
            @Override
            public final void a(MaterialButtonToggleGroup materialButtonToggleGroup2, int i10, boolean z10) {
                this.f29311a.g(materialButtonToggleGroup2, i10, z10);
            }
        });
        this.f29321j.setVisibility(0);
        l();
    }

    private void l() {
        MaterialButtonToggleGroup materialButtonToggleGroup = this.f29321j;
        if (materialButtonToggleGroup == null) {
            return;
        }
        materialButtonToggleGroup.check(this.f29313b.f29275e == 0 ? R$id.material_clock_period_am_button : R$id.material_clock_period_pm_button);
    }

    @Override
    public void c(int i10) {
        this.f29313b.f29274d = i10;
        this.f29316e.setChecked(i10 == 12);
        this.f29317f.setChecked(i10 == 10);
        l();
    }

    public void e() {
        this.f29316e.setChecked(false);
        this.f29317f.setChecked(false);
    }

    public void f() {
        d();
        j(this.f29313b);
        this.f29318g.a();
    }

    @Override
    public void hide() {
        View focusedChild = this.f29312a.getFocusedChild();
        if (focusedChild != null) {
            f0.o(focusedChild, false);
        }
        this.f29312a.setVisibility(8);
    }

    public void i() {
        this.f29316e.setChecked(this.f29313b.f29274d == 12);
        this.f29317f.setChecked(this.f29313b.f29274d == 10);
    }

    @Override
    public void invalidate() {
        j(this.f29313b);
    }

    @Override
    public void show() {
        this.f29312a.setVisibility(0);
        c(this.f29313b.f29274d);
    }
}
