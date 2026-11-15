package com.google.zxing.aztec.encoder;

import com.google.zxing.common.CharacterSetECI;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;

public final class HighLevelEncoder {

    static final String[] f32001c = {"UPPER", "LOWER", "DIGIT", "MIXED", "PUNCT"};

    static final int[][] f32002d = {new int[]{0, 327708, 327710, 327709, 656318}, new int[]{590318, 0, 327710, 327709, 656318}, new int[]{262158, 590300, 0, 590301, 932798}, new int[]{327709, 327708, 656318, 0, 327710}, new int[]{327711, 656380, 656382, 656381, 0}};

    private static final int[][] f32003e;

    static final int[][] f32004f;

    private final byte[] f32005a;

    private final Charset f32006b;

    static {
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 5, 256);
        f32003e = iArr;
        iArr[0][32] = 1;
        for (int i10 = 65; i10 <= 90; i10++) {
            f32003e[0][i10] = i10 - 63;
        }
        f32003e[1][32] = 1;
        for (int i11 = 97; i11 <= 122; i11++) {
            f32003e[1][i11] = i11 - 95;
        }
        f32003e[2][32] = 1;
        for (int i12 = 48; i12 <= 57; i12++) {
            f32003e[2][i12] = i12 - 46;
        }
        int[] iArr2 = f32003e[2];
        iArr2[44] = 12;
        iArr2[46] = 13;
        int[] iArr3 = {0, 32, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 27, 28, 29, 30, 31, 64, 92, 94, 95, 96, Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE, 126, 127};
        int i13 = 0;
        for (int i14 = 28; i13 < i14; i14 = 28) {
            f32003e[3][iArr3[i13]] = i13;
            i13++;
        }
        int[] iArr4 = {0, 13, 0, 0, 0, 0, 33, 39, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 58, 59, 60, 61, 62, 63, 91, 93, Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE, Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE};
        for (int i15 = 0; i15 < 31; i15++) {
            int i16 = iArr4[i15];
            if (i16 > 0) {
                f32003e[4][i16] = i15;
            }
        }
        int[][] iArr5 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 6, 6);
        f32004f = iArr5;
        for (int[] iArr6 : iArr5) {
            Arrays.fill(iArr6, -1);
        }
        int[][] iArr7 = f32004f;
        iArr7[0][4] = 0;
        int[] iArr8 = iArr7[1];
        iArr8[4] = 0;
        iArr8[0] = 28;
        iArr7[3][4] = 0;
        int[] iArr9 = iArr7[2];
        iArr9[4] = 0;
        iArr9[0] = 15;
    }

    public HighLevelEncoder(byte[] bArr, Charset charset) {
        this.f32005a = bArr;
        this.f32006b = charset;
    }

    private static Collection b(Iterable iterable) {
        LinkedList linkedList = new LinkedList();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            e eVar = (e) it.next();
            Iterator it2 = linkedList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    linkedList.addFirst(eVar);
                    break;
                }
                e eVar2 = (e) it2.next();
                if (eVar2.h(eVar)) {
                    break;
                }
                if (eVar.h(eVar2)) {
                    it2.remove();
                }
            }
        }
        return linkedList;
    }

    private void c(e eVar, int i10, Collection collection) {
        char c10 = (char) (this.f32005a[i10] & 255);
        boolean z10 = f32003e[eVar.g()][c10] > 0;
        e eVarD = null;
        for (int i11 = 0; i11 <= 4; i11++) {
            int i12 = f32003e[i11][c10];
            if (i12 > 0) {
                if (eVarD == null) {
                    eVarD = eVar.d(i10);
                }
                if (!z10 || i11 == eVar.g() || i11 == 2) {
                    collection.add(eVarD.i(i11, i12));
                }
                if (!z10 && f32004f[eVar.g()][i11] >= 0) {
                    collection.add(eVarD.j(i11, i12));
                }
            }
        }
        if (eVar.e() > 0 || f32003e[eVar.g()][c10] == 0) {
            collection.add(eVar.a(i10));
        }
    }

    private static void d(e eVar, int i10, int i11, Collection collection) {
        e eVarD = eVar.d(i10);
        collection.add(eVarD.i(4, i11));
        if (eVar.g() != 4) {
            collection.add(eVarD.j(4, i11));
        }
        if (i11 == 3 || i11 == 4) {
            collection.add(eVarD.i(2, 16 - i11).i(2, 1));
        }
        if (eVar.e() > 0) {
            collection.add(eVar.a(i10).a(i10 + 1));
        }
    }

    private Collection e(Iterable iterable, int i10) {
        LinkedList linkedList = new LinkedList();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            c((e) it.next(), i10, linkedList);
        }
        return b(linkedList);
    }

    private static Collection f(Iterable iterable, int i10, int i11) {
        LinkedList linkedList = new LinkedList();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            d((e) it.next(), i10, i11, linkedList);
        }
        return b(linkedList);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0056  */
    public kd.a a() {
        int i10;
        e eVarB = e.f32017f;
        Charset charset = this.f32006b;
        if (charset != null) {
            CharacterSetECI characterSetECI = CharacterSetECI.getCharacterSetECI(charset);
            if (characterSetECI == null) {
                throw new IllegalArgumentException("No ECI code for character set " + this.f32006b);
            }
            eVarB = eVarB.b(characterSetECI.getValue());
        }
        Collection collectionSingletonList = Collections.singletonList(eVarB);
        int i11 = 0;
        while (true) {
            byte[] bArr = this.f32005a;
            if (i11 >= bArr.length) {
                return ((e) Collections.min(collectionSingletonList, new Comparator<e>() {
                    @Override
                    public int compare(e eVar, e eVar2) {
                        return eVar.f() - eVar2.f();
                    }
                })).k(this.f32005a);
            }
            int i12 = i11 + 1;
            byte b10 = i12 < bArr.length ? bArr[i12] : (byte) 0;
            byte b11 = bArr[i11];
            if (b11 != 13) {
                if (b11 != 44) {
                    if (b11 != 46) {
                        if (b11 == 58 && b10 == 32) {
                            i10 = 5;
                        } else {
                            i10 = 0;
                        }
                    } else if (b10 == 32) {
                        i10 = 3;
                    } else {
                        i10 = 0;
                    }
                } else if (b10 == 32) {
                    i10 = 4;
                } else {
                    i10 = 0;
                }
            } else if (b10 == 10) {
                i10 = 2;
            } else {
                i10 = 0;
            }
            if (i10 > 0) {
                collectionSingletonList = f(collectionSingletonList, i11, i10);
                i11 = i12;
            } else {
                collectionSingletonList = e(collectionSingletonList, i11);
            }
            i11++;
        }
    }
}
