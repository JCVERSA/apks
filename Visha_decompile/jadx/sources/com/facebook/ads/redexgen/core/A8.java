package com.facebook.ads.redexgen.core;

import android.view.View;
import androidx.media3.common.PlaybackException;
import com.transsion.vishatransfer.socket.TransferProtocol;
import java.util.Arrays;
import java.util.LinkedHashMap;

public final class A8 implements SharedViewpointManager {
    public static boolean A07;
    public static byte[] A08;
    public static String[] A09 = {"BoSaZzMMCoBoab6kFzr2tWGVTni5", "Vk9jbaVPkS6rtGXBWv67wEIKcLe3GnXQ", "GJsVZyBqNYZRU43kGmqANe", "Uv9MZIJr", "GbPwVrzkFOEMxWNTB1P9oG5CUgrItJXy", "gWutc4DO", "1FOrRj10jdO8", "rnakDij4LZYpzXru71B"};
    public InterfaceC2365q2 A00;
    public InterfaceC2354pp A01;
    public C2341pb A02;
    public final InterfaceC2355pq A04;
    public final ViewpointQeConfig A05;
    public final LinkedHashMap<Integer, Runnable> A06 = new LinkedHashMap<>();
    public final InterfaceC2354pp A03 = new A9(this);

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A08, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + PlaybackException.ERROR_CODE_NOT_AVAILABLE_IN_REGION);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A08 = new byte[]{TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE};
    }

    static {
        A04();
        A07 = false;
    }

    public A8(ViewpointQeConfig viewpointQeConfig, InterfaceC2365q2 interfaceC2365q2, InterfaceC2355pq interfaceC2355pq) {
        this.A05 = viewpointQeConfig;
        this.A00 = interfaceC2365q2;
        this.A04 = interfaceC2355pq;
    }

    public static A8 A01() {
        return new A8(new ViewpointQeConfig(), new AC(), null);
    }

    private void A05(AbstractC2357ps abstractC2357ps, InterfaceC2362px interfaceC2362px, A6 a6) {
        this.A02 = C2341pb.A00(this.A05, abstractC2357ps, interfaceC2362px, a6);
        if (0 != 0) {
            this.A02.A01(null);
        }
        this.A02.A02(this.A03);
        String[] strArr = A09;
        if (strArr[4].charAt(11) == strArr[1].charAt(11)) {
            throw new RuntimeException();
        }
        A09[7] = "2MhPhimmgHBptxasGUILH2";
    }

    private void A06(DspViewableNode dspViewableNode, C2363q0 c2363q0) {
        C2341pb c2341pb = this.A02;
        if (c2341pb != null && dspViewableNode != null) {
            if (this.A05.A00 && c2363q0 != null) {
                c2341pb.A04(dspViewableNode, c2363q0);
            } else {
                c2341pb.A03(dspViewableNode);
            }
        }
    }

    private void A07(DspViewableNode dspViewableNode, C2363q0 c2363q0, C2359pu c2359pu) {
        C2341pb c2341pb = this.A02;
        if (c2341pb != null && dspViewableNode != null && c2359pu != null) {
            if (this.A05.A00 && c2363q0 != null) {
                c2359pu.A02 = dspViewableNode.hashCode() + A02(0, 1, 27) + c2359pu.A08 + c2363q0;
                c2341pb.A05(dspViewableNode, c2363q0, c2359pu);
            } else {
                c2341pb.A06(dspViewableNode, c2359pu);
            }
        }
    }

    public final void A08(View view) {
        A06(view != null ? ViewpointViewNode.A00(view) : null, null);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.pu != com.instagram.common.viewpoint.core.ViewpointData<?, ?> */
    public final void A09(View view, C2359pu<?, ?> c2359pu) {
        A07(view != null ? ViewpointViewNode.A00(view) : null, null, c2359pu);
    }

    public final void A0A(AbstractC2357ps abstractC2357ps, View view) {
        if (abstractC2357ps != null && view != null) {
            A05(abstractC2357ps, new AA(view, this.A00), new C1H(null));
        }
    }
}
