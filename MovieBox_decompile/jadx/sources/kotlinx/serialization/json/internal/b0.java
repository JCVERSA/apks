package kotlinx.serialization.json.internal;

import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

public final class b0 implements h0 {

    private char[] f65321a = h.f65337a.b();

    private int f65322b;

    private final void d(int i10, int i11, String str) {
        byte b10;
        int length = str.length();
        while (i10 < length) {
            int iF = f(i11, 2);
            char cCharAt = str.charAt(i10);
            if (cCharAt >= o0.a().length || (b10 = o0.a()[cCharAt]) == 0) {
                int i12 = iF + 1;
                this.f65321a[iF] = cCharAt;
                i11 = i12;
            } else if (b10 == 1) {
                String str2 = o0.b()[cCharAt];
                Intrinsics.e(str2);
                int iF2 = f(iF, str2.length());
                str2.getChars(0, str2.length(), this.f65321a, iF2);
                i11 = iF2 + str2.length();
                this.f65322b = i11;
            } else {
                char[] cArr = this.f65321a;
                cArr[iF] = '\\';
                cArr[iF + 1] = (char) b10;
                i11 = iF + 2;
                this.f65322b = i11;
            }
            i10++;
        }
        int iF3 = f(i11, 1);
        this.f65321a[iF3] = '\"';
        this.f65322b = iF3 + 1;
    }

    private final void e(int i10) {
        f(this.f65322b, i10);
    }

    private final int f(int i10, int i11) {
        int i12 = i11 + i10;
        char[] cArr = this.f65321a;
        if (cArr.length <= i12) {
            char[] cArrCopyOf = Arrays.copyOf(cArr, RangesKt.e(i12, i10 * 2));
            Intrinsics.g(cArrCopyOf, "copyOf(this, newSize)");
            this.f65321a = cArrCopyOf;
        }
        return i10;
    }

    @Override
    public void a(char c10) {
        e(1);
        char[] cArr = this.f65321a;
        int i10 = this.f65322b;
        this.f65322b = i10 + 1;
        cArr[i10] = c10;
    }

    @Override
    public void b(String text) {
        Intrinsics.h(text, "text");
        e(text.length() + 2);
        char[] cArr = this.f65321a;
        int i10 = this.f65322b;
        int i11 = i10 + 1;
        cArr[i10] = '\"';
        int length = text.length();
        text.getChars(0, length, cArr, i11);
        int i12 = length + i11;
        for (int i13 = i11; i13 < i12; i13++) {
            char c10 = cArr[i13];
            if (c10 < o0.a().length && o0.a()[c10] != 0) {
                d(i13 - i11, i13, text);
                return;
            }
        }
        cArr[i12] = '\"';
        this.f65322b = i12 + 1;
    }

    @Override
    public void c(String text) {
        Intrinsics.h(text, "text");
        int length = text.length();
        if (length == 0) {
            return;
        }
        e(length);
        text.getChars(0, text.length(), this.f65321a, this.f65322b);
        this.f65322b += length;
    }

    public void g() {
        h.f65337a.a(this.f65321a);
    }

    public String toString() {
        return new String(this.f65321a, 0, this.f65322b);
    }

    @Override
    public void writeLong(long j10) {
        c(String.valueOf(j10));
    }
}
