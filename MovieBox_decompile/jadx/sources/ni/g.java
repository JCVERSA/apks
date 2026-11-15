package ni;

import com.bumptech.glide.util.LruCache;
import com.cloud.tmc.kernel.utils.UrlUtils;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class g {

    public static final g f67301a = new g();

    private static Integer[] f67302b = {120, 180, 240, 360, 540, 720, 1080};

    private static LruCache f67303c = new LruCache(600);

    private g() {
    }

    private final int f(int i10) {
        int iIntValue = ((Number) ArraysKt.n0(f67302b)).intValue();
        for (Integer num : f67302b) {
            int iIntValue2 = num.intValue();
            if (i10 <= iIntValue2) {
                return iIntValue2;
            }
        }
        return iIntValue;
    }

    private final boolean g(String str) {
        return StringsKt.c0(str, "?x-oss-process=image", false, 2, null) || StringsKt.c0(str, "x-server-image=1", false, 2, null);
    }

    public final String a(String url, int i10, boolean z10, boolean z11, int i11, boolean z12, int i12) {
        Intrinsics.h(url, "url");
        if (g(url)) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder(url);
        if (StringsKt.c0(url, UrlUtils.QUESTION_MARK, false, 2, null)) {
            sb2.append("&x-oss-process=image");
        } else {
            sb2.append("?x-oss-process=image");
        }
        sb2.append("/resize,w_");
        sb2.append(i10);
        if (z12) {
            sb2.append(",h_");
            sb2.append(i11);
        }
        if (z10) {
            sb2.append("/format,webp");
        }
        if (z11) {
            sb2.append("/quality,Q_50");
        }
        if (1 <= i12 && i12 < 51) {
            sb2.append("/blur,r_" + i12 + ",s_" + i12);
        }
        String string = sb2.toString();
        Intrinsics.g(string, "toString(...)");
        return string;
    }

    public final int c(String url) {
        Intrinsics.h(url, "url");
        Integer num = (Integer) f67303c.get(url);
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    public final String d(String url, int i10, boolean z10, boolean z11, int i11, boolean z12, boolean z13, int i12) {
        Intrinsics.h(url, "url");
        if (g(url)) {
            return url;
        }
        int iF = f(i10);
        Integer num = (Integer) f67303c.get(url);
        int iIntValue = num != null ? num.intValue() : 0;
        if (iIntValue >= iF) {
            iF = iIntValue;
        }
        int i13 = (int) (((iF * 1.0f) / i10) * i11);
        if (iIntValue != iF && !z13) {
            f67303c.put(url, Integer.valueOf(iF));
        }
        return a(url, iF, z10, z11, i13, z12, i12);
    }

    public final void h(String originUrl, int i10) {
        Intrinsics.h(originUrl, "originUrl");
        if (g(originUrl)) {
            return;
        }
        int iF = f(i10);
        Integer num = (Integer) f67303c.get(originUrl);
        int iIntValue = num != null ? num.intValue() : 0;
        if (iIntValue >= iF) {
            iF = iIntValue;
        }
        if (iIntValue != iF) {
            f67303c.put(originUrl, Integer.valueOf(iF));
        }
    }
}
