package defpackage;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.function.Function;
import java.util.function.ToIntFunction;
import org.schabi.newpipe.extractor.MediaFormat;
import org.schabi.newpipe.extractor.stream.VideoStream;

public abstract class yl5 {
    public static final List a = hdb.a(new Object[]{MediaFormat.v3GPP, MediaFormat.WEBM, MediaFormat.MPEG_4});

    public static int c(String str, String str2) {
        try {
            return Integer.parseInt(str.replaceAll("0p\\d+$", "1").replaceAll("[^\\d.]", "")) - Integer.parseInt(str2.replaceAll("0p\\d+$", "1").replaceAll("[^\\d.]", ""));
        } catch (NumberFormatException unused) {
            return 1;
        }
    }

    public static int d(VideoStream videoStream) {
        return a.indexOf(videoStream.getFormat());
    }

    public static List e(List list, boolean z) {
        Comparator comparatorNullsLast = Comparator.nullsLast(Comparator.comparing(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((VideoStream) obj).getResolution();
            }
        }, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return yl5.c((String) obj, (String) obj2);
            }
        }).thenComparingInt(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                return yl5.d((VideoStream) obj);
            }
        }));
        if (!z) {
            comparatorNullsLast = comparatorNullsLast.reversed();
        }
        Collections.sort(list, comparatorNullsLast);
        return list;
    }
}
