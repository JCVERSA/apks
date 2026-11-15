package androidx.media3.muxer;

import androidx.core.view.InputDeviceCompat;
import androidx.media3.common.util.Assertions;
import com.google.common.collect.ImmutableList;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

final class AnnexBUtils {
    private static final int THREE_BYTE_NAL_START_CODE_SIZE = 3;

    private AnnexBUtils() {
    }

    public static boolean doesSampleContainAnnexBNalUnits(String str) {
        return str.equals("video/avc") || str.equals("video/hevc");
    }

    private static int findNalEndIndex(ByteBuffer byteBuffer, int i) {
        while (i <= byteBuffer.limit() - 4) {
            int i2 = byteBuffer.getInt(i);
            int i3 = i2 & InputDeviceCompat.SOURCE_ANY;
            if (i3 == 0 || i3 == 256) {
                return i;
            }
            int i4 = 16777215 & i2;
            if (i4 == 0 || i4 == 1) {
                return i + 1;
            }
            if ((65535 & i2) == 0) {
                i += 2;
            } else {
                i = (i2 & 255) == 0 ? i + 3 : i + 4;
            }
        }
        if (i == byteBuffer.limit() - 3) {
            short s = byteBuffer.getShort(i);
            byte b = byteBuffer.get(i + 2);
            if (s == 0 && (b == 0 || b == 1)) {
                return i;
            }
        }
        return byteBuffer.limit();
    }

    public static ImmutableList<ByteBuffer> findNalUnits(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() == 0) {
            return ImmutableList.of();
        }
        ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        byteBufferAsReadOnlyBuffer.order(ByteOrder.BIG_ENDIAN);
        int iSkipLeadingZerosAndFindNalStartCodeIndex = skipLeadingZerosAndFindNalStartCodeIndex(byteBufferAsReadOnlyBuffer, byteBufferAsReadOnlyBuffer.position()) + 3;
        ImmutableList.a aVar = new ImmutableList.a();
        int i = iSkipLeadingZerosAndFindNalStartCodeIndex;
        boolean z = true;
        while (iSkipLeadingZerosAndFindNalStartCodeIndex < byteBufferAsReadOnlyBuffer.limit()) {
            if (!z) {
                int iSkipLeadingZerosAndFindNalStartCodeIndex2 = skipLeadingZerosAndFindNalStartCodeIndex(byteBufferAsReadOnlyBuffer, iSkipLeadingZerosAndFindNalStartCodeIndex);
                if (iSkipLeadingZerosAndFindNalStartCodeIndex2 == byteBufferAsReadOnlyBuffer.limit()) {
                    break;
                }
                i = iSkipLeadingZerosAndFindNalStartCodeIndex2 + 3;
                z = true;
                iSkipLeadingZerosAndFindNalStartCodeIndex = i;
            } else {
                iSkipLeadingZerosAndFindNalStartCodeIndex = findNalEndIndex(byteBufferAsReadOnlyBuffer, iSkipLeadingZerosAndFindNalStartCodeIndex);
                aVar.a(getBytes(byteBufferAsReadOnlyBuffer, i, iSkipLeadingZerosAndFindNalStartCodeIndex - i));
                z = false;
            }
        }
        return aVar.e();
    }

    private static ByteBuffer getBytes(ByteBuffer byteBuffer, int i, int i2) {
        ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
        byteBufferDuplicate.position(i);
        byteBufferDuplicate.limit(i + i2);
        return byteBufferDuplicate.slice();
    }

    private static int skipLeadingZerosAndFindNalStartCodeIndex(ByteBuffer byteBuffer, int i) {
        while (true) {
            boolean z = false;
            if (i > byteBuffer.limit() - 4) {
                if (i <= byteBuffer.limit() - 3) {
                    Assertions.checkState(byteBuffer.getShort(i) == 0, "Invalid NAL units");
                    byte b = byteBuffer.get(i + 2);
                    if (b == 1) {
                        return i;
                    }
                    Assertions.checkState(b == 0, "Invalid NAL units");
                } else {
                    while (i < byteBuffer.limit()) {
                        Assertions.checkState(byteBuffer.get(i) == 0, "Invalid NAL units");
                        i++;
                    }
                }
                return byteBuffer.limit();
            }
            int i2 = byteBuffer.getInt(i);
            int i3 = i2 & InputDeviceCompat.SOURCE_ANY;
            if (i3 == 256) {
                return i;
            }
            Assertions.checkState(i3 == 0, "Invalid Nal units");
            int i4 = i2 & 255;
            if (i4 == 1) {
                return i + 1;
            }
            if (i4 == 0) {
                z = true;
            }
            Assertions.checkState(z, "Invalid Nal units");
            i++;
        }
    }

    public static ByteBuffer stripEmulationPrevention(ByteBuffer byteBuffer) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(byteBuffer.limit());
        int i = 0;
        for (int i2 = 0; i2 < byteBuffer.limit(); i2++) {
            if (byteBuffer.get(i2) != 3 || i < 2) {
                byteBufferAllocate.put(byteBuffer.get(i2));
            }
            i = byteBuffer.get(i2) == 0 ? i + 1 : 0;
        }
        byteBufferAllocate.flip();
        return byteBufferAllocate;
    }
}
