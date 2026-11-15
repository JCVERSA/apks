package defpackage;

import com.google.android.gms.internal.ads.zzaz;
import com.hunantv.media.drm.IDrmSession;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import java.util.ArrayDeque;
import org.mozilla.classfile.ByteCode;

public final class sde {
    public final byte[] a = new byte[8];
    public final ArrayDeque b = new ArrayDeque();
    public final zde c = new zde();
    public tde d;
    public int e;
    public int f;
    public long g;

    public final void a(tde tdeVar) {
        this.d = tdeVar;
    }

    public final void b() {
        this.e = 0;
        this.b.clear();
        this.c.e();
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00a9 A[LOOP:0: B:3:0x0005->B:37:0x00a9, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:47:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:48:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:57:0x0121  */
    /* JADX WARN: Code duplicated, block: B:59:0x0124  */
    /* JADX WARN: Code duplicated, block: B:60:0x0127  */
    /* JADX WARN: Code duplicated, block: B:62:0x012e  */
    /* JADX WARN: Code duplicated, block: B:64:0x0134 A[LOOP:2: B:61:0x012c->B:64:0x0134, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:68:0x0141  */
    /* JADX WARN: Code duplicated, block: B:72:0x015d  */
    /* JADX WARN: Code duplicated, block: B:74:0x0168  */
    /* JADX WARN: Code duplicated, block: B:78:0x00b3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:79:0x00ee A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:80:0x00f7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:81:0x0118 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:82:0x0157 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:91:0x0136 A[SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:68:0x0141, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:74:0x0168, please report this as an issue */
    public final boolean c(d9e d9eVar) throws zzaz {
        int i;
        xde xdeVar;
        long j;
        long j2;
        int i2;
        byte[] bArr;
        String str;
        int i3;
        long j3;
        int i4;
        long jD;
        double dLongBitsToDouble;
        int iB;
        int iC;
        n7g.b(this.d);
        while (true) {
            ArrayDeque arrayDeque = this.b;
            ode odeVar = (ode) arrayDeque.peek();
            if (odeVar != null && d9eVar.zzf() >= odeVar.b) {
                ((ude) this.d).a.h(((ode) arrayDeque.pop()).a);
                return true;
            }
            int i5 = this.e;
            if (i5 != 0) {
                if (i5 == 1) {
                }
                tde tdeVar = this.d;
                i = this.f;
                xdeVar = ((ude) tdeVar).a;
                switch (i) {
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
                    case 21938:
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
                        j = this.g;
                        if (j <= 8) {
                            xdeVar.j(i, d(d9eVar, (int) j));
                            this.e = 0;
                            return true;
                        }
                        throw zzaz.zza("Invalid integer size: " + j, null);
                    case 134:
                    case 17026:
                    case 21358:
                    case 2274716:
                        j2 = this.g;
                        if (j2 <= 2147483647L) {
                            throw zzaz.zza("String element size: " + j2, null);
                        }
                        i2 = (int) j2;
                        if (i2 == 0) {
                            str = "";
                        } else {
                            bArr = new byte[i2];
                            d9eVar.h(bArr, 0, i2);
                            while (i2 > 0) {
                                i3 = i2 - 1;
                                if (bArr[i3] == 0) {
                                    i2 = i3;
                                } else {
                                    str = new String(bArr, 0, i2);
                                }
                            }
                            str = new String(bArr, 0, i2);
                        }
                        xdeVar.l(i, str);
                        this.e = 0;
                        return true;
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
                        long jZzf = d9eVar.zzf();
                        arrayDeque.push(new ode(i, this.g + jZzf, null));
                        ((ude) this.d).a.k(this.f, jZzf, this.g);
                        this.e = 0;
                        return true;
                    case 161:
                    case 163:
                    case 165:
                    case 16877:
                    case 16981:
                    case 18402:
                    case 21419:
                    case 25506:
                    case 30322:
                        xdeVar.g(i, (int) this.g, d9eVar);
                        this.e = 0;
                        return true;
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
                        j3 = this.g;
                        if (j3 == 4 && j3 != 8) {
                            throw zzaz.zza("Invalid float size: " + j3, null);
                        }
                        i4 = (int) j3;
                        jD = d(d9eVar, i4);
                        if (i4 == 4) {
                            dLongBitsToDouble = Float.intBitsToFloat((int) jD);
                        } else {
                            dLongBitsToDouble = Double.longBitsToDouble(jD);
                        }
                        xdeVar.i(i, dLongBitsToDouble);
                        this.e = 0;
                        return true;
                    default:
                        d9eVar.f((int) this.g);
                        this.e = 0;
                        break;
                }
            } else {
                long jD2 = this.c.d(d9eVar, true, false, 4);
                if (jD2 == -2) {
                    d9eVar.zzj();
                    while (true) {
                        byte[] bArr2 = this.a;
                        d9eVar.i(bArr2, 0, 4);
                        iB = zde.b(bArr2[0]);
                        if (iB != -1 && iB <= 4) {
                            iC = (int) zde.c(bArr2, iB, false);
                            xde xdeVar2 = ((ude) this.d).a;
                            if (iC != 357149030 && iC != 524531317 && iC != 475249515) {
                                if (iC == 374648427) {
                                    iC = 374648427;
                                }
                            }
                        }
                        d9eVar.f(1);
                    }
                    d9eVar.f(iB);
                    jD2 = iC;
                }
                if (jD2 == -1) {
                    return false;
                }
                this.f = (int) jD2;
                this.e = 1;
            }
            this.g = this.c.d(d9eVar, false, true, 8);
            this.e = 2;
            tde tdeVar2 = this.d;
            i = this.f;
            xdeVar = ((ude) tdeVar2).a;
            switch (i) {
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
                case 21938:
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
                    j = this.g;
                    if (j <= 8) {
                        xdeVar.j(i, d(d9eVar, (int) j));
                        this.e = 0;
                        return true;
                    }
                    throw zzaz.zza("Invalid integer size: " + j, null);
                case 134:
                case 17026:
                case 21358:
                case 2274716:
                    j2 = this.g;
                    if (j2 <= 2147483647L) {
                        throw zzaz.zza("String element size: " + j2, null);
                    }
                    i2 = (int) j2;
                    if (i2 == 0) {
                        str = "";
                    } else {
                        bArr = new byte[i2];
                        d9eVar.h(bArr, 0, i2);
                        while (i2 > 0) {
                            i3 = i2 - 1;
                            if (bArr[i3] == 0) {
                                i2 = i3;
                            } else {
                                str = new String(bArr, 0, i2);
                            }
                        }
                        str = new String(bArr, 0, i2);
                    }
                    xdeVar.l(i, str);
                    this.e = 0;
                    return true;
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
                    long jZzf2 = d9eVar.zzf();
                    arrayDeque.push(new ode(i, this.g + jZzf2, null));
                    ((ude) this.d).a.k(this.f, jZzf2, this.g);
                    this.e = 0;
                    return true;
                case 161:
                case 163:
                case 165:
                case 16877:
                case 16981:
                case 18402:
                case 21419:
                case 25506:
                case 30322:
                    xdeVar.g(i, (int) this.g, d9eVar);
                    this.e = 0;
                    return true;
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
                    j3 = this.g;
                    if (j3 == 4) {
                        break;
                    }
                    i4 = (int) j3;
                    jD = d(d9eVar, i4);
                    if (i4 == 4) {
                        dLongBitsToDouble = Float.intBitsToFloat((int) jD);
                    } else {
                        dLongBitsToDouble = Double.longBitsToDouble(jD);
                    }
                    xdeVar.i(i, dLongBitsToDouble);
                    this.e = 0;
                    return true;
                default:
                    d9eVar.f((int) this.g);
                    this.e = 0;
                    break;
            }
        }
    }

    public final long d(d9e d9eVar, int i) {
        byte[] bArr = this.a;
        d9eVar.h(bArr, 0, i);
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j = (j << 8) | ((long) (bArr[i2] & 255));
        }
        return j;
    }
}
