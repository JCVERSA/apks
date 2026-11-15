package com.facebook.ads.redexgen.core;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import com.transsion.socket.pkgdata.SocketData;
import com.transsion.vishatransfer.socket.TransferProtocol;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Semaphore;
import org.mozilla.classfile.ByteCode;

public final class C1990jO implements InterfaceC1038Kp {
    public static byte[] A09;
    public static String[] A0A = {"jhQijRHeS2b3DC", "TrxlLGPRt74PJqIyPQ202SRMEezA", "IB0ZY9fOXgD7jLe6Y4PRk3dCNjPCK6", "H6fabJXG57DAkPtsQTSNUghzavXSaH69", "ufMT47zQTczJDi2Vdc2LdI1YLyWR3nOe", "Lk9ILhYpp3cxsVDBevZ7UGW4HuH86l", "wl", "vesbJwqYWy5viKlOFyHJIQca6g"};
    public static final String A0B;
    public final int A00;
    public final int A01;
    public final C1046Kx A02;
    public final LA A04;
    public final SQ A05;
    public final boolean A08;
    public final Map<String, File> A06 = Collections.synchronizedMap(new HashMap());
    public final Map<String, Semaphore> A07 = new HashMap();
    public final C1048Kz A03 = new C1048Kz();

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 23 out of bounds for length 23
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.restartVar(DebugInfoParser.java:193)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:141)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:656)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    /* JADX WARN: Not initialized variable reg: 11, insn: 0x0126: INVOKE 
      (r10v1 ?? I:com.facebook.ads.redexgen.X.LA)
      (r11 I:java.lang.String)
      (r12 I:int)
      (r13 I:java.lang.String)
      (r14 I:java.lang.Long)
      (r15 I:java.lang.Long)
      (r16 I:com.facebook.ads.redexgen.X.Kv)
     INTERFACE call: com.facebook.ads.redexgen.X.LA.AGk(java.lang.String, int, java.lang.String, java.lang.Long, java.lang.Long, com.facebook.ads.redexgen.X.Kv):void A[MD:(java.lang.String, int, java.lang.String, java.lang.Long, java.lang.Long, com.facebook.ads.redexgen.X.Kv):void (m)], block:B:43:0x011a */
    /* JADX WARN: Not initialized variable reg: 11, insn: 0x0141: INVOKE 
      (r10v0 ?? I:com.facebook.ads.redexgen.X.LA)
      (r11 I:java.lang.String)
      (r12 I:int)
      (r13 I:java.lang.String)
      (r14 I:java.lang.Long)
      (r15 I:java.lang.Long)
      (r16 I:com.facebook.ads.redexgen.X.Kv)
     INTERFACE call: com.facebook.ads.redexgen.X.LA.AGk(java.lang.String, int, java.lang.String, java.lang.Long, java.lang.Long, com.facebook.ads.redexgen.X.Kv):void A[MD:(java.lang.String, int, java.lang.String, java.lang.Long, java.lang.Long, com.facebook.ads.redexgen.X.Kv):void (m)], block:B:49:0x0135 */
    /* JADX WARN: Not initialized variable reg: 5, insn: 0x0124: MOVE (r16 I:??[OBJECT, ARRAY]) = (r5 I:??[OBJECT, ARRAY]), block:B:43:0x011a */
    /* JADX WARN: Not initialized variable reg: 5, insn: 0x013f: MOVE (r16 I:??[OBJECT, ARRAY]) = (r5 I:??[OBJECT, ARRAY]), block:B:49:0x0135 */
    private File A02(C1044Kv c1044Kv, String str, String str2, int i, C1047Ky c1047Ky) throws Exception {
        C1044Kv c1044Kv2;
        String strAGk;
        C1044Kv c1044Kv3;
        String strAGk2;
        String strA03 = A03(TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_REPLY, 22, 17);
        try {
            String str3 = str;
            long jCurrentTimeMillis = System.currentTimeMillis();
            File file = new File(A01(this.A05), str2);
            final long jA0R = U7.A0R(this.A05);
            C1985jI c1985jI = new C1985jI(file, new AbstractC1989jN(jA0R) {
                public static byte[] A01;
                public final long A00;

                static {
                    A01();
                }

                public static String A00(int i2, int i3, int i4) {
                    byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i2, i2 + i3);
                    for (int i5 = 0; i5 < bArrCopyOfRange.length; i5++) {
                        bArrCopyOfRange[i5] = (byte) ((bArrCopyOfRange[i5] - i4) - 38);
                    }
                    return new String(bArrCopyOfRange);
                }

                public static void A01() {
                    A01 = new byte[]{-31, -11, 12, -76, 7, -3, 14, -7, -76, 1, 9, 7, 8, -76, -10, -7, -76, 4, 3, 7, -3, 8, -3, 10, -7, -76, 2, 9, 1, -10, -7, 6, -75};
                }

                {
                    if (jA0R > 0) {
                        this.A00 = jA0R;
                        return;
                    }
                    throw new IllegalArgumentException(A00(0, 33, 110));
                }

                @Override
                public final boolean A08(File file2, long j, int i2) {
                    return j <= this.A00;
                }

                @Override
                public final void AJg(File file2) throws IOException {
                    super.AJg(file2);
                }
            });
            if (c1985jI.A09()) {
                if (this.A08) {
                    String str4 = A03(49, 22, 36) + c1985jI.A00.getName();
                }
                this.A06.put(str3, file);
                c1985jI.A06();
                this.A04.AGl(str3, true, c1044Kv);
                return file;
            }
            if (this.A08) {
                String str5 = A03(71, 26, 76) + c1985jI.A00.getName();
            }
            if (!c1047Ky.A04()) {
                return null;
            }
            this.A04.AGl(str3, false, c1044Kv);
            for (int i2 = 0; i2 < this.A00; i2++) {
                try {
                    SQ sq = this.A05;
                    if (A0A[3].charAt(31) != '9') {
                        throw new RuntimeException();
                    }
                    String[] strArr = A0A;
                    strArr[2] = "QJ6lhIf3SMnJsUHWjUzyv1yZJIRdgp";
                    strArr[5] = "f1TQksdEGnGezGtACwRIsNgGsb1lS2";
                    str3 = str3;
                    try {
                        A05(sq, c1985jI, str3, i, i2, jCurrentTimeMillis);
                        break;
                    } catch (L6 e) {
                        e = e;
                        if (i2 == this.A00 - 1) {
                            A06(c1985jI);
                            if (e instanceof C1986jJ) {
                                throw ((C1986jJ) e);
                            }
                            if (e instanceof C1981jE) {
                                throw ((C1981jE) e);
                            }
                        }
                    }
                } catch (L6 e2) {
                    e = e2;
                }
            }
            int iA03 = c1985jI.A03();
            c1985jI.A06();
            long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
            c1047Ky.A00().A55(file, this.A04);
            this.A06.put(str3, file);
            this.A04.AGk(str3, 2112, null, Long.valueOf(iA03), Long.valueOf(jCurrentTimeMillis2), c1044Kv);
            return file;
        } catch (C1981jE e3) {
            this.A04.AGk(strAGk2, 2113, e3.toString(), null, null, c1044Kv3);
            if (!this.A08) {
                return null;
            }
            Log.e(A0B, strA03, e3);
            return null;
        } catch (C1986jJ e4) {
            this.A04.AGk(strAGk, 2119, e4.toString(), null, null, c1044Kv2);
            if (!this.A08) {
                return null;
            }
            Log.e(A0B, strA03, e4);
            return null;
        }
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A09, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 50);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A09 = new byte[]{-95, -23, -30, -12, -95, -29, -26, -26, -17, -95, -22, -17, -11, -26, -13, -13, -10, -15, -11, -26, -27, -81, SocketData.CLAZZ_TYPE_END_SOCKET, 116, -70, -67, -64, -71, 116, -73, -64, -71, -75, -62, -71, -72, SocketData.CLAZZ_TYPE_FILE, 116, -52, -66, -33, 18, 18, 3, ByteCode.T_LONG, 14, 18, -40, -66, -103, -73, -71, -66, -65, -60, -67, 118, -68, -65, -62, -69, 118, -71, -59, -61, -58, -62, -69, -54, -69, 118, -63, -33, -31, -26, -25, -20, -27, -98, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -25, -22, -29, -98, -20, -19, -14, -98, -31, -19, -21, -18, -22, -29, -14, -29, -98, -87, -57, -55, -50, -49, -44, -51, -122, -43, -52, -122, -121, -91, -78, 107, -72, 100, -89, -80, -77, -73, -87, 100, -89, -91, -89, -84, -87, 100, -86, -83, -80, -87, 114, -61, -31, -18, -89, -12, -96, -14, -27, -31, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -96, -31, -13, -13, -27, -12, -13, -82, -63, -33, -20, -91, -14, -98, -16, -29, -33, -30, -98, -22, -29, -20, -27, -14, -26, -98, -19, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -98, -124, -91, -84, -91, -76, -87, -82, -89, 96, -93, -95, -93, -88, -91, 96, -90, -87, -84, -91, 96, -95, -90, -76, -91, -78, 96, -91, -72, -93, -91, -91, -92, -87, -82, -89, 96, -78, -91, -76, -78, -71, 96, -95, -76, -76, -91, -83, -80, -76, -77, 122, 96, -120, -75, -75, -78, -75, 99, -90, -92, -90, -85, -84, -79, -86, 99, -73, -85, -88, 99, -87, -84, -81, -88, -89, -44, -44, -47, -44, SocketData.CLAZZ_TYPE_SEND_PACKAGE, -59, -50, -57, -61, -48, -53, -48, -55, SocketData.CLAZZ_TYPE_SEND_PACKAGE, -56, -53, -50, -57, -23, 22, 22, 19, 22, -60, 7, 16, 19, 23, 13, 18, ByteCode.T_LONG, -60, 23, 19, 25, 22, 7, 9, -39, -2, -13, -1, -3, 0, -4, -11, 4, -11, -80, 2, -11, 3, 0, -1, -2, 3, -11, -66, 2, 32, 39, 23, 28, 21, -50, 34, 29, -50, 32, 19, 15, 18, -50, -31, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -18, -9, -83, -26, -23, -20, -27, -83, -29, -31, -29, -24, -27, -50, -32, -32, -46, -31, -89, -100, -100, -100, -77, -74, -71, -78, -121, 124, 124, 124, -82, -69, -79, -65, -68, -74, -79, -84, -82, -64, -64, -78, -63, 124};
    }

    static {
        A04();
        A0B = C1990jO.class.getSimpleName();
    }

    public C1990jO(SQ sq, C1046Kx c1046Kx, LA la) {
        this.A05 = sq;
        this.A08 = c1046Kx.A02();
        this.A00 = c1046Kx.A00();
        this.A04 = la;
        this.A01 = c1046Kx.A01();
        this.A02 = c1046Kx;
    }

    public static C1987jK A00(Context context, String str) throws L6 {
        try {
            InputStream inputStreamOpen = context.getAssets().open(str);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[1024];
            while (true) {
                int i = inputStreamOpen.read(bArr, 0, bArr.length);
                if (i != -1) {
                    byteArrayOutputStream.write(bArr, 0, i);
                } else {
                    return new C1987jK(byteArrayOutputStream.toByteArray());
                }
            }
        } catch (IOException e) {
            throw new L6(A03(131, 18, 78), e);
        }
    }

    public static File A01(Context context) {
        return new File(context.getCacheDir(), A03(318, 15, 78));
    }

    /* JADX WARN: Code duplicated, block: B:107:0x00ae A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:56:0x0157 A[Catch: L6 -> 0x015f, all -> 0x01c6, TRY_ENTER, TRY_LEAVE, TryCatch #13 {L6 -> 0x015f, blocks: (B:12:0x007c, B:40:0x00f8, B:42:0x0100, B:50:0x0144, B:56:0x0157, B:48:0x013e), top: B:112:0x007c }] */
    /* JADX WARN: Code duplicated, block: B:62:0x0188  */
    /* JADX WARN: Code duplicated, block: B:63:0x0190  */
    private void A05(Context context, C1985jI c1985jI, String str, int i, int i2, long j) throws Exception {
        L9 c1982jF;
        int iA06;
        int iA07;
        String[] strArr;
        String strA03 = A03(263, 20, 114);
        String strA04 = A03(342, 22, 27);
        if (str.startsWith(strA04)) {
            String localUrl = str.substring(strA04.length());
            c1982jF = A00(context, localUrl);
        } else {
            String strA05 = A03(333, 9, 59);
            if (str.startsWith(strA05)) {
                String localUrl2 = str.substring(strA05.length());
                c1982jF = A00(context, localUrl2);
            } else {
                c1982jF = new C1982jF(str, i);
            }
        }
        try {
            if (this.A08) {
                try {
                    try {
                        String str2 = A03(303, 15, 124) + str + A03(38, 11, 108) + i2;
                    } catch (L6 e) {
                        e = e;
                        iA06 = 0;
                        try {
                            if (c1982jF instanceof C1982jF) {
                                try {
                                    iA06 = ((C1982jF) c1982jF).A06();
                                } catch (Throwable th) {
                                    th = th;
                                    try {
                                        c1982jF.close();
                                    } catch (L6 | IllegalArgumentException e2) {
                                        if (this.A08) {
                                            Log.e(A0B, strA03, e2);
                                        }
                                    }
                                    throw th;
                                }
                            }
                            try {
                                this.A05.A08().ABI(j, System.currentTimeMillis() - j, 0L, 0L, iA06, null);
                                throw e;
                            } catch (Throwable th2) {
                                th = th2;
                                c1982jF.close();
                                throw th;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            if (A0A[4].charAt(27) == 'R') {
                                A0A[3] = "p8aYiN6IujE52Q2p9R2WzRwMj4wd2wO9";
                            }
                            throw new RuntimeException();
                        }
                    }
                } catch (L6 e3) {
                    e = e3;
                    iA06 = 0;
                    if (c1982jF instanceof C1982jF) {
                        iA06 = ((C1982jF) c1982jF).A06();
                    }
                    this.A05.A08().ABI(j, System.currentTimeMillis() - j, 0L, 0L, iA06, null);
                    throw e;
                } catch (Throwable th4) {
                    th = th4;
                    c1982jF.close();
                    throw th;
                }
            }
            int iA03 = c1985jI.A03();
            int length = c1982jF.length();
            boolean z = length < 0;
            if (A0A[3].charAt(31) == '9') {
                A0A[3] = "O2qol2VIPsSIkPIIN6kN5hssl2djupr9";
                if (z) {
                    boolean zA07 = A07(c1985jI);
                    if (this.A08) {
                        String str3 = A03(149, 21, 76) + str + A03(22, 16, 34) + zA07;
                    }
                }
                try {
                    try {
                        if (z || iA03 < length) {
                            c1982jF.AFz(iA03);
                            byte[] buffer = new byte[8192];
                            while (true) {
                                int i3 = c1982jF.read(buffer);
                                if (i3 == -1) {
                                    break;
                                } else {
                                    c1985jI.A08(buffer, i3);
                                }
                            }
                            if (!z || c1985jI.A03() == length) {
                                c1985jI.A07();
                                iA07 = 0;
                                if (c1982jF instanceof C1982jF) {
                                    iA07 = ((C1982jF) c1982jF).A06();
                                }
                                InterfaceC1247Su interfaceC1247SuA08 = this.A05.A08();
                                long jCurrentTimeMillis = System.currentTimeMillis() - j;
                                long jA03 = c1985jI.A03();
                                strArr = A0A;
                                if (strArr[2].length() != strArr[5].length()) {
                                    A0A[0] = "LJMphR6GQubhlr";
                                } else {
                                    A0A[0] = "i3csCW72L1z7Bc";
                                }
                                interfaceC1247SuA08.ABI(j, jCurrentTimeMillis, jA03, 0L, iA07, null);
                                c1982jF.close();
                                return;
                            }
                            throw new C1986jJ(A03(283, 20, 94));
                        }
                        c1982jF.close();
                        return;
                    } catch (L6 | IllegalArgumentException e4) {
                        if (this.A08) {
                            String str4 = A0B;
                            String[] strArr2 = A0A;
                            if (strArr2[2].length() != strArr2[5].length()) {
                                throw new RuntimeException();
                            }
                            A0A[1] = "AOKjIt2kEVzrEy7KBqss66";
                            Log.e(str4, strA03, e4);
                            return;
                        }
                        return;
                    }
                    if (!z) {
                        c1985jI.A07();
                    } else {
                        throw new C1986jJ(A03(283, 20, 94));
                    }
                    iA07 = 0;
                    if (c1982jF instanceof C1982jF) {
                        iA07 = ((C1982jF) c1982jF).A06();
                    }
                    InterfaceC1247Su interfaceC1247SuA09 = this.A05.A08();
                    long jCurrentTimeMillis2 = System.currentTimeMillis() - j;
                    long jA04 = c1985jI.A03();
                    strArr = A0A;
                    if (strArr[2].length() != strArr[5].length()) {
                        A0A[0] = "LJMphR6GQubhlr";
                    } else {
                        A0A[0] = "i3csCW72L1z7Bc";
                    }
                    interfaceC1247SuA09.ABI(j, jCurrentTimeMillis2, jA04, 0L, iA07, null);
                } catch (L6 e5) {
                    e = e5;
                    iA06 = 0;
                    if (c1982jF instanceof C1982jF) {
                        iA06 = ((C1982jF) c1982jF).A06();
                    }
                    this.A05.A08().ABI(j, System.currentTimeMillis() - j, 0L, 0L, iA06, null);
                    throw e;
                } catch (Throwable th5) {
                    th = th5;
                    c1982jF.close();
                    throw th;
                }
            }
            throw new RuntimeException();
        } catch (L6 e6) {
            e = e6;
            if (A0A[0].length() == 14) {
                String[] strArr3 = A0A;
                strArr3[2] = "7VHRmmesbfeDqucWLtEKLKcMBQJVNm";
                strArr3[5] = "oM47EpnTTF1S9ikTK6B0AzPGZuSKH0";
            }
        }
    }

    private void A06(C1985jI c1985jI) {
        try {
            File fileA04 = c1985jI.A04();
            if (fileA04.exists()) {
                c1985jI.A06();
                boolean zDelete = fileA04.delete();
                if (this.A08) {
                    Log.i(A0B, A03(170, 52, 14) + zDelete);
                }
            }
        } catch (Exception e) {
            if (A0A[0].length() != 14) {
                throw new RuntimeException();
            }
            A0A[3] = "fJTJjiotuyJvZrF72L8221tI8VUznJb9";
            if (this.A08) {
                Log.e(A0B, A03(108, 23, 18), e);
            }
        }
    }

    private boolean A07(C1985jI c1985jI) {
        try {
            c1985jI.A05();
            if (A0A[4].charAt(27) != 'R') {
                throw new RuntimeException();
            }
            String[] strArr = A0A;
            strArr[7] = "zmS4hUlvHkaHxqc9Vg18exvolw";
            strArr[6] = "qC";
            return true;
        } catch (C1981jE e) {
            if (this.A08) {
                Log.e(A0B, A03(244, 19, 48), e);
                return false;
            }
            return false;
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Ky != com.facebook.ads.cache.config.CacheRequestConfig<T> */
    public final <T> C1040Kr<T> A08(C1044Kv c1044Kv, C1047Ky<T> c1047Ky) {
        Semaphore semaphore;
        if (c1047Ky.A03()) {
            File file = this.A06.get(c1044Kv.A09);
            if (file != null) {
                this.A04.AGl(c1044Kv.A09, true, c1044Kv);
                return c1047Ky.A00().A3p(file, this.A04);
            }
            this.A04.AGl(c1044Kv.A09, false, c1044Kv);
            return new C1040Kr<>(false, null);
        }
        String str = c1044Kv.A09;
        String str2 = c1044Kv.A04;
        StringBuilder sb = new StringBuilder();
        String baseUrl = this.A03.A03(str);
        String extension = sb.append(baseUrl).append(str2).toString();
        synchronized (this.A07) {
            semaphore = this.A07.get(extension);
            if (semaphore == null) {
                semaphore = new Semaphore(1);
                this.A07.put(extension, semaphore);
            }
            try {
            } catch (Throwable th) {
                semaphore.release();
                synchronized (this.A07) {
                    this.A07.remove(extension);
                    throw th;
                }
            }
        }
        try {
            semaphore.acquire();
            File fileA02 = A02(c1044Kv, str, extension, this.A01, c1047Ky);
            if (fileA02 != null) {
                C1040Kr<T> c1040KrA3p = c1047Ky.A00().A3p(fileA02, this.A04);
                semaphore.release();
                synchronized (this.A07) {
                    this.A07.remove(extension);
                }
                return c1040KrA3p;
            }
            C1040Kr<T> c1040Kr = new C1040Kr<>(false, null);
            semaphore.release();
            synchronized (this.A07) {
                this.A07.remove(extension);
            }
            return c1040Kr;
        } catch (InterruptedException unused) {
            if (this.A08) {
                StringBuilder sb2 = new StringBuilder();
                String baseUrl2 = A03(97, 11, 52);
                StringBuilder sbAppend = sb2.append(baseUrl2).append(str);
                String baseUrl3 = A03(0, 22, 79);
                sbAppend.append(baseUrl3).toString();
            }
            C1040Kr<T> c1040Kr2 = new C1040Kr<>(false, null);
            semaphore.release();
            synchronized (this.A07) {
                this.A07.remove(extension);
                return c1040Kr2;
            }
        }
    }

    @Override
    public final C1040Kr<Bitmap> AHu(C1044Kv c1044Kv, boolean z) {
        return A08(c1044Kv, new C1047Ky(new C1993jR(c1044Kv.A01, c1044Kv.A00, this.A02.A04(), this.A02.A03(), z)));
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Ky != com.facebook.ads.cache.config.CacheRequestConfig<java.io.File> */
    @Override
    public final File AHv(C1044Kv c1044Kv) {
        C1047Ky c1047Ky = new C1047Ky(new C1992jQ());
        c1047Ky.A01(true);
        c1047Ky.A02(false);
        return (File) A08(c1044Kv, c1047Ky).A00();
    }

    @Override
    public final String AHw(C1044Kv c1044Kv) {
        return (String) A08(c1044Kv, new C1047Ky(new C1991jP())).A00();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Ky != com.facebook.ads.cache.config.CacheRequestConfig<java.lang.String> */
    @Override
    public final String AHx(C1044Kv c1044Kv) {
        C1047Ky c1047Ky = new C1047Ky(new C1991jP());
        c1047Ky.A01(true);
        c1047Ky.A02(false);
        return (String) A08(c1044Kv, c1047Ky).A00();
    }
}
