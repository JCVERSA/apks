package defpackage;

import android.view.View;

public class ha1 implements View.OnClickListener {
    public static volatile long c;
    public View.OnClickListener b;

    public ha1(View.OnClickListener onClickListener) {
        this.b = onClickListener;
    }

    @Override
    public void onClick(View view) {
        if (System.currentTimeMillis() - c >= 1500) {
            c = System.currentTimeMillis();
            this.b.onClick(view);
        }
    }
}
