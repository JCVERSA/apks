package com.facebook.ads.redexgen.core;

import android.content.Context;
import android.graphics.Point;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Pair;
import com.facebook.ads.androidx.media3.common.Timeline;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.hunantv.media.drm.IDrmSession;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import com.transsion.socket.pkgdata.SocketData;
import com.transsion.tranplayer.MediaPlayer;
import com.transsion.vishatransfer.socket.TransferProtocol;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class AnonymousClass92 extends AbstractC2121li {
    public static byte[] A07;
    public static String[] A08 = {"yr7s5jzv1addyUjDczkFmKgb3TbXTjPI", "k5bxDF12X7IfueMvpCyLhsS14secbcRr", "A1nn9z9SPvnfAziOnMuSk0GZzxZ0jVfY", "Bn8GSVMc2Ww3cTp6j1ZQIVGuo4fvIYJ3", "KOSGSA", "kbDMqlVGuQuF7sZpY9G1V32bVqx23m", "bfxskyCfRQ3e5JfVyMYK1TBq", "KPf5jweXKATwb3ocWNu711OjnnCWcsTU"};
    public static final AbstractC2291oV<Integer> A09;
    public static final AbstractC2291oV<Integer> A0A;
    public C2318oy A00;
    public AnonymousClass93 A01;
    public E3 A02;
    public final Context A03;
    public final EA A04;
    public final Object A05;
    public final boolean A06;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @MetaExoPlayerCustomization("D25277746")
    private <T extends E5<T>> Pair<E9, Integer> A0A(int i, EC ec, int[][][] iArr, E4<T> e4, Comparator<List<T>> comparator) {
        List arrayList;
        ArrayList arrayList2 = new ArrayList();
        int iA02 = ec.A02();
        for (int i2 = 0; i2 < iA02; i2++) {
            if (i == ec.A03(i2)) {
                C2149mA c2149mAA07 = ec.A07(i2);
                for (int i3 = 0; i3 < c2149mAA07.A01; i3++) {
                    C2278oH c2278oHA05 = c2149mAA07.A05(i3);
                    List<T> listA57 = e4.A57(i2, c2278oHA05, iArr[i2][i3]);
                    boolean[] zArr = new boolean[c2278oHA05.A01];
                    ArrayList arrayList3 = new ArrayList();
                    ArrayList arrayList4 = new ArrayList();
                    int i4 = 0;
                    while (true) {
                        int i5 = c2278oHA05.A01;
                        if (A08[4].length() != 6) {
                            throw new RuntimeException();
                        }
                        A08[7] = "GGTbcpljDMs4NAqJNauGpoXnSvHOQ6AN";
                        if (i4 < i5) {
                            T t = listA57.get(i4);
                            int iA08 = t.A08();
                            if (!zArr[i4] && iA08 != 0) {
                                if (iA08 == 1) {
                                    arrayList = AbstractC0779Am.A04(t);
                                    arrayList3.add(t);
                                } else {
                                    arrayList = new ArrayList();
                                    arrayList.add(t);
                                    int i6 = i4 + 1;
                                    while (i6 < c2278oHA05.A01) {
                                        T t2 = listA57.get(i6);
                                        if (t2.A08() == 2 && t.A09(t2)) {
                                            arrayList.add(t2);
                                            zArr[i6] = true;
                                        }
                                        i6++;
                                        if (A08[1].charAt(16) == 'p') {
                                            A08[7] = "CPvHWQWYEszLaRsxiIiXKw3X1jOClslA";
                                        }
                                    }
                                }
                                arrayList4.add(arrayList);
                            }
                            i4++;
                        }
                    }
                    if (this.A01.A0A && !arrayList3.isEmpty() && arrayList3.size() == c2278oHA05.A01) {
                        arrayList4.clear();
                        if (A08[1].charAt(16) != 'p') {
                            A08[4] = "67hsDi";
                            arrayList4.add(arrayList3);
                        } else {
                            A08[4] = "yJ8LwG";
                            arrayList4.add(arrayList3);
                        }
                    }
                    arrayList2.addAll(arrayList4);
                }
            }
        }
        boolean zIsEmpty = arrayList2.isEmpty();
        if (A08[1].charAt(16) != 'p') {
            throw new RuntimeException();
        }
        A08[4] = "ji0WxR";
        if (zIsEmpty) {
            return null;
        }
        List list = (List) Collections.max(arrayList2, comparator);
        int[] iArr2 = new int[list.size()];
        for (int i7 = 0; i7 < list.size(); i7++) {
            iArr2[i7] = ((E5) list.get(i7)).A01;
        }
        E5 e5 = (E5) list.get(0);
        return Pair.create(new E9(e5.A03, iArr2), Integer.valueOf(e5.A00));
    }

    public static String A0J(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A08[5].length() == 27) {
                throw new RuntimeException();
            }
            A08[4] = "58VoVy";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 10);
            i4++;
        }
    }

    public static void A0M() {
        A07 = new byte[]{91, 92, -112, 127, -124, SocketData.CLAZZ_TYPE_FILE_BLOCK, 59, 126, SocketData.CLAZZ_TYPE_CONNECT_CHECK, 124, -119, -119, SocketData.CLAZZ_TYPE_END_SOCKET, -121, 59, 126, SocketData.CLAZZ_TYPE_FILE_BLOCK, -112, -119, SocketData.CLAZZ_TYPE_URI, 59, 126, SocketData.CLAZZ_TYPE_FILE_BLOCK, -119, SocketData.CLAZZ_TYPE_FILE, SocketData.CLAZZ_TYPE_URI, SocketData.CLAZZ_TYPE_ERROR_CODE, 124, -124, -119, SocketData.CLAZZ_TYPE_URI, SocketData.CLAZZ_TYPE_FILE, 59, 126, 124, -119, -119, SocketData.CLAZZ_TYPE_FILE_BLOCK, SocketData.CLAZZ_TYPE_URI, 59, 125, SocketData.CLAZZ_TYPE_END_SOCKET, 59, 124, SocketData.CLAZZ_TYPE_STRING, SocketData.CLAZZ_TYPE_STRING, -121, -124, SocketData.CLAZZ_TYPE_END_SOCKET, 127, 59, -110, -124, SocketData.CLAZZ_TYPE_URI, SocketData.CLAZZ_TYPE_CONNECT_CHECK, SocketData.CLAZZ_TYPE_FILE_BLOCK, -112, SocketData.CLAZZ_TYPE_URI, 59, SocketData.CLAZZ_TYPE_ERROR_CODE, SocketData.CLAZZ_TYPE_END_SOCKET, SocketData.CLAZZ_TYPE_HEART_BEAT, SocketData.CLAZZ_TYPE_END_SOCKET, SocketData.CLAZZ_TYPE_ERROR_CODE, SocketData.CLAZZ_TYPE_END_SOCKET, -119, 126, SocketData.CLAZZ_TYPE_END_SOCKET, 59, SocketData.CLAZZ_TYPE_URI, SocketData.CLAZZ_TYPE_FILE_BLOCK, 59, 94, SocketData.CLAZZ_TYPE_FILE_BLOCK, -119, SocketData.CLAZZ_TYPE_URI, SocketData.CLAZZ_TYPE_END_SOCKET, -109, SocketData.CLAZZ_TYPE_URI, 73, 59, 93, -112, -124, -121, 127, 59, SocketData.CLAZZ_TYPE_URI, SocketData.CLAZZ_TYPE_CONNECT_CHECK, SocketData.CLAZZ_TYPE_END_SOCKET, 59, SocketData.CLAZZ_TYPE_URI, SocketData.CLAZZ_TYPE_ERROR_CODE, 124, 126, -122, 59, SocketData.CLAZZ_TYPE_FILE, SocketData.CLAZZ_TYPE_END_SOCKET, -121, SocketData.CLAZZ_TYPE_END_SOCKET, 126, SocketData.CLAZZ_TYPE_URI, SocketData.CLAZZ_TYPE_FILE_BLOCK, SocketData.CLAZZ_TYPE_ERROR_CODE, 59, -124, -119, SocketData.CLAZZ_TYPE_FILE, SocketData.CLAZZ_TYPE_URI, 124, -119, 126, SocketData.CLAZZ_TYPE_END_SOCKET, 59, -110, -124, SocketData.CLAZZ_TYPE_URI, SocketData.CLAZZ_TYPE_CONNECT_CHECK, 59, SocketData.CLAZZ_TYPE_FILE_BLOCK, -119, SocketData.CLAZZ_TYPE_END_SOCKET, 59, SocketData.CLAZZ_TYPE_FILE_BLOCK, SocketData.CLAZZ_TYPE_HEART_BEAT, 59, SocketData.CLAZZ_TYPE_URI, SocketData.CLAZZ_TYPE_CONNECT_CHECK, SocketData.CLAZZ_TYPE_END_SOCKET, 59, -119, SocketData.CLAZZ_TYPE_FILE_BLOCK, -119, 72, 127, SocketData.CLAZZ_TYPE_END_SOCKET, SocketData.CLAZZ_TYPE_STRING, SocketData.CLAZZ_TYPE_ERROR_CODE, SocketData.CLAZZ_TYPE_END_SOCKET, 126, 124, SocketData.CLAZZ_TYPE_URI, SocketData.CLAZZ_TYPE_END_SOCKET, 127, 59, 126, SocketData.CLAZZ_TYPE_FILE_BLOCK, -119, SocketData.CLAZZ_TYPE_FILE, SocketData.CLAZZ_TYPE_URI, SocketData.CLAZZ_TYPE_ERROR_CODE, -112, 126, SocketData.CLAZZ_TYPE_URI, SocketData.CLAZZ_TYPE_FILE_BLOCK, SocketData.CLAZZ_TYPE_ERROR_CODE, SocketData.CLAZZ_TYPE_FILE, 59, SocketData.CLAZZ_TYPE_URI, SocketData.CLAZZ_TYPE_CONNECT_CHECK, 124, SocketData.CLAZZ_TYPE_URI, 59, SocketData.CLAZZ_TYPE_URI, 124, -122, SocketData.CLAZZ_TYPE_END_SOCKET, 59, 124, 59, 94, SocketData.CLAZZ_TYPE_FILE_BLOCK, -119, SocketData.CLAZZ_TYPE_URI, SocketData.CLAZZ_TYPE_END_SOCKET, -109, SocketData.CLAZZ_TYPE_URI, 59, 124, SocketData.CLAZZ_TYPE_ERROR_CODE, SocketData.CLAZZ_TYPE_SEND_PACKAGE, -112, -120, SocketData.CLAZZ_TYPE_END_SOCKET, -119, SocketData.CLAZZ_TYPE_URI, 73, -103, -70, -69, -74, -54, -63, -55, -87, -57, -74, -72, -64, -88, -70, -63, -70, -72, -55, -60, -57, -57, -37, -54, -49, -43, -107, -57, -55, -103, -83, -63, -80, -75, -69, 123, -83, -81, SocketData.CLAZZ_TYPE_END_SOCKET, -49, -29, -46, -41, -35, -99, -45, -49, -47, -95, -70, -50, -67, -62, -56, -120, -66, -70, -68, SocketData.CLAZZ_TYPE_CODE, -122, -61, -56, -68, -54, -61, -71, -119, 124, 119, 120, SocketData.CLAZZ_TYPE_SEND_PACKAGE, 66, 116, -119, 67, 68, -98, -111, SocketData.CLAZZ_TYPE_CODE, SocketData.CLAZZ_TYPE_ERROR_CODE, -105, 87, -119, -98, SocketData.CLAZZ_TYPE_STRING, -33, -46, -51, -50, -40, -104, -51, -40, -43, -53, -30, -106, -33, -46, -36, -46, -40, -41, -92, -105, -110, -109, -99, 93, -106, -109, -92, -111, -11, -24, -29, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -18, -82, -9, -84, -11, -19, -29, -83, -18, -19, -79, -83, -11, -17, -72};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static void A0N(C2149mA c2149mA, C2271oA c2271oA, Map<Integer, C2273oC> map) {
        C2273oC c2273oC;
        for (int i = 0; i < c2149mA.A01; i++) {
            C2273oC c2273oC2 = c2271oA.A0G.get(c2149mA.A05(i));
            if (c2273oC2 != null && ((c2273oC = map.get(Integer.valueOf(c2273oC2.A01()))) == null || (c2273oC.A01.isEmpty() && !c2273oC2.A01.isEmpty()))) {
                map.put(Integer.valueOf(c2273oC2.A01()), c2273oC2);
            }
        }
    }

    static {
        A0M();
        A09 = AbstractC2291oV.A04(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return AnonymousClass92.A05((Integer) obj, (Integer) obj2);
            }
        });
        A0A = AbstractC2291oV.A04(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return AnonymousClass92.A06((Integer) obj, (Integer) obj2);
            }
        });
    }

    @Deprecated
    public AnonymousClass92() {
        this(AnonymousClass93.A0J, new C2144m5());
    }

    @MetaExoPlayerCustomization(type = {"NEW_CONSTRUCTOR"}, value = "Backward Compatible Constructor")
    public AnonymousClass92(EA ea) {
        this(AnonymousClass93.A0J, ea);
    }

    @Deprecated
    public AnonymousClass92(C2271oA c2271oA, EA ea) {
        this(c2271oA, ea, null);
    }

    public AnonymousClass92(C2271oA c2271oA, EA ea, Context context) {
        this.A05 = new Object();
        this.A03 = context != null ? context.getApplicationContext() : null;
        this.A04 = ea;
        if (c2271oA instanceof AnonymousClass93) {
            this.A01 = (AnonymousClass93) c2271oA;
        } else {
            AnonymousClass93 defaultParameters = context == null ? AnonymousClass93.A0J : AnonymousClass93.A02(context);
            this.A01 = defaultParameters.A0P().A0u(c2271oA).A0p();
        }
        this.A00 = C2318oy.A07;
        this.A06 = context != null && AbstractC06244a.A18(context);
        if (!this.A06 && context != null && AbstractC06244a.A02 >= 32) {
            this.A02 = E3.A00(context);
        }
        if (this.A01.A08 && context == null) {
            AnonymousClass44.A07(A0J(188, 20, 75), A0J(1, 187, 17));
        }
    }

    public static int A00(int i, int i2) {
        if (i != 0 && i == i2) {
            return Integer.MAX_VALUE;
        }
        return Integer.bitCount(i & i2);
    }

    public static int A02(C2312or c2312or, String str, boolean z) {
        String strA0K;
        if (TextUtils.isEmpty(str)) {
            String strA0K2 = A0K(str);
            strA0K = A0K(c2312or.A0V);
            if (strA0K != null) {
            }
            if (z) {
                return 0;
            }
        }
        String str2 = c2312or.A0V;
        String[] strArr = A08;
        if (strArr[6].length() != strArr[3].length()) {
            A08[7] = "utaRfuDCbQDIc6IM3a2tNPgwwhECnGgZ";
            if (str.equals(str2)) {
                if (A08[4].length() != 6) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A08;
                strArr2[6] = "bdPum8qTTDlHeCQDHcvgSGFt";
                strArr2[3] = "zx28NE7Z14W3AzzAuoWnzSjL1M2eUdTs";
                return 4;
            }
            String strA0K3 = A0K(str);
            strA0K = A0K(c2312or.A0V);
            if (strA0K != null || strA0K3 == null) {
                return (z && strA0K == null) ? 1 : 0;
            }
            if (strA0K.startsWith(strA0K3) || strA0K3.startsWith(strA0K)) {
                return 3;
            }
            String strA0J = A0J(0, 1, 36);
            String str3 = AbstractC06244a.A1P(strA0K, strA0J)[0];
            String formatMainLanguage = AbstractC06244a.A1P(strA0K3, strA0J)[0];
            String[] strArr3 = A08;
            String str4 = strArr3[6];
            String formatLanguage = strArr3[3];
            if (str4.length() != formatLanguage.length()) {
                A08[4] = "rXSrCW";
                if (!str3.equals(formatMainLanguage)) {
                    return 0;
                }
                return 2;
            }
        }
        throw new RuntimeException();
    }

    public static int A03(C2278oH c2278oH, int i, int i2, boolean z) {
        if (i == Integer.MAX_VALUE || i2 == Integer.MAX_VALUE) {
            return Integer.MAX_VALUE;
        }
        int i3 = Integer.MAX_VALUE;
        for (int videoPixels = 0; videoPixels < maxVideoPixelsToRetain; videoPixels++) {
            C2312or c2312orA08 = c2278oH.A08(videoPixels);
            int maxVideoPixelsToRetain = c2312orA08.A0L;
            if (maxVideoPixelsToRetain > 0) {
                int maxVideoPixelsToRetain2 = c2312orA08.A0A;
                if (maxVideoPixelsToRetain2 > 0) {
                    int i4 = c2312orA08.A0L;
                    int maxVideoPixelsToRetain3 = c2312orA08.A0A;
                    Point pointA09 = A09(z, i, i2, i4, maxVideoPixelsToRetain3);
                    int i5 = c2312orA08.A0L;
                    int maxVideoPixelsToRetain4 = c2312orA08.A0A;
                    int i6 = i5 * maxVideoPixelsToRetain4;
                    int i7 = c2312orA08.A0L;
                    int maxVideoPixelsToRetain5 = pointA09.x;
                    if (i7 >= ((int) (maxVideoPixelsToRetain5 * 0.98f))) {
                        int i8 = c2312orA08.A0A;
                        int maxVideoPixelsToRetain6 = pointA09.y;
                        if (i8 >= ((int) (maxVideoPixelsToRetain6 * 0.98f)) && i6 < i3) {
                            i3 = i6;
                        }
                    }
                }
            }
        }
        return i3;
    }

    public static int A05(Integer num, Integer num2) {
        if (num.intValue() == -1) {
            return num2.intValue() == -1 ? 0 : -1;
        }
        if (num2.intValue() == -1) {
            return 1;
        }
        int iIntValue = num.intValue();
        int iIntValue2 = num2.intValue();
        if (A08[4].length() != 6) {
            throw new RuntimeException();
        }
        A08[1] = "gB7bm57sTKDjvfC8pNahT9wGVNX6TDKL";
        return iIntValue - iIntValue2;
    }

    public static int A06(Integer num, Integer num2) {
        return 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:27:0x0087 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:28:0x0088 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:29:0x0089 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:30:0x008a A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:31:0x008b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x000f  */
    /* JADX WARN: Code duplicated, block: B:9:0x0013 A[RETURN] */
    public static int A07(String str) {
        byte b;
        if (str == null) {
            return 0;
        }
        switch (str.hashCode()) {
            case -1851077871:
                if (str.equals(A0J(272, 18, 95))) {
                    b = 0;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 5;
                    case 1:
                        return 4;
                    case 2:
                        return 3;
                    case 3:
                        return 2;
                    case 4:
                        return 1;
                    default:
                        return 0;
                }
            case -1662735862:
                String[] strArr = A08;
                if (strArr[6].length() != strArr[3].length()) {
                    A08[1] = "cKYBOGEqW486lDdcpu93NQ9TicEen6vk";
                    if (str.equals(A0J(253, 10, 9))) {
                        b = 1;
                    } else {
                        b = -1;
                    }
                    switch (b) {
                        case 0:
                            return 5;
                        case 1:
                            return 4;
                        case 2:
                            return 3;
                        case 3:
                            return 2;
                        case 4:
                            return 1;
                        default:
                            return 0;
                    }
                }
                throw new RuntimeException();
            case -1662541442:
                if (str.equals(A0J(MediaPlayer.Event.Prepared, 10, 36))) {
                    b = 2;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 5;
                    case 1:
                        return 4;
                    case 2:
                        return 3;
                    case 3:
                        return 2;
                    case 4:
                        return 1;
                    default:
                        return 0;
                }
            case 1331836730:
                if (str.equals(A0J(263, 9, 30))) {
                    b = 4;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 5;
                    case 1:
                        return 4;
                    case 2:
                        return 3;
                    case 3:
                        return 2;
                    case 4:
                        return 1;
                    default:
                        return 0;
                }
            case 1599127257:
                if (str.equals(A0J(300, 19, 117))) {
                    b = 3;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                        return 5;
                    case 1:
                        return 4;
                    case 2:
                        return 3;
                    case 3:
                        return 2;
                    case 4:
                        return 1;
                    default:
                        return 0;
                }
            default:
                b = -1;
                switch (b) {
                    case 0:
                        return 5;
                    case 1:
                        return 4;
                    case 2:
                        return 3;
                    case 3:
                        return 2;
                    case 4:
                        return 1;
                    default:
                        return 0;
                }
        }
    }

    @MetaExoPlayerCustomization("Made public in D13395849")
    public static Point A09(boolean z, int tempViewportWidth, int i, int i2, int i3) {
        if (z) {
            if ((i2 > i3) != (tempViewportWidth > i)) {
                tempViewportWidth = i;
                i = tempViewportWidth;
            }
        }
        if (i2 * i >= i3 * tempViewportWidth) {
            return new Point(tempViewportWidth, AbstractC06244a.A05(tempViewportWidth * i3, i2));
        }
        return new Point(AbstractC06244a.A05(i * i2, i3), i);
    }

    private final Pair<E9, Integer> A0B(EC ec, int[][][] iArr, final AnonymousClass93 anonymousClass93, final String str) throws C9Y {
        return A0A(3, ec, iArr, new E4() {
            @Override
            public final List A57(int i, C2278oH c2278oH, int[] iArr2) {
                return C2126ln.A02(i, c2278oH, anonymousClass93, iArr2, str);
            }
        }, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return C2126ln.A01((List) obj, (List) obj2);
            }
        });
    }

    private final Pair<E9, Integer> A0C(EC ec, int[][][] iArr, int[] iArr2, final AnonymousClass93 anonymousClass93) throws C9Y {
        final boolean z = false;
        for (int i = 0; i < ec.A02(); i++) {
            if (2 == ec.A03(i) && ec.A07(i).A01 > 0) {
                z = true;
                break;
            }
        }
        return A0A(1, ec, iArr, new E4() {
            @Override
            public final List A57(int i2, C2278oH c2278oH, int[] iArr3) {
                return this.A01.A0e(anonymousClass93, z, i2, c2278oH, iArr3);
            }
        }, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return C2138lz.A02((List) obj, (List) obj2);
            }
        });
    }

    private final Pair<E9, Integer> A0D(EC ec, int[][][] iArr, final int[] iArr2, final AnonymousClass93 anonymousClass93, final String str) throws C9Y {
        return A0A(2, ec, iArr, new E4() {
            @Override
            public final List A57(int i, C2278oH c2278oH, int[] iArr3) {
                return C2123lk.A06(i, c2278oH, anonymousClass93, iArr3, str, iArr2[i]);
            }
        }, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return C2123lk.A05((List) obj, (List) obj2);
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0077  */
    private final E9 A0E(int i, C2149mA c2149mA, int[][] iArr, AnonymousClass93 anonymousClass93) throws C9Y {
        C2278oH c2278oH = null;
        int i2 = 0;
        E0 e0 = null;
        for (int i3 = 0; i3 < c2149mA.A01; i3++) {
            C2278oH trackGroup = c2149mA.A05(i3);
            int[] iArr2 = iArr[i3];
            int groupIndex = 0;
            while (true) {
                int i4 = trackGroup.A01;
                int selectedTrackIndex = A08[7].charAt(4);
                if (selectedTrackIndex != 114) {
                    A08[7] = "eXe48tlcaaFOVphj3tBJsJZ33XViaUIe";
                    if (groupIndex < i4) {
                        int i5 = iArr2[groupIndex];
                        int selectedTrackIndex2 = A08[7].charAt(4);
                        if (selectedTrackIndex2 == 114) {
                            throw new RuntimeException();
                        }
                        A08[7] = "FFBXZuvHsKfXoft1igGzNsuMgLJqlaBK";
                        if (A0S(i5, anonymousClass93.A0B)) {
                            E0 trackScore = new E0(trackGroup.A08(groupIndex), iArr2[groupIndex]);
                            if (e0 != null) {
                                int iA00 = trackScore.compareTo(e0);
                                String[] strArr = A08;
                                String str = strArr[0];
                                String str2 = strArr[2];
                                int selectedTrackIndex3 = str.charAt(9);
                                if (selectedTrackIndex3 != str2.charAt(9)) {
                                    A08[1] = "us6BKPnONaHSk6j2pgBHNNPTLKUclzqr";
                                    if (iA00 > 0) {
                                        c2278oH = trackGroup;
                                        i2 = groupIndex;
                                        e0 = trackScore;
                                    }
                                }
                            } else {
                                c2278oH = trackGroup;
                                i2 = groupIndex;
                                e0 = trackScore;
                            }
                        }
                        groupIndex++;
                    }
                }
                throw new RuntimeException();
            }
        }
        if (c2278oH == null) {
            return null;
        }
        return new E9(c2278oH, i2);
    }

    public static String A0K(String str) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, A0J(250, 3, 75))) {
            return null;
        }
        return str;
    }

    public void A0L() {
        boolean z;
        synchronized (this.A05) {
            z = this.A01.A08 && !this.A06 && AbstractC06244a.A02 >= 32 && this.A02 != null && this.A02.A06();
        }
        if (z) {
            A01();
        }
    }

    public static void A0P(EC ec, C2271oA c2271oA, E9[] e9Arr) {
        E9 e9;
        int iA02 = ec.A02();
        HashMap map = new HashMap();
        for (int i = 0; i < iA02; i++) {
            A0N(ec.A07(i), c2271oA, map);
        }
        A0N(ec.A06(), c2271oA, map);
        for (int i2 = 0; i2 < iA02; i2++) {
            int rendererCount = ec.A03(i2);
            C2273oC c2273oC = (C2273oC) map.get(Integer.valueOf(rendererCount));
            if (c2273oC != null) {
                boolean zIsEmpty = c2273oC.A01.isEmpty();
                if (A08[7].charAt(4) == 'r') {
                    throw new RuntimeException();
                }
                A08[4] = "YbaSeo";
                if (!zIsEmpty && ec.A07(i2).A04(c2273oC.A00) != -1) {
                    e9 = new E9(c2273oC.A00, AD.A0C(c2273oC.A01));
                } else {
                    e9 = null;
                }
                e9Arr[i2] = e9;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0063  */
    public static void A0Q(EC ec, AnonymousClass93 anonymousClass93, E9[] e9Arr) {
        E9 e9;
        int iA02 = ec.A02();
        for (int i = 0; i < iA02; i++) {
            C2149mA c2149mAA07 = ec.A07(i);
            if (anonymousClass93.A0S(i, c2149mAA07)) {
                C2127lo c2127loA0Q = anonymousClass93.A0Q(i, c2149mAA07);
                String[] strArr = A08;
                String str = strArr[6];
                String str2 = strArr[3];
                int rendererIndex = str.length();
                int rendererCount = str2.length();
                if (rendererIndex == rendererCount) {
                    throw new RuntimeException();
                }
                A08[5] = "K8f1XF422sl3cXXm";
                if (c2127loA0Q != null) {
                    int length = c2127loA0Q.A03.length;
                    String[] strArr2 = A08;
                    String str3 = strArr2[6];
                    String str4 = strArr2[3];
                    int rendererIndex2 = str3.length();
                    int rendererCount2 = str4.length();
                    if (rendererIndex2 == rendererCount2) {
                        throw new RuntimeException();
                    }
                    A08[4] = "KnBpd5";
                    if (length != 0) {
                        int rendererCount3 = c2127loA0Q.A00;
                        C2278oH c2278oHA05 = c2149mAA07.A05(rendererCount3);
                        int[] iArr = c2127loA0Q.A03;
                        int rendererIndex3 = c2127loA0Q.A02;
                        e9 = new E9(c2278oHA05, iArr, rendererIndex3);
                    } else {
                        e9 = null;
                    }
                } else {
                    e9 = null;
                }
                e9Arr[i] = e9;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0046, code lost:
    
        if (r4 != 1) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0049, code lost:
    
        if (r4 != 2) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0082, code lost:
    
        if (r4 != 1) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0088, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void A0R(EC ec, int[][][] iArr, C7G[] c7gArr, InterfaceC2122lj[] interfaceC2122ljArr) {
        int i = -1;
        int i2 = -1;
        int i3 = 1;
        int i4 = 0;
        while (true) {
            int i5 = ec.A02();
            int tunnelingVideoRendererIndex = A08[4].length();
            if (tunnelingVideoRendererIndex == 6) {
                A08[1] = "NZY9D9dgjYLNZ0XYpF4W2GrX5uVEwVhV";
                if (i4 >= i5) {
                    break;
                }
                int rendererType = ec.A03(i4);
                InterfaceC2122lj interfaceC2122lj = interfaceC2122ljArr[i4];
                String[] strArr = A08;
                String str = strArr[0];
                String str2 = strArr[2];
                int tunnelingVideoRendererIndex2 = str.charAt(9);
                int tunnelingAudioRendererIndex = str2.charAt(9);
                if (tunnelingVideoRendererIndex2 != tunnelingAudioRendererIndex) {
                    A08[4] = "nPMicF";
                } else {
                    String[] strArr2 = A08;
                    strArr2[6] = "5F5ko3NIDU1YMXmZZUDVXdSE";
                    strArr2[3] = "1c60xx4jFCOb1nSxKeVAoj10cRAS07b7";
                }
                if (interfaceC2122lj != null && A0W(iArr[i4], ec.A07(i4), interfaceC2122lj)) {
                    if (rendererType == 1) {
                        if (i != -1) {
                            i3 = 0;
                            break;
                        }
                        i = i4;
                    } else {
                        if (i2 != -1) {
                            i3 = 0;
                            break;
                        }
                        i2 = i4;
                    }
                }
                i4++;
            } else {
                throw new RuntimeException();
            }
        }
        int tunnelingAudioRendererIndex2 = (i == -1 || i2 == -1) ? 0 : 1;
        if ((i3 & tunnelingAudioRendererIndex2) != 0) {
            C7G c7g = new C7G(true);
            c7gArr[i] = c7g;
            c7gArr[i2] = c7g;
        }
    }

    @MetaExoPlayerCustomization("Made public for customization on DashManifestHelper")
    public static boolean A0S(int i, boolean z) {
        int iA03 = AnonymousClass76.A03(i);
        return iA03 == 4 || (z && iA03 == 3);
    }

    public boolean A0T(C2312or c2312or) {
        boolean z;
        synchronized (this.A05) {
            z = !this.A01.A08 || this.A06 || c2312or.A06 <= 2 || (A0U(c2312or) && (AbstractC06244a.A02 < 32 || this.A02 == null || !this.A02.A06())) || (AbstractC06244a.A02 >= 32 && this.A02 != null && this.A02.A06() && this.A02.A04() && this.A02.A05() && this.A02.A07(this.A00, c2312or));
        }
        return z;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:7:0x0010  */
    public static boolean A0U(C2312or c2312or) {
        byte b;
        if (c2312or.A0W == null) {
            return false;
        }
        String str = c2312or.A0W;
        switch (str.hashCode()) {
            case -2123537834:
                if (!str.equals(A0J(236, 14, 79))) {
                    b = -1;
                } else {
                    b = 2;
                }
                break;
            case 187078296:
                if (!str.equals(A0J(IDrmSession.ERROR_SESSION_DRM_PSSHS_EMPTY, 9, 92))) {
                    b = -1;
                } else {
                    b = 0;
                }
                break;
            case 187078297:
                if (!str.equals(A0J(IDrmSession.ERROR_SESSION_DRM_INFO_EMPTY, 9, 66))) {
                    b = -1;
                } else {
                    b = 3;
                }
                break;
            case 1504578661:
                if (!str.equals(A0J(TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_BLINK, 10, 100))) {
                    b = -1;
                } else {
                    b = 1;
                }
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
            case 1:
            case 2:
            case 3:
                return true;
            default:
                return false;
        }
    }

    public static boolean A0W(int[][] iArr, C2149mA c2149mA, InterfaceC2122lj interfaceC2122lj) {
        if (interfaceC2122lj == null) {
            return false;
        }
        int iA04 = c2149mA.A04(interfaceC2122lj.A9D());
        for (int i = 0; i < interfaceC2122lj.length(); i++) {
            int trackGroupIndex = AnonymousClass76.A05(iArr[iA04][interfaceC2122lj.A89(i)]);
            if (trackGroupIndex != 32) {
                return false;
            }
        }
        return true;
    }

    private final E9[] A0X(EC ec, int[][][] iArr, int[] iArr2, AnonymousClass93 anonymousClass93) throws C9Y {
        String str;
        int iA02 = ec.A02();
        E9[] e9Arr = new E9[iA02];
        Pair<E9, Integer> pairA0C = A0C(ec, iArr, iArr2, anonymousClass93);
        if (pairA0C != null) {
            Object obj = pairA0C.second;
            String[] strArr = A08;
            String str2 = strArr[0];
            String str3 = strArr[2];
            int iCharAt = str2.charAt(9);
            int rendererCount = str3.charAt(9);
            if (iCharAt == rendererCount) {
                throw new RuntimeException();
            }
            A08[7] = "yBKbxgl1qoYBYNtasAVV61g1RQWhRN9O";
            e9Arr[((Integer) obj).intValue()] = (E9) pairA0C.first;
        }
        if (pairA0C == null) {
            str = null;
        } else {
            C2278oH c2278oH = ((E9) pairA0C.first).A01;
            int rendererCount2 = ((E9) pairA0C.first).A02[0];
            str = c2278oH.A08(rendererCount2).A0V;
        }
        Pair<E9, Integer> pairA0D = A0D(ec, iArr, iArr2, anonymousClass93, str);
        if (pairA0D != null) {
            e9Arr[((Integer) pairA0D.second).intValue()] = (E9) pairA0D.first;
        }
        Pair<E9, Integer> pairA0B = A0B(ec, iArr, anonymousClass93, str);
        if (pairA0B != null) {
            e9Arr[((Integer) pairA0B.second).intValue()] = (E9) pairA0B.first;
        }
        for (int i = 0; i < iA02; i++) {
            int i2 = ec.A03(i);
            if (i2 != 2 && i2 != 1) {
                String[] strArr2 = A08;
                String str4 = strArr2[0];
                String str5 = strArr2[2];
                int iCharAt2 = str4.charAt(9);
                int rendererCount3 = str5.charAt(9);
                if (iCharAt2 == rendererCount3) {
                    throw new RuntimeException();
                }
                String[] strArr3 = A08;
                strArr3[6] = "1xsmyE1OdjkvrsbXr4cEFZBV";
                strArr3[3] = "D4xPicyrc2caIP01Cw6NBhV2pRXBVsmG";
                if (i2 != 3) {
                    e9Arr[i] = A0E(i2, ec.A07(i), iArr[i], anonymousClass93);
                }
            }
        }
        return e9Arr;
    }

    @Override
    public final boolean A0Y() {
        return true;
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x00a3 */
    @Override
    @MetaExoPlayerCustomization(type = {"MERGED"}, value = "final removed in D35162315")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Pair<C7G[], InterfaceC2122lj[]> A0d(EC ec, int[][][] iArr, int[] iArr2, C2159mL c2159mL, Timeline timeline) throws Throwable {
        AnonymousClass93 anonymousClass93;
        synchronized (this.A05) {
            try {
                anonymousClass93 = this.A01;
                if (anonymousClass93.A08 && AbstractC06244a.A02 >= 32 && this.A02 != null) {
                    this.A02.A03(this, (Looper) C3M.A02(Looper.myLooper()));
                }
            } catch (Throwable th) {
                th = th;
                while (true) {
                    throw th;
                }
            }
        }
        int iA02 = ec.A02();
        E9[] e9ArrA0X = A0X(ec, iArr, iArr2, anonymousClass93);
        A0P(ec, anonymousClass93, e9ArrA0X);
        A0Q(ec, anonymousClass93, e9ArrA0X);
        for (int rendererCount = 0; rendererCount < iA02; rendererCount++) {
            int iA03 = ec.A03(rendererCount);
            if (anonymousClass93.A0R(rendererCount) || anonymousClass93.A0H.contains(Integer.valueOf(iA03))) {
                e9ArrA0X[rendererCount] = null;
            }
        }
        InterfaceC2122lj[] interfaceC2122ljArrA5T = this.A04.A5T(e9ArrA0X, A00(), c2159mL, timeline);
        C7G[] c7gArr = new C7G[iA02];
        for (int i = 0; i < iA02; i++) {
            c7gArr[i] = !(anonymousClass93.A0R(i) || anonymousClass93.A0H.contains(Integer.valueOf(ec.A03(i)))) && (ec.A03(i) == -2 || interfaceC2122ljArrA5T[i] != null) ? C7G.A01 : null;
        }
        if (anonymousClass93.A0D) {
            A0R(ec, iArr, c7gArr, interfaceC2122ljArrA5T);
        }
        return Pair.create(c7gArr, interfaceC2122ljArrA5T);
    }

    public final AbstractC0779Am A0e(AnonymousClass93 anonymousClass93, boolean z, int i, C2278oH c2278oH, int[] iArr) {
        return C2138lz.A03(i, c2278oH, anonymousClass93, iArr, z, new InterfaceC1978jB() {
            @Override
            public final boolean A44(Object obj) {
                return this.A00.A0T((C2312or) obj);
            }
        });
    }
}
