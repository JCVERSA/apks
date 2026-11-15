package com.facebook.ads.redexgen.core;

import com.transsion.audiotagger.audio.ogg.util.OggPageHeader;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import okio.Utf8;
import org.mozilla.classfile.ByteCode;

public final class C1315Vm<T> implements InterfaceC1272Tu<T> {
    public static byte[] A06;
    public static String[] A07 = {"EKA8QeB4steRJ5RPBpFUjw3mjvi5", "fve4ITv79qbm2xvzEK1yqXI", "ABPapESs8CyLRtVNwfFPA7A05iROvZsV", "0Lyphf8QRYP2FOEDF4CKVyWqrMlG", "sjHSRvprFPL1Hzs2shXil", "0UuY0i89chpuUt8804PTKlfzEuvvqf4a", "FkeetCIpWmPLoPieiedf1X3IWnyHYH7Q", "bw9eqk6z"};
    public C1264Tm A00;
    public C1264Tm A01;
    public List<C1315Vm<T>.RecordFileBasedFetch> A02 = new ArrayList();
    public boolean A03;
    public final C1263Tl A04;
    public final U1 A05;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 25);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        byte[] bArr = {68, 102, 105, 39, 104, 105, 107, 126, 39, 99, 98, 107, 98, 115, 98, 39, 100, 114, 117, 116, 104, 117, 116, 39, 119, 104, 110, 105, 115, 110, 105, 96, 39, 102, 115, 39, 115, 111, 98, 39, 99, 102, 115, 102, 101, 102, 116, 98, 39, 116, 115, 102, 117, 115, 87, 97, 102, 103, 123, 102, 52, 100, 123, 103, 125, 96, 125, 123, 122, 52, 125, 103, 52, 117, 96, 52, 60, 49, 112, 56, 49, 112, 61, 56, 52, 117, 122, 112, 52, 102, 113, 119, 123, 102, 112, 52, 114, 125, 120, 113, 52, 103, 113, 101, 97, 113, 122, 119, 113, 52, 103, 96, 117, 102, 96, 103, 52, 117, 96, 52, 60, 49, 112, 56, 49, 112, 61, 46, 52, 112, 117, 96, 117, 52, 124, 117, 103, 52, 100, 102, 123, 118, 117, 118, 120, 109, 52, 118, 113, 113, 122, 52, 120, 123, 103, 96, 28, 42, 45, 44, 48, 45, 127, 47, 48, 44, 54, 43, 54, 48, 49, 127, 54, 44, 127, 62, 43, 127, 119, 122, 59, 115, 122, 59, 118, 115, 127, 61, 42, 43, 127, 45, 58, 60, 48, 45, 59, 127, 57, 54, 51, 58, 127, 44, 58, 46, 42, 58, 49, 60, 58, 127, 48, 49, 51, 38, 127, 55, 62, 44, 127, 57, 54, 51, 58, 127, 122, 59, 101, 127, 59, 62, 43, 62, 127, 55, 62, 44, 127, 47, 45, 48, 61, 62, 61, 51, 38, 127, 61, 58, 58, 49, 127, 51, 48, 44, 43, 97, 70, 78, 75, 66, 67, 7, 83, 72, 7, 70, 67, 67, 7, 67, 70, 83, 70, 7, 83, 72, 7, 75, 72, 64, 8, 47, 39, 34, 43, 42, 110, 58, 33, 110, 45, 34, 43, 47, 60, 110, 42, 47, 58, 47, 44, 47, 61, 43, ByteCode.T_LONG, 44, 36, 33, 40, 41, 109, 57, 34, 109, 43, 40, 57, 46, 37, 109, 41, 44, 57, 44, 109, 43, Utf8.REPLACEMENT_BYTE, 34, 32, 109, 33, 34, 42, 102, 65, 73, 76, 69, 68, 0, 84, 79, 0, 71, 69, 84, 0, 82, 69, 67, 79, 82, 68, 0, 67, 79, 85, 78, 84, 73, 110, 102, 99, 106, 107, 47, 123, 96, 47, 122, 127, 107, 110, 123, 106, 47, 105, 102, 99, 106, 47, 124, 106, 126, 122, 106, 97, 108, 106, 48, 7, 1, 13, 16, 6, 36, ByteCode.T_LONG, 14, 7, 32, 3, 17, 7, 6, 48, 7, 1, 13, 16, 6, 38, 3, 22, 3, 0, 3, 17, 7, 66, 1, 14, 13, 17, 7, 6, 119, 64, 70, 74, 87, 65, 99, 76, 73, 64, 103, 68, 86, 64, 65, 119, 64, 70, 74, 87, 65, 97, 68, 81, 68, 71, 68, 86, 64, 5, 76, 86, 5, 70, 73, 74, 86, 64, 65, 119, 76, 73, 76, 77, 85, 76, 2, 112, 71, 65, 77, 80, 70, 100, 75, 78, 71, 96, 67, 81, 71, 70, 112, 71, 65, 77, 80, 70, 102, 67, 86, 67, 64, 67, 81, 71, 2, 68, 71, 86, 65, 74, 70, 80, 87, 86, 74, 87, 26, 31, 10, 31};
        if (A07[6].charAt(28) == 'd') {
            throw new RuntimeException();
        }
        String[] strArr = A07;
        strArr[5] = "G0nCZJj0prSQWtMWq2fjymNjpmI3wJ1o";
        strArr[2] = "hmxAaa3VGXWJOtMylrC9mnhyviZ0JnjG";
        A06 = bArr;
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 4 out of bounds for length 4
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:656)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    /* JADX WARN: Incorrect inner types in method signature: (Lcom/facebook/ads/redexgen/X/Vm<TT;>.RecordFileBasedFetch;)Z */
    public synchronized boolean A06(C1316Vn c1316Vn) {
        if (!this.A02.remove(c1316Vn)) {
            return false;
        }
        if (c1316Vn.A6P() > 0 && c1316Vn.A01().A02.A05(c1316Vn.A01().A01).equals(this.A01)) {
            this.A01 = c1316Vn.A00().A02;
        }
        return true;
    }

    static {
        A01();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Vm != com.facebook.ads.internal.eventstorage.record.RecordFileBasedRecordDatabase<T> */
    public C1315Vm(C1269Tr c1269Tr, InterfaceC1277Tz interfaceC1277Tz) throws IOException {
        this.A05 = new U1(c1269Tr.A04(A00(515, 4, 103)), interfaceC1277Tz);
        this.A04 = new C1263Tl(new File(c1269Tr.A05(), A00(509, 6, 60)));
        this.A00 = this.A04.A03();
        A05(interfaceC1277Tz);
        this.A01 = this.A00;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Vm != com.facebook.ads.internal.eventstorage.record.RecordFileBasedRecordDatabase<T> */
    private void A02(int i, int i2) throws IOException {
        this.A00 = new C1264Tm(i, i2);
        this.A04.A04(this.A00);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Vm != com.facebook.ads.internal.eventstorage.record.RecordFileBasedRecordDatabase<T> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Vn != com.facebook.ads.internal.eventstorage.record.RecordFileBasedRecordDatabase<T>$RecordFileBasedFetch */
    /* JADX WARN: Incorrect inner types in method signature: (Lcom/facebook/ads/redexgen/X/Vm<TT;>.RecordFileBasedFetch;)V */
    public synchronized void A03(C1316Vn c1316Vn) throws U3 {
        if (!this.A03) {
            if (A06(c1316Vn)) {
                if (c1316Vn.A6P() == 0) {
                    return;
                }
                if (this.A00.A04(c1316Vn.A00().A02) == 0) {
                    try {
                        Iterator<C1276Ty> it = c1316Vn.A00.iterator();
                        while (it.hasNext()) {
                            if (it.next().A00 == this.A05.A07() && this.A05.A0D()) {
                                A02(this.A05.A06(), 0);
                            } else {
                                A02(this.A05.A06(), c1316Vn.A00().A00);
                                break;
                            }
                        }
                        if (this.A01.A04(this.A00) < 0) {
                            this.A01 = this.A00;
                        }
                        return;
                    } catch (IOException e) {
                        throw new U3(A00(TranSceneConfig.SCENE_TYPE_GAME_HOK_DOMINATE, 30, 22), e);
                    }
                }
                throw new U3(A00(0, 54, 30));
            }
            throw new U3(A00(466, 43, 59));
        }
        throw new U3(A00(427, 39, 60));
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Vm != com.facebook.ads.internal.eventstorage.record.RecordFileBasedRecordDatabase<T> */
    private void A05(InterfaceC1277Tz interfaceC1277Tz) throws IOException {
        C1264Tm c1264Tm = new C1264Tm(this.A05.A06(), 0);
        C1264Tm recordSequenceStart = this.A00;
        if (c1264Tm.A04(recordSequenceStart) > 0) {
            Locale locale = Locale.US;
            C1264Tm recordSequenceStart2 = this.A00;
            Integer numValueOf = Integer.valueOf(recordSequenceStart2.A02());
            C1264Tm recordSequenceStart3 = this.A00;
            interfaceC1277Tz.AHs(String.format(locale, A00(54, 102, 13), numValueOf, Integer.valueOf(recordSequenceStart3.A03()), Integer.valueOf(c1264Tm.A02()), Integer.valueOf(c1264Tm.A03())));
            this.A00 = c1264Tm;
            return;
        }
        while (iA02 < recordSequenceStart.A02()) {
            if (this.A05.A0D()) {
                c1264Tm = new C1264Tm(this.A05.A06(), 0);
            } else {
                Locale locale2 = Locale.US;
                C1264Tm recordSequenceStart4 = this.A00;
                Integer numValueOf2 = Integer.valueOf(recordSequenceStart4.A02());
                C1264Tm recordSequenceStart5 = this.A00;
                interfaceC1277Tz.AHs(String.format(locale2, A00(156, 101, 70), numValueOf2, Integer.valueOf(recordSequenceStart5.A03()), Integer.valueOf(c1264Tm.A02())));
                C1264Tm recordSequenceStart6 = new C1264Tm(this.A05.A06(), this.A05.A07());
                this.A00 = recordSequenceStart6;
                C1263Tl c1263Tl = this.A04;
                C1264Tm recordSequenceStart7 = this.A00;
                c1263Tl.A04(recordSequenceStart7);
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Vm != com.facebook.ads.internal.eventstorage.record.RecordFileBasedRecordDatabase<T> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Vn != com.facebook.ads.internal.eventstorage.record.RecordFileBasedRecordDatabase<T>$RecordFileBasedFetch */
    @Override
    public final synchronized InterfaceC1271Tt A6O(byte[] bArr, int[] iArr) throws U3 {
        C1315Vm<T>.RecordFileBasedFetch c1316Vn;
        if (!this.A03) {
            int i = 0;
            int i2 = 0;
            try {
                ArrayList arrayList = new ArrayList();
                boolean mayHaveMoreData = true;
                while (true) {
                    C1267Tp c1267TpA0A = this.A05.A0A(this.A01.A02(), this.A01.A03(), bArr, i, iArr, i2);
                    int iA00 = c1267TpA0A.A01().A00();
                    int storageOffset = c1267TpA0A.A01().A01();
                    int i3 = iA00 - storageOffset;
                    int storageOffset2 = c1267TpA0A.A01().A02();
                    i += storageOffset2;
                    i2 += i3;
                    if (c1267TpA0A.A01().A03() == EnumC1265Tn.A03) {
                        arrayList.add(c1267TpA0A);
                    }
                    if (c1267TpA0A.A01().A03() == EnumC1265Tn.A04) {
                        break;
                    }
                    if (c1267TpA0A.A01().A03() == EnumC1265Tn.A05) {
                        int countsOffset = this.A05.A06();
                        int storageOffset3 = this.A05.A08();
                        int countsOffset2 = countsOffset + storageOffset3;
                        int storageOffset4 = this.A01.A02();
                        if (countsOffset2 == storageOffset4 + 1) {
                            mayHaveMoreData = false;
                            break;
                        }
                        int storageOffset5 = this.A01.A02();
                        this.A01 = new C1264Tm(storageOffset5 + 1, 0);
                    } else {
                        this.A01 = this.A01.A05(i3);
                    }
                }
                c1316Vn = new C1316Vn(this, arrayList, mayHaveMoreData);
                this.A02.add(c1316Vn);
                if (!arrayList.isEmpty()) {
                    C1264Tm c1264Tm = c1316Vn.A01().A02;
                    int storageOffset6 = c1316Vn.A01().A01;
                    this.A01 = c1264Tm.A05(storageOffset6);
                }
            } catch (IOException e) {
                throw new U3(A00(306, 29, 84), e);
            }
        } else {
            throw new U3(A00(391, 36, 123));
        }
        return c1316Vn;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Vm != com.facebook.ads.internal.eventstorage.record.RecordFileBasedRecordDatabase<T> */
    @Override
    public final synchronized int A8k() throws U3 {
        int iA09;
        if (!this.A03) {
            try {
                iA09 = this.A05.A09();
                int iA02 = this.A00.A02();
                int count = this.A05.A06();
                if (iA02 == count) {
                    int count2 = this.A00.A03();
                    iA09 -= count2;
                }
            } catch (IOException e) {
                throw new U3(A00(335, 26, 57), e);
            }
        } else {
            throw new U3(A00(427, 39, 60));
        }
        return iA09;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Vm != com.facebook.ads.internal.eventstorage.record.RecordFileBasedRecordDatabase<T> */
    @Override
    public final synchronized void AJW(byte[] bArr) throws U3 {
        if (!this.A03) {
            try {
                this.A05.A0C(bArr);
            } catch (IOException e) {
                throw new U3(A00(257, 25, 62), e);
            }
        } else {
            throw new U3(A00(427, 39, 60));
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Vm != com.facebook.ads.internal.eventstorage.record.RecordFileBasedRecordDatabase<T> */
    @Override
    public final synchronized void clear() throws U3 {
        try {
            this.A05.A0B();
            A02(this.A05.A06(), 0);
            this.A02.clear();
        } catch (IOException e) {
            throw new U3(A00(OggPageHeader.MAXIMUM_PAGE_HEADER_SIZE, 24, 87), e);
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Vm != com.facebook.ads.internal.eventstorage.record.RecordFileBasedRecordDatabase<T> */
    @Override
    public final synchronized void close() throws IOException {
        if (this.A03) {
            return;
        }
        this.A03 = true;
        this.A02.clear();
        this.A04.close();
        this.A05.close();
    }
}
