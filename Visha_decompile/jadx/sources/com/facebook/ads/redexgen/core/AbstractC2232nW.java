package com.facebook.ads.redexgen.core;

import androidx.media3.common.C;
import com.facebook.ads.redexgen.core.AbstractC2233nX;
import com.facebook.ads.redexgen.core.C2234nY;
import com.facebook.ads.redexgen.core.C5P;
import java.util.ArrayDeque;
import java.util.Arrays;
import org.mozilla.classfile.ByteCode;

public abstract class AbstractC2232nW<I extends C2234nY, O extends AbstractC2233nX, E extends C5P> implements C5O<I, O, E> {
    public static byte[] A0D;
    public static String[] A0E = {"cgd1TDaxcVMzff1lRtR2y3rhLtmh1J5v", "3mVGt02Eg", "GhemOJNhIn1LMAkty7qqi4u9sWB6uqsq", "Qo0Xi3kRKf", "h5mwzI1V10xDDagqRPLzWxrZN9rQy7u9", "7mnuUFNh1uUIhw2tv7exehIC7mU2Hitk", "5ikXrDS3I2SzCX52iEXUFKqtVJtvkjlK", "jW6s0CcND"};
    public int A00;
    public int A01;
    public int A02;
    public E A03;
    public I A04;
    public boolean A05;
    public boolean A06;
    public final Thread A08;
    public final I[] A0B;
    public final O[] A0C;
    public final Object A07 = new Object();
    public final ArrayDeque<I> A09 = new ArrayDeque<>();
    public final ArrayDeque<O> A0A = new ArrayDeque<>();

    public static String A0O(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0D, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 73);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0S() {
        A0D = new byte[]{-32, 19, 10, -21, 7, -4, 20, 0, 13, -43, -18, 4, 8, ByteCode.T_LONG, 7, 0, -33, 0, -2, 10, -1, 0, 13};
    }

    public abstract E A0Y(I i, O o, boolean z);

    public abstract E A0Z(Throwable th);

    public abstract I A0a();

    public abstract O A0c();

    static {
        A0S();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.nW != com.facebook.ads.androidx.media3.decoder.SimpleDecoder<I extends com.facebook.ads.redexgen.X.nY, O extends com.facebook.ads.redexgen.X.nX, E extends com.facebook.ads.redexgen.X.5P> */
    public AbstractC2232nW(I[] iArr, O[] oArr) {
        this.A0B = iArr;
        this.A00 = iArr.length;
        for (int i = 0; i < this.A00; i++) {
            ((I[]) this.A0B)[i] = A0a();
        }
        this.A0C = oArr;
        this.A01 = oArr.length;
        for (int i2 = 0; i2 < this.A01; i2++) {
            ((O[]) this.A0C)[i2] = A0c();
        }
        final String strA0O = A0O(0, 23, 82);
        this.A08 = new Thread(strA0O) {
            @Override
            public final void run() throws Throwable {
                if (AbstractC1314Vl.A02(this)) {
                    return;
                }
                try {
                    this.A00.A0R();
                } catch (Throwable th) {
                    AbstractC1314Vl.A00(th, this);
                }
            }
        };
        this.A08.start();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.nW != com.facebook.ads.androidx.media3.decoder.SimpleDecoder<I extends com.facebook.ads.redexgen.X.nY, O extends com.facebook.ads.redexgen.X.nX, E extends com.facebook.ads.redexgen.X.5P> */
    @Override
    public final I A5j() throws C5P {
        I i;
        I i2;
        synchronized (this.A07) {
            A0Q();
            C3M.A08(this.A04 == null);
            if (this.A00 == 0) {
                i = null;
            } else {
                I[] iArr = this.A0B;
                int i3 = this.A00 - 1;
                this.A00 = i3;
                i = iArr[i3];
            }
            this.A04 = i;
            i2 = this.A04;
        }
        return i2;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.nW != com.facebook.ads.androidx.media3.decoder.SimpleDecoder<I extends com.facebook.ads.redexgen.X.nY, O extends com.facebook.ads.redexgen.X.nX, E extends com.facebook.ads.redexgen.X.5P> */
    private void A0P() {
        if (A0W()) {
            this.A07.notify();
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.nW != com.facebook.ads.androidx.media3.decoder.SimpleDecoder<I extends com.facebook.ads.redexgen.X.nY, O extends com.facebook.ads.redexgen.X.nX, E extends com.facebook.ads.redexgen.X.5P> */
    private void A0Q() throws E, C5P {
        E exception = this.A03;
        if (exception == null) {
        } else {
            throw exception;
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.nW != com.facebook.ads.androidx.media3.decoder.SimpleDecoder<I extends com.facebook.ads.redexgen.X.nY, O extends com.facebook.ads.redexgen.X.nX, E extends com.facebook.ads.redexgen.X.5P> */
    public void A0R() {
        do {
            try {
            } catch (InterruptedException e) {
                throw new IllegalStateException(e);
            }
        } while (A0X());
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.nW != com.facebook.ads.androidx.media3.decoder.SimpleDecoder<I extends com.facebook.ads.redexgen.X.nY, O extends com.facebook.ads.redexgen.X.nX, E extends com.facebook.ads.redexgen.X.5P> */
    private void A0T(I inputBuffer) {
        inputBuffer.A0A();
        I[] iArr = this.A0B;
        int i = this.A00;
        this.A00 = i + 1;
        iArr[i] = inputBuffer;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.nW != com.facebook.ads.androidx.media3.decoder.SimpleDecoder<I extends com.facebook.ads.redexgen.X.nY, O extends com.facebook.ads.redexgen.X.nX, E extends com.facebook.ads.redexgen.X.5P> */
    private void A0U(O outputBuffer) {
        outputBuffer.A0A();
        O[] oArr = this.A0C;
        int i = this.A01;
        this.A01 = i + 1;
        oArr[i] = outputBuffer;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.nW != com.facebook.ads.androidx.media3.decoder.SimpleDecoder<I extends com.facebook.ads.redexgen.X.nY, O extends com.facebook.ads.redexgen.X.nX, E extends com.facebook.ads.redexgen.X.5P> */
    private boolean A0W() {
        if (!this.A09.isEmpty()) {
            int i = this.A01;
            String[] strArr = A0E;
            if (strArr[6].charAt(21) == strArr[4].charAt(21)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0E;
            strArr2[5] = "9DwPxvkyUmdJywitv52WFgQf7iOLAqys";
            strArr2[2] = "WYGXgkStQ9kUI1rtTWhvxjquSY9kHuMe";
            if (i > 0) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.nW != com.facebook.ads.androidx.media3.decoder.SimpleDecoder<I extends com.facebook.ads.redexgen.X.nY, O extends com.facebook.ads.redexgen.X.nX, E extends com.facebook.ads.redexgen.X.5P> */
    private boolean A0X() throws InterruptedException {
        E e;
        synchronized (this.A07) {
            while (!this.A06 && !A0W()) {
                this.A07.wait();
            }
            if (this.A06) {
                return false;
            }
            I iRemoveFirst = this.A09.removeFirst();
            O[] oArr = this.A0C;
            int i = this.A01 - 1;
            this.A01 = i;
            O o = oArr[i];
            boolean z = this.A05;
            this.A05 = false;
            if (iRemoveFirst.A05()) {
                o.A00(4);
            } else {
                if (iRemoveFirst.A04()) {
                    o.A00(Integer.MIN_VALUE);
                }
                if (iRemoveFirst.A06()) {
                    o.A00(C.BUFFER_FLAG_FIRST_SAMPLE);
                }
                try {
                    e = (E) A0Y(iRemoveFirst, o, z);
                } catch (OutOfMemoryError e2) {
                    e = (E) A0Z(e2);
                } catch (RuntimeException e3) {
                    e = (E) A0Z(e3);
                }
                if (e != null) {
                    synchronized (this.A07) {
                        this.A03 = e;
                    }
                    return false;
                }
            }
            synchronized (this.A07) {
                if (this.A05) {
                    o.A0B();
                } else if (o.A04()) {
                    this.A02++;
                    o.A0B();
                } else {
                    o.A00 = this.A02;
                    this.A02 = 0;
                    this.A0A.addLast(o);
                }
                A0T(iRemoveFirst);
            }
            return true;
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.nW != com.facebook.ads.androidx.media3.decoder.SimpleDecoder<I extends com.facebook.ads.redexgen.X.nY, O extends com.facebook.ads.redexgen.X.nX, E extends com.facebook.ads.redexgen.X.5P> */
    @Override
    public final O A5l() throws C5P {
        synchronized (this.A07) {
            A0Q();
            if (this.A0A.isEmpty()) {
                return null;
            }
            return this.A0A.removeFirst();
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.nW != com.facebook.ads.androidx.media3.decoder.SimpleDecoder<I extends com.facebook.ads.redexgen.X.nY, O extends com.facebook.ads.redexgen.X.nX, E extends com.facebook.ads.redexgen.X.5P> */
    public final void A0d(int i) {
        C3M.A08(this.A00 == this.A0B.length);
        for (I i2 : this.A0B) {
            i2.A0C(i);
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.nW != com.facebook.ads.androidx.media3.decoder.SimpleDecoder<I extends com.facebook.ads.redexgen.X.nY, O extends com.facebook.ads.redexgen.X.nX, E extends com.facebook.ads.redexgen.X.5P> */
    @Override
    public final void AGZ(I inputBuffer) throws C5P {
        synchronized (this.A07) {
            A0Q();
            C3M.A07(inputBuffer == this.A04);
            this.A09.addLast(inputBuffer);
            A0P();
            this.A04 = null;
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.nW != com.facebook.ads.androidx.media3.decoder.SimpleDecoder<I extends com.facebook.ads.redexgen.X.nY, O extends com.facebook.ads.redexgen.X.nX, E extends com.facebook.ads.redexgen.X.5P> */
    public void A0f(O outputBuffer) {
        synchronized (this.A07) {
            A0U(outputBuffer);
            A0P();
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.nW != com.facebook.ads.androidx.media3.decoder.SimpleDecoder<I extends com.facebook.ads.redexgen.X.nY, O extends com.facebook.ads.redexgen.X.nX, E extends com.facebook.ads.redexgen.X.5P> */
    @Override
    public final void AGr() {
        synchronized (this.A07) {
            this.A06 = true;
            this.A07.notify();
        }
        try {
            this.A08.join();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.nW != com.facebook.ads.androidx.media3.decoder.SimpleDecoder<I extends com.facebook.ads.redexgen.X.nY, O extends com.facebook.ads.redexgen.X.nX, E extends com.facebook.ads.redexgen.X.5P> */
    @Override
    public final void flush() {
        synchronized (this.A07) {
            this.A05 = true;
            this.A02 = 0;
            if (this.A04 != null) {
                A0T(this.A04);
                this.A04 = null;
            }
            while (!this.A09.isEmpty()) {
                A0T(this.A09.removeFirst());
            }
            while (!this.A0A.isEmpty()) {
                this.A0A.removeFirst().A0B();
            }
        }
    }
}
