package defpackage;

import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.text.method.ScrollingMovementMethod;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.cloud.hisavana.sdk.R;
import java.util.ArrayList;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class io1 {
    public static final a g = new a(null);
    public final View a;
    public PopupWindow b;
    public ko1 c;
    public ko1 d;
    public final ArrayList e;
    public c74 f;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public io1(View view) {
        y45.j(view, "parent");
        this.a = view;
        this.e = new ArrayList();
    }

    public static final void e(io1 io1Var, jo1 jo1Var, View view) {
        y45.j(io1Var, "this$0");
        y45.j(jo1Var, "$buttonInfo");
        io1Var.f();
        c74 c74VarA = jo1Var.a();
        if (c74VarA != null) {
            c74VarA.invoke();
        }
        jo1Var.e(null);
    }

    public static final void l(io1 io1Var) {
        y45.j(io1Var, "this$0");
        c74 c74Var = io1Var.f;
        if (c74Var != null) {
            c74Var.invoke();
        }
        io1Var.f = null;
    }

    public final io1 c(jo1 jo1Var) {
        this.e.add(jo1Var);
        if (this.e.size() > 2) {
            this.e.remove(0);
        }
        return this;
    }

    public final void d(Button button, final jo1 jo1Var) {
        if (button != null) {
            button.setText(jo1Var.d());
            button.setTextColor(jo1Var.b());
            button.setTextSize(jo1Var.c());
            button.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    io1.e(this.b, jo1Var, view);
                }
            });
        }
    }

    public final void f() {
        try {
            PopupWindow popupWindow = this.b;
            if (popupWindow != null) {
                popupWindow.dismiss();
            }
            this.b = null;
        } catch (Throwable unused) {
        }
    }

    public final void g() {
        f();
    }

    public final io1 h(String str) {
        y45.j(str, "message");
        this.d = ko1.d.a(str);
        return this;
    }

    public final io1 i(String str, c74 c74Var) {
        y45.j(str, "text");
        c(jo1.e.a(str, c74Var));
        return this;
    }

    public final io1 j(String str) {
        y45.j(str, "title");
        this.c = ko1.d.b(str);
        return this;
    }

    public final void k() {
        ko1 ko1Var;
        String strB;
        ko1 ko1Var2;
        String strB2;
        ko1 ko1Var3 = this.c;
        if (ko1Var3 != null && (strB = ko1Var3.b()) != null && strB.length() == 0 && (ko1Var2 = this.d) != null && (strB2 = ko1Var2.b()) != null && strB2.length() == 0 && this.e.isEmpty()) {
            ikd.b().w("CustomDialog", "Custom dialog show failed, title and message and buttons is all empty.");
            return;
        }
        try {
            g();
            View viewInflate = LayoutInflater.from(ul4.a()).inflate(R.layout.hs_custom_dialog_layout, (ViewGroup) null);
            y45.i(viewInflate, "inflate(...)");
            FrameLayout frameLayout = new FrameLayout(ul4.a());
            frameLayout.setBackgroundColor(Color.parseColor("#33000000"));
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            layoutParams.gravity = 17;
            zfb zfbVar = zfb.a;
            frameLayout.addView(viewInflate, layoutParams);
            this.b = new PopupWindow((View) frameLayout, -1, -1, false);
            TextView textView = (TextView) viewInflate.findViewById(R.id.dialog_title);
            if (textView != null && (ko1Var = this.c) != null) {
                textView.setText(ko1Var.b());
                textView.setTextSize(ko1Var.c());
                textView.setTextColor(ko1Var.a());
            }
            TextView textView2 = (TextView) viewInflate.findViewById(R.id.dialog_message);
            if (textView2 != null) {
                textView2.setMovementMethod(new ScrollingMovementMethod());
                textView2.setOverScrollMode(0);
                ko1 ko1Var4 = this.d;
                if (ko1Var4 != null) {
                    textView2.setText(ko1Var4.b());
                    textView2.setTextSize(ko1Var4.c());
                    textView2.setTextColor(ko1Var4.a());
                }
                textView2.setMaxHeight(hm4.f() == 2 ? hm4.a(90.0f) : hm4.a(300.0f));
            }
            Button button = (Button) viewInflate.findViewById(R.id.dialog_button1);
            Button button2 = (Button) viewInflate.findViewById(R.id.dialog_button2);
            View viewFindViewById = viewInflate.findViewById(R.id.separator_v);
            if (this.e.isEmpty()) {
                if (button != null) {
                    button.setVisibility(8);
                }
                if (button2 != null) {
                    button2.setVisibility(8);
                }
                if (viewFindViewById != null) {
                    viewFindViewById.setVisibility(8);
                }
            } else {
                d(button, (jo1) i81.o0(this.e));
                if (this.e.size() == 1) {
                    if (button2 != null) {
                        button2.setVisibility(8);
                    }
                    if (viewFindViewById != null) {
                        viewFindViewById.setVisibility(8);
                    }
                } else {
                    Object obj = this.e.get(1);
                    y45.i(obj, "get(...)");
                    d(button2, (jo1) obj);
                }
            }
            PopupWindow popupWindow = this.b;
            if (popupWindow != null) {
                popupWindow.setBackgroundDrawable(new ColorDrawable());
                popupWindow.setAnimationStyle(androidx.appcompat.R.style.Animation_AppCompat_Dialog);
                popupWindow.setOutsideTouchable(false);
                popupWindow.setTouchable(true);
                popupWindow.setFocusable(true);
                popupWindow.setClippingEnabled(true);
                popupWindow.setIsClippedToScreen(true);
                popupWindow.setOnDismissListener(new PopupWindow.OnDismissListener() {
                    @Override
                    public final void onDismiss() {
                        io1.l(this.b);
                    }
                });
                popupWindow.update();
                popupWindow.showAtLocation(this.a, 0, 0, 0);
            }
        } catch (Throwable th) {
            ikd.b().w("CustomDialog", "Show custom dialog failed, error: " + Log.getStackTraceString(th));
        }
    }
}
