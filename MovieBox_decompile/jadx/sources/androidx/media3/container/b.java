package androidx.media3.container;

import androidx.media3.common.r;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import androidx.media3.common.v;
import androidx.media3.common.w;
import androidx.media3.common.x;
import com.google.common.primitives.Ints;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class b implements x.a {

    public final String f10266a;

    public final byte[] f10267b;

    public final int f10268c;

    public final int f10269d;

    public b(String str, byte[] bArr, int i10, int i11) {
        d(str, bArr, i11);
        this.f10266a = str;
        this.f10267b = bArr;
        this.f10268c = i10;
        this.f10269d = i11;
    }

    private static String c(List list) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("track types = ");
        com.google.common.base.g.g(',').b(sb2, list);
        return sb2.toString();
    }

    private static void d(String str, byte[] bArr, int i10) {
        byte b10;
        str.hashCode();
        boolean z10 = false;
        switch (str) {
            case "com.android.capture.fps":
                if (i10 == 23 && bArr.length == 4) {
                    z10 = true;
                }
                androidx.media3.common.util.a.a(z10);
                break;
            case "auxiliary.tracks.interleaved":
                if (i10 == 75 && bArr.length == 1 && ((b10 = bArr[0]) == 0 || b10 == 1)) {
                    z10 = true;
                }
                androidx.media3.common.util.a.a(z10);
                break;
            case "auxiliary.tracks.length":
            case "auxiliary.tracks.offset":
                if (i10 == 78 && bArr.length == 8) {
                    z10 = true;
                }
                androidx.media3.common.util.a.a(z10);
                break;
            case "auxiliary.tracks.map":
                androidx.media3.common.util.a.a(i10 == 0);
                break;
        }
    }

    @Override
    public void a(v.b bVar) {
        w.c(this, bVar);
    }

    public List b() {
        androidx.media3.common.util.a.h(this.f10266a.equals("auxiliary.tracks.map"), "Metadata is not an auxiliary tracks map");
        byte b10 = this.f10267b[1];
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < b10; i10++) {
            arrayList.add(Integer.valueOf(this.f10267b[i10 + 2]));
        }
        return arrayList;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.f10266a.equals(bVar.f10266a) && Arrays.equals(this.f10267b, bVar.f10267b) && this.f10268c == bVar.f10268c && this.f10269d == bVar.f10269d;
    }

    @Override
    public byte[] getWrappedMetadataBytes() {
        return w.a(this);
    }

    @Override
    public r getWrappedMetadataFormat() {
        return w.b(this);
    }

    public int hashCode() {
        return ((((((527 + this.f10266a.hashCode()) * 31) + Arrays.hashCode(this.f10267b)) * 31) + this.f10268c) * 31) + this.f10269d;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x006a  */
    public String toString() {
        String strC;
        int i10 = this.f10269d;
        if (i10 != 0) {
            if (i10 == 1) {
                strC = a1.H(this.f10267b);
            } else if (i10 == 23) {
                strC = String.valueOf(Float.intBitsToFloat(Ints.g(this.f10267b)));
            } else if (i10 == 67) {
                strC = String.valueOf(Ints.g(this.f10267b));
            } else if (i10 == 75) {
                strC = String.valueOf(a.a(this.f10267b[0]));
            } else if (i10 != 78) {
                strC = a1.u1(this.f10267b);
            } else {
                strC = String.valueOf(new j0(this.f10267b).O());
            }
        } else if (this.f10266a.equals("auxiliary.tracks.map")) {
            strC = c(b());
        } else {
            strC = a1.u1(this.f10267b);
        }
        return "mdta: key=" + this.f10266a + ", value=" + strC;
    }
}
