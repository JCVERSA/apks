package com.google.android.gms.internal.play_billing;

import java.util.Arrays;

final class zzaq extends zzai {
    static final zzai zza = new zzaq(null, new Object[0], 0);
    final transient Object[] zzb;
    private final transient Object zzc;
    private final transient int zzd;

    private zzaq(Object obj, Object[] objArr, int i10) {
        this.zzc = obj;
        this.zzb = objArr;
        this.zzd = i10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v27 */
    /* JADX WARN: Type inference failed for: r2v34 */
    /* JADX WARN: Type inference failed for: r2v35 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r5v4, types: [int[]] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v3, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r6v4 */
    static zzaq zzf(int i10, Object[] objArr, zzah zzahVar) {
        int iHighestOneBit;
        short[] sArr;
        ?? r10;
        ?? r11;
        int i11 = i10;
        Object[] objArrCopyOf = objArr;
        if (i11 == 0) {
            return (zzaq) zza;
        }
        zzag zzagVar = null;
        ?? r12 = 0;
        zzag zzagVar2 = null;
        zzag zzagVar3 = null;
        if (i11 == 1) {
            Object obj = objArrCopyOf[0];
            obj.getClass();
            Object obj2 = objArrCopyOf[1];
            obj2.getClass();
            zzaa.zza(obj, obj2);
            return new zzaq(null, objArrCopyOf, 1);
        }
        zzx.zzb(i11, objArrCopyOf.length >> 1, "index");
        char c10 = 2;
        int iMax = Math.max(i11, 2);
        if (iMax < 751619276) {
            iHighestOneBit = Integer.highestOneBit(iMax - 1);
            do {
                iHighestOneBit += iHighestOneBit;
            } while (((double) iHighestOneBit) * 0.7d < iMax);
        } else {
            iHighestOneBit = 1073741824;
            if (iMax >= 1073741824) {
                throw new IllegalArgumentException("collection too large");
            }
        }
        if (i11 == 1) {
            Object obj3 = objArrCopyOf[0];
            obj3.getClass();
            Object obj4 = objArrCopyOf[1];
            obj4.getClass();
            zzaa.zza(obj3, obj4);
            i11 = 1;
        } else {
            int i12 = iHighestOneBit - 1;
            byte b10 = -1;
            if (iHighestOneBit <= 128) {
                byte[] bArr = new byte[iHighestOneBit];
                Arrays.fill(bArr, (byte) -1);
                int i13 = 0;
                for (int i14 = 0; i14 < i11; i14++) {
                    int i15 = i13 + i13;
                    int i16 = i14 + i14;
                    Object obj5 = objArrCopyOf[i16];
                    obj5.getClass();
                    Object obj6 = objArrCopyOf[i16 ^ 1];
                    obj6.getClass();
                    zzaa.zza(obj5, obj6);
                    int iZza = zzab.zza(obj5.hashCode());
                    while (true) {
                        int i17 = iZza & i12;
                        int i18 = bArr[i17] & 255;
                        if (i18 == 255) {
                            bArr[i17] = (byte) i15;
                            if (i13 < i14) {
                                objArrCopyOf[i15] = obj5;
                                objArrCopyOf[i15 ^ 1] = obj6;
                            }
                            i13++;
                            break;
                        }
                        if (obj5.equals(objArrCopyOf[i18 == true ? 1 : 0])) {
                            int i19 = ~i18;
                            Object obj7 = objArrCopyOf[i19 == true ? 1 : 0];
                            obj7.getClass();
                            zzag zzagVar4 = new zzag(obj5, obj6, obj7);
                            objArrCopyOf[i19 == true ? 1 : 0] = obj6;
                            zzagVar2 = zzagVar4;
                            break;
                        }
                        iZza = i17 + 1;
                    }
                }
                if (i13 == i11) {
                    r11 = bArr;
                    c10 = 2;
                    r12 = r11;
                } else {
                    r12 = new Object[]{bArr, Integer.valueOf(i13), zzagVar2};
                    c10 = 2;
                }
            } else if (iHighestOneBit <= 32768) {
                sArr = new short[iHighestOneBit];
                Arrays.fill(sArr, (short) -1);
                int i20 = 0;
                for (int i21 = 0; i21 < i11; i21++) {
                    int i22 = i20 + i20;
                    int i23 = i21 + i21;
                    Object obj8 = objArrCopyOf[i23];
                    obj8.getClass();
                    Object obj9 = objArrCopyOf[i23 ^ 1];
                    obj9.getClass();
                    zzaa.zza(obj8, obj9);
                    int iZza2 = zzab.zza(obj8.hashCode());
                    while (true) {
                        int i24 = iZza2 & i12;
                        char c11 = (char) sArr[i24];
                        if (c11 == 65535) {
                            sArr[i24] = (short) i22;
                            if (i20 < i21) {
                                objArrCopyOf[i22] = obj8;
                                objArrCopyOf[i22 ^ 1] = obj9;
                            }
                            i20++;
                            break;
                        }
                        if (obj8.equals(objArrCopyOf[c11])) {
                            int i25 = c11 ^ 1;
                            Object obj10 = objArrCopyOf[i25 == true ? 1 : 0];
                            obj10.getClass();
                            zzag zzagVar5 = new zzag(obj8, obj9, obj10);
                            objArrCopyOf[i25 == true ? 1 : 0] = obj9;
                            zzagVar3 = zzagVar5;
                            break;
                        }
                        iZza2 = i24 + 1;
                    }
                }
                if (i20 != i11) {
                    c10 = 2;
                    r10 = new Object[]{sArr, Integer.valueOf(i20), zzagVar3};
                    r12 = r10;
                }
                r11 = sArr;
                c10 = 2;
                r12 = r11;
            } else {
                sArr = new int[iHighestOneBit];
                Arrays.fill((int[]) sArr, -1);
                int i26 = 0;
                int i27 = 0;
                while (i26 < i11) {
                    int i28 = i27 + i27;
                    int i29 = i26 + i26;
                    Object obj11 = objArrCopyOf[i29];
                    obj11.getClass();
                    Object obj12 = objArrCopyOf[i29 ^ 1];
                    obj12.getClass();
                    zzaa.zza(obj11, obj12);
                    int iZza3 = zzab.zza(obj11.hashCode());
                    while (true) {
                        int i30 = iZza3 & i12;
                        ?? r15 = sArr[i30];
                        if (r15 == b10) {
                            sArr[i30] = i28;
                            if (i27 < i26) {
                                objArrCopyOf[i28] = obj11;
                                objArrCopyOf[i28 ^ 1] = obj12;
                            }
                            i27++;
                            break;
                        }
                        if (obj11.equals(objArrCopyOf[r15])) {
                            int i31 = r15 ^ 1;
                            Object obj13 = objArrCopyOf[i31 == true ? 1 : 0];
                            obj13.getClass();
                            zzag zzagVar6 = new zzag(obj11, obj12, obj13);
                            objArrCopyOf[i31 == true ? 1 : 0] = obj12;
                            zzagVar = zzagVar6;
                            break;
                        }
                        iZza3 = i30 + 1;
                        b10 = -1;
                    }
                    i26++;
                    b10 = -1;
                }
                if (i27 != i11) {
                    c10 = 2;
                    r10 = new Object[]{sArr, Integer.valueOf(i27), zzagVar};
                    r12 = r10;
                }
                r11 = sArr;
                c10 = 2;
                r12 = r11;
            }
        }
        boolean z10 = r12 instanceof Object[];
        ?? r13 = r12;
        if (z10) {
            Object[] objArr2 = (Object[]) r12;
            zzahVar.zzc = (zzag) objArr2[c10];
            Object obj14 = objArr2[0];
            int iIntValue = ((Integer) objArr2[1]).intValue();
            objArrCopyOf = Arrays.copyOf(objArrCopyOf, iIntValue + iIntValue);
            r13 = obj14;
            i11 = iIntValue;
        }
        return new zzaq(r13, objArrCopyOf, i11);
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0003  */
    @Override
    public final Object get(Object obj) {
        Object obj2;
        if (obj == null) {
            obj2 = null;
        } else {
            int i10 = this.zzd;
            Object[] objArr = this.zzb;
            if (i10 == 1) {
                Object obj3 = objArr[0];
                obj3.getClass();
                if (obj3.equals(obj)) {
                    obj2 = objArr[1];
                    obj2.getClass();
                } else {
                    obj2 = null;
                }
            } else {
                Object obj4 = this.zzc;
                if (obj4 == null) {
                    obj2 = null;
                } else if (obj4 instanceof byte[]) {
                    byte[] bArr = (byte[]) obj4;
                    int length = bArr.length - 1;
                    int iZza = zzab.zza(obj.hashCode());
                    while (true) {
                        int i11 = iZza & length;
                        int i12 = bArr[i11] & 255;
                        if (i12 == 255) {
                            break;
                        }
                        if (obj.equals(objArr[i12])) {
                            obj2 = objArr[i12 ^ 1];
                        } else {
                            iZza = i11 + 1;
                        }
                    }
                    obj2 = null;
                } else if (obj4 instanceof short[]) {
                    short[] sArr = (short[]) obj4;
                    int length2 = sArr.length - 1;
                    int iZza2 = zzab.zza(obj.hashCode());
                    while (true) {
                        int i13 = iZza2 & length2;
                        char c10 = (char) sArr[i13];
                        if (c10 == 65535) {
                            break;
                        }
                        if (obj.equals(objArr[c10])) {
                            obj2 = objArr[c10 ^ 1];
                        } else {
                            iZza2 = i13 + 1;
                        }
                    }
                    obj2 = null;
                } else {
                    int[] iArr = (int[]) obj4;
                    int length3 = iArr.length - 1;
                    int iZza3 = zzab.zza(obj.hashCode());
                    while (true) {
                        int i14 = iZza3 & length3;
                        int i15 = iArr[i14];
                        if (i15 == -1) {
                            break;
                        }
                        if (obj.equals(objArr[i15])) {
                            obj2 = objArr[i15 ^ 1];
                        } else {
                            iZza3 = i14 + 1;
                        }
                    }
                    obj2 = null;
                }
            }
        }
        if (obj2 == null) {
            return null;
        }
        return obj2;
    }

    @Override
    public final int size() {
        return this.zzd;
    }

    @Override
    final zzac zza() {
        return new zzap(this.zzb, 1, this.zzd);
    }

    @Override
    final zzaj zzc() {
        return new zzan(this, this.zzb, 0, this.zzd);
    }

    @Override
    final zzaj zzd() {
        return new zzao(this, new zzap(this.zzb, 0, this.zzd));
    }
}
