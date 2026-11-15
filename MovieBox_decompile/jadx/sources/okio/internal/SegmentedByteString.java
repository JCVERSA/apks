package okio.internal;

import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okio.Buffer;
import okio.ByteString;
import okio.C1062SegmentedByteString;
import okio.Segment;

@Metadata(d1 = {"\u0000T\n\u0000\n\u0002\u0010\b\n\u0002\u0010\u0015\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a$\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0000\u001a-\u0010\u0006\u001a\u00020\u0007*\u00020\b2\u0006\u0010\t\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u0001H\u0080\b\u001a\u0017\u0010\u000e\u001a\u00020\u000f*\u00020\b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0080\b\u001a\r\u0010\u0012\u001a\u00020\u0001*\u00020\bH\u0080\b\u001a\r\u0010\u0013\u001a\u00020\u0001*\u00020\bH\u0080\b\u001a\u0015\u0010\u0014\u001a\u00020\u0015*\u00020\b2\u0006\u0010\u0016\u001a\u00020\u0001H\u0080\b\u001a-\u0010\u0017\u001a\u00020\u000f*\u00020\b2\u0006\u0010\t\u001a\u00020\u00012\u0006\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u0001H\u0080\b\u001a-\u0010\u0017\u001a\u00020\u000f*\u00020\b2\u0006\u0010\t\u001a\u00020\u00012\u0006\u0010\u0010\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u0001H\u0080\b\u001a\u001d\u0010\u001a\u001a\u00020\u0019*\u00020\b2\u0006\u0010\u001b\u001a\u00020\u00012\u0006\u0010\u001c\u001a\u00020\u0001H\u0080\b\u001a\r\u0010\u001d\u001a\u00020\u000b*\u00020\bH\u0080\b\u001a%\u0010\u001e\u001a\u00020\u0007*\u00020\b2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\t\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u0001H\u0080\b\u001a]\u0010!\u001a\u00020\u0007*\u00020\b2K\u0010\"\u001aG\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b$\u0012\b\b%\u0012\u0004\b\b(&\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b$\u0012\b\b%\u0012\u0004\b\b(\t\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b$\u0012\b\b%\u0012\u0004\b\b(\r\u0012\u0004\u0012\u00020\u00070#H\u0080\bø\u0001\u0000\u001aj\u0010!\u001a\u00020\u0007*\u00020\b2\u0006\u0010\u001b\u001a\u00020\u00012\u0006\u0010\u001c\u001a\u00020\u00012K\u0010\"\u001aG\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b$\u0012\b\b%\u0012\u0004\b\b(&\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b$\u0012\b\b%\u0012\u0004\b\b(\t\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b$\u0012\b\b%\u0012\u0004\b\b(\r\u0012\u0004\u0012\u00020\u00070#H\u0082\b\u001a\u0014\u0010'\u001a\u00020\u0001*\u00020\b2\u0006\u0010\u0016\u001a\u00020\u0001H\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006("}, d2 = {"binarySearch", "", "", AppMeasurementSdk.ConditionalUserProperty.VALUE, "fromIndex", "toIndex", "commonCopyInto", "", "Lokio/SegmentedByteString;", "offset", "target", "", "targetOffset", "byteCount", "commonEquals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "commonGetSize", "commonHashCode", "commonInternalGet", "", "pos", "commonRangeEquals", "otherOffset", "Lokio/ByteString;", "commonSubstring", "beginIndex", "endIndex", "commonToByteArray", "commonWrite", "buffer", "Lokio/Buffer;", "forEachSegment", EventConstants.KEY_ACTION, "Lkotlin/Function3;", "Lkotlin/ParameterName;", "name", "data", "segment", "okio"}, k = 2, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@JvmName
@SourceDebugExtension
public final class SegmentedByteString {
    public static final int binarySearch(int[] iArr, int i10, int i11, int i12) {
        Intrinsics.h(iArr, "<this>");
        int i13 = i12 - 1;
        while (i11 <= i13) {
            int i14 = (i11 + i13) >>> 1;
            int i15 = iArr[i14];
            if (i15 < i10) {
                i11 = i14 + 1;
            } else {
                if (i15 <= i10) {
                    return i14;
                }
                i13 = i14 - 1;
            }
        }
        return (-i11) - 1;
    }

    public static final void commonCopyInto(C1062SegmentedByteString c1062SegmentedByteString, int i10, byte[] target, int i11, int i12) {
        Intrinsics.h(c1062SegmentedByteString, "<this>");
        Intrinsics.h(target, "target");
        long j10 = i12;
        okio.SegmentedByteString.checkOffsetAndCount(c1062SegmentedByteString.size(), i10, j10);
        okio.SegmentedByteString.checkOffsetAndCount(target.length, i11, j10);
        int i13 = i12 + i10;
        int iSegment = segment(c1062SegmentedByteString, i10);
        while (i10 < i13) {
            int i14 = iSegment == 0 ? 0 : c1062SegmentedByteString.getDirectory()[iSegment - 1];
            int i15 = c1062SegmentedByteString.getDirectory()[iSegment] - i14;
            int i16 = c1062SegmentedByteString.getDirectory()[c1062SegmentedByteString.getSegments().length + iSegment];
            int iMin = Math.min(i13, i15 + i14) - i10;
            int i17 = i16 + (i10 - i14);
            ArraysKt.h(c1062SegmentedByteString.getSegments()[iSegment], target, i11, i17, i17 + iMin);
            i11 += iMin;
            i10 += iMin;
            iSegment++;
        }
    }

    public static final boolean commonEquals(C1062SegmentedByteString c1062SegmentedByteString, Object obj) {
        Intrinsics.h(c1062SegmentedByteString, "<this>");
        if (obj == c1062SegmentedByteString) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            if (byteString.size() == c1062SegmentedByteString.size() && c1062SegmentedByteString.rangeEquals(0, byteString, 0, c1062SegmentedByteString.size())) {
                return true;
            }
        }
        return false;
    }

    public static final int commonGetSize(C1062SegmentedByteString c1062SegmentedByteString) {
        Intrinsics.h(c1062SegmentedByteString, "<this>");
        return c1062SegmentedByteString.getDirectory()[c1062SegmentedByteString.getSegments().length - 1];
    }

    public static final int commonHashCode(C1062SegmentedByteString c1062SegmentedByteString) {
        Intrinsics.h(c1062SegmentedByteString, "<this>");
        int hashCode = c1062SegmentedByteString.getHashCode();
        if (hashCode != 0) {
            return hashCode;
        }
        int length = c1062SegmentedByteString.getSegments().length;
        int i10 = 0;
        int i11 = 1;
        int i12 = 0;
        while (i10 < length) {
            int i13 = c1062SegmentedByteString.getDirectory()[length + i10];
            int i14 = c1062SegmentedByteString.getDirectory()[i10];
            byte[] bArr = c1062SegmentedByteString.getSegments()[i10];
            int i15 = (i14 - i12) + i13;
            while (i13 < i15) {
                i11 = (i11 * 31) + bArr[i13];
                i13++;
            }
            i10++;
            i12 = i14;
        }
        c1062SegmentedByteString.setHashCode$okio(i11);
        return i11;
    }

    public static final byte commonInternalGet(C1062SegmentedByteString c1062SegmentedByteString, int i10) {
        Intrinsics.h(c1062SegmentedByteString, "<this>");
        okio.SegmentedByteString.checkOffsetAndCount(c1062SegmentedByteString.getDirectory()[c1062SegmentedByteString.getSegments().length - 1], i10, 1L);
        int iSegment = segment(c1062SegmentedByteString, i10);
        return c1062SegmentedByteString.getSegments()[iSegment][(i10 - (iSegment == 0 ? 0 : c1062SegmentedByteString.getDirectory()[iSegment - 1])) + c1062SegmentedByteString.getDirectory()[c1062SegmentedByteString.getSegments().length + iSegment]];
    }

    public static final boolean commonRangeEquals(C1062SegmentedByteString c1062SegmentedByteString, int i10, ByteString other, int i11, int i12) {
        Intrinsics.h(c1062SegmentedByteString, "<this>");
        Intrinsics.h(other, "other");
        if (i10 < 0 || i10 > c1062SegmentedByteString.size() - i12) {
            return false;
        }
        int i13 = i12 + i10;
        int iSegment = segment(c1062SegmentedByteString, i10);
        while (i10 < i13) {
            int i14 = iSegment == 0 ? 0 : c1062SegmentedByteString.getDirectory()[iSegment - 1];
            int i15 = c1062SegmentedByteString.getDirectory()[iSegment] - i14;
            int i16 = c1062SegmentedByteString.getDirectory()[c1062SegmentedByteString.getSegments().length + iSegment];
            int iMin = Math.min(i13, i15 + i14) - i10;
            if (!other.rangeEquals(i11, c1062SegmentedByteString.getSegments()[iSegment], i16 + (i10 - i14), iMin)) {
                return false;
            }
            i11 += iMin;
            i10 += iMin;
            iSegment++;
        }
        return true;
    }

    public static final ByteString commonSubstring(C1062SegmentedByteString c1062SegmentedByteString, int i10, int i11) {
        Intrinsics.h(c1062SegmentedByteString, "<this>");
        int iResolveDefaultParameter = okio.SegmentedByteString.resolveDefaultParameter(c1062SegmentedByteString, i11);
        if (i10 < 0) {
            throw new IllegalArgumentException(("beginIndex=" + i10 + " < 0").toString());
        }
        if (iResolveDefaultParameter > c1062SegmentedByteString.size()) {
            throw new IllegalArgumentException(("endIndex=" + iResolveDefaultParameter + " > length(" + c1062SegmentedByteString.size() + ')').toString());
        }
        int i12 = iResolveDefaultParameter - i10;
        if (i12 < 0) {
            throw new IllegalArgumentException(("endIndex=" + iResolveDefaultParameter + " < beginIndex=" + i10).toString());
        }
        if (i10 == 0 && iResolveDefaultParameter == c1062SegmentedByteString.size()) {
            return c1062SegmentedByteString;
        }
        if (i10 == iResolveDefaultParameter) {
            return ByteString.EMPTY;
        }
        int iSegment = segment(c1062SegmentedByteString, i10);
        int iSegment2 = segment(c1062SegmentedByteString, iResolveDefaultParameter - 1);
        byte[][] bArr = (byte[][]) ArraysKt.r(c1062SegmentedByteString.getSegments(), iSegment, iSegment2 + 1);
        int[] iArr = new int[bArr.length * 2];
        if (iSegment <= iSegment2) {
            int i13 = iSegment;
            int i14 = 0;
            while (true) {
                iArr[i14] = Math.min(c1062SegmentedByteString.getDirectory()[i13] - i10, i12);
                int i15 = i14 + 1;
                iArr[i14 + bArr.length] = c1062SegmentedByteString.getDirectory()[c1062SegmentedByteString.getSegments().length + i13];
                if (i13 == iSegment2) {
                    break;
                }
                i13++;
                i14 = i15;
            }
        }
        int i16 = iSegment != 0 ? c1062SegmentedByteString.getDirectory()[iSegment - 1] : 0;
        int length = bArr.length;
        iArr[length] = iArr[length] + (i10 - i16);
        return new C1062SegmentedByteString(bArr, iArr);
    }

    public static final byte[] commonToByteArray(C1062SegmentedByteString c1062SegmentedByteString) {
        Intrinsics.h(c1062SegmentedByteString, "<this>");
        byte[] bArr = new byte[c1062SegmentedByteString.size()];
        int length = c1062SegmentedByteString.getSegments().length;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (i10 < length) {
            int i13 = c1062SegmentedByteString.getDirectory()[length + i10];
            int i14 = c1062SegmentedByteString.getDirectory()[i10];
            int i15 = i14 - i11;
            ArraysKt.h(c1062SegmentedByteString.getSegments()[i10], bArr, i12, i13, i13 + i15);
            i12 += i15;
            i10++;
            i11 = i14;
        }
        return bArr;
    }

    public static final void commonWrite(C1062SegmentedByteString c1062SegmentedByteString, Buffer buffer, int i10, int i11) {
        Intrinsics.h(c1062SegmentedByteString, "<this>");
        Intrinsics.h(buffer, "buffer");
        int i12 = i10 + i11;
        int iSegment = segment(c1062SegmentedByteString, i10);
        while (i10 < i12) {
            int i13 = iSegment == 0 ? 0 : c1062SegmentedByteString.getDirectory()[iSegment - 1];
            int i14 = c1062SegmentedByteString.getDirectory()[iSegment] - i13;
            int i15 = c1062SegmentedByteString.getDirectory()[c1062SegmentedByteString.getSegments().length + iSegment];
            int iMin = Math.min(i12, i14 + i13) - i10;
            int i16 = i15 + (i10 - i13);
            Segment segment = new Segment(c1062SegmentedByteString.getSegments()[iSegment], i16, i16 + iMin, true, false);
            Segment segment2 = buffer.head;
            if (segment2 == null) {
                segment.prev = segment;
                segment.next = segment;
                buffer.head = segment;
            } else {
                Intrinsics.e(segment2);
                Segment segment3 = segment2.prev;
                Intrinsics.e(segment3);
                segment3.push(segment);
            }
            i10 += iMin;
            iSegment++;
        }
        buffer.setSize$okio(buffer.size() + ((long) i11));
    }

    public static final void forEachSegment(C1062SegmentedByteString c1062SegmentedByteString, Function3<? super byte[], ? super Integer, ? super Integer, Unit> action) {
        Intrinsics.h(c1062SegmentedByteString, "<this>");
        Intrinsics.h(action, "action");
        int length = c1062SegmentedByteString.getSegments().length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            int i12 = c1062SegmentedByteString.getDirectory()[length + i10];
            int i13 = c1062SegmentedByteString.getDirectory()[i10];
            action.invoke(c1062SegmentedByteString.getSegments()[i10], Integer.valueOf(i12), Integer.valueOf(i13 - i11));
            i10++;
            i11 = i13;
        }
    }

    public static final int segment(C1062SegmentedByteString c1062SegmentedByteString, int i10) {
        Intrinsics.h(c1062SegmentedByteString, "<this>");
        int iBinarySearch = binarySearch(c1062SegmentedByteString.getDirectory(), i10 + 1, 0, c1062SegmentedByteString.getSegments().length);
        return iBinarySearch >= 0 ? iBinarySearch : ~iBinarySearch;
    }

    private static final void forEachSegment(C1062SegmentedByteString c1062SegmentedByteString, int i10, int i11, Function3<? super byte[], ? super Integer, ? super Integer, Unit> function3) {
        int iSegment = segment(c1062SegmentedByteString, i10);
        while (i10 < i11) {
            int i12 = iSegment == 0 ? 0 : c1062SegmentedByteString.getDirectory()[iSegment - 1];
            int i13 = c1062SegmentedByteString.getDirectory()[iSegment] - i12;
            int i14 = c1062SegmentedByteString.getDirectory()[c1062SegmentedByteString.getSegments().length + iSegment];
            int iMin = Math.min(i11, i13 + i12) - i10;
            function3.invoke(c1062SegmentedByteString.getSegments()[iSegment], Integer.valueOf(i14 + (i10 - i12)), Integer.valueOf(iMin));
            i10 += iMin;
            iSegment++;
        }
    }

    public static final boolean commonRangeEquals(C1062SegmentedByteString c1062SegmentedByteString, int i10, byte[] other, int i11, int i12) {
        Intrinsics.h(c1062SegmentedByteString, "<this>");
        Intrinsics.h(other, "other");
        if (i10 < 0 || i10 > c1062SegmentedByteString.size() - i12 || i11 < 0 || i11 > other.length - i12) {
            return false;
        }
        int i13 = i12 + i10;
        int iSegment = segment(c1062SegmentedByteString, i10);
        while (i10 < i13) {
            int i14 = iSegment == 0 ? 0 : c1062SegmentedByteString.getDirectory()[iSegment - 1];
            int i15 = c1062SegmentedByteString.getDirectory()[iSegment] - i14;
            int i16 = c1062SegmentedByteString.getDirectory()[c1062SegmentedByteString.getSegments().length + iSegment];
            int iMin = Math.min(i13, i15 + i14) - i10;
            if (!okio.SegmentedByteString.arrayRangeEquals(c1062SegmentedByteString.getSegments()[iSegment], i16 + (i10 - i14), other, i11, iMin)) {
                return false;
            }
            i11 += iMin;
            i10 += iMin;
            iSegment++;
        }
        return true;
    }
}
