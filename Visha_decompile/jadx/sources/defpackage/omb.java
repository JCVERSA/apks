package defpackage;

import android.view.MotionEvent;
import android.view.View;
import com.transsion.widgetslib.view.liquid.vfx.drag.ElasticTypeConfig;

public class omb {
    public final j83 a = new j83();
    public boolean b;

    public void a(View view) {
        this.a.j(view);
    }

    public void b(MotionEvent motionEvent) {
        if (this.b) {
            this.a.v(motionEvent);
        }
    }

    public void c() {
        this.a.w();
    }

    public void d(int i, int i2) {
        this.a.C(i, i2);
    }

    public void setElasticTypeConfig(ElasticTypeConfig elasticTypeConfig) {
        this.b = true;
        this.a.y(elasticTypeConfig);
    }
}
