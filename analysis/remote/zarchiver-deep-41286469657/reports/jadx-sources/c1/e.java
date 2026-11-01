package c1;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.os.Build;
import ru.zdevs.zarchiver.R;

public final class e {

    public final Paint f457a;

    public byte f458b;

    public int f459c;

    public int f460d;

    public int f461e;

    public final int[] f462f;

    /* JADX WARN: Code duplicated, block: B:16:0x0080  */
    /* JADX WARN: Code duplicated, block: B:19:0x008c  */
    /* JADX WARN: Code duplicated, block: B:20:0x00b2  */
    public e(Context context) {
        boolean z2;
        int[] iArr;
        Paint paint = new Paint();
        this.f457a = paint;
        paint.setAntiAlias(true);
        this.f458b = (byte) -1;
        this.f459c = 0;
        int[] iArr2 = new int[11];
        this.f462f = iArr2;
        TypedArray typedArrayObtainStyledAttributes = null;
        try {
            try {
                typedArrayObtainStyledAttributes = context.obtainStyledAttributes(new int[]{R.attr.defaultTextColorFileList, R.attr.colorPrimary, R.attr.colorPrimaryDark, R.attr.colorPrimaryLight, R.attr.isLightTheme});
                iArr2[0] = typedArrayObtainStyledAttributes.getColor(0, -1);
                iArr2[9] = (typedArrayObtainStyledAttributes.getColor(1, 0) & 16777215) | Integer.MIN_VALUE;
                iArr2[10] = typedArrayObtainStyledAttributes.getColor(typedArrayObtainStyledAttributes.getBoolean(4, true) ? 2 : 3, 0);
            } catch (Exception unused) {
                int[] iArr3 = this.f462f;
                iArr3[0] = -1;
                iArr3[10] = Integer.MIN_VALUE;
                iArr3[9] = Integer.MIN_VALUE;
                if (typedArrayObtainStyledAttributes != null) {
                }
                z2 = z0.c.e(this.f462f[0]) == -16777216;
                iArr = this.f462f;
                if (z2) {
                    iArr[5] = -7828859;
                    iArr[1] = -11752759;
                    iArr[6] = -9265201;
                    iArr[2] = -10092800;
                    iArr[3] = -9522135;
                    iArr[4] = -7675340;
                    iArr[7] = -3435155;
                    iArr[8] = -10635115;
                    return;
                }
                iArr[5] = -9671062;
                iArr[1] = -12810080;
                iArr[6] = -10780763;
                iArr[2] = -12078336;
                iArr[3] = -10973152;
                iArr[4] = -9522135;
                iArr[7] = -6129833;
                iArr[8] = -11889801;
            }
            typedArrayObtainStyledAttributes.recycle();
            if (z0.c.e(this.f462f[0]) == -16777216) {
            }
            iArr = this.f462f;
            if (z2) {
                iArr[5] = -7828859;
                iArr[1] = -11752759;
                iArr[6] = -9265201;
                iArr[2] = -10092800;
                iArr[3] = -9522135;
                iArr[4] = -7675340;
                iArr[7] = -3435155;
                iArr[8] = -10635115;
                return;
            }
            iArr[5] = -9671062;
            iArr[1] = -12810080;
            iArr[6] = -10780763;
            iArr[2] = -12078336;
            iArr[3] = -10973152;
            iArr[4] = -9522135;
            iArr[7] = -6129833;
            iArr[8] = -11889801;
        } catch (Throwable th) {
            if (typedArrayObtainStyledAttributes != null) {
                typedArrayObtainStyledAttributes.recycle();
            }
            throw th;
        }
    }

    public final int a(char[] cArr, int i2, int i3, int i4, int i5, float f2) {
        int i6 = Build.VERSION.SDK_INT;
        Paint paint = this.f457a;
        return i6 < 23 ? paint.breakText(cArr, i2, i3 - i2, f2, null) + i2 : paint.getOffsetForAdvance(cArr, i2, i3, i4, i5, false, f2);
    }

    public final int b(byte b2) {
        if (b2 < 0 || b2 >= 11) {
            b2 = 0;
        }
        return this.f462f[b2];
    }

    public final int c() {
        if (this.f459c == 0) {
            Paint paint = this.f457a;
            this.f459c = (int) paint.ascent();
            this.f460d = (int) paint.descent();
        }
        return this.f460d - this.f459c;
    }

    public final float d(int i2, int i3, char[] cArr, int i4) {
        int i5 = Build.VERSION.SDK_INT;
        Paint paint = this.f457a;
        return (int) (i5 < 29 ? paint.measureText(cArr, i2, i3) : paint.getTextRunAdvances(cArr, i2, i3, 0, i4, false, null, 0));
    }
}
