package com.facebook.ads.redexgen.core;

import androidx.media3.muxer.MuxerUtil;
import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.ApicFrame;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.BinaryFrame;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.ChapterFrame;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.ChapterTocFrame;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.CommentFrame;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.GeobFrame;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.Id3Frame;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.MlltFrame;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.PrivFrame;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.TextInformationFrame;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.UrlLinkFrame;
import com.transsion.letswitch.service.api.internal.manager.MediaFile;
import com.transsion.tranplayer.MediaPlayer;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
import org.mozilla.classfile.ByteCode;

public final class C07328i extends AbstractC2082l4 {
    public static byte[] A01;
    public static String[] A02 = {"dfkl9gE5OREu5AXL5lY0ohuUUe3SXBJr", "hKeIXQ7stisHjmNWZz70dNldldiAaQvi", "Ev47ZYJBP4qmoN0JeJrCKxe3cHeEd2Mz", "un9uiXmeOTgIIo", "Wd16eevQjbu9Ian59LTBbcV1NeBW6y6R", "QoAdFFIsNXY7HGA7Qc965AL0CxX7pFDa", "35FvwnlVw7oPAj", "U3kKyqEMJJ2afey5JgaPdqN5tYmvQhts"};
    public static final InterfaceC0948Hc A03;
    public final InterfaceC0948Hc A00;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 10 out of bounds for length 10
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:125)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:656)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    public static ApicFrame A04(C4J c4j, int i, int i2) {
        int iA02;
        String strA01;
        int iA0I = c4j.A0I();
        Charset charsetA0M = A0M(iA0I);
        byte[] bArr = new byte[i - 1];
        c4j.A0k(bArr, 0, i - 1);
        String strA0J = A0J(402, 6, 90);
        if (i2 == 2) {
            iA02 = 2;
            strA01 = strA0J + AbstractC1942iY.A01(new String(bArr, 0, 3, AbstractC1944ia.A01));
            if (A0J(418, 9, 47).equals(strA01)) {
                strA01 = A0J(408, 10, 122);
            }
        } else {
            iA02 = A02(bArr, 0);
            strA01 = AbstractC1942iY.A01(new String(bArr, 0, iA02, AbstractC1944ia.A01));
            if (strA01.indexOf(47) == -1) {
                strA01 = strA0J + strA01;
            }
        }
        int i3 = bArr[iA02 + 1] & 255;
        int i4 = iA02 + 2;
        int iA03 = A03(bArr, i4, iA0I);
        return new ApicFrame(strA01, new String(bArr, i4, iA03 - i4, charsetA0M), i3, A0Q(bArr, A00(iA0I) + iA03, bArr.length));
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 20 out of bounds for length 19
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:125)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:656)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    public static ChapterFrame A06(C4J c4j, int i, int i2, boolean z, int i3, InterfaceC0948Hc interfaceC0948Hc) {
        int iA09 = c4j.A09();
        int iA02 = A02(c4j.A0l(), iA09);
        String str = new String(c4j.A0l(), iA09, iA02 - iA09, AbstractC1944ia.A01);
        c4j.A0f(iA02 + 1);
        int iA0C = c4j.A0C();
        int iA0C2 = c4j.A0C();
        long jA0Q = c4j.A0Q();
        if (jA0Q == MuxerUtil.UNSIGNED_INT_MAX_VALUE) {
            jA0Q = -1;
        }
        long jA0Q2 = c4j.A0Q();
        if (jA0Q2 == MuxerUtil.UNSIGNED_INT_MAX_VALUE) {
            jA0Q2 = -1;
        }
        ArrayList arrayList = new ArrayList();
        int i4 = iA09 + i;
        while (true) {
            int iA010 = c4j.A09();
            if (A02[5].charAt(22) == 'F') {
                throw new RuntimeException();
            }
            String[] strArr = A02;
            strArr[2] = "yxJytYiELIVuKxluLLGjsQCljTQ6t8ax";
            strArr[0] = "riKuEgzQ5i9bwl4lr9MCLXtR5zTvU4EY";
            if (iA010 >= i4) {
                return new ChapterFrame(str, iA0C, iA0C2, jA0Q, jA0Q2, (Id3Frame[]) arrayList.toArray(new Id3Frame[0]));
            }
            Id3Frame id3FrameA0B = A0B(i2, c4j, z, i3, interfaceC0948Hc);
            if (id3FrameA0B != null) {
                arrayList.add(id3FrameA0B);
            }
        }
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 10 out of bounds for length 10
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:125)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:656)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    public static GeobFrame A09(C4J c4j, int i) {
        int iA0I = c4j.A0I();
        Charset charsetA0M = A0M(iA0I);
        byte[] bArr = new byte[i - 1];
        c4j.A0k(bArr, 0, i - 1);
        int iA02 = A02(bArr, 0);
        String str = new String(bArr, 0, iA02, AbstractC1944ia.A01);
        int i2 = iA02 + 1;
        int iA03 = A03(bArr, i2, iA0I);
        String strA0L = A0L(bArr, i2, iA03, charsetA0M);
        int iA00 = A00(iA0I) + iA03;
        int iA04 = A03(bArr, iA00, iA0I);
        return new GeobFrame(str, strA0L, A0L(bArr, iA00, iA04, charsetA0M), A0Q(bArr, A00(iA0I) + iA04, bArr.length));
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 13 out of bounds for length 13
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:125)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:656)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    public static MlltFrame A0C(C4J c4j, int i) {
        int iA0M = c4j.A0M();
        int iA0K = c4j.A0K();
        int iA0K2 = c4j.A0K();
        int iA0I = c4j.A0I();
        int iA0I2 = c4j.A0I();
        C4I c4i = new C4I();
        c4i.A0C(c4j);
        int i2 = ((i - 10) * 8) / (iA0I + iA0I2);
        int[] iArr = new int[i2];
        int[] iArr2 = new int[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            int iA04 = c4i.A04(iA0I);
            int iA05 = c4i.A04(iA0I2);
            iArr[i3] = iA04;
            iArr2[i3] = iA05;
            if (A02[5].charAt(22) == 'F') {
                throw new RuntimeException();
            }
            A02[4] = "fcLz7frwMRu6ITyb";
        }
        return new MlltFrame(iA0M, iA0K, iA0K2, iArr, iArr2);
    }

    public static String A0J(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 13);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0N() {
        A01 = new byte[]{26, 15, 9, 103, 109, 43, 109, 43, 109, 43, 41, 111, 41, 111, 41, 111, 41, 111, 6, 10, 76, 88, 75, 71, 79, 121, 67, 80, 79, 23, 37, 0, 21, 0, 65, 21, 14, 14, 65, 18, 9, 14, 19, 21, 65, 21, 14, 65, 3, 4, 65, 0, 15, 65, 40, 37, 82, 65, 21, 0, 6, 76, 107, 99, 102, 111, 110, 42, 126, 101, 42, 110, 111, 105, 101, 110, 111, 42, 108, 120, 107, 103, 111, 48, 42, 99, 110, 55, 114, 85, 93, 88, 81, 80, 20, 64, 91, 20, 66, 85, 88, 93, 80, 85, 64, 81, 20, 125, 112, 7, 20, 64, 85, 83, 20, 67, 93, 64, 92, 20, 89, 85, 94, 91, 70, 98, 81, 70, 71, 93, 91, 90, 9, 39, 19, 0, 12, 4, 65, 18, 8, 27, 4, 65, 4, 25, 2, 4, 4, 5, 18, 65, 19, 4, 12, 0, 8, 15, 8, 15, 6, 65, 21, 0, 6, 65, 5, 0, 21, 0, 74, 103, 48, 71, 102, 96, 108, 103, 102, 113, 85, 109, 111, 118, 118, 99, 98, 38, 79, 66, 53, 38, 114, 103, 97, 38, 113, 111, 114, 110, 38, 107, 103, 108, 105, 116, 80, 99, 116, 117, 111, 105, 104, 59, 52, 38, 103, 104, 98, 38, 115, 104, 98, 99, 96, 111, 104, 99, 98, 38, 101, 105, 107, 118, 116, 99, 117, 117, 111, 105, 104, 38, 117, 101, 110, 99, 107, 99, 104, 80, 82, 75, 75, 94, 95, 27, 114, 127, 8, 27, 79, 90, 92, 27, 76, 82, 79, 83, 27, 78, 85, 72, 78, 75, 75, 84, 73, 79, 94, 95, 27, 86, 90, 81, 84, 73, 109, 94, 73, 72, 82, 84, 85, 6, 42, 18, 16, 9, 9, 16, 23, 30, 89, 12, 23, 10, 12, 9, 9, 22, ByteCode.T_LONG, 13, 28, 29, 89, 26, 22, 20, 9, ByteCode.T_LONG, 28, 10, 10, 28, 29, 89, 22, ByteCode.T_LONG, 89, 28, 23, 26, ByteCode.T_LONG, 0, 9, 13, 28, 29, 89, 31, ByteCode.T_LONG, 24, 20, 28, 62, 50, 50, 50, 119, 76, 71, 90, 82, 71, 65, 86, 71, 70, 2, 68, 75, 80, 81, 86, 2, 86, 74, 80, 71, 71, 2, 64, 91, 86, 71, 81, 2, 77, 68, 2, 107, 102, 17, 2, 86, 67, 69, 2, 74, 71, 67, 70, 71, 80, 24, 2, 18, 90, 121, 118, 118, 118, 62, 58, 54, 48, 50, 120, 30, 26, 22, 16, 18, 88, 29, 7, 18, 16, 75, 79, 67, 69, 71, 13, 72, 82, 69};
    }

    static {
        A0N();
        A03 = new InterfaceC0948Hc() {
            @Override
            public final boolean A6I(int i, int i2, int i3, int i4, int i5) {
                return C07328i.A0O(i, i2, i3, i4, i5);
            }
        };
    }

    public C07328i() {
        this(null);
    }

    public C07328i(InterfaceC0948Hc interfaceC0948Hc) {
        this.A00 = interfaceC0948Hc;
    }

    public static int A00(int i) {
        if (i == 0 || i == 3) {
            return 1;
        }
        return 2;
    }

    public static int A01(C4J c4j, int i) {
        byte[] bArrA0l = c4j.A0l();
        int iA09 = c4j.A09();
        int i2 = iA09;
        while (startPosition < iA09 + i) {
            int startPosition = bArrA0l[i2];
            if ((startPosition & 255) == 255 && bArrA0l[i2 + 1] == 0) {
                int i3 = i2 + 2;
                int i4 = i2 + 1;
                int relativePosition = (i - (i2 - iA09)) - 2;
                String[] strArr = A02;
                String str = strArr[1];
                String str2 = strArr[7];
                int startPosition2 = str.charAt(20);
                if (startPosition2 != str2.charAt(20)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A02;
                strArr2[1] = "XZV6e8MYnWgHLOD3ZLXsdTcFpPsY6V3F";
                strArr2[7] = "PRKMokf209xLCZShYH0Zduqvqdx50TVA";
                System.arraycopy(bArrA0l, i3, bArrA0l, i4, relativePosition);
                i--;
            }
            i2++;
        }
        return i;
    }

    public static int A02(byte[] bArr, int i) {
        while (i < i) {
            int i2 = bArr[i];
            if (i2 == 0) {
                return i;
            }
            i++;
        }
        int i3 = bArr.length;
        return i3;
    }

    public static int A03(byte[] bArr, int i, int i2) {
        int iA02 = A02(bArr, i);
        if (i2 == 0 || i2 == 3) {
            return iA02;
        }
        while (iA02 < terminationPos - 1) {
            int terminationPos = iA02 - i;
            if (terminationPos % 2 == 0) {
                int terminationPos2 = iA02 + 1;
                if (bArr[terminationPos2] == 0) {
                    return iA02;
                }
            }
            int terminationPos3 = iA02 + 1;
            iA02 = A02(bArr, terminationPos3);
        }
        int terminationPos4 = bArr.length;
        return terminationPos4;
    }

    public static BinaryFrame A05(C4J c4j, int i, String str) {
        byte[] bArr = new byte[i];
        c4j.A0k(bArr, 0, i);
        return new BinaryFrame(str, bArr);
    }

    public static ChapterTocFrame A07(C4J c4j, int i, int i2, boolean z, int elementIdEndIndex, InterfaceC0948Hc interfaceC0948Hc) {
        int iA09 = c4j.A09();
        int iA02 = A02(c4j.A0l(), iA09);
        String str = new String(c4j.A0l(), iA09, iA02 - iA09, AbstractC1944ia.A01);
        c4j.A0f(iA02 + 1);
        int framePosition = c4j.A0I();
        boolean z2 = (framePosition & 2) != 0;
        boolean z3 = (framePosition & 1) != 0;
        int iA0I = c4j.A0I();
        String[] strArr = new String[iA0I];
        for (int i3 = 0; i3 < iA0I; i3++) {
            int startIndex = c4j.A09();
            int iA03 = A02(c4j.A0l(), startIndex);
            int elementIdEndIndex2 = iA03 - startIndex;
            strArr[i3] = new String(c4j.A0l(), startIndex, elementIdEndIndex2, AbstractC1944ia.A01);
            c4j.A0f(iA03 + 1);
        }
        ArrayList arrayList = new ArrayList();
        int i4 = iA09 + i;
        while (c4j.A09() < i4) {
            Id3Frame id3FrameA0B = A0B(i2, c4j, z, elementIdEndIndex, interfaceC0948Hc);
            if (id3FrameA0B != null) {
                arrayList.add(id3FrameA0B);
            }
        }
        return new ChapterTocFrame(str, z2, z3, strArr, (Id3Frame[]) arrayList.toArray(new Id3Frame[0]));
    }

    public static CommentFrame A08(C4J c4j, int i) {
        if (i < 4) {
            return null;
        }
        int textStartIndex = c4j.A0I();
        Charset charsetA0M = A0M(textStartIndex);
        byte[] bArr = new byte[3];
        c4j.A0k(bArr, 0, 3);
        String description = new String(bArr, 0, 3);
        int encoding = i - 4;
        byte[] data = new byte[encoding];
        int encoding2 = i - 4;
        c4j.A0k(data, 0, encoding2);
        int encoding3 = A03(data, 0, textStartIndex);
        String language = new String(data, 0, encoding3, charsetA0M);
        int iA00 = A00(textStartIndex) + encoding3;
        int encoding4 = A03(data, iA00, textStartIndex);
        return new CommentFrame(description, language, A0L(data, iA00, encoding4, charsetA0M));
    }

    public static C0949Hd A0A(C4J c4j) {
        int iA07 = c4j.A07();
        String strA0J = A0J(170, 10, 14);
        if (iA07 < 10) {
            AnonymousClass44.A07(strA0J, A0J(30, 31, 108));
            return null;
        }
        int iA0K = c4j.A0K();
        boolean z = false;
        if (iA0K != 4801587) {
            AnonymousClass44.A07(strA0J, A0J(348, 50, 47) + String.format(A0J(0, 4, 50), Integer.valueOf(iA0K)));
            return null;
        }
        int iA0I = c4j.A0I();
        c4j.A0g(1);
        int flags = c4j.A0I();
        int iA0H = c4j.A0H();
        if (iA0I == 2) {
            int id = flags & 64;
            int id2 = id != 0 ? 1 : 0;
            if (id2 != 0) {
                AnonymousClass44.A07(strA0J, A0J(180, 68, 11));
                return null;
            }
        } else if (iA0I == 3) {
            int id3 = flags & 64;
            int id4 = id3 != 0 ? 1 : 0;
            if (id4 != 0) {
                int id5 = c4j.A0C();
                c4j.A0g(id5);
                iA0H -= id5 + 4;
            }
        } else if (iA0I == 4) {
            int id6 = flags & 64;
            int id7 = id6 != 0 ? 1 : 0;
            if (id7 != 0) {
                int majorVersion = c4j.A0H();
                int id8 = majorVersion - 4;
                c4j.A0g(id8);
                iA0H -= majorVersion;
            }
            int id9 = flags & 16;
            int id10 = id9 != 0 ? 1 : 0;
            if (id10 != 0) {
                iA0H -= 10;
            }
        } else {
            AnonymousClass44.A07(strA0J, A0J(248, 46, 54) + iA0I);
            return null;
        }
        if (iA0I < 4) {
            int id11 = flags & 128;
            if (id11 != 0) {
                z = true;
            }
        }
        return new C0949Hd(iA0I, z, iA0H);
    }

    /* JADX WARN: Code duplicated, block: B:139:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:146:0x01f1  */
    /* JADX WARN: Code duplicated, block: B:148:0x01f5  */
    /* JADX WARN: Code duplicated, block: B:153:0x020a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:154:0x020c  */
    /* JADX WARN: Code duplicated, block: B:159:0x0221 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:160:0x0223  */
    /* JADX WARN: Code duplicated, block: B:166:0x0232 A[Catch: all -> 0x0273, TryCatch #0 {all -> 0x0273, blocks: (B:99:0x0169, B:168:0x023c, B:101:0x0171, B:108:0x0187, B:110:0x018f, B:118:0x01a9, B:127:0x01c1, B:138:0x01db, B:145:0x01ec, B:152:0x01fd, B:158:0x0214, B:165:0x022d, B:166:0x0232), top: B:174:0x015f }] */
    /* JADX WARN: Code duplicated, block: B:72:0x0124  */
    /* JADX WARN: Code duplicated, block: B:83:0x013c  */
    public static Id3Frame A0B(int frameId3, C4J c4j, boolean z, int i, InterfaceC0948Hc interfaceC0948Hc) {
        int iA0I;
        int iA0K;
        int iA0M;
        Id3Frame id3FrameA05;
        int frameId2 = c4j.A0I();
        int frameId1 = c4j.A0I();
        int frameId0 = c4j.A0I();
        if (frameId3 >= 3) {
            iA0I = c4j.A0I();
        } else {
            iA0I = 0;
        }
        if (frameId3 == 4) {
            int iA0L = c4j.A0L();
            if (!z) {
                int frameSize = iA0L >> 8;
                int i2 = (iA0L & 255) | ((frameSize & 255) << 7);
                int frameSize2 = iA0L >> 16;
                int i3 = i2 | ((frameSize2 & 255) << 14);
                int frameSize3 = iA0L >> 24;
                iA0K = i3 | ((frameSize3 & 255) << 21);
            } else {
                iA0K = iA0L;
            }
        } else if (frameId3 == 3) {
            iA0K = c4j.A0L();
        } else {
            iA0K = c4j.A0K();
        }
        if (frameId3 >= 3) {
            iA0M = c4j.A0M();
        } else {
            iA0M = 0;
        }
        if (frameId2 == 0 && frameId1 == 0 && frameId0 == 0 && iA0I == 0 && iA0K == 0 && iA0M == 0) {
            c4j.A0f(c4j.A0A());
            return null;
        }
        int flags = c4j.A09() + iA0K;
        int iA0A = c4j.A0A();
        String strA0J = A0J(170, 10, 14);
        if (flags > iA0A) {
            AnonymousClass44.A07(strA0J, A0J(133, 37, 108));
            c4j.A0f(c4j.A0A());
            return null;
        }
        if (interfaceC0948Hc != null && !interfaceC0948Hc.A6I(frameId3, frameId2, frameId1, frameId0, iA0I)) {
            c4j.A0f(flags);
            String[] strArr = A02;
            if (strArr[6].length() != strArr[3].length()) {
                throw new RuntimeException();
            }
            A02[4] = "e3YBkKHUVMVtsvvPrHCe6nHMIy";
            return null;
        }
        int nextFramePosition = 0;
        boolean hasDataLength = false;
        boolean isEncrypted = false;
        int i4 = 0;
        int frameSize4 = 0;
        if (frameId3 == 3) {
            i4 = (iA0M & 128) != 0 ? 1 : 0;
            hasDataLength = (iA0M & 64) != 0;
            frameSize4 = (iA0M & 32) != 0 ? 1 : 0;
            nextFramePosition = i4;
        } else if (frameId3 == 4) {
            frameSize4 = (iA0M & 64) != 0 ? 1 : 0;
            nextFramePosition = (iA0M & 8) != 0 ? 1 : 0;
            int i5 = iA0M & 4;
            String[] strArr2 = A02;
            if (strArr2[6].length() != strArr2[3].length()) {
                A02[5] = "YrGhE76fNDxr3LSniMVr4VzIG8CV74Mf";
                if (i5 != 0) {
                    hasDataLength = true;
                } else {
                    hasDataLength = false;
                }
            } else {
                A02[5] = "eLbk71BgL0f2DKr72Qx6greuw57xH3Wk";
                if (i5 != 0) {
                    hasDataLength = true;
                } else {
                    hasDataLength = false;
                }
            }
            isEncrypted = (iA0M & 2) != 0;
            i4 = (iA0M & 1) != 0 ? 1 : 0;
        }
        if (nextFramePosition != 0 || hasDataLength) {
            AnonymousClass44.A07(strA0J, A0J(MediaPlayer.Event.DisableVideo, 50, 116));
            c4j.A0f(flags);
            return null;
        }
        if (frameSize4 != 0) {
            iA0K--;
            c4j.A0g(1);
        }
        if (i4 != 0) {
            iA0K -= 4;
            c4j.A0g(4);
        }
        if (isEncrypted) {
            iA0K = A01(c4j, iA0K);
        }
        try {
            if (frameId2 == 84 && frameId1 == 88 && frameId0 == 88 && (frameId3 == 2 || iA0I == 88)) {
                id3FrameA05 = A0E(c4j, iA0K);
            } else if (frameId2 == 84) {
                id3FrameA05 = A0F(c4j, iA0K, A0K(frameId3, frameId2, frameId1, frameId0, iA0I));
            } else if (frameId2 == 87 && frameId1 == 88 && frameId0 == 88 && (frameId3 == 2 || iA0I == 88)) {
                id3FrameA05 = A0G(c4j, iA0K);
            } else if (frameId2 == 87) {
                id3FrameA05 = A0H(c4j, iA0K, A0K(frameId3, frameId2, frameId1, frameId0, iA0I));
            } else if (frameId2 == 80 && frameId1 == 82 && frameId0 == 73 && iA0I == 86) {
                id3FrameA05 = A0D(c4j, iA0K);
            } else if (frameId2 == 71 && frameId1 == 69 && frameId0 == 79 && (iA0I == 66 || frameId3 == 2)) {
                id3FrameA05 = A09(c4j, iA0K);
            } else if (frameId3 == 2) {
                if (frameId2 == 80 && frameId1 == 73 && frameId0 == 67) {
                    id3FrameA05 = A04(c4j, iA0K, frameId3);
                } else if (frameId2 == 67 || frameId1 != 79 || frameId0 != 77 || (iA0I != 77 && frameId3 != 2)) {
                    if (frameId2 != 67 && frameId1 == 72 && frameId0 == 65 && iA0I == 80) {
                        id3FrameA05 = A06(c4j, iA0K, frameId3, z, i, interfaceC0948Hc);
                    } else if (frameId2 != 67 && frameId1 == 84 && frameId0 == 79 && iA0I == 67) {
                        id3FrameA05 = A07(c4j, iA0K, frameId3, z, i, interfaceC0948Hc);
                    } else if (frameId2 != 77 && frameId1 == 76 && frameId0 == 76 && iA0I == 84) {
                        id3FrameA05 = A0C(c4j, iA0K);
                    } else {
                        id3FrameA05 = A05(c4j, iA0K, A0K(frameId3, frameId2, frameId1, frameId0, iA0I));
                    }
                } else {
                    id3FrameA05 = A08(c4j, iA0K);
                }
            } else if (frameId2 == 65 && frameId1 == 80 && frameId0 == 73 && iA0I == 67) {
                id3FrameA05 = A04(c4j, iA0K, frameId3);
            } else if (frameId2 == 67) {
                if (frameId2 != 67) {
                    if (frameId2 != 67) {
                        if (frameId2 != 77) {
                            id3FrameA05 = A05(c4j, iA0K, A0K(frameId3, frameId2, frameId1, frameId0, iA0I));
                        } else {
                            id3FrameA05 = A05(c4j, iA0K, A0K(frameId3, frameId2, frameId1, frameId0, iA0I));
                        }
                    } else if (frameId2 != 77) {
                        id3FrameA05 = A05(c4j, iA0K, A0K(frameId3, frameId2, frameId1, frameId0, iA0I));
                    } else {
                        id3FrameA05 = A05(c4j, iA0K, A0K(frameId3, frameId2, frameId1, frameId0, iA0I));
                    }
                } else if (frameId2 != 67) {
                    if (frameId2 != 77) {
                        id3FrameA05 = A05(c4j, iA0K, A0K(frameId3, frameId2, frameId1, frameId0, iA0I));
                    } else {
                        id3FrameA05 = A05(c4j, iA0K, A0K(frameId3, frameId2, frameId1, frameId0, iA0I));
                    }
                } else if (frameId2 != 77) {
                    id3FrameA05 = A05(c4j, iA0K, A0K(frameId3, frameId2, frameId1, frameId0, iA0I));
                } else {
                    id3FrameA05 = A05(c4j, iA0K, A0K(frameId3, frameId2, frameId1, frameId0, iA0I));
                }
            } else if (frameId2 != 67) {
                if (frameId2 != 67) {
                    if (frameId2 != 77) {
                        id3FrameA05 = A05(c4j, iA0K, A0K(frameId3, frameId2, frameId1, frameId0, iA0I));
                    } else {
                        id3FrameA05 = A05(c4j, iA0K, A0K(frameId3, frameId2, frameId1, frameId0, iA0I));
                    }
                } else if (frameId2 != 77) {
                    id3FrameA05 = A05(c4j, iA0K, A0K(frameId3, frameId2, frameId1, frameId0, iA0I));
                } else {
                    id3FrameA05 = A05(c4j, iA0K, A0K(frameId3, frameId2, frameId1, frameId0, iA0I));
                }
            } else if (frameId2 != 67) {
                if (frameId2 != 77) {
                    id3FrameA05 = A05(c4j, iA0K, A0K(frameId3, frameId2, frameId1, frameId0, iA0I));
                } else {
                    id3FrameA05 = A05(c4j, iA0K, A0K(frameId3, frameId2, frameId1, frameId0, iA0I));
                }
            } else if (frameId2 != 77) {
                id3FrameA05 = A05(c4j, iA0K, A0K(frameId3, frameId2, frameId1, frameId0, iA0I));
            } else {
                id3FrameA05 = A05(c4j, iA0K, A0K(frameId3, frameId2, frameId1, frameId0, iA0I));
            }
            if (id3FrameA05 == null) {
                AnonymousClass44.A07(strA0J, A0J(61, 27, 7) + A0K(frameId3, frameId2, frameId1, frameId0, iA0I) + A0J(18, 12, 39) + iA0K);
            }
            c4j.A0f(flags);
            return id3FrameA05;
        } catch (Throwable th) {
            c4j.A0f(flags);
            throw th;
        }
    }

    public static PrivFrame A0D(C4J c4j, int i) {
        byte[] bArr = new byte[i];
        c4j.A0k(bArr, 0, i);
        int iA02 = A02(bArr, 0);
        return new PrivFrame(new String(bArr, 0, iA02, AbstractC1944ia.A01), A0Q(bArr, iA02 + 1, bArr.length));
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Am != com.google.common.collect.ImmutableList<java.lang.String> */
    public static TextInformationFrame A0E(C4J c4j, int i) {
        if (i < 1) {
            return null;
        }
        int iA0I = c4j.A0I();
        int encoding = i - 1;
        byte[] bArr = new byte[encoding];
        int encoding2 = i - 1;
        c4j.A0k(bArr, 0, encoding2);
        int iA03 = A03(bArr, 0, iA0I);
        String str = new String(bArr, 0, iA03, A0M(iA0I));
        int encoding3 = A00(iA0I);
        return new TextInformationFrame(A0J(344, 4, 103), str, A0I(bArr, iA0I, encoding3 + iA03));
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Am != com.google.common.collect.ImmutableList<java.lang.String> */
    public static TextInformationFrame A0F(C4J c4j, int i, String str) {
        if (i < 1) {
            return null;
        }
        int iA0I = c4j.A0I();
        int encoding = i - 1;
        byte[] data = new byte[encoding];
        c4j.A0k(data, 0, i - 1);
        return new TextInformationFrame(str, null, A0I(data, iA0I, 0));
    }

    public static UrlLinkFrame A0G(C4J c4j, int i) {
        if (i < 1) {
            return null;
        }
        int iA0I = c4j.A0I();
        int encoding = i - 1;
        byte[] bArr = new byte[encoding];
        int encoding2 = i - 1;
        c4j.A0k(bArr, 0, encoding2);
        int iA03 = A03(bArr, 0, iA0I);
        String str = new String(bArr, 0, iA03, A0M(iA0I));
        int descriptionEndIndex = A00(iA0I) + iA03;
        String description = A0L(bArr, descriptionEndIndex, A02(bArr, descriptionEndIndex), AbstractC1944ia.A01);
        return new UrlLinkFrame(A0J(MediaFile.FILE_TYPE_FLV, 4, 35), str, description);
    }

    public static UrlLinkFrame A0H(C4J c4j, int i, String str) {
        byte[] bArr = new byte[i];
        c4j.A0k(bArr, 0, i);
        return new UrlLinkFrame(str, null, new String(bArr, 0, A02(bArr, 0), AbstractC1944ia.A01));
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1h != com.google.common.collect.ImmutableList$Builder<java.lang.String> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Am != com.google.common.collect.ImmutableList<java.lang.String> */
    public static AbstractC0779Am<String> A0I(byte[] bArr, int i, int i2) {
        int length = bArr.length;
        String strA0J = A0J(0, 0, 108);
        if (i2 >= length) {
            return AbstractC0779Am.A04(strA0J);
        }
        C05551h c05551hA01 = AbstractC0779Am.A01();
        int valueEndIndex = A03(bArr, i2, i);
        while (i2 < valueEndIndex) {
            int valueStartIndex = valueEndIndex - i2;
            c05551hA01.A04(new String(bArr, i2, valueStartIndex, A0M(i)));
            i2 = valueEndIndex + A00(i);
            valueEndIndex = A03(bArr, i2, i);
        }
        AbstractC0779Am<String> abstractC0779AmA05 = c05551hA01.A05();
        return abstractC0779AmA05.isEmpty() ? AbstractC0779Am.A04(strA0J) : abstractC0779AmA05;
    }

    public static String A0K(int i, int i2, int i3, int i4, int i5) {
        return i == 2 ? String.format(Locale.US, A0J(4, 6, 69), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4)) : String.format(Locale.US, A0J(10, 8, 1), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5));
    }

    public static String A0L(byte[] bArr, int i, int i2, Charset charset) {
        if (i2 <= i || i2 > bArr.length) {
            return A0J(0, 0, 108);
        }
        return new String(bArr, i, i2 - i, charset);
    }

    public static Charset A0M(int i) {
        switch (i) {
            case 1:
                return AbstractC1944ia.A03;
            case 2:
                return AbstractC1944ia.A04;
            case 3:
                return AbstractC1944ia.A06;
            default:
                Charset charset = AbstractC1944ia.A01;
                if (A02[5].charAt(22) == 'F') {
                    throw new RuntimeException();
                }
                A02[5] = "KvSqsioCKy57forlhJv7i4SYYwwKGyHr";
                return charset;
        }
    }

    public static boolean A0O(int i, int i2, int i3, int i4, int i5) {
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0087  */
    /* JADX WARN: Code duplicated, block: B:30:0x008b  */
    /* JADX WARN: Code duplicated, block: B:37:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:38:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:39:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:40:0x00af  */
    /* JADX WARN: Code duplicated, block: B:42:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:46:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:47:0x00be  */
    /* JADX WARN: Code duplicated, block: B:48:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:50:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:52:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:57:0x00dd A[Catch: all -> 0x011b, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x011b, blocks: (B:7:0x0015, B:57:0x00dd, B:67:0x0108, B:8:0x0022), top: B:79:0x0015 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:63:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:84:0x0060 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:85:0x00d9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:86:0x0104 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:87:0x0104 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:88:0x0108 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:89:0x0108 A[SYNTHETIC] */
    public static boolean A0P(C4J c4j, int i, int i2, boolean z) throws Throwable {
        int iA0C;
        long jA0Q;
        int iA0M;
        int id;
        int flags;
        int i3;
        String[] strArr;
        long j;
        int length;
        int minimumFrameSize;
        int iA09 = c4j.A09();
        while (true) {
            try {
                if (c4j.A07() < i2) {
                    c4j.A0f(iA09);
                    return true;
                }
                if (i >= 3) {
                    try {
                        iA0C = c4j.A0C();
                        jA0Q = c4j.A0Q();
                        iA0M = c4j.A0M();
                    } catch (Throwable th) {
                        th = th;
                        c4j.A0f(iA09);
                        throw th;
                    }
                } else {
                    iA0C = c4j.A0K();
                    jA0Q = c4j.A0K();
                    iA0M = 0;
                }
                if (iA0C == 0 && jA0Q == 0 && iA0M == 0) {
                    c4j.A0f(iA09);
                    return true;
                }
                if (i != 4 || z) {
                    id = 0;
                    flags = 0;
                    if (i == 4) {
                        if ((iA0M & 64) != 0) {
                            id = 1;
                        } else {
                            id = 0;
                        }
                        flags = (iA0M & 1) == 0 ? 0 : 1;
                    } else if (i == 3) {
                        if ((iA0M & 32) != 0) {
                            id = 1;
                        } else {
                            id = 0;
                        }
                        flags = (iA0M & 128) == 0 ? 0 : 1;
                    }
                    i3 = 0;
                    strArr = A02;
                    if (strArr[1].charAt(20) != strArr[7].charAt(20)) {
                        String[] strArr2 = A02;
                        strArr2[1] = "MVZStPJLdDxKiV7nz1H6dv3NOIiLFLEe";
                        strArr2[7] = "QTxGzLkjWgw6uSVWxpxBdQfPOh5DKkgy";
                        if (id != 0) {
                            i3 = 0 + 1;
                        }
                        if (flags != 0) {
                            i3 += 4;
                        }
                        if (jA0Q < i3) {
                            c4j.A0f(iA09);
                            return false;
                        }
                        int minimumFrameSize2 = c4j.A07();
                        j = minimumFrameSize2;
                        String[] strArr3 = A02;
                        String str = strArr3[6];
                        String str2 = strArr3[3];
                        length = str.length();
                        minimumFrameSize = str2.length();
                        if (length != minimumFrameSize) {
                            A02[5] = "edbBlZh6UxoMPnyEc6lG0E5oPDAO53n7";
                            if (j < jA0Q) {
                                c4j.A0f(iA09);
                                return false;
                            }
                            int minimumFrameSize3 = (int) jA0Q;
                            c4j.A0g(minimumFrameSize3);
                        } else {
                            if (j < jA0Q) {
                                c4j.A0f(iA09);
                                return false;
                            }
                            int minimumFrameSize4 = (int) jA0Q;
                            c4j.A0g(minimumFrameSize4);
                        }
                    }
                } else if ((8421504 & jA0Q) != 0) {
                    c4j.A0f(iA09);
                    String[] strArr4 = A02;
                    if (strArr4[1].charAt(20) == strArr4[7].charAt(20)) {
                        String[] strArr5 = A02;
                        strArr5[1] = "5mCE9WytQNPeLFhBzaYSd2zmXPTMRlgu";
                        strArr5[7] = "AgecK2HA7Twj8m2CWduPdApaKwCpCynb";
                        return false;
                    }
                } else {
                    jA0Q = (((jA0Q >> 24) & 255) << 21) | (jA0Q & 255) | (((jA0Q >> 8) & 255) << 7) | (((jA0Q >> 16) & 255) << 14);
                    id = 0;
                    flags = 0;
                    if (i == 4) {
                        if ((iA0M & 64) != 0) {
                            id = 1;
                        } else {
                            id = 0;
                        }
                        flags = (iA0M & 1) == 0 ? 0 : 1;
                    } else if (i == 3) {
                        if ((iA0M & 32) != 0) {
                            id = 1;
                        } else {
                            id = 0;
                        }
                        flags = (iA0M & 128) == 0 ? 0 : 1;
                    }
                    i3 = 0;
                    strArr = A02;
                    if (strArr[1].charAt(20) != strArr[7].charAt(20)) {
                        String[] strArr6 = A02;
                        strArr6[1] = "MVZStPJLdDxKiV7nz1H6dv3NOIiLFLEe";
                        strArr6[7] = "QTxGzLkjWgw6uSVWxpxBdQfPOh5DKkgy";
                        if (id != 0) {
                            i3 = 0 + 1;
                        }
                        if (flags != 0) {
                            i3 += 4;
                        }
                        if (jA0Q < i3) {
                            c4j.A0f(iA09);
                            return false;
                        }
                        int minimumFrameSize5 = c4j.A07();
                        j = minimumFrameSize5;
                        String[] strArr7 = A02;
                        String str3 = strArr7[6];
                        String str4 = strArr7[3];
                        length = str3.length();
                        minimumFrameSize = str4.length();
                        if (length != minimumFrameSize) {
                            A02[5] = "edbBlZh6UxoMPnyEc6lG0E5oPDAO53n7";
                            if (j < jA0Q) {
                                c4j.A0f(iA09);
                                return false;
                            }
                            int minimumFrameSize6 = (int) jA0Q;
                            c4j.A0g(minimumFrameSize6);
                        } else {
                            if (j < jA0Q) {
                                c4j.A0f(iA09);
                                return false;
                            }
                            int minimumFrameSize7 = (int) jA0Q;
                            c4j.A0g(minimumFrameSize7);
                        }
                    }
                }
                throw new RuntimeException();
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    public static byte[] A0Q(byte[] bArr, int i, int i2) {
        if (i2 <= i) {
            return AbstractC06244a.A07;
        }
        return Arrays.copyOfRange(bArr, i, i2);
    }

    @Override
    public final Metadata A0R(C07408z c07408z, ByteBuffer byteBuffer) {
        return A0S(byteBuffer.array(), byteBuffer.limit());
    }

    public final Metadata A0S(byte[] bArr, int i) {
        ArrayList arrayList = new ArrayList();
        C4J c4j = new C4J(bArr, i);
        C0949Hd c0949HdA0A = A0A(c4j);
        if (c0949HdA0A == null) {
            return null;
        }
        int startPosition = c4j.A09();
        int frameHeaderSize = c0949HdA0A.A01 == 2 ? 6 : 10;
        int iA01 = c0949HdA0A.A00;
        if (c0949HdA0A.A02) {
            iA01 = A01(c4j, c0949HdA0A.A00);
        }
        c4j.A0e(startPosition + iA01);
        boolean z = false;
        if (!A0P(c4j, c0949HdA0A.A01, frameHeaderSize, false)) {
            if (c0949HdA0A.A01 == 4 && A0P(c4j, 4, frameHeaderSize, true)) {
                z = true;
            } else {
                AnonymousClass44.A07(A0J(170, 10, 14), A0J(88, 45, 57) + c0949HdA0A.A01);
                return null;
            }
        }
        while (c4j.A07() >= frameHeaderSize) {
            Id3Frame id3FrameA0B = A0B(c0949HdA0A.A01, c4j, z, frameHeaderSize, this.A00);
            if (id3FrameA0B != null) {
                arrayList.add(id3FrameA0B);
            }
        }
        return new Metadata(arrayList);
    }
}
