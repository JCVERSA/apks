package okio.internal;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okio.Base64;
import okio.Buffer;
import okio.SegmentedByteString;
import okio._JvmPlatformKt;

@Metadata(d1 = {"\u0000R\n\u0000\n\u0002\u0010\u0019\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\f\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0005\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0007H\u0002\u001a\u0011\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\tH\u0080\b\u001a\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0010H\u0002\u001a\r\u0010\u0011\u001a\u00020\u0012*\u00020\fH\u0080\b\u001a\r\u0010\u0013\u001a\u00020\u0012*\u00020\fH\u0080\b\u001a\u0015\u0010\u0014\u001a\u00020\u0007*\u00020\f2\u0006\u0010\u0015\u001a\u00020\fH\u0080\b\u001a-\u0010\u0016\u001a\u00020\u0017*\u00020\f2\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u0007H\u0080\b\u001a\u000f\u0010\u001c\u001a\u0004\u0018\u00010\f*\u00020\u0012H\u0080\b\u001a\r\u0010\u001d\u001a\u00020\f*\u00020\u0012H\u0080\b\u001a\r\u0010\u001e\u001a\u00020\f*\u00020\u0012H\u0080\b\u001a\u0015\u0010\u001f\u001a\u00020 *\u00020\f2\u0006\u0010!\u001a\u00020\tH\u0080\b\u001a\u0015\u0010\u001f\u001a\u00020 *\u00020\f2\u0006\u0010!\u001a\u00020\fH\u0080\b\u001a\u0017\u0010\"\u001a\u00020 *\u00020\f2\b\u0010\u0015\u001a\u0004\u0018\u00010#H\u0080\b\u001a\u0015\u0010$\u001a\u00020%*\u00020\f2\u0006\u0010&\u001a\u00020\u0007H\u0080\b\u001a\r\u0010'\u001a\u00020\u0007*\u00020\fH\u0080\b\u001a\r\u0010(\u001a\u00020\u0007*\u00020\fH\u0080\b\u001a\r\u0010)\u001a\u00020\u0012*\u00020\fH\u0080\b\u001a\u001d\u0010*\u001a\u00020\u0007*\u00020\f2\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010+\u001a\u00020\u0007H\u0080\b\u001a\r\u0010,\u001a\u00020\t*\u00020\fH\u0080\b\u001a\u001d\u0010-\u001a\u00020\u0007*\u00020\f2\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010+\u001a\u00020\u0007H\u0080\b\u001a\u001d\u0010-\u001a\u00020\u0007*\u00020\f2\u0006\u0010\u0015\u001a\u00020\f2\u0006\u0010+\u001a\u00020\u0007H\u0080\b\u001a-\u0010.\u001a\u00020 *\u00020\f2\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010/\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u0007H\u0080\b\u001a-\u0010.\u001a\u00020 *\u00020\f2\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\f2\u0006\u0010/\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u0007H\u0080\b\u001a\u0015\u00100\u001a\u00020 *\u00020\f2\u0006\u00101\u001a\u00020\tH\u0080\b\u001a\u0015\u00100\u001a\u00020 *\u00020\f2\u0006\u00101\u001a\u00020\fH\u0080\b\u001a\u001d\u00102\u001a\u00020\f*\u00020\f2\u0006\u00103\u001a\u00020\u00072\u0006\u00104\u001a\u00020\u0007H\u0080\b\u001a\r\u00105\u001a\u00020\f*\u00020\fH\u0080\b\u001a\r\u00106\u001a\u00020\f*\u00020\fH\u0080\b\u001a\r\u00107\u001a\u00020\t*\u00020\fH\u0080\b\u001a\u001d\u00108\u001a\u00020\f*\u00020\t2\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u0007H\u0080\b\u001a\r\u00109\u001a\u00020\u0012*\u00020\fH\u0080\b\u001a\r\u0010:\u001a\u00020\u0012*\u00020\fH\u0080\b\u001a$\u0010;\u001a\u00020\u0017*\u00020\f2\u0006\u0010<\u001a\u00020=2\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u0007H\u0000\"\u001c\u0010\u0000\u001a\u00020\u00018\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0002\u0010\u0003\u001a\u0004\b\u0004\u0010\u0005¨\u0006>"}, d2 = {"HEX_DIGIT_CHARS", "", "getHEX_DIGIT_CHARS$annotations", "()V", "getHEX_DIGIT_CHARS", "()[C", "codePointIndexToCharIndex", "", "s", "", "codePointCount", "commonOf", "Lokio/ByteString;", "data", "decodeHexDigit", "c", "", "commonBase64", "", "commonBase64Url", "commonCompareTo", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "commonCopyInto", "", "offset", "target", "targetOffset", "byteCount", "commonDecodeBase64", "commonDecodeHex", "commonEncodeUtf8", "commonEndsWith", "", "suffix", "commonEquals", "", "commonGetByte", "", "pos", "commonGetSize", "commonHashCode", "commonHex", "commonIndexOf", "fromIndex", "commonInternalArray", "commonLastIndexOf", "commonRangeEquals", "otherOffset", "commonStartsWith", RequestParameters.PREFIX, "commonSubstring", "beginIndex", "endIndex", "commonToAsciiLowercase", "commonToAsciiUppercase", "commonToByteArray", "commonToByteString", "commonToString", "commonUtf8", "commonWrite", "buffer", "Lokio/Buffer;", "okio"}, k = 2, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@JvmName
@SourceDebugExtension
public final class ByteString {
    private static final char[] HEX_DIGIT_CHARS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static final int codePointIndexToCharIndex(byte[] bArr, int i10) {
        byte b10;
        int i11;
        int length = bArr.length;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (i12 < length) {
            byte b11 = bArr[i12];
            if (b11 >= 0) {
                int i15 = i14 + 1;
                if (i14 == i10) {
                    return i13;
                }
                if ((b11 != 10 && b11 != 13 && ((b11 >= 0 && b11 < 32) || (127 <= b11 && b11 < 160))) || b11 == 65533) {
                    return -1;
                }
                i13 += b11 < 65536 ? 1 : 2;
                i12++;
                while (true) {
                    i14 = i15;
                    if (i12 >= length || (b10 = bArr[i12]) < 0) {
                        break;
                    }
                    i12++;
                    i15 = i14 + 1;
                    if (i14 == i10) {
                        return i13;
                    }
                    if ((b10 != 10 && b10 != 13 && ((b10 >= 0 && b10 < 32) || (127 <= b10 && b10 < 160))) || b10 == 65533) {
                        return -1;
                    }
                    i13 += b10 < 65536 ? 1 : 2;
                }
            } else {
                if ((b11 >> 5) == -2) {
                    int i16 = i12 + 1;
                    if (length <= i16) {
                        if (i14 == i10) {
                            return i13;
                        }
                        return -1;
                    }
                    byte b12 = bArr[i16];
                    if ((b12 & 192) != 128) {
                        if (i14 == i10) {
                            return i13;
                        }
                        return -1;
                    }
                    int i17 = (b12 ^ 3968) ^ (b11 << 6);
                    if (i17 < 128) {
                        if (i14 == i10) {
                            return i13;
                        }
                        return -1;
                    }
                    i11 = i14 + 1;
                    if (i14 == i10) {
                        return i13;
                    }
                    if ((i17 != 10 && i17 != 13 && ((i17 >= 0 && i17 < 32) || (127 <= i17 && i17 < 160))) || i17 == 65533) {
                        return -1;
                    }
                    i13 += i17 < 65536 ? 1 : 2;
                    Unit unit = Unit.f64096a;
                    i12 += 2;
                } else if ((b11 >> 4) == -2) {
                    int i18 = i12 + 2;
                    if (length <= i18) {
                        if (i14 == i10) {
                            return i13;
                        }
                        return -1;
                    }
                    byte b13 = bArr[i12 + 1];
                    if ((b13 & 192) != 128) {
                        if (i14 == i10) {
                            return i13;
                        }
                        return -1;
                    }
                    byte b14 = bArr[i18];
                    if ((b14 & 192) != 128) {
                        if (i14 == i10) {
                            return i13;
                        }
                        return -1;
                    }
                    int i19 = ((b13 << 6) ^ ((-123008) ^ b14)) ^ (b11 << 12);
                    if (i19 < 2048) {
                        if (i14 == i10) {
                            return i13;
                        }
                        return -1;
                    }
                    if (55296 <= i19 && i19 < 57344) {
                        if (i14 == i10) {
                            return i13;
                        }
                        return -1;
                    }
                    i11 = i14 + 1;
                    if (i14 == i10) {
                        return i13;
                    }
                    if ((i19 != 10 && i19 != 13 && ((i19 >= 0 && i19 < 32) || (127 <= i19 && i19 < 160))) || i19 == 65533) {
                        return -1;
                    }
                    i13 += i19 < 65536 ? 1 : 2;
                    Unit unit2 = Unit.f64096a;
                    i12 += 3;
                } else {
                    if ((b11 >> 3) != -2) {
                        if (i14 == i10) {
                            return i13;
                        }
                        return -1;
                    }
                    int i20 = i12 + 3;
                    if (length <= i20) {
                        if (i14 == i10) {
                            return i13;
                        }
                        return -1;
                    }
                    byte b15 = bArr[i12 + 1];
                    if ((b15 & 192) != 128) {
                        if (i14 == i10) {
                            return i13;
                        }
                        return -1;
                    }
                    byte b16 = bArr[i12 + 2];
                    if ((b16 & 192) != 128) {
                        if (i14 == i10) {
                            return i13;
                        }
                        return -1;
                    }
                    byte b17 = bArr[i20];
                    if ((b17 & 192) != 128) {
                        if (i14 == i10) {
                            return i13;
                        }
                        return -1;
                    }
                    int i21 = (((b17 ^ 3678080) ^ (b16 << 6)) ^ (b15 << 12)) ^ (b11 << 18);
                    if (i21 > 1114111) {
                        if (i14 == i10) {
                            return i13;
                        }
                        return -1;
                    }
                    if (55296 <= i21 && i21 < 57344) {
                        if (i14 == i10) {
                            return i13;
                        }
                        return -1;
                    }
                    if (i21 < 65536) {
                        if (i14 == i10) {
                            return i13;
                        }
                        return -1;
                    }
                    i11 = i14 + 1;
                    if (i14 == i10) {
                        return i13;
                    }
                    if ((i21 != 10 && i21 != 13 && ((i21 >= 0 && i21 < 32) || (127 <= i21 && i21 < 160))) || i21 == 65533) {
                        return -1;
                    }
                    i13 += i21 < 65536 ? 1 : 2;
                    Unit unit3 = Unit.f64096a;
                    i12 += 4;
                }
                i14 = i11;
            }
        }
        return i13;
    }

    public static final String commonBase64(okio.ByteString byteString) {
        Intrinsics.h(byteString, "<this>");
        return Base64.encodeBase64$default(byteString.getData(), null, 1, null);
    }

    public static final String commonBase64Url(okio.ByteString byteString) {
        Intrinsics.h(byteString, "<this>");
        return Base64.encodeBase64(byteString.getData(), Base64.getBASE64_URL_SAFE());
    }

    public static final int commonCompareTo(okio.ByteString byteString, okio.ByteString other) {
        Intrinsics.h(byteString, "<this>");
        Intrinsics.h(other, "other");
        int size = byteString.size();
        int size2 = other.size();
        int iMin = Math.min(size, size2);
        for (int i10 = 0; i10 < iMin; i10++) {
            int i11 = byteString.getByte(i10) & 255;
            int i12 = other.getByte(i10) & 255;
            if (i11 != i12) {
                return i11 < i12 ? -1 : 1;
            }
        }
        if (size == size2) {
            return 0;
        }
        return size < size2 ? -1 : 1;
    }

    public static final void commonCopyInto(okio.ByteString byteString, int i10, byte[] target, int i11, int i12) {
        Intrinsics.h(byteString, "<this>");
        Intrinsics.h(target, "target");
        ArraysKt.h(byteString.getData(), target, i11, i10, i12 + i10);
    }

    public static final okio.ByteString commonDecodeBase64(String str) {
        Intrinsics.h(str, "<this>");
        byte[] bArrDecodeBase64ToArray = Base64.decodeBase64ToArray(str);
        if (bArrDecodeBase64ToArray != null) {
            return new okio.ByteString(bArrDecodeBase64ToArray);
        }
        return null;
    }

    public static final okio.ByteString commonDecodeHex(String str) {
        Intrinsics.h(str, "<this>");
        if (str.length() % 2 != 0) {
            throw new IllegalArgumentException(("Unexpected hex string: " + str).toString());
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = i10 * 2;
            bArr[i10] = (byte) ((decodeHexDigit(str.charAt(i11)) << 4) + decodeHexDigit(str.charAt(i11 + 1)));
        }
        return new okio.ByteString(bArr);
    }

    public static final okio.ByteString commonEncodeUtf8(String str) {
        Intrinsics.h(str, "<this>");
        okio.ByteString byteString = new okio.ByteString(_JvmPlatformKt.asUtf8ToByteArray(str));
        byteString.setUtf8$okio(str);
        return byteString;
    }

    public static final boolean commonEndsWith(okio.ByteString byteString, okio.ByteString suffix) {
        Intrinsics.h(byteString, "<this>");
        Intrinsics.h(suffix, "suffix");
        return byteString.rangeEquals(byteString.size() - suffix.size(), suffix, 0, suffix.size());
    }

    public static final boolean commonEquals(okio.ByteString byteString, Object obj) {
        Intrinsics.h(byteString, "<this>");
        if (obj == byteString) {
            return true;
        }
        if (obj instanceof okio.ByteString) {
            okio.ByteString byteString2 = (okio.ByteString) obj;
            if (byteString2.size() == byteString.getData().length && byteString2.rangeEquals(0, byteString.getData(), 0, byteString.getData().length)) {
                return true;
            }
        }
        return false;
    }

    public static final byte commonGetByte(okio.ByteString byteString, int i10) {
        Intrinsics.h(byteString, "<this>");
        return byteString.getData()[i10];
    }

    public static final int commonGetSize(okio.ByteString byteString) {
        Intrinsics.h(byteString, "<this>");
        return byteString.getData().length;
    }

    public static final int commonHashCode(okio.ByteString byteString) {
        Intrinsics.h(byteString, "<this>");
        int hashCode = byteString.getHashCode();
        if (hashCode != 0) {
            return hashCode;
        }
        int iHashCode = Arrays.hashCode(byteString.getData());
        byteString.setHashCode$okio(iHashCode);
        return iHashCode;
    }

    public static final String commonHex(okio.ByteString byteString) {
        Intrinsics.h(byteString, "<this>");
        char[] cArr = new char[byteString.getData().length * 2];
        int i10 = 0;
        for (byte b10 : byteString.getData()) {
            int i11 = i10 + 1;
            cArr[i10] = getHEX_DIGIT_CHARS()[(b10 >> 4) & 15];
            i10 += 2;
            cArr[i11] = getHEX_DIGIT_CHARS()[b10 & 15];
        }
        return StringsKt.B(cArr);
    }

    public static final int commonIndexOf(okio.ByteString byteString, byte[] other, int i10) {
        Intrinsics.h(byteString, "<this>");
        Intrinsics.h(other, "other");
        int length = byteString.getData().length - other.length;
        int iMax = Math.max(i10, 0);
        if (iMax > length) {
            return -1;
        }
        while (!SegmentedByteString.arrayRangeEquals(byteString.getData(), iMax, other, 0, other.length)) {
            if (iMax == length) {
                return -1;
            }
            iMax++;
        }
        return iMax;
    }

    public static final byte[] commonInternalArray(okio.ByteString byteString) {
        Intrinsics.h(byteString, "<this>");
        return byteString.getData();
    }

    public static final int commonLastIndexOf(okio.ByteString byteString, okio.ByteString other, int i10) {
        Intrinsics.h(byteString, "<this>");
        Intrinsics.h(other, "other");
        return byteString.lastIndexOf(other.internalArray$okio(), i10);
    }

    public static final okio.ByteString commonOf(byte[] data) {
        Intrinsics.h(data, "data");
        byte[] bArrCopyOf = Arrays.copyOf(data, data.length);
        Intrinsics.g(bArrCopyOf, "copyOf(this, size)");
        return new okio.ByteString(bArrCopyOf);
    }

    public static final boolean commonRangeEquals(okio.ByteString byteString, int i10, okio.ByteString other, int i11, int i12) {
        Intrinsics.h(byteString, "<this>");
        Intrinsics.h(other, "other");
        return other.rangeEquals(i11, byteString.getData(), i10, i12);
    }

    public static final boolean commonStartsWith(okio.ByteString byteString, okio.ByteString prefix) {
        Intrinsics.h(byteString, "<this>");
        Intrinsics.h(prefix, "prefix");
        return byteString.rangeEquals(0, prefix, 0, prefix.size());
    }

    public static final okio.ByteString commonSubstring(okio.ByteString byteString, int i10, int i11) {
        Intrinsics.h(byteString, "<this>");
        int iResolveDefaultParameter = SegmentedByteString.resolveDefaultParameter(byteString, i11);
        if (i10 < 0) {
            throw new IllegalArgumentException("beginIndex < 0");
        }
        if (iResolveDefaultParameter <= byteString.getData().length) {
            if (iResolveDefaultParameter - i10 >= 0) {
                return (i10 == 0 && iResolveDefaultParameter == byteString.getData().length) ? byteString : new okio.ByteString(ArraysKt.q(byteString.getData(), i10, iResolveDefaultParameter));
            }
            throw new IllegalArgumentException("endIndex < beginIndex");
        }
        throw new IllegalArgumentException(("endIndex > length(" + byteString.getData().length + ')').toString());
    }

    public static final okio.ByteString commonToAsciiLowercase(okio.ByteString byteString) {
        Intrinsics.h(byteString, "<this>");
        for (int i10 = 0; i10 < byteString.getData().length; i10++) {
            byte b10 = byteString.getData()[i10];
            if (b10 >= 65 && b10 <= 90) {
                byte[] data = byteString.getData();
                byte[] bArrCopyOf = Arrays.copyOf(data, data.length);
                Intrinsics.g(bArrCopyOf, "copyOf(this, size)");
                bArrCopyOf[i10] = (byte) (b10 + 32);
                for (int i11 = i10 + 1; i11 < bArrCopyOf.length; i11++) {
                    byte b11 = bArrCopyOf[i11];
                    if (b11 >= 65 && b11 <= 90) {
                        bArrCopyOf[i11] = (byte) (b11 + 32);
                    }
                }
                return new okio.ByteString(bArrCopyOf);
            }
        }
        return byteString;
    }

    public static final okio.ByteString commonToAsciiUppercase(okio.ByteString byteString) {
        Intrinsics.h(byteString, "<this>");
        for (int i10 = 0; i10 < byteString.getData().length; i10++) {
            byte b10 = byteString.getData()[i10];
            if (b10 >= 97 && b10 <= 122) {
                byte[] data = byteString.getData();
                byte[] bArrCopyOf = Arrays.copyOf(data, data.length);
                Intrinsics.g(bArrCopyOf, "copyOf(this, size)");
                bArrCopyOf[i10] = (byte) (b10 - 32);
                for (int i11 = i10 + 1; i11 < bArrCopyOf.length; i11++) {
                    byte b11 = bArrCopyOf[i11];
                    if (b11 >= 97 && b11 <= 122) {
                        bArrCopyOf[i11] = (byte) (b11 - 32);
                    }
                }
                return new okio.ByteString(bArrCopyOf);
            }
        }
        return byteString;
    }

    public static final byte[] commonToByteArray(okio.ByteString byteString) {
        Intrinsics.h(byteString, "<this>");
        byte[] data = byteString.getData();
        byte[] bArrCopyOf = Arrays.copyOf(data, data.length);
        Intrinsics.g(bArrCopyOf, "copyOf(this, size)");
        return bArrCopyOf;
    }

    public static final okio.ByteString commonToByteString(byte[] bArr, int i10, int i11) {
        Intrinsics.h(bArr, "<this>");
        int iResolveDefaultParameter = SegmentedByteString.resolveDefaultParameter(bArr, i11);
        SegmentedByteString.checkOffsetAndCount(bArr.length, i10, iResolveDefaultParameter);
        return new okio.ByteString(ArraysKt.q(bArr, i10, iResolveDefaultParameter + i10));
    }

    public static final String commonToString(okio.ByteString byteString) {
        okio.ByteString byteString2 = byteString;
        Intrinsics.h(byteString2, "<this>");
        if (byteString.getData().length == 0) {
            return "[size=0]";
        }
        int iCodePointIndexToCharIndex = codePointIndexToCharIndex(byteString.getData(), 64);
        if (iCodePointIndexToCharIndex != -1) {
            String strUtf8 = byteString.utf8();
            String strSubstring = strUtf8.substring(0, iCodePointIndexToCharIndex);
            Intrinsics.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            String strQ = StringsKt.Q(StringsKt.Q(StringsKt.Q(strSubstring, "\\", "\\\\", false, 4, null), "\n", "\\n", false, 4, null), "\r", "\\r", false, 4, null);
            if (iCodePointIndexToCharIndex >= strUtf8.length()) {
                return "[text=" + strQ + ']';
            }
            return "[size=" + byteString.getData().length + " text=" + strQ + "…]";
        }
        if (byteString.getData().length <= 64) {
            return "[hex=" + byteString.hex() + ']';
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("[size=");
        sb2.append(byteString.getData().length);
        sb2.append(" hex=");
        int iResolveDefaultParameter = SegmentedByteString.resolveDefaultParameter(byteString2, 64);
        if (iResolveDefaultParameter > byteString.getData().length) {
            throw new IllegalArgumentException(("endIndex > length(" + byteString.getData().length + ')').toString());
        }
        if (iResolveDefaultParameter < 0) {
            throw new IllegalArgumentException("endIndex < beginIndex");
        }
        if (iResolveDefaultParameter != byteString.getData().length) {
            byteString2 = new okio.ByteString(ArraysKt.q(byteString.getData(), 0, iResolveDefaultParameter));
        }
        sb2.append(byteString2.hex());
        sb2.append("…]");
        return sb2.toString();
    }

    public static final String commonUtf8(okio.ByteString byteString) {
        Intrinsics.h(byteString, "<this>");
        String utf8 = byteString.getUtf8();
        if (utf8 != null) {
            return utf8;
        }
        String utf8String = _JvmPlatformKt.toUtf8String(byteString.internalArray$okio());
        byteString.setUtf8$okio(utf8String);
        return utf8String;
    }

    public static final void commonWrite(okio.ByteString byteString, Buffer buffer, int i10, int i11) {
        Intrinsics.h(byteString, "<this>");
        Intrinsics.h(buffer, "buffer");
        buffer.write(byteString.getData(), i10, i11);
    }

    public static final int decodeHexDigit(char c10) {
        if ('0' <= c10 && c10 < ':') {
            return c10 - '0';
        }
        if ('a' <= c10 && c10 < 'g') {
            return c10 - 'W';
        }
        if ('A' <= c10 && c10 < 'G') {
            return c10 - '7';
        }
        throw new IllegalArgumentException("Unexpected hex digit: " + c10);
    }

    public static final char[] getHEX_DIGIT_CHARS() {
        return HEX_DIGIT_CHARS;
    }

    public static void getHEX_DIGIT_CHARS$annotations() {
    }

    public static final boolean commonEndsWith(okio.ByteString byteString, byte[] suffix) {
        Intrinsics.h(byteString, "<this>");
        Intrinsics.h(suffix, "suffix");
        return byteString.rangeEquals(byteString.size() - suffix.length, suffix, 0, suffix.length);
    }

    public static final int commonLastIndexOf(okio.ByteString byteString, byte[] other, int i10) {
        Intrinsics.h(byteString, "<this>");
        Intrinsics.h(other, "other");
        for (int iMin = Math.min(SegmentedByteString.resolveDefaultParameter(byteString, i10), byteString.getData().length - other.length); -1 < iMin; iMin--) {
            if (SegmentedByteString.arrayRangeEquals(byteString.getData(), iMin, other, 0, other.length)) {
                return iMin;
            }
        }
        return -1;
    }

    public static final boolean commonRangeEquals(okio.ByteString byteString, int i10, byte[] other, int i11, int i12) {
        Intrinsics.h(byteString, "<this>");
        Intrinsics.h(other, "other");
        return i10 >= 0 && i10 <= byteString.getData().length - i12 && i11 >= 0 && i11 <= other.length - i12 && SegmentedByteString.arrayRangeEquals(byteString.getData(), i10, other, i11, i12);
    }

    public static final boolean commonStartsWith(okio.ByteString byteString, byte[] prefix) {
        Intrinsics.h(byteString, "<this>");
        Intrinsics.h(prefix, "prefix");
        return byteString.rangeEquals(0, prefix, 0, prefix.length);
    }
}
