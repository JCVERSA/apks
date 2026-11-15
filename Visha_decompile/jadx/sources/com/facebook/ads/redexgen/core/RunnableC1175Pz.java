package com.facebook.ads.redexgen.core;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;

public final class RunnableC1175Pz implements Runnable {
    public static Comparator<C1174Py> A04;
    public static byte[] A05;
    public static String[] A06 = {"ZWObiMwNkhaZGfEgqHenCxQvRQCezgXM", "iKaB5ntiNbaiz6tgW", "JplxjEE1IYbCInXXNCkbxZV0", "UEoPOy6vCmPnpiXEMXmcZKvRtDoHf0nN", "JvUlYJe7lgtJoJN1gtwvhyIs", "RcG3r4ysor4dcgCWVGn8CFYsdgQ7jZkt", "cxmAjzJ", "EyohaYHYoMvb6y9gFGiucolIeU60NsdM"};
    public static final ThreadLocal<RunnableC1175Pz> A07;
    public long A00;
    public long A01;
    public ArrayList<C06826g> A02 = new ArrayList<>();
    public ArrayList<C1174Py> A03 = new ArrayList<>();

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 104);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A05 = new byte[]{105, 109, 27, 117, 94, 72, 79, 94, 95, 27, 107, 73, 94, 93, 94, 79, 88, 83, 100, 96, 22, 102, 68, 83, 80, 83, 66, 85, 94};
    }

    static {
        A03();
        A07 = new ThreadLocal<>();
        A04 = new C1173Px();
    }

    private AbstractC1182Qg A00(C06826g c06826g, int i, long j) {
        if (A08(c06826g, i)) {
            return null;
        }
        QW qw = c06826g.A0r;
        try {
            c06826g.A1M();
            AbstractC1182Qg abstractC1182QgA0I = qw.A0I(i, false, j);
            if (abstractC1182QgA0I != null) {
                if (abstractC1182QgA0I.A0e() && !abstractC1182QgA0I.A0f()) {
                    qw.A0T(abstractC1182QgA0I.A0H);
                } else {
                    qw.A0Z(abstractC1182QgA0I, false);
                }
            }
            return abstractC1182QgA0I;
        } finally {
            c06826g.A1o(false);
        }
    }

    private void A02() {
        C1174Py c1174Py;
        int size = this.A02.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            C06826g c06826g = this.A02.get(i2);
            int viewCount = c06826g.getWindowVisibility();
            if (viewCount == 0) {
                c06826g.A02.A04(c06826g, false);
                int viewCount2 = c06826g.A02.A00;
                i += viewCount2;
            }
        }
        this.A03.ensureCapacity(i);
        int j = 0;
        for (int i3 = 0; i3 < size; i3++) {
            C06826g c06826g2 = this.A02.get(i3);
            int viewCount3 = c06826g2.getWindowVisibility();
            if (viewCount3 == 0) {
                C1816gJ c1816gJ = c06826g2.A02;
                int viewCount4 = c1816gJ.A01;
                int i4 = Math.abs(viewCount4);
                int viewCount5 = c1816gJ.A02;
                int i5 = i4 + Math.abs(viewCount5);
                for (int i6 = 0; i6 < viewCount * 2; i6 += 2) {
                    int viewCount6 = this.A03.size();
                    if (j >= viewCount6) {
                        c1174Py = new C1174Py();
                        this.A03.add(c1174Py);
                    } else {
                        c1174Py = this.A03.get(j);
                    }
                    int totalTaskCount = i6 + 1;
                    int totalTaskIndex = c1816gJ.A03[totalTaskCount];
                    c1174Py.A04 = totalTaskIndex <= i5;
                    c1174Py.A02 = i5;
                    c1174Py.A00 = totalTaskIndex;
                    c1174Py.A03 = c06826g2;
                    int totalTaskCount2 = c1816gJ.A03[i6];
                    c1174Py.A01 = totalTaskCount2;
                    j++;
                }
            }
        }
        Collections.sort(this.A03, A04);
    }

    private void A04(long j) {
        for (int i = 0; i < i; i++) {
            C1174Py c1174Py = this.A03.get(i);
            if (A06[7].charAt(15) != 'g') {
                throw new RuntimeException();
            }
            A06[6] = "gpZ2KV2";
            C1174Py c1174Py2 = c1174Py;
            if (c1174Py2.A03 == null) {
                return;
            }
            A06(c1174Py2, j);
            c1174Py2.A00();
        }
    }

    private final void A05(long j) {
        A02();
        A04(j);
    }

    private void A06(C1174Py c1174Py, long j) {
        AbstractC1182Qg abstractC1182QgA00 = A00(c1174Py.A03, c1174Py.A01, c1174Py.A04 ? Long.MAX_VALUE : j);
        if (abstractC1182QgA00 != null && abstractC1182QgA00.A09 != null && abstractC1182QgA00.A0e() && !abstractC1182QgA00.A0f()) {
            C06826g c06826g = abstractC1182QgA00.A09.get();
            if (A06[3].charAt(4) != 'O') {
                throw new RuntimeException();
            }
            String[] strArr = A06;
            strArr[0] = "y01bdO2VJYUoPT1JEr7HCeGbjhjinZRt";
            strArr[5] = "ogbTL45N3M3fzw26YptkCantwmvhDLLM";
            A07(c06826g, j);
        }
    }

    private void A07(C06826g c06826g, long j) {
        if (c06826g == null) {
            return;
        }
        if (c06826g.A0C && c06826g.A01.A06() != 0) {
            c06826g.A1P();
        }
        C1816gJ c1816gJ = c06826g.A02;
        c1816gJ.A04(c06826g, true);
        if (c1816gJ.A00 != 0) {
            try {
                OQ.A01(A01(0, 18, 83));
                c06826g.A0s.A05(c06826g.A04);
                for (int i = 0; i < c1816gJ.A00 * 2; i += 2) {
                    A00(c06826g, c1816gJ.A03[i], j);
                }
                OQ.A00();
            } catch (Throwable th) {
                OQ.A00();
                throw th;
            }
        }
    }

    public static boolean A08(C06826g c06826g, int i) {
        int iA06 = c06826g.A01.A06();
        for (int i2 = 0; i2 < iA06; i2++) {
            AbstractC1182Qg abstractC1182QgA0F = C06826g.A0F(c06826g.A01.A0A(i2));
            int childCount = abstractC1182QgA0F.A03;
            if (childCount == i && !abstractC1182QgA0F.A0f()) {
                return true;
            }
        }
        return false;
    }

    public final void A09(C06826g c06826g) {
        this.A02.add(c06826g);
    }

    public final void A0A(C06826g c06826g) {
        this.A02.remove(c06826g);
    }

    public final void A0B(C06826g c06826g, int i, int i2) {
        if (c06826g.isAttachedToWindow()) {
            long j = this.A01;
            String[] strArr = A06;
            if (strArr[0].charAt(20) != strArr[5].charAt(20)) {
                throw new RuntimeException();
            }
            A06[6] = "T8Y6UBY";
            if (j == 0) {
                this.A01 = c06826g.getNanoTime();
                c06826g.post(this);
            }
        }
        c06826g.A02.A03(i, i2);
    }

    @Override
    public final void run() {
        try {
            OQ.A01(A01(18, 11, 94));
            if (this.A02.isEmpty()) {
                this.A01 = 0L;
                if (A06[6].length() != 7) {
                    throw new RuntimeException();
                }
                A06[7] = "jOxF3Mzmcdx8L8GgZmI4I6pGAsyGGZV3";
                OQ.A00();
                return;
            }
            int size = this.A02.size();
            long jMax = 0;
            for (int i = 0; i < size; i++) {
                C06826g c06826g = this.A02.get(i);
                if (c06826g.getWindowVisibility() == 0) {
                    jMax = Math.max(c06826g.getDrawingTime(), jMax);
                }
            }
            if (jMax == 0) {
                this.A01 = 0L;
                OQ.A00();
            } else {
                A05(TimeUnit.MILLISECONDS.toNanos(jMax) + this.A00);
                this.A01 = 0L;
                OQ.A00();
            }
        } catch (Throwable th) {
            this.A01 = 0L;
            OQ.A00();
            throw th;
        }
    }
}
