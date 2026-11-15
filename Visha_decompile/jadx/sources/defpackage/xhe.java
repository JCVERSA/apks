package defpackage;

import android.text.TextUtils;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.android.gms.internal.ads.zzfxb;
import java.util.regex.Pattern;

public final class xhe {
    public static final Pattern d = Pattern.compile("\\s+");
    public static final zzfxb e = zzfxb.zzp(TtmlNode.TEXT_EMPHASIS_AUTO, "none");
    public static final zzfxb f = zzfxb.zzq(TtmlNode.TEXT_EMPHASIS_MARK_DOT, TtmlNode.TEXT_EMPHASIS_MARK_SESAME, TtmlNode.TEXT_EMPHASIS_MARK_CIRCLE);
    public static final zzfxb g = zzfxb.zzp(TtmlNode.TEXT_EMPHASIS_MARK_FILLED, "open");
    public static final zzfxb h = zzfxb.zzq(TtmlNode.ANNOTATION_POSITION_AFTER, TtmlNode.ANNOTATION_POSITION_BEFORE, TtmlNode.ANNOTATION_POSITION_OUTSIDE);
    public final int a;
    public final int b;
    public final int c;

    public xhe(int i, int i2, int i3) {
        this.a = i;
        this.b = i2;
        this.c = i3;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x004e  */
    public static xhe a(String str) {
        byte b;
        int i;
        if (str == null) {
            return null;
        }
        String strA = d2i.a(str.trim());
        if (strA.isEmpty()) {
            return null;
        }
        zzfxb zzfxbVarZzm = zzfxb.zzm(TextUtils.split(strA, d));
        String str2 = (String) q4i.a(s5i.b(h, zzfxbVarZzm), TtmlNode.ANNOTATION_POSITION_OUTSIDE);
        int iHashCode = str2.hashCode();
        int i2 = -1;
        int i3 = 0;
        if (iHashCode != -1106037339) {
            if (iHashCode == 92734940 && str2.equals(TtmlNode.ANNOTATION_POSITION_AFTER)) {
                b = 0;
            } else {
                b = -1;
            }
        } else if (str2.equals(TtmlNode.ANNOTATION_POSITION_OUTSIDE)) {
            b = 1;
        } else {
            b = -1;
        }
        if (b != 0) {
            i = b != 1 ? 1 : -2;
        } else {
            i = 2;
        }
        q5i q5iVarB = s5i.b(e, zzfxbVarZzm);
        if (q5iVarB.isEmpty()) {
            q5i q5iVarB2 = s5i.b(g, zzfxbVarZzm);
            q5i q5iVarB3 = s5i.b(f, zzfxbVarZzm);
            if (!q5iVarB2.isEmpty() || !q5iVarB3.isEmpty()) {
                String str3 = (String) q4i.a(q5iVarB2, TtmlNode.TEXT_EMPHASIS_MARK_FILLED);
                int i4 = (str3.hashCode() == 3417674 && str3.equals("open")) ? 2 : 1;
                String str4 = (String) q4i.a(q5iVarB3, TtmlNode.TEXT_EMPHASIS_MARK_CIRCLE);
                int iHashCode2 = str4.hashCode();
                if (iHashCode2 != -905816648) {
                    if (iHashCode2 == 99657 && str4.equals(TtmlNode.TEXT_EMPHASIS_MARK_DOT)) {
                        i2 = 0;
                    }
                } else if (str4.equals(TtmlNode.TEXT_EMPHASIS_MARK_SESAME)) {
                    i2 = 1;
                }
                if (i2 == 0) {
                    i2 = 2;
                } else if (i2 != 1) {
                    i3 = i4;
                    i2 = 1;
                } else {
                    i2 = 3;
                }
                i3 = i4;
            }
        } else {
            String str5 = (String) q5iVarB.iterator().next();
            if (str5.hashCode() == 3387192 && str5.equals("none")) {
                i2 = 0;
            }
        }
        return new xhe(i2, i3, i);
    }
}
