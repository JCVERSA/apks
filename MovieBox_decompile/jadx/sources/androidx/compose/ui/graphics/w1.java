package androidx.compose.ui.graphics;

import androidx.compose.ui.graphics.colorspace.Rgb;
import kotlin.ULong;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.ws.WebSocketProtocol;

public abstract class w1 {
    /* JADX WARN: Code duplicated, block: B:102:0x0141  */
    /* JADX WARN: Code duplicated, block: B:103:0x0143  */
    /* JADX WARN: Code duplicated, block: B:105:0x0149  */
    /* JADX WARN: Code duplicated, block: B:107:0x0153  */
    /* JADX WARN: Code duplicated, block: B:112:0x016b  */
    /* JADX WARN: Code duplicated, block: B:116:0x0172  */
    /* JADX WARN: Code duplicated, block: B:119:0x017f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:121:0x0182  */
    /* JADX WARN: Code duplicated, block: B:123:0x0187  */
    /* JADX WARN: Code duplicated, block: B:125:0x018b  */
    /* JADX WARN: Code duplicated, block: B:127:0x0190 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:128:0x0192 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:129:0x0194  */
    /* JADX WARN: Code duplicated, block: B:131:0x019d  */
    /* JADX WARN: Code duplicated, block: B:133:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:134:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:136:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:138:0x01b6  */
    /* JADX WARN: Code duplicated, block: B:143:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:147:0x01cd  */
    /* JADX WARN: Code duplicated, block: B:81:0x0109  */
    /* JADX WARN: Code duplicated, block: B:85:0x0110  */
    /* JADX WARN: Code duplicated, block: B:88:0x011e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:89:0x0120  */
    /* JADX WARN: Code duplicated, block: B:90:0x0123  */
    /* JADX WARN: Code duplicated, block: B:92:0x0126  */
    /* JADX WARN: Code duplicated, block: B:94:0x012a  */
    /* JADX WARN: Code duplicated, block: B:95:0x012e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:96:0x0130 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:97:0x0132  */
    /* JADX WARN: Code duplicated, block: B:99:0x013b  */
    public static final long a(float f10, float f11, float f12, float f13, androidx.compose.ui.graphics.colorspace.c cVar) {
        int i10;
        int i11;
        int i12;
        float fD;
        float fC;
        int iFloatToRawIntBits;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        float fD2;
        float fC2;
        int iFloatToRawIntBits2;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        float f14;
        if (cVar.g()) {
            float f15 = f13 < 0.0f ? 0.0f : f13;
            if (f15 > 1.0f) {
                f15 = 1.0f;
            }
            int i29 = ((int) ((f15 * 255.0f) + 0.5f)) << 24;
            float f16 = f10 < 0.0f ? 0.0f : f10;
            if (f16 > 1.0f) {
                f16 = 1.0f;
            }
            int i30 = i29 | (((int) ((f16 * 255.0f) + 0.5f)) << 16);
            float f17 = f11 < 0.0f ? 0.0f : f11;
            if (f17 > 1.0f) {
                f17 = 1.0f;
            }
            int i31 = i30 | (((int) ((f17 * 255.0f) + 0.5f)) << 8);
            f14 = f12 >= 0.0f ? f12 : 0.0f;
            return u1.h(ULong.b(ULong.b(i31 | ((int) (((f14 <= 1.0f ? f14 : 1.0f) * 255.0f) + 0.5f))) << 32));
        }
        if (!(cVar.a() == 3)) {
            h4.a("Color only works with ColorSpaces with 3 components");
        }
        int iB = cVar.b();
        if (!(iB != -1)) {
            h4.a("Unknown color space, please use a color space in ColorSpaces");
        }
        float fD3 = cVar.d(0);
        float fC3 = cVar.c(0);
        if (f10 >= fD3) {
            fD3 = f10;
        }
        if (fD3 <= fC3) {
            fC3 = fD3;
        }
        int iFloatToRawIntBits3 = Float.floatToRawIntBits(fC3);
        int i32 = iFloatToRawIntBits3 >>> 31;
        int i33 = (iFloatToRawIntBits3 >>> 23) & 255;
        int i34 = iFloatToRawIntBits3 & 8388607;
        int i35 = 31;
        if (i33 == 255) {
            i11 = i34 != 0 ? 512 : 0;
            i10 = 31;
        } else {
            i10 = i33 - 112;
            if (i10 >= 31) {
                i10 = 49;
                i11 = 0;
            } else {
                if (i10 > 0) {
                    int i36 = i34 >> 13;
                    if ((iFloatToRawIntBits3 & 4096) != 0) {
                        i12 = (((i10 << 10) | i36) + 1) | (i32 << 15);
                    } else {
                        i11 = i36;
                    }
                    short s10 = (short) i12;
                    fD = cVar.d(1);
                    fC = cVar.c(1);
                    if (f11 >= fD) {
                        fD = f11;
                    }
                    if (fD <= fC) {
                        fC = fD;
                    }
                    iFloatToRawIntBits = Float.floatToRawIntBits(fC);
                    i13 = iFloatToRawIntBits >>> 31;
                    i14 = (iFloatToRawIntBits >>> 23) & 255;
                    i15 = iFloatToRawIntBits & 8388607;
                    if (i14 == 255) {
                        if (i15 != 0) {
                            i18 = 512;
                        } else {
                            i18 = 0;
                        }
                        i16 = 31;
                    } else {
                        i16 = i14 - 112;
                        if (i16 >= 31) {
                            i16 = 49;
                            i18 = 0;
                        } else {
                            if (i16 <= 0) {
                                i17 = i15 >> 13;
                                if ((iFloatToRawIntBits & 4096) != 0) {
                                    i19 = (((i16 << 10) | i17) + 1) | (i13 << 15);
                                } else {
                                    i18 = i17;
                                }
                                short s11 = (short) i19;
                                fD2 = cVar.d(2);
                                fC2 = cVar.c(2);
                                if (f12 >= fD2) {
                                    fD2 = f12;
                                }
                                if (fD2 <= fC2) {
                                    fC2 = fD2;
                                }
                                iFloatToRawIntBits2 = Float.floatToRawIntBits(fC2);
                                i21 = iFloatToRawIntBits2 >>> 31;
                                i22 = (iFloatToRawIntBits2 >>> 23) & 255;
                                i23 = 8388607 & iFloatToRawIntBits2;
                                if (i22 == 255) {
                                    i26 = i23 == 0 ? 0 : 512;
                                } else {
                                    i24 = i22 - 112;
                                    if (i24 >= 31) {
                                        i35 = 49;
                                    } else {
                                        if (i24 <= 0) {
                                            i25 = i23 >> 13;
                                            if ((iFloatToRawIntBits2 & 4096) != 0) {
                                                i27 = (((i24 << 10) | i25) + 1) | (i21 << 15);
                                            } else {
                                                i26 = i25;
                                                i35 = i24;
                                            }
                                            short s12 = (short) i27;
                                            f14 = f13 >= 0.0f ? f13 : 0.0f;
                                            return u1.h(ULong.b((((long) iB) & 63) | ((((long) ((int) (((f14 <= 1.0f ? f14 : 1.0f) * 1023.0f) + 0.5f))) & 1023) << 6) | ((((long) s10) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 48) | ((((long) s11) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 32) | ((WebSocketProtocol.PAYLOAD_SHORT_MAX & ((long) s12)) << 16)));
                                        }
                                        if (i24 >= -10) {
                                            i28 = (i23 | 8388608) >> (1 - i24);
                                            if ((i28 & 4096) != 0) {
                                                i28 += 8192;
                                            }
                                            i26 = i28 >> 13;
                                            i35 = 0;
                                        } else {
                                            i35 = 0;
                                        }
                                    }
                                    i26 = 0;
                                }
                                i27 = (i21 << 15) | (i35 << 10) | i26;
                                short s13 = (short) i27;
                                if (f13 >= 0.0f) {
                                }
                                return u1.h(ULong.b((((long) iB) & 63) | ((((long) ((int) (((f14 <= 1.0f ? f14 : 1.0f) * 1023.0f) + 0.5f))) & 1023) << 6) | ((((long) s10) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 48) | ((((long) s11) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 32) | ((WebSocketProtocol.PAYLOAD_SHORT_MAX & ((long) s13)) << 16)));
                            }
                            if (i16 >= -10) {
                                i20 = (i15 | 8388608) >> (1 - i16);
                                if ((i20 & 4096) != 0) {
                                    i20 += 8192;
                                }
                                i18 = i20 >> 13;
                            } else {
                                i18 = 0;
                            }
                            i16 = 0;
                        }
                    }
                    i19 = i18 | (i13 << 15) | (i16 << 10);
                    short s14 = (short) i19;
                    fD2 = cVar.d(2);
                    fC2 = cVar.c(2);
                    if (f12 >= fD2) {
                        fD2 = f12;
                    }
                    if (fD2 <= fC2) {
                        fC2 = fD2;
                    }
                    iFloatToRawIntBits2 = Float.floatToRawIntBits(fC2);
                    i21 = iFloatToRawIntBits2 >>> 31;
                    i22 = (iFloatToRawIntBits2 >>> 23) & 255;
                    i23 = 8388607 & iFloatToRawIntBits2;
                    if (i22 == 255) {
                        i26 = i23 == 0 ? 0 : 512;
                    } else {
                        i24 = i22 - 112;
                        if (i24 >= 31) {
                            i35 = 49;
                        } else {
                            if (i24 <= 0) {
                                i25 = i23 >> 13;
                                if ((iFloatToRawIntBits2 & 4096) != 0) {
                                    i27 = (((i24 << 10) | i25) + 1) | (i21 << 15);
                                } else {
                                    i26 = i25;
                                    i35 = i24;
                                }
                                short s15 = (short) i27;
                                if (f13 >= 0.0f) {
                                }
                                return u1.h(ULong.b((((long) iB) & 63) | ((((long) ((int) (((f14 <= 1.0f ? f14 : 1.0f) * 1023.0f) + 0.5f))) & 1023) << 6) | ((((long) s10) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 48) | ((((long) s14) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 32) | ((WebSocketProtocol.PAYLOAD_SHORT_MAX & ((long) s15)) << 16)));
                            }
                            if (i24 >= -10) {
                                i28 = (i23 | 8388608) >> (1 - i24);
                                if ((i28 & 4096) != 0) {
                                    i28 += 8192;
                                }
                                i26 = i28 >> 13;
                                i35 = 0;
                            } else {
                                i35 = 0;
                            }
                        }
                        i26 = 0;
                    }
                    i27 = (i21 << 15) | (i35 << 10) | i26;
                    short s16 = (short) i27;
                    if (f13 >= 0.0f) {
                    }
                    return u1.h(ULong.b((((long) iB) & 63) | ((((long) ((int) (((f14 <= 1.0f ? f14 : 1.0f) * 1023.0f) + 0.5f))) & 1023) << 6) | ((((long) s10) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 48) | ((((long) s14) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 32) | ((WebSocketProtocol.PAYLOAD_SHORT_MAX & ((long) s16)) << 16)));
                }
                if (i10 >= -10) {
                    int i37 = (i34 | 8388608) >> (1 - i10);
                    if ((i37 & 4096) != 0) {
                        i37 += 8192;
                    }
                    i11 = i37 >> 13;
                } else {
                    i11 = 0;
                }
                i10 = 0;
            }
        }
        i12 = i11 | (i32 << 15) | (i10 << 10);
        short s17 = (short) i12;
        fD = cVar.d(1);
        fC = cVar.c(1);
        if (f11 >= fD) {
            fD = f11;
        }
        if (fD <= fC) {
            fC = fD;
        }
        iFloatToRawIntBits = Float.floatToRawIntBits(fC);
        i13 = iFloatToRawIntBits >>> 31;
        i14 = (iFloatToRawIntBits >>> 23) & 255;
        i15 = iFloatToRawIntBits & 8388607;
        if (i14 == 255) {
            if (i15 != 0) {
                i18 = 512;
            } else {
                i18 = 0;
            }
            i16 = 31;
        } else {
            i16 = i14 - 112;
            if (i16 >= 31) {
                i16 = 49;
                i18 = 0;
            } else {
                if (i16 <= 0) {
                    i17 = i15 >> 13;
                    if ((iFloatToRawIntBits & 4096) != 0) {
                        i19 = (((i16 << 10) | i17) + 1) | (i13 << 15);
                    } else {
                        i18 = i17;
                    }
                    short s18 = (short) i19;
                    fD2 = cVar.d(2);
                    fC2 = cVar.c(2);
                    if (f12 >= fD2) {
                        fD2 = f12;
                    }
                    if (fD2 <= fC2) {
                        fC2 = fD2;
                    }
                    iFloatToRawIntBits2 = Float.floatToRawIntBits(fC2);
                    i21 = iFloatToRawIntBits2 >>> 31;
                    i22 = (iFloatToRawIntBits2 >>> 23) & 255;
                    i23 = 8388607 & iFloatToRawIntBits2;
                    if (i22 == 255) {
                        i26 = i23 == 0 ? 0 : 512;
                    } else {
                        i24 = i22 - 112;
                        if (i24 >= 31) {
                            i35 = 49;
                        } else {
                            if (i24 <= 0) {
                                i25 = i23 >> 13;
                                if ((iFloatToRawIntBits2 & 4096) != 0) {
                                    i27 = (((i24 << 10) | i25) + 1) | (i21 << 15);
                                } else {
                                    i26 = i25;
                                    i35 = i24;
                                }
                                short s19 = (short) i27;
                                if (f13 >= 0.0f) {
                                }
                                return u1.h(ULong.b((((long) iB) & 63) | ((((long) ((int) (((f14 <= 1.0f ? f14 : 1.0f) * 1023.0f) + 0.5f))) & 1023) << 6) | ((((long) s17) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 48) | ((((long) s18) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 32) | ((WebSocketProtocol.PAYLOAD_SHORT_MAX & ((long) s19)) << 16)));
                            }
                            if (i24 >= -10) {
                                i28 = (i23 | 8388608) >> (1 - i24);
                                if ((i28 & 4096) != 0) {
                                    i28 += 8192;
                                }
                                i26 = i28 >> 13;
                                i35 = 0;
                            } else {
                                i35 = 0;
                            }
                        }
                        i26 = 0;
                    }
                    i27 = (i21 << 15) | (i35 << 10) | i26;
                    short s110 = (short) i27;
                    if (f13 >= 0.0f) {
                    }
                    return u1.h(ULong.b((((long) iB) & 63) | ((((long) ((int) (((f14 <= 1.0f ? f14 : 1.0f) * 1023.0f) + 0.5f))) & 1023) << 6) | ((((long) s17) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 48) | ((((long) s18) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 32) | ((WebSocketProtocol.PAYLOAD_SHORT_MAX & ((long) s110)) << 16)));
                }
                if (i16 >= -10) {
                    i20 = (i15 | 8388608) >> (1 - i16);
                    if ((i20 & 4096) != 0) {
                        i20 += 8192;
                    }
                    i18 = i20 >> 13;
                } else {
                    i18 = 0;
                }
                i16 = 0;
            }
        }
        i19 = i18 | (i13 << 15) | (i16 << 10);
        short s111 = (short) i19;
        fD2 = cVar.d(2);
        fC2 = cVar.c(2);
        if (f12 >= fD2) {
            fD2 = f12;
        }
        if (fD2 <= fC2) {
            fC2 = fD2;
        }
        iFloatToRawIntBits2 = Float.floatToRawIntBits(fC2);
        i21 = iFloatToRawIntBits2 >>> 31;
        i22 = (iFloatToRawIntBits2 >>> 23) & 255;
        i23 = 8388607 & iFloatToRawIntBits2;
        if (i22 == 255) {
            i26 = i23 == 0 ? 0 : 512;
        } else {
            i24 = i22 - 112;
            if (i24 >= 31) {
                i35 = 49;
            } else {
                if (i24 <= 0) {
                    i25 = i23 >> 13;
                    if ((iFloatToRawIntBits2 & 4096) != 0) {
                        i27 = (((i24 << 10) | i25) + 1) | (i21 << 15);
                    } else {
                        i26 = i25;
                        i35 = i24;
                    }
                    short s112 = (short) i27;
                    if (f13 >= 0.0f) {
                    }
                    return u1.h(ULong.b((((long) iB) & 63) | ((((long) ((int) (((f14 <= 1.0f ? f14 : 1.0f) * 1023.0f) + 0.5f))) & 1023) << 6) | ((((long) s17) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 48) | ((((long) s111) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 32) | ((WebSocketProtocol.PAYLOAD_SHORT_MAX & ((long) s112)) << 16)));
                }
                if (i24 >= -10) {
                    i28 = (i23 | 8388608) >> (1 - i24);
                    if ((i28 & 4096) != 0) {
                        i28 += 8192;
                    }
                    i26 = i28 >> 13;
                    i35 = 0;
                } else {
                    i35 = 0;
                }
            }
            i26 = 0;
        }
        i27 = (i21 << 15) | (i35 << 10) | i26;
        short s113 = (short) i27;
        if (f13 >= 0.0f) {
        }
        return u1.h(ULong.b((((long) iB) & 63) | ((((long) ((int) (((f14 <= 1.0f ? f14 : 1.0f) * 1023.0f) + 0.5f))) & 1023) << 6) | ((((long) s17) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 48) | ((((long) s111) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 32) | ((WebSocketProtocol.PAYLOAD_SHORT_MAX & ((long) s113)) << 16)));
    }

    public static final long b(int i10) {
        return u1.h(ULong.b(ULong.b(i10) << 32));
    }

    public static final long c(int i10, int i11, int i12, int i13) {
        return b(((i10 & 255) << 16) | ((i13 & 255) << 24) | ((i11 & 255) << 8) | (i12 & 255));
    }

    public static final long d(long j10) {
        return u1.h(ULong.b(j10 << 32));
    }

    public static long e(float f10, float f11, float f12, float f13, androidx.compose.ui.graphics.colorspace.c cVar, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            f13 = 1.0f;
        }
        if ((i10 & 16) != 0) {
            cVar = androidx.compose.ui.graphics.colorspace.g.f4044a.w();
        }
        return a(f10, f11, f12, f13, cVar);
    }

    public static long f(int i10, int i11, int i12, int i13, int i14, Object obj) {
        if ((i14 & 8) != 0) {
            i13 = 255;
        }
        return c(i10, i11, i12, i13);
    }

    /* JADX WARN: Code duplicated, block: B:30:0x009c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:31:0x009e  */
    /* JADX WARN: Code duplicated, block: B:32:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:34:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:36:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:37:0x00ab A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:38:0x00ad A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:39:0x00af  */
    /* JADX WARN: Code duplicated, block: B:41:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:43:0x00be  */
    /* JADX WARN: Code duplicated, block: B:44:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:46:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:48:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:52:0x00e7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:54:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:56:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:58:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:59:0x00f5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:60:0x00f7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:61:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:63:0x0102  */
    /* JADX WARN: Code duplicated, block: B:65:0x0109  */
    /* JADX WARN: Code duplicated, block: B:66:0x010b  */
    /* JADX WARN: Code duplicated, block: B:68:0x0111  */
    public static final long g(float f10, float f11, float f12, float f13, androidx.compose.ui.graphics.colorspace.c cVar) {
        int i10;
        int i11;
        int i12;
        int iFloatToRawIntBits;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int iFloatToRawIntBits2;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        if (cVar.g()) {
            return u1.h(ULong.b(ULong.b((((((int) ((f13 * 255.0f) + 0.5f)) << 24) | (((int) ((f10 * 255.0f) + 0.5f)) << 16)) | (((int) ((f11 * 255.0f) + 0.5f)) << 8)) | ((int) ((255.0f * f12) + 0.5f))) << 32));
        }
        int iFloatToRawIntBits3 = Float.floatToRawIntBits(f10);
        int i27 = iFloatToRawIntBits3 >>> 31;
        int i28 = (iFloatToRawIntBits3 >>> 23) & 255;
        int i29 = iFloatToRawIntBits3 & 8388607;
        int i30 = 0;
        if (i28 == 255) {
            i11 = i29 != 0 ? 512 : 0;
            i10 = 31;
        } else {
            i10 = i28 - 112;
            if (i10 >= 31) {
                i11 = 0;
                i10 = 49;
            } else {
                if (i10 > 0) {
                    int i31 = i29 >> 13;
                    if ((iFloatToRawIntBits3 & 4096) != 0) {
                        i12 = (((i10 << 10) | i31) + 1) | (i27 << 15);
                    } else {
                        i11 = i31;
                    }
                    short s10 = (short) i12;
                    iFloatToRawIntBits = Float.floatToRawIntBits(f11);
                    i13 = iFloatToRawIntBits >>> 31;
                    i14 = (iFloatToRawIntBits >>> 23) & 255;
                    i15 = iFloatToRawIntBits & 8388607;
                    if (i14 == 255) {
                        if (i15 != 0) {
                            i18 = 512;
                        } else {
                            i18 = 0;
                        }
                        i16 = 31;
                    } else {
                        i16 = i14 - 112;
                        if (i16 >= 31) {
                            i18 = 0;
                            i16 = 49;
                        } else {
                            if (i16 <= 0) {
                                i17 = i15 >> 13;
                                if ((iFloatToRawIntBits & 4096) != 0) {
                                    i19 = (((i16 << 10) | i17) + 1) | (i13 << 15);
                                } else {
                                    i18 = i17;
                                }
                                short s11 = (short) i19;
                                iFloatToRawIntBits2 = Float.floatToRawIntBits(f12);
                                i21 = iFloatToRawIntBits2 >>> 31;
                                i22 = (iFloatToRawIntBits2 >>> 23) & 255;
                                i23 = 8388607 & iFloatToRawIntBits2;
                                if (i22 == 255) {
                                    i30 = i23 == 0 ? 0 : 512;
                                    i24 = 31;
                                } else {
                                    i24 = i22 - 112;
                                    if (i24 >= 31) {
                                        i24 = 49;
                                    } else {
                                        if (i24 <= 0) {
                                            i30 = i23 >> 13;
                                            if ((iFloatToRawIntBits2 & 4096) != 0) {
                                                i25 = (((i24 << 10) | i30) + 1) | (i21 << 15);
                                            }
                                            return u1.h(ULong.b(((((long) s11) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 32) | ((((long) s10) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 48) | ((((long) ((short) i25)) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 16) | ((((long) ((int) ((Math.max(0.0f, Math.min(f13, 1.0f)) * 1023.0f) + 0.5f))) & 1023) << 6) | (((long) cVar.b()) & 63)));
                                        }
                                        if (i24 >= -10) {
                                            i26 = (i23 | 8388608) >> (1 - i24);
                                            if ((i26 & 4096) != 0) {
                                                i26 += 8192;
                                            }
                                            i24 = 0;
                                            i30 = i26 >> 13;
                                        } else {
                                            i24 = 0;
                                        }
                                    }
                                }
                                i25 = (i21 << 15) | (i24 << 10) | i30;
                                return u1.h(ULong.b(((((long) s11) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 32) | ((((long) s10) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 48) | ((((long) ((short) i25)) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 16) | ((((long) ((int) ((Math.max(0.0f, Math.min(f13, 1.0f)) * 1023.0f) + 0.5f))) & 1023) << 6) | (((long) cVar.b()) & 63)));
                            }
                            if (i16 >= -10) {
                                i20 = (i15 | 8388608) >> (1 - i16);
                                if ((i20 & 4096) != 0) {
                                    i20 += 8192;
                                }
                                i18 = i20 >> 13;
                                i16 = 0;
                            } else {
                                i18 = 0;
                                i16 = 0;
                            }
                        }
                    }
                    i19 = i18 | (i13 << 15) | (i16 << 10);
                    short s12 = (short) i19;
                    iFloatToRawIntBits2 = Float.floatToRawIntBits(f12);
                    i21 = iFloatToRawIntBits2 >>> 31;
                    i22 = (iFloatToRawIntBits2 >>> 23) & 255;
                    i23 = 8388607 & iFloatToRawIntBits2;
                    if (i22 == 255) {
                        i30 = i23 == 0 ? 0 : 512;
                        i24 = 31;
                    } else {
                        i24 = i22 - 112;
                        if (i24 >= 31) {
                            i24 = 49;
                        } else {
                            if (i24 <= 0) {
                                i30 = i23 >> 13;
                                if ((iFloatToRawIntBits2 & 4096) != 0) {
                                    i25 = (((i24 << 10) | i30) + 1) | (i21 << 15);
                                }
                                return u1.h(ULong.b(((((long) s12) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 32) | ((((long) s10) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 48) | ((((long) ((short) i25)) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 16) | ((((long) ((int) ((Math.max(0.0f, Math.min(f13, 1.0f)) * 1023.0f) + 0.5f))) & 1023) << 6) | (((long) cVar.b()) & 63)));
                            }
                            if (i24 >= -10) {
                                i26 = (i23 | 8388608) >> (1 - i24);
                                if ((i26 & 4096) != 0) {
                                    i26 += 8192;
                                }
                                i24 = 0;
                                i30 = i26 >> 13;
                            } else {
                                i24 = 0;
                            }
                        }
                    }
                    i25 = (i21 << 15) | (i24 << 10) | i30;
                    return u1.h(ULong.b(((((long) s12) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 32) | ((((long) s10) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 48) | ((((long) ((short) i25)) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 16) | ((((long) ((int) ((Math.max(0.0f, Math.min(f13, 1.0f)) * 1023.0f) + 0.5f))) & 1023) << 6) | (((long) cVar.b()) & 63)));
                }
                if (i10 >= -10) {
                    int i32 = (i29 | 8388608) >> (1 - i10);
                    if ((i32 & 4096) != 0) {
                        i32 += 8192;
                    }
                    i11 = i32 >> 13;
                    i10 = 0;
                } else {
                    i11 = 0;
                    i10 = 0;
                }
            }
        }
        i12 = i11 | (i27 << 15) | (i10 << 10);
        short s13 = (short) i12;
        iFloatToRawIntBits = Float.floatToRawIntBits(f11);
        i13 = iFloatToRawIntBits >>> 31;
        i14 = (iFloatToRawIntBits >>> 23) & 255;
        i15 = iFloatToRawIntBits & 8388607;
        if (i14 == 255) {
            if (i15 != 0) {
                i18 = 512;
            } else {
                i18 = 0;
            }
            i16 = 31;
        } else {
            i16 = i14 - 112;
            if (i16 >= 31) {
                i18 = 0;
                i16 = 49;
            } else {
                if (i16 <= 0) {
                    i17 = i15 >> 13;
                    if ((iFloatToRawIntBits & 4096) != 0) {
                        i19 = (((i16 << 10) | i17) + 1) | (i13 << 15);
                    } else {
                        i18 = i17;
                    }
                    short s14 = (short) i19;
                    iFloatToRawIntBits2 = Float.floatToRawIntBits(f12);
                    i21 = iFloatToRawIntBits2 >>> 31;
                    i22 = (iFloatToRawIntBits2 >>> 23) & 255;
                    i23 = 8388607 & iFloatToRawIntBits2;
                    if (i22 == 255) {
                        i30 = i23 == 0 ? 0 : 512;
                        i24 = 31;
                    } else {
                        i24 = i22 - 112;
                        if (i24 >= 31) {
                            i24 = 49;
                        } else {
                            if (i24 <= 0) {
                                i30 = i23 >> 13;
                                if ((iFloatToRawIntBits2 & 4096) != 0) {
                                    i25 = (((i24 << 10) | i30) + 1) | (i21 << 15);
                                }
                                return u1.h(ULong.b(((((long) s14) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 32) | ((((long) s13) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 48) | ((((long) ((short) i25)) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 16) | ((((long) ((int) ((Math.max(0.0f, Math.min(f13, 1.0f)) * 1023.0f) + 0.5f))) & 1023) << 6) | (((long) cVar.b()) & 63)));
                            }
                            if (i24 >= -10) {
                                i26 = (i23 | 8388608) >> (1 - i24);
                                if ((i26 & 4096) != 0) {
                                    i26 += 8192;
                                }
                                i24 = 0;
                                i30 = i26 >> 13;
                            } else {
                                i24 = 0;
                            }
                        }
                    }
                    i25 = (i21 << 15) | (i24 << 10) | i30;
                    return u1.h(ULong.b(((((long) s14) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 32) | ((((long) s13) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 48) | ((((long) ((short) i25)) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 16) | ((((long) ((int) ((Math.max(0.0f, Math.min(f13, 1.0f)) * 1023.0f) + 0.5f))) & 1023) << 6) | (((long) cVar.b()) & 63)));
                }
                if (i16 >= -10) {
                    i20 = (i15 | 8388608) >> (1 - i16);
                    if ((i20 & 4096) != 0) {
                        i20 += 8192;
                    }
                    i18 = i20 >> 13;
                    i16 = 0;
                } else {
                    i18 = 0;
                    i16 = 0;
                }
            }
        }
        i19 = i18 | (i13 << 15) | (i16 << 10);
        short s15 = (short) i19;
        iFloatToRawIntBits2 = Float.floatToRawIntBits(f12);
        i21 = iFloatToRawIntBits2 >>> 31;
        i22 = (iFloatToRawIntBits2 >>> 23) & 255;
        i23 = 8388607 & iFloatToRawIntBits2;
        if (i22 == 255) {
            i30 = i23 == 0 ? 0 : 512;
            i24 = 31;
        } else {
            i24 = i22 - 112;
            if (i24 >= 31) {
                i24 = 49;
            } else {
                if (i24 <= 0) {
                    i30 = i23 >> 13;
                    if ((iFloatToRawIntBits2 & 4096) != 0) {
                        i25 = (((i24 << 10) | i30) + 1) | (i21 << 15);
                    }
                    return u1.h(ULong.b(((((long) s15) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 32) | ((((long) s13) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 48) | ((((long) ((short) i25)) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 16) | ((((long) ((int) ((Math.max(0.0f, Math.min(f13, 1.0f)) * 1023.0f) + 0.5f))) & 1023) << 6) | (((long) cVar.b()) & 63)));
                }
                if (i24 >= -10) {
                    i26 = (i23 | 8388608) >> (1 - i24);
                    if ((i26 & 4096) != 0) {
                        i26 += 8192;
                    }
                    i24 = 0;
                    i30 = i26 >> 13;
                } else {
                    i24 = 0;
                }
            }
        }
        i25 = (i21 << 15) | (i24 << 10) | i30;
        return u1.h(ULong.b(((((long) s15) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 32) | ((((long) s13) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 48) | ((((long) ((short) i25)) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 16) | ((((long) ((int) ((Math.max(0.0f, Math.min(f13, 1.0f)) * 1023.0f) + 0.5f))) & 1023) << 6) | (((long) cVar.b()) & 63)));
    }

    public static final long h(long j10, long j11) {
        long jI = u1.i(j10, u1.p(j11));
        float fN = u1.n(j11);
        float fN2 = u1.n(jI);
        float f10 = 1.0f - fN2;
        float f11 = (fN * f10) + fN2;
        return g(f11 == 0.0f ? 0.0f : ((u1.r(jI) * fN2) + ((u1.r(j11) * fN) * f10)) / f11, f11 == 0.0f ? 0.0f : ((u1.q(jI) * fN2) + ((u1.q(j11) * fN) * f10)) / f11, f11 != 0.0f ? ((u1.o(jI) * fN2) + ((u1.o(j11) * fN) * f10)) / f11 : 0.0f, f11, u1.p(j11));
    }

    public static final float i(long j10) {
        androidx.compose.ui.graphics.colorspace.c cVarP = u1.p(j10);
        if (!androidx.compose.ui.graphics.colorspace.b.e(cVarP.e(), androidx.compose.ui.graphics.colorspace.b.f4035a.b())) {
            h4.a("The specified color must be encoded in an RGB color space. The supplied color space is " + ((Object) androidx.compose.ui.graphics.colorspace.b.h(cVarP.e())));
        }
        Intrinsics.f(cVarP, "null cannot be cast to non-null type androidx.compose.ui.graphics.colorspace.Rgb");
        androidx.compose.ui.graphics.colorspace.j jVarE = ((Rgb) cVarP).E();
        float fA = (float) ((jVarE.a(u1.r(j10)) * 0.2126d) + (jVarE.a(u1.q(j10)) * 0.7152d) + (jVarE.a(u1.o(j10)) * 0.0722d));
        if (fA < 0.0f) {
            fA = 0.0f;
        }
        if (fA > 1.0f) {
            return 1.0f;
        }
        return fA;
    }

    public static final int j(long j10) {
        return (int) ULong.b(u1.i(j10, androidx.compose.ui.graphics.colorspace.g.f4044a.w()) >>> 32);
    }
}
