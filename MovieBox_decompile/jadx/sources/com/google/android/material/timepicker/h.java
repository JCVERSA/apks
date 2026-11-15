package com.google.android.material.timepicker;

import android.content.Context;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.cloud.tmc.kernel.proxy.performanceanalyse.ChainPoint;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.google.android.material.R$string;

class h implements ClockHandView.c, TimePickerView.f, TimePickerView.e, ClockHandView.b, i {

    private static final String[] f29297f = {"12", "1", "2", "3", "4", "5", PrepareException.ERROR_NO_URL, "7", PrepareException.ERROR_MANIFEST_INFO, PrepareException.ERROR_MINI_APP_CLOSE, "10", PrepareException.ERROR_DOWNLOAD_PACKAGE_URL_EMPTY};

    private static final String[] f29298g = {"00", "1", "2", "3", "4", "5", PrepareException.ERROR_NO_URL, "7", PrepareException.ERROR_MANIFEST_INFO, PrepareException.ERROR_MINI_APP_CLOSE, "10", PrepareException.ERROR_DOWNLOAD_PACKAGE_URL_EMPTY, "12", PrepareException.ERROR_WARMUP_DOWNLOAD_EXCEPTION, "14", PrepareException.ERROR_FILE2VURL_MINIAPP_FILE_EXCEPTION, "16", "17", "18", "19", "20", ChainPoint.ROUTE_PAGE, "22", "23"};

    private static final String[] f29299h = {"00", "5", "10", PrepareException.ERROR_FILE2VURL_MINIAPP_FILE_EXCEPTION, "20", "25", "30", "35", "40", "45", "50", "55"};

    private final TimePickerView f29300a;

    private final TimeModel f29301b;

    private float f29302c;

    private float f29303d;

    private boolean f29304e = false;

    class a extends com.google.android.material.timepicker.b {
        a(Context context, int i10) {
            super(context, i10);
        }

        @Override
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setContentDescription(view.getResources().getString(h.this.f29301b.c(), String.valueOf(h.this.f29301b.d())));
        }
    }

    class b extends com.google.android.material.timepicker.b {
        b(Context context, int i10) {
            super(context, i10);
        }

        @Override
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setContentDescription(view.getResources().getString(R$string.material_minute_suffix, String.valueOf(h.this.f29301b.f29273c)));
        }
    }

    public h(TimePickerView timePickerView, TimeModel timeModel) {
        this.f29300a = timePickerView;
        this.f29301b = timeModel;
        h();
    }

    private String[] f() {
        return this.f29301b.f29271a == 1 ? f29298g : f29297f;
    }

    private int g() {
        return (this.f29301b.d() * 30) % 360;
    }

    private void i(int i10, int i11) {
        TimeModel timeModel = this.f29301b;
        if (timeModel.f29273c == i11 && timeModel.f29272b == i10) {
            return;
        }
        this.f29300a.performHapticFeedback(4);
    }

    private void k() {
        TimeModel timeModel = this.f29301b;
        int i10 = 1;
        if (timeModel.f29274d == 10 && timeModel.f29271a == 1 && timeModel.f29272b >= 12) {
            i10 = 2;
        }
        this.f29300a.p(i10);
    }

    private void l() {
        TimePickerView timePickerView = this.f29300a;
        TimeModel timeModel = this.f29301b;
        timePickerView.C(timeModel.f29275e, timeModel.d(), this.f29301b.f29273c);
    }

    private void m() {
        n(f29297f, TimeModel.NUMBER_FORMAT);
        n(f29299h, TimeModel.ZERO_LEADING_NUMBER_FORMAT);
    }

    private void n(String[] strArr, String str) {
        for (int i10 = 0; i10 < strArr.length; i10++) {
            strArr[i10] = TimeModel.b(this.f29300a.getResources(), strArr[i10], str);
        }
    }

    @Override
    public void a(float f10, boolean z10) {
        this.f29304e = true;
        TimeModel timeModel = this.f29301b;
        int i10 = timeModel.f29273c;
        int i11 = timeModel.f29272b;
        if (timeModel.f29274d == 10) {
            this.f29300a.q(this.f29303d, false);
            AccessibilityManager accessibilityManager = (AccessibilityManager) androidx.core.content.b.getSystemService(this.f29300a.getContext(), AccessibilityManager.class);
            if (accessibilityManager == null || !accessibilityManager.isTouchExplorationEnabled()) {
                j(12, true);
            }
        } else {
            int iRound = Math.round(f10);
            if (!z10) {
                this.f29301b.i(((iRound + 15) / 30) * 5);
                this.f29302c = this.f29301b.f29273c * 6;
            }
            this.f29300a.q(this.f29302c, z10);
        }
        this.f29304e = false;
        l();
        i(i11, i10);
    }

    @Override
    public void b(int i10) {
        this.f29301b.j(i10);
    }

    @Override
    public void c(int i10) {
        j(i10, true);
    }

    @Override
    public void d(float f10, boolean z10) {
        if (this.f29304e) {
            return;
        }
        TimeModel timeModel = this.f29301b;
        int i10 = timeModel.f29272b;
        int i11 = timeModel.f29273c;
        int iRound = Math.round(f10);
        TimeModel timeModel2 = this.f29301b;
        if (timeModel2.f29274d == 12) {
            timeModel2.i((iRound + 3) / 6);
            this.f29302c = (float) Math.floor(this.f29301b.f29273c * 6);
        } else {
            int i12 = (iRound + 15) / 30;
            if (timeModel2.f29271a == 1) {
                i12 %= 12;
                if (this.f29300a.l() == 2) {
                    i12 += 12;
                }
            }
            this.f29301b.h(i12);
            this.f29303d = g();
        }
        if (z10) {
            return;
        }
        l();
        i(i10, i11);
    }

    public void h() {
        if (this.f29301b.f29271a == 0) {
            this.f29300a.A();
        }
        this.f29300a.k(this);
        this.f29300a.w(this);
        this.f29300a.v(this);
        this.f29300a.t(this);
        m();
        invalidate();
    }

    @Override
    public void hide() {
        this.f29300a.setVisibility(8);
    }

    @Override
    public void invalidate() {
        this.f29303d = g();
        TimeModel timeModel = this.f29301b;
        this.f29302c = timeModel.f29273c * 6;
        j(timeModel.f29274d, false);
        l();
    }

    void j(int i10, boolean z10) {
        boolean z11 = i10 == 12;
        this.f29300a.o(z11);
        this.f29301b.f29274d = i10;
        this.f29300a.y(z11 ? f29299h : f(), z11 ? R$string.material_minute_suffix : this.f29301b.c());
        k();
        this.f29300a.q(z11 ? this.f29302c : this.f29303d, z10);
        this.f29300a.n(i10);
        this.f29300a.s(new a(this.f29300a.getContext(), R$string.material_hour_selection));
        this.f29300a.r(new b(this.f29300a.getContext(), R$string.material_minute_selection));
    }

    @Override
    public void show() {
        this.f29300a.setVisibility(0);
    }
}
