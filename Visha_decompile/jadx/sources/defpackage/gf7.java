package defpackage;

import android.util.Log;
import android.view.View;

public abstract class gf7 implements View.OnClickListener {
    public long c;
    public int b = 700;
    public String d = "OnNoDoubleClickListener";

    public abstract void a(View view);

    @Override
    public void onClick(View view) {
        if (!oa1.b(this.d, this.c, this.b)) {
            this.c = System.currentTimeMillis();
            a(view);
            return;
        }
        Log.e(this.d, "onClick ingoreClickEvent" + view);
    }
}
