package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import sd.q;

public final class Code128Writer extends q {

    private enum CType {
        UNCODABLE,
        ONE_DIGIT,
        TWO_DIGITS,
        FNC_1
    }

    private static final class MinimalEncoder {

        private int[][] f32094a;

        private Latch[][] f32095b;

        private enum Charset {
            A,
            B,
            C,
            NONE
        }

        private enum Latch {
            A,
            B,
            C,
            SHIFT,
            NONE
        }

        private MinimalEncoder() {
        }

        private static void b(Collection collection, int i10, int[] iArr, int[] iArr2, int i11) {
            collection.add(com.google.zxing.oned.a.f32098a[i10]);
            if (i11 != 0) {
                iArr2[0] = iArr2[0] + 1;
            }
            iArr[0] = iArr[0] + (i10 * iArr2[0]);
        }

        private boolean c(CharSequence charSequence, Charset charset, int i10) {
            int i11;
            char cCharAt = charSequence.charAt(i10);
            int i12 = a.f32097b[charset.ordinal()];
            if (i12 == 1) {
                return cCharAt == 241 || cCharAt == 242 || cCharAt == 243 || cCharAt == 244 || " !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001fÿ".indexOf(cCharAt) >= 0;
            }
            if (i12 == 2) {
                return cCharAt == 241 || cCharAt == 242 || cCharAt == 243 || cCharAt == 244 || " !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\u007fÿ".indexOf(cCharAt) >= 0;
            }
            if (i12 != 3) {
                return false;
            }
            return cCharAt == 241 || ((i11 = i10 + 1) < charSequence.length() && f(cCharAt) && f(charSequence.charAt(i11)));
        }

        private int d(CharSequence charSequence, Charset charset, int i10) {
            int iD;
            int iD2;
            int i11 = this.f32094a[charset.ordinal()][i10];
            if (i11 > 0) {
                return i11;
            }
            Latch latch = Latch.NONE;
            int i12 = i10 + 1;
            boolean z10 = i12 >= charSequence.length();
            Charset[] charsetArr = {Charset.A, Charset.B};
            int i13 = Integer.MAX_VALUE;
            for (int i14 = 0; i14 <= 1; i14++) {
                if (c(charSequence, charsetArr[i14], i10)) {
                    Latch latchValueOf = Latch.NONE;
                    Charset charset2 = charsetArr[i14];
                    if (charset != charset2) {
                        latchValueOf = Latch.valueOf(charset2.toString());
                        iD2 = 2;
                    } else {
                        iD2 = 1;
                    }
                    if (!z10) {
                        iD2 += d(charSequence, charsetArr[i14], i12);
                    }
                    if (iD2 < i13) {
                        latch = latchValueOf;
                        i13 = iD2;
                    }
                    if (charset == charsetArr[(i14 + 1) % 2]) {
                        Latch latch2 = Latch.SHIFT;
                        int iD3 = !z10 ? d(charSequence, charset, i12) + 2 : 2;
                        if (iD3 < i13) {
                            latch = latch2;
                            i13 = iD3;
                        }
                    }
                }
            }
            Charset charset3 = Charset.C;
            if (c(charSequence, charset3, i10)) {
                Latch latch3 = Latch.NONE;
                if (charset != charset3) {
                    latch3 = Latch.C;
                    iD = 2;
                } else {
                    iD = 1;
                }
                int i15 = (charSequence.charAt(i10) == 241 ? 1 : 2) + i10;
                if (i15 < charSequence.length()) {
                    iD += d(charSequence, charset3, i15);
                }
                if (iD < i13) {
                    latch = latch3;
                    i13 = iD;
                }
            }
            if (i13 != Integer.MAX_VALUE) {
                this.f32094a[charset.ordinal()][i10] = i13;
                this.f32095b[charset.ordinal()][i10] = latch;
                return i13;
            }
            throw new IllegalArgumentException("Bad character in input: ASCII value=" + ((int) charSequence.charAt(i10)));
        }

        /* JADX WARN: Code duplicated, block: B:30:0x009b  */
        /* JADX WARN: Code duplicated, block: B:32:0x00a3  */
        /* JADX WARN: Code duplicated, block: B:33:0x00a7  */
        /* JADX WARN: Code duplicated, block: B:35:0x00b8  */
        /* JADX WARN: Code duplicated, block: B:36:0x00ba  */
        /* JADX WARN: Code duplicated, block: B:38:0x00c1  */
        /* JADX WARN: Code duplicated, block: B:39:0x00c8  */
        /* JADX WARN: Code duplicated, block: B:49:0x00db  */
        /* JADX WARN: Code duplicated, block: B:50:0x00de  */
        /* JADX WARN: Code duplicated, block: B:51:0x00e1  */
        /* JADX WARN: Code duplicated, block: B:69:0x00f9 A[SYNTHETIC] */
        public boolean[] e(String str) {
            Charset charset;
            int i10;
            int i11 = 2;
            this.f32094a = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 4, str.length());
            this.f32095b = (Latch[][]) Array.newInstance((Class<?>) Latch.class, 4, str.length());
            Charset charset2 = Charset.NONE;
            d(str, charset2, 0);
            ArrayList arrayList = new ArrayList();
            int[] iArr = {0};
            int[] iArr2 = {1};
            int length = str.length();
            int i12 = 0;
            while (i12 < length) {
                Latch latch = this.f32095b[charset2.ordinal()][i12];
                int i13 = a.f32096a[latch.ordinal()];
                int iCharAt = 101;
                if (i13 == 1) {
                    charset = Charset.A;
                    b(arrayList, i12 == 0 ? 103 : 101, iArr, iArr2, i12);
                } else if (i13 != i11) {
                    if (i13 == 3) {
                        charset = Charset.C;
                        b(arrayList, i12 == 0 ? 105 : 99, iArr, iArr2, i12);
                    } else if (i13 == 4) {
                        b(arrayList, 98, iArr, iArr2, i12);
                    }
                    if (charset2 == Charset.C) {
                        switch (str.charAt(i12)) {
                            case 241:
                                iCharAt = 102;
                                break;
                            case 242:
                                iCharAt = 97;
                                break;
                            case 243:
                                iCharAt = 96;
                                break;
                            case 244:
                                if ((charset2 != Charset.A || latch == Latch.SHIFT) && (charset2 != Charset.B || latch != Latch.SHIFT)) {
                                }
                                break;
                            default:
                                iCharAt = str.charAt(i12) - ' ';
                                break;
                        }
                        if (((charset2 != Charset.A && latch != Latch.SHIFT) || (charset2 == Charset.B && latch == Latch.SHIFT)) && iCharAt < 0) {
                        }
                        b(arrayList, iCharAt, iArr, iArr2, i12);
                    } else if (str.charAt(i12) == 241) {
                        b(arrayList, 102, iArr, iArr2, i12);
                    } else {
                        b(arrayList, Integer.parseInt(str.substring(i12, i12 + 2)), iArr, iArr2, i12);
                        i10 = i12 + 1;
                        if (i10 < length) {
                            i12 = i10;
                        }
                    }
                    i12++;
                    i11 = 2;
                } else {
                    charset = Charset.B;
                    b(arrayList, i12 == 0 ? 104 : 100, iArr, iArr2, i12);
                }
                charset2 = charset;
                if (charset2 == Charset.C) {
                    switch (str.charAt(i12)) {
                        case 241:
                            iCharAt = 102;
                            break;
                        case 242:
                            iCharAt = 97;
                            break;
                        case 243:
                            iCharAt = 96;
                            break;
                        case 244:
                            iCharAt = charset2 != Charset.A ? 100 : 100;
                            break;
                        default:
                            iCharAt = str.charAt(i12) - ' ';
                            break;
                    }
                    iCharAt = charset2 != Charset.A ? iCharAt + 96 : iCharAt + 96;
                    b(arrayList, iCharAt, iArr, iArr2, i12);
                } else if (str.charAt(i12) == 241) {
                    b(arrayList, 102, iArr, iArr2, i12);
                } else {
                    b(arrayList, Integer.parseInt(str.substring(i12, i12 + 2)), iArr, iArr2, i12);
                    i10 = i12 + 1;
                    if (i10 < length) {
                        i12 = i10;
                    }
                }
                i12++;
                i11 = 2;
            }
            this.f32094a = null;
            this.f32095b = null;
            return Code128Writer.m(arrayList, iArr[0]);
        }

        private static boolean f(char c10) {
            return c10 >= '0' && c10 <= '9';
        }

        MinimalEncoder(a aVar) {
            this();
        }
    }

    static class a {

        static final int[] f32096a;

        static final int[] f32097b;

        static {
            int[] iArr = new int[MinimalEncoder.Charset.values().length];
            f32097b = iArr;
            try {
                iArr[MinimalEncoder.Charset.A.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f32097b[MinimalEncoder.Charset.B.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f32097b[MinimalEncoder.Charset.C.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[MinimalEncoder.Latch.values().length];
            f32096a = iArr2;
            try {
                iArr2[MinimalEncoder.Latch.A.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f32096a[MinimalEncoder.Latch.B.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f32096a[MinimalEncoder.Latch.C.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f32096a[MinimalEncoder.Latch.SHIFT.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    private static int i(String str, Map map) {
        int length = str.length();
        if (length < 1 || length > 80) {
            throw new IllegalArgumentException("Contents length should be between 1 and 80 characters, but got " + length);
        }
        if (map != null) {
            EncodeHintType encodeHintType = EncodeHintType.FORCE_CODE_SET;
            if (map.containsKey(encodeHintType)) {
                String string = map.get(encodeHintType).toString();
                string.hashCode();
                switch (string) {
                    case "A":
                        break;
                    case "B":
                        break;
                    case "C":
                        break;
                    default:
                        throw new IllegalArgumentException("Unsupported code set hint: " + string);
                }
            }
        }
        for (int i10 = 0; i10 < length; i10++) {
            char cCharAt = str.charAt(i10);
            switch (cCharAt) {
                case 241:
                case 242:
                case 243:
                case 244:
                    break;
                default:
                    if (cCharAt > 127) {
                        throw new IllegalArgumentException("Bad character in input: ASCII value=" + ((int) cCharAt));
                    }
                    break;
            }
            /*  JADX ERROR: Method code generation error
                java.lang.NullPointerException: Switch insn not found in header
                	at java.base/java.util.Objects.requireNonNull(Objects.java:235)
                	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:246)
                	at jadx.core.dex.regions.SwitchRegion.generate(SwitchRegion.java:90)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                	at jadx.core.codegen.RegionGen.makeLoop(RegionGen.java:195)
                	at jadx.core.dex.regions.loops.LoopRegion.generate(LoopRegion.java:173)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:291)
                	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:270)
                	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:420)
                	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
                	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:299)
                	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                */
            /*
                Method dump skipped, instruction units count: 320
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.oned.Code128Writer.i(java.lang.String, java.util.Map):int");
        }

        private static int j(CharSequence charSequence, int i10, int i11) {
            CType cTypeL;
            CType cTypeL2;
            char cCharAt;
            CType cTypeL3 = l(charSequence, i10);
            CType cType = CType.ONE_DIGIT;
            if (cTypeL3 == cType) {
                return i11 == 101 ? 101 : 100;
            }
            CType cType2 = CType.UNCODABLE;
            if (cTypeL3 == cType2) {
                return (i10 >= charSequence.length() || ((cCharAt = charSequence.charAt(i10)) >= ' ' && (i11 != 101 || (cCharAt >= '`' && (cCharAt < 241 || cCharAt > 244))))) ? 100 : 101;
            }
            if (i11 == 101 && cTypeL3 == CType.FNC_1) {
                return 101;
            }
            if (i11 == 99) {
                return 99;
            }
            if (i11 != 100) {
                if (cTypeL3 == CType.FNC_1) {
                    cTypeL3 = l(charSequence, i10 + 1);
                }
                return cTypeL3 == CType.TWO_DIGITS ? 99 : 100;
            }
            CType cType3 = CType.FNC_1;
            if (cTypeL3 == cType3 || (cTypeL = l(charSequence, i10 + 2)) == cType2 || cTypeL == cType) {
                return 100;
            }
            if (cTypeL == cType3) {
                return l(charSequence, i10 + 3) == CType.TWO_DIGITS ? 99 : 100;
            }
            int i12 = i10 + 4;
            while (true) {
                cTypeL2 = l(charSequence, i12);
                if (cTypeL2 != CType.TWO_DIGITS) {
                    break;
                }
                i12 += 2;
            }
            return cTypeL2 == CType.ONE_DIGIT ? 100 : 99;
        }

        private static boolean[] k(String str, int i10) {
            int length = str.length();
            ArrayList arrayList = new ArrayList();
            int i11 = 0;
            int i12 = 0;
            int i13 = 0;
            int i14 = 1;
            while (i11 < length) {
                int iJ = i10 == -1 ? j(str, i11, i13) : i10;
                int iCharAt = 100;
                if (iJ == i13) {
                    switch (str.charAt(i11)) {
                        case 241:
                            iCharAt = 102;
                            break;
                        case 242:
                            iCharAt = 97;
                            break;
                        case 243:
                            iCharAt = 96;
                            break;
                        case 244:
                            if (i13 == 101) {
                                iCharAt = 101;
                            }
                            break;
                        default:
                            if (i13 == 100) {
                                iCharAt = str.charAt(i11) - ' ';
                            } else if (i13 == 101) {
                                char cCharAt = str.charAt(i11);
                                iCharAt = cCharAt - ' ';
                                if (iCharAt < 0) {
                                    iCharAt = cCharAt + '@';
                                }
                            } else {
                                int i15 = i11 + 1;
                                if (i15 == length) {
                                    throw new IllegalArgumentException("Bad number of characters for digit only encoding.");
                                }
                                iCharAt = Integer.parseInt(str.substring(i11, i11 + 2));
                                i11 = i15;
                            }
                            break;
                    }
                    i11++;
                } else {
                    if (i13 == 0) {
                        iCharAt = iJ != 100 ? iJ != 101 ? 105 : 103 : 104;
                    } else {
                        iCharAt = iJ;
                    }
                    i13 = iJ;
                }
                arrayList.add(com.google.zxing.oned.a.f32098a[iCharAt]);
                i12 += iCharAt * i14;
                if (i11 != 0) {
                    i14++;
                }
            }
            return m(arrayList, i12);
        }

        private static CType l(CharSequence charSequence, int i10) {
            int length = charSequence.length();
            if (i10 >= length) {
                return CType.UNCODABLE;
            }
            char cCharAt = charSequence.charAt(i10);
            if (cCharAt == 241) {
                return CType.FNC_1;
            }
            if (cCharAt < '0' || cCharAt > '9') {
                return CType.UNCODABLE;
            }
            int i11 = i10 + 1;
            if (i11 >= length) {
                return CType.ONE_DIGIT;
            }
            char cCharAt2 = charSequence.charAt(i11);
            return (cCharAt2 < '0' || cCharAt2 > '9') ? CType.ONE_DIGIT : CType.TWO_DIGITS;
        }

        static boolean[] m(Collection collection, int i10) {
            int[][] iArr = com.google.zxing.oned.a.f32098a;
            collection.add(iArr[i10 % 103]);
            collection.add(iArr[106]);
            Iterator it = collection.iterator();
            int iB = 0;
            int i11 = 0;
            while (it.hasNext()) {
                for (int i12 : (int[]) it.next()) {
                    i11 += i12;
                }
            }
            boolean[] zArr = new boolean[i11];
            Iterator it2 = collection.iterator();
            while (it2.hasNext()) {
                iB += q.b(zArr, iB, (int[]) it2.next(), true);
            }
            return zArr;
        }

        @Override
        public boolean[] d(String str) {
            return e(str, null);
        }

        @Override
        public boolean[] e(String str, Map map) {
            int i10 = i(str, map);
            if (map != null) {
                EncodeHintType encodeHintType = EncodeHintType.CODE128_COMPACT;
                if (map.containsKey(encodeHintType) && Boolean.parseBoolean(map.get(encodeHintType).toString())) {
                    return new MinimalEncoder(null).e(str);
                }
            }
            return k(str, i10);
        }

        @Override
        protected Collection g() {
            return Collections.singleton(BarcodeFormat.CODE_128);
        }
    }
