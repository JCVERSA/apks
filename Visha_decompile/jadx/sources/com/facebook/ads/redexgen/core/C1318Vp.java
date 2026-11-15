package com.facebook.ads.redexgen.core;

import android.util.Log;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.hisavana.common.constant.ComConstants;
import com.just.agentweb.WebIndicator;
import com.transsion.apiinvoke.invoke.RspCode;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import com.transsion.socket.pkgdata.SocketData;
import com.transsion.tranplayer.MediaPlayer;
import com.transsion.vishatransfer.socket.TransferProtocol;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

public final class C1318Vp implements InterfaceC1261Tj {
    public static byte[] A03;
    public static String[] A04 = {"Mm6eOmxrkeU2", "MUq44yb", "oKRPVLX0GnKoqIxxSACkHhthyeGglJDi", "kpHGdbOqKKCIQYGNabgqln8bHLF6fw56", "0pAnM9hA2pxuChyanVmC1wYC", "qxO1zNdoKC3MMUxTs0mhMJ4wGZPx", "", "oKuuJ477mGyxhVSdv1rWN1Mids3hq7ZK"};
    public static final String A05;
    public final C1609cu A00;
    public final InterfaceC1272Tu<UP> A01;
    public final InterfaceC1272Tu<UP> A02;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            int i5 = bArrCopyOfRange[i4] - i3;
            String[] strArr = A04;
            if (strArr[5].length() == strArr[6].length()) {
                throw new RuntimeException();
            }
            A04[4] = "X42DzCMkQ4HFIzVdD0OsfCNEPJzG";
            bArrCopyOfRange[i4] = (byte) (i5 - 23);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        if (A04[4].length() == 9) {
            throw new RuntimeException();
        }
        A04[4] = "UWvzDGqGj7QUhJ5x6ip4Rlib";
        A03 = new byte[]{101, 99, -78, -87, 99, -73, -68, -77, -88, 125, 99, 115, -106, 119, -88, -105, -96, -90, -123, -90, -95, -92, -109, -103, -105, -124, -105, -107, -95, -92, -106, 118, -109, -90, -109, -108, -109, -91, -105, -110, -77, -70, -77, -62, -77, -78, 110, -77, -60, -77, -68, -62, -120, 110, 112, -90, -63, -55, -52, -59, -60, SocketData.CLAZZ_TYPE_END_SOCKET, -44, -49, SocketData.CLAZZ_TYPE_END_SOCKET, -61, -52, -59, -63, -46, SocketData.CLAZZ_TYPE_END_SOCKET, -59, -42, -59, -50, -44, -45, SocketData.CLAZZ_TYPE_END_SOCKET, -45, -44, -49, -46, -63, -57, -59, 107, -122, SocketData.CLAZZ_TYPE_FILE, -111, SocketData.CLAZZ_TYPE_FILE_BLOCK, -119, 69, -103, -108, 69, -119, SocketData.CLAZZ_TYPE_FILE_BLOCK, -104, SocketData.CLAZZ_TYPE_FILE_BLOCK, -105, SocketData.CLAZZ_TYPE_FILE, -122, -111, SocketData.CLAZZ_TYPE_FILE, -97, SocketData.CLAZZ_TYPE_FILE_BLOCK, 69, -122, -109, 69, SocketData.CLAZZ_TYPE_FILE_BLOCK, -101, SocketData.CLAZZ_TYPE_FILE_BLOCK, -109, -103, 69, SocketData.CLAZZ_TYPE_STRING, -105, -108, -110, 69, -119, -122, -103, -122, -121, -122, -104, SocketData.CLAZZ_TYPE_FILE_BLOCK, 69, -74, -47, -39, -36, -43, -44, -112, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -33, -112, -35, -33, -26, -43, -112, -43, -26, -43, -34, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -29, -112, -42, -30, -33, -35, -112, -39, -34, -99, -42, -36, -39, -41, -40, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -112, -29, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -33, -30, -47, -41, -43, -112, -46, -47, -45, -37, -112, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -33, -112, -43, -26, -43, -34, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -29, -112, -44, -47, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -47, -46, -47, -29, -43, -40, -13, -5, -2, -9, -10, -78, 6, 1, -78, 2, -13, 4, 5, -9, -78, -13, 0, -78, -9, 8, -9, 0, 6, -78, -8, 4, 1, -1, -78, -5, 0, -65, -8, -2, -5, -7, -6, 6, -78, 5, 6, 1, 4, -13, -7, -9, 112, SocketData.CLAZZ_TYPE_STRING, -109, -106, SocketData.CLAZZ_TYPE_URI, SocketData.CLAZZ_TYPE_FILE, 74, -98, -103, 74, -100, SocketData.CLAZZ_TYPE_URI, SocketData.CLAZZ_TYPE_STRING, SocketData.CLAZZ_TYPE_FILE, 74, -98, -110, SocketData.CLAZZ_TYPE_URI, 74, -104, -97, -105, SocketData.CLAZZ_TYPE_CODE, SocketData.CLAZZ_TYPE_URI, -100, 74, -103, -112, 74, SocketData.CLAZZ_TYPE_URI, -96, SocketData.CLAZZ_TYPE_URI, -104, -98, -99, 74, -112, -100, -103, -105, 74, SocketData.CLAZZ_TYPE_FILE, SocketData.CLAZZ_TYPE_STRING, -98, SocketData.CLAZZ_TYPE_STRING, SocketData.CLAZZ_TYPE_CODE, SocketData.CLAZZ_TYPE_STRING, -99, SocketData.CLAZZ_TYPE_URI, -121, -94, -86, -83, -90, -91, 97, -75, -80, 97, -76, -90, -77, -86, -94, -83, -86, -69, -90, 97, -94, -91, 97, -90, -73, -90, -81, -75, -64, -27, -35, -29, -32, -34, -33, -21, -92, -72, -37, -68, -19, -36, -27, -21, -54, -21, -26, -23, -40, -34, -36, -55, -36, -38, -26, -23, -37, -69, -40, -21, -40, -39, -40, -22, -36, -37, -18, -20, -8, -5, -19, -87, -19, -22, -3, -22, -21, -22, -4, -18, -87, -17, -22, -14, -11, -2, -5, -18, -87, -8, -20, -20, -2, -5, -5, -18, -19, -87, 0, -15, -18, -9, -87, -5, -18, -22, -19, -14, -9, -16, -87, -18, -1, -18, -9, -3, -4, -73, -16, 3, 3, -12, -4, -1, 3, -78, -81, -62, -81, -14, -19, SocketData.CLAZZ_TYPE_CODE, 127, 125, -119, SocketData.CLAZZ_TYPE_CODE, 126, 121, 126, 123, SocketData.CLAZZ_TYPE_FILE, 123, 124, 123, SocketData.CLAZZ_TYPE_ERROR_CODE, 127, -98, -112, -98, -98, -108, -102, -103, SocketData.CLAZZ_TYPE_FILE_BLOCK, -108, SocketData.CLAZZ_TYPE_URI, 7, -7, 7, 7, -3, 3, 2, -13, 8, -3, 1, -7, -68, -79, -75, -83, -22, -27, -31, -37, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -93, -88, -97, -108, -3, -10, -13, -10, -9, -1, -10};
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00f2 A[Catch: U3 -> 0x0138, TryCatch #5 {U3 -> 0x0138, blocks: (B:33:0x00e6, B:35:0x00f2, B:36:0x0101, B:22:0x0089, B:24:0x008f, B:26:0x009b, B:27:0x00dc, B:39:0x010a, B:40:0x010e, B:42:0x0114, B:43:0x0124, B:44:0x0128, B:46:0x012e), top: B:61:0x00e6 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x0149  */
    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 19 out of bounds for length 16
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:656)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    public final int A0B(int i, Set<String> set, Set<String> set2) {
        String strA00 = A00(RspCode.ERROR_INVALID_PUBLISH_TO_REMOTE, 7, 120);
        int i2 = 0;
        int[] iArr = new int[30];
        byte[] bArr = new byte[ComConstants.AD_TIMEOUT_MILLIS];
        LinkedList linkedList = new LinkedList();
        try {
            linkedList.add(this.A02.A6O(bArr, iArr));
            List<JSONObject> listA01 = A01(new LinkedList(), bArr, iArr);
            while (((InterfaceC1271Tt) linkedList.getLast()).ABp()) {
                Arrays.fill(iArr, 0);
                linkedList.add(this.A02.A6O(bArr, iArr));
                listA01 = A01(listA01, bArr, iArr);
            }
            Iterator<JSONObject> it = listA01.iterator();
            while (it.hasNext()) {
                JSONObject next = it.next();
                try {
                    String string = next.getString(A00(TypedValues.CycleType.TYPE_WAVE_PERIOD, 2, 114));
                    try {
                        if (set.contains(string)) {
                            int i3 = next.getInt(strA00) + 1;
                            if (i3 < i) {
                                try {
                                    next.put(strA00, i3);
                                    this.A01.AJW(A09(next));
                                } catch (U3 e) {
                                    e = e;
                                    if (this.A00.A05().AAF()) {
                                        Log.e(A05, A00(130, 68, 89), e);
                                    }
                                    A05(AbstractC1248Sv.A2L, e);
                                    return i2;
                                } catch (JSONException e2) {
                                    e = e2;
                                    try {
                                        if (this.A00.A05().AAF()) {
                                            Log.e(A05, A00(198, 47, 123), e);
                                        }
                                        A05(AbstractC1248Sv.A2P, e);
                                    } catch (U3 e3) {
                                        e = e3;
                                        if (this.A00.A05().AAF()) {
                                            Log.e(A05, A00(130, 68, 89), e);
                                        }
                                        A05(AbstractC1248Sv.A2L, e);
                                        return i2;
                                    }
                                }
                            } else {
                                i2++;
                            }
                            it.remove();
                        } else {
                            try {
                                if (set2.contains(string)) {
                                    if (this.A00.A05().AAF()) {
                                        String str = A00(39, 16, 55) + string + A00(0, 11, 44) + next.optString(A00(471, 4, 24), A00(475, 7, 113));
                                    }
                                    it.remove();
                                }
                            } catch (JSONException e4) {
                                e = e4;
                                if (this.A00.A05().AAF()) {
                                    Log.e(A05, A00(198, 47, 123), e);
                                }
                                A05(AbstractC1248Sv.A2P, e);
                            }
                        }
                    } catch (U3 e5) {
                        e = e5;
                    } catch (JSONException e6) {
                        e = e6;
                    }
                } catch (JSONException e7) {
                    e = e7;
                }
            }
            Iterator<JSONObject> it2 = listA01.iterator();
            while (it2.hasNext()) {
                this.A02.AJW(A09(it2.next()));
            }
            Iterator it3 = linkedList.iterator();
            while (it3.hasNext()) {
                ((InterfaceC1271Tt) it3.next()).A5h();
            }
        } catch (U3 e8) {
            e = e8;
        }
        return i2;
    }

    static {
        A03();
        A05 = C1318Vp.class.getSimpleName();
    }

    public C1318Vp(C1609cu c1609cu) throws IOException {
        this.A00 = c1609cu;
        this.A01 = new C1315Vm(C1269Tr.A00(A00(11, 28, 27), c1609cu), new W7(this));
        this.A02 = new C1315Vm(C1269Tr.A00(A00(TranSceneConfig.SCENE_TYPE_GAME_MLBB_LEGENDARY, 37, 96), c1609cu), new W3(this));
    }

    private List<JSONObject> A01(List<JSONObject> list, byte[] bArr, int[] iArr) {
        int i = 0;
        for (int i2 : iArr) {
            if (i2 == 0) {
                break;
            }
            try {
                list.add(A02(bArr, i, i2));
            } catch (JSONException jsone) {
                if (this.A00.A05().AAF()) {
                    Log.e(A05, A00(85, 45, 14), jsone);
                }
                int start = AbstractC1248Sv.A2P;
                A05(start, jsone);
            }
            i += i2;
        }
        return list;
    }

    public static JSONObject A02(byte[] bArr, int i, int i2) throws JSONException {
        return new JSONObject(new String(Arrays.copyOfRange(bArr, i, i + i2)));
    }

    public void A04(int i, String str) {
        C1249Sw c1249Sw = new C1249Sw(str);
        c1249Sw.A05(1);
        this.A00.A08().AAz(A00(TypedValues.CycleType.TYPE_WAVE_PHASE, 15, 3), i, c1249Sw);
    }

    private void A05(int i, Throwable th) {
        this.A00.A08().AAy(A00(TypedValues.CycleType.TYPE_WAVE_PHASE, 15, 3), i, new C1249Sw(th));
    }

    public static byte[] A07(SQ sq, String str, UP up) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(A00(TypedValues.CycleType.TYPE_WAVE_PERIOD, 2, 114), str);
            jSONObject.put(A00(466, 5, 95), up.A08());
            jSONObject.put(A00(471, 4, 24), up.A06().toString());
            jSONObject.put(A00(462, 4, 49), XG.A03(up.A04()));
            jSONObject.put(A00(WebIndicator.MAX_DECELERATE_SPEED_DURATION, 12, 125), XG.A03(up.A03()));
            jSONObject.put(A00(TranSceneConfig.SCENE_TYPE_GAME_FF, 10, 20), up.A07());
            jSONObject.put(A00(419, 4, 55), new JSONObject(up.A09()));
            jSONObject.put(A00(RspCode.ERROR_INVALID_PUBLISH_TO_REMOTE, 7, 120), 0);
        } catch (JSONException e) {
            if (sq.A05().AAF()) {
                Log.e(A05, A00(MediaPlayer.Event.DisableVideo, 28, 42), e);
            }
        }
        String string = jSONObject.toString();
        if (A04[3].charAt(18) == '3') {
            throw new RuntimeException();
        }
        A04[3] = "qXIRiOsc7TnqBEY389oLdIOolYF6NOqr";
        return string.getBytes();
    }

    public static byte[] A09(JSONObject jSONObject) {
        return jSONObject.toString().getBytes();
    }

    public final int A0A() {
        try {
            return this.A01.A8k();
        } catch (U3 e) {
            if (this.A00.A05().AAF()) {
                Log.e(A05, A00(245, 49, 19), e);
                return 0;
            }
            return 0;
        }
    }

    public final List<JSONObject> A0C(int i) {
        int totalFetched = 0;
        if (i == -1) {
            totalFetched = 1;
            i = 30;
        }
        int[] eventSizes = new int[i];
        byte[] bArr = new byte[i * 1000];
        List<JSONObject> linkedList = new LinkedList<>();
        LinkedList linkedList2 = new LinkedList();
        try {
            InterfaceC1271Tt interfaceC1271TtA6O = this.A01.A6O(bArr, eventSizes);
            linkedList2.add(interfaceC1271TtA6O);
            int iA6P = interfaceC1271TtA6O.A6P();
            linkedList = A01(linkedList, bArr, eventSizes);
            while (noLimit && (iA6P < i || totalFetched != 0)) {
                if (totalFetched != 0) {
                    Arrays.fill(eventSizes, 0);
                } else {
                    eventSizes = new int[i - iA6P];
                }
                interfaceC1271TtA6O = this.A01.A6O(bArr, eventSizes);
                linkedList2.add(interfaceC1271TtA6O);
                linkedList = A01(linkedList, bArr, eventSizes);
            }
            Iterator<JSONObject> it = linkedList.iterator();
            while (noLimit) {
                this.A02.AJW(A09(it.next()));
            }
            Iterator it2 = linkedList2.iterator();
            while (noLimit) {
                ((InterfaceC1271Tt) it2.next()).A5h();
            }
        } catch (U3 e) {
            boolean noLimit = this.A00.A05().AAF();
            if (noLimit) {
                Log.e(A05, A00(TranSceneConfig.SCENE_TYPE_GAME_HOK_KILL_8, 53, 114), e);
            }
            A05(AbstractC1248Sv.A2M, e);
        }
        return linkedList;
    }

    @Override
    public final void A4t() {
        try {
            this.A01.clear();
            this.A02.clear();
        } catch (U3 e) {
            if (this.A00.A05().AAF()) {
                Log.e(A05, A00(55, 30, 73), e);
            }
            A05(AbstractC1248Sv.A2J, e);
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Tg != com.facebook.ads.internal.eventstorage.AdEventStorageCallback<java.lang.String> */
    @Override
    public final void AKL(UP up, AbstractC1259Tg<String> abstractC1259Tg) {
        XR.A00(XU.A07, new AsyncTaskC1262Tk(up, abstractC1259Tg, this.A01, this.A00), new Void[0]);
    }
}
