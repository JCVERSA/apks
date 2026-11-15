package defpackage;

import android.app.Activity;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import androidx.core.app.NotificationCompat;
import com.transsion.widgetsbottomsheet.bottomsheet.OSBottomSheetPanel;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class nb7 {
    public static final a p = new a(null);
    public final OSBottomSheetPanel a;
    public float b;
    public float c;
    public float d;
    public float e;
    public float f;
    public float g;
    public float h;
    public float i;
    public int j;
    public float k;
    public VelocityTracker l;
    public final int m;
    public boolean n;
    public boolean o;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public nb7(Activity activity, OSBottomSheetPanel oSBottomSheetPanel) {
        y45.j(activity, "mDialog");
        y45.j(oSBottomSheetPanel, "mPanel");
        this.a = oSBottomSheetPanel;
        this.g = oSBottomSheetPanel.getTranslationY();
        this.n = true;
        this.m = ViewConfiguration.get(activity).getScaledMaximumFlingVelocity();
    }

    public final void a(MotionEvent motionEvent) {
        if (this.l == null) {
            VelocityTracker velocityTrackerObtain = VelocityTracker.obtain();
            this.l = velocityTrackerObtain;
            if (velocityTrackerObtain != null) {
                velocityTrackerObtain.clear();
            }
        }
        VelocityTracker velocityTracker = this.l;
        y45.g(velocityTracker);
        velocityTracker.addMovement(motionEvent);
    }

    public final float b(float f, float f2) {
        return (float) (((double) f2) * Math.pow(1.0f - (Math.abs(f) / 1600), 4.0d) * 0.4d);
    }

    public final void c(MotionEvent motionEvent) {
        float rawY = motionEvent.getRawY();
        this.b = rawY;
        this.d = rawY;
        this.e = 0.0f;
        this.i = 0.0f;
        this.h = 0.0f;
        this.j = this.a.getMPanelVisibleHeight();
        this.k = 0.2f;
        this.o = true;
    }

    public final float d(float f) {
        if (olb.E) {
            return 0.0f;
        }
        return f;
    }

    public final float e() {
        VelocityTracker velocityTracker = this.l;
        y45.g(velocityTracker);
        velocityTracker.computeCurrentVelocity(1000, this.m);
        VelocityTracker velocityTracker2 = this.l;
        y45.g(velocityTracker2);
        return velocityTracker2.getYVelocity();
    }

    /* JADX WARN: Code duplicated, block: B:46:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:48:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:51:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:52:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:54:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:55:0x0104  */
    public final boolean f(MotionEvent motionEvent) {
        float translationY;
        float fAbs;
        float f;
        float fB;
        y45.j(motionEvent, NotificationCompat.CATEGORY_EVENT);
        if (!this.n) {
            return true;
        }
        a(motionEvent);
        int action = motionEvent.getAction();
        if (action == 0) {
            c(motionEvent);
        } else if (action == 1) {
            this.o = false;
            this.f = motionEvent.getRawY();
            translationY = this.a.getTranslationY();
            fAbs = Math.abs(e());
            if (this.e < 0.0f) {
                fAbs *= -1.0f;
            }
            if (fAbs > 200.0f) {
                this.a.gotoFinalPosAcc(fAbs);
            } else if (fAbs < -200.0f) {
                this.a.gotoFinalPosSpring(d(fAbs), this.g);
            } else {
                f = this.g;
                if (translationY > f || translationY - f < this.j / 2.0f) {
                    this.a.gotoFinalPosSpring(d(fAbs), this.g);
                } else {
                    this.a.gotoFinalPosAcc(fAbs);
                }
            }
            g();
        } else if (action != 2) {
            if (action == 3) {
                this.o = false;
                this.f = motionEvent.getRawY();
                translationY = this.a.getTranslationY();
                fAbs = Math.abs(e());
                if (this.e < 0.0f) {
                    fAbs *= -1.0f;
                }
                if (fAbs > 200.0f) {
                    this.a.gotoFinalPosAcc(fAbs);
                } else if (fAbs < -200.0f) {
                    this.a.gotoFinalPosSpring(d(fAbs), this.g);
                } else {
                    f = this.g;
                    if (translationY > f) {
                        this.a.gotoFinalPosSpring(d(fAbs), this.g);
                    } else {
                        this.a.gotoFinalPosSpring(d(fAbs), this.g);
                    }
                }
                g();
            }
        } else {
            if (!this.o) {
                c(motionEvent);
                return true;
            }
            float rawY = motionEvent.getRawY();
            this.c = rawY;
            float f2 = rawY - this.d;
            this.e = f2;
            if (f2 == 0.0f) {
                return true;
            }
            this.h += f2;
            float translationY2 = this.a.getTranslationY();
            float f3 = this.e;
            float f4 = translationY2 + f3;
            if (olb.E) {
                float f5 = this.g;
                if (f4 < f5) {
                    f4 = f5;
                }
            } else if (f3 < 0.0f) {
                float f6 = this.g;
                if (translationY2 > f6 && f4 < f6) {
                    float fAbs2 = Math.abs(f4 - f6);
                    float fAbs3 = Math.abs(this.e - fAbs2);
                    float fB2 = b(this.h, fAbs2);
                    this.i = fB2;
                    f4 = (translationY2 - fAbs3) - fB2;
                } else if (translationY2 < f6) {
                    fB = b(this.h, f3);
                    this.i = fB;
                    f4 = translationY2 + fB;
                }
            } else {
                float f7 = this.g;
                if (translationY2 < f7 && f4 > f7) {
                    float fAbs4 = Math.abs(f4 - f7);
                    float fB3 = b(this.h, Math.abs(this.e - fAbs4));
                    this.i = fB3;
                    f4 = translationY2 + fAbs4 + fB3;
                } else if (translationY2 < f7) {
                    fB = b(this.h, f3);
                    this.i = fB;
                    f4 = translationY2 + fB;
                }
            }
            this.a.setTranslationY(f4);
            this.a.updateOutsideViewAlpha(f4);
            this.d = this.c;
        }
        return true;
    }

    public final void g() {
        VelocityTracker velocityTracker = this.l;
        if (velocityTracker != null) {
            velocityTracker.clear();
            velocityTracker.recycle();
        }
        this.l = null;
    }

    public final void h(boolean z) {
        this.n = z;
    }
}
