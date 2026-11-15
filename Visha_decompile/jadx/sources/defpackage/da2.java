package defpackage;

import android.content.Context;
import android.graphics.Color;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.yandex.div.R;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div.core.view2.errors.VariableMonitor;
import com.yandex.div.core.view2.errors.VariableMonitorView;
import java.util.Map;
import org.mozilla.classfile.ByteCode;
import org.mozilla.javascript.ES6Iterator;

public final class da2 extends LinearLayout {
    public final c74 b;
    public final c74 c;
    public final VariableMonitor d;
    public final AppCompatTextView e;
    public final VariableMonitorView f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public da2(Context context, e74 e74Var, c74 c74Var, c74 c74Var2) {
        super(context);
        y45.j(context, "context");
        y45.j(e74Var, "errorHandler");
        y45.j(c74Var, "onCloseAction");
        y45.j(c74Var2, "onCopyAction");
        this.b = c74Var;
        this.c = c74Var2;
        VariableMonitor variableMonitor = new VariableMonitor(e74Var);
        this.d = variableMonitor;
        this.e = g();
        this.f = new VariableMonitorView(context, variableMonitor);
        c();
    }

    public static final void e(da2 da2Var, View view) {
        y45.j(da2Var, "this$0");
        da2Var.b.invoke();
    }

    public static final void f(da2 da2Var, View view) {
        y45.j(da2Var, "this$0");
        da2Var.c.invoke();
    }

    public final void c() {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        y45.i(displayMetrics, "resources.displayMetrics");
        int iL = BaseDivViewExtensionsKt.L(8, displayMetrics);
        setPadding(iL, iL, iL, iL);
        setOrientation(1);
        setBackgroundColor(Color.argb(ByteCode.INVOKEDYNAMIC, 0, 0, 0));
        setElevation(getResources().getDimension(R.dimen.div_shadow_elevation));
        addView(h(), new LinearLayout.LayoutParams(-2, -2));
        addView(this.f, new LinearLayout.LayoutParams(-1, -2));
    }

    public final LinearLayout d() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        DisplayMetrics displayMetrics = linearLayout.getResources().getDisplayMetrics();
        y45.i(displayMetrics, "resources.displayMetrics");
        linearLayout.setPadding(0, 0, BaseDivViewExtensionsKt.L(8, displayMetrics), 0);
        linearLayout.setOrientation(1);
        ImageView imageView = new ImageView(linearLayout.getContext());
        imageView.setImageResource(android.R.drawable.ic_menu_close_clear_cancel);
        imageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                da2.e(this.b, view);
            }
        });
        ImageView imageView2 = new ImageView(linearLayout.getContext());
        imageView2.setImageResource(android.R.drawable.ic_menu_save);
        imageView2.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                da2.f(this.b, view);
            }
        });
        linearLayout.addView(imageView, new LinearLayout.LayoutParams(-2, -2));
        linearLayout.addView(imageView2, new LinearLayout.LayoutParams(-2, -2));
        return linearLayout;
    }

    public final AppCompatTextView g() {
        AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
        appCompatTextView.setTextColor(-1);
        appCompatTextView.setGravity(3);
        return appCompatTextView;
    }

    public final LinearLayout h() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        LinearLayout linearLayoutD = d();
        DisplayMetrics displayMetrics = linearLayout.getResources().getDisplayMetrics();
        y45.i(displayMetrics, "resources.displayMetrics");
        linearLayout.addView(linearLayoutD, new LinearLayout.LayoutParams(BaseDivViewExtensionsKt.L(32, displayMetrics), -2));
        linearLayout.addView(this.e, new LinearLayout.LayoutParams(-2, -2));
        return linearLayout;
    }

    public final void i(String str) {
        y45.j(str, ES6Iterator.VALUE_PROPERTY);
        this.e.setText(str);
    }

    public final void j(Map map) {
        y45.j(map, "controllers");
        this.d.k(map);
    }
}
