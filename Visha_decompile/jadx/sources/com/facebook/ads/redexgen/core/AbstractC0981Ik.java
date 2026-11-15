package com.facebook.ads.redexgen.core;

import androidx.media3.container.Mp4Box;
import androidx.media3.extractor.mp4.Sniffer;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.io.IOException;

@MetaExoPlayerCustomization(type = {"INCREASE_VISIBILITY"}, value = "To support OculusMp4Extractor")
public abstract class AbstractC0981Ik {
    public static String[] A00 = {"FTgkNuEfB21sdffM4MB", "AHdMCcfHPrYhHZuJq7ar8kaDD0", "m1AQBHavwMcQPTMSh8yPHqRX8TIuxSKu", "w1PNvsr2QHXMQttzrVJcJFpvqWAZZ2ue", "3yahnNe", "CLySAaMkPHNUkUwJF2Q2hF0h64PJDpTx", "AMIcFao4vlNbyapwbaOz2OEX2RJAnqn2", "UMo3DITmDXTtEPejAH8oJ9deLVPgGECA"};
    public static final int[] A01 = {1769172845, 1769172786, 1769172787, 1769172788, 1769172789, 1769172790, 1769172793, Mp4Box.TYPE_avc1, Mp4Box.TYPE_hvc1, Mp4Box.TYPE_hev1, Mp4Box.TYPE_av01, 1836069937, 1836069938, 862401121, 862401122, 862417462, 862417718, 862414134, 862414646, 1295275552, 1295270176, 1714714144, 1801741417, 1295275600, Sniffer.BRAND_QUICKTIME, 1297305174, 1684175153, 1769172332, 1885955686};

    public static boolean A00(int i, boolean z) {
        if ((i >>> 8) == 3368816) {
            return true;
        }
        if (A00[1].length() == 5) {
            throw new RuntimeException();
        }
        A00[1] = "W7vtI7n9AGcg3kiZwr1R4Wd";
        if (i == 1751476579 && z) {
            return true;
        }
        int[] iArr = A01;
        if (A00[1].length() == 5) {
            throw new RuntimeException();
        }
        String[] strArr = A00;
        strArr[6] = "p6Add4WRgBlZ7U9sigG7YhPBNKEcLx90";
        strArr[7] = "5Tff00eh7q1qfGppTlmWVovL6e7TawLb";
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    public static boolean A01(InterfaceC2101lN interfaceC2101lN) throws IOException {
        return A03(interfaceC2101lN, true, false);
    }

    public static boolean A02(InterfaceC2101lN interfaceC2101lN, boolean z) throws IOException {
        return A03(interfaceC2101lN, false, z);
    }

    public static boolean A03(InterfaceC2101lN interfaceC2101lN, boolean z, boolean z2) throws IOException {
        long jA8G = interfaceC2101lN.A8G();
        long inputLength = 4096;
        if (jA8G != -1 && jA8G <= 4096) {
            inputLength = jA8G;
        }
        int i = (int) inputLength;
        C4J c4j = new C4J(64);
        int i2 = 0;
        boolean z3 = false;
        boolean z4 = false;
        while (i2 < i) {
            int i3 = 8;
            c4j.A0d(8);
            if (!interfaceC2101lN.AGA(c4j.A0l(), 0, 8, true)) {
                break;
            }
            long jA0Q = c4j.A0Q();
            int headerSize = c4j.A0C();
            if (jA0Q == 1) {
                i3 = 16;
                interfaceC2101lN.AG9(c4j.A0l(), 8, 8);
                c4j.A0e(16);
                jA0Q = c4j.A0P();
            } else if (jA0Q == 0) {
                long jA8G2 = interfaceC2101lN.A8G();
                if (jA8G2 != -1) {
                    jA0Q = (jA8G2 - interfaceC2101lN.A8a()) + ((long) 8);
                }
            }
            if (jA0Q < i3) {
                return false;
            }
            i2 += i3;
            if (headerSize == 1836019574) {
                int i4 = (int) jA0Q;
                String[] strArr = A00;
                if (strArr[2].charAt(21) == strArr[5].charAt(21)) {
                    throw new RuntimeException();
                }
                A00[1] = "1NOCBl6uYr6a5zcz7K9cJi9";
                i += i4;
                if (jA8G != -1 && i > jA8G) {
                    i = (int) jA8G;
                }
            } else {
                if (headerSize == 1836019558 || headerSize == 1836475768) {
                    z4 = true;
                    break;
                }
                if ((((long) i2) + jA0Q) - ((long) i3) >= i) {
                    break;
                }
                int atomDataSize = (int) (jA0Q - ((long) i3));
                i2 += atomDataSize;
                if (headerSize == 1718909296) {
                    if (atomDataSize >= 8) {
                        c4j.A0d(atomDataSize);
                        interfaceC2101lN.AG9(c4j.A0l(), 0, atomDataSize);
                        int atomDataSize2 = atomDataSize / 4;
                        for (int brandsCount = 0; brandsCount < atomDataSize2; brandsCount++) {
                            if (brandsCount == 1) {
                                c4j.A0g(4);
                            } else if (A00(c4j.A0C(), z2)) {
                                z3 = true;
                                break;
                            }
                        }
                        if (!z3) {
                            return false;
                        }
                    } else {
                        return false;
                    }
                } else if (atomDataSize != 0) {
                    interfaceC2101lN.A3z(atomDataSize);
                }
            }
        }
        return z3 && z == z4;
    }
}
