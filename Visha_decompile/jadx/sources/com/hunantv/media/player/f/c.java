package com.hunantv.media.player.f;

import android.view.View;
import android.widget.FrameLayout;
import com.hunantv.media.player.IMgtvRenderView;
import com.hunantv.media.player.l;
import java.lang.ref.WeakReference;

public final class c {
    private WeakReference<View> a;
    private int b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;
    private IMgtvRenderView.FloatRect j;
    private l l;
    private int i = 0;
    private boolean k = false;
    private boolean m = false;

    public c(View view) {
        this.a = new WeakReference<>(view);
    }

    public IMgtvRenderView.FloatRect a() {
        return this.j;
    }

    public int b() {
        return this.g;
    }

    public int c() {
        return this.h;
    }

    public void d(int i, int i2) {
        IMgtvRenderView.FloatRect floatRect;
        try {
            float f = 0.0f;
            if (!this.k || (floatRect = this.j) == null || floatRect.lt == null || floatRect.rb == null) {
                l lVar = this.l;
                if (lVar != null) {
                    lVar.a(0.0f, 0.0f);
                    return;
                }
                return;
            }
            View view = this.a.get();
            if (view != null) {
                if (!this.m) {
                    IMgtvRenderView.FloatRect floatRect2 = this.j;
                    float f2 = (floatRect2.rb.x - floatRect2.lt.x) * this.g;
                    float f3 = i;
                    if (f3 > f2) {
                        f = (f3 - f2) / 2.0f;
                    }
                }
                IMgtvRenderView.FloatRect floatRect3 = this.j;
                IMgtvRenderView.Coordinate coordinate = floatRect3.lt;
                float fAbs = (-(coordinate.x * this.g)) + f;
                float f4 = this.h * 0.5f * ((1.0f - coordinate.y) - floatRect3.rb.y);
                if (this.i == 1 && ((View) view.getParent()) != null) {
                    float fMax = Math.max(i, i2);
                    float f5 = this.g;
                    IMgtvRenderView.FloatRect floatRect4 = this.j;
                    fAbs -= Math.abs(fMax - (f5 * (floatRect4.rb.x - floatRect4.lt.x))) / 2.0f;
                }
                view.setTranslationX(fAbs);
                view.setTranslationY(f4);
            }
            l lVar2 = this.l;
            if (lVar2 != null) {
                float f6 = this.g;
                IMgtvRenderView.FloatRect floatRect5 = this.j;
                IMgtvRenderView.Coordinate coordinate2 = floatRect5.rb;
                float f7 = coordinate2.x;
                IMgtvRenderView.Coordinate coordinate3 = floatRect5.lt;
                lVar2.a(f6 * (f7 - coordinate3.x), this.h * (coordinate2.y - coordinate3.y));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void a(int i) {
        this.f = i;
    }

    public void b(int i) {
        this.i = i;
    }

    /* JADX WARN: Code duplicated, block: B:91:0x0110 A[PHI: r2 r4
      0x0110: PHI (r2v9 int) = (r2v3 int), (r2v3 int), (r2v6 int), (r2v6 int), (r2v14 int) binds: [B:96:0x011c, B:97:0x011e, B:88:0x010b, B:89:0x010d, B:64:0x00d2] A[DONT_GENERATE, DONT_INLINE]
      0x0110: PHI (r4v9 int) = (r4v6 int), (r4v6 int), (r4v4 int), (r4v4 int), (r4v11 int) binds: [B:96:0x011c, B:97:0x011e, B:88:0x010b, B:89:0x010d, B:64:0x00d2] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00d9, code lost:
    
        if (r16.m != false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00db, code lost:
    
        r1 = (int) (r11 / r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00de, code lost:
    
        r1 = (int) (r7 / r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00e3, code lost:
    
        if (r16.m != false) goto L68;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void c(int i, int i2) {
        int size;
        int size2;
        float f;
        float f2;
        int i3;
        int i4;
        float f3;
        int i5;
        int i6 = this.f;
        if (i6 == 90 || i6 == 270) {
            size = i;
            size2 = i2;
        } else {
            size2 = i;
            size = i2;
        }
        int i7 = this.b;
        int i8 = this.c;
        IMgtvRenderView.FloatRect floatRect = this.j;
        if (floatRect == null || i7 <= 0 || i8 <= 0) {
            f = 1.0f;
            f2 = 1.0f;
        } else {
            this.k = true;
            IMgtvRenderView.Coordinate coordinate = floatRect.rb;
            float f4 = coordinate.x;
            IMgtvRenderView.Coordinate coordinate2 = floatRect.lt;
            f = f4 - coordinate2.x;
            f2 = coordinate.y - coordinate2.y;
        }
        int defaultSize = View.getDefaultSize(i7, size2);
        int defaultSize2 = View.getDefaultSize(i8, size);
        if (this.i != 3) {
            if (i7 <= 0 || i8 <= 0) {
                size2 = defaultSize;
                size = defaultSize2;
            } else {
                int mode = View.MeasureSpec.getMode(size2);
                size2 = View.MeasureSpec.getSize(size2);
                int mode2 = View.MeasureSpec.getMode(size);
                size = View.MeasureSpec.getSize(size);
                if (mode == Integer.MIN_VALUE && mode2 == Integer.MIN_VALUE) {
                    float f5 = size2;
                    float f6 = size;
                    float f7 = f5 / f6;
                    int i9 = this.i;
                    if (i9 == 4) {
                        int i10 = this.f;
                        f3 = (i10 == 90 || i10 == 270) ? 0.5625f : 1.7777778f;
                    } else if (i9 != 5) {
                        f3 = i7 / i8;
                        int i11 = this.d;
                        if (i11 > 0 && (i5 = this.e) > 0) {
                            f3 = (f3 * i11) / i5;
                        }
                    } else {
                        int i12 = this.f;
                        f3 = (i12 == 90 || i12 == 270) ? 0.75f : 1.3333334f;
                    }
                    this.m = f3 > f7;
                    if (this.k && (i9 == 0 || i9 == 1)) {
                        this.m = (((float) i7) * f) / (((float) i8) * f2) > f7;
                    }
                    if (i9 != 0) {
                        if (i9 != 1) {
                            if (i9 != 4 && i9 != 5) {
                                if (this.m) {
                                    size2 = Math.min(this.b, size2);
                                    i4 = (int) (size2 / f3);
                                    size = i4;
                                } else {
                                    int iMin = Math.min(this.c, size);
                                    i3 = (int) (iMin * f3);
                                    size = iMin;
                                    size2 = i3;
                                }
                            }
                        }
                    }
                } else if (mode == 1073741824 && mode2 == 1073741824) {
                    int i13 = i7 * size;
                    int i14 = size2 * i8;
                    if (i13 < i14) {
                        size2 = i13 / i8;
                    } else if (i13 > i14) {
                        size = i14 / i7;
                    }
                } else if (mode == 1073741824) {
                    i4 = (i8 * size2) / i7;
                    if (mode2 != Integer.MIN_VALUE || i4 <= size) {
                        size = i4;
                    }
                } else if (mode2 == 1073741824) {
                    i3 = (i7 * size) / i8;
                    if (mode != Integer.MIN_VALUE || i3 <= size2) {
                        size2 = i3;
                    }
                } else {
                    if (mode2 != Integer.MIN_VALUE || i8 <= size) {
                        i3 = i7;
                        size = i8;
                    } else {
                        i3 = (size * i7) / i8;
                    }
                    if (mode != Integer.MIN_VALUE || i3 <= size2) {
                        size2 = i3;
                    } else {
                        size = (i8 * size2) / i7;
                    }
                }
            }
        }
        this.g = size2;
        this.h = size;
    }

    public void a(int i, int i2) {
        this.b = i;
        this.c = i2;
    }

    public void b(int i, int i2) {
        this.d = i;
        this.e = i2;
    }

    public void a(IMgtvRenderView.FloatRect floatRect) {
        FrameLayout.LayoutParams layoutParams;
        int i;
        this.j = floatRect;
        View view = this.a.get();
        if (view == null || !(view.getLayoutParams() instanceof FrameLayout.LayoutParams)) {
            return;
        }
        if (this.j != null) {
            layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
            i = 19;
        } else {
            layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
            i = 17;
        }
        layoutParams.gravity = i;
    }

    public void a(l lVar) {
        this.l = lVar;
    }
}
