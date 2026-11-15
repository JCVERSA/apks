package com.facebook.ads.redexgen.core;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.facebook.ads.Ad;
import com.facebook.ads.AdSettings;
import com.facebook.ads.ExtraHints;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdBase;
import com.facebook.ads.NativeAdLayout;
import com.facebook.ads.NativeAdListener;
import com.facebook.ads.NativeBannerAd;
import com.facebook.ads.internal.api.AdNativeComponentView;
import com.facebook.ads.internal.api.NativeAdBaseApi;
import com.facebook.ads.internal.api.NativeAdImageApi;
import com.facebook.ads.internal.context.Repairable;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.facebook.ads.internal.protocol.AdPlacementType;
import com.facebook.ads.internal.settings.AdInternalSettings;
import com.just.agentweb.AgentActionFragment;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import com.transsion.vishatransfer.socket.TransferProtocol;
import java.lang.ref.WeakReference;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import java.util.WeakHashMap;
import okio.Utf8;
import org.mozilla.classfile.ByteCode;

public final class C1178Qc implements Ad, NativeAdBaseApi, Repairable, InterfaceC1301Ux {
    public static SF A0k;
    public static byte[] A0l;
    public static String[] A0m = {"0QrYY16WpsBKaBkyPEA33iBIoR05UhVT", "YnnsFrkLVth43aFbA8XanJ7Af1ELV", "Oxqa2FUUnPLQ7GUfsty3Y0efzjvyqNtk", "SIKP4BEcnF1kam64buW5uj4ZKlEjFxDR", "vEVPI6RQ4lovzpZyrpWOxFDddvUHwWNp", "NGWOmnzpb", "djSS0JJWnZq1rlBsvyeXY9GnDKzed", "NhvbMWoFDj5W6o0bWnGe4dztWB8buZER"};
    public static final String A0n;
    public static final WeakHashMap<View, WeakReference<C1178Qc>> A0o;
    public long A00;
    public Drawable A01;
    public View.OnTouchListener A02;
    public View A03;
    public View A04;
    public View A05;
    public View A06;
    public NativeAdLayout A07;
    public EnumC1077Mc A08;
    public C1920iC A09;
    public C06986w A0A;
    public C1875hK A0B;
    public SL A0C;
    public TF A0D;
    public EnumC1289Ul A0E;
    public ViewOnClickListenerC1208Rg A0F;
    public QQ A0G;
    public C1295Ur A0H;
    public EnumC1296Us A0I;
    public V6 A0J;
    public YX A0K;
    public C1417Zm A0L;
    public C1546bt A0M;
    public C1611cw A0N;
    public AbstractC1707eW A0O;
    public AbstractC1707eW A0P;
    public C1708eX A0Q;
    public C1708eX A0R;
    public String A0S;
    public String A0T;
    public WeakReference<C1795fx> A0U;
    public WeakReference<AbstractC1707eW> A0V;
    public boolean A0W;
    public boolean A0X;
    public boolean A0Y;
    public boolean A0Z;
    public C1931iN A0a;
    public final SF A0b;
    public final C1635dL A0c;
    public final InterfaceC1292Uo A0d;
    public final C1303Uz A0e;
    public final XH A0f;
    public final String A0g;
    public final String A0h;
    public final List<View> A0i;
    public volatile boolean A0j;

    public static String A0W(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0l, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 112);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0e() {
        A0l = new byte[]{-32, 26, 38, 31, 30, -17, -17, 29, 32, -19, -12, 34, -15, -25, 26, -27, 25, 25, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, 21, -22, -74, -70, -30, -78, -30, -78, -25, -29, 38, 73, 5, 83, 84, 89, 5, 81, 84, 70, 73, 74, 73, -25, 10, -6, ByteCode.T_LONG, 19, 22, 18, 7, 26, ByteCode.T_LONG, -58, -51, -53, 25, -51, -58, 15, 25, -58, 20, 21, 26, -58, 7, -58, 20, 7, 26, 15, 28, ByteCode.T_LONG, -58, 7, 10, -33, -37, -38, 14, -3, 2, -2, 7, -4, -2, -25, -2, 13, 16, 8, ByteCode.T_LONG, 4, -27, 0, 8, ByteCode.T_LONG, 4, 3, -65, 19, 14, -65, ByteCode.T_LONG, 14, 0, 3, -65, -20, 4, 3, 8, 0, -51, -16, ByteCode.T_LONG, 19, 22, 15, 14, -54, 30, 25, -54, 25, 12, 30, ByteCode.T_LONG, 19, 24, -54, 30, 15, 23, 26, 22, ByteCode.T_LONG, 30, 15, -54, -13, -18, -54, 16, 28, 25, 23, -54, 12, 19, 14, -54, 26, ByteCode.T_LONG, 35, 22, 25, ByteCode.T_LONG, 14, -54, -47, -49, 29, -47, -23, 14, 20, 5, 18, 14, 1, 12, -64, 5, 18, 18, 15, 18, -50, -86, 30, 67, 75, 54, 65, 62, 57, -11, 72, 58, 73, -11, 68, 59, -11, 56, 65, 62, 56, 64, 54, 55, 65, 58, -11, 75, 62, 58, 76, 72, 0, 24, 23, 28, 20, 9, 28, 24, 42, -45, 25, 34, 37, -45, 28, 22, 34, 33, -45, 28, 38, -45, 28, 38, -45, 32, 28, 38, 38, 28, 33, 26, -31, 29, 53, 52, 57, 49, 38, 57, 53, 71, -16, 57, 67, -16, 61, 57, 67, 67, 57, 62, 55, -2, 51, 91, 89, 90, 6, 86, 88, 85, 92, 79, 74, 75, 6, 71, 6, 60, 79, 75, 93, 35, 54, 73, 62, 75, 58, -11, 22, 57, -11, 76, 54, 72, -11, 54, 65, 71, 58, 54, 57, 78, -11, 71, 58, 60, 62, 72, 73, 58, 71, 58, 57, -11, 76, 62, 73, 61, -11, 54, -11, 43, 62, 58, 76, 3, -11, 22, 74, 73, 68, -11, 74, 67, 71, 58, 60, 62, 72, 73, 58, 71, 62, 67, 60, -11, 54, 67, 57, -11, 69, 71, 68, 56, 58, 58, 57, 62, 67, 60, 3, -55, -36, -17, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -15, -32, -101, -36, -33, -101, -33, -32, -18, -17, -19, -22, -12, -32, -33, -39, -20, -1, -12, 1, -16, -85, -20, -17, -85, -9, -6, -20, -17, -85, -3, -16, -4, 0, -16, -2, -1, -16, -17, -22, -3, -7, ByteCode.T_LONG, -76, -11, 0, 6, -7, -11, -8, 13, -76, 6, -7, -5, -3, 7, 8, -7, 6, -7, -8, -76, ByteCode.T_LONG, -3, 8, -4, -76, -11, -76, -30, -11, 8, -3, 10, -7, -43, -8, -62, -76, -43, 9, 8, 3, -76, 9, 2, 6, -7, -5, -3, 7, 8, -7, 6, -3, 2, -5, -76, -11, 2, -8, -76, 4, 6, 3, -9, -7, -7, -8, -3, 2, -5, -62, -1, 18, 14, 32, -55, 23, 24, 29, -55, 27, 14, 16, 18, 28, 29, 14, 27, 14, 13, -55, 32, 18, 29, 17, -55, 29, 17, 18, 28, -55, -9, 10, 29, 18, 31, 14, -22, 13, 46, 49, -19, 58, 50, 49, 54, 46, -19, 65, 70, 61, 50, -19, 54, 64, -19, 59, 60, 65, -19, 64, 66, 61, 61, 60, Utf8.REPLACEMENT_BYTE, 65, 50, 49, -5, 54, 69, 62, 51, 52, 66, 67, 65, 62, 72, 81, 84, 70, 73, 38, 73, 69, 72, 58, 61, 26, 61, 1, 2, -7, 60, 58, 69, 69, 62, 61, -7, 70, 72, 75, 62, -7, 77, 65, 58, 71, -7, 72, 71, 60, 62, -27, -40, -21, -32, -19, -36};
        String[] strArr = A0m;
        if (strArr[6].length() != strArr[1].length()) {
            throw new RuntimeException();
        }
        A0m[3] = "WbNUBB1XQVUYjPuN5kyqwH0pcEyoS9gz";
    }

    /* JADX WARN: Code duplicated, block: B:111:0x0332 A[LOOP:0: B:109:0x032c->B:111:0x0332, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:120:0x035f  */
    /* JADX WARN: Code duplicated, block: B:123:0x036f  */
    /* JADX WARN: Code duplicated, block: B:125:0x037f  */
    /* JADX WARN: Code duplicated, block: B:129:0x03c9  */
    /* JADX WARN: Code duplicated, block: B:131:0x03e1  */
    /* JADX WARN: Code duplicated, block: B:134:0x0417  */
    /* JADX WARN: Code duplicated, block: B:141:0x046a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:142:0x046c  */
    /* JADX WARN: Code duplicated, block: B:145:0x0483  */
    /* JADX WARN: Code duplicated, block: B:148:0x0492  */
    /* JADX WARN: Code duplicated, block: B:150:0x0496  */
    /* JADX WARN: Code duplicated, block: B:153:0x04ae  */
    /* JADX WARN: Code duplicated, block: B:164:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:84:0x0224  */
    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 24 out of bounds for length 17
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:656)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    private void A0g(View view, View view2, List<View> list, boolean z) {
        Iterator it;
        TF tf;
        C1407Zc c1407Zc;
        String[] strArr;
        String strA1C;
        if (!A0r()) {
            this.A0c.A0F().AGq();
        }
        if (view == null) {
            String strA0W = A0W(264, 19, 118);
            if (!A0r()) {
                this.A0c.A0F().AGp(strA0W);
            }
            throw new IllegalArgumentException(strA0W);
        }
        if (list == null || list.size() == 0) {
            String strA0W2 = A0W(180, 30, 101);
            if (!A0r()) {
                this.A0c.A0F().AGp(strA0W2);
            }
            throw new IllegalArgumentException(strA0W2);
        }
        C1931iN c1931iNA0C = A0C();
        if (c1931iNA0C == null) {
            String strA0W3 = A0W(29, 13, 117);
            if (!A0r()) {
                this.A0c.A0F().AGp(strA0W3);
            }
            Log.e(A0n, strA0W3);
            V1 v1 = new V1(AdErrorType.NATIVE_AD_IS_NOT_LOADED, strA0W3);
            A12().A0F().A3F(XG.A01(this.A00), v1.A03().getErrorCode(), v1.A04());
            if (!U7.A2f(this.A0c) || this.A0G == null) {
                return;
            }
            this.A0G.ADB(v1);
            return;
        }
        String str = this.A0T;
        if ((view instanceof FrameLayout) && str != null) {
            A0h((FrameLayout) view, str);
        }
        if (this.A07 != null) {
            ((C1778fg) this.A07.getNativeAdLayoutApi()).A02();
        }
        C1795fx c1795fx = this.A0U.get();
        if (c1795fx != null && c1931iNA0C.A08() == 1) {
            c1795fx.A03(XX.AN_INFO_ICON);
        }
        if (view2 != null) {
            boolean z2 = (view2 instanceof AdNativeComponentView) && ((AdNativeComponentView) view2).getAdContentsView() != null;
            boolean z3 = z && (view2 instanceof ImageView);
            if (!z2 && !z3) {
                if (this.A0G != null) {
                    V1 v2 = new V1(AdErrorType.UNSUPPORTED_AD_ASSET_NATIVEAD, A0W(519, 31, 93));
                    A12().A0F().A3F(XG.A01(this.A00), v2.A03().getErrorCode(), v2.A04());
                    this.A0G.ADB(v2);
                    return;
                }
                return;
            }
            View view3 = this.A04;
            if (A0m[3].charAt(5) != 'B') {
                String[] strArr2 = A0m;
                strArr2[6] = "BCYbWK19bS9ET6nCyqUucyCTxntwC";
                strArr2[1] = "hUEQWKvNS0BeeCCeuSbrKV1BB6cqb";
                if (view3 != null) {
                    Log.w(A0n, A0W(283, 80, 101));
                    unregisterView();
                }
            } else {
                A0m[3] = "VFOGhBJepBYKNQ0g15YaI4y2lFqguygQ";
                if (view3 != null) {
                    Log.w(A0n, A0W(283, 80, 101));
                    unregisterView();
                }
            }
            boolean zContainsKey = A0o.containsKey(view);
            String[] strArr3 = A0m;
            if (strArr3[6].length() != strArr3[1].length()) {
                throw new RuntimeException();
            }
            String[] strArr4 = A0m;
            strArr4[0] = "r1dCEV0W05obqeylsxysUOCLLtyqbDkO";
            strArr4[4] = "jsU6g8E1kSPqSuKqGJQzSRDrUMjHNr5E";
            if (zContainsKey && A0o.get(view).get() != null) {
                Log.w(A0n, A0W(406, 75, 36));
                A0o.get(view).get().unregisterView();
            }
            this.A0F = new ViewOnClickListenerC1208Rg(this, this.A0c, null);
            this.A04 = view;
            this.A06 = view2;
            if (view instanceof ViewGroup) {
                this.A0K = new YX(this.A0c, new C1251Sy(this));
                ((ViewGroup) view).addView(this.A0K);
            }
            if (c1931iNA0C.A0S()) {
                this.A0O = new C1244Sr(this);
                this.A0Q = new C1708eX(view, 1, new WeakReference(this.A0O), this.A0c);
                this.A0Q.A0Y(false);
                this.A0Q.A0X(c1931iNA0C.A09());
                this.A0Q.A0U();
                this.A0c.A0F().ABz();
            }
            ArrayList arrayList = new ArrayList(list);
            if (this.A05 == null) {
                it = arrayList.iterator();
                while (it.hasNext()) {
                    A1L((View) it.next());
                }
                AbstractC1910hy abstractC1910hyA10 = A10();
                if (z) {
                    A1L(view);
                    arrayList.add(view);
                }
                int iA00 = A00();
                this.A0P = new S9(this, view2, z3, c1931iNA0C);
                if (view2 instanceof AdNativeComponentView) {
                    this.A03 = ((AdNativeComponentView) view2).getAdContentsView();
                } else {
                    this.A03 = view2;
                }
                if (U7.A1u(this.A0c)) {
                    strA1C = A1C();
                    InterfaceC1282Ue interfaceC1282UeA0B = A12().A0B();
                    View view4 = this.A03;
                    if (strA1C == null) {
                        strA1C = A0W(0, 0, 121);
                    }
                    interfaceC1282UeA0B.AK3(view4, strA1C, this.A03 instanceof C1648dY, true);
                }
                this.A0R = new C1708eX(this.A03, iA00, A03(), true, new WeakReference(this.A0P), this.A0c);
                this.A0R.A0Y(!A0r());
                this.A0R.A0W(A01());
                this.A0R.A0X(A02());
                if (this.A03 instanceof C1407Zc) {
                    c1407Zc = (C1407Zc) this.A03;
                    strArr = A0m;
                    if (strArr[0].charAt(21) != strArr[4].charAt(21)) {
                        A0m[3] = "9jWMkBrIWAaQq3BshIoiK9kOFApm7Mnb";
                        c1407Zc.A06(this.A0R);
                    }
                }
                this.A09 = new C1920iC(this.A0c, new C1186Qk(this, null), this.A0R, this.A0a);
                this.A09.A0H(arrayList);
                A0o.put(view, new WeakReference<>(this));
                if (U7.A1B(this.A0c)) {
                    this.A0L = new C1417Zm();
                    this.A0L.A0C(this.A0g);
                    this.A0L.A0B(this.A0c.getPackageName());
                    this.A0L.A0A(this.A0R);
                    if (this.A0a != null) {
                        C1919iB c1919iBA0E = this.A0a.A0E();
                        this.A0L.A08(c1919iBA0E.A03(), c1919iBA0E.A04());
                    }
                    tf = this.A0D;
                    if (A0m[3].charAt(5) != 'B') {
                        String[] strArr5 = A0m;
                        strArr5[6] = "iJInlaPqSCsodlo1snRpIwz9DPt1A";
                        strArr5[1] = "DYzZZFtfMBLderHMiZZFXfgJZWHC0";
                        if (tf != null) {
                            this.A0L.A09(this.A0D.A0C());
                        } else if (this.A0A != null) {
                            this.A0L.A09(this.A0A.A0J().A0C());
                        }
                    } else if (tf != null) {
                        this.A0L.A09(this.A0D.A0C());
                    } else if (this.A0A != null) {
                        this.A0L.A09(this.A0A.A0J().A0C());
                    }
                    this.A04.getOverlay().add(this.A0L);
                    return;
                }
                return;
            }
            View view5 = this.A05;
            String[] strArr6 = A0m;
            if (strArr6[2].charAt(3) != strArr6[7].charAt(3)) {
                String[] strArr7 = A0m;
                strArr7[0] = "7BxfhPTBtrovnc2SNqJYjum2f5qDPcpL";
                strArr7[4] = "Q5pxYg7VFdMmLRDnYTITcnTwa1eIsVWj";
                arrayList.add(view5);
                it = arrayList.iterator();
                while (it.hasNext()) {
                    A1L((View) it.next());
                }
                AbstractC1910hy abstractC1910hyA11 = A10();
                if (z && abstractC1910hyA11 != null && abstractC1910hyA11.A1X()) {
                    A1L(view);
                    arrayList.add(view);
                }
                int iA01 = A00();
                this.A0P = new S9(this, view2, z3, c1931iNA0C);
                if (view2 instanceof AdNativeComponentView) {
                    this.A03 = ((AdNativeComponentView) view2).getAdContentsView();
                } else {
                    this.A03 = view2;
                }
                if (U7.A1u(this.A0c)) {
                    strA1C = A1C();
                    InterfaceC1282Ue interfaceC1282UeA0B2 = A12().A0B();
                    View view6 = this.A03;
                    if (strA1C == null) {
                        strA1C = A0W(0, 0, 121);
                    }
                    interfaceC1282UeA0B2.AK3(view6, strA1C, this.A03 instanceof C1648dY, true);
                }
                this.A0R = new C1708eX(this.A03, iA01, A03(), true, new WeakReference(this.A0P), this.A0c);
                this.A0R.A0Y(!A0r());
                this.A0R.A0W(A01());
                this.A0R.A0X(A02());
                if (this.A03 instanceof C1407Zc) {
                    c1407Zc = (C1407Zc) this.A03;
                    strArr = A0m;
                    if (strArr[0].charAt(21) != strArr[4].charAt(21)) {
                        A0m[3] = "9jWMkBrIWAaQq3BshIoiK9kOFApm7Mnb";
                        c1407Zc.A06(this.A0R);
                    }
                }
                this.A09 = new C1920iC(this.A0c, new C1186Qk(this, null), this.A0R, this.A0a);
                this.A09.A0H(arrayList);
                A0o.put(view, new WeakReference<>(this));
                if (U7.A1B(this.A0c)) {
                    this.A0L = new C1417Zm();
                    this.A0L.A0C(this.A0g);
                    this.A0L.A0B(this.A0c.getPackageName());
                    this.A0L.A0A(this.A0R);
                    if (this.A0a != null && this.A0a.A0E().A03() > 0) {
                        C1919iB c1919iBA0E2 = this.A0a.A0E();
                        this.A0L.A08(c1919iBA0E2.A03(), c1919iBA0E2.A04());
                    }
                    tf = this.A0D;
                    if (A0m[3].charAt(5) != 'B') {
                        String[] strArr8 = A0m;
                        strArr8[6] = "iJInlaPqSCsodlo1snRpIwz9DPt1A";
                        strArr8[1] = "DYzZZFtfMBLderHMiZZFXfgJZWHC0";
                        if (tf != null) {
                            this.A0L.A09(this.A0D.A0C());
                        } else if (this.A0A != null) {
                            this.A0L.A09(this.A0A.A0J().A0C());
                        }
                    } else if (tf != null) {
                        this.A0L.A09(this.A0D.A0C());
                    } else if (this.A0A != null && this.A0A.A0J() != null) {
                        this.A0L.A09(this.A0A.A0J().A0C());
                    }
                    this.A04.getOverlay().add(this.A0L);
                    return;
                }
                return;
            }
        } else {
            if (this.A0J != V6.A06) {
                AdErrorType adErrorType = AdErrorType.NO_MEDIAVIEW_IN_NATIVEBANNERAD;
                String strA0W4 = A0W(210, 33, 67);
                V1 v3 = new V1(adErrorType, strA0W4);
                A12().A0F().A3F(XG.A01(this.A00), v3.A03().getErrorCode(), v3.A04());
                if (this.A0G != null) {
                    this.A0G.ADB(v3);
                }
                if (AdInternalSettings.isDebugBuild()) {
                    String str2 = A0n;
                    if (A0m[3].charAt(5) == 'B') {
                        A0m[3] = "KISMvB3VNIc1t4pH9OUWIwxPU7abTBQu";
                        Log.e(str2, strA0W4);
                        return;
                    } else {
                        String[] strArr9 = A0m;
                        strArr9[2] = "I0o2CociGt9PfWtihtc1uzdPzn26Oc3b";
                        strArr9[7] = "DL9r7FwT46CQ5uSYOng5HfHjynm8xWWf";
                        Log.e(str2, strA0W4);
                        return;
                    }
                }
                return;
            }
            AdErrorType adErrorType2 = AdErrorType.NO_MEDIAVIEW_IN_NATIVEAD;
            String strA0W5 = A0W(243, 21, 96);
            V1 v4 = new V1(adErrorType2, strA0W5);
            A12().A0F().A3F(XG.A01(this.A00), v4.A03().getErrorCode(), v4.A04());
            if (this.A0G != null) {
                this.A0G.ADB(v4);
            }
            if (!AdInternalSettings.isDebugBuild()) {
                return;
            }
            String str3 = A0n;
            if (A0m[5].length() != 3) {
                String[] strArr10 = A0m;
                strArr10[0] = "ymh7ZtbYw7oyMwS2HukMuI2t1Xj3fY7y";
                strArr10[4] = "GGURsKjIWyfUU1Vu9BOr0pf9u6pcVKo4";
                Log.e(str3, strA0W5);
                return;
            }
        }
        throw new RuntimeException();
    }

    static {
        A0e();
        A0n = C1178Qc.class.getSimpleName();
        A0o = new WeakHashMap<>();
    }

    public C1178Qc(Context context, String str, InterfaceC1292Uo interfaceC1292Uo, boolean z) {
        this.A0h = UUID.randomUUID().toString();
        this.A0J = V6.A06;
        this.A0E = EnumC1289Ul.A04;
        this.A08 = EnumC1077Mc.A03;
        this.A0U = new WeakReference<>(null);
        this.A0i = new ArrayList();
        this.A0f = new XH();
        this.A0Z = false;
        this.A0Y = false;
        this.A00 = -1L;
        if (context instanceof C1635dL) {
            this.A0c = (C1635dL) context;
        } else if (!z) {
            this.A0c = RB.A04(context);
        } else {
            this.A0c = RB.A03(context);
        }
        this.A0c.A0O(this);
        this.A0g = str;
        this.A0d = interfaceC1292Uo;
        if (A0k != null) {
            this.A0b = A0k;
        } else {
            this.A0b = new SF(this.A0c);
        }
        this.A05 = new View(context);
        this.A0e = new C1303Uz(this.A0c, this);
    }

    public C1178Qc(C1178Qc c1178Qc) {
        this((Context) c1178Qc.A0c, (String) null, c1178Qc.A0d, true);
        this.A0D = c1178Qc.A0D;
        this.A0a = c1178Qc.A0a;
        this.A0B = c1178Qc.A0B;
        this.A0j = true;
        this.A05 = new View(this.A0c);
    }

    public C1178Qc(C1635dL c1635dL, C1931iN c1931iN, TF tf, InterfaceC1292Uo interfaceC1292Uo) {
        this((Context) c1635dL, (String) null, interfaceC1292Uo, true);
        this.A0a = c1931iN;
        this.A0D = tf;
        this.A0j = true;
        this.A05 = new View(c1635dL);
    }

    public C1178Qc(C1635dL c1635dL, C1931iN c1931iN, TF tf, InterfaceC1292Uo interfaceC1292Uo, C1875hK c1875hK) {
        this(c1635dL, c1931iN, tf, interfaceC1292Uo);
        this.A0B = c1875hK;
    }

    private int A00() {
        if (this.A0D != null) {
            return this.A0D.A04();
        }
        if (this.A0A == null || this.A0A.A0J() == null) {
            return 1;
        }
        TF tfA0J = this.A0A.A0J();
        String[] strArr = A0m;
        String str = strArr[6];
        String str2 = strArr[1];
        int length = str.length();
        int viewabilityThreshold = str2.length();
        if (length != viewabilityThreshold) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0m;
        strArr2[2] = "P5kYLn6xwAUrjDfDuw88TuaVt88D3vtD";
        strArr2[7] = "ZJzVQNISDO4cH7XUZ38T2d7bCdM1k8uN";
        return tfA0J.A04();
    }

    private int A01() {
        if (this.A0D != null) {
            return this.A0D.A07();
        }
        if (this.A0a != null) {
            return this.A0a.A0C();
        }
        if (this.A0A != null && this.A0A.A0J() != null) {
            return this.A0A.A0J().A07();
        }
        return 0;
    }

    private int A02() {
        if (this.A0D != null) {
            return this.A0D.A08();
        }
        if (this.A0a != null) {
            return this.A0a.A0D();
        }
        if (this.A0A != null && this.A0A.A0J() != null) {
            return this.A0A.A0J().A08();
        }
        return 1000;
    }

    private int A03() {
        if (this.A0D != null) {
            return this.A0D.A09();
        }
        C06986w c06986w = this.A0A;
        if (A0m[3].charAt(5) != 'B') {
            throw new RuntimeException();
        }
        A0m[5] = "Xt";
        if (c06986w == null || this.A0A.A0J() == null) {
            return 0;
        }
        return this.A0A.A0J().A09();
    }

    public static Drawable A05(C1635dL c1635dL, Bitmap bitmap, boolean z, String str) {
        BitmapDrawable bitmapDrawableA00;
        BitmapDrawable bitmapDrawable = new BitmapDrawable(c1635dL.getResources(), bitmap);
        if (z && (bitmapDrawableA00 = AbstractC1610cv.A00(c1635dL, str)) != null) {
            Drawable iconViewDrawable = new LayerDrawable(new Drawable[]{bitmapDrawable, bitmapDrawableA00});
            return iconViewDrawable;
        }
        return bitmapDrawable;
    }

    public static NativeAdBase A0A(Context context, String str, String str2) throws V2 {
        V6 v6A00 = VB.A00(str2);
        if (v6A00 != null) {
            V6 template = V6.A05;
            if (v6A00 == template) {
                return new NativeBannerAd(context, str);
            }
            V6 template2 = V6.A06;
            if (v6A00 == template2) {
                return new NativeAd(context, str);
            }
            throw new V2(AdErrorType.BID_PAYLOAD_ERROR, String.format(Locale.US, A0W(42, 34, 54), v6A00));
        }
        throw new V2(AdErrorType.BID_PAYLOAD_ERROR, String.format(Locale.US, A0W(114, 50, 58), str2));
    }

    private final C1931iN A0C() {
        C1931iN c1931iN = this.A0a;
        if (c1931iN != null && c1931iN.A0R()) {
            return c1931iN;
        }
        return null;
    }

    private C1919iB A0F() {
        return A0G(false);
    }

    private C1919iB A0G(boolean z) {
        if (this.A0a != null) {
            C1931iN c1931iN = this.A0a;
            if (A0m[3].charAt(5) == 'B') {
                String[] strArr = A0m;
                strArr[0] = "rkQiEYXoMEhriwkmxTS9YqbekXjRctvV";
                strArr[4] = "aQIgqL6bCxVEsMgFZvYj1f08oAvgjHgO";
                if (c1931iN.A0R()) {
                    if (z) {
                        C1931iN c1931iN2 = this.A0a;
                        if (A0m[3].charAt(5) == 'B') {
                            A0m[3] = "EWl26Bqfon8mX0lHHC6z05409Pwx5AXq";
                            c1931iN2.A0I();
                        }
                    }
                    return this.A0a.A0E();
                }
            }
            throw new RuntimeException();
        }
        return new C1919iB();
    }

    public static S3 A0K() {
        return new S3();
    }

    public static C1178Qc A0L(NativeAdBaseApi nativeAdBaseApi) {
        if (nativeAdBaseApi instanceof Proxy) {
            return (C1178Qc) ((C1197Qv) Proxy.getInvocationHandler(nativeAdBaseApi)).A04();
        }
        return (C1178Qc) nativeAdBaseApi;
    }

    @Override
    public final C1293Up getAdChoicesIcon() {
        return A0F().A0D();
    }

    @Override
    public final C1294Uq getAdStarRating() {
        return A0F().A0G();
    }

    private AdPlacementType A0R() {
        if (this.A0J == V6.A06) {
            return AdPlacementType.NATIVE;
        }
        return AdPlacementType.NATIVE_BANNER;
    }

    private void A0a() {
        for (View view : this.A0i) {
            view.setOnClickListener(null);
            if (A0m[3].charAt(5) != 'B') {
                throw new RuntimeException();
            }
            A0m[3] = "reBfvBMaH6BqwlxZ2WqAQZq3knZpIvyz";
            view.setOnTouchListener(null);
            view.setOnLongClickListener(null);
        }
        this.A0i.clear();
    }

    private void A0b() {
        if (!TextUtils.isEmpty(getAdChoicesLinkUrl())) {
            WN.A0O(new WN(), this.A0c, WQ.A00(getAdChoicesLinkUrl()), A1C());
        }
    }

    public void A0c() {
        this.A0f.A05();
        this.A0e.A05();
    }

    public void A0d() {
        if (this.A0Q != null) {
            this.A0Q.A0V();
            this.A0c.A0F().AC0();
            this.A0Q = null;
        }
    }

    public static void A0f(Drawable drawable, ImageView imageView) {
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        if (drawable != null) {
            imageView.setImageDrawable(drawable);
        }
        if (A0m[3].charAt(5) != 'B') {
            throw new RuntimeException();
        }
        String[] strArr = A0m;
        strArr[6] = "LXDT52DRzEPuIKBbeK5QN38hLQjcy";
        strArr[1] = "Z1aNossC2MxjaxQyIIrn4vHalGw3J";
        imageView.setBackground(null);
    }

    private void A0h(FrameLayout frameLayout, String str) {
        if (this.A0N != null) {
            frameLayout.removeView(this.A0N);
        }
        this.A0N = AbstractC1610cv.A01(RB.A03(this.A0c), str);
        if (this.A0N != null) {
            frameLayout.addView(this.A0N, new FrameLayout.LayoutParams(-1, -1));
            frameLayout.bringChildToFront(this.A0N);
        }
    }

    private void A0i(C1931iN c1931iN, boolean z) {
        if (c1931iN == null) {
            return;
        }
        boolean zEquals = this.A0E.equals(EnumC1289Ul.A04);
        String strA0W = A0W(AgentActionFragment.REQUEST_CODE, 6, 7);
        if (zEquals) {
            C1919iB c1919iBA0E = c1931iN.A0E();
            String clientToken = c1931iN.A7G();
            if (!TextUtils.isEmpty(clientToken)) {
                this.A0b.A0e(new C1278Ua(clientToken, this.A0c.A0A()));
            }
            C1293Up c1293UpA0F = c1919iBA0E.A0F();
            String[] strArr = A0m;
            if (strArr[2].charAt(3) == strArr[7].charAt(3)) {
                throw new RuntimeException();
            }
            A0m[3] = "olK6BBrMvSH2F6L4J2jXYHYWLLMocGr7";
            if (c1293UpA0F != null) {
                SD sd = new SD(c1919iBA0E.A0F().getUrl(), c1919iBA0E.A0F().getHeight(), c1919iBA0E.A0F().getWidth(), c1931iN.A0G(), A0W(AgentActionFragment.REQUEST_CODE, 6, 7));
                sd.A01 = this.A0C;
                this.A0b.A0W();
                this.A0b.A0c(sd);
            }
            if (!this.A0J.equals(V6.A05)) {
                if (c1919iBA0E.A0E() != null) {
                    this.A0b.A0c(new SD(c1919iBA0E.A0E().getUrl(), c1919iBA0E.A0E().getHeight(), c1919iBA0E.A0E().getWidth(), c1931iN.A0G(), A0W(AgentActionFragment.REQUEST_CODE, 6, 7)));
                }
                if (c1931iN.A0H() != null) {
                    for (C1178Qc c1178Qc : c1931iN.A0H()) {
                        if (c1178Qc.getAdCoverImage() != null) {
                            this.A0b.A0c(new SD(c1178Qc.getAdCoverImage().getUrl(), c1178Qc.getAdCoverImage().getHeight(), c1178Qc.getAdCoverImage().getWidth(), c1931iN.A0G(), A0W(AgentActionFragment.REQUEST_CODE, 6, 7)));
                        }
                    }
                }
                String strA0b = c1919iBA0E.A0b();
                if (!TextUtils.isEmpty(strA0b)) {
                    this.A0b.A0b(new SB(strA0b, c1931iN.A0G(), A0W(AgentActionFragment.REQUEST_CODE, 6, 7), c1919iBA0E.A0A()));
                }
            }
            AbstractC1910hy abstractC1910hyA0C = c1919iBA0E.A0C();
            if (abstractC1910hyA0C != null && abstractC1910hyA0C.A1Y()) {
                SB sb = new SB(abstractC1910hyA0C.A0s(), abstractC1910hyA0C.A17(), strA0W);
                sb.A04 = true;
                sb.A03 = A0W(0, 5, 66);
                this.A0b.A0Y(sb);
            }
        }
        this.A0b.A0X(new T7(this, c1931iN, z), new S8(c1931iN.A0G(), strA0W));
    }

    private void A0j(InterfaceC1079Me interfaceC1079Me) {
        if (this.A0a == null) {
            return;
        }
        this.A0a.A0K(interfaceC1079Me);
    }

    public static void A0k(NativeAdImageApi nativeAdImageApi, ImageView imageView, C1635dL c1635dL) {
        if (nativeAdImageApi != null && imageView != null) {
            new KZ(imageView, c1635dL).A05(nativeAdImageApi.getHeight(), nativeAdImageApi.getWidth()).A07(nativeAdImageApi.getUrl());
        }
    }

    private final void A0n(QQ qq) {
        this.A0G = qq;
    }

    private final void A0o(String str) {
        this.A0S = str;
    }

    private void A0p(List<View> list, View view) {
        if (this.A0d != null && this.A0d.AJD(view)) {
            return;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                A0p(list, viewGroup.getChildAt(i));
            }
            return;
        }
        list.add(view);
    }

    public boolean A0q() {
        return A19() == EnumC1298Uu.A05 || A19() == EnumC1298Uu.A03;
    }

    public boolean A0r() {
        return A0F().A0e();
    }

    public final long A0y() {
        return this.A00;
    }

    public final C1931iN A0z() {
        return this.A0a;
    }

    public final AbstractC1910hy A10() {
        return A0F().A0C();
    }

    public final SF A11() {
        return this.A0b;
    }

    public final C1635dL A12() {
        return this.A0c;
    }

    public final ViewOnClickListenerC1208Rg A13() {
        return this.A0F;
    }

    @Override
    public final C1293Up getAdCoverImage() {
        return A0F().A0E();
    }

    @Override
    public final C1293Up getAdIcon() {
        return A0F().A0F();
    }

    public final QQ A16() {
        return this.A0G;
    }

    public final C1295Ur A17() {
        return this.A0H;
    }

    public final EnumC1296Us A18() {
        return this.A0I;
    }

    public final EnumC1298Uu A19() {
        return A0F().A0H();
    }

    public final XH A1A() {
        return this.A0f;
    }

    public final C1708eX A1B() {
        return this.A0R;
    }

    public final String A1C() {
        if (this.A0a == null || !isAdLoaded()) {
            return null;
        }
        return this.A0a.A7G();
    }

    public final String A1D() {
        return this.A0T;
    }

    public final String A1E() {
        return A0G(true).A0N();
    }

    public final String A1F() {
        return A0G(true).A0O();
    }

    public final String A1G() {
        return A0F().A0a();
    }

    public final String A1H() {
        if (this.A0a == null || TextUtils.isEmpty(this.A0a.A0E().A0b())) {
            return null;
        }
        return this.A0b.A0T(this.A0a.A0E().A0b());
    }

    public final List<C1178Qc> A1I() {
        if (this.A0a == null || !isAdLoaded()) {
            return null;
        }
        return this.A0a.A0H();
    }

    public final void A1J() {
        if (!O3.A00(this.A0c.A02()).A0O(this.A0c, false)) {
            A0b();
            if (A0m[5].length() == 3) {
                throw new RuntimeException();
            }
            A0m[3] = "yREZ0BSYt8CSunaR9f1myx0zIAs3a5bO";
            return;
        }
        AbstractC1382Yd abstractC1382YdA01 = AbstractC1383Ye.A01(this.A0c, this.A0c.A0A(), A1C(), this.A07);
        if (abstractC1382YdA01 == null) {
            A0b();
        } else {
            ((C1778fg) this.A07.getNativeAdLayoutApi()).A03(abstractC1382YdA01);
            abstractC1382YdA01.A0M();
        }
    }

    public final void A1K(Drawable drawable) {
        this.A01 = drawable;
        A1f(drawable != null, true);
    }

    public final void A1L(View view) {
        this.A0i.add(view);
        view.setOnClickListener(this.A0F);
        view.setOnTouchListener(this.A0F);
        if (U7.A1B(view.getContext())) {
            view.setOnLongClickListener(this.A0F);
        }
    }

    public final void A1M(View view, ImageView imageView) {
        ArrayList arrayList = new ArrayList();
        A0p(arrayList, view);
        A0g(view, imageView, arrayList, true);
    }

    public final void A1N(View view, ImageView imageView, List<View> clickableViews) {
        A0g(view, imageView, clickableViews, true);
    }

    public final void A1O(View view, AdNativeComponentView adNativeComponentView) {
        ArrayList arrayList = new ArrayList();
        A0p(arrayList, view);
        A0g(view, adNativeComponentView, arrayList, false);
    }

    public final void A1P(View view, AdNativeComponentView adNativeComponentView, List<View> clickableViews) {
        A0g(view, adNativeComponentView, clickableViews, false);
    }

    public final void A1Q(View view, AdNativeComponentView adNativeComponentView, List<View> clickableViews, boolean z) {
        A0g(view, adNativeComponentView, clickableViews, z);
    }

    public final void A1R(View view, AdNativeComponentView adNativeComponentView, boolean z) {
        List<View> clickableViews = new ArrayList<>();
        A0p(clickableViews, view);
        A0g(view, adNativeComponentView, clickableViews, z);
    }

    public final void A1S(MediaView mediaView) {
        if (mediaView != null) {
            this.A0Y = true;
        }
    }

    public final void A1T(MediaView mediaView) {
        if (mediaView != null) {
            this.A0Z = true;
        }
    }

    public final void A1U(NativeAdBase nativeAdBase, NativeAdListener nativeAdListener) {
        if (nativeAdListener == null) {
            return;
        }
        A0n(new C6I(nativeAdListener, nativeAdBase));
    }

    public final void A1V(NativeAdLayout nativeAdLayout) {
        this.A07 = nativeAdLayout;
    }

    public final void A1W(C1931iN c1931iN) {
        A0i(c1931iN, true);
        if (this.A0G != null && c1931iN.A0H() != null) {
            T9 t9 = new T9(this);
            for (C1178Qc c1178Qc : c1931iN.A0H()) {
                if (A0m[3].charAt(5) != 'B') {
                    throw new RuntimeException();
                }
                String[] strArr = A0m;
                strArr[0] = "7JUEXy8BV6wMe69mvRG8Hisl1h58kfsH";
                strArr[4] = "Ag7M0cktqfZPxcWhbEyn8XCMGlxm5ALn";
                c1178Qc.A0j(t9);
            }
        }
    }

    public final void A1X(C1795fx c1795fx) {
        this.A0U = new WeakReference<>(c1795fx);
    }

    public final void A1Y(EnumC1289Ul enumC1289Ul, String str, SL sl) {
        if (str == null) {
            this.A0c.A0F().A3I();
        } else {
            this.A0c.A0F().A3H();
        }
        this.A00 = System.currentTimeMillis();
        boolean z = this.A0j;
        String[] strArr = A0m;
        if (strArr[0].charAt(21) != strArr[4].charAt(21)) {
            String[] strArr2 = A0m;
            strArr2[0] = "knecuAJjZigTf7VsFCGhTGCW7dxKplKn";
            strArr2[4] = "uRrNlLGUJL1gxvEKewtOLFu1Ztix0dl1";
            if (z) {
                AdSettings.IntegrationErrorMode integrationErrorModeA00 = NW.A00(this.A0c);
                String strA0W = A0W(566, 30, 105);
                AdSettings.IntegrationErrorMode integrationErrorMode = AdSettings.IntegrationErrorMode.INTEGRATION_ERROR_CRASH_DEBUG_MODE;
                if (!integrationErrorMode.equals(integrationErrorModeA00)) {
                    V1 v1 = new V1(AdErrorType.LOAD_AD_CALLED_MORE_THAN_ONCE, A0W(566, 30, 105));
                    A12().A0F().A3F(XG.A01(this.A00), v1.A03().getErrorCode(), v1.A04());
                    if (this.A0G != null) {
                        this.A0G.ADB(v1);
                    } else {
                        Log.e(A0W(76, 17, 41), strA0W);
                    }
                    C1249Sw c1249Sw = new C1249Sw(strA0W);
                    A12().A08().AAy(A0W(550, 3, 101), AbstractC1248Sv.A0c, c1249Sw);
                } else {
                    throw new C1101Nb(strA0W);
                }
            }
            this.A0j = true;
            this.A0E = enumC1289Ul;
            if (enumC1289Ul.equals(EnumC1289Ul.A05)) {
                EnumC1077Mc enumC1077Mc = EnumC1077Mc.A05;
                if (A0m[3].charAt(5) == 'B') {
                    A0m[3] = "N11XMBa1eBkGGouoRChlRsXEwEtHvHDZ";
                    this.A08 = enumC1077Mc;
                }
            }
            this.A0C = sl;
            NT nt = new NT(this.A0g, this.A0J, A0R(), null, 1, new C1867hB());
            nt.A05(enumC1289Ul);
            nt.A06(this.A0S);
            nt.A07(this.A0T);
            this.A0A = new C06986w(this.A0c, nt);
            this.A0A.A0S(new TA(this));
            this.A0A.A0W(str);
            return;
        }
        throw new RuntimeException();
    }

    public final void A1Z(C1295Ur c1295Ur) {
        this.A0H = c1295Ur;
    }

    public final void A1a(EnumC1296Us enumC1296Us) {
        this.A0I = enumC1296Us;
    }

    public final void A1b(V6 v6) {
        if (!A0r()) {
            if (V6.A05.equals(v6)) {
                this.A0c.A0F().A3L(AdPlacementType.NATIVE_BANNER.toString(), this.A0g);
            } else {
                this.A0c.A0F().A3L(AdPlacementType.NATIVE.toString(), this.A0g);
            }
        }
        this.A0J = v6;
    }

    public final void A1c(AbstractC1707eW abstractC1707eW) {
        this.A0V = new WeakReference<>(abstractC1707eW);
    }

    public final void A1d(boolean z) {
        this.A0W = z;
    }

    public final void A1e(boolean z) {
        this.A0X = z;
    }

    public final void A1f(boolean z, boolean z2) {
        String strA0W;
        if (z) {
            if (this.A0E.equals(EnumC1289Ul.A05)) {
                boolean zA0r = A0r();
                if (A0m[3].charAt(5) != 'B') {
                    throw new RuntimeException();
                }
                String[] strArr = A0m;
                strArr[6] = "maLBxQjysuwmJ75m3YPaJDHU5JlBu";
                strArr[1] = "hXXEi4DazsshJWFEyRiAh7tUxgC1d";
                if (!zA0r && this.A0G != null) {
                    this.A0G.AEB();
                }
            }
            if (this.A0R != null) {
                this.A0R.A0U();
                this.A0e.A09();
                return;
            }
            return;
        }
        if (this.A0R != null) {
            C1931iN adapter = A0z();
            if (adapter != null) {
                strA0W = adapter.A0G();
            } else if (A0m[5].length() != 3) {
                String[] strArr2 = A0m;
                strArr2[2] = "2ETmOz1YodPf8MKRGGB9YcIoy7FDTpAq";
                strArr2[7] = "k5VZ8yDbY0Zqj8FxkeEerY08JJe7M6tR";
                strA0W = A0W(0, 0, 121);
            } else {
                String[] strArr3 = A0m;
                strArr3[0] = "JjUCnZOckAfeDcKZajvIf0dyi7sruRRg";
                strArr3[4] = "GlO3j5qd4HFQ8L5mPWBpkp3onxgG8Q98";
                strA0W = A0W(0, 0, 121);
            }
            this.A0e.A0C(this.A0c, strA0W);
            this.A0R.A0V();
        }
        if (this.A0G != null && z2) {
            V1 v1A01 = V1.A01(AdErrorType.BROKEN_MEDIA_ERROR, A0W(93, 21, 47));
            A12().A0F().A3F(XG.A01(this.A00), v1A01.A03().getErrorCode(), v1A01.A04());
            this.A0G.ADB(v1A01);
        }
    }

    public final boolean A1g() {
        return this.A07 == null;
    }

    @Override
    public final int A7V() {
        View view = this.A06;
        if (view instanceof AdNativeComponentView) {
            View videoView = ((AdNativeComponentView) view).getAdContentsView();
            if (videoView instanceof C1648dY) {
                return ((C1648dY) videoView).getCurrentPosition();
            }
            return -1;
        }
        return -1;
    }

    @Override
    public final NativeAdBase.NativeAdLoadConfigBuilder buildLoadAdConfig(NativeAdBase nativeAdBase) {
        return new C1299Uv(this, nativeAdBase);
    }

    @Override
    public final void destroy() {
        VF.A05(A0W(553, 7, 95), A0W(TranSceneConfig.SCENE_TYPE_GAME_HOK_SWEEP, 19, 11), A0W(13, 8, 68));
        if (U7.A1u(this.A0c)) {
            A12().A0B().AJj(this.A03);
        }
        if (!A0r()) {
            this.A0c.A0F().A3M();
        }
        if (this.A0A != null) {
            this.A0A.A0Y(true);
            this.A0A.A0K();
            this.A0A = null;
        }
    }

    @Override
    public final void downloadMedia() {
        if (this.A0E.equals(EnumC1289Ul.A05)) {
            this.A08 = EnumC1077Mc.A04;
        }
        this.A0E = EnumC1289Ul.A04;
        A0i(this.A0a, false);
    }

    @Override
    public final String getAdBodyText() {
        return A0G(true).A0I();
    }

    @Override
    public final String getAdCallToAction() {
        return A0G(true).A0W();
    }

    @Override
    public final String getAdChoicesImageUrl() {
        if (getAdChoicesIcon() == null) {
            return null;
        }
        return getAdChoicesIcon().getUrl();
    }

    @Override
    public final String getAdChoicesLinkUrl() {
        return A0F().A0J();
    }

    @Override
    public final String getAdChoicesText() {
        return A0F().A0K();
    }

    @Override
    public final String getAdHeadline() {
        return A0G(true).A0L();
    }

    @Override
    public final String getAdLinkDescription() {
        return A0G(true).A0M();
    }

    @Override
    public final String getAdSocialContext() {
        return A0G(true).A0Q();
    }

    @Override
    public final String getAdTranslation() {
        return A0G(true).A0T();
    }

    @Override
    public final String getAdUntrimmedBodyText() {
        return A0G(true).A0U();
    }

    @Override
    public final String getAdvertiserName() {
        return A0G(true).A0V();
    }

    @Override
    public final float getAspectRatio() {
        C1293Up nativeAdImage;
        if (this.A0a == null || (nativeAdImage = this.A0a.A0E().A0E()) == null) {
            return 0.0f;
        }
        int width = nativeAdImage.getWidth();
        int height = nativeAdImage.getHeight();
        if (height <= 0) {
            return 0.0f;
        }
        float f = width;
        float f2 = height;
        String[] strArr = A0m;
        if (strArr[0].charAt(21) == strArr[4].charAt(21)) {
            throw new RuntimeException();
        }
        A0m[3] = "OUTl4BjdLTzCi4kmpI6eA9pKBM08eKMp";
        return f / f2;
    }

    @Override
    public final String getId() {
        if (!isAdLoaded()) {
            return null;
        }
        return this.A0h;
    }

    @Override
    public final String getPlacementId() {
        return this.A0g;
    }

    @Override
    public final Drawable getPreloadedIconViewDrawable() {
        C1293Up c1293UpA0F;
        Bitmap bitmapA0N;
        C1931iN adapter = this.A0a;
        if (adapter != null && (c1293UpA0F = A0F().A0F()) != null && (bitmapA0N = this.A0b.A0N(c1293UpA0F.getUrl())) != null) {
            return A05(A12(), bitmapA0N, A1g(), A1D());
        }
        return null;
    }

    @Override
    public final String getPromotedTranslation() {
        return A0G(true).A0P();
    }

    @Override
    public final String getSponsoredTranslation() {
        return A0G(true).A0R();
    }

    @Override
    public final boolean hasCallToAction() {
        return this.A0a != null && this.A0a.A0Q();
    }

    @Override
    public final boolean isAdInvalidated() {
        boolean zA0A = true;
        if (this.A0A != null) {
            C06986w c06986w = this.A0A;
            String[] strArr = A0m;
            if (strArr[6].length() != strArr[1].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0m;
            strArr2[2] = "gqyuy6F7WThaJUOfAsIyr4sziGGBhw0f";
            strArr2[7] = "L6lbko7Rv34huPFym8TvMBezY1vQkdWf";
            zA0A = c06986w.A0Z();
        } else if (this.A0B != null) {
            zA0A = this.A0B.A0A();
        }
        this.A0c.A0F().A5X(zA0A);
        return zA0A;
    }

    @Override
    public final boolean isAdLoaded() {
        return this.A0a != null && this.A0a.A0R();
    }

    @Override
    public final void loadAd() {
        VF.A05(A0W(560, 6, 117), A0W(382, 24, 27), A0W(5, 8, 76));
        A1Y(EnumC1289Ul.A00(NativeAdBase.MediaCacheFlag.ALL), null, new SL(false, -1, -1));
    }

    @Override
    public final void loadAd(NativeAdBase.NativeLoadAdConfig nativeLoadAdConfig) {
        VF.A05(A0W(560, 6, 117), A0W(382, 24, 27), A0W(21, 8, 17));
        ((C1299Uv) nativeLoadAdConfig).A00();
    }

    @Override
    public final void onCtaBroadcast() {
        if (this.A05 != null) {
            this.A05.performClick();
        }
    }

    @Override
    public final void repair(Throwable th) {
        if (this.A04 != null) {
            this.A04.post(new TB(this));
        }
        String str = A0W(164, 16, 48) + X7.A03(this.A0c, th);
        A12().A0F().A3F(XG.A01(this.A00), 2001, str);
        if (this.A0G != null) {
            this.A0G.ADB(new V1(2001, str));
        }
    }

    @Override
    public final void setExtraHints(ExtraHints extraHints) {
        if (extraHints == null) {
            return;
        }
        A0o(extraHints.getHints());
        this.A0T = extraHints.getMediationData();
    }

    @Override
    public final void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.A02 = onTouchListener;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x004f  */
    @Override
    public final void unregisterView() {
        C1611cw c1611cw = this.A0N;
        if (c1611cw != null) {
            ViewParent parent = c1611cw.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(c1611cw);
            }
            this.A0N = null;
        }
        if (this.A04 == null || this.A06 == null) {
            return;
        }
        if (!A0r()) {
            LH lhA0F = this.A0c.A0F();
            String[] strArr = A0m;
            if (strArr[0].charAt(21) != strArr[4].charAt(21)) {
                A0m[3] = "w9n8TBisrss8zAM8EiwpgeUnlq2PaQ6F";
                lhA0F.unregisterView();
                if (U7.A1u(this.A0c)) {
                    A12().A0B().AJj(this.A03);
                }
                if (!A0o.containsKey(this.A04) && A0o.get(this.A04).get() == this) {
                    View view = this.A04;
                    String[] strArr2 = A0m;
                    if (strArr2[2].charAt(3) != strArr2[7].charAt(3)) {
                        String[] strArr3 = A0m;
                        strArr3[6] = "1kkuB6xtwDeF3EtU3aavEsH64nQcK";
                        strArr3[1] = "rb6NM7K87kMKFcLdVL5rugEXgDuZd";
                        if ((view instanceof ViewGroup) && this.A0K != null) {
                            ((ViewGroup) this.A04).removeView(this.A0K);
                            this.A0K = null;
                        }
                        if (this.A0a != null) {
                            this.A0a.A0J();
                        }
                        if (this.A0L != null && U7.A1B(this.A0c)) {
                            this.A0L.A07();
                            View view2 = this.A04;
                            String[] strArr4 = A0m;
                            if (strArr4[2].charAt(3) == strArr4[7].charAt(3)) {
                                throw new RuntimeException();
                            }
                            String[] strArr5 = A0m;
                            strArr5[0] = "4gE9LeNlQroHqEeWf1EzJsbNX9PRfDme";
                            strArr5[4] = "TBDkrxJbHtSaZ13hkNs0RNY8SzE0jpKy";
                            view2.getOverlay().remove(this.A0L);
                        }
                        A0o.remove(this.A04);
                        A0a();
                        this.A04 = null;
                        this.A06 = null;
                        if (this.A0R != null) {
                            this.A0R.A0V();
                            this.A0R = null;
                        }
                        A0d();
                        this.A09 = null;
                        return;
                    }
                } else {
                    throw new IllegalStateException(A0W(481, 38, 57));
                }
            }
        } else {
            if (U7.A1u(this.A0c)) {
                A12().A0B().AJj(this.A03);
            }
            if (!A0o.containsKey(this.A04)) {
            }
            throw new IllegalStateException(A0W(481, 38, 57));
        }
        throw new RuntimeException();
    }
}
