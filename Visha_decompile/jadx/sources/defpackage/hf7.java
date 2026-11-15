package defpackage;

import android.util.Log;
import com.transsion.widgetslib.widget.FootOperationBar;

public abstract class hf7 implements FootOperationBar.n {
    public long b;
    public String c;
    public int d = oa1.a();

    public hf7(String str) {
        this.c = "OnNoDoubleFootOptBarClickListener";
        this.c = str;
    }

    public abstract void a(int i);

    public void b(int i) {
        if (!oa1.d() || i >= this.d) {
            this.d = i;
        }
    }

    @Override
    public void onItemClick(int i) {
        if (!oa1.b(this.c, this.b, this.d)) {
            this.b = System.currentTimeMillis();
            a(i);
            return;
        }
        Log.e(this.c, "onItemClick " + this.d + ",index:" + i);
    }
}
