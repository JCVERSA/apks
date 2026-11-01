package a1;

import android.content.Context;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import com.sothree.slidinguppanel.SlidingUpPanelLayout;
import java.util.Arrays;

public final class h {

    public static final a f169u = new a();

    public int f170a;

    public int f171b;

    public float[] f173d;

    public float[] f174e;

    public float[] f175f;

    public float[] f176g;

    public int[] f177h;

    public int[] f178i;

    public int[] f179j;

    public VelocityTracker f180k;

    public final float f181l;

    public float f182m;

    public final int f183n;

    public final Scroller f184o;

    public final c f185p;

    public View f186q;

    public boolean f187r;

    public final ViewGroup f188s;

    public int f172c = -1;

    public final b f189t = new b();

    public class a implements Interpolator {
        @Override
        public final float getInterpolation(float f2) {
            float f3 = f2 - 1.0f;
            return (f3 * f3 * f3 * f3 * f3) + 1.0f;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override
        public final void run() {
            h.this.o(0);
        }
    }

    public static abstract class c {
        public abstract int a(int i2);
    }

    public h(Context context, ViewGroup viewGroup, SlidingUpPanelLayout.b bVar) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Parent view may not be null");
        }
        this.f188s = viewGroup;
        this.f185p = bVar;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f183n = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
        this.f171b = viewConfiguration.getScaledTouchSlop();
        this.f181l = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f182m = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f184o = new Scroller(context, f169u);
    }

    public final void a() {
        b();
        if (this.f170a == 2) {
            Scroller scroller = this.f184o;
            scroller.getCurrX();
            scroller.getCurrY();
            scroller.abortAnimation();
            scroller.getCurrX();
            int currY = scroller.getCurrY();
            SlidingUpPanelLayout slidingUpPanelLayout = SlidingUpPanelLayout.this;
            SlidingUpPanelLayout.b(slidingUpPanelLayout, currY);
            slidingUpPanelLayout.invalidate();
        }
        o(0);
    }

    public final void b() {
        this.f172c = -1;
        float[] fArr = this.f173d;
        if (fArr != null) {
            Arrays.fill(fArr, 0.0f);
            Arrays.fill(this.f174e, 0.0f);
            Arrays.fill(this.f175f, 0.0f);
            Arrays.fill(this.f176g, 0.0f);
            Arrays.fill(this.f177h, 0);
            Arrays.fill(this.f178i, 0);
            Arrays.fill(this.f179j, 0);
        }
        VelocityTracker velocityTracker = this.f180k;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f180k = null;
        }
    }

    public final boolean c(float f2, float f3, int i2, int i3) {
        float fAbs = Math.abs(f2);
        float fAbs2 = Math.abs(f3);
        if ((this.f177h[i2] & i3) != i3 || (0 & i3) == 0 || (this.f179j[i2] & i3) == i3 || (this.f178i[i2] & i3) == i3) {
            return false;
        }
        int i4 = this.f171b;
        if (fAbs <= i4 && fAbs2 <= i4) {
            return false;
        }
        if (fAbs < fAbs2 * 0.5f) {
            this.f185p.getClass();
        }
        return (this.f178i[i2] & i3) == 0 && fAbs > ((float) this.f171b);
    }

    public final boolean d(View view, float f2) {
        if (view == null) {
            return false;
        }
        c cVar = this.f185p;
        cVar.getClass();
        return (SlidingUpPanelLayout.this.f494n > 0) && Math.abs(f2) > ((float) this.f171b);
    }

    public final void e(int i2) {
        float[] fArr = this.f173d;
        if (fArr == null) {
            return;
        }
        fArr[i2] = 0.0f;
        this.f174e[i2] = 0.0f;
        this.f175f[i2] = 0.0f;
        this.f176g[i2] = 0.0f;
        this.f177h[i2] = 0;
        this.f178i[i2] = 0;
        this.f179j[i2] = 0;
    }

    public final int f(int i2, int i3, int i4) {
        if (i2 == 0) {
            return 0;
        }
        int width = this.f188s.getWidth();
        float f2 = width / 2;
        double dMin = Math.min(1.0f, Math.abs(i2) / width) - 0.5f;
        Double.isNaN(dMin);
        Double.isNaN(dMin);
        float fSin = (((float) Math.sin((float) (dMin * 0.4712389167638204d))) * f2) + f2;
        int iAbs = Math.abs(i3);
        return Math.min(iAbs > 0 ? Math.round(Math.abs(fSin / iAbs) * 1000.0f) * 4 : (int) (((Math.abs(i2) / i4) + 1.0f) * 256.0f), 600);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0022  */
    /* JADX WARN: Code duplicated, block: B:15:0x0035  */
    /* JADX WARN: Code duplicated, block: B:17:0x0039  */
    /* JADX WARN: Code duplicated, block: B:19:0x0041  */
    /* JADX WARN: Code duplicated, block: B:20:0x0046  */
    /* JADX WARN: Code duplicated, block: B:22:0x004a  */
    /* JADX WARN: Code duplicated, block: B:25:0x0057  */
    /* JADX WARN: Code duplicated, block: B:27:0x0064  */
    /* JADX WARN: Code duplicated, block: B:28:0x0069  */
    /* JADX WARN: Code duplicated, block: B:30:0x006f  */
    /* JADX WARN: Code duplicated, block: B:31:0x0074  */
    public final void g(float f2) {
        float f3;
        float f4;
        int iC;
        float f5;
        float f6;
        this.f187r = true;
        View view = this.f186q;
        SlidingUpPanelLayout slidingUpPanelLayout = SlidingUpPanelLayout.this;
        if (slidingUpPanelLayout.f484d) {
            f2 = -f2;
        }
        if (f2 > 0.0f) {
            float f7 = slidingUpPanelLayout.f493m;
            float f8 = slidingUpPanelLayout.f495o;
            if (f7 <= f8) {
                iC = slidingUpPanelLayout.c(f8);
            } else if (f2 <= 0.0f && slidingUpPanelLayout.f493m > slidingUpPanelLayout.f495o) {
                iC = slidingUpPanelLayout.c(1.0f);
            } else if (f2 < 0.0f) {
                f5 = slidingUpPanelLayout.f493m;
                f6 = slidingUpPanelLayout.f495o;
                if (f5 >= f6) {
                    iC = slidingUpPanelLayout.c(f6);
                } else if (f2 < 0.0f || slidingUpPanelLayout.f493m >= slidingUpPanelLayout.f495o) {
                    f3 = slidingUpPanelLayout.f493m;
                    f4 = slidingUpPanelLayout.f495o;
                    if (f3 >= (f4 + 1.0f) / 2.0f) {
                        iC = slidingUpPanelLayout.c(1.0f);
                    } else if (f3 >= f4 / 2.0f) {
                        iC = slidingUpPanelLayout.c(f4);
                    } else {
                        iC = slidingUpPanelLayout.c(0.0f);
                    }
                } else {
                    iC = slidingUpPanelLayout.c(0.0f);
                }
            } else if (f2 < 0.0f) {
                f3 = slidingUpPanelLayout.f493m;
                f4 = slidingUpPanelLayout.f495o;
                if (f3 >= (f4 + 1.0f) / 2.0f) {
                    iC = slidingUpPanelLayout.c(1.0f);
                } else if (f3 >= f4 / 2.0f) {
                    iC = slidingUpPanelLayout.c(f4);
                } else {
                    iC = slidingUpPanelLayout.c(0.0f);
                }
            } else {
                f3 = slidingUpPanelLayout.f493m;
                f4 = slidingUpPanelLayout.f495o;
                if (f3 >= (f4 + 1.0f) / 2.0f) {
                    iC = slidingUpPanelLayout.c(1.0f);
                } else if (f3 >= f4 / 2.0f) {
                    iC = slidingUpPanelLayout.c(f4);
                } else {
                    iC = slidingUpPanelLayout.c(0.0f);
                }
            }
        } else if (f2 <= 0.0f) {
            if (f2 < 0.0f) {
                f5 = slidingUpPanelLayout.f493m;
                f6 = slidingUpPanelLayout.f495o;
                if (f5 >= f6) {
                    iC = slidingUpPanelLayout.c(f6);
                } else if (f2 < 0.0f) {
                    f3 = slidingUpPanelLayout.f493m;
                    f4 = slidingUpPanelLayout.f495o;
                    if (f3 >= (f4 + 1.0f) / 2.0f) {
                        iC = slidingUpPanelLayout.c(1.0f);
                    } else if (f3 >= f4 / 2.0f) {
                        iC = slidingUpPanelLayout.c(f4);
                    } else {
                        iC = slidingUpPanelLayout.c(0.0f);
                    }
                } else {
                    f3 = slidingUpPanelLayout.f493m;
                    f4 = slidingUpPanelLayout.f495o;
                    if (f3 >= (f4 + 1.0f) / 2.0f) {
                        iC = slidingUpPanelLayout.c(1.0f);
                    } else if (f3 >= f4 / 2.0f) {
                        iC = slidingUpPanelLayout.c(f4);
                    } else {
                        iC = slidingUpPanelLayout.c(0.0f);
                    }
                }
            } else if (f2 < 0.0f) {
                f3 = slidingUpPanelLayout.f493m;
                f4 = slidingUpPanelLayout.f495o;
                if (f3 >= (f4 + 1.0f) / 2.0f) {
                    iC = slidingUpPanelLayout.c(1.0f);
                } else if (f3 >= f4 / 2.0f) {
                    iC = slidingUpPanelLayout.c(f4);
                } else {
                    iC = slidingUpPanelLayout.c(0.0f);
                }
            } else {
                f3 = slidingUpPanelLayout.f493m;
                f4 = slidingUpPanelLayout.f495o;
                if (f3 >= (f4 + 1.0f) / 2.0f) {
                    iC = slidingUpPanelLayout.c(1.0f);
                } else if (f3 >= f4 / 2.0f) {
                    iC = slidingUpPanelLayout.c(f4);
                } else {
                    iC = slidingUpPanelLayout.c(0.0f);
                }
            }
        } else if (f2 < 0.0f) {
            f5 = slidingUpPanelLayout.f493m;
            f6 = slidingUpPanelLayout.f495o;
            if (f5 >= f6) {
                iC = slidingUpPanelLayout.c(f6);
            } else if (f2 < 0.0f) {
                f3 = slidingUpPanelLayout.f493m;
                f4 = slidingUpPanelLayout.f495o;
                if (f3 >= (f4 + 1.0f) / 2.0f) {
                    iC = slidingUpPanelLayout.c(1.0f);
                } else if (f3 >= f4 / 2.0f) {
                    iC = slidingUpPanelLayout.c(f4);
                } else {
                    iC = slidingUpPanelLayout.c(0.0f);
                }
            } else {
                f3 = slidingUpPanelLayout.f493m;
                f4 = slidingUpPanelLayout.f495o;
                if (f3 >= (f4 + 1.0f) / 2.0f) {
                    iC = slidingUpPanelLayout.c(1.0f);
                } else if (f3 >= f4 / 2.0f) {
                    iC = slidingUpPanelLayout.c(f4);
                } else {
                    iC = slidingUpPanelLayout.c(0.0f);
                }
            }
        } else if (f2 < 0.0f) {
            f3 = slidingUpPanelLayout.f493m;
            f4 = slidingUpPanelLayout.f495o;
            if (f3 >= (f4 + 1.0f) / 2.0f) {
                iC = slidingUpPanelLayout.c(1.0f);
            } else if (f3 >= f4 / 2.0f) {
                iC = slidingUpPanelLayout.c(f4);
            } else {
                iC = slidingUpPanelLayout.c(0.0f);
            }
        } else {
            f3 = slidingUpPanelLayout.f493m;
            f4 = slidingUpPanelLayout.f495o;
            if (f3 >= (f4 + 1.0f) / 2.0f) {
                iC = slidingUpPanelLayout.c(1.0f);
            } else if (f3 >= f4 / 2.0f) {
                iC = slidingUpPanelLayout.c(f4);
            } else {
                iC = slidingUpPanelLayout.c(0.0f);
            }
        }
        h hVar = slidingUpPanelLayout.f504x;
        if (hVar != null) {
            int left = view.getLeft();
            if (!hVar.f187r) {
                throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
            }
            hVar.i(left, iC, (int) hVar.f180k.getXVelocity(hVar.f172c), (int) hVar.f180k.getYVelocity(hVar.f172c));
        }
        slidingUpPanelLayout.invalidate();
        this.f187r = false;
        if (this.f170a == 1) {
            o(0);
        }
    }

    public final View h(int i2, int i3) {
        ViewGroup viewGroup = this.f188s;
        for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
            this.f185p.getClass();
            View childAt = viewGroup.getChildAt(childCount);
            if (i2 >= childAt.getLeft() && i2 < childAt.getRight() && i3 >= childAt.getTop() && i3 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    public final boolean i(int i2, int i3, int i4, int i5) {
        float f2;
        float f3;
        float f4;
        float f5;
        int left = this.f186q.getLeft();
        int top = this.f186q.getTop();
        int i6 = i2 - left;
        int i7 = i3 - top;
        Scroller scroller = this.f184o;
        if (i6 == 0 && i7 == 0) {
            scroller.abortAnimation();
            o(0);
            return false;
        }
        int i8 = (int) this.f182m;
        int i9 = (int) this.f181l;
        int iAbs = Math.abs(i4);
        if (iAbs < i8) {
            i4 = 0;
        } else if (iAbs > i9) {
            i4 = i4 > 0 ? i9 : -i9;
        }
        int i10 = (int) this.f182m;
        int iAbs2 = Math.abs(i5);
        if (iAbs2 < i10) {
            i5 = 0;
        } else if (iAbs2 > i9) {
            i5 = i5 > 0 ? i9 : -i9;
        }
        int iAbs3 = Math.abs(i6);
        int iAbs4 = Math.abs(i7);
        int iAbs5 = Math.abs(i4);
        int iAbs6 = Math.abs(i5);
        int i11 = iAbs5 + iAbs6;
        int i12 = iAbs3 + iAbs4;
        if (i4 != 0) {
            f2 = iAbs5;
            f3 = i11;
        } else {
            f2 = iAbs3;
            f3 = i12;
        }
        float f6 = f2 / f3;
        if (i5 != 0) {
            f4 = iAbs6;
            f5 = i11;
        } else {
            f4 = iAbs4;
            f5 = i12;
        }
        float f7 = f4 / f5;
        c cVar = this.f185p;
        cVar.getClass();
        scroller.startScroll(left, top, i6, i7, (int) ((f(i7, i5, SlidingUpPanelLayout.this.f494n) * f7) + (f(i6, i4, 0) * f6)));
        o(2);
        return true;
    }

    public final void j(MotionEvent motionEvent) {
        int i2;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            b();
        }
        if (this.f180k == null) {
            this.f180k = VelocityTracker.obtain();
        }
        this.f180k.addMovement(motionEvent);
        int i3 = 0;
        c cVar = this.f185p;
        if (actionMasked == 0) {
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            View viewH = h((int) x2, (int) y2);
            m(x2, y2, pointerId);
            p(viewH, pointerId);
            if ((this.f177h[pointerId] & 0) != 0) {
                cVar.getClass();
                return;
            }
            return;
        }
        if (actionMasked == 1) {
            if (this.f170a == 1) {
                k();
            }
            b();
            return;
        }
        if (actionMasked == 2) {
            if (this.f170a != 1) {
                int pointerCount = motionEvent.getPointerCount();
                while (i3 < pointerCount) {
                    int pointerId2 = motionEvent.getPointerId(i3);
                    float x3 = motionEvent.getX(i3);
                    float y3 = motionEvent.getY(i3);
                    float f2 = x3 - this.f173d[pointerId2];
                    float f3 = y3 - this.f174e[pointerId2];
                    l(f2, f3, pointerId2);
                    if (this.f170a != 1) {
                        View viewH2 = h((int) x3, (int) y3);
                        if (d(viewH2, f3) && p(viewH2, pointerId2)) {
                            break;
                        } else {
                            i3++;
                        }
                    } else {
                        break;
                    }
                }
                n(motionEvent);
                return;
            }
            int iFindPointerIndex = motionEvent.findPointerIndex(this.f172c);
            float x4 = motionEvent.getX(iFindPointerIndex);
            float y4 = motionEvent.getY(iFindPointerIndex);
            float[] fArr = this.f175f;
            int i4 = this.f172c;
            int i5 = (int) (x4 - fArr[i4]);
            int i6 = (int) (y4 - this.f176g[i4]);
            this.f186q.getLeft();
            int top = this.f186q.getTop() + i6;
            int left = this.f186q.getLeft();
            int top2 = this.f186q.getTop();
            if (i5 != 0) {
                cVar.getClass();
                this.f186q.offsetLeftAndRight(0 - left);
            }
            if (i6 != 0) {
                top = cVar.a(top);
                this.f186q.offsetTopAndBottom(top - top2);
            }
            if (i5 != 0 || i6 != 0) {
                SlidingUpPanelLayout slidingUpPanelLayout = SlidingUpPanelLayout.this;
                SlidingUpPanelLayout.b(slidingUpPanelLayout, top);
                slidingUpPanelLayout.invalidate();
            }
            n(motionEvent);
            return;
        }
        if (actionMasked == 3) {
            if (this.f170a == 1) {
                g(0.0f);
            }
            b();
            return;
        }
        if (actionMasked != 5) {
            if (actionMasked != 6) {
                return;
            }
            int pointerId3 = motionEvent.getPointerId(actionIndex);
            if (this.f170a == 1 && pointerId3 == this.f172c) {
                int pointerCount2 = motionEvent.getPointerCount();
                while (true) {
                    if (i3 >= pointerCount2) {
                        i2 = -1;
                        break;
                    }
                    int pointerId4 = motionEvent.getPointerId(i3);
                    if (pointerId4 != this.f172c) {
                        View viewH3 = h((int) motionEvent.getX(i3), (int) motionEvent.getY(i3));
                        View view = this.f186q;
                        if (viewH3 == view && p(view, pointerId4)) {
                            i2 = this.f172c;
                            break;
                        }
                    }
                    i3++;
                }
                if (i2 == -1) {
                    k();
                }
            }
            e(pointerId3);
            return;
        }
        int pointerId5 = motionEvent.getPointerId(actionIndex);
        float x5 = motionEvent.getX(actionIndex);
        float y5 = motionEvent.getY(actionIndex);
        m(x5, y5, pointerId5);
        if (this.f170a == 0) {
            p(h((int) x5, (int) y5), pointerId5);
            if ((this.f177h[pointerId5] & 0) != 0) {
                cVar.getClass();
                return;
            }
            return;
        }
        int i7 = (int) x5;
        int i8 = (int) y5;
        View view2 = this.f186q;
        if (view2 != null && i7 >= view2.getLeft() && i7 < view2.getRight() && i8 >= view2.getTop() && i8 < view2.getBottom()) {
            i3 = 1;
        }
        if (i3 != 0) {
            p(this.f186q, pointerId5);
        }
    }

    public final void k() {
        VelocityTracker velocityTracker = this.f180k;
        float f2 = this.f181l;
        velocityTracker.computeCurrentVelocity(1000, f2);
        float xVelocity = this.f180k.getXVelocity(this.f172c);
        float f3 = this.f182m;
        float fAbs = Math.abs(xVelocity);
        if (fAbs >= f3) {
            int i2 = (fAbs > f2 ? 1 : (fAbs == f2 ? 0 : -1));
        }
        float yVelocity = this.f180k.getYVelocity(this.f172c);
        float f4 = this.f182m;
        float fAbs2 = Math.abs(yVelocity);
        if (fAbs2 < f4) {
            yVelocity = 0.0f;
        } else if (fAbs2 > f2) {
            if (yVelocity <= 0.0f) {
                f2 = -f2;
            }
            yVelocity = f2;
        }
        g(yVelocity);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r4v2 */
    public final void l(float f2, float f3, int i2) {
        int i3;
        boolean zC = c(f2, f3, i2, 1);
        ?? r1 = zC;
        if (c(f3, f2, i2, 4)) {
            r1 = (zC ? 1 : 0) | 4;
        }
        ?? r2 = r1;
        if (c(f2, f3, i2, 2)) {
            r2 = (r1 == true ? 1 : 0) | 2;
        }
        ?? r3 = r2;
        if (c(f3, f2, i2, 8)) {
            i3 = (r2 == true ? 1 : 0) | 8;
        }
        if (r3 == 0) {
            r3 = i3;
            return;
        }
        r3 = i3;
        int[] iArr = this.f178i;
        iArr[i2] = (iArr[i2] | r3) == true ? 1 : 0;
        this.f185p.getClass();
    }

    public final void m(float f2, float f3, int i2) {
        float[] fArr = this.f173d;
        if (fArr == null || fArr.length <= i2) {
            int i3 = i2 + 1;
            float[] fArr2 = new float[i3];
            float[] fArr3 = new float[i3];
            float[] fArr4 = new float[i3];
            float[] fArr5 = new float[i3];
            int[] iArr = new int[i3];
            int[] iArr2 = new int[i3];
            int[] iArr3 = new int[i3];
            if (fArr != null) {
                System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
                float[] fArr6 = this.f174e;
                System.arraycopy(fArr6, 0, fArr3, 0, fArr6.length);
                float[] fArr7 = this.f175f;
                System.arraycopy(fArr7, 0, fArr4, 0, fArr7.length);
                float[] fArr8 = this.f176g;
                System.arraycopy(fArr8, 0, fArr5, 0, fArr8.length);
                int[] iArr4 = this.f177h;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.f178i;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.f179j;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.f173d = fArr2;
            this.f174e = fArr3;
            this.f175f = fArr4;
            this.f176g = fArr5;
            this.f177h = iArr;
            this.f178i = iArr2;
            this.f179j = iArr3;
        }
        float[] fArr9 = this.f173d;
        this.f175f[i2] = f2;
        fArr9[i2] = f2;
        float[] fArr10 = this.f174e;
        this.f176g[i2] = f3;
        fArr10[i2] = f3;
        int[] iArr7 = this.f177h;
        int i4 = (int) f2;
        int i5 = (int) f3;
        ViewGroup viewGroup = this.f188s;
        int left = viewGroup.getLeft();
        int i6 = this.f183n;
        int i7 = i4 < left + i6 ? 1 : 0;
        if (i5 < viewGroup.getTop() + i6) {
            i7 |= 4;
        }
        if (i4 > viewGroup.getRight() - i6) {
            i7 |= 2;
        }
        if (i5 > viewGroup.getBottom() - i6) {
            i7 |= 8;
        }
        iArr7[i2] = i7;
    }

    public final void n(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i2 = 0; i2 < pointerCount; i2++) {
            int pointerId = motionEvent.getPointerId(i2);
            float x2 = motionEvent.getX(i2);
            float y2 = motionEvent.getY(i2);
            this.f175f[pointerId] = x2;
            this.f176g[pointerId] = y2;
        }
    }

    public final void o(int i2) {
        this.f188s.removeCallbacks(this.f189t);
        if (this.f170a != i2) {
            this.f170a = i2;
            SlidingUpPanelLayout slidingUpPanelLayout = SlidingUpPanelLayout.this;
            h hVar = slidingUpPanelLayout.f504x;
            if (hVar != null && hVar.f170a == 0) {
                float fD = slidingUpPanelLayout.d(slidingUpPanelLayout.f489i.getTop());
                slidingUpPanelLayout.f493m = fD;
                if (fD == 1.0f) {
                    slidingUpPanelLayout.i();
                    SlidingUpPanelLayout.a(slidingUpPanelLayout, SlidingUpPanelLayout.e.f511a);
                } else if (fD == 0.0f) {
                    SlidingUpPanelLayout.a(slidingUpPanelLayout, SlidingUpPanelLayout.e.f512b);
                } else if (fD < 0.0f) {
                    SlidingUpPanelLayout.a(slidingUpPanelLayout, SlidingUpPanelLayout.e.f514d);
                    slidingUpPanelLayout.f489i.setVisibility(4);
                } else {
                    slidingUpPanelLayout.i();
                    SlidingUpPanelLayout.a(slidingUpPanelLayout, SlidingUpPanelLayout.e.f513c);
                }
            }
            if (this.f170a == 0) {
                this.f186q = null;
            }
        }
    }

    public final boolean p(View view, int i2) {
        if (view == this.f186q && this.f172c == i2) {
            return true;
        }
        if (view != null) {
            SlidingUpPanelLayout.b bVar = (SlidingUpPanelLayout.b) this.f185p;
            SlidingUpPanelLayout slidingUpPanelLayout = SlidingUpPanelLayout.this;
            if (!slidingUpPanelLayout.f497q && view == slidingUpPanelLayout.f489i) {
                this.f172c = i2;
                ViewParent parent = view.getParent();
                ViewGroup viewGroup = this.f188s;
                if (parent != viewGroup) {
                    throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + viewGroup + ")");
                }
                this.f186q = view;
                this.f172c = i2;
                SlidingUpPanelLayout slidingUpPanelLayout2 = SlidingUpPanelLayout.this;
                int childCount = slidingUpPanelLayout2.getChildCount();
                for (int i3 = 0; i3 < childCount; i3++) {
                    View childAt = slidingUpPanelLayout2.getChildAt(i3);
                    if (childAt.getVisibility() == 4) {
                        childAt.setVisibility(0);
                    }
                }
                o(1);
                return true;
            }
        }
        return false;
    }
}
