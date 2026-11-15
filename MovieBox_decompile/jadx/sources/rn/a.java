package rn;

import android.view.View;
import com.transsion.player.ui.render.RenderScaleMode;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    private int f71270a;

    private int f71271b;

    private RenderScaleMode f71272c = RenderScaleMode.SCREEN_SCALE_DEFAULT;

    private int f71273d;

    public class C0872a {

        public static final int[] f71274a;

        static {
            int[] iArr = new int[RenderScaleMode.values().length];
            try {
                iArr[RenderScaleMode.SCREEN_SCALE_DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[RenderScaleMode.SCREEN_SCALE_ORIGINAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[RenderScaleMode.SCREEN_SCALE_16_9.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[RenderScaleMode.SCREEN_SCALE_4_3.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[RenderScaleMode.SCREEN_SCALE_MATCH_PARENT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[RenderScaleMode.SCREEN_SCALE_CENTER_CROP.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            f71274a = iArr;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:21:0x0043 A[PHI: r7
      0x0043: PHI (r7v10 int) = (r7v6 int), (r7v8 int), (r7v9 int), (r7v13 int) binds: [B:36:0x0075, B:27:0x0055, B:23:0x0049, B:20:0x0040] A[DONT_GENERATE, DONT_INLINE]] */
    public final int[] a(int i10, int i11) {
        int i12 = this.f71273d;
        if (i12 == 90 || i12 == 270) {
            i11 = i10;
            i10 = i11;
        }
        int size = View.MeasureSpec.getSize(i10);
        int size2 = View.MeasureSpec.getSize(i11);
        if (this.f71271b == 0 || this.f71270a == 0) {
            return new int[]{size, size2};
        }
        switch (C0872a.f71274a[this.f71272c.ordinal()]) {
            case 1:
                int i13 = this.f71270a;
                int i14 = i13 * size2;
                int i15 = this.f71271b;
                if (i14 < size * i15) {
                    i10 = (i13 * size2) / i15;
                } else {
                    if (i13 * size2 > size * i15) {
                        i11 = (i15 * size) / i13;
                        i10 = size;
                        return new int[]{i10, i11};
                    }
                    i10 = size;
                }
                i11 = size2;
                return new int[]{i10, i11};
            case 2:
                i10 = this.f71270a;
                i11 = this.f71271b;
                return new int[]{i10, i11};
            case 3:
                i11 = (size / 16) * 9;
                if (size2 > i11) {
                    i10 = size;
                } else {
                    i10 = (size2 / 9) * 16;
                    i11 = size2;
                }
                return new int[]{i10, i11};
            case 4:
                i11 = (size / 4) * 3;
                if (size2 > i11) {
                    i10 = size;
                } else {
                    i10 = (size2 / 3) * 4;
                    i11 = size2;
                }
                return new int[]{i10, i11};
            case 5:
                return new int[]{i10, i11};
            case 6:
                int i16 = this.f71270a;
                int i17 = i16 * size2;
                int i18 = this.f71271b;
                if (i17 > size * i18) {
                    i10 = (i16 * size2) / i18;
                    i11 = size2;
                    return new int[]{i10, i11};
                }
                i11 = (i18 * size) / i16;
                i10 = size;
                return new int[]{i10, i11};
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    public final void b(RenderScaleMode screenScale) {
        Intrinsics.h(screenScale, "screenScale");
        if (screenScale == this.f71272c) {
            return;
        }
        this.f71272c = screenScale;
    }

    public final void c(int i10) {
        this.f71273d = i10;
    }

    public final void d(int i10, int i11) {
        this.f71270a = i10;
        this.f71271b = i11;
    }
}
