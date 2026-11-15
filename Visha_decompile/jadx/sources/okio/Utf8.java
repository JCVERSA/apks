package okio;

import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.socket.pkgdata.SocketData;
import defpackage.e74;
import defpackage.y45;
import defpackage.zfb;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000@\n\u0002\u0010\u000e\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010\f\n\u0002\b\u0011\u001a'\u0010\u0007\u001a\u00020\u0004*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0001H\u0080\b¢\u0006\u0004\b\n\u0010\u000b\u001a\u0018\u0010\u000e\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\fH\u0080\b¢\u0006\u0004\b\u000e\u0010\u000f\u001a;\u0010\u0013\u001a\u00020\u0011*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u00110\u0010H\u0080\bø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014\u001a;\u0010\u0016\u001a\u00020\u0011*\u00020\u00152\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00110\u0010H\u0080\bø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0017\u001a;\u0010\u0019\u001a\u00020\u0011*\u00020\u00152\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00110\u0010H\u0080\bø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\u0017\u001a;\u0010\u001a\u001a\u00020\u0001*\u00020\u00152\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00110\u0010H\u0080\bø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u001b\u001a;\u0010\u001c\u001a\u00020\u0001*\u00020\u00152\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00110\u0010H\u0080\bø\u0001\u0000¢\u0006\u0004\b\u001c\u0010\u001b\u001a;\u0010\u001d\u001a\u00020\u0001*\u00020\u00152\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00110\u0010H\u0080\bø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\u001b\"\u0014\u0010\u001e\u001a\u00020\f8\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u001e\u0010\u001f\"\u0014\u0010 \u001a\u00020\u00188\u0000X\u0080T¢\u0006\u0006\n\u0004\b \u0010!\"\u0014\u0010\"\u001a\u00020\u00018\u0000X\u0080T¢\u0006\u0006\n\u0004\b\"\u0010#\"\u0014\u0010$\u001a\u00020\u00018\u0000X\u0080T¢\u0006\u0006\n\u0004\b$\u0010#\"\u0014\u0010%\u001a\u00020\u00018\u0000X\u0080T¢\u0006\u0006\n\u0004\b%\u0010#\"\u0014\u0010&\u001a\u00020\u00018\u0000X\u0080T¢\u0006\u0006\n\u0004\b&\u0010#\"\u0014\u0010'\u001a\u00020\u00018\u0000X\u0080T¢\u0006\u0006\n\u0004\b'\u0010#\"\u0014\u0010(\u001a\u00020\u00018\u0000X\u0080T¢\u0006\u0006\n\u0004\b(\u0010#\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006)"}, d2 = {"", "", "beginIndex", "endIndex", "", PlayAudioData.TAG_SIZE, "(Ljava/lang/String;II)J", "utf8Size", "codePoint", "", "isIsoControl", "(I)Z", "", "byte", "isUtf8Continuation", "(B)Z", "Lkotlin/Function1;", "Lzfb;", "yield", "processUtf8Bytes", "(Ljava/lang/String;IILe74;)V", "", "processUtf8CodePoints", "([BIILe74;)V", "", "processUtf16Chars", "process2Utf8Bytes", "([BIILe74;)I", "process3Utf8Bytes", "process4Utf8Bytes", "REPLACEMENT_BYTE", "B", "REPLACEMENT_CHARACTER", "C", "REPLACEMENT_CODE_POINT", "I", "HIGH_SURROGATE_HEADER", "LOG_SURROGATE_HEADER", "MASK_2BYTES", "MASK_3BYTES", "MASK_4BYTES", "okio"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class Utf8 {
    public static final int HIGH_SURROGATE_HEADER = 55232;
    public static final int LOG_SURROGATE_HEADER = 56320;
    public static final int MASK_2BYTES = 3968;
    public static final int MASK_3BYTES = -123008;
    public static final int MASK_4BYTES = 3678080;
    public static final byte REPLACEMENT_BYTE = 63;
    public static final char REPLACEMENT_CHARACTER = 65533;
    public static final int REPLACEMENT_CODE_POINT = 65533;

    public static final boolean isIsoControl(int i) {
        return (i >= 0 && i < 32) || (127 <= i && i < 160);
    }

    public static final boolean isUtf8Continuation(byte b) {
        return (b & 192) == 128;
    }

    public static final int process2Utf8Bytes(byte[] bArr, int i, int i2, e74 e74Var) {
        y45.j(bArr, "<this>");
        y45.j(e74Var, "yield");
        int i3 = i + 1;
        Integer numValueOf = Integer.valueOf(REPLACEMENT_CODE_POINT);
        if (i2 <= i3) {
            e74Var.invoke(numValueOf);
            return 1;
        }
        byte b = bArr[i];
        byte b2 = bArr[i3];
        if ((b2 & 192) != 128) {
            e74Var.invoke(numValueOf);
            return 1;
        }
        int i4 = (b2 ^ SocketData.CLAZZ_TYPE_END_SOCKET) ^ (b << 6);
        if (i4 < 128) {
            e74Var.invoke(numValueOf);
            return 2;
        }
        e74Var.invoke(Integer.valueOf(i4));
        return 2;
    }

    public static final int process3Utf8Bytes(byte[] bArr, int i, int i2, e74 e74Var) {
        y45.j(bArr, "<this>");
        y45.j(e74Var, "yield");
        int i3 = i + 2;
        Integer numValueOf = Integer.valueOf(REPLACEMENT_CODE_POINT);
        if (i2 <= i3) {
            e74Var.invoke(numValueOf);
            int i4 = i + 1;
            return (i2 <= i4 || (bArr[i4] & 192) != 128) ? 1 : 2;
        }
        byte b = bArr[i];
        byte b2 = bArr[i + 1];
        if ((b2 & 192) != 128) {
            e74Var.invoke(numValueOf);
            return 1;
        }
        byte b3 = bArr[i3];
        if ((b3 & 192) != 128) {
            e74Var.invoke(numValueOf);
            return 2;
        }
        int i5 = ((b3 ^ SocketData.CLAZZ_TYPE_END_SOCKET) ^ (b2 << 6)) ^ (b << 12);
        if (i5 < 2048) {
            e74Var.invoke(numValueOf);
            return 3;
        }
        if (55296 > i5 || i5 >= 57344) {
            e74Var.invoke(Integer.valueOf(i5));
            return 3;
        }
        e74Var.invoke(numValueOf);
        return 3;
    }

    public static final int process4Utf8Bytes(byte[] bArr, int i, int i2, e74 e74Var) {
        y45.j(bArr, "<this>");
        y45.j(e74Var, "yield");
        int i3 = i + 3;
        Integer numValueOf = Integer.valueOf(REPLACEMENT_CODE_POINT);
        if (i2 <= i3) {
            e74Var.invoke(numValueOf);
            int i4 = i + 1;
            if (i2 <= i4 || (bArr[i4] & 192) != 128) {
                return 1;
            }
            int i5 = i + 2;
            return (i2 <= i5 || (bArr[i5] & 192) != 128) ? 2 : 3;
        }
        byte b = bArr[i];
        byte b2 = bArr[i + 1];
        if ((b2 & 192) != 128) {
            e74Var.invoke(numValueOf);
            return 1;
        }
        byte b3 = bArr[i + 2];
        if ((b3 & 192) != 128) {
            e74Var.invoke(numValueOf);
            return 2;
        }
        byte b4 = bArr[i3];
        if ((b4 & 192) != 128) {
            e74Var.invoke(numValueOf);
            return 3;
        }
        int i6 = (((b4 ^ SocketData.CLAZZ_TYPE_END_SOCKET) ^ (b3 << 6)) ^ (b2 << 12)) ^ (b << 18);
        if (i6 > 1114111) {
            e74Var.invoke(numValueOf);
            return 4;
        }
        if (55296 <= i6 && i6 < 57344) {
            e74Var.invoke(numValueOf);
            return 4;
        }
        if (i6 < 65536) {
            e74Var.invoke(numValueOf);
            return 4;
        }
        e74Var.invoke(Integer.valueOf(i6));
        return 4;
    }

    public static final void processUtf16Chars(byte[] bArr, int i, int i2, e74 e74Var) {
        int i3;
        int i4;
        y45.j(bArr, "<this>");
        y45.j(e74Var, "yield");
        int i5 = i;
        while (i5 < i2) {
            byte b = bArr[i5];
            if (b >= 0) {
                e74Var.invoke(Character.valueOf((char) b));
                i5++;
                while (i5 < i2) {
                    byte b2 = bArr[i5];
                    if (b2 < 0) {
                        break;
                    }
                    i5++;
                    e74Var.invoke(Character.valueOf((char) b2));
                }
            } else if ((b >> 5) == -2) {
                int i6 = i5 + 1;
                if (i2 > i6) {
                    byte b3 = bArr[i6];
                    if ((b3 & 192) == 128) {
                        int i7 = (b << 6) ^ (b3 ^ SocketData.CLAZZ_TYPE_END_SOCKET);
                        e74Var.invoke(Character.valueOf(i7 < 128 ? (char) REPLACEMENT_CODE_POINT : (char) i7));
                        zfb zfbVar = zfb.a;
                        i5 += i3;
                    }
                }
                e74Var.invoke(Character.valueOf((char) REPLACEMENT_CODE_POINT));
                zfb zfbVar2 = zfb.a;
                i5 += i3;
            } else if ((b >> 4) == -2) {
                int i8 = i5 + 2;
                if (i2 <= i8) {
                    e74Var.invoke(Character.valueOf((char) REPLACEMENT_CODE_POINT));
                    zfb zfbVar3 = zfb.a;
                    int i9 = i5 + 1;
                    i3 = (i2 <= i9 || (bArr[i9] & 192) != 128) ? 1 : 2;
                } else {
                    byte b4 = bArr[i5 + 1];
                    if ((b4 & 192) == 128) {
                        byte b5 = bArr[i8];
                        if ((b5 & 192) == 128) {
                            int i10 = (b << 12) ^ ((b5 ^ SocketData.CLAZZ_TYPE_END_SOCKET) ^ (b4 << 6));
                            e74Var.invoke(Character.valueOf((i10 >= 2048 && (55296 > i10 || i10 >= 57344)) ? (char) i10 : (char) REPLACEMENT_CODE_POINT));
                            zfb zfbVar4 = zfb.a;
                            i3 = 3;
                        } else {
                            e74Var.invoke(Character.valueOf((char) REPLACEMENT_CODE_POINT));
                            zfb zfbVar5 = zfb.a;
                        }
                    } else {
                        e74Var.invoke(Character.valueOf((char) REPLACEMENT_CODE_POINT));
                        zfb zfbVar6 = zfb.a;
                    }
                }
                i5 += i3;
            } else if ((b >> 3) == -2) {
                int i11 = i5 + 3;
                if (i2 <= i11) {
                    e74Var.invoke(Character.valueOf(REPLACEMENT_CHARACTER));
                    zfb zfbVar7 = zfb.a;
                    int i12 = i5 + 1;
                    if (i2 <= i12 || (bArr[i12] & 192) != 128) {
                        i4 = 1;
                    } else {
                        int i13 = i5 + 2;
                        i4 = (i2 <= i13 || (bArr[i13] & 192) != 128) ? 2 : 3;
                    }
                } else {
                    byte b6 = bArr[i5 + 1];
                    if ((b6 & 192) == 128) {
                        byte b7 = bArr[i5 + 2];
                        if ((b7 & 192) == 128) {
                            byte b8 = bArr[i11];
                            if ((b8 & 192) == 128) {
                                int i14 = (((b8 ^ SocketData.CLAZZ_TYPE_END_SOCKET) ^ (b7 << 6)) ^ (b6 << 12)) ^ (b << 18);
                                if (i14 <= 1114111 && ((55296 > i14 || i14 >= 57344) && i14 >= 65536 && i14 != 65533)) {
                                    e74Var.invoke(Character.valueOf((char) ((i14 >>> 10) + HIGH_SURROGATE_HEADER)));
                                    e74Var.invoke(Character.valueOf((char) ((i14 & AnalyticsListener.EVENT_DRM_KEYS_LOADED) + LOG_SURROGATE_HEADER)));
                                } else {
                                    e74Var.invoke(Character.valueOf(REPLACEMENT_CHARACTER));
                                }
                                zfb zfbVar8 = zfb.a;
                                i4 = 4;
                            } else {
                                e74Var.invoke(Character.valueOf(REPLACEMENT_CHARACTER));
                                zfb zfbVar9 = zfb.a;
                            }
                        } else {
                            e74Var.invoke(Character.valueOf(REPLACEMENT_CHARACTER));
                            zfb zfbVar10 = zfb.a;
                        }
                    } else {
                        e74Var.invoke(Character.valueOf(REPLACEMENT_CHARACTER));
                        zfb zfbVar11 = zfb.a;
                        i4 = 1;
                    }
                }
                i5 += i4;
            } else {
                e74Var.invoke(Character.valueOf(REPLACEMENT_CHARACTER));
                i5++;
            }
        }
    }

    public static final void processUtf8Bytes(String str, int i, int i2, e74 e74Var) {
        int i3;
        char cCharAt;
        y45.j(str, "<this>");
        y45.j(e74Var, "yield");
        while (i < i2) {
            char cCharAt2 = str.charAt(i);
            if (y45.l(cCharAt2, 128) < 0) {
                e74Var.invoke(Byte.valueOf((byte) cCharAt2));
                i++;
                while (i < i2 && y45.l(str.charAt(i), 128) < 0) {
                    e74Var.invoke(Byte.valueOf((byte) str.charAt(i)));
                    i++;
                }
            } else {
                if (y45.l(cCharAt2, 2048) < 0) {
                    e74Var.invoke(Byte.valueOf((byte) ((cCharAt2 >> 6) | 192)));
                    e74Var.invoke(Byte.valueOf((byte) ((cCharAt2 & '?') | 128)));
                } else if (55296 > cCharAt2 || cCharAt2 >= 57344) {
                    e74Var.invoke(Byte.valueOf((byte) ((cCharAt2 >> '\f') | 224)));
                    e74Var.invoke(Byte.valueOf((byte) (((cCharAt2 >> 6) & 63) | 128)));
                    e74Var.invoke(Byte.valueOf((byte) ((cCharAt2 & '?') | 128)));
                } else if (y45.l(cCharAt2, 56319) > 0 || i2 <= (i3 = i + 1) || 56320 > (cCharAt = str.charAt(i3)) || cCharAt >= 57344) {
                    e74Var.invoke(Byte.valueOf(REPLACEMENT_BYTE));
                } else {
                    int iCharAt = ((cCharAt2 << '\n') + str.charAt(i3)) - 56613888;
                    e74Var.invoke(Byte.valueOf((byte) ((iCharAt >> 18) | 240)));
                    e74Var.invoke(Byte.valueOf((byte) (((iCharAt >> 12) & 63) | 128)));
                    e74Var.invoke(Byte.valueOf((byte) (((iCharAt >> 6) & 63) | 128)));
                    e74Var.invoke(Byte.valueOf((byte) ((iCharAt & 63) | 128)));
                    i += 2;
                }
                i++;
            }
        }
    }

    public static final void processUtf8CodePoints(byte[] bArr, int i, int i2, e74 e74Var) {
        int i3;
        int i4;
        y45.j(bArr, "<this>");
        y45.j(e74Var, "yield");
        int i5 = i;
        while (i5 < i2) {
            byte b = bArr[i5];
            if (b >= 0) {
                e74Var.invoke(Integer.valueOf(b));
                i5++;
                while (i5 < i2) {
                    byte b2 = bArr[i5];
                    if (b2 < 0) {
                        break;
                    }
                    i5++;
                    e74Var.invoke(Integer.valueOf(b2));
                }
            } else if ((b >> 5) == -2) {
                int i6 = i5 + 1;
                if (i2 > i6) {
                    byte b3 = bArr[i6];
                    if ((b3 & 192) == 128) {
                        int i7 = (b << 6) ^ (b3 ^ SocketData.CLAZZ_TYPE_END_SOCKET);
                        e74Var.invoke(i7 < 128 ? Integer.valueOf(REPLACEMENT_CODE_POINT) : Integer.valueOf(i7));
                        zfb zfbVar = zfb.a;
                        i5 += i3;
                    }
                }
                e74Var.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                zfb zfbVar2 = zfb.a;
                i5 += i3;
            } else if ((b >> 4) == -2) {
                int i8 = i5 + 2;
                if (i2 <= i8) {
                    e74Var.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                    zfb zfbVar3 = zfb.a;
                    int i9 = i5 + 1;
                    i3 = (i2 <= i9 || (bArr[i9] & 192) != 128) ? 1 : 2;
                } else {
                    byte b4 = bArr[i5 + 1];
                    if ((b4 & 192) == 128) {
                        byte b5 = bArr[i8];
                        if ((b5 & 192) == 128) {
                            int i10 = (b << 12) ^ ((b5 ^ SocketData.CLAZZ_TYPE_END_SOCKET) ^ (b4 << 6));
                            e74Var.invoke((i10 >= 2048 && (55296 > i10 || i10 >= 57344)) ? Integer.valueOf(i10) : Integer.valueOf(REPLACEMENT_CODE_POINT));
                            zfb zfbVar4 = zfb.a;
                            i3 = 3;
                        } else {
                            e74Var.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                            zfb zfbVar5 = zfb.a;
                        }
                    } else {
                        e74Var.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                        zfb zfbVar6 = zfb.a;
                    }
                }
                i5 += i3;
            } else if ((b >> 3) == -2) {
                int i11 = i5 + 3;
                if (i2 <= i11) {
                    e74Var.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                    zfb zfbVar7 = zfb.a;
                    int i12 = i5 + 1;
                    if (i2 <= i12 || (bArr[i12] & 192) != 128) {
                        i4 = 1;
                    } else {
                        int i13 = i5 + 2;
                        i4 = (i2 <= i13 || (bArr[i13] & 192) != 128) ? 2 : 3;
                    }
                } else {
                    byte b6 = bArr[i5 + 1];
                    if ((b6 & 192) == 128) {
                        byte b7 = bArr[i5 + 2];
                        if ((b7 & 192) == 128) {
                            byte b8 = bArr[i11];
                            if ((b8 & 192) == 128) {
                                int i14 = (((b8 ^ SocketData.CLAZZ_TYPE_END_SOCKET) ^ (b7 << 6)) ^ (b6 << 12)) ^ (b << 18);
                                e74Var.invoke((i14 <= 1114111 && (55296 > i14 || i14 >= 57344) && i14 >= 65536) ? Integer.valueOf(i14) : Integer.valueOf(REPLACEMENT_CODE_POINT));
                                zfb zfbVar8 = zfb.a;
                                i4 = 4;
                            } else {
                                e74Var.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                                zfb zfbVar9 = zfb.a;
                            }
                        } else {
                            e74Var.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                            zfb zfbVar10 = zfb.a;
                        }
                    } else {
                        e74Var.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                        zfb zfbVar11 = zfb.a;
                        i4 = 1;
                    }
                }
                i5 += i4;
            } else {
                e74Var.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                i5++;
            }
        }
    }

    public static final long size(String str) {
        y45.j(str, "<this>");
        return size$default(str, 0, 0, 3, null);
    }

    public static long size$default(String str, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = str.length();
        }
        return size(str, i, i2);
    }

    public static final long size(String str, int i) {
        y45.j(str, "<this>");
        return size$default(str, i, 0, 2, null);
    }

    public static final long size(String str, int i, int i2) {
        int i3;
        y45.j(str, "<this>");
        if (i < 0) {
            throw new IllegalArgumentException(("beginIndex < 0: " + i).toString());
        }
        if (i2 >= i) {
            if (i2 > str.length()) {
                throw new IllegalArgumentException(("endIndex > string.length: " + i2 + " > " + str.length()).toString());
            }
            long j = 0;
            while (i < i2) {
                char cCharAt = str.charAt(i);
                if (cCharAt < 128) {
                    j++;
                } else {
                    if (cCharAt < 2048) {
                        i3 = 2;
                    } else if (cCharAt < 55296 || cCharAt > 57343) {
                        i3 = 3;
                    } else {
                        int i4 = i + 1;
                        char cCharAt2 = i4 < i2 ? str.charAt(i4) : (char) 0;
                        if (cCharAt > 56319 || cCharAt2 < 56320 || cCharAt2 > 57343) {
                            j++;
                            i = i4;
                        } else {
                            j += (long) 4;
                            i += 2;
                        }
                    }
                    j += (long) i3;
                }
                i++;
            }
            return j;
        }
        throw new IllegalArgumentException(("endIndex < beginIndex: " + i2 + " < " + i).toString());
    }
}
