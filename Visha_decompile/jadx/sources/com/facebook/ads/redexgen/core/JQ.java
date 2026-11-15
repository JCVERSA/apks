package com.facebook.ads.redexgen.core;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.SparseArray;
import androidx.media3.exoplayer.trackselection.AdaptiveTrackSelection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import okio.Utf8;

public final class JQ {
    public static byte[] A07;
    public static String[] A08 = {"kwH2IgvZBGVpLaminurwcFHn", "J6e0tkh1Ff6tZSOwzR7AwbvIu8fVWeGQ", "bmiWbLOqDwiyYFUNe9As1QTlUgH4xYog", "dMXPCdyZdj7A6mfCnV5k3qiAvM2EcvhL", "upBvpVjUbbd4tW9uVknw3ChYtDg3XaKB", "lx9xVZ51GyjZV5dkAVxa", "4OpeXOwoxJhsdURDQeyl4TBKgN5cofiY", "16zjJfNWedSO35u1fMpvBODfGSUbEH9B"};
    public static final byte[] A09;
    public static final byte[] A0A;
    public static final byte[] A0B;
    public Bitmap A00;
    public final Canvas A01;
    public final Paint A02 = new Paint();
    public final Paint A03;
    public final JI A04;
    public final JJ A05;
    public final JP A06;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 19 out of bounds for length 19
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:125)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:656)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    public static JI A04(C4I c4i, int i) {
        int[] iArr;
        int iA04;
        int iA05;
        int iA06;
        int iA07;
        int i2 = 8;
        int iA08 = c4i.A04(8);
        c4i.A09(8);
        int i3 = i - 2;
        int[] iArrA0F = A0F();
        int[] iArrA0G = A0G();
        int[] iArrA0H = A0H();
        while (i3 > 0) {
            int iA09 = c4i.A04(i2);
            int iA010 = c4i.A04(i2);
            int i4 = i3 - 2;
            if ((iA010 & 128) != 0) {
                iArr = iArrA0F;
            } else {
                iArr = (iA010 & 64) != 0 ? iArrA0G : iArrA0H;
            }
            int i5 = iA010 & 1;
            String[] strArr = A08;
            if (strArr[2].charAt(19) == strArr[6].charAt(19)) {
                throw new RuntimeException();
            }
            A08[3] = "yhDNrhcDigDR24Kxe5BS389mQBs2ZM2v";
            if (i5 != 0) {
                iA04 = c4i.A04(i2);
                iA05 = c4i.A04(i2);
                iA06 = c4i.A04(i2);
                iA07 = c4i.A04(i2);
                i3 = i4 - 4;
            } else {
                iA04 = c4i.A04(6) << 2;
                iA05 = c4i.A04(4) << 4;
                iA06 = c4i.A04(4) << 4;
                iA07 = c4i.A04(2) << 6;
                i3 = i4 - 2;
            }
            if (iA04 == 0) {
                iA05 = 0;
                if (A08[3].charAt(20) != '3') {
                    throw new RuntimeException();
                }
                A08[7] = "NRFOfVblegIP33K9RsgAL0VferudmJOb";
                iA06 = 0;
                iA07 = 255;
            }
            iArr[iA09] = A00(255 - (iA07 & 255), AbstractC06244a.A07((int) (((double) iA04) + (((double) (iA05 - 128)) * 1.402d)), 0, 255), AbstractC06244a.A07((int) ((((double) iA04) - (((double) (iA06 - 128)) * 0.34414d)) - (((double) (iA05 - 128)) * 0.71414d)), 0, 255), AbstractC06244a.A07((int) (((double) iA04) + (((double) (iA06 - 128)) * 1.772d)), 0, 255));
            i2 = 8;
        }
        return new JI(iA08, iArrA0F, iArrA0G, iArrA0H);
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 9 out of bounds for length 8
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:125)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:656)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    public static JJ A05(C4I c4i) {
        int iA04;
        int iA05;
        int iA06;
        int iA07;
        c4i.A09(4);
        boolean zA0H = c4i.A0H();
        c4i.A09(3);
        int iA08 = c4i.A04(16);
        int iA09 = c4i.A04(16);
        if (zA0H) {
            iA04 = c4i.A04(16);
            iA07 = c4i.A04(16);
            iA05 = c4i.A04(16);
            iA06 = c4i.A04(16);
        } else {
            iA04 = 0;
            iA05 = 0;
            iA06 = iA09;
            iA07 = iA08;
        }
        return new JJ(iA08, iA09, iA04, iA07, iA05, iA06);
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 27 out of bounds for length 27
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:125)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:656)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    public static JN A08(C4I c4i, int i) {
        int i2 = 8;
        int iA04 = c4i.A04(8);
        c4i.A09(4);
        boolean zA0H = c4i.A0H();
        c4i.A09(3);
        int iA05 = c4i.A04(16);
        int iA06 = c4i.A04(16);
        int iA07 = c4i.A04(3);
        int iA08 = c4i.A04(3);
        c4i.A09(2);
        int iA09 = c4i.A04(8);
        int iA010 = c4i.A04(8);
        int iA011 = c4i.A04(4);
        int iA012 = c4i.A04(2);
        c4i.A09(2);
        int i3 = i - 10;
        SparseArray sparseArray = new SparseArray();
        while (i3 > 0) {
            int iA013 = c4i.A04(16);
            int iA014 = c4i.A04(2);
            int iA015 = c4i.A04(2);
            int iA016 = c4i.A04(12);
            c4i.A09(4);
            int iA017 = c4i.A04(12);
            i3 -= 6;
            int iA018 = 0;
            int iA019 = 0;
            if (iA014 == 1 || iA014 == 2) {
                iA018 = c4i.A04(i2);
                iA019 = c4i.A04(i2);
                i3 -= 2;
            }
            sparseArray.put(iA013, new JO(iA014, iA015, iA016, iA017, iA018, iA019));
            i2 = 8;
        }
        return new JN(iA04, zA0H, iA05, iA06, iA07, iA08, iA09, iA010, iA011, iA012, sparseArray);
    }

    public static String A09(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 22);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0A() {
        A07 = new byte[]{Utf8.REPLACEMENT_BYTE, 26, 15, 26, 91, 29, 18, 30, 23, 31, 91, 23, 30, 21, 28, 15, 19, 91, 30, 3, 24, 30, 30, 31, 8, 91, 23, 18, 22, 18, 15, 98, 80, 68, 118, 71, 84, 85, 67, 84};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 25 out of bounds for length 23
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:125)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:656)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    public final List<C2263o2> A0I(byte[] bArr, int i) {
        C4I c4i = new C4I(bArr, i);
        while (c4i.A01() >= 48 && c4i.A04(8) == 15) {
            A0B(c4i, this.A06);
        }
        JL jl = this.A06.A01;
        if (jl == null) {
            return Collections.emptyList();
        }
        JJ jj = this.A06.A00 != null ? this.A06.A00 : this.A05;
        if (this.A00 == null || jj.A05 + 1 != this.A00.getWidth() || jj.A00 + 1 != this.A00.getHeight()) {
            this.A00 = Bitmap.createBitmap(jj.A05 + 1, jj.A00 + 1, Bitmap.Config.ARGB_8888);
            this.A01.setBitmap(this.A00);
        }
        ArrayList arrayList = new ArrayList();
        SparseArray<JM> sparseArray = jl.A03;
        for (int i2 = 0; i2 < sparseArray.size(); i2++) {
            this.A01.save();
            JM jmValueAt = sparseArray.valueAt(i2);
            JN jn = this.A06.A08.get(sparseArray.keyAt(i2));
            int i3 = jmValueAt.A00 + jj.A02;
            int i4 = jmValueAt.A01 + jj.A04;
            this.A01.clipRect(i3, i4, Math.min(jn.A08 + i3, jj.A01), Math.min(jn.A02 + i4, jj.A03));
            JI ji = this.A06.A06.get(jn.A00);
            if (ji == null && (ji = this.A06.A04.get(jn.A00)) == null) {
                ji = this.A04;
            }
            SparseArray<JO> sparseArray2 = jn.A09;
            for (int i5 = 0; i5 < sparseArray2.size(); i5++) {
                int iKeyAt = sparseArray2.keyAt(i5);
                JO joValueAt = sparseArray2.valueAt(i5);
                JK jk = this.A06.A07.get(iKeyAt);
                if (jk == null) {
                    jk = this.A06.A05.get(iKeyAt);
                }
                if (jk != null) {
                    A0C(jk, ji, jn.A01, i3 + joValueAt.A02, i4 + joValueAt.A05, jk.A01 ? null : this.A02, this.A01);
                }
            }
            if (A08[4].charAt(14) != '9') {
                throw new RuntimeException();
            }
            A08[0] = "Y9Cu9eZ8R7HUBmBBCZ1DilUT";
            if (jn.A0A) {
                this.A03.setColor(jn.A01 == 3 ? ji.A03[jn.A07] : jn.A01 == 2 ? ji.A02[jn.A06] : ji.A01[jn.A05]);
                this.A01.drawRect(i3, i4, jn.A08 + i3, jn.A02 + i4, this.A03);
            }
            arrayList.add(new C3C().A0D(Bitmap.createBitmap(this.A00, i3, i4, jn.A08, jn.A02)).A04(i3 / jj.A05).A0A(0).A07(i4 / jj.A00, 0).A09(0).A06(jn.A08 / jj.A05).A03(jn.A02 / jj.A00).A0H());
            this.A01.drawColor(0, PorterDuff.Mode.CLEAR);
            this.A01.restore();
        }
        return Collections.unmodifiableList(arrayList);
    }

    static {
        A0A();
        A09 = new byte[]{0, 7, 8, 15};
        A0A = new byte[]{0, 119, -120, -1};
        A0B = new byte[]{0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};
    }

    public JQ(int i, int i2) {
        this.A02.setStyle(Paint.Style.FILL_AND_STROKE);
        this.A02.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        this.A02.setPathEffect(null);
        this.A03 = new Paint();
        this.A03.setStyle(Paint.Style.FILL);
        this.A03.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        this.A03.setPathEffect(null);
        this.A01 = new Canvas();
        this.A05 = new JJ(AdaptiveTrackSelection.DEFAULT_MAX_HEIGHT_TO_DISCARD, 575, 0, AdaptiveTrackSelection.DEFAULT_MAX_HEIGHT_TO_DISCARD, 0, 575);
        this.A04 = new JI(0, A0F(), A0G(), A0H());
        this.A06 = new JP(i, i2);
    }

    public static int A00(int i, int i2, int i3, int i4) {
        return (i << 24) | (i2 << 16) | (i3 << 8) | i4;
    }

    public static int A01(C4I c4i, int[] iArr, byte[] bArr, int i, int i2, Paint paint, Canvas canvas) {
        boolean z = false;
        do {
            int iA04 = 0;
            int iA05 = c4i.A04(2);
            if (iA05 != 0) {
                iA04 = 1;
            } else if (c4i.A0H()) {
                iA04 = c4i.A04(3) + 3;
                iA05 = c4i.A04(2);
            } else if (c4i.A0H()) {
                iA04 = 1;
                iA05 = 0;
            } else {
                switch (c4i.A04(2)) {
                    case 0:
                        z = true;
                        iA05 = 0;
                        break;
                    case 1:
                        iA04 = 2;
                        iA05 = 0;
                        break;
                    case 2:
                        int iA06 = c4i.A04(4);
                        if (A08[7].charAt(9) != 'e') {
                            A08[7] = "PWQusWjmzTX1R8w37TeIuijcGSqhz46U";
                            iA04 = iA06 + 12;
                            iA05 = c4i.A04(2);
                        } else {
                            throw new RuntimeException();
                        }
                        break;
                    case 3:
                        iA04 = c4i.A04(8) + 29;
                        iA05 = c4i.A04(2);
                        break;
                    default:
                        iA05 = 0;
                        break;
                }
            }
            if (iA04 != 0 && paint != null) {
                if (bArr != null) {
                    iA05 = bArr[iA05];
                }
                paint.setColor(iArr[iA05]);
                canvas.drawRect(i, i2, i + iA04, i2 + 1, paint);
            }
            i += iA04;
        } while (!z);
        return i;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0071 A[PHI: r0
      0x0071: PHI (r0v20 int) = (r0v18 int), (r0v23 int) binds: [B:25:0x0080, B:22:0x006f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:27:0x0083  */
    public static int A02(C4I c4i, int[] iArr, byte[] bArr, int i, int i2, Paint paint, Canvas canvas) {
        int iA04;
        int i3 = i;
        boolean z = false;
        do {
            int peek = 0;
            int iA05 = c4i.A04(4);
            if (iA05 != 0) {
                peek = 1;
            } else if (c4i.A0H()) {
                if (!c4i.A0H()) {
                    peek = c4i.A04(2) + 4;
                    iA05 = c4i.A04(4);
                } else {
                    switch (c4i.A04(2)) {
                        case 0:
                            peek = 1;
                            iA05 = 0;
                            break;
                        case 1:
                            peek = 2;
                            iA05 = 0;
                            break;
                        case 2:
                            peek = c4i.A04(4) + 9;
                            iA05 = c4i.A04(4);
                            break;
                        case 3:
                            peek = c4i.A04(8) + 25;
                            iA05 = c4i.A04(4);
                            break;
                        default:
                            iA05 = 0;
                            break;
                    }
                }
            } else if (A08[0].length() != 24) {
                A08[1] = "Jb849HVzYsbrcyVvorQRSzDXgxwzOwbS";
                iA04 = c4i.A04(3);
                if (iA04 != 0) {
                    peek = iA04 + 2;
                    iA05 = 0;
                } else {
                    z = true;
                    iA05 = 0;
                }
            } else {
                A08[3] = "lCytI93sja9tcovqvw8Z3JcTVPPUQzad";
                iA04 = c4i.A04(3);
                if (iA04 != 0) {
                    peek = iA04 + 2;
                    iA05 = 0;
                } else {
                    z = true;
                    iA05 = 0;
                }
            }
            if (peek != 0 && paint != null) {
                if (bArr != null) {
                    iA05 = bArr[iA05];
                }
                paint.setColor(iArr[iA05]);
                float f = i3;
                float f2 = i2;
                String[] strArr = A08;
                if (strArr[2].charAt(19) == strArr[6].charAt(19)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A08;
                strArr2[2] = "7zyAW2neZYMKALasLQ64ygc21beBnsUa";
                strArr2[6] = "CykdyJVKnOvIvZ1RH2gJr9pO2NNGsRyJ";
                canvas.drawRect(f, f2, i3 + peek, i2 + 1, paint);
            }
            i3 += peek;
        } while (!z);
        return i3;
    }

    public static int A03(C4I c4i, int[] iArr, byte[] bArr, int i, int i2, Paint paint, Canvas canvas) {
        int runLength;
        int i3 = i;
        boolean z = false;
        do {
            int iA04 = c4i.A04(8);
            if (iA04 != 0) {
                runLength = 1;
            } else if (!c4i.A0H()) {
                runLength = c4i.A04(7);
                if (runLength != 0) {
                    iA04 = 0;
                } else {
                    z = true;
                    runLength = 0;
                    iA04 = 0;
                }
            } else {
                runLength = c4i.A04(7);
                iA04 = c4i.A04(8);
            }
            if (runLength != 0 && paint != null) {
                if (bArr != null) {
                    iA04 = bArr[iA04];
                }
                paint.setColor(iArr[iA04]);
                if (A08[3].charAt(20) != '3') {
                    throw new RuntimeException();
                }
                A08[3] = "mqxvpcZRbZaRJOXRSA703vBu0XWYN9Vd";
                canvas.drawRect(i3, i2, i3 + runLength, i2 + 1, paint);
            }
            i3 += runLength;
        } while (!z);
        return i3;
    }

    public static JK A06(C4I c4i) {
        int iA04 = c4i.A04(16);
        c4i.A09(4);
        int objectCodingMethod = c4i.A04(2);
        boolean zA0H = c4i.A0H();
        c4i.A09(1);
        byte[] bottomFieldData = AbstractC06244a.A07;
        byte[] bArr = AbstractC06244a.A07;
        if (objectCodingMethod == 1) {
            int numberOfCodes = c4i.A04(8);
            c4i.A09(numberOfCodes * 16);
        } else if (objectCodingMethod == 0) {
            int iA05 = c4i.A04(16);
            int topFieldDataLength = c4i.A04(16);
            int objectId = A08[4].charAt(14);
            if (objectId != 57) {
                throw new RuntimeException();
            }
            A08[7] = "H05iJqDXaQUoFjCcOPsdhLa69PYGJoEl";
            if (iA05 > 0) {
                bottomFieldData = new byte[iA05];
                c4i.A0G(bottomFieldData, 0, iA05);
            }
            if (topFieldDataLength > 0) {
                bArr = new byte[topFieldDataLength];
                c4i.A0G(bArr, 0, topFieldDataLength);
            } else {
                bArr = bottomFieldData;
            }
        }
        return new JK(iA04, zA0H, bottomFieldData, bArr);
    }

    public static JL A07(C4I c4i, int i) {
        int iA04 = c4i.A04(8);
        int iA05 = c4i.A04(4);
        int iA06 = c4i.A04(2);
        c4i.A09(2);
        int i2 = i - 2;
        SparseArray sparseArray = new SparseArray();
        while (i2 > 0) {
            int remainingLength = c4i.A04(8);
            c4i.A09(8);
            int version = c4i.A04(16);
            int timeoutSecs = c4i.A04(16);
            i2 -= 6;
            sparseArray.put(remainingLength, new JM(version, timeoutSecs));
        }
        return new JL(iA04, iA05, iA06, sparseArray);
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:37:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:46:0x0111  */
    /* JADX WARN: Code duplicated, block: B:48:0x011b  */
    /* JADX WARN: Code duplicated, block: B:52:0x013d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:53:0x013f  */
    /* JADX WARN: Code duplicated, block: B:55:0x0145  */
    public static void A0B(C4I c4i, JP jp) {
        JL jl;
        JL jlA07;
        int segmentType;
        int dataFieldLength;
        int segmentType2;
        JN jn;
        int pageId = c4i.A04(8);
        int iA04 = c4i.A04(16);
        int iA05 = c4i.A04(16);
        int dataFieldLimit = c4i.A02() + iA05;
        int dataFieldLength2 = iA05 * 8;
        int segmentType3 = c4i.A01();
        if (dataFieldLength2 > segmentType3) {
            AnonymousClass44.A07(A09(31, 9, 48), A09(0, 31, 109));
            int segmentType4 = c4i.A01();
            c4i.A09(segmentType4);
            return;
        }
        switch (pageId) {
            case 16:
                int i = jp.A03;
                int dataFieldLength3 = A08[0].length();
                if (dataFieldLength3 == 24) {
                    String[] strArr = A08;
                    strArr[2] = "8IE5rQcmaz5UZt5DB4HgynTP0JDS9G2L";
                    strArr[6] = "0jBafq8KrrfMTCoyXHA3EFrvXh6eCdvZ";
                    if (iA04 == i) {
                        jl = jp.A01;
                        jlA07 = A07(c4i, iA05);
                        segmentType = jlA07.A00;
                        if (segmentType != 0) {
                            jp.A01 = jlA07;
                            jp.A08.clear();
                            jp.A06.clear();
                            jp.A07.clear();
                        } else if (jl != null) {
                            dataFieldLength = jl.A02;
                            segmentType2 = jlA07.A02;
                            if (dataFieldLength != segmentType2) {
                                jp.A01 = jlA07;
                            }
                        }
                    }
                } else {
                    A08[0] = "Hq1l6D9egrnTUyhluyir9I8C";
                    if (iA04 == i) {
                        jl = jp.A01;
                        jlA07 = A07(c4i, iA05);
                        segmentType = jlA07.A00;
                        if (segmentType != 0) {
                            jp.A01 = jlA07;
                            jp.A08.clear();
                            jp.A06.clear();
                            jp.A07.clear();
                        } else if (jl != null) {
                            dataFieldLength = jl.A02;
                            segmentType2 = jlA07.A02;
                            if (dataFieldLength != segmentType2) {
                                jp.A01 = jlA07;
                            }
                        }
                    }
                }
                break;
            case 17:
                JL jl2 = jp.A01;
                int segmentType5 = jp.A03;
                if (iA04 == segmentType5 && jl2 != null) {
                    JN jnA08 = A08(c4i, iA05);
                    int i2 = jl2.A00;
                    int dataFieldLength4 = A08[4].charAt(14);
                    if (dataFieldLength4 != 57) {
                        String[] strArr2 = A08;
                        strArr2[2] = "Zbq5EbbYoVc51AepmzNMcu8RWeX9tFKS";
                        strArr2[6] = "SzpXTRUgh7e1fMrIr1mTDXGfSUuiig9T";
                        if (i2 == 0) {
                            SparseArray<JN> sparseArray = jp.A08;
                            int segmentType6 = jnA08.A03;
                            jn = sparseArray.get(segmentType6);
                            if (jn != null) {
                                jnA08.A00(jn);
                            }
                        }
                    } else {
                        A08[0] = "ijH7h91dhg9QFNoxZPsrwXGu";
                        if (i2 == 0) {
                            SparseArray<JN> sparseArray2 = jp.A08;
                            int segmentType7 = jnA08.A03;
                            jn = sparseArray2.get(segmentType7);
                            if (jn != null) {
                                jnA08.A00(jn);
                            }
                        }
                    }
                    SparseArray<JN> sparseArray3 = jp.A08;
                    int segmentType8 = jnA08.A03;
                    sparseArray3.put(segmentType8, jnA08);
                }
                break;
            case 18:
                int segmentType9 = jp.A03;
                if (iA04 == segmentType9) {
                    JI jiA04 = A04(c4i, iA05);
                    SparseArray<JI> sparseArray4 = jp.A06;
                    int segmentType10 = jiA04.A00;
                    sparseArray4.put(segmentType10, jiA04);
                } else {
                    int segmentType11 = jp.A02;
                    if (iA04 == segmentType11) {
                        JI jiA05 = A04(c4i, iA05);
                        SparseArray<JI> sparseArray5 = jp.A04;
                        int segmentType12 = jiA05.A00;
                        sparseArray5.put(segmentType12, jiA05);
                    }
                }
                break;
            case 19:
                int segmentType13 = jp.A03;
                if (iA04 == segmentType13) {
                    JK jkA06 = A06(c4i);
                    SparseArray<JK> sparseArray6 = jp.A07;
                    int segmentType14 = jkA06.A00;
                    sparseArray6.put(segmentType14, jkA06);
                } else {
                    int segmentType15 = jp.A02;
                    if (iA04 == segmentType15) {
                        JK jkA07 = A06(c4i);
                        SparseArray<JK> sparseArray7 = jp.A05;
                        int i3 = jkA07.A00;
                        int dataFieldLength5 = A08[0].length();
                        if (dataFieldLength5 != 24) {
                            throw new RuntimeException();
                        }
                        A08[3] = "cNAVN6CCWtYeoU1m0uPi3L7jVIjjgAwx";
                        sparseArray7.put(i3, jkA07);
                    }
                }
                break;
            case 20:
                int segmentType16 = jp.A03;
                if (iA04 == segmentType16) {
                    jp.A00 = A05(c4i);
                }
                break;
        }
        int segmentType17 = c4i.A02();
        c4i.A0A(dataFieldLimit - segmentType17);
    }

    public static void A0C(JK jk, JI ji, int i, int i2, int i3, Paint paint, Canvas canvas) {
        int[] iArr;
        if (i == 3) {
            iArr = ji.A03;
        } else if (i == 2) {
            iArr = ji.A02;
        } else {
            iArr = ji.A01;
        }
        A0D(jk.A03, iArr, i, i2, i3, paint, canvas);
        A0D(jk.A02, iArr, i, i2, i3 + 1, paint, canvas);
    }

    public static void A0D(byte[] bArr, int[] iArr, int i, int i2, int i3, Paint paint, Canvas canvas) {
        byte[] bArr2;
        byte[] bArr3;
        int i4 = i3;
        C4I c4i = new C4I(bArr);
        byte[] clutMapTable2To8 = null;
        byte[] clutMapTable2To4 = null;
        byte[] bArrA0E = null;
        int line = i2;
        while (c4i.A01() != 0) {
            switch (c4i.A04(8)) {
                case 16:
                    if (i == 3) {
                        bArr2 = clutMapTable2To4 == null ? A0A : clutMapTable2To4;
                    } else if (i == 2) {
                        bArr2 = clutMapTable2To8 == null ? A09 : clutMapTable2To8;
                    } else {
                        bArr2 = null;
                    }
                    line = A01(c4i, iArr, bArr2, line, i4, paint, canvas);
                    c4i.A06();
                    break;
                case 17:
                    if (i == 3) {
                        bArr3 = bArrA0E == null ? A0B : bArrA0E;
                    } else {
                        bArr3 = null;
                    }
                    line = A02(c4i, iArr, bArr3, line, i4, paint, canvas);
                    c4i.A06();
                    break;
                case 18:
                    line = A03(c4i, iArr, null, line, i4, paint, canvas);
                    break;
                case 32:
                    clutMapTable2To8 = A0E(4, 4, c4i);
                    break;
                case 33:
                    clutMapTable2To4 = A0E(4, 8, c4i);
                    break;
                case 34:
                    bArrA0E = A0E(16, 8, c4i);
                    break;
                case 240:
                    i4 += 2;
                    line = i2;
                    break;
            }
        }
    }

    public static byte[] A0E(int i, int i2, C4I c4i) {
        byte[] bArr = new byte[i];
        for (int i3 = 0; i3 < i; i3++) {
            bArr[i3] = (byte) c4i.A04(i2);
        }
        return bArr;
    }

    public static int[] A0F() {
        int[] iArr = new int[4];
        iArr[0] = 0;
        iArr[1] = -1;
        iArr[2] = -16777216;
        String[] strArr = A08;
        if (strArr[2].charAt(19) == strArr[6].charAt(19)) {
            throw new RuntimeException();
        }
        A08[1] = "Jw8cEdbjQQjFC79Gk6sPH9AUdvvWBQg4";
        iArr[3] = -8421505;
        return iArr;
    }

    public static int[] A0G() {
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i = 1; i < iArr.length; i++) {
            if (i < 8) {
                int i2 = (i & 1) != 0 ? 255 : 0;
                iArr[i] = A00(255, i2, (i & 2) != 0 ? 255 : 0, (i & 4) != 0 ? 255 : 0);
            } else {
                int i3 = (i & 1) != 0 ? 127 : 0;
                int i4 = (i & 2) != 0 ? 127 : 0;
                int i5 = i & 4;
                if (A08[4].charAt(14) != '9') {
                    throw new RuntimeException();
                }
                A08[3] = "UrHD9QQTZDyJKzMppguU3aPtXoZ0irSR";
                iArr[i] = A00(255, i3, i4, i5 == 0 ? 0 : 127);
            }
        }
        return iArr;
    }

    /* JADX WARN: Code duplicated, block: B:80:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:95:0x0110  */
    public static int[] A0H() {
        int i;
        int[] iArr = new int[256];
        iArr[0] = 0;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            if (i2 < 8) {
                int i3 = (i2 & 1) != 0 ? 255 : 0;
                iArr[i2] = A00(63, i3, (i2 & 2) != 0 ? 255 : 0, (i2 & 4) == 0 ? 0 : 255);
            } else {
                switch (i2 & 136) {
                    case 0:
                        int i4 = (i2 & 1) != 0 ? 85 : 0;
                        iArr[i2] = A00(255, i4 + ((i2 & 16) != 0 ? 170 : 0), ((i2 & 2) != 0 ? 85 : 0) + ((i2 & 32) != 0 ? 170 : 0), ((i2 & 4) == 0 ? 0 : 85) + ((i2 & 64) == 0 ? 0 : 170));
                        break;
                    case 8:
                        int i5 = ((i2 & 1) != 0 ? 85 : 0) + ((i2 & 16) != 0 ? 170 : 0);
                        int i6 = i2 & 2;
                        if (A08[4].charAt(14) == '9') {
                            A08[0] = "s2RCWxPvpwpJ3GpvuxZigl51";
                            if (i6 != 0) {
                                i = 85;
                            } else {
                                i = 0;
                            }
                        } else if (i6 != 0) {
                            i = 85;
                        } else {
                            i = 0;
                        }
                        iArr[i2] = A00(127, i5, i + ((i2 & 32) != 0 ? 170 : 0), ((i2 & 4) == 0 ? 0 : 85) + ((i2 & 64) == 0 ? 0 : 170));
                        break;
                    case 128:
                        int i7 = ((i2 & 1) != 0 ? 43 : 0) + 127 + ((i2 & 16) != 0 ? 85 : 0);
                        int i8 = ((i2 & 2) != 0 ? 43 : 0) + 127 + ((i2 & 32) != 0 ? 85 : 0);
                        int i9 = ((i2 & 4) == 0 ? 0 : 43) + 127;
                        int i10 = i2 & 64;
                        if (A08[7].charAt(9) != 'e') {
                            A08[3] = "e63e4cS46GPtzp0vrxC333RpnvVdNaZZ";
                            iArr[i2] = A00(255, i7, i8, i9 + (i10 == 0 ? 0 : 85));
                        } else {
                            throw new RuntimeException();
                        }
                        break;
                    case 136:
                        int i11 = (i2 & 1) != 0 ? 43 : 0;
                        iArr[i2] = A00(255, i11 + ((i2 & 16) != 0 ? 85 : 0), ((i2 & 2) != 0 ? 43 : 0) + ((i2 & 32) != 0 ? 85 : 0), ((i2 & 4) == 0 ? 0 : 43) + ((i2 & 64) == 0 ? 0 : 85));
                        break;
                }
            }
        }
        return iArr;
    }

    public final void A0J() {
        this.A06.A00();
    }
}
