package com.facebook.ads.redexgen.core;

import android.content.Context;
import android.os.Bundle;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public final class C2135lw extends AnonymousClass35 {
    public static String[] A0G = {"svIlLfjydeGBu6G0UjrHSopJ4Ky0wypW", "Eix0ooWKKyHx1hOwK", "jEg8xHvrvI0NXBTEehRxqQQjEYaTbIQI", "2fo", "JdZ", "dfBQZRQYRFpeihXeeCDcyjRnxunK4YCt", "ZC", "go43CHW4mwtjJCZZxmpd9eXXAUtGDH29"};
    public boolean A00;
    public boolean A01;
    public boolean A02;
    public boolean A03;
    public boolean A04;
    public boolean A05;
    public boolean A06;
    public boolean A07;
    public boolean A08;
    public boolean A09;

    @MetaExoPlayerCustomization("D25277746 - If all qualities are filtered out, do not use a fixed selection but differ to adaptive track selection in hero.")
    public boolean A0A;
    public boolean A0B;
    public boolean A0C;
    public boolean A0D;
    public final SparseArray<Map<C2149mA, C2127lo>> A0E;
    public final SparseBooleanArray A0F;

    @Deprecated
    public C2135lw() {
        this.A0E = new SparseArray<>();
        this.A0F = new SparseBooleanArray();
        A0W();
    }

    public C2135lw(Context context) {
        super(context);
        this.A0E = new SparseArray<>();
        this.A0F = new SparseBooleanArray();
        A0W();
    }

    @MetaExoPlayerCustomization("Modified to support setExceedRendererCapabilitiesIfAllFilteredOut")
    public C2135lw(Bundle bundle) {
        super(bundle);
        A0W();
        AnonymousClass93 anonymousClass93 = AnonymousClass93.A0J;
        A17(bundle.getBoolean(AnonymousClass93.A0W, anonymousClass93.A0C));
        A11(bundle.getBoolean(AnonymousClass93.A0Q, anonymousClass93.A06));
        A12(bundle.getBoolean(AnonymousClass93.A0R, anonymousClass93.A07));
        A10(bundle.getBoolean(AnonymousClass93.A0H(), anonymousClass93.A05));
        A14(bundle.getBoolean(AnonymousClass93.A0T, anonymousClass93.A09));
        A0x(bundle.getBoolean(AnonymousClass93.A0J(), anonymousClass93.A02));
        A0y(bundle.getBoolean(AnonymousClass93.A0N, anonymousClass93.A03));
        A0v(bundle.getBoolean(AnonymousClass93.A0K, anonymousClass93.A00));
        A0w(bundle.getBoolean(AnonymousClass93.A0L, anonymousClass93.A01));
        A13(bundle.getBoolean(AnonymousClass93.A0S, anonymousClass93.A08));
        A16(bundle.getBoolean(AnonymousClass93.A0V, anonymousClass93.A0B));
        A18(bundle.getBoolean(AnonymousClass93.A0b, anonymousClass93.A0D));
        A0z(bundle.getBoolean(AnonymousClass93.A0O, anonymousClass93.A04));
        A15(bundle.getBoolean(AnonymousClass93.A0U, anonymousClass93.A0A));
        this.A0E = new SparseArray<>();
        A0X(bundle);
        this.A0F = A0R(bundle.getIntArray(AnonymousClass93.A0X));
    }

    @MetaExoPlayerCustomization("To support exceedRendererCapabilitiesIfAllFilteredOut")
    public C2135lw(AnonymousClass93 anonymousClass93) {
        super(anonymousClass93);
        this.A0C = anonymousClass93.A0C;
        this.A06 = anonymousClass93.A06;
        this.A07 = anonymousClass93.A07;
        this.A05 = anonymousClass93.A05;
        this.A09 = anonymousClass93.A09;
        this.A02 = anonymousClass93.A02;
        this.A03 = anonymousClass93.A03;
        this.A00 = anonymousClass93.A00;
        this.A01 = anonymousClass93.A01;
        this.A08 = anonymousClass93.A08;
        this.A0B = anonymousClass93.A0B;
        this.A0D = anonymousClass93.A0D;
        this.A04 = anonymousClass93.A04;
        this.A0A = anonymousClass93.A0A;
        this.A0E = A0G((SparseArray<Map<C2149mA, C2127lo>>) anonymousClass93.A0E);
        this.A0F = anonymousClass93.A0F.clone();
    }

    public static SparseArray<Map<C2149mA, C2127lo>> A0G(SparseArray<Map<C2149mA, C2127lo>> sparseArray) {
        SparseArray<Map<C2149mA, C2127lo>> sparseArray2 = new SparseArray<>();
        for (int i = 0; i < sparseArray.size(); i++) {
            sparseArray2.put(sparseArray.keyAt(i), new HashMap(sparseArray.valueAt(i)));
        }
        return sparseArray2;
    }

    private SparseBooleanArray A0R(int[] iArr) {
        if (iArr == null) {
            return new SparseBooleanArray();
        }
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray(iArr.length);
        for (int i : iArr) {
            sparseBooleanArray.append(i, true);
        }
        return sparseBooleanArray;
    }

    @MetaExoPlayerCustomization("To support setting exceedRendererCapabilitiesIfAllFilteredOut")
    private void A0W() {
        this.A0C = true;
        this.A06 = false;
        this.A07 = true;
        this.A05 = false;
        this.A09 = true;
        this.A02 = false;
        this.A03 = false;
        this.A00 = false;
        this.A01 = false;
        this.A08 = true;
        this.A0B = true;
        this.A0D = false;
        this.A04 = true;
        this.A0A = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void A0X(Bundle bundle) {
        AbstractC0779Am abstractC0779AmA01;
        SparseArray sparseArrayA00;
        int[] intArray = bundle.getIntArray(AnonymousClass93.A0B());
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(AnonymousClass93.A0C());
        if (parcelableArrayList == null) {
            abstractC0779AmA01 = AbstractC0779Am.A03();
        } else {
            C1R<C2149mA> c1r = C2149mA.A05;
            String[] strArr = A0G;
            if (strArr[1].length() == strArr[6].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0G;
            strArr2[2] = "KlsLVpZXOsku5rL5eePguYtdE3UqynPn";
            strArr2[5] = "qpearOu2I9fJNwBbehSRgczBWJlsPwpY";
            abstractC0779AmA01 = C3S.A01(c1r, parcelableArrayList);
        }
        SparseArray sparseParcelableArray = bundle.getSparseParcelableArray(AnonymousClass93.A0Y);
        if (sparseParcelableArray == null) {
            sparseArrayA00 = new SparseArray();
        } else {
            sparseArrayA00 = C3S.A00(C2127lo.A05, sparseParcelableArray);
        }
        if (intArray == null || intArray.length != abstractC0779AmA01.size()) {
            return;
        }
        for (int i = 0; i < intArray.length; i++) {
            A0r(intArray[i], (C2149mA) abstractC0779AmA01.get(i), (C2127lo) sparseArrayA00.get(i));
        }
    }

    @Override
    public final C2135lw A0m(int i, int i2, boolean z) {
        super.A0m(i, i2, z);
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0066, code lost:
    
        if (com.facebook.ads.redexgen.core.AbstractC06244a.A1E(r4, r8) != false) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0068, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0079, code lost:
    
        if (com.facebook.ads.redexgen.core.AbstractC06244a.A1E(r4, r8) != false) goto L15;
     */
    @Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C2135lw A0r(int i, C2149mA c2149mA, C2127lo c2127lo) {
        Map<C2149mA, C2127lo> map = this.A0E.get(i);
        if (map == null) {
            map = new HashMap<>();
            this.A0E.put(i, map);
        }
        boolean zContainsKey = map.containsKey(c2149mA);
        String[] strArr = A0G;
        if (strArr[4].length() != strArr[3].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0G;
        strArr2[2] = "Tjk1w46Zsfr3yClteaW3dwU9W0N7TL6X";
        strArr2[5] = "KoERYkShSHV4ud9Re9JlKSMcCXAYN5Cn";
        if (zContainsKey) {
            C2127lo c2127lo2 = map.get(c2149mA);
            String[] strArr3 = A0G;
            if (strArr3[0].charAt(28) != strArr3[7].charAt(28)) {
                String[] strArr4 = A0G;
                strArr4[1] = "d9Fp2lxah88hbF8VY";
                strArr4[6] = "He";
            } else {
                String[] strArr5 = A0G;
                strArr5[0] = "6G3DmRjovsWEEopHgL7H9VeUKDmRIoIA";
                strArr5[7] = "heYp32NvS9S7pouisOnfj6NnH9zTXJMv";
            }
        }
        map.put(c2149mA, c2127lo);
        return this;
    }

    @Override
    public final C2135lw A0n(Context context) {
        super.A0n(context);
        return this;
    }

    @Override
    public final C2135lw A0o(Context context, boolean z) {
        super.A0o(context, z);
        return this;
    }

    public final C2135lw A0u(C2271oA c2271oA) {
        super.A0W(c2271oA);
        return this;
    }

    public final C2135lw A0v(boolean z) {
        this.A00 = z;
        return this;
    }

    public final C2135lw A0w(boolean z) {
        this.A01 = z;
        return this;
    }

    public final C2135lw A0x(boolean z) {
        this.A02 = z;
        return this;
    }

    public final C2135lw A0y(boolean z) {
        this.A03 = z;
        return this;
    }

    public final C2135lw A0z(boolean z) {
        this.A04 = z;
        return this;
    }

    public final C2135lw A10(boolean z) {
        this.A05 = z;
        return this;
    }

    public final C2135lw A11(boolean z) {
        this.A06 = z;
        return this;
    }

    public final C2135lw A12(boolean z) {
        this.A07 = z;
        return this;
    }

    public final C2135lw A13(boolean z) {
        this.A08 = z;
        return this;
    }

    public final C2135lw A14(boolean z) {
        this.A09 = z;
        return this;
    }

    @MetaExoPlayerCustomization("D25277746")
    public final C2135lw A15(boolean z) {
        this.A0A = z;
        return this;
    }

    public final C2135lw A16(boolean z) {
        this.A0B = z;
        return this;
    }

    public final C2135lw A17(boolean z) {
        this.A0C = z;
        return this;
    }

    public final C2135lw A18(boolean z) {
        this.A0D = z;
        return this;
    }

    @Override
    public final AnonymousClass93 A0p() {
        return new AnonymousClass93(this);
    }
}
