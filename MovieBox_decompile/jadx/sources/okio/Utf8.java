package okio;

import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000D\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\f\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\u001a\u0011\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0001H\u0080\b\u001a\u0011\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u0007H\u0080\b\u001a4\u0010\u0010\u001a\u00020\u0001*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00160\u0015H\u0080\bø\u0001\u0000\u001a4\u0010\u0017\u001a\u00020\u0001*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00160\u0015H\u0080\bø\u0001\u0000\u001a4\u0010\u0018\u001a\u00020\u0001*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00160\u0015H\u0080\bø\u0001\u0000\u001a4\u0010\u0019\u001a\u00020\u0016*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00160\u0015H\u0080\bø\u0001\u0000\u001a4\u0010\u001a\u001a\u00020\u0016*\u00020\u001b2\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00160\u0015H\u0080\bø\u0001\u0000\u001a4\u0010\u001c\u001a\u00020\u0016*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00160\u0015H\u0080\bø\u0001\u0000\u001a%\u0010\u001d\u001a\u00020\u001e*\u00020\u001b2\b\b\u0002\u0010\u0012\u001a\u00020\u00012\b\b\u0002\u0010\u0013\u001a\u00020\u0001H\u0007¢\u0006\u0002\b\u001f\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0007X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\b\u001a\u00020\tX\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006 "}, d2 = {"HIGH_SURROGATE_HEADER", "", "LOG_SURROGATE_HEADER", "MASK_2BYTES", "MASK_3BYTES", "MASK_4BYTES", "REPLACEMENT_BYTE", "", "REPLACEMENT_CHARACTER", "", "REPLACEMENT_CODE_POINT", "isIsoControl", "", "codePoint", "isUtf8Continuation", "byte", "process2Utf8Bytes", "", "beginIndex", "endIndex", "yield", "Lkotlin/Function1;", "", "process3Utf8Bytes", "process4Utf8Bytes", "processUtf16Chars", "processUtf8Bytes", "", "processUtf8CodePoints", "utf8Size", "", "size", "okio"}, k = 2, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@JvmName
@SourceDebugExtension
public final class Utf8 {
    public static final int HIGH_SURROGATE_HEADER = 55232;
    public static final int LOG_SURROGATE_HEADER = 56320;
    public static final int MASK_2BYTES = 3968;
    public static final int MASK_3BYTES = -123008;
    public static final int MASK_4BYTES = 3678080;
    public static final byte REPLACEMENT_BYTE = 63;
    public static final char REPLACEMENT_CHARACTER = 65533;
    public static final int REPLACEMENT_CODE_POINT = 65533;

    public static final boolean isIsoControl(int i10) {
        return (i10 >= 0 && i10 < 32) || (127 <= i10 && i10 < 160);
    }

    public static final boolean isUtf8Continuation(byte b10) {
        return (b10 & 192) == 128;
    }

    public static final int process2Utf8Bytes(byte[] bArr, int i10, int i11, Function1<? super Integer, Unit> yield) {
        Intrinsics.h(bArr, "<this>");
        Intrinsics.h(yield, "yield");
        int i12 = i10 + 1;
        Integer numValueOf = Integer.valueOf(REPLACEMENT_CODE_POINT);
        if (i11 <= i12) {
            yield.invoke(numValueOf);
            return 1;
        }
        byte b10 = bArr[i10];
        byte b11 = bArr[i12];
        if ((b11 & 192) != 128) {
            yield.invoke(numValueOf);
            return 1;
        }
        int i13 = (b11 ^ 3968) ^ (b10 << 6);
        if (i13 < 128) {
            yield.invoke(numValueOf);
            return 2;
        }
        yield.invoke(Integer.valueOf(i13));
        return 2;
    }

    public static final int process3Utf8Bytes(byte[] bArr, int i10, int i11, Function1<? super Integer, Unit> yield) {
        Intrinsics.h(bArr, "<this>");
        Intrinsics.h(yield, "yield");
        int i12 = i10 + 2;
        Integer numValueOf = Integer.valueOf(REPLACEMENT_CODE_POINT);
        if (i11 <= i12) {
            yield.invoke(numValueOf);
            int i13 = i10 + 1;
            return (i11 <= i13 || (bArr[i13] & 192) != 128) ? 1 : 2;
        }
        byte b10 = bArr[i10];
        byte b11 = bArr[i10 + 1];
        if ((b11 & 192) != 128) {
            yield.invoke(numValueOf);
            return 1;
        }
        byte b12 = bArr[i12];
        if ((b12 & 192) != 128) {
            yield.invoke(numValueOf);
            return 2;
        }
        int i14 = ((b12 ^ (-123008)) ^ (b11 << 6)) ^ (b10 << 12);
        if (i14 < 2048) {
            yield.invoke(numValueOf);
            return 3;
        }
        if (55296 > i14 || i14 >= 57344) {
            yield.invoke(Integer.valueOf(i14));
            return 3;
        }
        yield.invoke(numValueOf);
        return 3;
    }

    public static final int process4Utf8Bytes(byte[] bArr, int i10, int i11, Function1<? super Integer, Unit> yield) {
        Intrinsics.h(bArr, "<this>");
        Intrinsics.h(yield, "yield");
        int i12 = i10 + 3;
        Integer numValueOf = Integer.valueOf(REPLACEMENT_CODE_POINT);
        if (i11 <= i12) {
            yield.invoke(numValueOf);
            int i13 = i10 + 1;
            if (i11 <= i13 || (bArr[i13] & 192) != 128) {
                return 1;
            }
            int i14 = i10 + 2;
            return (i11 <= i14 || (bArr[i14] & 192) != 128) ? 2 : 3;
        }
        byte b10 = bArr[i10];
        byte b11 = bArr[i10 + 1];
        if ((b11 & 192) != 128) {
            yield.invoke(numValueOf);
            return 1;
        }
        byte b12 = bArr[i10 + 2];
        if ((b12 & 192) != 128) {
            yield.invoke(numValueOf);
            return 2;
        }
        byte b13 = bArr[i12];
        if ((b13 & 192) != 128) {
            yield.invoke(numValueOf);
            return 3;
        }
        int i15 = (((b13 ^ 3678080) ^ (b12 << 6)) ^ (b11 << 12)) ^ (b10 << 18);
        if (i15 > 1114111) {
            yield.invoke(numValueOf);
            return 4;
        }
        if (55296 <= i15 && i15 < 57344) {
            yield.invoke(numValueOf);
            return 4;
        }
        if (i15 < 65536) {
            yield.invoke(numValueOf);
            return 4;
        }
        yield.invoke(Integer.valueOf(i15));
        return 4;
    }

    public static final void processUtf16Chars(byte[] bArr, int i10, int i11, Function1<? super Character, Unit> yield) {
        int i12;
        int i13;
        Intrinsics.h(bArr, "<this>");
        Intrinsics.h(yield, "yield");
        int i14 = i10;
        while (i14 < i11) {
            byte b10 = bArr[i14];
            if (b10 >= 0) {
                yield.invoke(Character.valueOf((char) b10));
                i14++;
                while (i14 < i11) {
                    byte b11 = bArr[i14];
                    if (b11 < 0) {
                        break;
                    }
                    i14++;
                    yield.invoke(Character.valueOf((char) b11));
                }
            } else if ((b10 >> 5) == -2) {
                int i15 = i14 + 1;
                if (i11 > i15) {
                    byte b12 = bArr[i15];
                    if ((b12 & 192) == 128) {
                        int i16 = (b10 << 6) ^ (b12 ^ 3968);
                        yield.invoke(Character.valueOf(i16 < 128 ? (char) REPLACEMENT_CODE_POINT : (char) i16));
                        Unit unit = Unit.f64096a;
                        i14 += i12;
                    }
                }
                yield.invoke(Character.valueOf((char) REPLACEMENT_CODE_POINT));
                Unit unit2 = Unit.f64096a;
                i14 += i12;
            } else if ((b10 >> 4) == -2) {
                int i17 = i14 + 2;
                if (i11 <= i17) {
                    yield.invoke(Character.valueOf((char) REPLACEMENT_CODE_POINT));
                    Unit unit3 = Unit.f64096a;
                    int i18 = i14 + 1;
                    i12 = (i11 <= i18 || (bArr[i18] & 192) != 128) ? 1 : 2;
                } else {
                    byte b13 = bArr[i14 + 1];
                    if ((b13 & 192) == 128) {
                        byte b14 = bArr[i17];
                        if ((b14 & 192) == 128) {
                            int i19 = (b10 << 12) ^ ((b14 ^ (-123008)) ^ (b13 << 6));
                            yield.invoke(Character.valueOf((i19 >= 2048 && (55296 > i19 || i19 >= 57344)) ? (char) i19 : (char) REPLACEMENT_CODE_POINT));
                            Unit unit4 = Unit.f64096a;
                            i12 = 3;
                        } else {
                            yield.invoke(Character.valueOf((char) REPLACEMENT_CODE_POINT));
                            Unit unit5 = Unit.f64096a;
                        }
                    } else {
                        yield.invoke(Character.valueOf((char) REPLACEMENT_CODE_POINT));
                        Unit unit6 = Unit.f64096a;
                    }
                }
                i14 += i12;
            } else if ((b10 >> 3) == -2) {
                int i20 = i14 + 3;
                if (i11 <= i20) {
                    yield.invoke(Character.valueOf(REPLACEMENT_CHARACTER));
                    Unit unit7 = Unit.f64096a;
                    int i21 = i14 + 1;
                    if (i11 <= i21 || (bArr[i21] & 192) != 128) {
                        i13 = 1;
                    } else {
                        int i22 = i14 + 2;
                        i13 = (i11 <= i22 || (bArr[i22] & 192) != 128) ? 2 : 3;
                    }
                } else {
                    byte b15 = bArr[i14 + 1];
                    if ((b15 & 192) == 128) {
                        byte b16 = bArr[i14 + 2];
                        if ((b16 & 192) == 128) {
                            byte b17 = bArr[i20];
                            if ((b17 & 192) == 128) {
                                int i23 = (((b17 ^ 3678080) ^ (b16 << 6)) ^ (b15 << 12)) ^ (b10 << 18);
                                if (i23 <= 1114111 && ((55296 > i23 || i23 >= 57344) && i23 >= 65536 && i23 != 65533)) {
                                    yield.invoke(Character.valueOf((char) ((i23 >>> 10) + HIGH_SURROGATE_HEADER)));
                                    yield.invoke(Character.valueOf((char) ((i23 & 1023) + LOG_SURROGATE_HEADER)));
                                } else {
                                    yield.invoke(Character.valueOf(REPLACEMENT_CHARACTER));
                                }
                                Unit unit8 = Unit.f64096a;
                                i13 = 4;
                            } else {
                                yield.invoke(Character.valueOf(REPLACEMENT_CHARACTER));
                                Unit unit9 = Unit.f64096a;
                            }
                        } else {
                            yield.invoke(Character.valueOf(REPLACEMENT_CHARACTER));
                            Unit unit10 = Unit.f64096a;
                        }
                    } else {
                        yield.invoke(Character.valueOf(REPLACEMENT_CHARACTER));
                        Unit unit11 = Unit.f64096a;
                        i13 = 1;
                    }
                }
                i14 += i13;
            } else {
                yield.invoke(Character.valueOf(REPLACEMENT_CHARACTER));
                i14++;
            }
        }
    }

    public static final void processUtf8Bytes(String str, int i10, int i11, Function1<? super Byte, Unit> yield) {
        int i12;
        char cCharAt;
        Intrinsics.h(str, "<this>");
        Intrinsics.h(yield, "yield");
        while (i10 < i11) {
            char cCharAt2 = str.charAt(i10);
            if (Intrinsics.j(cCharAt2, 128) < 0) {
                yield.invoke(Byte.valueOf((byte) cCharAt2));
                i10++;
                while (i10 < i11 && Intrinsics.j(str.charAt(i10), 128) < 0) {
                    yield.invoke(Byte.valueOf((byte) str.charAt(i10)));
                    i10++;
                }
            } else {
                if (Intrinsics.j(cCharAt2, 2048) < 0) {
                    yield.invoke(Byte.valueOf((byte) ((cCharAt2 >> 6) | PsExtractor.AUDIO_STREAM)));
                    yield.invoke(Byte.valueOf((byte) ((cCharAt2 & '?') | 128)));
                } else if (55296 > cCharAt2 || cCharAt2 >= 57344) {
                    yield.invoke(Byte.valueOf((byte) ((cCharAt2 >> '\f') | 224)));
                    yield.invoke(Byte.valueOf((byte) (((cCharAt2 >> 6) & 63) | 128)));
                    yield.invoke(Byte.valueOf((byte) ((cCharAt2 & '?') | 128)));
                } else if (Intrinsics.j(cCharAt2, 56319) > 0 || i11 <= (i12 = i10 + 1) || 56320 > (cCharAt = str.charAt(i12)) || cCharAt >= 57344) {
                    yield.invoke(Byte.valueOf(REPLACEMENT_BYTE));
                } else {
                    int iCharAt = ((cCharAt2 << '\n') + str.charAt(i12)) - 56613888;
                    yield.invoke(Byte.valueOf((byte) ((iCharAt >> 18) | 240)));
                    yield.invoke(Byte.valueOf((byte) (((iCharAt >> 12) & 63) | 128)));
                    yield.invoke(Byte.valueOf((byte) (((iCharAt >> 6) & 63) | 128)));
                    yield.invoke(Byte.valueOf((byte) ((iCharAt & 63) | 128)));
                    i10 += 2;
                }
                i10++;
            }
        }
    }

    public static final void processUtf8CodePoints(byte[] bArr, int i10, int i11, Function1<? super Integer, Unit> yield) {
        int i12;
        int i13;
        Intrinsics.h(bArr, "<this>");
        Intrinsics.h(yield, "yield");
        int i14 = i10;
        while (i14 < i11) {
            byte b10 = bArr[i14];
            if (b10 >= 0) {
                yield.invoke(Integer.valueOf(b10));
                i14++;
                while (i14 < i11) {
                    byte b11 = bArr[i14];
                    if (b11 < 0) {
                        break;
                    }
                    i14++;
                    yield.invoke(Integer.valueOf(b11));
                }
            } else if ((b10 >> 5) == -2) {
                int i15 = i14 + 1;
                if (i11 > i15) {
                    byte b12 = bArr[i15];
                    if ((b12 & 192) == 128) {
                        int i16 = (b10 << 6) ^ (b12 ^ 3968);
                        yield.invoke(i16 < 128 ? Integer.valueOf(REPLACEMENT_CODE_POINT) : Integer.valueOf(i16));
                        Unit unit = Unit.f64096a;
                        i14 += i12;
                    }
                }
                yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                Unit unit2 = Unit.f64096a;
                i14 += i12;
            } else if ((b10 >> 4) == -2) {
                int i17 = i14 + 2;
                if (i11 <= i17) {
                    yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                    Unit unit3 = Unit.f64096a;
                    int i18 = i14 + 1;
                    i12 = (i11 <= i18 || (bArr[i18] & 192) != 128) ? 1 : 2;
                } else {
                    byte b13 = bArr[i14 + 1];
                    if ((b13 & 192) == 128) {
                        byte b14 = bArr[i17];
                        if ((b14 & 192) == 128) {
                            int i19 = (b10 << 12) ^ ((b14 ^ (-123008)) ^ (b13 << 6));
                            yield.invoke((i19 >= 2048 && (55296 > i19 || i19 >= 57344)) ? Integer.valueOf(i19) : Integer.valueOf(REPLACEMENT_CODE_POINT));
                            Unit unit4 = Unit.f64096a;
                            i12 = 3;
                        } else {
                            yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                            Unit unit5 = Unit.f64096a;
                        }
                    } else {
                        yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                        Unit unit6 = Unit.f64096a;
                    }
                }
                i14 += i12;
            } else if ((b10 >> 3) == -2) {
                int i20 = i14 + 3;
                if (i11 <= i20) {
                    yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                    Unit unit7 = Unit.f64096a;
                    int i21 = i14 + 1;
                    if (i11 <= i21 || (bArr[i21] & 192) != 128) {
                        i13 = 1;
                    } else {
                        int i22 = i14 + 2;
                        i13 = (i11 <= i22 || (bArr[i22] & 192) != 128) ? 2 : 3;
                    }
                } else {
                    byte b15 = bArr[i14 + 1];
                    if ((b15 & 192) == 128) {
                        byte b16 = bArr[i14 + 2];
                        if ((b16 & 192) == 128) {
                            byte b17 = bArr[i20];
                            if ((b17 & 192) == 128) {
                                int i23 = (((b17 ^ 3678080) ^ (b16 << 6)) ^ (b15 << 12)) ^ (b10 << 18);
                                yield.invoke((i23 <= 1114111 && (55296 > i23 || i23 >= 57344) && i23 >= 65536) ? Integer.valueOf(i23) : Integer.valueOf(REPLACEMENT_CODE_POINT));
                                Unit unit8 = Unit.f64096a;
                                i13 = 4;
                            } else {
                                yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                                Unit unit9 = Unit.f64096a;
                            }
                        } else {
                            yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                            Unit unit10 = Unit.f64096a;
                        }
                    } else {
                        yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                        Unit unit11 = Unit.f64096a;
                        i13 = 1;
                    }
                }
                i14 += i13;
            } else {
                yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                i14++;
            }
        }
    }

    @JvmOverloads
    @JvmName
    public static final long size(String str) {
        Intrinsics.h(str, "<this>");
        return size$default(str, 0, 0, 3, null);
    }

    public static long size$default(String str, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = str.length();
        }
        return size(str, i10, i11);
    }

    @JvmOverloads
    @JvmName
    public static final long size(String str, int i10) {
        Intrinsics.h(str, "<this>");
        return size$default(str, i10, 0, 2, null);
    }

    @JvmOverloads
    @JvmName
    public static final long size(String str, int i10, int i11) {
        int i12;
        Intrinsics.h(str, "<this>");
        if (i10 < 0) {
            throw new IllegalArgumentException(("beginIndex < 0: " + i10).toString());
        }
        if (i11 >= i10) {
            if (i11 > str.length()) {
                throw new IllegalArgumentException(("endIndex > string.length: " + i11 + " > " + str.length()).toString());
            }
            long j10 = 0;
            while (i10 < i11) {
                char cCharAt = str.charAt(i10);
                if (cCharAt < 128) {
                    j10++;
                } else {
                    if (cCharAt < 2048) {
                        i12 = 2;
                    } else if (cCharAt < 55296 || cCharAt > 57343) {
                        i12 = 3;
                    } else {
                        int i13 = i10 + 1;
                        char cCharAt2 = i13 < i11 ? str.charAt(i13) : (char) 0;
                        if (cCharAt > 56319 || cCharAt2 < 56320 || cCharAt2 > 57343) {
                            j10++;
                            i10 = i13;
                        } else {
                            j10 += (long) 4;
                            i10 += 2;
                        }
                    }
                    j10 += (long) i12;
                }
                i10++;
            }
            return j10;
        }
        throw new IllegalArgumentException(("endIndex < beginIndex: " + i11 + " < " + i10).toString());
    }
}
