package com.facebook.ads.redexgen.core;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.ads.NativeAd;
import java.util.Iterator;
import java.util.List;

public class C1773fb implements S7 {
    public static String[] A02 = {"XqTxzibSN1zAjaiM9LtVSqsxSG", "xqN5bEwB0Nihon7KSuA", "FVkOY26I4teb9ftOLmk9A45ZS3TS2DIY", "wzTDEcMKt7VvW9W8eKeIWksTnJ0tE", "iGRCr9OHUARnshCNCmKS3XNzEIA09VDm", "MJLgHxMJm3Fw", ExifInterface.LATITUDE_SOUTH, "m77T1m6dtAhGTcgbhkAg"};
    public final List<C1931iN> A00;
    public final C1772fa A01;

    public C1773fb(C1772fa c1772fa, List<C1931iN> list) {
        this.A01 = c1772fa;
        this.A00 = list;
    }

    private void A00() {
        this.A01.A00.A05(true);
        this.A01.A00.A02();
        this.A01.A00.A03(0);
        Iterator<C1931iN> it = this.A00.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            if (A02[4].charAt(3) == 'E') {
                throw new RuntimeException();
            }
            A02[0] = "GKxyFdZ7ADxfGJ";
            if (zHasNext) {
                C1178Qc c1178Qc = new C1178Qc(this.A01.A01, it.next(), null, C1178Qc.A0K(), this.A01.A00.A01());
                if (c1178Qc.A0z() != null && c1178Qc.A0z().A0F() != null) {
                    ((AbstractC1876hL) c1178Qc.A0z().A0F()).A00(c1178Qc);
                }
                this.A01.A00.A04(new NativeAd(this.A01.A01, c1178Qc));
            } else {
                AbstractC1313Vk.A00(new C1774fc(this));
                return;
            }
        }
    }

    @Override
    public final void ACh() {
        A00();
    }

    @Override
    public final void ACq() {
        A00();
    }
}
