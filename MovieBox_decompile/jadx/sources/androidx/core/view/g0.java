package androidx.core.view;

import android.view.MotionEvent;

class g0 {

    private final float[] f8073a = new float[20];

    private final long[] f8074b = new long[20];

    private float f8075c = 0.0f;

    private int f8076d = 0;

    private int f8077e = 0;

    g0() {
    }

    private void b() {
        this.f8076d = 0;
        this.f8075c = 0.0f;
    }

    private float e() {
        long[] jArr;
        long j10;
        int i10 = this.f8076d;
        if (i10 < 2) {
            return 0.0f;
        }
        int i11 = this.f8077e;
        int i12 = ((i11 + 20) - (i10 - 1)) % 20;
        long j11 = this.f8074b[i11];
        while (true) {
            jArr = this.f8074b;
            j10 = jArr[i12];
            if (j11 - j10 <= 100) {
                break;
            }
            this.f8076d--;
            i12 = (i12 + 1) % 20;
        }
        int i13 = this.f8076d;
        if (i13 < 2) {
            return 0.0f;
        }
        if (i13 == 2) {
            int i14 = (i12 + 1) % 20;
            long j12 = jArr[i14];
            if (j10 == j12) {
                return 0.0f;
            }
            return this.f8073a[i14] / (j12 - j10);
        }
        float fAbs = 0.0f;
        int i15 = 0;
        for (int i16 = 0; i16 < this.f8076d - 1; i16++) {
            int i17 = i16 + i12;
            long[] jArr2 = this.f8074b;
            long j13 = jArr2[i17 % 20];
            int i18 = (i17 + 1) % 20;
            if (jArr2[i18] != j13) {
                i15++;
                float f10 = f(fAbs);
                float f11 = this.f8073a[i18] / (this.f8074b[i18] - j13);
                fAbs += (f11 - f10) * Math.abs(f11);
                if (i15 == 1) {
                    fAbs *= 0.5f;
                }
            }
        }
        return f(fAbs);
    }

    private static float f(float f10) {
        return (f10 < 0.0f ? -1.0f : 1.0f) * ((float) Math.sqrt(Math.abs(f10) * 2.0f));
    }

    void a(MotionEvent motionEvent) {
        long eventTime = motionEvent.getEventTime();
        if (this.f8076d != 0 && eventTime - this.f8074b[this.f8077e] > 40) {
            b();
        }
        int i10 = (this.f8077e + 1) % 20;
        this.f8077e = i10;
        int i11 = this.f8076d;
        if (i11 != 20) {
            this.f8076d = i11 + 1;
        }
        this.f8073a[i10] = motionEvent.getAxisValue(26);
        this.f8074b[this.f8077e] = eventTime;
    }

    void c(int i10, float f10) {
        float fE = e() * i10;
        this.f8075c = fE;
        if (fE < (-Math.abs(f10))) {
            this.f8075c = -Math.abs(f10);
        } else if (this.f8075c > Math.abs(f10)) {
            this.f8075c = Math.abs(f10);
        }
    }

    float d(int i10) {
        if (i10 != 26) {
            return 0.0f;
        }
        return this.f8075c;
    }
}
