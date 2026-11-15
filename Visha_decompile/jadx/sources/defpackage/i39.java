package defpackage;

import com.yandex.div.core.view2.divs.gallery.ScrollPosition;
import com.yandex.div2.DivGallery;
import kotlin.NoWhenBranchMatchedException;

public abstract class i39 {

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[DivGallery.ScrollMode.values().length];
            try {
                iArr[DivGallery.ScrollMode.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DivGallery.ScrollMode.PAGING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    public static final ScrollPosition a(DivGallery.ScrollMode scrollMode) {
        y45.j(scrollMode, "<this>");
        int i = a.a[scrollMode.ordinal()];
        if (i == 1) {
            return ScrollPosition.DEFAULT;
        }
        if (i == 2) {
            return ScrollPosition.CENTER;
        }
        throw new NoWhenBranchMatchedException();
    }
}
