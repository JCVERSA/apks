package com.mbridge.msdk.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.view.Display;
import android.view.DisplayCutout;
import android.view.OrientationEventListener;
import android.view.WindowInsets;
import android.view.WindowManager;
import androidx.core.view.InputDeviceCompat;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.c1;
import com.mbridge.msdk.foundation.tools.o0;

public abstract class MBBaseActivity extends Activity {

    private Display f33197a;

    private OrientationEventListener f33198b;

    private int f33199c = -1;

    private volatile boolean f33200d = false;

    private Runnable f33201e;

    class a implements Runnable {
        a() {
        }

        @Override
        public void run() {
            try {
                MBBaseActivity.this.b();
            } catch (Exception e10) {
                o0.b("MBBaseActivity", e10.getMessage());
            }
        }
    }

    class b extends OrientationEventListener {
        b(Context context, int i10) {
            super(context, i10);
        }

        @Override
        public void onOrientationChanged(int i10) {
            int rotation = MBBaseActivity.this.f33197a != null ? MBBaseActivity.this.f33197a.getRotation() : 0;
            if (rotation == 1 && MBBaseActivity.this.f33199c != 1) {
                MBBaseActivity.this.f33199c = 1;
                MBBaseActivity.this.getNotchParams();
                o0.b("MBBaseActivity", "Orientation Left");
                return;
            }
            if (rotation == 3 && MBBaseActivity.this.f33199c != 2) {
                MBBaseActivity.this.f33199c = 2;
                MBBaseActivity.this.getNotchParams();
                o0.b("MBBaseActivity", "Orientation Right");
            } else if (rotation == 0 && MBBaseActivity.this.f33199c != 3) {
                MBBaseActivity.this.f33199c = 3;
                MBBaseActivity.this.getNotchParams();
                o0.b("MBBaseActivity", "Orientation Top");
            } else {
                if (rotation != 2 || MBBaseActivity.this.f33199c == 4) {
                    return;
                }
                MBBaseActivity.this.f33199c = 4;
                MBBaseActivity.this.getNotchParams();
                o0.b("MBBaseActivity", "Orientation Bottom");
            }
        }
    }

    private void d() {
        b bVar = new b(this, 1);
        this.f33198b = bVar;
        if (bVar.canDetectOrientation()) {
            this.f33198b.enable();
        } else {
            this.f33198b.disable();
            this.f33198b = null;
        }
    }

    public void getNotchParams() {
        if (this.f33200d) {
            return;
        }
        this.f33201e = new a();
        getWindow().getDecorView().postDelayed(this.f33201e, 500L);
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f33200d = false;
        try {
            requestWindowFeature(1);
            getWindow().setFlags(1024, 1024);
            getWindow().addFlags(512);
            c();
            a();
            c1.a(getWindow());
        } catch (Exception e10) {
            o0.b("MBBaseActivity", e10.getMessage());
        }
    }

    @Override
    protected void onDestroy() {
        this.f33200d = true;
        super.onDestroy();
        try {
            OrientationEventListener orientationEventListener = this.f33198b;
            if (orientationEventListener != null) {
                orientationEventListener.disable();
                this.f33198b = null;
            }
            if (this.f33201e != null) {
                getWindow().getDecorView().removeCallbacks(this.f33201e);
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                o0.b("MBBaseActivity", e10.getMessage());
            }
        }
    }

    @Override
    protected void onResume() {
        super.onResume();
        if (com.mbridge.msdk.foundation.feedback.b.f34457f) {
            return;
        }
        getNotchParams();
        c();
    }

    @Override
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        c();
    }

    public abstract void setTopControllerPadding(int i10, int i11, int i12, int i13, int i14);

    public void b() {
        int i10;
        int safeInsetLeft;
        int i11;
        int i12;
        int safeInsetBottom;
        DisplayCutout displayCutout;
        int i13;
        int i14 = Build.VERSION.SDK_INT;
        if (this.f33200d) {
            return;
        }
        WindowInsets rootWindowInsets = getWindow().getDecorView().getRootWindowInsets();
        int i15 = -1;
        if (rootWindowInsets == null || i14 < 28 || (displayCutout = rootWindowInsets.getDisplayCutout()) == null) {
            i10 = -1;
            safeInsetLeft = 0;
            i11 = 0;
            i12 = 0;
            safeInsetBottom = 0;
        } else {
            safeInsetLeft = displayCutout.getSafeInsetLeft();
            int safeInsetRight = displayCutout.getSafeInsetRight();
            int safeInsetTop = displayCutout.getSafeInsetTop();
            safeInsetBottom = displayCutout.getSafeInsetBottom();
            Display display = this.f33197a;
            int rotation = display != null ? display.getRotation() : a();
            if (this.f33199c == -1) {
                if (rotation == 0) {
                    i13 = 3;
                } else if (rotation == 1) {
                    i13 = 1;
                } else if (rotation == 2) {
                    i13 = 4;
                } else {
                    i13 = rotation == 3 ? 2 : -1;
                }
                this.f33199c = i13;
                o0.b("MBBaseActivity", this.f33199c + "");
            }
            if (rotation != 0) {
                if (rotation == 1) {
                    i15 = 90;
                } else if (rotation == 2) {
                    i15 = 180;
                } else if (rotation == 3) {
                    i15 = 270;
                }
                i10 = i15;
            } else {
                i10 = 0;
            }
            i11 = safeInsetRight;
            i12 = safeInsetTop;
        }
        setTopControllerPadding(i10, safeInsetLeft, i11, i12, safeInsetBottom);
        if (this.f33198b == null) {
            d();
        }
    }

    private void c() {
        try {
            getWindow().addFlags(67108864);
            getWindow().getDecorView().setSystemUiVisibility(InputDeviceCompat.SOURCE_TOUCHSCREEN);
        } catch (Throwable th2) {
            o0.b("MBBaseActivity", th2.getMessage());
        }
    }

    private int a() {
        if (this.f33197a == null) {
            if (Build.VERSION.SDK_INT >= 30) {
                this.f33197a = getDisplay();
            } else {
                this.f33197a = ((WindowManager) getSystemService("window")).getDefaultDisplay();
            }
        }
        Display display = this.f33197a;
        if (display != null) {
            return display.getRotation();
        }
        return -1;
    }
}
