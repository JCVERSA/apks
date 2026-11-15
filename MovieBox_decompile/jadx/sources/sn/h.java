package sn;

import com.bumptech.glide.util.LruCache;
import com.cloud.tmc.kernel.utils.UrlUtils;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class h {

    public static final h f72360a = new h();

    private static Integer[] f72361b = {120, 180, 240, 360, 540, 720, 1080};

    private static LruCache f72362c = new LruCache(600);

    private h() {
    }

    private final int d(int i10) {
        int iIntValue = ((Number) ArraysKt.n0(f72361b)).intValue();
        for (Integer num : f72361b) {
            int iIntValue2 = num.intValue();
            if (i10 <= iIntValue2) {
                return iIntValue2;
            }
        }
        return iIntValue;
    }

    private final boolean e(String str) {
        return StringsKt.c0(str, "?x-oss-process=image", false, 2, null) || StringsKt.c0(str, "x-server-image=1", false, 2, null);
    }

    public final String a(String url, int i10, boolean z10, boolean z11, int i11, boolean z12) {
        Intrinsics.h(url, "url");
        if (e(url)) {
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
        String string = sb2.toString();
        Intrinsics.g(string, "toString(...)");
        return string;
    }

    public final String b(String url, int i10, boolean z10, boolean z11, int i11, boolean z12, boolean z13) {
        Intrinsics.h(url, "url");
        if (e(url)) {
            return url;
        }
        int iD = d(i10);
        Integer num = (Integer) f72362c.get(url);
        int iIntValue = num != null ? num.intValue() : 0;
        if (iIntValue >= iD) {
            iD = iIntValue;
        }
        int i12 = (int) (((iD * 1.0f) / i10) * i11);
        if (iIntValue != iD && !z13) {
            f72362c.put(url, Integer.valueOf(iD));
        }
        return a(url, iD, z10, z11, i12, z12);
    }
}
