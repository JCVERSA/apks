package defpackage;

import android.R;
import android.content.Context;
import android.os.IBinder;
import android.view.KeyEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;

public abstract class o1d extends PopupWindow {
    public Context b;
    public WindowManager c;
    public View d;
    public View e;
    public int f;
    public e6d.a g;

    public class a implements View.OnClickListener {
        public final View.OnClickListener b;

        public a(View.OnClickListener onClickListener) {
            this.b = onClickListener;
        }

        @Override
        public void onClick(View view) {
            this.b.onClick(view);
            o1d.this.dismiss();
        }
    }

    public class b implements View.OnKeyListener {
        public b() {
        }

        @Override
        public boolean onKey(View view, int i, KeyEvent keyEvent) {
            if (i != 4) {
                return false;
            }
            o1d.this.g();
            return true;
        }
    }

    public o1d(Context context, e6d.a aVar, int i) {
        super(context);
        this.b = context;
        this.g = aVar;
        this.f = i;
        this.c = (WindowManager) context.getSystemService("window");
        View viewA = a();
        this.e = viewA;
        setContentView(viewA);
        setHeight(e());
        setWidth(f());
        setOutsideTouchable(true);
        setFocusable(true);
        setTouchable(true);
        setBackgroundDrawable(context.getResources().getDrawable(R.color.transparent));
    }

    public abstract View a();

    public void c(IBinder iBinder) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.width = -1;
        layoutParams.height = -1;
        layoutParams.format = -3;
        layoutParams.type = 1000;
        layoutParams.token = iBinder;
        View view = new View(this.b);
        this.d = view;
        view.setBackgroundColor(0);
        this.d.setFitsSystemWindows(false);
        this.d.setOnKeyListener(new b());
        this.c.addView(this.d, layoutParams);
    }

    public void d(View.OnClickListener onClickListener, int[] iArr) {
        for (int i : iArr) {
            this.e.findViewById(i).setOnClickListener(new a(onClickListener));
        }
    }

    @Override
    public void dismiss() {
        g();
        super.dismiss();
    }

    public abstract int e();

    public abstract int f();

    public final void g() {
        try {
            View view = this.d;
            if (view != null) {
                this.c.removeViewImmediate(view);
                this.d = null;
            }
        } catch (Throwable unused) {
        }
    }

    @Override
    public void showAsDropDown(View view) {
        c(view.getWindowToken());
        super.showAsDropDown(view);
    }
}
