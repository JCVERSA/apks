package com.facebook.ads.androidx.media3.exoplayer.video;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.view.Surface;
import com.facebook.ads.redexgen.core.AbstractC06244a;
import com.facebook.ads.redexgen.core.C3M;
import com.facebook.ads.redexgen.core.F6;
import java.util.Arrays;
import okio.Utf8;
import org.mozilla.classfile.ByteCode;

public final class DummySurface extends Surface {
    public static int A03;
    public static boolean A04;
    public static byte[] A05;
    public static String[] A06 = {"ToLQMf4zVEPQ4KvEooDgfRDe7yK6oNRK", "K0o48H12GfZKMIt1wQk8mac7vZfrpMfZ", "E5u", "BRaMCvq", "l9UvErrzvq13nAT2kKu87XSUotDZHlU4", "KpcnqVP7VQEeHX003zJg7kklGvYVOXV6", "nWaipra9RnK7e6o7QCyQoP578AoonQfH", "y6ffzf1HkvdiGAu1g8uZUTsw8JywLKMO"};
    public boolean A00;
    public final boolean A01;
    public final F6 A02;

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 72);
            String[] strArr = A06;
            if (strArr[4].charAt(13) != strArr[7].charAt(13)) {
                throw new RuntimeException();
            }
            A06[6] = "JqkQNQrwLqX5JhphVyehfhpUDDUdSiIM";
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A05 = new byte[]{22, 20, 31, 12, 22, ByteCode.T_LONG, 7, 12, 35, 33, 60, 39, 54, 48, 39, 54, 55, 12, 48, 60, 61, 39, 54, 61, 39, 4, 6, 13, 30, 10, 9, 19, 30, 50, 52, 51, 39, 32, 34, 36, 45, 36, 50, 50, 30, 34, 46, 47, 53, 36, 57, 53, 32, 27, 6, 0, 5, 5, 26, 7, 1, 16, 17, 85, 5, 7, 28, 26, 7, 85, 1, 26, 85, 52, 37, 60, 85, 25, 16, 3, 16, 25, 85, 68, 66, 101, 105, 12, ByteCode.T_LONG, 8, 13, Utf8.REPLACEMENT_BYTE, 48, 58, 44, 49, 55, 58, 112, 54, Utf8.REPLACEMENT_BYTE, 44, 58, 41, Utf8.REPLACEMENT_BYTE, 44, 59, 112, 40, 44, 112, 54, 55, 57, 54, 1, 46, 59, 44, 56, 49, 44, 51, Utf8.REPLACEMENT_BYTE, 48, 61, 59, ByteCode.T_LONG, 25, 21, ByteCode.T_LONG, 13, 22, 31};
        if (A06[6].charAt(20) == 'p') {
            throw new RuntimeException();
        }
        A06[0] = "LdigSr1cvkrlhyQY3m7v5wXMq9EFvMie";
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 5 out of bounds for length 5
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:147)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:656)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    public static synchronized boolean A05(Context context) {
        boolean z;
        z = true;
        if (!A04) {
            A03 = AbstractC06244a.A02 < 24 ? 0 : A00(context);
            A04 = true;
        }
        if (A03 == 0) {
            z = false;
        }
        return z;
    }

    static {
        A04();
    }

    public DummySurface(F6 f6, SurfaceTexture surfaceTexture, boolean z) {
        super(surfaceTexture);
        this.A02 = f6;
        this.A01 = z;
    }

    public static int A00(Context context) {
        String strEglQueryString;
        if (AbstractC06244a.A02 < 26 && (A02(127, 7, 48).equals(AbstractC06244a.A05) || A02(85, 6, 117).equals(AbstractC06244a.A06))) {
            return 0;
        }
        if ((AbstractC06244a.A02 < 26 && !context.getPackageManager().hasSystemFeature(A02(91, 36, 22))) || (strEglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373)) == null || !strEglQueryString.contains(A02(0, 25, 27))) {
            return 0;
        }
        if (strEglQueryString.contains(A02(25, 27, 9))) {
            return 1;
        }
        return 2;
    }

    public static DummySurface A01(Context context, boolean z) {
        A03();
        C3M.A08(!z || A05(context));
        return new F6().A04(z ? A03 : 0);
    }

    public static void A03() {
        if (AbstractC06244a.A02 >= 17) {
        } else {
            throw new UnsupportedOperationException(A02(52, 33, 61));
        }
    }

    @Override
    public final void release() {
        super.release();
        synchronized (this.A02) {
            if (!this.A00) {
                this.A02.A05();
                this.A00 = true;
            }
        }
    }
}
