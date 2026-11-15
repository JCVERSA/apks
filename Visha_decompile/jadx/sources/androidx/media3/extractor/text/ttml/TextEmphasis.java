package androidx.media3.extractor.text.ttml;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Sets;
import defpackage.ui;
import defpackage.v55;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.regex.Pattern;

final class TextEmphasis {
    public static final int MARK_SHAPE_AUTO = -1;
    public static final int POSITION_OUTSIDE = -2;
    public final int markFill;
    public final int markShape;
    public final int position;
    private static final Pattern WHITESPACE_PATTERN = Pattern.compile("\\s+");
    private static final ImmutableSet<String> SINGLE_STYLE_VALUES = ImmutableSet.of(TtmlNode.TEXT_EMPHASIS_AUTO, "none");
    private static final ImmutableSet<String> MARK_SHAPE_VALUES = ImmutableSet.of(TtmlNode.TEXT_EMPHASIS_MARK_DOT, TtmlNode.TEXT_EMPHASIS_MARK_SESAME, TtmlNode.TEXT_EMPHASIS_MARK_CIRCLE);
    private static final ImmutableSet<String> MARK_FILL_VALUES = ImmutableSet.of(TtmlNode.TEXT_EMPHASIS_MARK_FILLED, "open");
    private static final ImmutableSet<String> POSITION_VALUES = ImmutableSet.of(TtmlNode.ANNOTATION_POSITION_AFTER, TtmlNode.ANNOTATION_POSITION_BEFORE, TtmlNode.ANNOTATION_POSITION_OUTSIDE);

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Position {
    }

    private TextEmphasis(int i, int i2, int i3) {
        this.markShape = i;
        this.markFill = i2;
        this.position = i3;
    }

    @Nullable
    public static TextEmphasis parse(@Nullable String str) {
        if (str == null) {
            return null;
        }
        String strE = ui.e(str.trim());
        if (strE.isEmpty()) {
            return null;
        }
        return parseWords(ImmutableSet.copyOf(TextUtils.split(strE, WHITESPACE_PATTERN)));
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
    private static TextEmphasis parseWords(ImmutableSet<String> immutableSet) {
        byte b;
        int i;
        int i2;
        String str;
        int iHashCode;
        String str2 = (String) v55.f(Sets.e(POSITION_VALUES, immutableSet), TtmlNode.ANNOTATION_POSITION_OUTSIDE);
        int iHashCode2 = str2.hashCode();
        int i3 = 2;
        byte b2 = 0;
        int i4 = -1;
        if (iHashCode2 != -1392885889) {
            if (iHashCode2 != -1106037339) {
                if (iHashCode2 == 92734940 && str2.equals(TtmlNode.ANNOTATION_POSITION_AFTER)) {
                    b = 0;
                } else {
                    b = -1;
                }
            } else if (str2.equals(TtmlNode.ANNOTATION_POSITION_OUTSIDE)) {
                b = 1;
            } else {
                b = -1;
            }
        } else if (str2.equals(TtmlNode.ANNOTATION_POSITION_BEFORE)) {
            b = 2;
        } else {
            b = -1;
        }
        if (b != 0) {
            i = b != 1 ? 1 : -2;
        } else {
            i = 2;
        }
        Sets.e eVarE = Sets.e(SINGLE_STYLE_VALUES, immutableSet);
        if (!eVarE.isEmpty()) {
            String str3 = (String) eVarE.iterator().next();
            int iHashCode3 = str3.hashCode();
            if (iHashCode3 == 3005871) {
                str3.equals(TtmlNode.TEXT_EMPHASIS_AUTO);
            } else if (iHashCode3 == 3387192 && str3.equals("none")) {
                i4 = 0;
            }
            return new TextEmphasis(i4, 0, i);
        }
        Sets.e eVarE2 = Sets.e(MARK_FILL_VALUES, immutableSet);
        Sets.e eVarE3 = Sets.e(MARK_SHAPE_VALUES, immutableSet);
        if (eVarE2.isEmpty() && eVarE3.isEmpty()) {
            return new TextEmphasis(-1, 0, i);
        }
        String str4 = (String) v55.f(eVarE2, TtmlNode.TEXT_EMPHASIS_MARK_FILLED);
        int iHashCode4 = str4.hashCode();
        if (iHashCode4 != -1274499742) {
            if (iHashCode4 == 3417674 && str4.equals("open")) {
                i2 = 2;
            }
            str = (String) v55.f(eVarE3, TtmlNode.TEXT_EMPHASIS_MARK_CIRCLE);
            iHashCode = str.hashCode();
            if (iHashCode != -1360216880) {
                if (iHashCode != -905816648) {
                    if (iHashCode == 99657 || !str.equals(TtmlNode.TEXT_EMPHASIS_MARK_DOT)) {
                        b2 = -1;
                    }
                } else if (str.equals(TtmlNode.TEXT_EMPHASIS_MARK_SESAME)) {
                    b2 = 1;
                } else {
                    b2 = -1;
                }
            } else if (str.equals(TtmlNode.TEXT_EMPHASIS_MARK_CIRCLE)) {
                b2 = 2;
            } else {
                b2 = -1;
            }
            if (b2 != 0) {
                if (b2 != 1) {
                    i3 = 1;
                } else {
                    i3 = 3;
                }
            }
            return new TextEmphasis(i3, i2, i);
        }
        str4.equals(TtmlNode.TEXT_EMPHASIS_MARK_FILLED);
        i2 = 1;
        str = (String) v55.f(eVarE3, TtmlNode.TEXT_EMPHASIS_MARK_CIRCLE);
        iHashCode = str.hashCode();
        if (iHashCode != -1360216880) {
            if (iHashCode != -905816648) {
                if (iHashCode == 99657) {
                    b2 = -1;
                } else {
                    b2 = -1;
                }
            } else if (str.equals(TtmlNode.TEXT_EMPHASIS_MARK_SESAME)) {
                b2 = 1;
            } else {
                b2 = -1;
            }
        } else if (str.equals(TtmlNode.TEXT_EMPHASIS_MARK_CIRCLE)) {
            b2 = 2;
        } else {
            b2 = -1;
        }
        if (b2 != 0) {
            if (b2 != 1) {
                i3 = 1;
            } else {
                i3 = 3;
            }
        }
        return new TextEmphasis(i3, i2, i);
    }
}
