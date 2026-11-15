package defpackage;

import androidx.media3.container.MdtaMetadataEntry;
import com.google.android.gms.internal.ads.s7;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class mhh implements iqe {
    public final String a;
    public final byte[] b;
    public final int c;
    public final int d;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:20:0x0042  */
    public mhh(String str, byte[] bArr, int i, int i2) {
        byte b;
        byte b2;
        boolean z = true;
        switch (str) {
            case "com.android.capture.fps":
                b = 0;
                break;
            case "auxiliary.tracks.interleaved":
                b = 4;
                break;
            case "auxiliary.tracks.length":
                b = 2;
                break;
            case "auxiliary.tracks.offset":
                b = 1;
                break;
            case "auxiliary.tracks.map":
                b = 3;
                break;
            default:
                b = -1;
                break;
        }
        if (b == 0) {
            if (i2 != 23) {
                z = false;
            } else if (bArr.length == 4) {
                i2 = 23;
            } else {
                i2 = 23;
                z = false;
            }
            n7g.d(z);
        } else if (b == 1 || b == 2) {
            if (i2 != 78) {
                z = false;
            } else if (bArr.length == 8) {
                i2 = 78;
            } else {
                i2 = 78;
                z = false;
            }
            n7g.d(z);
        } else if (b == 3) {
            n7g.d(i2 == 0);
        } else if (b == 4) {
            if (i2 != 75) {
                z = false;
            } else if (bArr.length == 1 && ((b2 = bArr[0]) == 0 || b2 == 1)) {
                i2 = 75;
            } else {
                i2 = 75;
                z = false;
            }
            n7g.d(z);
        }
        this.a = str;
        this.b = bArr;
        this.c = i;
        this.d = i2;
    }

    @Override
    public final void a(une uneVar) {
    }

    public final List b() {
        n7g.g(this.a.equals(MdtaMetadataEntry.KEY_AUXILIARY_TRACKS_MAP), "Metadata is not an auxiliary tracks map");
        byte[] bArr = this.b;
        byte b = bArr[1];
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < b; i++) {
            arrayList.add(Integer.valueOf(bArr[i + 2]));
        }
        return arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && mhh.class == obj.getClass()) {
            mhh mhhVar = (mhh) obj;
            if (this.a.equals(mhhVar.a) && Arrays.equals(this.b, mhhVar.b) && this.c == mhhVar.c && this.d == mhhVar.d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((this.a.hashCode() + 527) * 31) + Arrays.hashCode(this.b)) * 31) + this.c) * 31) + this.d;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0079  */
    /* JADX WARN: Code duplicated, block: B:25:0x0087 A[LOOP:0: B:23:0x0084->B:25:0x0087, LOOP_END] */
    public final String toString() {
        String string;
        byte[] bArr;
        StringBuilder sb;
        int i = this.d;
        if (i != 0) {
            if (i == 1) {
                string = kfh.b(this.b);
            } else if (i == 23) {
                string = String.valueOf(Float.intBitsToFloat(s7.d(this.b)));
            } else if (i == 67) {
                string = String.valueOf(s7.d(this.b));
            } else if (i == 75) {
                string = String.valueOf(this.b[0] & 255);
            } else if (i != 78) {
                bArr = this.b;
                int i2 = kfh.a;
                int length = bArr.length;
                sb = new StringBuilder(length + length);
                for (int i3 = 0; i3 < bArr.length; i3++) {
                    sb.append(Character.forDigit((bArr[i3] >> 4) & 15, 16));
                    sb.append(Character.forDigit(bArr[i3] & 15, 16));
                }
                string = sb.toString();
            } else {
                string = String.valueOf(new u4h(this.b).Q());
            }
        } else if (this.a.equals(MdtaMetadataEntry.KEY_AUXILIARY_TRACKS_MAP)) {
            List listB = b();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("track types = ");
            o2i.b(sb2, listB, StringUtils.COMMA);
            string = sb2.toString();
        } else {
            bArr = this.b;
            int i4 = kfh.a;
            int length2 = bArr.length;
            sb = new StringBuilder(length2 + length2);
            while (i3 < bArr.length) {
                sb.append(Character.forDigit((bArr[i3] >> 4) & 15, 16));
                sb.append(Character.forDigit(bArr[i3] & 15, 16));
            }
            string = sb.toString();
        }
        return "mdta: key=" + this.a + ", value=" + string;
    }
}
