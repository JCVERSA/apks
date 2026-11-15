package com.google.android.material.textfield;

import android.content.Context;
import android.text.Editable;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.EditText;
import androidx.core.view.accessibility.AccessibilityManagerCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.internal.CheckableImageButton;

abstract class s {

    final TextInputLayout f29151a;

    final r f29152b;

    final Context f29153c;

    final CheckableImageButton f29154d;

    s(r rVar) {
        this.f29151a = rVar.f29121a;
        this.f29152b = rVar;
        this.f29153c = rVar.getContext();
        this.f29154d = rVar.t();
    }

    void a(Editable editable) {
    }

    void b(CharSequence charSequence, int i10, int i11, int i12) {
    }

    int c() {
        return 0;
    }

    int d() {
        return 0;
    }

    View.OnFocusChangeListener e() {
        return null;
    }

    View.OnClickListener f() {
        return null;
    }

    View.OnFocusChangeListener g() {
        return null;
    }

    AccessibilityManagerCompat.TouchExplorationStateChangeListener h() {
        return null;
    }

    boolean i(int i10) {
        return true;
    }

    boolean j() {
        return false;
    }

    boolean k() {
        return false;
    }

    boolean l() {
        return false;
    }

    boolean m() {
        return false;
    }

    void n(EditText editText) {
    }

    void o(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
    }

    void p(View view, AccessibilityEvent accessibilityEvent) {
    }

    void q(boolean z10) {
    }

    final void r() {
        this.f29152b.P(false);
    }

    void s() {
    }

    boolean t() {
        return false;
    }

    void u() {
    }
}
