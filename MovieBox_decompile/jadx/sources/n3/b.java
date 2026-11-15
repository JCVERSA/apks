package n3;

import android.text.TextUtils;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Sets;
import com.google.common.collect.g3;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import java.util.regex.Pattern;

final class b {

    private static final Pattern f66860d = Pattern.compile("\\s+");

    private static final ImmutableSet f66861e = ImmutableSet.of("auto", "none");

    private static final ImmutableSet f66862f = ImmutableSet.of("dot", "sesame", "circle");

    private static final ImmutableSet f66863g = ImmutableSet.of("filled", MRAIDPresenter.OPEN);

    private static final ImmutableSet f66864h = ImmutableSet.of("after", "before", "outside");

    public final int f66865a;

    public final int f66866b;

    public final int f66867c;

    private b(int i10, int i11, int i12) {
        this.f66865a = i10;
        this.f66866b = i11;
        this.f66867c = i12;
    }

    public static b a(String str) {
        if (str == null) {
            return null;
        }
        String strE = com.google.common.base.a.e(str.trim());
        if (strE.isEmpty()) {
            return null;
        }
        return b(ImmutableSet.copyOf(TextUtils.split(strE, f66860d)));
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0042  */
    /* JADX WARN: Code duplicated, block: B:55:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:57:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:63:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:65:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:66:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:68:0x0100  */
    /* JADX WARN: Code duplicated, block: B:69:0x0102  */
    /* JADX WARN: Code duplicated, block: B:71:0x0105 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:72:0x0107  */
    /* JADX WARN: Code duplicated, block: B:73:0x0109  */
    private static b b(ImmutableSet immutableSet) {
        byte b10;
        int i10;
        int i11;
        String str;
        int iHashCode;
        String str2 = (String) g3.f(Sets.e(f66864h, immutableSet), "outside");
        int iHashCode2 = str2.hashCode();
        int i12 = 2;
        byte b11 = 0;
        int i13 = -1;
        if (iHashCode2 != -1392885889) {
            if (iHashCode2 != -1106037339) {
                if (iHashCode2 == 92734940 && str2.equals("after")) {
                    b10 = 0;
                } else {
                    b10 = -1;
                }
            } else if (str2.equals("outside")) {
                b10 = 1;
            } else {
                b10 = -1;
            }
        } else if (str2.equals("before")) {
            b10 = 2;
        } else {
            b10 = -1;
        }
        if (b10 != 0) {
            i10 = b10 != 1 ? 1 : -2;
        } else {
            i10 = 2;
        }
        Sets.f fVarE = Sets.e(f66861e, immutableSet);
        if (!fVarE.isEmpty()) {
            String str3 = (String) fVarE.iterator().next();
            int iHashCode3 = str3.hashCode();
            if (iHashCode3 == 3005871) {
                str3.equals("auto");
            } else if (iHashCode3 == 3387192 && str3.equals("none")) {
                i13 = 0;
            }
            return new b(i13, 0, i10);
        }
        Sets.f fVarE2 = Sets.e(f66863g, immutableSet);
        Sets.f fVarE3 = Sets.e(f66862f, immutableSet);
        if (fVarE2.isEmpty() && fVarE3.isEmpty()) {
            return new b(-1, 0, i10);
        }
        String str4 = (String) g3.f(fVarE2, "filled");
        int iHashCode4 = str4.hashCode();
        if (iHashCode4 != -1274499742) {
            if (iHashCode4 == 3417674 && str4.equals(MRAIDPresenter.OPEN)) {
                i11 = 2;
            }
            str = (String) g3.f(fVarE3, "circle");
            iHashCode = str.hashCode();
            if (iHashCode != -1360216880) {
                if (iHashCode != -905816648) {
                    if (iHashCode == 99657 || !str.equals("dot")) {
                        b11 = -1;
                    }
                } else if (str.equals("sesame")) {
                    b11 = 1;
                } else {
                    b11 = -1;
                }
            } else if (str.equals("circle")) {
                b11 = 2;
            } else {
                b11 = -1;
            }
            if (b11 != 0) {
                if (b11 != 1) {
                    i12 = 1;
                } else {
                    i12 = 3;
                }
            }
            return new b(i12, i11, i10);
        }
        str4.equals("filled");
        i11 = 1;
        str = (String) g3.f(fVarE3, "circle");
        iHashCode = str.hashCode();
        if (iHashCode != -1360216880) {
            if (iHashCode != -905816648) {
                if (iHashCode == 99657) {
                    b11 = -1;
                } else {
                    b11 = -1;
                }
            } else if (str.equals("sesame")) {
                b11 = 1;
            } else {
                b11 = -1;
            }
        } else if (str.equals("circle")) {
            b11 = 2;
        } else {
            b11 = -1;
        }
        if (b11 != 0) {
            if (b11 != 1) {
                i12 = 1;
            } else {
                i12 = 3;
            }
        }
        return new b(i12, i11, i10);
    }
}
