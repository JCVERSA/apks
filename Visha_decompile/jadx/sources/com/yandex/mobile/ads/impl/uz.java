package com.yandex.mobile.ads.impl;

import com.hunantv.media.drm.IDrmSession;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import java.io.IOException;
import java.util.ArrayDeque;
import org.mozilla.classfile.ByteCode;

final class uz implements a50 {
    private final byte[] a = new byte[8];
    private final ArrayDeque<a> b = new ArrayDeque<>();
    private final q92 c = new q92();
    private z40 d;
    private int e;
    private int f;
    private long g;

    public static final class a {
        private final int a;
        private final long b;

        private a(int i, long j) {
            this.a = i;
            this.b = j;
        }
    }

    public final void a(z40 z40Var) {
        this.d = z40Var;
    }

    public final boolean a(wz wzVar) throws IOException {
        int i;
        String str;
        int iA;
        int iA2;
        if (this.d == null) {
            throw new IllegalStateException();
        }
        while (true) {
            a aVarPeek = this.b.peek();
            if (aVarPeek != null && wzVar.a() >= aVarPeek.b) {
                lu0.this.b(this.b.pop().a);
                return true;
            }
            if (this.e == 0) {
                long jA = this.c.a(wzVar, true, false, 4);
                if (jA == -2) {
                    wzVar.c();
                    while (true) {
                        wzVar.b(this.a, 0, 4, false);
                        iA = q92.a(this.a[0]);
                        if (iA != -1 && iA <= 4) {
                            iA2 = (int) q92.a(this.a, iA, false);
                            lu0.this.getClass();
                            if (iA2 == 357149030 || iA2 == 524531317 || iA2 == 475249515 || iA2 == 374648427) {
                            }
                        }
                        wzVar.a(1);
                    }
                    wzVar.a(iA);
                    jA = iA2;
                }
                if (jA == -1) {
                    return false;
                }
                this.f = (int) jA;
                this.e = 1;
            }
            if (this.e == 1) {
                this.g = this.c.a(wzVar, false, true, 8);
                this.e = 2;
            }
            z40 z40Var = this.d;
            int i2 = this.f;
            lu0.this.getClass();
            switch (i2) {
                case 131:
                case 136:
                case 155:
                case 159:
                case 176:
                case ByteCode.PUTSTATIC:
                case ByteCode.INVOKEDYNAMIC:
                case IDrmSession.ERROR_SESSION_PROVISION_ERROR_WASABI_ERROR:
                case 231:
                case 238:
                case 241:
                case 251:
                case 16871:
                case 16980:
                case 17029:
                case 17143:
                case 18401:
                case 18408:
                case 20529:
                case 20530:
                case 21420:
                case 21432:
                case 21680:
                case 21682:
                case 21690:
                case 21930:
                case 21945:
                case 21946:
                case 21947:
                case 21948:
                case 21949:
                case 21998:
                case 22186:
                case 22203:
                case 25188:
                case 30114:
                case 30321:
                case 2352003:
                case 2807729:
                    i = 2;
                    break;
                case 134:
                case 17026:
                case 21358:
                case 2274716:
                    i = 3;
                    break;
                case 160:
                case 166:
                case ByteCode.FRETURN:
                case 183:
                case 187:
                case 224:
                case TranSceneConfig.TSCENE_TYPE_VOICE_ASSISTANT_SMILE:
                case 16868:
                case 18407:
                case 19899:
                case 20532:
                case 20533:
                case 21936:
                case 21968:
                case 25152:
                case 28032:
                case 30113:
                case 30320:
                case 290298740:
                case 357149030:
                case 374648427:
                case 408125543:
                case 440786851:
                case 475249515:
                case 524531317:
                    i = 1;
                    break;
                case 161:
                case 163:
                case 165:
                case 16877:
                case 16981:
                case 18402:
                case 21419:
                case 25506:
                case 30322:
                    i = 4;
                    break;
                case 181:
                case 17545:
                case 21969:
                case 21970:
                case 21971:
                case 21972:
                case 21973:
                case 21974:
                case 21975:
                case 21976:
                case 21977:
                case 21978:
                case 30323:
                case 30324:
                case 30325:
                    i = 5;
                    break;
                default:
                    i = 0;
                    break;
            }
            if (i != 0) {
                if (i == 1) {
                    long jA2 = wzVar.a();
                    this.b.push(new a(this.f, this.g + jA2));
                    ((lu0.a) this.d).a(this.f, jA2, this.g);
                    this.e = 0;
                    return true;
                }
                long j = 0;
                if (i == 2) {
                    long j2 = this.g;
                    if (j2 > 8) {
                        throw eg1.a("Invalid integer size: " + this.g, (Exception) null);
                    }
                    z40 z40Var2 = this.d;
                    int i3 = this.f;
                    int i4 = (int) j2;
                    wzVar.a(this.a, 0, i4, false);
                    for (int i5 = 0; i5 < i4; i5++) {
                        j = (j << 8) | ((long) (this.a[i5] & 255));
                    }
                    ((lu0.a) z40Var2).a(i3, j);
                    this.e = 0;
                    return true;
                }
                if (i == 3) {
                    long j3 = this.g;
                    if (j3 > 2147483647L) {
                        throw eg1.a("String element size: " + this.g, (Exception) null);
                    }
                    z40 z40Var3 = this.d;
                    int i6 = this.f;
                    int i7 = (int) j3;
                    if (i7 == 0) {
                        str = "";
                    } else {
                        byte[] bArr = new byte[i7];
                        wzVar.a(bArr, 0, i7, false);
                        while (i7 > 0 && bArr[i7 - 1] == 0) {
                            i7--;
                        }
                        str = new String(bArr, 0, i7);
                    }
                    ((lu0.a) z40Var3).a(i6, str);
                    this.e = 0;
                    return true;
                }
                if (i == 4) {
                    ((lu0.a) this.d).a(this.f, (int) this.g, wzVar);
                    this.e = 0;
                    return true;
                }
                if (i != 5) {
                    throw eg1.a("Invalid element type " + i, (Exception) null);
                }
                long j4 = this.g;
                if (j4 != 4 && j4 != 8) {
                    throw eg1.a("Invalid float size: " + this.g, (Exception) null);
                }
                z40 z40Var4 = this.d;
                int i8 = this.f;
                int i9 = (int) j4;
                wzVar.a(this.a, 0, i9, false);
                for (int i10 = 0; i10 < i9; i10++) {
                    j = ((long) (this.a[i10] & 255)) | (j << 8);
                }
                ((lu0.a) z40Var4).a(i8, i9 == 4 ? Float.intBitsToFloat((int) j) : Double.longBitsToDouble(j));
                this.e = 0;
                return true;
            }
            wzVar.a((int) this.g);
            this.e = 0;
        }
    }

    public final void a() {
        this.e = 0;
        this.b.clear();
        this.c.b();
    }
}
