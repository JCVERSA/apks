package com.yandex.mobile.ads.impl;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.media3.extractor.text.ttml.TtmlNode;
import java.util.regex.Pattern;

final class r42 {
    private static final Pattern b = Pattern.compile("\\s+");
    private static final mk0<String> c = mk0.a(TtmlNode.TEXT_EMPHASIS_AUTO, "none");
    private static final mk0<String> d = mk0.a(TtmlNode.TEXT_EMPHASIS_MARK_DOT, TtmlNode.TEXT_EMPHASIS_MARK_SESAME, TtmlNode.TEXT_EMPHASIS_MARK_CIRCLE);
    private static final mk0<String> e = mk0.a(TtmlNode.TEXT_EMPHASIS_MARK_FILLED, "open");
    private static final mk0<String> f = mk0.a(TtmlNode.ANNOTATION_POSITION_AFTER, TtmlNode.ANNOTATION_POSITION_BEFORE, TtmlNode.ANNOTATION_POSITION_OUTSIDE);
    public final int a;

    private r42(int i, int i2, int i3) {
        this.a = i;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x006d  */
    /* JADX WARN: Code duplicated, block: B:67:0x0114  */
    /* JADX WARN: Code duplicated, block: B:68:0x0119  */
    /* JADX WARN: Code duplicated, block: B:71:0x0125  */
    /* JADX WARN: Code duplicated, block: B:73:0x012a  */
    /* JADX WARN: Code duplicated, block: B:79:0x013a  */
    /* JADX WARN: Code duplicated, block: B:81:0x0142  */
    /* JADX WARN: Code duplicated, block: B:82:0x0144  */
    /* JADX WARN: Code duplicated, block: B:84:0x014a  */
    /* JADX WARN: Code duplicated, block: B:86:0x014d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:87:0x014f  */
    /* JADX WARN: Code duplicated, block: B:88:0x0151  */
    @Nullable
    public static r42 a(@Nullable String str) {
        byte b2;
        int i;
        int i2;
        k kVar;
        Object next;
        String str2;
        int iHashCode;
        if (str == null) {
            return null;
        }
        String strB = fg.b(str.trim());
        if (strB.isEmpty()) {
            return null;
        }
        mk0 mk0VarA = mk0.a(TextUtils.split(strB, b));
        k kVar2 = (k) wx1.a((mk0) f, mk0VarA).iterator();
        String str3 = (String) (kVar2.hasNext() ? kVar2.next() : TtmlNode.ANNOTATION_POSITION_OUTSIDE);
        int iHashCode2 = str3.hashCode();
        int i3 = -1;
        int i4 = 2;
        if (iHashCode2 != -1392885889) {
            if (iHashCode2 != -1106037339) {
                if (iHashCode2 == 92734940 && str3.equals(TtmlNode.ANNOTATION_POSITION_AFTER)) {
                    b2 = 0;
                } else {
                    b2 = -1;
                }
            } else if (str3.equals(TtmlNode.ANNOTATION_POSITION_OUTSIDE)) {
                b2 = 1;
            } else {
                b2 = -1;
            }
        } else if (str3.equals(TtmlNode.ANNOTATION_POSITION_BEFORE)) {
            b2 = 2;
        } else {
            b2 = -1;
        }
        if (b2 != 0) {
            i = b2 != 1 ? 1 : -2;
        } else {
            i = 2;
        }
        wx1.d dVarA = wx1.a((mk0) c, mk0VarA);
        if (!dVarA.isEmpty()) {
            String str4 = (String) ((k) dVarA.iterator()).next();
            int iHashCode3 = str4.hashCode();
            if (iHashCode3 == 3005871) {
                str4.equals(TtmlNode.TEXT_EMPHASIS_AUTO);
            } else if (iHashCode3 == 3387192 && str4.equals("none")) {
                i3 = 0;
            }
            return new r42(i3, 0, i);
        }
        wx1.d dVarA2 = wx1.a((mk0) e, mk0VarA);
        wx1.d dVarA3 = wx1.a((mk0) d, mk0VarA);
        if (dVarA2.isEmpty() && dVarA3.isEmpty()) {
            return new r42(-1, 0, i);
        }
        k kVar3 = (k) dVarA2.iterator();
        String str5 = (String) (kVar3.hasNext() ? kVar3.next() : TtmlNode.TEXT_EMPHASIS_MARK_FILLED);
        int iHashCode4 = str5.hashCode();
        if (iHashCode4 != -1274499742) {
            if (iHashCode4 == 3417674 && str5.equals("open")) {
                i2 = 2;
            }
            kVar = (k) dVarA3.iterator();
            if (kVar.hasNext()) {
                next = kVar.next();
            } else {
                next = TtmlNode.TEXT_EMPHASIS_MARK_CIRCLE;
            }
            str2 = (String) next;
            iHashCode = str2.hashCode();
            if (iHashCode != -1360216880) {
                if (iHashCode != -905816648) {
                    if (iHashCode == 99657 && str2.equals(TtmlNode.TEXT_EMPHASIS_MARK_DOT)) {
                        i3 = 0;
                    }
                } else if (str2.equals(TtmlNode.TEXT_EMPHASIS_MARK_SESAME)) {
                    i3 = 1;
                }
            } else if (str2.equals(TtmlNode.TEXT_EMPHASIS_MARK_CIRCLE)) {
                i3 = 2;
            }
            if (i3 != 0) {
                if (i3 != 1) {
                    i4 = 1;
                } else {
                    i4 = 3;
                }
            }
            return new r42(i4, i2, i);
        }
        str5.equals(TtmlNode.TEXT_EMPHASIS_MARK_FILLED);
        i2 = 1;
        kVar = (k) dVarA3.iterator();
        if (kVar.hasNext()) {
            next = kVar.next();
        } else {
            next = TtmlNode.TEXT_EMPHASIS_MARK_CIRCLE;
        }
        str2 = (String) next;
        iHashCode = str2.hashCode();
        if (iHashCode != -1360216880) {
            if (iHashCode != -905816648) {
                if (iHashCode == 99657) {
                    i3 = 0;
                }
            } else if (str2.equals(TtmlNode.TEXT_EMPHASIS_MARK_SESAME)) {
                i3 = 1;
            }
        } else if (str2.equals(TtmlNode.TEXT_EMPHASIS_MARK_CIRCLE)) {
            i3 = 2;
        }
        if (i3 != 0) {
            if (i3 != 1) {
                i4 = 1;
            } else {
                i4 = 3;
            }
        }
        return new r42(i4, i2, i);
    }
}
