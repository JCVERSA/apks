package com.facebook.ads.redexgen.core;

import android.net.Uri;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import okio.Utf8;
import org.mozilla.classfile.ByteCode;

public final class C2165mR implements InterfaceC0817Cb {
    public static byte[] A03;
    public static String[] A04 = {"3Cx8VuBaAtU", "mtIvitx", "ijtxGWvqwx8wBPOmSGXshyr4piVUOT73", "1A2eWfmauMvQ3z4CiBElgktZxGJ5t0Vj", "NuAYfoZUoES6MxZb2vdyJB2K3PVOnnYD", "gczB0K5G5", "TBGYu08V4AAoblIa0rbrS9oc16PYokVw", "JGtQJ9cae1Y"};
    public GX A00;
    public InterfaceC2101lN A01;
    public final InterfaceC0921Gb A02;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 78);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{80, 89, 26, 22, 12, 21, 29, 89, ByteCode.T_LONG, 28, 24, 29, 89, 13, 17, 28, 89, 10, 13, ByteCode.T_LONG, 28, 24, 20, 87, 2, 35, 34, 41, 108, 35, 42, 108, 56, 36, 41, 108, 45, 58, 45, 37, 32, 45, 46, 32, 41, 108, 41, 52, 56, 62, 45, 47, 56, 35, 62, Utf8.REPLACEMENT_BYTE, 108, 100};
    }

    static {
        A01();
    }

    public C2165mR(InterfaceC0921Gb interfaceC0921Gb) {
        this.A02 = interfaceC0921Gb;
    }

    @Override
    @MetaExoPlayerCustomization("No op, we don't include mp3 extractor due to apk size")
    public final void A5q() {
    }

    @Override
    public final long A7S() {
        if (this.A01 != null) {
            return this.A01.A8f();
        }
        return -1L;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0068  */
    @Override
    public final void AA3(@MetaExoPlayerCustomization(" To be replaced with DataReader after upstream is updated") InterfaceC2247nl interfaceC2247nl, Uri uri, Map<String, List<String>> map, long j, long j2, GY gy) throws IOException {
        AnonymousClass90 anonymousClass90 = new AnonymousClass90(interfaceC2247nl, j, j2);
        this.A01 = anonymousClass90;
        if (this.A00 != null) {
            return;
        }
        GX[] extractors = this.A02.A5G(uri, map);
        if (extractors.length == 1) {
            this.A00 = extractors[0];
        } else {
            for (GX gx : extractors) {
                try {
                    if (gx.AJL(anonymousClass90)) {
                        this.A00 = gx;
                        C3M.A08(this.A00 != null || anonymousClass90.A8f() == j);
                        anonymousClass90.AI1();
                        break;
                    } else {
                        boolean z = this.A00 != null || anonymousClass90.A8f() == j;
                        C3M.A08(z);
                        anonymousClass90.AI1();
                    }
                } catch (EOFException unused) {
                    if (this.A00 != null || anonymousClass90.A8f() == j) {
                    }
                } catch (Throwable th) {
                    C3M.A08(this.A00 != null || anonymousClass90.A8f() == j);
                    anonymousClass90.AI1();
                    throw th;
                }
                C3M.A08(z);
                anonymousClass90.AI1();
            }
            if (this.A00 == null) {
                throw new C2148m9(A00(24, 34, 2) + AbstractC06244a.A0s(extractors) + A00(0, 24, 55), (Uri) C3M.A01(uri));
            }
        }
        GX gx2 = this.A00;
        String[] strArr = A04;
        if (strArr[7].length() != strArr[0].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A04;
        strArr2[4] = "617axDRVtVCpohDeNzS2wwDVGnqnMQm6";
        strArr2[3] = "irS2jSLrtgJgNTyuX8VyAPoURNJ9oGo8";
        gx2.AA4(gy);
    }

    @Override
    public final int AGc(C0939Gt c0939Gt) throws IOException {
        return ((GX) C3M.A01(this.A00)).AGb((InterfaceC2101lN) C3M.A01(this.A01), c0939Gt);
    }

    @Override
    public final void AGr() {
        if (this.A00 != null) {
            this.A00.AGr();
            this.A00 = null;
        }
        this.A01 = null;
    }

    @Override
    public final void AIM(long j, long j2) {
        ((GX) C3M.A01(this.A00)).AIM(j, j2);
    }
}
