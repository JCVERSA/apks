package org.brotli.dec;

import okhttp3.internal.http2.Settings;

abstract class d {

    private static final int[] f68466a = {1, 2, 3, 4, 0, 5, 17, 6, 16, 7, 8, 9, 10, 11, 12, 13, 14, 15};

    private static final int[] f68467b = {3, 2, 1, 0, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2};

    private static final int[] f68468c = {0, 0, 0, 0, -1, 1, -2, 2, -3, 3, -1, 1, -2, 2, -3, 3};

    private static final int[] f68469d = {131072, 131076, 131075, 196610, 131072, 131076, 131075, 262145, 131072, 131076, 131075, 196610, 131072, 131076, 131075, 262149};

    private static void a(j jVar) {
        a aVar = jVar.f68488c;
        byte[] bArr = jVar.f68489d;
        int i10 = jVar.f68492g;
        if (i10 <= 0) {
            a.k(aVar);
            jVar.f68486a = 1;
            return;
        }
        int iMin = Math.min(jVar.Q - jVar.f68503r, i10);
        a.c(aVar, bArr, jVar.f68503r, iMin);
        jVar.f68492g -= iMin;
        int i11 = jVar.f68503r + iMin;
        jVar.f68503r = i11;
        int i12 = jVar.Q;
        if (i11 != i12) {
            a.k(aVar);
            jVar.f68486a = 1;
        } else {
            jVar.f68487b = 5;
            jVar.Y = i12;
            jVar.X = 0;
            jVar.f68486a = 12;
        }
    }

    private static void b(j jVar, int i10) {
        int i11;
        a aVar = jVar.f68488c;
        int[] iArr = jVar.f68501p;
        int i12 = i10 * 2;
        a.d(aVar);
        int i13 = i10 * 1080;
        int iR = r(jVar.f68490e, i13, aVar);
        jVar.f68499n[i10] = m(jVar.f68491f, i13, aVar);
        if (iR == 1) {
            i11 = iArr[i12 + 1] + 1;
        } else {
            i11 = iR == 0 ? iArr[i12] : iR - 2;
        }
        int i14 = jVar.f68500o[i10];
        if (i11 >= i14) {
            i11 -= i14;
        }
        int i15 = i12 + 1;
        iArr[i12] = iArr[i15];
        iArr[i15] = i11;
    }

    private static void c(j jVar) {
        b(jVar, 1);
        jVar.F = jVar.f68497l.f68475c[jVar.f68501p[3]];
    }

    private static int d(int i10, byte[] bArr, a aVar) {
        a.j(aVar);
        int iH = h(aVar) + 1;
        if (iH == 1) {
            l.a(bArr, 0, i10);
            return iH;
        }
        int i11 = a.i(aVar, 1) == 1 ? a.i(aVar, 4) + 1 : 0;
        int[] iArr = new int[1080];
        n(iH + i11, iArr, 0, aVar);
        int i12 = 0;
        while (i12 < i10) {
            a.j(aVar);
            a.d(aVar);
            int iR = r(iArr, 0, aVar);
            if (iR == 0) {
                bArr[i12] = 0;
            } else if (iR <= i11) {
                for (int i13 = (1 << iR) + a.i(aVar, iR); i13 != 0; i13--) {
                    if (i12 >= i10) {
                        throw new BrotliRuntimeException("Corrupted context map");
                    }
                    bArr[i12] = 0;
                    i12++;
                }
            } else {
                bArr[i12] = (byte) (iR - i11);
            }
            i12++;
        }
        if (a.i(aVar, 1) == 1) {
            j(bArr, i10);
        }
        return iH;
    }

    private static void e(j jVar) {
        b(jVar, 2);
        jVar.C = jVar.f68501p[5] << 2;
    }

    private static void f(j jVar) {
        b(jVar, 0);
        int i10 = jVar.f68501p[1];
        int i11 = i10 << 6;
        jVar.B = i11;
        int i12 = jVar.A[i11] & 255;
        jVar.f68507v = i12;
        jVar.f68508w = jVar.f68496k.f68475c[i12];
        byte b10 = jVar.f68511z[i10];
        int[] iArr = c.f68465b;
        jVar.D = iArr[b10];
        jVar.E = iArr[b10 + 1];
    }

    private static void g(a aVar, j jVar) {
        boolean z10 = a.i(aVar, 1) == 1;
        jVar.f68493h = z10;
        jVar.f68492g = 0;
        jVar.f68494i = false;
        jVar.f68495j = false;
        if (!z10 || a.i(aVar, 1) == 0) {
            int i10 = a.i(aVar, 2) + 4;
            if (i10 == 7) {
                jVar.f68495j = true;
                if (a.i(aVar, 1) != 0) {
                    throw new BrotliRuntimeException("Corrupted reserved bit");
                }
                int i11 = a.i(aVar, 2);
                if (i11 == 0) {
                    return;
                }
                for (int i12 = 0; i12 < i11; i12++) {
                    int i13 = a.i(aVar, 8);
                    if (i13 == 0 && i12 + 1 == i11 && i11 > 1) {
                        throw new BrotliRuntimeException("Exuberant nibble");
                    }
                    jVar.f68492g = (i13 << (i12 * 8)) | jVar.f68492g;
                }
            } else {
                for (int i14 = 0; i14 < i10; i14++) {
                    int i15 = a.i(aVar, 4);
                    if (i15 == 0 && i14 + 1 == i10 && i10 > 4) {
                        throw new BrotliRuntimeException("Exuberant nibble");
                    }
                    jVar.f68492g = (i15 << (i14 * 4)) | jVar.f68492g;
                }
            }
            jVar.f68492g++;
            if (jVar.f68493h) {
                return;
            }
            jVar.f68494i = a.i(aVar, 1) == 1;
        }
    }

    private static int h(a aVar) {
        if (a.i(aVar, 1) == 0) {
            return 0;
        }
        int i10 = a.i(aVar, 3);
        if (i10 == 0) {
            return 1;
        }
        return a.i(aVar, i10) + (1 << i10);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x029f  */
    /* JADX WARN: Code duplicated, block: B:103:0x02b4  */
    /* JADX WARN: Code duplicated, block: B:111:0x02de  */
    /* JADX WARN: Code duplicated, block: B:161:0x00d9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:162:0x01f5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:163:0x00d5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:164:0x0202 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:165:0x01fe A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:166:0x0311 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:167:0x028a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:168:0x0284 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:169:0x030b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:170:0x0307 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:179:0x0013 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:180:0x0013 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:190:0x0173 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:191:? A[LOOP:2: B:48:0x013b->B:191:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:193:0x02f8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:194:0x02d6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:195:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:196:? A[LOOP:4: B:109:0x02d8->B:196:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:198:0x01db A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:41:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:44:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:48:0x013b A[LOOP:2: B:48:0x013b->B:191:?, LOOP_START] */
    /* JADX WARN: Code duplicated, block: B:50:0x0141  */
    /* JADX WARN: Code duplicated, block: B:52:0x014a  */
    /* JADX WARN: Code duplicated, block: B:56:0x017e  */
    /* JADX WARN: Code duplicated, block: B:59:0x0193  */
    /* JADX WARN: Code duplicated, block: B:61:0x019c  */
    /* JADX WARN: Code duplicated, block: B:65:0x01e6 A[LOOP:5: B:57:0x018d->B:65:0x01e6, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:74:0x0206  */
    /* JADX WARN: Code duplicated, block: B:76:0x0210  */
    /* JADX WARN: Code duplicated, block: B:79:0x022c  */
    /* JADX WARN: Code duplicated, block: B:80:0x022e  */
    /* JADX WARN: Code duplicated, block: B:83:0x0241  */
    /* JADX WARN: Code duplicated, block: B:86:0x026d  */
    /* JADX WARN: Code duplicated, block: B:88:0x0273  */
    /* JADX WARN: Code duplicated, block: B:91:0x027a  */
    /* JADX WARN: Code duplicated, block: B:97:0x028e  */
    static void i(j jVar) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int iR;
        int i17;
        int i18;
        int iT;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int iR2;
        int i24;
        int i25;
        int i26;
        int i27 = jVar.f68486a;
        if (i27 == 0) {
            throw new IllegalStateException("Can't decompress until initialized");
        }
        if (i27 == 11) {
            throw new IllegalStateException("Can't decompress after close");
        }
        a aVar = jVar.f68488c;
        int i28 = jVar.Q - 1;
        byte[] bArr = jVar.f68489d;
        while (true) {
            int i29 = jVar.f68486a;
            if (i29 == 10) {
                if (i29 == 10) {
                    if (jVar.f68492g < 0) {
                        throw new BrotliRuntimeException("Invalid metablock length");
                    }
                    a.g(aVar);
                    a.a(jVar.f68488c, true);
                    return;
                }
                return;
            }
            if (i29 != 12) {
                int i30 = 0;
                switch (i29) {
                    case 1:
                        if (jVar.f68492g < 0) {
                            throw new BrotliRuntimeException("Invalid metablock length");
                        }
                        q(jVar);
                        i28 = jVar.Q - 1;
                        bArr = jVar.f68489d;
                        break;
                        break;
                    case 2:
                        p(jVar);
                        jVar.f68486a = 3;
                        if (jVar.f68492g <= 0) {
                            jVar.f68486a = 1;
                        } else {
                            a.j(aVar);
                            if (jVar.f68499n[1] == 0) {
                                c(jVar);
                            }
                            int[] iArr = jVar.f68499n;
                            iArr[1] = iArr[1] - 1;
                            a.d(aVar);
                            int iR3 = r(jVar.f68497l.f68474b, jVar.F, aVar);
                            i26 = iR3 >>> 6;
                            jVar.G = 0;
                            if (i26 >= 2) {
                                i26 -= 2;
                                jVar.G = -1;
                            }
                            int i31 = i.f68484g[i26] + ((iR3 >>> 3) & 7);
                            int i32 = i.f68485h[i26] + (iR3 & 7);
                            jVar.f68510y = i.f68480c[i31] + a.i(aVar, i.f68481d[i31]);
                            jVar.M = i.f68482e[i32] + a.i(aVar, i.f68483f[i32]);
                            jVar.f68509x = 0;
                            jVar.f68486a = 6;
                            if (jVar.f68506u) {
                                while (jVar.f68509x < jVar.f68510y) {
                                    a.j(aVar);
                                    if (jVar.f68499n[0] == 0) {
                                        f(jVar);
                                    }
                                    int[] iArr2 = jVar.f68499n;
                                    iArr2[0] = iArr2[0] - 1;
                                    a.d(aVar);
                                    bArr[jVar.f68503r] = (byte) r(jVar.f68496k.f68474b, jVar.f68508w, aVar);
                                    jVar.f68509x++;
                                    i25 = jVar.f68503r;
                                    jVar.f68503r = i25 + 1;
                                    if (i25 == i28) {
                                        jVar.f68487b = 6;
                                        jVar.Y = jVar.Q;
                                        jVar.X = 0;
                                        jVar.f68486a = 12;
                                    }
                                }
                            } else {
                                int i33 = jVar.f68503r;
                                i15 = bArr[(i33 - 1) & i28] & 255;
                                i16 = bArr[(i33 - 2) & i28] & 255;
                                while (jVar.f68509x < jVar.f68510y) {
                                    a.j(aVar);
                                    if (jVar.f68499n[0] == 0) {
                                        f(jVar);
                                    }
                                    byte[] bArr2 = jVar.A;
                                    int i34 = jVar.B;
                                    int[] iArr3 = c.f68464a;
                                    int i35 = bArr2[i34 + (iArr3[jVar.E + i16] | iArr3[jVar.D + i15])] & 255;
                                    int[] iArr4 = jVar.f68499n;
                                    iArr4[0] = iArr4[0] - 1;
                                    a.d(aVar);
                                    g gVar = jVar.f68496k;
                                    iR = r(gVar.f68474b, gVar.f68475c[i35], aVar);
                                    i17 = jVar.f68503r;
                                    bArr[i17] = (byte) iR;
                                    jVar.f68509x++;
                                    jVar.f68503r = i17 + 1;
                                    if (i17 == i28) {
                                        jVar.f68487b = 6;
                                        jVar.Y = jVar.Q;
                                        jVar.X = 0;
                                        jVar.f68486a = 12;
                                    } else {
                                        int i36 = i15;
                                        i15 = iR;
                                        i16 = i36;
                                    }
                                }
                            }
                            if (jVar.f68486a != 6) {
                                continue;
                            } else {
                                i18 = jVar.f68492g - jVar.f68510y;
                                jVar.f68492g = i18;
                                if (i18 <= 0) {
                                    jVar.f68486a = 3;
                                } else {
                                    if (jVar.G < 0) {
                                        a.j(aVar);
                                        if (jVar.f68499n[2] == 0) {
                                            e(jVar);
                                        }
                                        int[] iArr5 = jVar.f68499n;
                                        iArr5[2] = iArr5[2] - 1;
                                        a.d(aVar);
                                        g gVar2 = jVar.f68498m;
                                        int[] iArr6 = gVar2.f68474b;
                                        int[] iArr7 = gVar2.f68475c;
                                        byte[] bArr3 = jVar.H;
                                        int i37 = jVar.C;
                                        i22 = jVar.M;
                                        if (i22 > 4) {
                                            i23 = 3;
                                        } else {
                                            i23 = i22 - 2;
                                        }
                                        iR2 = r(iArr6, iArr7[bArr3[i37 + i23] & 255], aVar);
                                        jVar.G = iR2;
                                        i24 = jVar.I;
                                        if (iR2 >= i24) {
                                            int i38 = iR2 - i24;
                                            int i39 = jVar.J & i38;
                                            int i40 = i38 >>> jVar.K;
                                            jVar.G = i40;
                                            int i41 = (i40 >>> 1) + 1;
                                            jVar.G = i24 + i39 + ((((((i40 & 1) + 2) << i41) - 4) + a.i(aVar, i41)) << jVar.K);
                                        }
                                    }
                                    iT = t(jVar.G, jVar.f68502q, jVar.f68505t);
                                    jVar.L = iT;
                                    if (iT < 0) {
                                        throw new BrotliRuntimeException("Negative distance");
                                    }
                                    i19 = jVar.f68504s;
                                    i20 = jVar.O;
                                    if (i19 != i20 || (i21 = jVar.f68503r) >= i20) {
                                        jVar.f68504s = i20;
                                    } else {
                                        jVar.f68504s = i21;
                                    }
                                    jVar.N = jVar.f68503r;
                                    if (iT > jVar.f68504s) {
                                        jVar.f68486a = 9;
                                    } else {
                                        if (jVar.G > 0) {
                                            int[] iArr8 = jVar.f68502q;
                                            int i42 = jVar.f68505t;
                                            iArr8[i42 & 3] = iT;
                                            jVar.f68505t = i42 + 1;
                                        }
                                        if (jVar.M > jVar.f68492g) {
                                            throw new BrotliRuntimeException("Invalid backward reference");
                                        }
                                        jVar.f68509x = 0;
                                        jVar.f68486a = 7;
                                        int i43 = jVar.f68503r;
                                        i10 = (i43 - jVar.L) & i28;
                                        i11 = jVar.M - jVar.f68509x;
                                        if (i10 + i11 < i28 || i43 + i11 >= i28) {
                                            while (true) {
                                                i12 = jVar.f68509x;
                                                if (i12 < jVar.M) {
                                                    i13 = jVar.f68503r;
                                                    bArr[i13] = bArr[(i13 - jVar.L) & i28];
                                                    jVar.f68492g--;
                                                    jVar.f68509x = i12 + 1;
                                                    jVar.f68503r = i13 + 1;
                                                    if (i13 == i28) {
                                                        i14 = 7;
                                                        jVar.f68487b = 7;
                                                        jVar.Y = jVar.Q;
                                                        jVar.X = 0;
                                                        jVar.f68486a = 12;
                                                    }
                                                }
                                            }
                                            if (jVar.f68486a == i14) {
                                                jVar.f68486a = 3;
                                            }
                                        } else {
                                            while (i30 < i11) {
                                                bArr[i43] = bArr[i10];
                                                i30++;
                                                i43++;
                                                i10++;
                                            }
                                            jVar.f68509x += i11;
                                            jVar.f68492g -= i11;
                                            jVar.f68503r += i11;
                                        }
                                        i14 = 7;
                                        if (jVar.f68486a == i14) {
                                            jVar.f68486a = 3;
                                        }
                                    }
                                }
                            }
                        }
                        break;
                    case 3:
                        if (jVar.f68492g <= 0) {
                            jVar.f68486a = 1;
                        } else {
                            a.j(aVar);
                            if (jVar.f68499n[1] == 0) {
                                c(jVar);
                            }
                            int[] iArr9 = jVar.f68499n;
                            iArr9[1] = iArr9[1] - 1;
                            a.d(aVar);
                            int iR4 = r(jVar.f68497l.f68474b, jVar.F, aVar);
                            i26 = iR4 >>> 6;
                            jVar.G = 0;
                            if (i26 >= 2) {
                                i26 -= 2;
                                jVar.G = -1;
                            }
                            int i310 = i.f68484g[i26] + ((iR4 >>> 3) & 7);
                            int i311 = i.f68485h[i26] + (iR4 & 7);
                            jVar.f68510y = i.f68480c[i310] + a.i(aVar, i.f68481d[i310]);
                            jVar.M = i.f68482e[i311] + a.i(aVar, i.f68483f[i311]);
                            jVar.f68509x = 0;
                            jVar.f68486a = 6;
                            if (jVar.f68506u) {
                                while (jVar.f68509x < jVar.f68510y) {
                                    a.j(aVar);
                                    if (jVar.f68499n[0] == 0) {
                                        f(jVar);
                                    }
                                    int[] iArr10 = jVar.f68499n;
                                    iArr10[0] = iArr10[0] - 1;
                                    a.d(aVar);
                                    bArr[jVar.f68503r] = (byte) r(jVar.f68496k.f68474b, jVar.f68508w, aVar);
                                    jVar.f68509x++;
                                    i25 = jVar.f68503r;
                                    jVar.f68503r = i25 + 1;
                                    if (i25 == i28) {
                                        jVar.f68487b = 6;
                                        jVar.Y = jVar.Q;
                                        jVar.X = 0;
                                        jVar.f68486a = 12;
                                    }
                                }
                            } else {
                                int i312 = jVar.f68503r;
                                i15 = bArr[(i312 - 1) & i28] & 255;
                                i16 = bArr[(i312 - 2) & i28] & 255;
                                while (jVar.f68509x < jVar.f68510y) {
                                    a.j(aVar);
                                    if (jVar.f68499n[0] == 0) {
                                        f(jVar);
                                    }
                                    byte[] bArr4 = jVar.A;
                                    int i313 = jVar.B;
                                    int[] iArr11 = c.f68464a;
                                    int i314 = bArr4[i313 + (iArr11[jVar.E + i16] | iArr11[jVar.D + i15])] & 255;
                                    int[] iArr12 = jVar.f68499n;
                                    iArr12[0] = iArr12[0] - 1;
                                    a.d(aVar);
                                    g gVar3 = jVar.f68496k;
                                    iR = r(gVar3.f68474b, gVar3.f68475c[i314], aVar);
                                    i17 = jVar.f68503r;
                                    bArr[i17] = (byte) iR;
                                    jVar.f68509x++;
                                    jVar.f68503r = i17 + 1;
                                    if (i17 == i28) {
                                        jVar.f68487b = 6;
                                        jVar.Y = jVar.Q;
                                        jVar.X = 0;
                                        jVar.f68486a = 12;
                                    } else {
                                        int i315 = i15;
                                        i15 = iR;
                                        i16 = i315;
                                    }
                                }
                            }
                            if (jVar.f68486a != 6) {
                                continue;
                            } else {
                                i18 = jVar.f68492g - jVar.f68510y;
                                jVar.f68492g = i18;
                                if (i18 <= 0) {
                                    jVar.f68486a = 3;
                                } else {
                                    if (jVar.G < 0) {
                                        a.j(aVar);
                                        if (jVar.f68499n[2] == 0) {
                                            e(jVar);
                                        }
                                        int[] iArr13 = jVar.f68499n;
                                        iArr13[2] = iArr13[2] - 1;
                                        a.d(aVar);
                                        g gVar4 = jVar.f68498m;
                                        int[] iArr14 = gVar4.f68474b;
                                        int[] iArr15 = gVar4.f68475c;
                                        byte[] bArr5 = jVar.H;
                                        int i316 = jVar.C;
                                        i22 = jVar.M;
                                        if (i22 > 4) {
                                            i23 = 3;
                                        } else {
                                            i23 = i22 - 2;
                                        }
                                        iR2 = r(iArr14, iArr15[bArr5[i316 + i23] & 255], aVar);
                                        jVar.G = iR2;
                                        i24 = jVar.I;
                                        if (iR2 >= i24) {
                                            int i317 = iR2 - i24;
                                            int i318 = jVar.J & i317;
                                            int i44 = i317 >>> jVar.K;
                                            jVar.G = i44;
                                            int i45 = (i44 >>> 1) + 1;
                                            jVar.G = i24 + i318 + ((((((i44 & 1) + 2) << i45) - 4) + a.i(aVar, i45)) << jVar.K);
                                        }
                                    }
                                    iT = t(jVar.G, jVar.f68502q, jVar.f68505t);
                                    jVar.L = iT;
                                    if (iT < 0) {
                                        throw new BrotliRuntimeException("Negative distance");
                                    }
                                    i19 = jVar.f68504s;
                                    i20 = jVar.O;
                                    if (i19 != i20) {
                                        jVar.f68504s = i20;
                                    } else {
                                        jVar.f68504s = i20;
                                    }
                                    jVar.N = jVar.f68503r;
                                    if (iT > jVar.f68504s) {
                                        jVar.f68486a = 9;
                                    } else {
                                        if (jVar.G > 0) {
                                            int[] iArr16 = jVar.f68502q;
                                            int i46 = jVar.f68505t;
                                            iArr16[i46 & 3] = iT;
                                            jVar.f68505t = i46 + 1;
                                        }
                                        if (jVar.M > jVar.f68492g) {
                                            throw new BrotliRuntimeException("Invalid backward reference");
                                        }
                                        jVar.f68509x = 0;
                                        jVar.f68486a = 7;
                                        int i47 = jVar.f68503r;
                                        i10 = (i47 - jVar.L) & i28;
                                        i11 = jVar.M - jVar.f68509x;
                                        if (i10 + i11 < i28) {
                                            while (true) {
                                                i12 = jVar.f68509x;
                                                if (i12 < jVar.M) {
                                                    i13 = jVar.f68503r;
                                                    bArr[i13] = bArr[(i13 - jVar.L) & i28];
                                                    jVar.f68492g--;
                                                    jVar.f68509x = i12 + 1;
                                                    jVar.f68503r = i13 + 1;
                                                    if (i13 == i28) {
                                                        i14 = 7;
                                                        jVar.f68487b = 7;
                                                        jVar.Y = jVar.Q;
                                                        jVar.X = 0;
                                                        jVar.f68486a = 12;
                                                    }
                                                } else {
                                                    i14 = 7;
                                                }
                                            }
                                        } else {
                                            while (true) {
                                                i12 = jVar.f68509x;
                                                if (i12 < jVar.M) {
                                                    i13 = jVar.f68503r;
                                                    bArr[i13] = bArr[(i13 - jVar.L) & i28];
                                                    jVar.f68492g--;
                                                    jVar.f68509x = i12 + 1;
                                                    jVar.f68503r = i13 + 1;
                                                    if (i13 == i28) {
                                                        i14 = 7;
                                                        jVar.f68487b = 7;
                                                        jVar.Y = jVar.Q;
                                                        jVar.X = 0;
                                                        jVar.f68486a = 12;
                                                    }
                                                } else {
                                                    i14 = 7;
                                                }
                                            }
                                        }
                                        if (jVar.f68486a == i14) {
                                            jVar.f68486a = 3;
                                        }
                                    }
                                }
                            }
                        }
                        break;
                    case 4:
                        while (jVar.f68492g > 0) {
                            a.j(aVar);
                            a.i(aVar, 8);
                            jVar.f68492g--;
                        }
                        jVar.f68486a = 1;
                        break;
                    case 5:
                        a(jVar);
                        break;
                    case 6:
                        if (jVar.f68506u) {
                            while (jVar.f68509x < jVar.f68510y) {
                                a.j(aVar);
                                if (jVar.f68499n[0] == 0) {
                                    f(jVar);
                                }
                                int[] iArr17 = jVar.f68499n;
                                iArr17[0] = iArr17[0] - 1;
                                a.d(aVar);
                                bArr[jVar.f68503r] = (byte) r(jVar.f68496k.f68474b, jVar.f68508w, aVar);
                                jVar.f68509x++;
                                i25 = jVar.f68503r;
                                jVar.f68503r = i25 + 1;
                                if (i25 == i28) {
                                    jVar.f68487b = 6;
                                    jVar.Y = jVar.Q;
                                    jVar.X = 0;
                                    jVar.f68486a = 12;
                                }
                            }
                        } else {
                            int i319 = jVar.f68503r;
                            i15 = bArr[(i319 - 1) & i28] & 255;
                            i16 = bArr[(i319 - 2) & i28] & 255;
                            while (jVar.f68509x < jVar.f68510y) {
                                a.j(aVar);
                                if (jVar.f68499n[0] == 0) {
                                    f(jVar);
                                }
                                byte[] bArr6 = jVar.A;
                                int i3110 = jVar.B;
                                int[] iArr18 = c.f68464a;
                                int i3111 = bArr6[i3110 + (iArr18[jVar.E + i16] | iArr18[jVar.D + i15])] & 255;
                                int[] iArr19 = jVar.f68499n;
                                iArr19[0] = iArr19[0] - 1;
                                a.d(aVar);
                                g gVar5 = jVar.f68496k;
                                iR = r(gVar5.f68474b, gVar5.f68475c[i3111], aVar);
                                i17 = jVar.f68503r;
                                bArr[i17] = (byte) iR;
                                jVar.f68509x++;
                                jVar.f68503r = i17 + 1;
                                if (i17 == i28) {
                                    jVar.f68487b = 6;
                                    jVar.Y = jVar.Q;
                                    jVar.X = 0;
                                    jVar.f68486a = 12;
                                } else {
                                    int i3112 = i15;
                                    i15 = iR;
                                    i16 = i3112;
                                }
                            }
                        }
                        if (jVar.f68486a != 6) {
                            continue;
                        } else {
                            i18 = jVar.f68492g - jVar.f68510y;
                            jVar.f68492g = i18;
                            if (i18 <= 0) {
                                jVar.f68486a = 3;
                            } else {
                                if (jVar.G < 0) {
                                    a.j(aVar);
                                    if (jVar.f68499n[2] == 0) {
                                        e(jVar);
                                    }
                                    int[] iArr110 = jVar.f68499n;
                                    iArr110[2] = iArr110[2] - 1;
                                    a.d(aVar);
                                    g gVar6 = jVar.f68498m;
                                    int[] iArr111 = gVar6.f68474b;
                                    int[] iArr112 = gVar6.f68475c;
                                    byte[] bArr7 = jVar.H;
                                    int i3113 = jVar.C;
                                    i22 = jVar.M;
                                    if (i22 > 4) {
                                        i23 = 3;
                                    } else {
                                        i23 = i22 - 2;
                                    }
                                    iR2 = r(iArr111, iArr112[bArr7[i3113 + i23] & 255], aVar);
                                    jVar.G = iR2;
                                    i24 = jVar.I;
                                    if (iR2 >= i24) {
                                        int i3114 = iR2 - i24;
                                        int i3115 = jVar.J & i3114;
                                        int i48 = i3114 >>> jVar.K;
                                        jVar.G = i48;
                                        int i49 = (i48 >>> 1) + 1;
                                        jVar.G = i24 + i3115 + ((((((i48 & 1) + 2) << i49) - 4) + a.i(aVar, i49)) << jVar.K);
                                    }
                                }
                                iT = t(jVar.G, jVar.f68502q, jVar.f68505t);
                                jVar.L = iT;
                                if (iT < 0) {
                                    throw new BrotliRuntimeException("Negative distance");
                                }
                                i19 = jVar.f68504s;
                                i20 = jVar.O;
                                if (i19 != i20) {
                                    jVar.f68504s = i20;
                                } else {
                                    jVar.f68504s = i20;
                                }
                                jVar.N = jVar.f68503r;
                                if (iT > jVar.f68504s) {
                                    jVar.f68486a = 9;
                                } else {
                                    if (jVar.G > 0) {
                                        int[] iArr113 = jVar.f68502q;
                                        int i410 = jVar.f68505t;
                                        iArr113[i410 & 3] = iT;
                                        jVar.f68505t = i410 + 1;
                                    }
                                    if (jVar.M > jVar.f68492g) {
                                        throw new BrotliRuntimeException("Invalid backward reference");
                                    }
                                    jVar.f68509x = 0;
                                    jVar.f68486a = 7;
                                    int i411 = jVar.f68503r;
                                    i10 = (i411 - jVar.L) & i28;
                                    i11 = jVar.M - jVar.f68509x;
                                    if (i10 + i11 < i28) {
                                        while (true) {
                                            i12 = jVar.f68509x;
                                            if (i12 < jVar.M) {
                                                i13 = jVar.f68503r;
                                                bArr[i13] = bArr[(i13 - jVar.L) & i28];
                                                jVar.f68492g--;
                                                jVar.f68509x = i12 + 1;
                                                jVar.f68503r = i13 + 1;
                                                if (i13 == i28) {
                                                    i14 = 7;
                                                    jVar.f68487b = 7;
                                                    jVar.Y = jVar.Q;
                                                    jVar.X = 0;
                                                    jVar.f68486a = 12;
                                                }
                                            } else {
                                                i14 = 7;
                                            }
                                        }
                                    } else {
                                        while (true) {
                                            i12 = jVar.f68509x;
                                            if (i12 < jVar.M) {
                                                i13 = jVar.f68503r;
                                                bArr[i13] = bArr[(i13 - jVar.L) & i28];
                                                jVar.f68492g--;
                                                jVar.f68509x = i12 + 1;
                                                jVar.f68503r = i13 + 1;
                                                if (i13 == i28) {
                                                    i14 = 7;
                                                    jVar.f68487b = 7;
                                                    jVar.Y = jVar.Q;
                                                    jVar.X = 0;
                                                    jVar.f68486a = 12;
                                                }
                                            } else {
                                                i14 = 7;
                                            }
                                        }
                                    }
                                    if (jVar.f68486a == i14) {
                                        jVar.f68486a = 3;
                                    }
                                }
                            }
                        }
                        break;
                    case 7:
                        int i412 = jVar.f68503r;
                        i10 = (i412 - jVar.L) & i28;
                        i11 = jVar.M - jVar.f68509x;
                        if (i10 + i11 < i28) {
                            while (true) {
                                i12 = jVar.f68509x;
                                if (i12 < jVar.M) {
                                    i13 = jVar.f68503r;
                                    bArr[i13] = bArr[(i13 - jVar.L) & i28];
                                    jVar.f68492g--;
                                    jVar.f68509x = i12 + 1;
                                    jVar.f68503r = i13 + 1;
                                    if (i13 == i28) {
                                        i14 = 7;
                                        jVar.f68487b = 7;
                                        jVar.Y = jVar.Q;
                                        jVar.X = 0;
                                        jVar.f68486a = 12;
                                    }
                                } else {
                                    i14 = 7;
                                }
                            }
                        } else {
                            while (true) {
                                i12 = jVar.f68509x;
                                if (i12 < jVar.M) {
                                    i13 = jVar.f68503r;
                                    bArr[i13] = bArr[(i13 - jVar.L) & i28];
                                    jVar.f68492g--;
                                    jVar.f68509x = i12 + 1;
                                    jVar.f68503r = i13 + 1;
                                    if (i13 == i28) {
                                        i14 = 7;
                                        jVar.f68487b = 7;
                                        jVar.Y = jVar.Q;
                                        jVar.X = 0;
                                        jVar.f68486a = 12;
                                    }
                                } else {
                                    i14 = 7;
                                }
                            }
                        }
                        if (jVar.f68486a == i14) {
                            jVar.f68486a = 3;
                        }
                        break;
                    case 8:
                        int i50 = jVar.Q;
                        System.arraycopy(bArr, i50, bArr, 0, jVar.N - i50);
                        jVar.f68486a = 3;
                        break;
                    case 9:
                        int i51 = jVar.M;
                        if (i51 < 4 || i51 > 24) {
                            throw new BrotliRuntimeException("Invalid backward reference");
                        }
                        int i52 = e.f68470a[i51];
                        int i53 = (jVar.L - jVar.f68504s) - 1;
                        int i54 = e.f68471b[i51];
                        int i55 = ((1 << i54) - 1) & i53;
                        int i56 = i53 >>> i54;
                        int i57 = i52 + (i55 * i51);
                        k[] kVarArr = k.f68512d;
                        if (i56 >= kVarArr.length) {
                            throw new BrotliRuntimeException("Invalid backward reference");
                        }
                        int iB = k.b(bArr, jVar.N, e.a(), i57, jVar.M, kVarArr[i56]);
                        int i58 = jVar.N + iB;
                        jVar.N = i58;
                        jVar.f68503r += iB;
                        jVar.f68492g -= iB;
                        int i59 = jVar.Q;
                        if (i58 < i59) {
                            jVar.f68486a = 3;
                        } else {
                            jVar.f68487b = 8;
                            jVar.Y = i59;
                            jVar.X = 0;
                            jVar.f68486a = 12;
                        }
                        break;
                        break;
                    default:
                        throw new BrotliRuntimeException("Unexpected state " + jVar.f68486a);
                }
            } else {
                if (!u(jVar)) {
                    return;
                }
                int i60 = jVar.f68503r;
                int i61 = jVar.O;
                if (i60 >= i61) {
                    jVar.f68504s = i61;
                }
                jVar.f68503r = i60 & i28;
                jVar.f68486a = jVar.f68487b;
            }
        }
    }

    private static void j(byte[] bArr, int i10) {
        int[] iArr = new int[256];
        for (int i11 = 0; i11 < 256; i11++) {
            iArr[i11] = i11;
        }
        for (int i12 = 0; i12 < i10; i12++) {
            int i13 = bArr[i12] & 255;
            bArr[i12] = (byte) iArr[i13];
            if (i13 != 0) {
                l(iArr, i13);
            }
        }
    }

    private static void k(j jVar) {
        int i10;
        int i11 = jVar.P;
        long j10 = i11;
        long j11 = jVar.R;
        if (j10 > j11) {
            while (true) {
                int i12 = i11 >> 1;
                if (i12 <= ((int) j11) + jVar.S.length) {
                    break;
                } else {
                    i11 = i12;
                }
            }
            if (!jVar.f68493h && i11 < 16384 && jVar.P >= 16384) {
                i11 = 16384;
            }
        }
        int i13 = jVar.Q;
        if (i11 <= i13) {
            return;
        }
        byte[] bArr = new byte[i11 + 37];
        byte[] bArr2 = jVar.f68489d;
        if (bArr2 != null) {
            System.arraycopy(bArr2, 0, bArr, 0, i13);
        } else {
            byte[] bArr3 = jVar.S;
            if (bArr3.length != 0) {
                int length = bArr3.length;
                int i14 = jVar.O;
                if (length > i14) {
                    i10 = length - i14;
                } else {
                    i14 = length;
                    i10 = 0;
                }
                System.arraycopy(bArr3, i10, bArr, 0, i14);
                jVar.f68503r = i14;
                jVar.T = i14;
            }
        }
        jVar.f68489d = bArr;
        jVar.Q = i11;
    }

    private static void l(int[] iArr, int i10) {
        int i11 = iArr[i10];
        while (i10 > 0) {
            iArr[i10] = iArr[i10 - 1];
            i10--;
        }
        iArr[0] = i11;
    }

    private static int m(int[] iArr, int i10, a aVar) {
        a.d(aVar);
        int iR = r(iArr, i10, aVar);
        return i.f68478a[iR] + a.i(aVar, i.f68479b[iR]);
    }

    /* JADX WARN: Code duplicated, block: B:54:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:56:0x00ca  */
    static void n(int i10, int[] iArr, int i11, a aVar) {
        int i12;
        int i13;
        int i14;
        a.j(aVar);
        int[] iArr2 = new int[i10];
        int i15 = a.i(aVar, 2);
        boolean z10 = false;
        boolean z11 = true;
        if (i15 == 1) {
            int i16 = i10 - 1;
            int[] iArr3 = new int[4];
            int i17 = a.i(aVar, 2) + 1;
            int i18 = 0;
            while (i16 != 0) {
                i16 >>= 1;
                i18++;
            }
            for (int i19 = 0; i19 < i17; i19++) {
                int i20 = a.i(aVar, i18) % i10;
                iArr3[i19] = i20;
                iArr2[i20] = 2;
            }
            iArr2[iArr3[0]] = 1;
            if (i17 != 1) {
                if (i17 == 2) {
                    int i21 = iArr3[0];
                    int i22 = iArr3[1];
                    z10 = i21 != i22;
                    iArr2[i22] = 1;
                } else if (i17 != 3) {
                    int i23 = iArr3[0];
                    int i24 = iArr3[1];
                    boolean z12 = (i23 == i24 || i23 == (i13 = iArr3[2]) || i23 == (i14 = iArr3[3]) || i24 == i13 || i24 == i14 || i13 == i14) ? false : true;
                    if (a.i(aVar, 1) == 1) {
                        iArr2[iArr3[2]] = 3;
                        iArr2[iArr3[3]] = 3;
                    } else {
                        iArr2[iArr3[0]] = 2;
                    }
                    z11 = z12;
                } else {
                    int i25 = iArr3[0];
                    int i26 = iArr3[1];
                    if (i25 != i26 && i25 != (i12 = iArr3[2]) && i26 != i12) {
                        z10 = true;
                    }
                }
            }
            if (z11) {
                throw new BrotliRuntimeException("Can't readHuffmanCode");
            }
            f.a(iArr, i11, 8, iArr2, i10);
        }
        int[] iArr4 = new int[18];
        int i27 = 0;
        int i28 = 32;
        while (i15 < 18 && i28 > 0) {
            int i29 = f68466a[i15];
            a.d(aVar);
            long j10 = aVar.f68456f;
            int i30 = aVar.f68457g;
            int i31 = f68469d[((int) (j10 >>> i30)) & 15];
            aVar.f68457g = i30 + (i31 >> 16);
            int i32 = i31 & Settings.DEFAULT_INITIAL_WINDOW_SIZE;
            iArr4[i29] = i32;
            if (i32 != 0) {
                i28 -= 32 >> i32;
                i27++;
            }
            i15++;
        }
        z10 = i27 == 1 || i28 == 0;
        o(iArr4, i10, iArr2, aVar);
        z11 = z10;
        if (z11) {
            throw new BrotliRuntimeException("Can't readHuffmanCode");
        }
        f.a(iArr, i11, 8, iArr2, i10);
    }

    private static void o(int[] iArr, int i10, int[] iArr2, a aVar) {
        int[] iArr3 = new int[32];
        f.a(iArr3, 0, 5, iArr, 18);
        int i11 = 8;
        int i12 = 32768;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        while (i13 < i10 && i12 > 0) {
            a.j(aVar);
            a.d(aVar);
            long j10 = aVar.f68456f;
            int i16 = aVar.f68457g;
            int i17 = iArr3[((int) (j10 >>> i16)) & 31];
            aVar.f68457g = i16 + (i17 >> 16);
            int i18 = i17 & Settings.DEFAULT_INITIAL_WINDOW_SIZE;
            if (i18 < 16) {
                i13++;
                iArr2[i13] = i18;
                if (i18 != 0) {
                    i12 -= 32768 >> i18;
                    i11 = i18;
                }
                i15 = 0;
            } else {
                int i19 = i18 - 14;
                int i20 = i18 == 16 ? i11 : 0;
                if (i14 != i20) {
                    i15 = 0;
                    i14 = i20;
                }
                int i21 = (i15 > 0 ? (i15 - 2) << i19 : i15) + a.i(aVar, i19) + 3;
                int i22 = i21 - i15;
                if (i13 + i22 > i10) {
                    throw new BrotliRuntimeException("symbol + repeatDelta > numSymbols");
                }
                int i23 = 0;
                while (i23 < i22) {
                    iArr2[i13] = i14;
                    i23++;
                    i13++;
                }
                if (i14 != 0) {
                    i12 -= i22 << (15 - i14);
                }
                i15 = i21;
            }
        }
        if (i12 != 0) {
            throw new BrotliRuntimeException("Unused space");
        }
        l.b(iArr2, i13, i10 - i13);
    }

    private static void p(j jVar) {
        int i10;
        int[] iArr;
        a aVar = jVar.f68488c;
        for (int i11 = 0; i11 < 3; i11++) {
            jVar.f68500o[i11] = h(aVar) + 1;
            jVar.f68499n[i11] = 268435456;
            int i12 = jVar.f68500o[i11];
            if (i12 > 1) {
                int i13 = i11 * 1080;
                n(i12 + 2, jVar.f68490e, i13, aVar);
                n(26, jVar.f68491f, i13, aVar);
                jVar.f68499n[i11] = m(jVar.f68491f, i13, aVar);
            }
        }
        a.j(aVar);
        jVar.K = a.i(aVar, 2);
        int i14 = a.i(aVar, 4);
        int i15 = jVar.K;
        int i16 = (i14 << i15) + 16;
        jVar.I = i16;
        jVar.J = (1 << i15) - 1;
        int i17 = i16 + (48 << i15);
        jVar.f68511z = new byte[jVar.f68500o[0]];
        int i18 = 0;
        while (true) {
            i10 = jVar.f68500o[0];
            if (i18 >= i10) {
                break;
            }
            int iMin = Math.min(i18 + 96, i10);
            while (i18 < iMin) {
                jVar.f68511z[i18] = (byte) (a.i(aVar, 2) << 1);
                i18++;
            }
            a.j(aVar);
        }
        byte[] bArr = new byte[i10 << 6];
        jVar.A = bArr;
        int iD = d(i10 << 6, bArr, aVar);
        jVar.f68506u = true;
        int i19 = 0;
        while (true) {
            iArr = jVar.f68500o;
            if (i19 >= (iArr[0] << 6)) {
                break;
            }
            if (jVar.A[i19] != (i19 >> 6)) {
                jVar.f68506u = false;
                break;
            }
            i19++;
        }
        int i20 = iArr[2];
        byte[] bArr2 = new byte[i20 << 2];
        jVar.H = bArr2;
        int iD2 = d(i20 << 2, bArr2, aVar);
        g.b(jVar.f68496k, 256, iD);
        g.b(jVar.f68497l, 704, jVar.f68500o[1]);
        g.b(jVar.f68498m, i17, iD2);
        g.a(jVar.f68496k, aVar);
        g.a(jVar.f68497l, aVar);
        g.a(jVar.f68498m, aVar);
        jVar.B = 0;
        jVar.C = 0;
        int[] iArr2 = c.f68465b;
        byte b10 = jVar.f68511z[0];
        jVar.D = iArr2[b10];
        jVar.E = iArr2[b10 + 1];
        jVar.f68507v = 0;
        jVar.f68508w = jVar.f68496k.f68475c[0];
        jVar.F = jVar.f68497l.f68475c[0];
        int[] iArr3 = jVar.f68501p;
        iArr3[4] = 1;
        iArr3[2] = 1;
        iArr3[0] = 1;
        iArr3[5] = 0;
        iArr3[3] = 0;
        iArr3[1] = 0;
    }

    private static void q(j jVar) {
        a aVar = jVar.f68488c;
        if (jVar.f68493h) {
            jVar.f68487b = 10;
            jVar.Y = jVar.f68503r;
            jVar.X = 0;
            jVar.f68486a = 12;
            return;
        }
        g gVar = jVar.f68496k;
        gVar.f68474b = null;
        gVar.f68475c = null;
        g gVar2 = jVar.f68497l;
        gVar2.f68474b = null;
        gVar2.f68475c = null;
        g gVar3 = jVar.f68498m;
        gVar3.f68474b = null;
        gVar3.f68475c = null;
        a.j(aVar);
        g(aVar, jVar);
        if (jVar.f68492g != 0 || jVar.f68495j) {
            if (jVar.f68494i || jVar.f68495j) {
                a.g(aVar);
                jVar.f68486a = jVar.f68495j ? 4 : 5;
            } else {
                jVar.f68486a = 2;
            }
            if (jVar.f68495j) {
                return;
            }
            jVar.R += (long) jVar.f68492g;
            if (jVar.Q < jVar.P) {
                k(jVar);
            }
        }
    }

    private static int r(int[] iArr, int i10, a aVar) {
        long j10 = aVar.f68456f;
        int i11 = aVar.f68457g;
        int i12 = (int) (j10 >>> i11);
        int i13 = i10 + (i12 & 255);
        int i14 = iArr[i13];
        int i15 = i14 >> 16;
        int i16 = i14 & Settings.DEFAULT_INITIAL_WINDOW_SIZE;
        if (i15 <= 8) {
            aVar.f68457g = i11 + i15;
            return i16;
        }
        int i17 = iArr[i13 + i16 + ((i12 & ((1 << i15) - 1)) >>> 8)];
        aVar.f68457g = i11 + (i17 >> 16) + 8;
        return i17 & Settings.DEFAULT_INITIAL_WINDOW_SIZE;
    }

    static void s(j jVar, byte[] bArr) {
        if (bArr == null) {
            bArr = new byte[0];
        }
        jVar.S = bArr;
    }

    private static int t(int i10, int[] iArr, int i11) {
        return i10 < 16 ? iArr[(i11 + f68467b[i10]) & 3] + f68468c[i10] : i10 - 15;
    }

    private static boolean u(j jVar) {
        int i10 = jVar.T;
        if (i10 != 0) {
            jVar.X += i10;
            jVar.T = 0;
        }
        int iMin = Math.min(jVar.V - jVar.W, jVar.Y - jVar.X);
        if (iMin != 0) {
            System.arraycopy(jVar.f68489d, jVar.X, jVar.Z, jVar.U + jVar.W, iMin);
            jVar.W += iMin;
            jVar.X += iMin;
        }
        return jVar.W < jVar.V;
    }
}
