package com.google.android.material.timepicker;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Checkable;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.chip.Chip;
import java.util.Locale;

class TimePickerView extends ConstraintLayout {

    private final Chip f29276a;

    private final Chip f29277b;

    private final ClockHandView f29278c;

    private final ClockFaceView f29279d;

    private final MaterialButtonToggleGroup f29280e;

    private final View.OnClickListener f29281f;

    private e f29282g;

    private f f29283h;

    private d f29284i;

    class a implements View.OnClickListener {
        a() {
        }

        @Override
        public void onClick(View view) {
            if (TimePickerView.this.f29283h != null) {
                TimePickerView.this.f29283h.c(((Integer) view.getTag(R$id.selection_type)).intValue());
            }
        }
    }

    class b extends GestureDetector.SimpleOnGestureListener {
        b() {
        }

        @Override
        public boolean onDoubleTap(MotionEvent motionEvent) {
            d dVar = TimePickerView.this.f29284i;
            if (dVar == null) {
                return false;
            }
            dVar.n();
            return true;
        }
    }

    class c implements View.OnTouchListener {

        final GestureDetector f29287a;

        c(GestureDetector gestureDetector) {
            this.f29287a = gestureDetector;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (((Checkable) view).isChecked()) {
                return this.f29287a.onTouchEvent(motionEvent);
            }
            return false;
        }
    }

    interface d {
        void n();
    }

    interface e {
        void b(int i10);
    }

    interface f {
        void c(int i10);
    }

    public TimePickerView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void B(Chip chip, boolean z10) {
        chip.setChecked(z10);
        ViewCompat.setAccessibilityLiveRegion(chip, z10 ? 2 : 0);
    }

    public void m(MaterialButtonToggleGroup materialButtonToggleGroup, int i10, boolean z10) {
        e eVar;
        if (z10 && (eVar = this.f29282g) != null) {
            eVar.b(i10 == R$id.material_clock_period_pm_button ? 1 : 0);
        }
    }

    private void x() {
        this.f29276a.setTag(R$id.selection_type, 12);
        this.f29277b.setTag(R$id.selection_type, 10);
        this.f29276a.setOnClickListener(this.f29281f);
        this.f29277b.setOnClickListener(this.f29281f);
        this.f29276a.setAccessibilityClassName("android.view.View");
        this.f29277b.setAccessibilityClassName("android.view.View");
    }

    private void z() {
        c cVar = new c(new GestureDetector(getContext(), new b()));
        this.f29276a.setOnTouchListener(cVar);
        this.f29277b.setOnTouchListener(cVar);
    }

    public void A() {
        this.f29280e.setVisibility(0);
    }

    public void C(int i10, int i11, int i12) {
        this.f29280e.check(i10 == 1 ? R$id.material_clock_period_pm_button : R$id.material_clock_period_am_button);
        Locale locale = getResources().getConfiguration().locale;
        String str = String.format(locale, TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i12));
        String str2 = String.format(locale, TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i11));
        if (!TextUtils.equals(this.f29276a.getText(), str)) {
            this.f29276a.setText(str);
        }
        if (TextUtils.equals(this.f29277b.getText(), str2)) {
            return;
        }
        this.f29277b.setText(str2);
    }

    public void k(ClockHandView.c cVar) {
        this.f29278c.b(cVar);
    }

    int l() {
        return this.f29279d.u();
    }

    public void n(int i10) {
        B(this.f29276a, i10 == 12);
        B(this.f29277b, i10 == 10);
    }

    public void o(boolean z10) {
        this.f29278c.n(z10);
    }

    @Override
    protected void onVisibilityChanged(View view, int i10) {
        super.onVisibilityChanged(view, i10);
        if (view == this && i10 == 0) {
            this.f29277b.sendAccessibilityEvent(8);
        }
    }

    void p(int i10) {
        this.f29279d.y(i10);
    }

    public void q(float f10, boolean z10) {
        this.f29278c.r(f10, z10);
    }

    public void r(AccessibilityDelegateCompat accessibilityDelegateCompat) {
        ViewCompat.setAccessibilityDelegate(this.f29276a, accessibilityDelegateCompat);
    }

    public void s(AccessibilityDelegateCompat accessibilityDelegateCompat) {
        ViewCompat.setAccessibilityDelegate(this.f29277b, accessibilityDelegateCompat);
    }

    public void t(ClockHandView.b bVar) {
        this.f29278c.u(bVar);
    }

    void u(d dVar) {
        this.f29284i = dVar;
    }

    void v(e eVar) {
        this.f29282g = eVar;
    }

    void w(f fVar) {
        this.f29283h = fVar;
    }

    public void y(String[] strArr, int i10) {
        this.f29279d.z(strArr, i10);
    }

    public TimePickerView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f29281f = new a();
        LayoutInflater.from(context).inflate(R$layout.material_timepicker, this);
        this.f29279d = (ClockFaceView) findViewById(R$id.material_clock_face);
        MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) findViewById(R$id.material_clock_period_toggle);
        this.f29280e = materialButtonToggleGroup;
        materialButtonToggleGroup.addOnButtonCheckedListener(new MaterialButtonToggleGroup.c() {
            @Override
            public final void a(MaterialButtonToggleGroup materialButtonToggleGroup2, int i11, boolean z10) {
                this.f29329a.m(materialButtonToggleGroup2, i11, z10);
            }
        });
        this.f29276a = (Chip) findViewById(R$id.material_minute_tv);
        this.f29277b = (Chip) findViewById(R$id.material_hour_tv);
        this.f29278c = (ClockHandView) findViewById(R$id.material_clock_hand);
        z();
        x();
    }
}
