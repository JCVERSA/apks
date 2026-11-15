package kotlin.collections.builders;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u00004\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0005\n\u0002\u0010\u001e\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0007\u001a#\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u001a?\u0010\f\u001a\u00020\u000b\"\u0004\b\u0000\u0010\u0006*\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u00032\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\u00012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\tH\u0002¢\u0006\u0004\b\f\u0010\r\u001a/\u0010\u000e\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0006*\b\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u000e\u0010\u000f\u001a;\u0010\u0013\u001a\u00020\u0012\"\u0004\b\u0000\u0010\u0006*\b\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\u00012\n\u0010\u0011\u001a\u0006\u0012\u0002\b\u00030\u0010H\u0002¢\u0006\u0004\b\u0013\u0010\u0014\u001a-\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\"\u0004\b\u0000\u0010\u0006*\b\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010\u0015\u001a\u00020\u0001H\u0000¢\u0006\u0004\b\u0016\u0010\u0017\u001a'\u0010\u001a\u001a\u00020\u0019\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010\u0018\u001a\u00020\u0001H\u0000¢\u0006\u0004\b\u001a\u0010\u001b\u001a/\u0010\u001e\u001a\u00020\u0019\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0000¢\u0006\u0004\b\u001e\u0010\u001f¨\u0006 "}, d2 = {"E", "", "size", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "(I)[Ljava/lang/Object;", "T", "offset", "length", "", "thisCollection", "", "j", "([Ljava/lang/Object;IILjava/util/Collection;)Ljava/lang/String;", "i", "([Ljava/lang/Object;II)I", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "h", "([Ljava/lang/Object;IILjava/util/List;)Z", "newSize", "e", "([Ljava/lang/Object;I)[Ljava/lang/Object;", "index", "", "f", "([Ljava/lang/Object;I)V", "fromIndex", "toIndex", "g", "([Ljava/lang/Object;II)V", "kotlin-stdlib"}, k = 2, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ListBuilderKt {
    public static final Object[] d(int i10) {
        if (i10 >= 0) {
            return new Object[i10];
        }
        throw new IllegalArgumentException("capacity must be non-negative.");
    }

    public static final Object[] e(Object[] objArr, int i10) {
        Intrinsics.h(objArr, "<this>");
        Object[] objArrCopyOf = Arrays.copyOf(objArr, i10);
        Intrinsics.g(objArrCopyOf, "copyOf(...)");
        return objArrCopyOf;
    }

    public static final void f(Object[] objArr, int i10) {
        Intrinsics.h(objArr, "<this>");
        objArr[i10] = null;
    }

    public static final void g(Object[] objArr, int i10, int i11) {
        Intrinsics.h(objArr, "<this>");
        while (i10 < i11) {
            f(objArr, i10);
            i10++;
        }
    }

    public static final boolean h(Object[] objArr, int i10, int i11, List list) {
        if (i11 != list.size()) {
            return false;
        }
        for (int i12 = 0; i12 < i11; i12++) {
            if (!Intrinsics.c(objArr[i10 + i12], list.get(i12))) {
                return false;
            }
        }
        return true;
    }

    public static final int i(Object[] objArr, int i10, int i11) {
        int iHashCode = 1;
        for (int i12 = 0; i12 < i11; i12++) {
            Object obj = objArr[i10 + i12];
            iHashCode = (iHashCode * 31) + (obj != null ? obj.hashCode() : 0);
        }
        return iHashCode;
    }

    public static final String j(Object[] objArr, int i10, int i11, Collection collection) {
        StringBuilder sb2 = new StringBuilder((i11 * 3) + 2);
        sb2.append("[");
        for (int i12 = 0; i12 < i11; i12++) {
            if (i12 > 0) {
                sb2.append(", ");
            }
            Object obj = objArr[i10 + i12];
            if (obj == collection) {
                sb2.append("(this Collection)");
            } else {
                sb2.append(obj);
            }
        }
        sb2.append("]");
        String string = sb2.toString();
        Intrinsics.g(string, "toString(...)");
        return string;
    }
}
