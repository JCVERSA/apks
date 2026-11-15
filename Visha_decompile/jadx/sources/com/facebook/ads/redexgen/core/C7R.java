package com.facebook.ads.redexgen.core;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.Arrays;
import java.util.Comparator;
import java.util.TreeSet;
import okio.Utf8;

@MetaExoPlayerCustomization("Exo version is final but in Meta code HeroLeastRecentlyUsedCacheEvictor extends this")
public final class C7R implements InterfaceC1964iw {
    public static byte[] A03;
    public static String[] A04 = {"jtWHdC1JS00IQCACyTEvOJEMPrvoo3Ob", "eCCt1HwS4IToKXyi1WzLFL1R4PlgsDM4", "yXgy4dLxj37Ni2Ba12KifyhgeRBIXCXp", "5p7nRT0g4n3u8StY", "28aCkGMBHBRgMUJ0i4knnGO", "XAmyqmpuCXa4X38XkweYk7F1knbiAlXr", "krkFdswQPRExlipS29WIEjh8hbH7SBjj", "jb"};

    @MetaExoPlayerCustomization("Exo version is private but in Meta code HeroLeastRecentlyUsedCacheEvictor extends this")
    public long A00;

    @MetaExoPlayerCustomization("Exo version is private but in Meta code HeroLeastRecentlyUsedCacheEvictor extends this")
    public final long A01;

    @MetaExoPlayerCustomization("Exo version is private but in Meta code HeroLeastRecentlyUsedCacheEvictor extends this")
    public final TreeSet<C1072Lx> A02 = new TreeSet<>(new Comparator() {
        @Override
        public final int compare(Object obj, Object obj2) {
            return C7R.A00((C1072Lx) obj, (C1072Lx) obj2);
        }
    });

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 28);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A03 = new byte[]{46, 61, 34, 40, Utf8.REPLACEMENT_BYTE, 8, 42, 40, 35, 46};
    }

    static {
        A02();
    }

    public C7R(long j) {
        this.A01 = j;
    }

    @MetaExoPlayerCustomization("Exo version is private but in Meta code HeroLeastRecentlyUsedCacheEvictor extends this")
    public static int A00(C1072Lx c1072Lx, C1072Lx c1072Lx2) {
        if (c1072Lx.A00 - c1072Lx2.A00 == 0) {
            return c1072Lx.compareTo(c1072Lx2);
        }
        return c1072Lx.A00 < c1072Lx2.A00 ? -1 : 1;
    }

    private void A03(InterfaceC1062Ln interfaceC1062Ln, long j) {
        C4S.A02(A01(0, 10, 87));
        while (this.A00 + j > this.A01 && !this.A02.isEmpty()) {
            C1072Lx c1072LxFirst = this.A02.first();
            if (A04[1].charAt(10) != 'T') {
                throw new RuntimeException();
            }
            A04[4] = "DjrmhsDHxGC2SVigK1e7Rl2";
            interfaceC1062Ln.AHl(c1072LxFirst);
        }
        C4S.A00();
    }

    @Override
    public final void AFJ(InterfaceC1062Ln interfaceC1062Ln, C1072Lx c1072Lx) {
        this.A02.add(c1072Lx);
        this.A00 += c1072Lx.A01;
        A03(interfaceC1062Ln, 0L);
    }

    @Override
    public final void AFK(InterfaceC1062Ln interfaceC1062Ln, C1072Lx c1072Lx) {
        this.A02.remove(c1072Lx);
        this.A00 -= c1072Lx.A01;
    }

    @Override
    public final void AFL(InterfaceC1062Ln interfaceC1062Ln, C1072Lx c1072Lx, C1072Lx c1072Lx2) {
        AFK(interfaceC1062Ln, c1072Lx);
        AFJ(interfaceC1062Ln, c1072Lx2);
    }

    @Override
    public final void AFM(InterfaceC1062Ln interfaceC1062Ln, String str, long j, long j2) {
        if (j2 != -1) {
            A03(interfaceC1062Ln, j2);
        }
    }

    @Override
    public final boolean AHz() {
        return true;
    }
}
