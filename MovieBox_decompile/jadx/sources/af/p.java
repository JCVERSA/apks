package af;

import android.content.Context;
import android.view.OrientationEventListener;
import android.view.WindowManager;

public class p {

    private int f331a;

    private WindowManager f332b;

    private OrientationEventListener f333c;

    private o f334d;

    class a extends OrientationEventListener {
        a(Context context, int i10) {
            super(context, i10);
        }

        @Override
        public void onOrientationChanged(int i10) {
            int rotation;
            WindowManager windowManager = p.this.f332b;
            o oVar = p.this.f334d;
            if (p.this.f332b == null || oVar == null || (rotation = windowManager.getDefaultDisplay().getRotation()) == p.this.f331a) {
                return;
            }
            p.this.f331a = rotation;
            oVar.a(rotation);
        }
    }

    public void e(Context context, o oVar) {
        f();
        Context applicationContext = context.getApplicationContext();
        this.f334d = oVar;
        this.f332b = (WindowManager) applicationContext.getSystemService("window");
        a aVar = new a(applicationContext, 3);
        this.f333c = aVar;
        aVar.enable();
        this.f331a = this.f332b.getDefaultDisplay().getRotation();
    }

    public void f() {
        OrientationEventListener orientationEventListener = this.f333c;
        if (orientationEventListener != null) {
            orientationEventListener.disable();
        }
        this.f333c = null;
        this.f332b = null;
        this.f334d = null;
    }
}
