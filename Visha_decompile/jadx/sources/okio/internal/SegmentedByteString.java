package okio.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.fi;
import defpackage.u74;
import defpackage.y45;
import kotlin.Metadata;
import okio.Buffer;
import okio.ByteString;
import okio.C3052SegmentedByteString;
import okio.Segment;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000L\n\u0002\u0010\u0015\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0005\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0002\b\u0004\u001a+\u0010\u0005\u001a\u00020\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001H\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u001b\u0010\t\u001a\u00020\u0001*\u00020\u00072\u0006\u0010\b\u001a\u00020\u0001H\u0000¢\u0006\u0004\b\t\u0010\n\u001a7\u0010\u000f\u001a\u00020\r*\u00020\u00072\u001e\u0010\u000e\u001a\u001a\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\r0\u000bH\u0080\bø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010\u001aD\u0010\u000f\u001a\u00020\r*\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u00012\u001e\u0010\u000e\u001a\u001a\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\r0\u000bH\u0082\b¢\u0006\u0004\b\u000f\u0010\u0013\u001a$\u0010\u0015\u001a\u00020\u0014*\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u0001H\u0080\b¢\u0006\u0004\b\u0015\u0010\u0016\u001a\u001c\u0010\u0018\u001a\u00020\u0017*\u00020\u00072\u0006\u0010\b\u001a\u00020\u0001H\u0080\b¢\u0006\u0004\b\u0018\u0010\u0019\u001a\u0014\u0010\u001a\u001a\u00020\u0001*\u00020\u0007H\u0080\b¢\u0006\u0004\b\u001a\u0010\u001b\u001a\u0014\u0010\u001c\u001a\u00020\f*\u00020\u0007H\u0080\b¢\u0006\u0004\b\u001c\u0010\u001d\u001a,\u0010\"\u001a\u00020\r*\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020\u00012\u0006\u0010!\u001a\u00020\u0001H\u0080\b¢\u0006\u0004\b\"\u0010#\u001a4\u0010'\u001a\u00020&*\u00020\u00072\u0006\u0010 \u001a\u00020\u00012\u0006\u0010$\u001a\u00020\u00142\u0006\u0010%\u001a\u00020\u00012\u0006\u0010!\u001a\u00020\u0001H\u0080\b¢\u0006\u0004\b'\u0010(\u001a4\u0010'\u001a\u00020&*\u00020\u00072\u0006\u0010 \u001a\u00020\u00012\u0006\u0010$\u001a\u00020\f2\u0006\u0010%\u001a\u00020\u00012\u0006\u0010!\u001a\u00020\u0001H\u0080\b¢\u0006\u0004\b'\u0010)\u001a4\u0010,\u001a\u00020\r*\u00020\u00072\u0006\u0010 \u001a\u00020\u00012\u0006\u0010*\u001a\u00020\f2\u0006\u0010+\u001a\u00020\u00012\u0006\u0010!\u001a\u00020\u0001H\u0080\b¢\u0006\u0004\b,\u0010-\u001a\u001e\u0010/\u001a\u00020&*\u00020\u00072\b\u0010$\u001a\u0004\u0018\u00010.H\u0080\b¢\u0006\u0004\b/\u00100\u001a\u0014\u00101\u001a\u00020\u0001*\u00020\u0007H\u0080\b¢\u0006\u0004\b1\u0010\u001b\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u00062"}, d2 = {"", "", ES6Iterator.VALUE_PROPERTY, "fromIndex", "toIndex", "binarySearch", "([IIII)I", "Lokio/SegmentedByteString;", "pos", "segment", "(Lokio/SegmentedByteString;I)I", "Lkotlin/Function3;", "", "Lzfb;", "action", "forEachSegment", "(Lokio/SegmentedByteString;Lu74;)V", "beginIndex", "endIndex", "(Lokio/SegmentedByteString;IILu74;)V", "Lokio/ByteString;", "commonSubstring", "(Lokio/SegmentedByteString;II)Lokio/ByteString;", "", "commonInternalGet", "(Lokio/SegmentedByteString;I)B", "commonGetSize", "(Lokio/SegmentedByteString;)I", "commonToByteArray", "(Lokio/SegmentedByteString;)[B", "Lokio/Buffer;", "buffer", TypedValues.CycleType.S_WAVE_OFFSET, "byteCount", "commonWrite", "(Lokio/SegmentedByteString;Lokio/Buffer;II)V", "other", "otherOffset", "", "commonRangeEquals", "(Lokio/SegmentedByteString;ILokio/ByteString;II)Z", "(Lokio/SegmentedByteString;I[BII)Z", TypedValues.AttributesType.S_TARGET, "targetOffset", "commonCopyInto", "(Lokio/SegmentedByteString;I[BII)V", "", "commonEquals", "(Lokio/SegmentedByteString;Ljava/lang/Object;)Z", "commonHashCode", "okio"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class SegmentedByteString {
    public static final int binarySearch(int[] iArr, int i, int i2, int i3) {
        y45.j(iArr, "<this>");
        int i4 = i3 - 1;
        while (i2 <= i4) {
            int i5 = (i2 + i4) >>> 1;
            int i6 = iArr[i5];
            if (i6 < i) {
                i2 = i5 + 1;
            } else {
                if (i6 <= i) {
                    return i5;
                }
                i4 = i5 - 1;
            }
        }
        return (-i2) - 1;
    }

    public static final void commonCopyInto(C3052SegmentedByteString c3052SegmentedByteString, int i, byte[] bArr, int i2, int i3) {
        y45.j(c3052SegmentedByteString, "<this>");
        y45.j(bArr, TypedValues.AttributesType.S_TARGET);
        long j = i3;
        okio.SegmentedByteString.checkOffsetAndCount(c3052SegmentedByteString.size(), i, j);
        okio.SegmentedByteString.checkOffsetAndCount(bArr.length, i2, j);
        int i4 = i3 + i;
        int iSegment = segment(c3052SegmentedByteString, i);
        while (i < i4) {
            int i5 = iSegment == 0 ? 0 : c3052SegmentedByteString.getDirectory()[iSegment - 1];
            int i6 = c3052SegmentedByteString.getDirectory()[iSegment] - i5;
            int i7 = c3052SegmentedByteString.getDirectory()[c3052SegmentedByteString.getSegments().length + iSegment];
            int iMin = Math.min(i4, i6 + i5) - i;
            int i8 = i7 + (i - i5);
            fi.g(c3052SegmentedByteString.getSegments()[iSegment], bArr, i2, i8, i8 + iMin);
            i2 += iMin;
            i += iMin;
            iSegment++;
        }
    }

    public static final boolean commonEquals(C3052SegmentedByteString c3052SegmentedByteString, Object obj) {
        y45.j(c3052SegmentedByteString, "<this>");
        if (obj == c3052SegmentedByteString) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            if (byteString.size() == c3052SegmentedByteString.size() && c3052SegmentedByteString.rangeEquals(0, byteString, 0, c3052SegmentedByteString.size())) {
                return true;
            }
        }
        return false;
    }

    public static final int commonGetSize(C3052SegmentedByteString c3052SegmentedByteString) {
        y45.j(c3052SegmentedByteString, "<this>");
        return c3052SegmentedByteString.getDirectory()[c3052SegmentedByteString.getSegments().length - 1];
    }

    public static final int commonHashCode(C3052SegmentedByteString c3052SegmentedByteString) {
        y45.j(c3052SegmentedByteString, "<this>");
        int hashCode = c3052SegmentedByteString.getHashCode();
        if (hashCode != 0) {
            return hashCode;
        }
        int length = c3052SegmentedByteString.getSegments().length;
        int i = 0;
        int i2 = 1;
        int i3 = 0;
        while (i < length) {
            int i4 = c3052SegmentedByteString.getDirectory()[length + i];
            int i5 = c3052SegmentedByteString.getDirectory()[i];
            byte[] bArr = c3052SegmentedByteString.getSegments()[i];
            int i6 = (i5 - i3) + i4;
            while (i4 < i6) {
                i2 = (i2 * 31) + bArr[i4];
                i4++;
            }
            i++;
            i3 = i5;
        }
        c3052SegmentedByteString.setHashCode$okio(i2);
        return i2;
    }

    public static final byte commonInternalGet(C3052SegmentedByteString c3052SegmentedByteString, int i) {
        y45.j(c3052SegmentedByteString, "<this>");
        okio.SegmentedByteString.checkOffsetAndCount(c3052SegmentedByteString.getDirectory()[c3052SegmentedByteString.getSegments().length - 1], i, 1L);
        int iSegment = segment(c3052SegmentedByteString, i);
        return c3052SegmentedByteString.getSegments()[iSegment][(i - (iSegment == 0 ? 0 : c3052SegmentedByteString.getDirectory()[iSegment - 1])) + c3052SegmentedByteString.getDirectory()[c3052SegmentedByteString.getSegments().length + iSegment]];
    }

    public static final boolean commonRangeEquals(C3052SegmentedByteString c3052SegmentedByteString, int i, ByteString byteString, int i2, int i3) {
        y45.j(c3052SegmentedByteString, "<this>");
        y45.j(byteString, "other");
        if (i < 0 || i > c3052SegmentedByteString.size() - i3) {
            return false;
        }
        int i4 = i3 + i;
        int iSegment = segment(c3052SegmentedByteString, i);
        while (i < i4) {
            int i5 = iSegment == 0 ? 0 : c3052SegmentedByteString.getDirectory()[iSegment - 1];
            int i6 = c3052SegmentedByteString.getDirectory()[iSegment] - i5;
            int i7 = c3052SegmentedByteString.getDirectory()[c3052SegmentedByteString.getSegments().length + iSegment];
            int iMin = Math.min(i4, i6 + i5) - i;
            if (!byteString.rangeEquals(i2, c3052SegmentedByteString.getSegments()[iSegment], i7 + (i - i5), iMin)) {
                return false;
            }
            i2 += iMin;
            i += iMin;
            iSegment++;
        }
        return true;
    }

    public static final ByteString commonSubstring(C3052SegmentedByteString c3052SegmentedByteString, int i, int i2) {
        y45.j(c3052SegmentedByteString, "<this>");
        int iResolveDefaultParameter = okio.SegmentedByteString.resolveDefaultParameter(c3052SegmentedByteString, i2);
        if (i < 0) {
            throw new IllegalArgumentException(("beginIndex=" + i + " < 0").toString());
        }
        if (iResolveDefaultParameter > c3052SegmentedByteString.size()) {
            throw new IllegalArgumentException(("endIndex=" + iResolveDefaultParameter + " > length(" + c3052SegmentedByteString.size() + ')').toString());
        }
        int i3 = iResolveDefaultParameter - i;
        if (i3 < 0) {
            throw new IllegalArgumentException(("endIndex=" + iResolveDefaultParameter + " < beginIndex=" + i).toString());
        }
        if (i == 0 && iResolveDefaultParameter == c3052SegmentedByteString.size()) {
            return c3052SegmentedByteString;
        }
        if (i == iResolveDefaultParameter) {
            return ByteString.EMPTY;
        }
        int iSegment = segment(c3052SegmentedByteString, i);
        int iSegment2 = segment(c3052SegmentedByteString, iResolveDefaultParameter - 1);
        byte[][] bArr = (byte[][]) fi.s(c3052SegmentedByteString.getSegments(), iSegment, iSegment2 + 1);
        int[] iArr = new int[bArr.length * 2];
        if (iSegment <= iSegment2) {
            int i4 = iSegment;
            int i5 = 0;
            while (true) {
                iArr[i5] = Math.min(c3052SegmentedByteString.getDirectory()[i4] - i, i3);
                int i6 = i5 + 1;
                iArr[i5 + bArr.length] = c3052SegmentedByteString.getDirectory()[c3052SegmentedByteString.getSegments().length + i4];
                if (i4 == iSegment2) {
                    break;
                }
                i4++;
                i5 = i6;
            }
        }
        int i7 = iSegment != 0 ? c3052SegmentedByteString.getDirectory()[iSegment - 1] : 0;
        int length = bArr.length;
        iArr[length] = iArr[length] + (i - i7);
        return new C3052SegmentedByteString(bArr, iArr);
    }

    public static final byte[] commonToByteArray(C3052SegmentedByteString c3052SegmentedByteString) {
        y45.j(c3052SegmentedByteString, "<this>");
        byte[] bArr = new byte[c3052SegmentedByteString.size()];
        int length = c3052SegmentedByteString.getSegments().length;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i < length) {
            int i4 = c3052SegmentedByteString.getDirectory()[length + i];
            int i5 = c3052SegmentedByteString.getDirectory()[i];
            int i6 = i5 - i2;
            fi.g(c3052SegmentedByteString.getSegments()[i], bArr, i3, i4, i4 + i6);
            i3 += i6;
            i++;
            i2 = i5;
        }
        return bArr;
    }

    public static final void commonWrite(C3052SegmentedByteString c3052SegmentedByteString, Buffer buffer, int i, int i2) {
        y45.j(c3052SegmentedByteString, "<this>");
        y45.j(buffer, "buffer");
        int i3 = i + i2;
        int iSegment = segment(c3052SegmentedByteString, i);
        while (i < i3) {
            int i4 = iSegment == 0 ? 0 : c3052SegmentedByteString.getDirectory()[iSegment - 1];
            int i5 = c3052SegmentedByteString.getDirectory()[iSegment] - i4;
            int i6 = c3052SegmentedByteString.getDirectory()[c3052SegmentedByteString.getSegments().length + iSegment];
            int iMin = Math.min(i3, i5 + i4) - i;
            int i7 = i6 + (i - i4);
            Segment segment = new Segment(c3052SegmentedByteString.getSegments()[iSegment], i7, i7 + iMin, true, false);
            Segment segment2 = buffer.head;
            if (segment2 == null) {
                segment.prev = segment;
                segment.next = segment;
                buffer.head = segment;
            } else {
                y45.g(segment2);
                Segment segment3 = segment2.prev;
                y45.g(segment3);
                segment3.push(segment);
            }
            i += iMin;
            iSegment++;
        }
        buffer.setSize$okio(buffer.size() + ((long) i2));
    }

    public static final void forEachSegment(C3052SegmentedByteString c3052SegmentedByteString, u74 u74Var) {
        y45.j(c3052SegmentedByteString, "<this>");
        y45.j(u74Var, "action");
        int length = c3052SegmentedByteString.getSegments().length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3 = c3052SegmentedByteString.getDirectory()[length + i];
            int i4 = c3052SegmentedByteString.getDirectory()[i];
            u74Var.invoke(c3052SegmentedByteString.getSegments()[i], Integer.valueOf(i3), Integer.valueOf(i4 - i2));
            i++;
            i2 = i4;
        }
    }

    public static final int segment(C3052SegmentedByteString c3052SegmentedByteString, int i) {
        y45.j(c3052SegmentedByteString, "<this>");
        int iBinarySearch = binarySearch(c3052SegmentedByteString.getDirectory(), i + 1, 0, c3052SegmentedByteString.getSegments().length);
        return iBinarySearch >= 0 ? iBinarySearch : ~iBinarySearch;
    }

    private static final void forEachSegment(C3052SegmentedByteString c3052SegmentedByteString, int i, int i2, u74 u74Var) {
        int iSegment = segment(c3052SegmentedByteString, i);
        while (i < i2) {
            int i3 = iSegment == 0 ? 0 : c3052SegmentedByteString.getDirectory()[iSegment - 1];
            int i4 = c3052SegmentedByteString.getDirectory()[iSegment] - i3;
            int i5 = c3052SegmentedByteString.getDirectory()[c3052SegmentedByteString.getSegments().length + iSegment];
            int iMin = Math.min(i2, i4 + i3) - i;
            u74Var.invoke(c3052SegmentedByteString.getSegments()[iSegment], Integer.valueOf(i5 + (i - i3)), Integer.valueOf(iMin));
            i += iMin;
            iSegment++;
        }
    }

    public static final boolean commonRangeEquals(C3052SegmentedByteString c3052SegmentedByteString, int i, byte[] bArr, int i2, int i3) {
        y45.j(c3052SegmentedByteString, "<this>");
        y45.j(bArr, "other");
        if (i < 0 || i > c3052SegmentedByteString.size() - i3 || i2 < 0 || i2 > bArr.length - i3) {
            return false;
        }
        int i4 = i3 + i;
        int iSegment = segment(c3052SegmentedByteString, i);
        while (i < i4) {
            int i5 = iSegment == 0 ? 0 : c3052SegmentedByteString.getDirectory()[iSegment - 1];
            int i6 = c3052SegmentedByteString.getDirectory()[iSegment] - i5;
            int i7 = c3052SegmentedByteString.getDirectory()[c3052SegmentedByteString.getSegments().length + iSegment];
            int iMin = Math.min(i4, i6 + i5) - i;
            if (!okio.SegmentedByteString.arrayRangeEquals(c3052SegmentedByteString.getSegments()[iSegment], i7 + (i - i5), bArr, i2, iMin)) {
                return false;
            }
            i2 += iMin;
            i += iMin;
            iSegment++;
        }
        return true;
    }
}
