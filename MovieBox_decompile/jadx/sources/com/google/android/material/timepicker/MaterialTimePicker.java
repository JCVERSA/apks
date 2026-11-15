package com.google.android.material.timepicker;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.DialogFragment;
import com.google.android.material.R$attr;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.R$string;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.button.MaterialButton;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

public final class MaterialTimePicker extends DialogFragment implements TimePickerView.d {

    private TimePickerView f29250e;

    private ViewStub f29251f;

    private h f29252g;

    private l f29253h;

    private i f29254i;

    private int f29255j;

    private int f29256k;

    private CharSequence f29258m;

    private CharSequence f29260o;

    private CharSequence f29262q;

    private MaterialButton f29263r;

    private Button f29264s;

    private TimeModel f29266u;

    private final Set f29246a = new LinkedHashSet();

    private final Set f29247b = new LinkedHashSet();

    private final Set f29248c = new LinkedHashSet();

    private final Set f29249d = new LinkedHashSet();

    private int f29257l = 0;

    private int f29259n = 0;

    private int f29261p = 0;

    private int f29265t = 0;

    private int f29267v = 0;

    class a implements View.OnClickListener {
        a() {
        }

        @Override
        public void onClick(View view) {
            Iterator it = MaterialTimePicker.this.f29246a.iterator();
            while (it.hasNext()) {
                ((View.OnClickListener) it.next()).onClick(view);
            }
            MaterialTimePicker.this.dismiss();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override
        public void onClick(View view) {
            Iterator it = MaterialTimePicker.this.f29247b.iterator();
            while (it.hasNext()) {
                ((View.OnClickListener) it.next()).onClick(view);
            }
            MaterialTimePicker.this.dismiss();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override
        public void onClick(View view) {
            MaterialTimePicker materialTimePicker = MaterialTimePicker.this;
            materialTimePicker.f29265t = materialTimePicker.f29265t == 0 ? 1 : 0;
            MaterialTimePicker materialTimePicker2 = MaterialTimePicker.this;
            materialTimePicker2.k0(materialTimePicker2.f29263r);
        }
    }

    private Pair e0(int i10) {
        if (i10 == 0) {
            return new Pair(Integer.valueOf(this.f29255j), Integer.valueOf(R$string.material_timepicker_text_input_mode_description));
        }
        if (i10 == 1) {
            return new Pair(Integer.valueOf(this.f29256k), Integer.valueOf(R$string.material_timepicker_clock_mode_description));
        }
        throw new IllegalArgumentException("no icon for mode: " + i10);
    }

    private int f0() {
        int i10 = this.f29267v;
        if (i10 != 0) {
            return i10;
        }
        TypedValue typedValueA = za.b.a(requireContext(), R$attr.materialTimePickerTheme);
        if (typedValueA == null) {
            return 0;
        }
        return typedValueA.data;
    }

    private i g0(int i10, TimePickerView timePickerView, ViewStub viewStub) {
        if (i10 != 0) {
            if (this.f29253h == null) {
                this.f29253h = new l((LinearLayout) viewStub.inflate(), this.f29266u);
            }
            this.f29253h.e();
            return this.f29253h;
        }
        h hVar = this.f29252g;
        if (hVar == null) {
            hVar = new h(timePickerView, this.f29266u);
        }
        this.f29252g = hVar;
        return hVar;
    }

    public void h0() {
        i iVar = this.f29254i;
        if (iVar instanceof l) {
            ((l) iVar).i();
        }
    }

    private void i0(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        TimeModel timeModel = (TimeModel) bundle.getParcelable("TIME_PICKER_TIME_MODEL");
        this.f29266u = timeModel;
        if (timeModel == null) {
            this.f29266u = new TimeModel();
        }
        this.f29265t = bundle.getInt("TIME_PICKER_INPUT_MODE", this.f29266u.f29271a != 1 ? 0 : 1);
        this.f29257l = bundle.getInt("TIME_PICKER_TITLE_RES", 0);
        this.f29258m = bundle.getCharSequence("TIME_PICKER_TITLE_TEXT");
        this.f29259n = bundle.getInt("TIME_PICKER_POSITIVE_BUTTON_TEXT_RES", 0);
        this.f29260o = bundle.getCharSequence("TIME_PICKER_POSITIVE_BUTTON_TEXT");
        this.f29261p = bundle.getInt("TIME_PICKER_NEGATIVE_BUTTON_TEXT_RES", 0);
        this.f29262q = bundle.getCharSequence("TIME_PICKER_NEGATIVE_BUTTON_TEXT");
        this.f29267v = bundle.getInt("TIME_PICKER_OVERRIDE_THEME_RES_ID", 0);
    }

    private void j0() {
        Button button = this.f29264s;
        if (button != null) {
            button.setVisibility(isCancelable() ? 0 : 8);
        }
    }

    public void k0(MaterialButton materialButton) {
        if (materialButton == null || this.f29250e == null || this.f29251f == null) {
            return;
        }
        i iVar = this.f29254i;
        if (iVar != null) {
            iVar.hide();
        }
        i iVarG0 = g0(this.f29265t, this.f29250e, this.f29251f);
        this.f29254i = iVarG0;
        iVarG0.show();
        this.f29254i.invalidate();
        Pair pairE0 = e0(this.f29265t);
        materialButton.setIconResource(((Integer) pairE0.first).intValue());
        materialButton.setContentDescription(getResources().getString(((Integer) pairE0.second).intValue()));
        materialButton.sendAccessibilityEvent(4);
    }

    @Override
    public void n() {
        this.f29265t = 1;
        k0(this.f29263r);
        this.f29253h.i();
    }

    @Override
    public final void onCancel(DialogInterface dialogInterface) {
        Iterator it = this.f29248c.iterator();
        while (it.hasNext()) {
            ((DialogInterface.OnCancelListener) it.next()).onCancel(dialogInterface);
        }
        super.onCancel(dialogInterface);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        i0(bundle);
    }

    @Override
    public final Dialog onCreateDialog(Bundle bundle) {
        Dialog dialog = new Dialog(requireContext(), f0());
        Context context = dialog.getContext();
        cb.i iVar = new cb.i(context, null, R$attr.materialTimePickerStyle, R$style.Widget_MaterialComponents_TimePicker);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, R$styleable.MaterialTimePicker, R$attr.materialTimePickerStyle, R$style.Widget_MaterialComponents_TimePicker);
        this.f29256k = typedArrayObtainStyledAttributes.getResourceId(R$styleable.MaterialTimePicker_clockIcon, 0);
        this.f29255j = typedArrayObtainStyledAttributes.getResourceId(R$styleable.MaterialTimePicker_keyboardIcon, 0);
        int color = typedArrayObtainStyledAttributes.getColor(R$styleable.MaterialTimePicker_backgroundTint, 0);
        typedArrayObtainStyledAttributes.recycle();
        iVar.S(context);
        iVar.d0(ColorStateList.valueOf(color));
        Window window = dialog.getWindow();
        window.setBackgroundDrawable(iVar);
        window.requestFeature(1);
        window.setLayout(-2, -2);
        iVar.c0(ViewCompat.getElevation(window.getDecorView()));
        return dialog;
    }

    @Override
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        ViewGroup viewGroup2 = (ViewGroup) layoutInflater.inflate(R$layout.material_timepicker_dialog, viewGroup);
        TimePickerView timePickerView = (TimePickerView) viewGroup2.findViewById(R$id.material_timepicker_view);
        this.f29250e = timePickerView;
        timePickerView.u(this);
        this.f29251f = (ViewStub) viewGroup2.findViewById(R$id.material_textinput_timepicker);
        this.f29263r = (MaterialButton) viewGroup2.findViewById(R$id.material_timepicker_mode_button);
        TextView textView = (TextView) viewGroup2.findViewById(R$id.header_title);
        int i10 = this.f29257l;
        if (i10 != 0) {
            textView.setText(i10);
        } else if (!TextUtils.isEmpty(this.f29258m)) {
            textView.setText(this.f29258m);
        }
        k0(this.f29263r);
        Button button = (Button) viewGroup2.findViewById(R$id.material_timepicker_ok_button);
        button.setOnClickListener(new a());
        int i11 = this.f29259n;
        if (i11 != 0) {
            button.setText(i11);
        } else if (!TextUtils.isEmpty(this.f29260o)) {
            button.setText(this.f29260o);
        }
        Button button2 = (Button) viewGroup2.findViewById(R$id.material_timepicker_cancel_button);
        this.f29264s = button2;
        button2.setOnClickListener(new b());
        int i12 = this.f29261p;
        if (i12 != 0) {
            this.f29264s.setText(i12);
        } else if (!TextUtils.isEmpty(this.f29262q)) {
            this.f29264s.setText(this.f29262q);
        }
        j0();
        this.f29263r.setOnClickListener(new c());
        return viewGroup2;
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        this.f29254i = null;
        this.f29252g = null;
        this.f29253h = null;
        TimePickerView timePickerView = this.f29250e;
        if (timePickerView != null) {
            timePickerView.u(null);
            this.f29250e = null;
        }
    }

    @Override
    public final void onDismiss(DialogInterface dialogInterface) {
        Iterator it = this.f29249d.iterator();
        while (it.hasNext()) {
            ((DialogInterface.OnDismissListener) it.next()).onDismiss(dialogInterface);
        }
        super.onDismiss(dialogInterface);
    }

    @Override
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("TIME_PICKER_TIME_MODEL", this.f29266u);
        bundle.putInt("TIME_PICKER_INPUT_MODE", this.f29265t);
        bundle.putInt("TIME_PICKER_TITLE_RES", this.f29257l);
        bundle.putCharSequence("TIME_PICKER_TITLE_TEXT", this.f29258m);
        bundle.putInt("TIME_PICKER_POSITIVE_BUTTON_TEXT_RES", this.f29259n);
        bundle.putCharSequence("TIME_PICKER_POSITIVE_BUTTON_TEXT", this.f29260o);
        bundle.putInt("TIME_PICKER_NEGATIVE_BUTTON_TEXT_RES", this.f29261p);
        bundle.putCharSequence("TIME_PICKER_NEGATIVE_BUTTON_TEXT", this.f29262q);
        bundle.putInt("TIME_PICKER_OVERRIDE_THEME_RES_ID", this.f29267v);
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (this.f29254i instanceof l) {
            view.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    this.f29291a.h0();
                }
            }, 100L);
        }
    }

    @Override
    public void setCancelable(boolean z10) {
        super.setCancelable(z10);
        j0();
    }
}
