package a1;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import com.sothree.slidinguppanel.SlidingUpPanelLayout;
import g0.v;
import ru.zdevs.zarchiver.R;

public final class f extends Dialog {

    public final a f159a;

    public final g f160b;

    public static class a {

        public View f161a;

        public boolean f162b = true;

        public int f163c = -1;

        public int f164d = 0;

        public int f165e = 1;

        public boolean f166f = false;

        public boolean f167g = true;

        public g f168h;
    }

    public f(Context context, int i2, a aVar) {
        super(context, i2);
        this.f159a = aVar;
        this.f160b = aVar.f168h;
    }

    public static int a(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point(0, 0);
        defaultDisplay.getSize(point);
        if (point.x < point.y || ((context instanceof Activity) && z0.e.b((Activity) context))) {
            return -1;
        }
        return point.y;
    }

    @Override
    public final void dismiss() {
        g gVar = this.f160b;
        if (gVar != null) {
            ((v) gVar).u(this, 1);
        }
        super.dismiss();
    }

    @Override
    public final void onCreate(Bundle bundle) {
        a aVar = this.f159a;
        if (aVar == null || aVar.f161a == null) {
            throw new IllegalStateException("Unable to create BottomSheet, missing params");
        }
        Window window = getWindow();
        if (window != null) {
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.gravity = aVar.f165e | 80;
            attributes.windowAnimations = 0;
            attributes.width = -1;
            if (aVar.f166f && Build.VERSION.SDK_INT >= 21) {
                attributes.flags |= 134217728;
            }
            window.setAttributes(attributes);
        } else {
            Log.e("BottomSheet", "Window came back as null, unable to set defaults");
            aVar.f166f = false;
        }
        super.onCreate(bundle);
        setCancelable(aVar.f162b);
        setCanceledOnTouchOutside(aVar.f162b);
        Context context = getContext();
        int iA = aVar.f164d;
        if (iA <= 0) {
            iA = context.getResources().getDimensionPixelSize(R.dimen.bottomsheet_width);
        }
        if (iA <= 0) {
            iA = a(context);
        }
        setContentView(aVar.f161a, new ViewGroup.LayoutParams(iA, -1));
        aVar.f161a.getViewTreeObserver().addOnPreDrawListener(new a1.a(this));
        if (aVar.f162b) {
            findViewById(R.id.outside).setOnTouchListener(new b(this));
        }
        SlidingUpPanelLayout slidingUpPanelLayout = (SlidingUpPanelLayout) findViewById(R.id.sup_sliding);
        int i2 = aVar.f163c;
        if (i2 > 0) {
            slidingUpPanelLayout.setAnchorOffset(i2);
        }
        slidingUpPanelLayout.setPanelSlideListener(new c(this));
        if (aVar.f166f && Build.VERSION.SDK_INT >= 21) {
            getWindow().getDecorView().setOnApplyWindowInsetsListener(new d(this, slidingUpPanelLayout));
        }
        if (Build.VERSION.SDK_INT >= 21 && aVar.f167g) {
            findViewById(R.id.sup_container).setElevation(12.0f);
        }
        View viewFindViewById = findViewById(android.R.id.list);
        if (viewFindViewById != null) {
            slidingUpPanelLayout.setScrollableView(viewFindViewById);
        }
        setOnShowListener(new e(this, slidingUpPanelLayout));
        g gVar = this.f160b;
        if (gVar != null) {
            ((v) gVar).u(this, 0);
        }
    }

    @Override
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            dismiss();
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override
    public final void show() {
        Window window;
        super.show();
        if (this.f159a.f167g || (window = getWindow()) == null) {
            return;
        }
        window.clearFlags(2);
    }
}
