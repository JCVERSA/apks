package k0;

import android.text.Layout;
import android.text.TextUtils;
import java.text.Bidi;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

public final class f0 {

    private final Layout f63448a;

    private final List f63449b;

    private final List f63450c;

    private final boolean[] f63451d;

    private char[] f63452e;

    private final int f63453f;

    public static final class a {

        private final int f63454a;

        private final int f63455b;

        private final boolean f63456c;

        public a(int i10, int i11, boolean z10) {
            this.f63454a = i10;
            this.f63455b = i11;
            this.f63456c = z10;
        }

        public final int a() {
            return this.f63455b;
        }

        public final int b() {
            return this.f63454a;
        }

        public final boolean c() {
            return this.f63456c;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f63454a == aVar.f63454a && this.f63455b == aVar.f63455b && this.f63456c == aVar.f63456c;
        }

        public int hashCode() {
            return (((this.f63454a * 31) + this.f63455b) * 31) + androidx.compose.foundation.e.a(this.f63456c);
        }

        public String toString() {
            return "BidiRun(start=" + this.f63454a + ", end=" + this.f63455b + ", isRtl=" + this.f63456c + ')';
        }
    }

    public f0(Layout layout) {
        this.f63448a = layout;
        ArrayList arrayList = new ArrayList();
        int length = 0;
        do {
            int iN0 = StringsKt.n0(this.f63448a.getText(), '\n', length, false, 4, null);
            length = iN0 < 0 ? this.f63448a.getText().length() : iN0 + 1;
            arrayList.add(Integer.valueOf(length));
        } while (length < this.f63448a.getText().length());
        this.f63449b = arrayList;
        int size = arrayList.size();
        ArrayList arrayList2 = new ArrayList(size);
        for (int i10 = 0; i10 < size; i10++) {
            arrayList2.add(null);
        }
        this.f63450c = arrayList2;
        this.f63451d = new boolean[this.f63449b.size()];
        this.f63453f = this.f63449b.size();
    }

    private final float b(int i10, boolean z10) {
        int iH = RangesKt.h(i10, this.f63448a.getLineEnd(this.f63448a.getLineForOffset(i10)));
        return z10 ? this.f63448a.getPrimaryHorizontal(iH) : this.f63448a.getSecondaryHorizontal(iH);
    }

    private final int i(int i10, int i11) {
        while (i10 > i11 && g(this.f63448a.getText().charAt(i10 - 1))) {
            i10--;
        }
        return i10;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0062  */
    public final Bidi a(int i10) {
        Bidi bidi;
        if (this.f63451d[i10]) {
            return (Bidi) this.f63450c.get(i10);
        }
        int iIntValue = i10 == 0 ? 0 : ((Number) this.f63449b.get(i10 - 1)).intValue();
        int iIntValue2 = ((Number) this.f63449b.get(i10)).intValue();
        int i11 = iIntValue2 - iIntValue;
        char[] cArr = this.f63452e;
        if (cArr == null || cArr.length < i11) {
            cArr = new char[i11];
        }
        char[] cArr2 = cArr;
        TextUtils.getChars(this.f63448a.getText(), iIntValue, iIntValue2, cArr2, 0);
        if (Bidi.requiresBidi(cArr2, 0, i11)) {
            bidi = new Bidi(cArr2, 0, null, 0, i11, h(i10) ? 1 : 0);
            if (bidi.getRunCount() == 1) {
                bidi = null;
            }
        } else {
            bidi = null;
        }
        this.f63450c.set(i10, bidi);
        this.f63451d[i10] = true;
        if (bidi != null) {
            char[] cArr3 = this.f63452e;
            cArr2 = cArr2 == cArr3 ? null : cArr3;
        }
        this.f63452e = cArr2;
        return bidi;
    }

    public final float c(int i10, boolean z10, boolean z11) {
        int i11 = i10;
        if (!z11) {
            return b(i10, z10);
        }
        int iA = e0.a(this.f63448a, i11, z11);
        int lineStart = this.f63448a.getLineStart(iA);
        int lineEnd = this.f63448a.getLineEnd(iA);
        if (i11 != lineStart && i11 != lineEnd) {
            return b(i10, z10);
        }
        if (i11 == 0 || i11 == this.f63448a.getText().length()) {
            return b(i10, z10);
        }
        int iE = e(i11, z11);
        boolean zH = h(iE);
        int i12 = i(lineEnd, lineStart);
        int iF = f(iE);
        int i13 = lineStart - iF;
        int i14 = i12 - iF;
        Bidi bidiA = a(iE);
        Bidi bidiCreateLineBidi = bidiA != null ? bidiA.createLineBidi(i13, i14) : null;
        boolean z12 = false;
        if (bidiCreateLineBidi == null || bidiCreateLineBidi.getRunCount() == 1) {
            boolean zIsRtlCharAt = this.f63448a.isRtlCharAt(lineStart);
            if (z10 || zH == zIsRtlCharAt) {
                zH = !zH;
            }
            if (i11 == lineStart) {
                z12 = zH;
            } else if (!zH) {
                z12 = true;
            }
            Layout layout = this.f63448a;
            return z12 ? layout.getLineLeft(iA) : layout.getLineRight(iA);
        }
        int runCount = bidiCreateLineBidi.getRunCount();
        a[] aVarArr = new a[runCount];
        for (int i15 = 0; i15 < runCount; i15++) {
            aVarArr[i15] = new a(bidiCreateLineBidi.getRunStart(i15) + lineStart, bidiCreateLineBidi.getRunLimit(i15) + lineStart, bidiCreateLineBidi.getRunLevel(i15) % 2 == 1);
        }
        int runCount2 = bidiCreateLineBidi.getRunCount();
        byte[] bArr = new byte[runCount2];
        for (int i16 = 0; i16 < runCount2; i16++) {
            bArr[i16] = (byte) bidiCreateLineBidi.getRunLevel(i16);
        }
        Bidi.reorderVisually(bArr, 0, aVarArr, 0, runCount);
        int i17 = -1;
        if (i11 == lineStart) {
            for (int i18 = 0; i18 < runCount; i18++) {
                if (aVarArr[i18].b() == i11) {
                    i17 = i18;
                    break;
                }
            }
            a aVar = aVarArr[i17];
            if (z10 || zH == aVar.c()) {
                zH = !zH;
            }
            if (i17 == 0 && zH) {
                return this.f63448a.getLineLeft(iA);
            }
            if (i17 != ArraysKt.Y(aVarArr) || zH) {
                return zH ? this.f63448a.getPrimaryHorizontal(aVarArr[i17 - 1].b()) : this.f63448a.getPrimaryHorizontal(aVarArr[i17 + 1].b());
            }
            return this.f63448a.getLineRight(iA);
        }
        if (i11 > i12) {
            i11 = i(i11, lineStart);
        }
        for (int i19 = 0; i19 < runCount; i19++) {
            if (aVarArr[i19].a() == i11) {
                i17 = i19;
                break;
            }
        }
        a aVar2 = aVarArr[i17];
        if (!z10 && zH != aVar2.c()) {
            zH = !zH;
        }
        if (i17 == 0 && zH) {
            return this.f63448a.getLineLeft(iA);
        }
        if (i17 != ArraysKt.Y(aVarArr) || zH) {
            return zH ? this.f63448a.getPrimaryHorizontal(aVarArr[i17 - 1].a()) : this.f63448a.getPrimaryHorizontal(aVarArr[i17 + 1].a());
        }
        return this.f63448a.getLineRight(iA);
    }

    public final int d(int i10) {
        return i(this.f63448a.getLineEnd(i10), this.f63448a.getLineStart(i10));
    }

    public final int e(int i10, boolean z10) {
        int iK = CollectionsKt.k(this.f63449b, Integer.valueOf(i10), 0, 0, 6, null);
        int i11 = iK < 0 ? -(iK + 1) : iK + 1;
        if (z10 && i11 > 0) {
            int i12 = i11 - 1;
            if (i10 == ((Number) this.f63449b.get(i12)).intValue()) {
                return i12;
            }
        }
        return i11;
    }

    public final int f(int i10) {
        if (i10 == 0) {
            return 0;
        }
        return ((Number) this.f63449b.get(i10 - 1)).intValue();
    }

    public final boolean g(char c10) {
        return c10 == ' ' || c10 == '\n' || c10 == 5760 || (Intrinsics.j(c10, 8192) >= 0 && Intrinsics.j(c10, 8202) <= 0 && c10 != 8199) || c10 == 8287 || c10 == 12288;
    }

    public final boolean h(int i10) {
        return this.f63448a.getParagraphDirection(this.f63448a.getLineForOffset(f(i10))) == -1;
    }
}
