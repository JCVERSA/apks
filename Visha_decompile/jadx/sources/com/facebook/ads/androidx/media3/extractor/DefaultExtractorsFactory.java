package com.facebook.ads.androidx.media3.extractor;

import android.net.Uri;
import androidx.media3.extractor.ts.TsExtractor;
import com.facebook.ads.androidx.media3.extractor.DefaultExtractorsFactory;
import com.facebook.ads.androidx.media3.extractor.mkv.MatroskaExtractor;
import com.facebook.ads.redexgen.core.AnonymousClass28;
import com.facebook.ads.redexgen.core.C1995jT;
import com.facebook.ads.redexgen.core.C1999jX;
import com.facebook.ads.redexgen.core.C2006je;
import com.facebook.ads.redexgen.core.C2021jt;
import com.facebook.ads.redexgen.core.C2023jv;
import com.facebook.ads.redexgen.core.C2026jy;
import com.facebook.ads.redexgen.core.C2029k1;
import com.facebook.ads.redexgen.core.C2055kR;
import com.facebook.ads.redexgen.core.C2061kX;
import com.facebook.ads.redexgen.core.C2062kY;
import com.facebook.ads.redexgen.core.C2075kl;
import com.facebook.ads.redexgen.core.C2086l8;
import com.facebook.ads.redexgen.core.C2089lB;
import com.facebook.ads.redexgen.core.C2094lG;
import com.facebook.ads.redexgen.core.C2312or;
import com.facebook.ads.redexgen.core.C4R;
import com.facebook.ads.redexgen.core.GS;
import com.facebook.ads.redexgen.core.GT;
import com.facebook.ads.redexgen.core.GX;
import com.facebook.ads.redexgen.core.InterfaceC0921Gb;
import com.facebook.ads.redexgen.core.MetaExoPlayerCustomizedCollections;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.mozilla.classfile.ByteCode;

public final class DefaultExtractorsFactory implements InterfaceC0921Gb {
    public static byte[] A0D;
    public static String[] A0E = {"XjRCK", "YKKzt2Kz2K7V0l18n", "uXpf", "oBPf3SXxcwKIIjUAiSrSO2O", "bGsaI0", "ItuqzfwzHHPicVJR9bxtDiYARBCa2uxZ", "TYxjAZ909gRPDezWj", "NTeqQWiGfYp1zE0qSPlL6iBK546ff9Um"};
    public static final GT A0F;
    public static final GT A0G;
    public static final int[] A0H;
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public int A07;
    public int A08 = 1;
    public int A09 = TsExtractor.DEFAULT_TIMESTAMP_SEARCH_BYTES;

    @MetaExoPlayerCustomization("Replaces ImmutableList with List")
    public List<C2312or> A0A = MetaExoPlayerCustomizedCollections.A03(new C2312or[0]);
    public boolean A0B;
    public boolean A0C;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0D, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 122);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A05() {
        A0D = new byte[]{74, 86, 84, 21, 77, 72, 74, 76, 73, 86, 86, 82, 21, 72, 75, 90, 21, 72, 85, 75, 89, 86, 80, 75, 95, 21, 84, 76, 75, 80, 72, 26, 21, 75, 76, 74, 86, 75, 76, 89, 21, 84, 80, 75, 80, 21, 52, 80, 75, 80, 44, 95, 91, 89, 72, 74, 91, 86, 89, -6, 6, 4, -59, -3, -8, -6, -4, -7, 6, 6, 2, -59, -8, -5, 10, -59, -2, 6, 6, -2, 3, -4, -59, -8, 5, -5, 9, 6, 0, -5, -59, -4, 15, 6, 7, 3, -8, 16, -4, 9, -55, -59, -4, 15, ByteCode.T_LONG, -59, -3, 3, -8, -6, -59, -35, 3, -8, -6, -36, 15, ByteCode.T_LONG, 9, -8, -6, ByteCode.T_LONG, 6, 9, 27, 39, 37, -26, 30, 25, 27, 29, 26, 39, 39, 35, -26, 25, 28, 43, -26, 31, 39, 39, 31, 36, 29, -26, 25, 38, 28, 42, 39, 33, 28, -26, 29, 48, 39, 40, 36, 25, 49, 29, 42, -22, -26, 29, 48, 44, -26, 30, 36, 25, 27, -26, -2, 36, 25, 27, 4, 33, 26, 42, 25, 42, 49, 82, 92, 42, 95, 74, 82, 85, 74, 75, 85, 78};
    }

    static {
        A05();
        A0H = new int[]{5, 4, 12, 8, 3, 10, 9, 11, 6, 2, 0, 1, 7, 16, 15, 14};
        A0F = new GT(new GS() {
            @Override
            public final Constructor A7J() {
                return DefaultExtractorsFactory.A01();
            }
        });
        A0G = new GT(new GS() {
            @Override
            public final Constructor A7J() {
                return DefaultExtractorsFactory.A02();
            }
        });
    }

    @MetaExoPlayerCustomization("Replaces ImmutableList.of with MetaExoPlayerCustomizedCollections")
    public DefaultExtractorsFactory() {
    }

    public static Constructor<? extends GX> A01() throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, InvocationTargetException {
        boolean isFlacNativeLibraryAvailable = Boolean.TRUE.equals(Class.forName(A00(124, 63, 62)).getMethod(A00(187, 11, 111), new Class[0]).invoke(null, new Object[0]));
        if (!isFlacNativeLibraryAvailable) {
            return null;
        }
        return Class.forName(A00(59, 65, 29)).asSubclass(GX.class).getConstructor(Integer.TYPE);
    }

    public static Constructor<? extends GX> A02() throws NoSuchMethodException, ClassNotFoundException {
        return Class.forName(A00(0, 59, 109)).asSubclass(GX.class).getConstructor(new Class[0]);
    }

    @MetaExoPlayerCustomization("Removed AVI and JPEG extractors")
    private void A06(int i, List<GX> list) {
        int i2 = 2;
        switch (i) {
            case 0:
                list.add(new C2029k1());
                return;
            case 1:
                list.add(new C2026jy());
                return;
            case 2:
                int i3 = (this.A0C ? 1 : 0) | this.A00;
                String[] strArr = A0E;
                if (strArr[2].length() == strArr[0].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0E;
                strArr2[5] = "0JYW4ys9S4cBRo9bfKNpoispKPkvAlfn";
                strArr2[7] = "ESM27VzyBHwJIaBfhIrCniRSUGwbmbgc";
                if (!this.A0B) {
                    i2 = 0;
                }
                list.add(new C2023jv(i2 | i3));
                return;
            case 3:
                int i4 = (this.A0C ? 1 : 0) | this.A01;
                boolean z = this.A0B;
                String[] strArr3 = A0E;
                if (strArr3[2].length() != strArr3[0].length()) {
                    String[] strArr4 = A0E;
                    strArr4[6] = "88SSgZrekVuE3ZpEu";
                    strArr4[1] = "yFmqseBd895DxKzOE";
                    if (!z) {
                        i2 = 0;
                    }
                    list.add(new C2094lG(i2 | i4));
                    return;
                }
                throw new RuntimeException();
            case 4:
                GX flacExtractor = A0F.A03(Integer.valueOf(this.A02));
                if (flacExtractor != null) {
                    list.add(flacExtractor);
                    return;
                } else {
                    list.add(new C2089lB(this.A02));
                    return;
                }
            case 5:
                list.add(new C2086l8());
                return;
            case 6:
                list.add(new MatroskaExtractor(this.A04));
                return;
            case 7:
                int i5 = (this.A0C ? 1 : 0) | this.A05;
                if (!this.A0B) {
                    i2 = 0;
                }
                list.add(new C2075kl(i2 | i5));
                return;
            case 8:
                list.add(new C2061kX().A01(this.A03));
                list.add(new C2062kY(this.A06));
                return;
            case 9:
                list.add(new C2055kR());
                return;
            case 10:
                list.add(new C2006je());
                return;
            case 11:
                list.add(new C1999jX(this.A08, new C4R(0L), new C2021jt(this.A07, this.A0A), this.A09));
                return;
            case 12:
                list.add(new C1995jT());
                return;
            case 13:
            case 14:
            default:
                return;
            case 15:
                GX midiExtractor = A0G.A03(new Object[0]);
                if (midiExtractor == null) {
                    return;
                }
                list.add(midiExtractor);
                return;
        }
    }

    @Override
    public final synchronized GX[] A5F() {
        return A5G(Uri.EMPTY, new HashMap());
    }

    @Override
    public final synchronized GX[] A5G(Uri uri, Map<String, List<String>> responseHeaders) {
        List<Extractor> extractors;
        extractors = new ArrayList<>(A0H.length);
        int fileType = AnonymousClass28.A02(responseHeaders);
        if (fileType != -1) {
            A06(fileType, extractors);
        }
        int iA00 = AnonymousClass28.A00(uri);
        if (iA00 != -1 && iA00 != fileType) {
            A06(iA00, extractors);
        }
        for (int responseHeadersInferredFileType : A0H) {
            if (responseHeadersInferredFileType != fileType && responseHeadersInferredFileType != iA00) {
                A06(responseHeadersInferredFileType, extractors);
            }
        }
        return (GX[]) extractors.toArray(new GX[extractors.size()]);
    }
}
