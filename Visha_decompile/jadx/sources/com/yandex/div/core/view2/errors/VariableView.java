package com.yandex.div.core.view2.errors;

import android.content.Context;
import android.text.method.ScrollingMovementMethod;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.yandex.div.R;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div.core.view2.errors.VariableView;
import defpackage.e74;
import defpackage.y45;
import defpackage.zfb;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class VariableView extends LinearLayout {
    public static final a f = new a(null);
    public final TextView b;
    public final TextView c;
    public final EditText d;
    public e74 e;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VariableView(Context context) {
        super(context);
        y45.j(context, "context");
        TextView textViewD = d();
        this.b = textViewD;
        TextView textViewD2 = d();
        this.c = textViewD2;
        EditText editTextE = e();
        this.d = editTextE;
        this.e = new e74() {
            public final void invoke(String str) {
                y45.j(str, "it");
            }

            @Override
            public Object invoke(Object obj) {
                invoke((String) obj);
                return zfb.a;
            }
        };
        setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        setOrientation(0);
        b(textViewD, 200);
        b(textViewD2, 60);
        addView(editTextE, new LinearLayout.LayoutParams(-2, -2, 1.0f));
    }

    public static final boolean f(VariableView variableView, EditText editText, TextView textView, int i, KeyEvent keyEvent) {
        y45.j(variableView, "this$0");
        y45.j(editText, "$this_apply");
        if ((keyEvent != null && keyEvent.getAction() != 0) || i != 6) {
            return false;
        }
        variableView.e.invoke(editText.getText().toString());
        return true;
    }

    public final void b(TextView textView, int i) {
        Integer numValueOf = Integer.valueOf(i);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        y45.i(displayMetrics, "resources.displayMetrics");
        addView(textView, new LinearLayout.LayoutParams(BaseDivViewExtensionsKt.L(numValueOf, displayMetrics), -1));
    }

    public final void c(TextView textView) {
        DisplayMetrics displayMetrics = textView.getResources().getDisplayMetrics();
        y45.i(displayMetrics, "resources.displayMetrics");
        int iL = BaseDivViewExtensionsKt.L(8, displayMetrics);
        textView.setPadding(iL, iL, iL, iL);
        textView.setTextColor(-1);
        textView.setBackgroundResource(R.drawable.table_cell_background);
        textView.setHorizontallyScrolling(true);
        textView.setMovementMethod(new ScrollingMovementMethod());
        textView.setMaxLines(1);
    }

    public final TextView d() {
        TextView textView = new TextView(getContext());
        c(textView);
        return textView;
    }

    public final EditText e() {
        final EditText editText = new EditText(getContext());
        c(editText);
        editText.setImeOptions(6);
        editText.setOnEditorActionListener(new TextView.OnEditorActionListener() {
            @Override
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                return VariableView.f(this.b, editText, textView, i, keyEvent);
            }
        });
        return editText;
    }

    public final TextView g() {
        return this.b;
    }

    public final TextView h() {
        return this.c;
    }

    public final EditText i() {
        return this.d;
    }

    public final void j(e74 e74Var) {
        y45.j(e74Var, "<set-?>");
        this.e = e74Var;
    }
}
