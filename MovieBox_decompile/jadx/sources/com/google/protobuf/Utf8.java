package com.google.protobuf;

import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Arrays;

final class Utf8 {
    private static final long ASCII_MASK_LONG = -9187201950435737472L;
    static final int COMPLETE = 0;
    static final int MALFORMED = -1;
    static final int MAX_BYTES_PER_CHAR = 3;
    private static final int UNSAFE_COUNT_ASCII_THRESHOLD = 16;
    private static final b processor;

    static class UnpairedSurrogateException extends IllegalArgumentException {
        UnpairedSurrogateException(int i10, int i11) {
            super("Unpaired surrogate at index " + i10 + " of " + i11);
        }
    }

    private static class a {
        private a() {
        }

        public static void handleFourBytes(byte b10, byte b11, byte b12, byte b13, char[] cArr, int i10) throws InvalidProtocolBufferException {
            if (isNotTrailingByte(b11) || (((b10 << 28) + (b11 + 112)) >> 30) != 0 || isNotTrailingByte(b12) || isNotTrailingByte(b13)) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            int iTrailingByteValue = ((b10 & 7) << 18) | (trailingByteValue(b11) << 12) | (trailingByteValue(b12) << 6) | trailingByteValue(b13);
            cArr[i10] = highSurrogate(iTrailingByteValue);
            cArr[i10 + 1] = lowSurrogate(iTrailingByteValue);
        }

        public static void handleOneByte(byte b10, char[] cArr, int i10) {
            cArr[i10] = (char) b10;
        }

        public static void handleThreeBytes(byte b10, byte b11, byte b12, char[] cArr, int i10) throws InvalidProtocolBufferException {
            if (isNotTrailingByte(b11) || ((b10 == -32 && b11 < -96) || ((b10 == -19 && b11 >= -96) || isNotTrailingByte(b12)))) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            cArr[i10] = (char) (((b10 & 15) << 12) | (trailingByteValue(b11) << 6) | trailingByteValue(b12));
        }

        public static void handleTwoBytes(byte b10, byte b11, char[] cArr, int i10) throws InvalidProtocolBufferException {
            if (b10 < -62 || isNotTrailingByte(b11)) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            cArr[i10] = (char) (((b10 & 31) << 6) | trailingByteValue(b11));
        }

        private static char highSurrogate(int i10) {
            return (char) ((i10 >>> 10) + okio.Utf8.HIGH_SURROGATE_HEADER);
        }

        private static boolean isNotTrailingByte(byte b10) {
            return b10 > -65;
        }

        public static boolean isOneByte(byte b10) {
            return b10 >= 0;
        }

        public static boolean isThreeBytes(byte b10) {
            return b10 < -16;
        }

        public static boolean isTwoBytes(byte b10) {
            return b10 < -32;
        }

        private static char lowSurrogate(int i10) {
            return (char) ((i10 & 1023) + okio.Utf8.LOG_SURROGATE_HEADER);
        }

        private static int trailingByteValue(byte b10) {
            return b10 & okio.Utf8.REPLACEMENT_BYTE;
        }
    }

    static abstract class b {
        b() {
        }

        final String decodeUtf8(ByteBuffer byteBuffer, int i10, int i11) throws InvalidProtocolBufferException {
            if (byteBuffer.hasArray()) {
                return decodeUtf8(byteBuffer.array(), byteBuffer.arrayOffset() + i10, i11);
            }
            return byteBuffer.isDirect() ? decodeUtf8Direct(byteBuffer, i10, i11) : decodeUtf8Default(byteBuffer, i10, i11);
        }

        abstract String decodeUtf8(byte[] bArr, int i10, int i11) throws InvalidProtocolBufferException;

        final String decodeUtf8Default(ByteBuffer byteBuffer, int i10, int i11) throws InvalidProtocolBufferException {
            if ((i10 | i11 | ((byteBuffer.limit() - i10) - i11)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i10), Integer.valueOf(i11)));
            }
            int i12 = i10 + i11;
            char[] cArr = new char[i11];
            int i13 = 0;
            while (i10 < i12) {
                byte b10 = byteBuffer.get(i10);
                if (!a.isOneByte(b10)) {
                    break;
                }
                i10++;
                a.handleOneByte(b10, cArr, i13);
                i13++;
            }
            int i14 = i13;
            while (i10 < i12) {
                int i15 = i10 + 1;
                byte b11 = byteBuffer.get(i10);
                if (a.isOneByte(b11)) {
                    int i16 = i14 + 1;
                    a.handleOneByte(b11, cArr, i14);
                    while (i15 < i12) {
                        byte b12 = byteBuffer.get(i15);
                        if (!a.isOneByte(b12)) {
                            break;
                        }
                        i15++;
                        a.handleOneByte(b12, cArr, i16);
                        i16++;
                    }
                    i14 = i16;
                    i10 = i15;
                } else if (a.isTwoBytes(b11)) {
                    if (i15 >= i12) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    i10 += 2;
                    a.handleTwoBytes(b11, byteBuffer.get(i15), cArr, i14);
                    i14++;
                } else if (a.isThreeBytes(b11)) {
                    if (i15 >= i12 - 1) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    int i17 = i10 + 2;
                    i10 += 3;
                    a.handleThreeBytes(b11, byteBuffer.get(i15), byteBuffer.get(i17), cArr, i14);
                    i14++;
                } else {
                    if (i15 >= i12 - 2) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    byte b13 = byteBuffer.get(i15);
                    int i18 = i10 + 3;
                    byte b14 = byteBuffer.get(i10 + 2);
                    i10 += 4;
                    a.handleFourBytes(b11, b13, b14, byteBuffer.get(i18), cArr, i14);
                    i14 += 2;
                }
            }
            return new String(cArr, 0, i14);
        }

        abstract String decodeUtf8Direct(ByteBuffer byteBuffer, int i10, int i11) throws InvalidProtocolBufferException;

        abstract int encodeUtf8(CharSequence charSequence, byte[] bArr, int i10, int i11);

        final void encodeUtf8(CharSequence charSequence, ByteBuffer byteBuffer) {
            if (byteBuffer.hasArray()) {
                int iArrayOffset = byteBuffer.arrayOffset();
                e0.position(byteBuffer, Utf8.encode(charSequence, byteBuffer.array(), byteBuffer.position() + iArrayOffset, byteBuffer.remaining()) - iArrayOffset);
            } else if (byteBuffer.isDirect()) {
                encodeUtf8Direct(charSequence, byteBuffer);
            } else {
                encodeUtf8Default(charSequence, byteBuffer);
            }
        }

        final void encodeUtf8Default(CharSequence charSequence, ByteBuffer byteBuffer) {
            int length = charSequence.length();
            int iPosition = byteBuffer.position();
            int i10 = 0;
            while (i10 < length) {
                try {
                    char cCharAt = charSequence.charAt(i10);
                    if (cCharAt >= 128) {
                        break;
                    }
                    byteBuffer.put(iPosition + i10, (byte) cCharAt);
                    i10++;
                } catch (IndexOutOfBoundsException unused) {
                }
            }
            if (i10 == length) {
                e0.position(byteBuffer, iPosition + i10);
                return;
            }
            iPosition += i10;
            while (i10 < length) {
                char cCharAt2 = charSequence.charAt(i10);
                if (cCharAt2 < 128) {
                    byteBuffer.put(iPosition, (byte) cCharAt2);
                } else if (cCharAt2 < 2048) {
                    int i11 = iPosition + 1;
                    try {
                        byteBuffer.put(iPosition, (byte) ((cCharAt2 >>> 6) | PsExtractor.AUDIO_STREAM));
                        byteBuffer.put(i11, (byte) ((cCharAt2 & '?') | 128));
                        iPosition = i11;
                    } catch (IndexOutOfBoundsException unused2) {
                        iPosition = i11;
                    }
                } else {
                    if (cCharAt2 >= 55296 && 57343 >= cCharAt2) {
                        int i12 = i10 + 1;
                        if (i12 != length) {
                            try {
                                char cCharAt3 = charSequence.charAt(i12);
                                if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                                    int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                                    int i13 = iPosition + 1;
                                    try {
                                        byteBuffer.put(iPosition, (byte) ((codePoint >>> 18) | 240));
                                        int i14 = iPosition + 2;
                                        try {
                                            byteBuffer.put(i13, (byte) (((codePoint >>> 12) & 63) | 128));
                                            iPosition += 3;
                                            byteBuffer.put(i14, (byte) (((codePoint >>> 6) & 63) | 128));
                                            byteBuffer.put(iPosition, (byte) ((codePoint & 63) | 128));
                                            i10 = i12;
                                        } catch (IndexOutOfBoundsException unused3) {
                                            i10 = i12;
                                            iPosition = i14;
                                        }
                                    } catch (IndexOutOfBoundsException unused4) {
                                        iPosition = i13;
                                        i10 = i12;
                                    }
                                } else {
                                    i10 = i12;
                                }
                            } catch (IndexOutOfBoundsException unused5) {
                            }
                            i10 = i12;
                            throw new ArrayIndexOutOfBoundsException("Failed writing " + charSequence.charAt(i10) + " at index " + (byteBuffer.position() + Math.max(i10, (iPosition - byteBuffer.position()) + 1)));
                        }
                        throw new UnpairedSurrogateException(i10, length);
                    }
                    int i15 = iPosition + 1;
                    byteBuffer.put(iPosition, (byte) ((cCharAt2 >>> '\f') | 224));
                    iPosition += 2;
                    byteBuffer.put(i15, (byte) (((cCharAt2 >>> 6) & 63) | 128));
                    byteBuffer.put(iPosition, (byte) ((cCharAt2 & '?') | 128));
                }
                i10++;
                iPosition++;
            }
            e0.position(byteBuffer, iPosition);
        }

        abstract void encodeUtf8Direct(CharSequence charSequence, ByteBuffer byteBuffer);

        final boolean isValidUtf8(byte[] bArr, int i10, int i11) {
            return partialIsValidUtf8(0, bArr, i10, i11) == 0;
        }

        final int partialIsValidUtf8(int i10, ByteBuffer byteBuffer, int i11, int i12) {
            if (!byteBuffer.hasArray()) {
                return byteBuffer.isDirect() ? partialIsValidUtf8Direct(i10, byteBuffer, i11, i12) : partialIsValidUtf8Default(i10, byteBuffer, i11, i12);
            }
            int iArrayOffset = byteBuffer.arrayOffset();
            return partialIsValidUtf8(i10, byteBuffer.array(), i11 + iArrayOffset, iArrayOffset + i12);
        }

        abstract int partialIsValidUtf8(int i10, byte[] bArr, int i11, int i12);

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0017, code lost:
        
            if (r8.get(r9) > (-65)) goto L13;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x004c, code lost:
        
            if (r8.get(r9) > (-65)) goto L32;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x008f, code lost:
        
            if (r8.get(r7) > (-65)) goto L53;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        final int partialIsValidUtf8Default(int i10, ByteBuffer byteBuffer, int i11, int i12) {
            byte b10;
            int i13;
            int i14;
            if (i10 != 0) {
                if (i11 >= i12) {
                    return i10;
                }
                byte b11 = (byte) i10;
                if (b11 < -32) {
                    if (b11 >= -62) {
                        i14 = i11 + 1;
                    }
                    return -1;
                }
                if (b11 < -16) {
                    byte b12 = (byte) (~(i10 >> 8));
                    if (b12 == 0) {
                        int i15 = i11 + 1;
                        byte b13 = byteBuffer.get(i11);
                        if (i15 >= i12) {
                            return Utf8.incompleteStateFor(b11, b13);
                        }
                        i11 = i15;
                        b12 = b13;
                    }
                    if (b12 <= -65 && ((b11 != -32 || b12 >= -96) && (b11 != -19 || b12 < -96))) {
                        i14 = i11 + 1;
                    }
                    return -1;
                }
                byte b14 = (byte) (~(i10 >> 8));
                if (b14 == 0) {
                    i13 = i11 + 1;
                    b14 = byteBuffer.get(i11);
                    if (i13 >= i12) {
                        return Utf8.incompleteStateFor(b11, b14);
                    }
                    b10 = 0;
                } else {
                    b10 = (byte) (i10 >> 16);
                    i13 = i11;
                }
                if (b10 == 0) {
                    int i16 = i13 + 1;
                    byte b15 = byteBuffer.get(i13);
                    if (i16 >= i12) {
                        return Utf8.incompleteStateFor(b11, b14, b15);
                    }
                    b10 = b15;
                    i13 = i16;
                }
                if (b14 <= -65 && (((b11 << 28) + (b14 + 112)) >> 30) == 0 && b10 <= -65) {
                    i11 = i13 + 1;
                }
                return -1;
                i11 = i14;
            }
            return partialIsValidUtf8(byteBuffer, i11, i12);
        }

        abstract int partialIsValidUtf8Direct(int i10, ByteBuffer byteBuffer, int i11, int i12);

        final boolean isValidUtf8(ByteBuffer byteBuffer, int i10, int i11) {
            return partialIsValidUtf8(0, byteBuffer, i10, i11) == 0;
        }

        private static int partialIsValidUtf8(ByteBuffer byteBuffer, int i10, int i11) {
            int iEstimateConsecutiveAscii = i10 + Utf8.estimateConsecutiveAscii(byteBuffer, i10, i11);
            while (iEstimateConsecutiveAscii < i11) {
                int i12 = iEstimateConsecutiveAscii + 1;
                byte b10 = byteBuffer.get(iEstimateConsecutiveAscii);
                if (b10 >= 0) {
                    iEstimateConsecutiveAscii = i12;
                } else if (b10 < -32) {
                    if (i12 >= i11) {
                        return b10;
                    }
                    if (b10 < -62 || byteBuffer.get(i12) > -65) {
                        return -1;
                    }
                    iEstimateConsecutiveAscii += 2;
                } else {
                    if (b10 >= -16) {
                        if (i12 >= i11 - 2) {
                            return Utf8.incompleteStateFor(byteBuffer, b10, i12, i11 - i12);
                        }
                        int i13 = iEstimateConsecutiveAscii + 2;
                        byte b11 = byteBuffer.get(i12);
                        if (b11 <= -65 && (((b10 << 28) + (b11 + 112)) >> 30) == 0) {
                            int i14 = iEstimateConsecutiveAscii + 3;
                            if (byteBuffer.get(i13) <= -65) {
                                iEstimateConsecutiveAscii += 4;
                                if (byteBuffer.get(i14) > -65) {
                                }
                            }
                        }
                        return -1;
                    }
                    if (i12 >= i11 - 1) {
                        return Utf8.incompleteStateFor(byteBuffer, b10, i12, i11 - i12);
                    }
                    int i15 = iEstimateConsecutiveAscii + 2;
                    byte b12 = byteBuffer.get(i12);
                    if (b12 > -65 || ((b10 == -32 && b12 < -96) || ((b10 == -19 && b12 >= -96) || byteBuffer.get(i15) > -65))) {
                        return -1;
                    }
                    iEstimateConsecutiveAscii += 3;
                }
            }
            return 0;
        }
    }

    static {
        processor = (!d.isAvailable() || com.google.protobuf.d.isOnAndroidDevice()) ? new c() : new d();
    }

    private Utf8() {
    }

    static String decodeUtf8(ByteBuffer byteBuffer, int i10, int i11) throws InvalidProtocolBufferException {
        return processor.decodeUtf8(byteBuffer, i10, i11);
    }

    static int encode(CharSequence charSequence, byte[] bArr, int i10, int i11) {
        return processor.encodeUtf8(charSequence, bArr, i10, i11);
    }

    static void encodeUtf8(CharSequence charSequence, ByteBuffer byteBuffer) {
        processor.encodeUtf8(charSequence, byteBuffer);
    }

    static int encodedLength(CharSequence charSequence) {
        int length = charSequence.length();
        int i10 = 0;
        while (i10 < length && charSequence.charAt(i10) < 128) {
            i10++;
        }
        int iEncodedLengthGeneral = length;
        while (i10 < length) {
            char cCharAt = charSequence.charAt(i10);
            if (cCharAt >= 2048) {
                iEncodedLengthGeneral += encodedLengthGeneral(charSequence, i10);
                break;
            }
            iEncodedLengthGeneral += (127 - cCharAt) >>> 31;
            i10++;
        }
        if (iEncodedLengthGeneral >= length) {
            return iEncodedLengthGeneral;
        }
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (((long) iEncodedLengthGeneral) + TmcConstants.TEMP_FILE_RUNTIME_MAX_SIZE));
    }

    private static int encodedLengthGeneral(CharSequence charSequence, int i10) {
        int length = charSequence.length();
        int i11 = 0;
        while (i10 < length) {
            char cCharAt = charSequence.charAt(i10);
            if (cCharAt < 2048) {
                i11 += (127 - cCharAt) >>> 31;
            } else {
                i11 += 2;
                if (55296 <= cCharAt && cCharAt <= 57343) {
                    if (Character.codePointAt(charSequence, i10) < 65536) {
                        throw new UnpairedSurrogateException(i10, length);
                    }
                    i10++;
                }
            }
            i10++;
        }
        return i11;
    }

    public static int estimateConsecutiveAscii(ByteBuffer byteBuffer, int i10, int i11) {
        int i12 = i11 - 7;
        int i13 = i10;
        while (i13 < i12 && (byteBuffer.getLong(i13) & ASCII_MASK_LONG) == 0) {
            i13 += 8;
        }
        return i13 - i10;
    }

    public static int incompleteStateFor(int i10) {
        if (i10 > -12) {
            return -1;
        }
        return i10;
    }

    static boolean isValidUtf8(byte[] bArr) {
        return processor.isValidUtf8(bArr, 0, bArr.length);
    }

    static int partialIsValidUtf8(int i10, byte[] bArr, int i11, int i12) {
        return processor.partialIsValidUtf8(i10, bArr, i11, i12);
    }

    static String decodeUtf8(byte[] bArr, int i10, int i11) throws InvalidProtocolBufferException {
        return processor.decodeUtf8(bArr, i10, i11);
    }

    public static int incompleteStateFor(int i10, int i11) {
        if (i10 > -12 || i11 > -65) {
            return -1;
        }
        return i10 ^ (i11 << 8);
    }

    static boolean isValidUtf8(byte[] bArr, int i10, int i11) {
        return processor.isValidUtf8(bArr, i10, i11);
    }

    static int partialIsValidUtf8(int i10, ByteBuffer byteBuffer, int i11, int i12) {
        return processor.partialIsValidUtf8(i10, byteBuffer, i11, i12);
    }

    static final class d extends b {
        d() {
        }

        static boolean isAvailable() {
            return s1.hasUnsafeArrayOperations() && s1.hasUnsafeByteBufferOperations();
        }

        private static int unsafeEstimateConsecutiveAscii(byte[] bArr, long j10, int i10) {
            int i11 = 0;
            if (i10 < 16) {
                return 0;
            }
            int i12 = 8 - (((int) j10) & 7);
            while (i11 < i12) {
                long j11 = 1 + j10;
                if (s1.getByte(bArr, j10) < 0) {
                    return i11;
                }
                i11++;
                j10 = j11;
            }
            while (true) {
                int i13 = i11 + 8;
                if (i13 > i10 || (s1.getLong((Object) bArr, s1.BYTE_ARRAY_BASE_OFFSET + j10) & Utf8.ASCII_MASK_LONG) != 0) {
                    break;
                }
                j10 += 8;
                i11 = i13;
            }
            while (i11 < i10) {
                long j12 = j10 + 1;
                if (s1.getByte(bArr, j10) < 0) {
                    return i11;
                }
                i11++;
                j10 = j12;
            }
            return i10;
        }

        private static int unsafeIncompleteStateFor(byte[] bArr, int i10, long j10, int i11) {
            if (i11 == 0) {
                return Utf8.incompleteStateFor(i10);
            }
            if (i11 == 1) {
                return Utf8.incompleteStateFor(i10, s1.getByte(bArr, j10));
            }
            if (i11 == 2) {
                return Utf8.incompleteStateFor(i10, s1.getByte(bArr, j10), s1.getByte(bArr, j10 + 1));
            }
            throw new AssertionError();
        }

        @Override
        String decodeUtf8(byte[] bArr, int i10, int i11) throws InvalidProtocolBufferException {
            Charset charset = y.UTF_8;
            String str = new String(bArr, i10, i11, charset);
            if (str.contains("�") && !Arrays.equals(str.getBytes(charset), Arrays.copyOfRange(bArr, i10, i11 + i10))) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            return str;
        }

        @Override
        String decodeUtf8Direct(ByteBuffer byteBuffer, int i10, int i11) throws InvalidProtocolBufferException {
            if ((i10 | i11 | ((byteBuffer.limit() - i10) - i11)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i10), Integer.valueOf(i11)));
            }
            long jAddressOffset = s1.addressOffset(byteBuffer) + ((long) i10);
            long j10 = ((long) i11) + jAddressOffset;
            char[] cArr = new char[i11];
            int i12 = 0;
            while (jAddressOffset < j10) {
                byte b10 = s1.getByte(jAddressOffset);
                if (!a.isOneByte(b10)) {
                    break;
                }
                jAddressOffset++;
                a.handleOneByte(b10, cArr, i12);
                i12++;
            }
            while (jAddressOffset < j10) {
                long j11 = jAddressOffset + 1;
                byte b11 = s1.getByte(jAddressOffset);
                if (a.isOneByte(b11)) {
                    int i13 = i12 + 1;
                    a.handleOneByte(b11, cArr, i12);
                    while (j11 < j10) {
                        byte b12 = s1.getByte(j11);
                        if (!a.isOneByte(b12)) {
                            break;
                        }
                        j11++;
                        a.handleOneByte(b12, cArr, i13);
                        i13++;
                    }
                    i12 = i13;
                    jAddressOffset = j11;
                } else if (a.isTwoBytes(b11)) {
                    if (j11 >= j10) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    jAddressOffset += 2;
                    a.handleTwoBytes(b11, s1.getByte(j11), cArr, i12);
                    i12++;
                } else if (a.isThreeBytes(b11)) {
                    if (j11 >= j10 - 1) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    long j12 = 2 + jAddressOffset;
                    jAddressOffset += 3;
                    a.handleThreeBytes(b11, s1.getByte(j11), s1.getByte(j12), cArr, i12);
                    i12++;
                } else {
                    if (j11 >= j10 - 2) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    byte b13 = s1.getByte(j11);
                    long j13 = jAddressOffset + 3;
                    byte b14 = s1.getByte(2 + jAddressOffset);
                    jAddressOffset += 4;
                    a.handleFourBytes(b11, b13, b14, s1.getByte(j13), cArr, i12);
                    i12 += 2;
                }
            }
            return new String(cArr, 0, i12);
        }

        @Override
        int encodeUtf8(CharSequence charSequence, byte[] bArr, int i10, int i11) {
            long j10;
            String str;
            String str2;
            int i12;
            long j11;
            char cCharAt;
            long j12 = i10;
            long j13 = ((long) i11) + j12;
            int length = charSequence.length();
            String str3 = " at index ";
            String str4 = "Failed writing ";
            if (length > i11 || bArr.length - i11 < i10) {
                throw new ArrayIndexOutOfBoundsException("Failed writing " + charSequence.charAt(length - 1) + " at index " + (i10 + i11));
            }
            int i13 = 0;
            while (true) {
                j10 = 1;
                if (i13 >= length || (cCharAt = charSequence.charAt(i13)) >= 128) {
                    break;
                }
                s1.putByte(bArr, j12, (byte) cCharAt);
                i13++;
                j12 = 1 + j12;
            }
            if (i13 == length) {
                return (int) j12;
            }
            while (i13 < length) {
                char cCharAt2 = charSequence.charAt(i13);
                if (cCharAt2 >= 128 || j12 >= j13) {
                    if (cCharAt2 >= 2048 || j12 > j13 - 2) {
                        str = str3;
                        str2 = str4;
                        if ((cCharAt2 >= 55296 && 57343 >= cCharAt2) || j12 > j13 - 3) {
                            if (j12 > j13 - 4) {
                                if (55296 <= cCharAt2 && cCharAt2 <= 57343 && ((i12 = i13 + 1) == length || !Character.isSurrogatePair(cCharAt2, charSequence.charAt(i12)))) {
                                    throw new UnpairedSurrogateException(i13, length);
                                }
                                throw new ArrayIndexOutOfBoundsException(str2 + cCharAt2 + str + j12);
                            }
                            int i14 = i13 + 1;
                            if (i14 != length) {
                                char cCharAt3 = charSequence.charAt(i14);
                                if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                                    int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                                    j11 = 1;
                                    s1.putByte(bArr, j12, (byte) ((codePoint >>> 18) | 240));
                                    s1.putByte(bArr, j12 + 1, (byte) (((codePoint >>> 12) & 63) | 128));
                                    long j14 = j12 + 3;
                                    s1.putByte(bArr, j12 + 2, (byte) (((codePoint >>> 6) & 63) | 128));
                                    j12 += 4;
                                    s1.putByte(bArr, j14, (byte) ((codePoint & 63) | 128));
                                    i13 = i14;
                                } else {
                                    i13 = i14;
                                }
                            }
                            throw new UnpairedSurrogateException(i13 - 1, length);
                        }
                        s1.putByte(bArr, j12, (byte) ((cCharAt2 >>> '\f') | 480));
                        long j15 = j12 + 2;
                        s1.putByte(bArr, j12 + 1, (byte) (((cCharAt2 >>> 6) & 63) | 128));
                        j12 += 3;
                        s1.putByte(bArr, j15, (byte) ((cCharAt2 & '?') | 128));
                    } else {
                        str = str3;
                        str2 = str4;
                        long j16 = j12 + j10;
                        s1.putByte(bArr, j12, (byte) ((cCharAt2 >>> 6) | 960));
                        j12 += 2;
                        s1.putByte(bArr, j16, (byte) ((cCharAt2 & '?') | 128));
                    }
                    j11 = 1;
                } else {
                    s1.putByte(bArr, j12, (byte) cCharAt2);
                    str2 = str4;
                    j11 = j10;
                    j12 += j10;
                    str = str3;
                }
                i13++;
                str3 = str;
                str4 = str2;
                j10 = j11;
                j13 = j13;
            }
            return (int) j12;
        }

        @Override
        void encodeUtf8Direct(CharSequence charSequence, ByteBuffer byteBuffer) {
            long j10;
            char c10;
            long j11;
            int i10;
            int i11;
            char c11;
            char cCharAt;
            long jAddressOffset = s1.addressOffset(byteBuffer);
            long jPosition = ((long) byteBuffer.position()) + jAddressOffset;
            long jLimit = ((long) byteBuffer.limit()) + jAddressOffset;
            int length = charSequence.length();
            if (length > jLimit - jPosition) {
                throw new ArrayIndexOutOfBoundsException("Failed writing " + charSequence.charAt(length - 1) + " at index " + byteBuffer.limit());
            }
            int i12 = 0;
            while (true) {
                j10 = 1;
                c10 = 128;
                if (i12 >= length || (cCharAt = charSequence.charAt(i12)) >= 128) {
                    break;
                }
                s1.putByte(jPosition, (byte) cCharAt);
                i12++;
                jPosition = 1 + jPosition;
            }
            if (i12 == length) {
                e0.position(byteBuffer, (int) (jPosition - jAddressOffset));
                return;
            }
            while (i12 < length) {
                char cCharAt2 = charSequence.charAt(i12);
                if (cCharAt2 >= c10 || jPosition >= jLimit) {
                    if (cCharAt2 >= 2048 || jPosition > jLimit - 2) {
                        j11 = jAddressOffset;
                        if ((cCharAt2 >= 55296 && 57343 >= cCharAt2) || jPosition > jLimit - 3) {
                            if (jPosition > jLimit - 4) {
                                if (55296 <= cCharAt2 && cCharAt2 <= 57343 && ((i10 = i12 + 1) == length || !Character.isSurrogatePair(cCharAt2, charSequence.charAt(i10)))) {
                                    throw new UnpairedSurrogateException(i12, length);
                                }
                                throw new ArrayIndexOutOfBoundsException("Failed writing " + cCharAt2 + " at index " + jPosition);
                            }
                            i11 = i12 + 1;
                            if (i11 != length) {
                                char cCharAt3 = charSequence.charAt(i11);
                                if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                                    int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                                    s1.putByte(jPosition, (byte) ((codePoint >>> 18) | 240));
                                    c11 = 128;
                                    s1.putByte(jPosition + 1, (byte) (((codePoint >>> 12) & 63) | 128));
                                    long j12 = jPosition + 3;
                                    s1.putByte(jPosition + 2, (byte) (((codePoint >>> 6) & 63) | 128));
                                    jPosition += 4;
                                    s1.putByte(j12, (byte) ((codePoint & 63) | 128));
                                } else {
                                    i12 = i11;
                                }
                            }
                            throw new UnpairedSurrogateException(i12 - 1, length);
                        }
                        long j13 = jPosition + j10;
                        s1.putByte(jPosition, (byte) ((cCharAt2 >>> '\f') | 480));
                        long j14 = jPosition + 2;
                        s1.putByte(j13, (byte) (((cCharAt2 >>> 6) & 63) | 128));
                        jPosition += 3;
                        s1.putByte(j14, (byte) ((cCharAt2 & '?') | 128));
                    } else {
                        j11 = jAddressOffset;
                        long j15 = jPosition + j10;
                        s1.putByte(jPosition, (byte) ((cCharAt2 >>> 6) | 960));
                        jPosition += 2;
                        s1.putByte(j15, (byte) ((cCharAt2 & '?') | 128));
                    }
                    i11 = i12;
                    c11 = 128;
                } else {
                    s1.putByte(jPosition, (byte) cCharAt2);
                    j11 = jAddressOffset;
                    i11 = i12;
                    c11 = c10;
                    jPosition += j10;
                }
                c10 = c11;
                jAddressOffset = j11;
                j10 = 1;
                i12 = i11 + 1;
            }
            e0.position(byteBuffer, (int) (jPosition - jAddressOffset));
        }

        /* JADX WARN: Code restructure failed: missing block: B:35:0x0059, code lost:
        
            if (com.google.protobuf.s1.getByte(r13, r1) > (-65)) goto L38;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x009e, code lost:
        
            if (com.google.protobuf.s1.getByte(r13, r1) > (-65)) goto L59;
         */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        int partialIsValidUtf8(int i10, byte[] bArr, int i11, int i12) {
            long j10;
            byte b10 = 0;
            if ((i11 | i12 | (bArr.length - i12)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("Array length=%d, index=%d, limit=%d", Integer.valueOf(bArr.length), Integer.valueOf(i11), Integer.valueOf(i12)));
            }
            long j11 = i11;
            long j12 = i12;
            if (i10 != 0) {
                if (j11 >= j12) {
                    return i10;
                }
                byte b11 = (byte) i10;
                if (b11 < -32) {
                    if (b11 >= -62) {
                        long j13 = 1 + j11;
                        if (s1.getByte(bArr, j11) <= -65) {
                            j11 = j13;
                        }
                    }
                    return -1;
                }
                if (b11 < -16) {
                    byte b12 = (byte) (~(i10 >> 8));
                    if (b12 == 0) {
                        long j14 = j11 + 1;
                        b12 = s1.getByte(bArr, j11);
                        if (j14 >= j12) {
                            return Utf8.incompleteStateFor(b11, b12);
                        }
                        j11 = j14;
                    }
                    if (b12 <= -65 && ((b11 != -32 || b12 >= -96) && (b11 != -19 || b12 < -96))) {
                        j10 = j11 + 1;
                    }
                    return -1;
                }
                byte b13 = (byte) (~(i10 >> 8));
                if (b13 == 0) {
                    long j15 = j11 + 1;
                    b13 = s1.getByte(bArr, j11);
                    if (j15 >= j12) {
                        return Utf8.incompleteStateFor(b11, b13);
                    }
                    j11 = j15;
                } else {
                    b10 = (byte) (i10 >> 16);
                }
                if (b10 == 0) {
                    long j16 = j11 + 1;
                    b10 = s1.getByte(bArr, j11);
                    if (j16 >= j12) {
                        return Utf8.incompleteStateFor(b11, b13, b10);
                    }
                    j11 = j16;
                }
                if (b13 <= -65 && (((b11 << 28) + (b13 + 112)) >> 30) == 0 && b10 <= -65) {
                    j10 = j11 + 1;
                }
                return -1;
                j11 = j10;
            }
            return partialIsValidUtf8(bArr, j11, (int) (j12 - j11));
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x002e, code lost:
        
            if (com.google.protobuf.s1.getByte(r1) > (-65)) goto L17;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x0062, code lost:
        
            if (com.google.protobuf.s1.getByte(r1) > (-65)) goto L36;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x00a3, code lost:
        
            if (com.google.protobuf.s1.getByte(r1) > (-65)) goto L57;
         */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        int partialIsValidUtf8Direct(int i10, ByteBuffer byteBuffer, int i11, int i12) {
            long j10;
            byte b10 = 0;
            if ((i11 | i12 | (byteBuffer.limit() - i12)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i11), Integer.valueOf(i12)));
            }
            long jAddressOffset = s1.addressOffset(byteBuffer) + ((long) i11);
            long j11 = ((long) (i12 - i11)) + jAddressOffset;
            if (i10 != 0) {
                if (jAddressOffset >= j11) {
                    return i10;
                }
                byte b11 = (byte) i10;
                if (b11 < -32) {
                    if (b11 >= -62) {
                        j10 = 1 + jAddressOffset;
                    }
                    return -1;
                }
                if (b11 < -16) {
                    byte b12 = (byte) (~(i10 >> 8));
                    if (b12 == 0) {
                        long j12 = jAddressOffset + 1;
                        b12 = s1.getByte(jAddressOffset);
                        if (j12 >= j11) {
                            return Utf8.incompleteStateFor(b11, b12);
                        }
                        jAddressOffset = j12;
                    }
                    if (b12 <= -65 && ((b11 != -32 || b12 >= -96) && (b11 != -19 || b12 < -96))) {
                        j10 = 1 + jAddressOffset;
                    }
                    return -1;
                }
                byte b13 = (byte) (~(i10 >> 8));
                if (b13 == 0) {
                    long j13 = jAddressOffset + 1;
                    b13 = s1.getByte(jAddressOffset);
                    if (j13 >= j11) {
                        return Utf8.incompleteStateFor(b11, b13);
                    }
                    jAddressOffset = j13;
                } else {
                    b10 = (byte) (i10 >> 16);
                }
                if (b10 == 0) {
                    long j14 = jAddressOffset + 1;
                    b10 = s1.getByte(jAddressOffset);
                    if (j14 >= j11) {
                        return Utf8.incompleteStateFor(b11, b13, b10);
                    }
                    jAddressOffset = j14;
                }
                if (b13 <= -65 && (((b11 << 28) + (b13 + 112)) >> 30) == 0 && b10 <= -65) {
                    j10 = 1 + jAddressOffset;
                }
                return -1;
                jAddressOffset = j10;
            }
            return partialIsValidUtf8(jAddressOffset, (int) (j11 - jAddressOffset));
        }

        private static int unsafeEstimateConsecutiveAscii(long j10, int i10) {
            if (i10 < 16) {
                return 0;
            }
            int i11 = (int) ((-j10) & 7);
            int i12 = i11;
            while (i12 > 0) {
                long j11 = 1 + j10;
                if (s1.getByte(j10) < 0) {
                    return i11 - i12;
                }
                i12--;
                j10 = j11;
            }
            int i13 = i10 - i11;
            while (i13 >= 8 && (s1.getLong(j10) & Utf8.ASCII_MASK_LONG) == 0) {
                j10 += 8;
                i13 -= 8;
            }
            return i10 - i13;
        }

        private static int unsafeIncompleteStateFor(long j10, int i10, int i11) {
            if (i11 == 0) {
                return Utf8.incompleteStateFor(i10);
            }
            if (i11 == 1) {
                return Utf8.incompleteStateFor(i10, s1.getByte(j10));
            }
            if (i11 == 2) {
                return Utf8.incompleteStateFor(i10, s1.getByte(j10), s1.getByte(j10 + 1));
            }
            throw new AssertionError();
        }

        private static int partialIsValidUtf8(byte[] bArr, long j10, int i10) {
            int iUnsafeEstimateConsecutiveAscii = unsafeEstimateConsecutiveAscii(bArr, j10, i10);
            int i11 = i10 - iUnsafeEstimateConsecutiveAscii;
            long j11 = j10 + ((long) iUnsafeEstimateConsecutiveAscii);
            while (true) {
                byte b10 = 0;
                while (i11 > 0) {
                    long j12 = j11 + 1;
                    b10 = s1.getByte(bArr, j11);
                    if (b10 < 0) {
                        j11 = j12;
                        break;
                    }
                    i11--;
                    j11 = j12;
                }
                if (i11 == 0) {
                    return 0;
                }
                int i12 = i11 - 1;
                if (b10 < -32) {
                    if (i12 == 0) {
                        return b10;
                    }
                    i11 -= 2;
                    if (b10 >= -62) {
                        long j13 = 1 + j11;
                        if (s1.getByte(bArr, j11) <= -65) {
                            j11 = j13;
                        }
                    }
                    return -1;
                }
                if (b10 >= -16) {
                    if (i12 < 3) {
                        return unsafeIncompleteStateFor(bArr, b10, j11, i12);
                    }
                    i11 -= 4;
                    long j14 = 1 + j11;
                    byte b11 = s1.getByte(bArr, j11);
                    if (b11 <= -65 && (((b10 << 28) + (b11 + 112)) >> 30) == 0) {
                        long j15 = 2 + j11;
                        if (s1.getByte(bArr, j14) <= -65) {
                            j11 += 3;
                            if (s1.getByte(bArr, j15) > -65) {
                            }
                        }
                    }
                    return -1;
                }
                if (i12 < 2) {
                    return unsafeIncompleteStateFor(bArr, b10, j11, i12);
                }
                i11 -= 3;
                long j16 = 1 + j11;
                byte b12 = s1.getByte(bArr, j11);
                if (b12 <= -65 && ((b10 != -32 || b12 >= -96) && (b10 != -19 || b12 < -96))) {
                    j11 += 2;
                    if (s1.getByte(bArr, j16) > -65) {
                    }
                }
                return -1;
            }
        }

        private static int partialIsValidUtf8(long j10, int i10) {
            int iUnsafeEstimateConsecutiveAscii = unsafeEstimateConsecutiveAscii(j10, i10);
            long j11 = j10 + ((long) iUnsafeEstimateConsecutiveAscii);
            int i11 = i10 - iUnsafeEstimateConsecutiveAscii;
            while (true) {
                byte b10 = 0;
                while (i11 > 0) {
                    long j12 = j11 + 1;
                    b10 = s1.getByte(j11);
                    if (b10 < 0) {
                        j11 = j12;
                        break;
                    }
                    i11--;
                    j11 = j12;
                }
                if (i11 == 0) {
                    return 0;
                }
                int i12 = i11 - 1;
                if (b10 < -32) {
                    if (i12 == 0) {
                        return b10;
                    }
                    i11 -= 2;
                    if (b10 >= -62) {
                        long j13 = 1 + j11;
                        if (s1.getByte(j11) <= -65) {
                            j11 = j13;
                        }
                    }
                    return -1;
                }
                if (b10 >= -16) {
                    if (i12 < 3) {
                        return unsafeIncompleteStateFor(j11, b10, i12);
                    }
                    i11 -= 4;
                    long j14 = 1 + j11;
                    byte b11 = s1.getByte(j11);
                    if (b11 <= -65 && (((b10 << 28) + (b11 + 112)) >> 30) == 0) {
                        long j15 = 2 + j11;
                        if (s1.getByte(j14) <= -65) {
                            j11 += 3;
                            if (s1.getByte(j15) > -65) {
                            }
                        }
                    }
                    return -1;
                }
                if (i12 < 2) {
                    return unsafeIncompleteStateFor(j11, b10, i12);
                }
                i11 -= 3;
                long j16 = 1 + j11;
                byte b12 = s1.getByte(j11);
                if (b12 <= -65 && ((b10 != -32 || b12 >= -96) && (b10 != -19 || b12 < -96))) {
                    j11 += 2;
                    if (s1.getByte(j16) > -65) {
                    }
                }
                return -1;
            }
        }
    }

    public static int incompleteStateFor(int i10, int i11, int i12) {
        if (i10 > -12 || i11 > -65 || i12 > -65) {
            return -1;
        }
        return (i10 ^ (i11 << 8)) ^ (i12 << 16);
    }

    static boolean isValidUtf8(ByteBuffer byteBuffer) {
        return processor.isValidUtf8(byteBuffer, byteBuffer.position(), byteBuffer.remaining());
    }

    public static int incompleteStateFor(byte[] bArr, int i10, int i11) {
        byte b10 = bArr[i10 - 1];
        int i12 = i11 - i10;
        if (i12 == 0) {
            return incompleteStateFor(b10);
        }
        if (i12 == 1) {
            return incompleteStateFor(b10, bArr[i10]);
        }
        if (i12 == 2) {
            return incompleteStateFor(b10, bArr[i10], bArr[i10 + 1]);
        }
        throw new AssertionError();
    }

    public static int incompleteStateFor(ByteBuffer byteBuffer, int i10, int i11, int i12) {
        if (i12 == 0) {
            return incompleteStateFor(i10);
        }
        if (i12 == 1) {
            return incompleteStateFor(i10, byteBuffer.get(i11));
        }
        if (i12 == 2) {
            return incompleteStateFor(i10, byteBuffer.get(i11), byteBuffer.get(i11 + 1));
        }
        throw new AssertionError();
    }

    static final class c extends b {
        c() {
        }

        private static int partialIsValidUtf8NonAscii(byte[] bArr, int i10, int i11) {
            while (i10 < i11) {
                int i12 = i10 + 1;
                byte b10 = bArr[i10];
                if (b10 < 0) {
                    if (b10 < -32) {
                        if (i12 >= i11) {
                            return b10;
                        }
                        if (b10 >= -62) {
                            i10 += 2;
                            if (bArr[i12] > -65) {
                            }
                        }
                        return -1;
                    }
                    if (b10 >= -16) {
                        if (i12 >= i11 - 2) {
                            return Utf8.incompleteStateFor(bArr, i12, i11);
                        }
                        int i13 = i10 + 2;
                        byte b11 = bArr[i12];
                        if (b11 <= -65 && (((b10 << 28) + (b11 + 112)) >> 30) == 0) {
                            int i14 = i10 + 3;
                            if (bArr[i13] <= -65) {
                                i10 += 4;
                                if (bArr[i14] > -65) {
                                }
                            }
                        }
                        return -1;
                    }
                    if (i12 >= i11 - 1) {
                        return Utf8.incompleteStateFor(bArr, i12, i11);
                    }
                    int i15 = i10 + 2;
                    byte b12 = bArr[i12];
                    if (b12 <= -65 && ((b10 != -32 || b12 >= -96) && (b10 != -19 || b12 < -96))) {
                        i10 += 3;
                        if (bArr[i15] > -65) {
                        }
                    }
                    return -1;
                }
                i10 = i12;
            }
            return 0;
        }

        @Override
        String decodeUtf8(byte[] bArr, int i10, int i11) throws InvalidProtocolBufferException {
            if ((i10 | i11 | ((bArr.length - i10) - i11)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i10), Integer.valueOf(i11)));
            }
            int i12 = i10 + i11;
            char[] cArr = new char[i11];
            int i13 = 0;
            while (i10 < i12) {
                byte b10 = bArr[i10];
                if (!a.isOneByte(b10)) {
                    break;
                }
                i10++;
                a.handleOneByte(b10, cArr, i13);
                i13++;
            }
            int i14 = i13;
            while (i10 < i12) {
                int i15 = i10 + 1;
                byte b11 = bArr[i10];
                if (a.isOneByte(b11)) {
                    int i16 = i14 + 1;
                    a.handleOneByte(b11, cArr, i14);
                    while (i15 < i12) {
                        byte b12 = bArr[i15];
                        if (!a.isOneByte(b12)) {
                            break;
                        }
                        i15++;
                        a.handleOneByte(b12, cArr, i16);
                        i16++;
                    }
                    i14 = i16;
                    i10 = i15;
                } else if (a.isTwoBytes(b11)) {
                    if (i15 >= i12) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    i10 += 2;
                    a.handleTwoBytes(b11, bArr[i15], cArr, i14);
                    i14++;
                } else if (a.isThreeBytes(b11)) {
                    if (i15 >= i12 - 1) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    int i17 = i10 + 2;
                    i10 += 3;
                    a.handleThreeBytes(b11, bArr[i15], bArr[i17], cArr, i14);
                    i14++;
                } else {
                    if (i15 >= i12 - 2) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    byte b13 = bArr[i15];
                    int i18 = i10 + 3;
                    byte b14 = bArr[i10 + 2];
                    i10 += 4;
                    a.handleFourBytes(b11, b13, b14, bArr[i18], cArr, i14);
                    i14 += 2;
                }
            }
            return new String(cArr, 0, i14);
        }

        @Override
        String decodeUtf8Direct(ByteBuffer byteBuffer, int i10, int i11) throws InvalidProtocolBufferException {
            return decodeUtf8Default(byteBuffer, i10, i11);
        }

        @Override
        int encodeUtf8(CharSequence charSequence, byte[] bArr, int i10, int i11) {
            int i12;
            int i13;
            char cCharAt;
            int length = charSequence.length();
            int i14 = i11 + i10;
            int i15 = 0;
            while (i15 < length && (i13 = i15 + i10) < i14 && (cCharAt = charSequence.charAt(i15)) < 128) {
                bArr[i13] = (byte) cCharAt;
                i15++;
            }
            if (i15 == length) {
                return i10 + length;
            }
            int i16 = i10 + i15;
            while (i15 < length) {
                char cCharAt2 = charSequence.charAt(i15);
                if (cCharAt2 < 128 && i16 < i14) {
                    bArr[i16] = (byte) cCharAt2;
                    i16++;
                } else if (cCharAt2 < 2048 && i16 <= i14 - 2) {
                    int i17 = i16 + 1;
                    bArr[i16] = (byte) ((cCharAt2 >>> 6) | 960);
                    i16 += 2;
                    bArr[i17] = (byte) ((cCharAt2 & '?') | 128);
                } else {
                    if ((cCharAt2 >= 55296 && 57343 >= cCharAt2) || i16 > i14 - 3) {
                        if (i16 > i14 - 4) {
                            if (55296 <= cCharAt2 && cCharAt2 <= 57343 && ((i12 = i15 + 1) == charSequence.length() || !Character.isSurrogatePair(cCharAt2, charSequence.charAt(i12)))) {
                                throw new UnpairedSurrogateException(i15, length);
                            }
                            throw new ArrayIndexOutOfBoundsException("Failed writing " + cCharAt2 + " at index " + i16);
                        }
                        int i18 = i15 + 1;
                        if (i18 != charSequence.length()) {
                            char cCharAt3 = charSequence.charAt(i18);
                            if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                                int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                                bArr[i16] = (byte) ((codePoint >>> 18) | 240);
                                bArr[i16 + 1] = (byte) (((codePoint >>> 12) & 63) | 128);
                                int i19 = i16 + 3;
                                bArr[i16 + 2] = (byte) (((codePoint >>> 6) & 63) | 128);
                                i16 += 4;
                                bArr[i19] = (byte) ((codePoint & 63) | 128);
                                i15 = i18;
                            } else {
                                i15 = i18;
                            }
                        }
                        throw new UnpairedSurrogateException(i15 - 1, length);
                    }
                    bArr[i16] = (byte) ((cCharAt2 >>> '\f') | 480);
                    int i20 = i16 + 2;
                    bArr[i16 + 1] = (byte) (((cCharAt2 >>> 6) & 63) | 128);
                    i16 += 3;
                    bArr[i20] = (byte) ((cCharAt2 & '?') | 128);
                }
                i15++;
            }
            return i16;
        }

        @Override
        void encodeUtf8Direct(CharSequence charSequence, ByteBuffer byteBuffer) {
            encodeUtf8Default(charSequence, byteBuffer);
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0015, code lost:
        
            if (r8[r9] > (-65)) goto L13;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x0046, code lost:
        
            if (r8[r9] > (-65)) goto L32;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x0083, code lost:
        
            if (r8[r7] > (-65)) goto L53;
         */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        int partialIsValidUtf8(int i10, byte[] bArr, int i11, int i12) {
            byte b10;
            int i13;
            int i14;
            if (i10 != 0) {
                if (i11 >= i12) {
                    return i10;
                }
                byte b11 = (byte) i10;
                if (b11 < -32) {
                    if (b11 >= -62) {
                        i14 = i11 + 1;
                    }
                    return -1;
                }
                if (b11 < -16) {
                    byte b12 = (byte) (~(i10 >> 8));
                    if (b12 == 0) {
                        int i15 = i11 + 1;
                        byte b13 = bArr[i11];
                        if (i15 >= i12) {
                            return Utf8.incompleteStateFor(b11, b13);
                        }
                        i11 = i15;
                        b12 = b13;
                    }
                    if (b12 <= -65 && ((b11 != -32 || b12 >= -96) && (b11 != -19 || b12 < -96))) {
                        i14 = i11 + 1;
                    }
                    return -1;
                }
                byte b14 = (byte) (~(i10 >> 8));
                if (b14 == 0) {
                    i13 = i11 + 1;
                    b14 = bArr[i11];
                    if (i13 >= i12) {
                        return Utf8.incompleteStateFor(b11, b14);
                    }
                    b10 = 0;
                } else {
                    b10 = (byte) (i10 >> 16);
                    i13 = i11;
                }
                if (b10 == 0) {
                    int i16 = i13 + 1;
                    byte b15 = bArr[i13];
                    if (i16 >= i12) {
                        return Utf8.incompleteStateFor(b11, b14, b15);
                    }
                    b10 = b15;
                    i13 = i16;
                }
                if (b14 <= -65 && (((b11 << 28) + (b14 + 112)) >> 30) == 0 && b10 <= -65) {
                    i11 = i13 + 1;
                }
                return -1;
                i11 = i14;
            }
            return partialIsValidUtf8(bArr, i11, i12);
        }

        @Override
        int partialIsValidUtf8Direct(int i10, ByteBuffer byteBuffer, int i11, int i12) {
            return partialIsValidUtf8Default(i10, byteBuffer, i11, i12);
        }

        private static int partialIsValidUtf8(byte[] bArr, int i10, int i11) {
            while (i10 < i11 && bArr[i10] >= 0) {
                i10++;
            }
            if (i10 >= i11) {
                return 0;
            }
            return partialIsValidUtf8NonAscii(bArr, i10, i11);
        }
    }
}
