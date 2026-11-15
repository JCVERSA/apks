package com.bigkoo.pickerview.view;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import com.bigkoo.pickerview.R$id;
import com.bigkoo.pickerview.R$layout;
import com.bigkoo.pickerview.R$style;
import java.lang.reflect.Method;

public abstract class BasePickerView {

    private Context f19330a;

    protected ViewGroup f19331b;

    private ViewGroup f19332c;

    private ViewGroup f19333d;

    protected r5.a f19334e;

    private boolean f19335f;

    private Animation f19336g;

    private Animation f19337h;

    private boolean f19338i;

    private Dialog f19340k;

    protected View f19341l;

    protected int f19339j = 80;

    private boolean f19342m = true;

    private View.OnKeyListener f19343n = new c();

    private final View.OnTouchListener f19344o = new d();

    class a implements View.OnClickListener {
        a() {
        }

        @Override
        public void onClick(View view) {
            BasePickerView.this.f();
        }
    }

    class c implements View.OnKeyListener {
        c() {
        }

        @Override
        public boolean onKey(View view, int i10, KeyEvent keyEvent) {
            if (i10 != 4 || keyEvent.getAction() != 0 || !BasePickerView.this.q()) {
                return false;
            }
            BasePickerView.this.f();
            return true;
        }
    }

    class d implements View.OnTouchListener {
        d() {
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0) {
                return false;
            }
            BasePickerView.this.f();
            return false;
        }
    }

    class e implements DialogInterface.OnDismissListener {
        e() {
        }

        @Override
        public void onDismiss(DialogInterface dialogInterface) {
            BasePickerView.a(BasePickerView.this);
        }
    }

    public BasePickerView(Context context) {
        this.f19330a = context;
    }

    static s5.b a(BasePickerView basePickerView) {
        basePickerView.getClass();
        return null;
    }

    private void g() {
        Dialog dialog = this.f19340k;
        if (dialog != null) {
            dialog.dismiss();
        }
    }

    private Animation i() {
        return AnimationUtils.loadAnimation(this.f19330a, t5.c.a(this.f19339j, true));
    }

    private static String j() {
        try {
            Method declaredMethod = Class.forName("android.os.SystemProperties").getDeclaredMethod("get", String.class);
            declaredMethod.setAccessible(true);
            return (String) declaredMethod.invoke(null, "qemu.hw.mainkeys");
        } catch (Throwable unused) {
            return null;
        }
    }

    public static int k(Context context) {
        Resources resources;
        int identifier;
        if (!m(context) || (identifier = (resources = context.getResources()).getIdentifier("navigation_bar_height", "dimen", "android")) <= 0) {
            return 0;
        }
        return resources.getDimensionPixelSize(identifier);
    }

    private Animation l() {
        return AnimationUtils.loadAnimation(this.f19330a, t5.c.a(this.f19339j, false));
    }

    public static boolean m(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("config_showNavigationBar", "bool", "android");
        if (identifier == 0) {
            return !ViewConfiguration.get(context).hasPermanentMenuKey();
        }
        boolean z10 = resources.getBoolean(identifier);
        String strJ = j();
        if ("1".equals(strJ)) {
            return false;
        }
        if ("0".equals(strJ)) {
            return true;
        }
        return z10;
    }

    private void r(View view) {
        this.f19334e.A.addView(view);
        if (this.f19342m) {
            this.f19331b.startAnimation(this.f19337h);
        }
    }

    private void w() {
        Dialog dialog = this.f19340k;
        if (dialog != null) {
            dialog.show();
        }
    }

    public void e() {
        if (this.f19333d != null) {
            Dialog dialog = new Dialog(this.f19330a, R$style.custom_dialog2);
            this.f19340k = dialog;
            dialog.setCancelable(this.f19334e.U);
            this.f19340k.setContentView(this.f19333d);
            Window window = this.f19340k.getWindow();
            if (window != null) {
                window.setWindowAnimations(R$style.picker_view_scale_anim);
                window.setGravity(17);
            }
            this.f19340k.setOnDismissListener(new e());
        }
    }

    public void f() {
        if (p()) {
            g();
            return;
        }
        if (this.f19335f) {
            return;
        }
        if (this.f19342m) {
            this.f19336g.setAnimationListener(new b());
            this.f19331b.startAnimation(this.f19336g);
        } else {
            h();
        }
        this.f19335f = true;
    }

    public View findViewById(int i10) {
        return this.f19331b.findViewById(i10);
    }

    public void h() {
        this.f19334e.A.post(new Runnable() {
            @Override
            public void run() {
                BasePickerView basePickerView = BasePickerView.this;
                basePickerView.f19334e.A.removeView(basePickerView.f19332c);
                BasePickerView.this.f19338i = false;
                BasePickerView.this.f19335f = false;
                BasePickerView.a(BasePickerView.this);
            }
        });
    }

    protected void n() {
        this.f19337h = i();
        this.f19336g = l();
    }

    protected void o() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2, 80);
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.f19330a);
        if (p()) {
            ViewGroup viewGroup = (ViewGroup) layoutInflaterFrom.inflate(R$layout.layout_basepickerview, (ViewGroup) null, false);
            this.f19333d = viewGroup;
            viewGroup.setBackgroundColor(0);
            ViewGroup viewGroup2 = (ViewGroup) this.f19333d.findViewById(R$id.content_container);
            this.f19331b = viewGroup2;
            layoutParams.leftMargin = 30;
            layoutParams.rightMargin = 30;
            viewGroup2.setLayoutParams(layoutParams);
            e();
            this.f19333d.setOnClickListener(new a());
        } else {
            r5.a aVar = this.f19334e;
            if (aVar.A == null) {
                aVar.A = (ViewGroup) ((Activity) this.f19330a).getWindow().getDecorView();
            }
            this.f19332c = (ViewGroup) layoutInflaterFrom.inflate(R$layout.layout_basepickerview, this.f19334e.A, false);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
            layoutParams2.bottomMargin = k(this.f19330a);
            this.f19332c.setLayoutParams(layoutParams2);
            int i10 = this.f19334e.R;
            if (i10 != -1) {
                this.f19332c.setBackgroundColor(i10);
            }
            ViewGroup viewGroup3 = (ViewGroup) this.f19332c.findViewById(R$id.content_container);
            this.f19331b = viewGroup3;
            viewGroup3.setLayoutParams(layoutParams);
        }
        t(true);
    }

    public abstract boolean p();

    public boolean q() {
        if (p()) {
            return false;
        }
        return this.f19332c.getParent() != null || this.f19338i;
    }

    public void s() {
        Dialog dialog = this.f19340k;
        if (dialog != null) {
            dialog.setCancelable(this.f19334e.U);
        }
    }

    public void t(boolean z10) {
        ViewGroup viewGroup = p() ? this.f19333d : this.f19332c;
        viewGroup.setFocusable(z10);
        viewGroup.setFocusableInTouchMode(z10);
        if (z10) {
            viewGroup.setOnKeyListener(this.f19343n);
        } else {
            viewGroup.setOnKeyListener(null);
        }
    }

    protected BasePickerView u(boolean z10) {
        ViewGroup viewGroup = this.f19332c;
        if (viewGroup != null) {
            View viewFindViewById = viewGroup.findViewById(R$id.outmost_container);
            if (z10) {
                viewFindViewById.setOnTouchListener(this.f19344o);
            } else {
                viewFindViewById.setOnTouchListener(null);
            }
        }
        return this;
    }

    public void v() {
        if (p()) {
            w();
        } else {
            if (q()) {
                return;
            }
            this.f19338i = true;
            r(this.f19332c);
            this.f19332c.requestFocus();
        }
    }

    class b implements Animation.AnimationListener {
        b() {
        }

        @Override
        public void onAnimationEnd(Animation animation) {
            BasePickerView.this.h();
        }

        @Override
        public void onAnimationRepeat(Animation animation) {
        }

        @Override
        public void onAnimationStart(Animation animation) {
        }
    }
}
