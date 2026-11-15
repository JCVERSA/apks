package com.facebook.ads.redexgen.core;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.ImageView;
import java.lang.ref.WeakReference;
import java.util.Arrays;

public final class KZ extends AsyncTask<String, Void, Bitmap[]> implements SM {
    public static byte[] A0A;
    public static String[] A0B = {"", "", "tk2ciTRcvMIsX7PNNAsbqXfz4cjsZNd3", "5z01THRYCfHu8Ay0wH5meUoLhFHMZyns", "VYXg8wObxMc7BeMRrzz5UEer", "1KBjMNFbEleLBxdQS2J3kw1LUfJ9GnIf", "PvEnCL5gthOso5MBRjJGXOGrZMhqPY73", "dw8jODS3DySi5ymezTFU6bMU1A3tjNXQ"};
    public int A00;
    public int A01;
    public InterfaceC1419Zo A02;
    public boolean A03;
    public final int A04;
    public final int A05;
    public final WeakReference<C1416Zl> A06;
    public final WeakReference<C1635dL> A07;
    public final WeakReference<ImageView> A08;
    public final WeakReference<ViewGroup> A09;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 84);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A0A = new byte[]{45, 47, 36, 47, 56, 35, 41};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 15 out of bounds for length 14
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:125)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:656)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    private final Bitmap[] A03(String... strArr) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return null;
        }
        if (A0B[2].charAt(8) == 'z') {
            throw new RuntimeException();
        }
        A0B[2] = "Jzd8uX0XYQJZtrGuhrAJ2cBOXObB1Sdn";
        try {
            String str = strArr[0];
            Bitmap bitmapA0O = null;
            Bitmap bitmapA01 = null;
            C1635dL c1635dL = this.A07.get();
            String[] strArr2 = A0B;
            if (strArr2[6].charAt(7) == strArr2[5].charAt(7)) {
                throw new RuntimeException();
            }
            A0B[2] = "bv0UYUwFwYp94NQ105UqaFrunwxSHAuK";
            if (c1635dL == null) {
                return new Bitmap[]{null, null};
            }
            try {
                bitmapA0O = new SF(c1635dL).A0O(str, this.A00, this.A01);
                if (bitmapA0O != null && !this.A03) {
                    bitmapA01 = XW.A01(c1635dL, bitmapA0O, this.A04, this.A05);
                }
            } catch (Throwable th) {
                c1635dL.A08().AAy(A00(0, 7, 30), AbstractC1248Sv.A1V, new C1249Sw(th));
            }
            return new Bitmap[]{bitmapA0O, bitmapA01};
        } catch (Throwable th2) {
            AbstractC1314Vl.A00(th2, this);
            String[] strArr3 = A0B;
            if (strArr3[7].charAt(9) == strArr3[3].charAt(9)) {
                return null;
            }
            A0B[2] = "caPrFgLZt2WaPlUZLvOtKYt7S4BN2jGU";
            return null;
        }
    }

    static {
        A01();
    }

    public KZ(ViewGroup viewGroup, int i, int i2, C1635dL c1635dL) {
        this.A03 = false;
        this.A00 = -1;
        this.A01 = -1;
        this.A07 = new WeakReference<>(c1635dL);
        this.A06 = null;
        this.A08 = null;
        this.A09 = new WeakReference<>(viewGroup);
        this.A04 = i;
        this.A05 = i2;
    }

    public KZ(ViewGroup viewGroup, C1635dL c1635dL) {
        this(viewGroup, 12, 16, c1635dL);
    }

    public KZ(ImageView imageView, C1635dL c1635dL) {
        this.A03 = false;
        this.A00 = -1;
        this.A01 = -1;
        this.A07 = new WeakReference<>(c1635dL);
        this.A06 = null;
        this.A08 = new WeakReference<>(imageView);
        this.A09 = null;
        this.A04 = 0;
        this.A05 = 1;
    }

    public KZ(C1416Zl c1416Zl, C1635dL c1635dL) {
        this.A03 = false;
        this.A00 = -1;
        this.A01 = -1;
        this.A07 = new WeakReference<>(c1635dL);
        this.A06 = new WeakReference<>(c1416Zl);
        this.A08 = null;
        this.A09 = null;
        this.A04 = 12;
        this.A05 = 16;
    }

    private final void A02(Bitmap[] bitmapArr) throws Throwable {
        C1416Zl c1416Zl;
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            if (this.A08 != null) {
                ImageView imageView = this.A08.get();
                if (bitmapArr[1] != null && !this.A03 && this.A04 != 0 && imageView != null) {
                    imageView.setImageBitmap(bitmapArr[1]);
                    return;
                } else if (imageView != null) {
                    imageView.setImageBitmap(bitmapArr[0]);
                }
            }
            if (this.A06 != null && (c1416Zl = this.A06.get()) != null) {
                c1416Zl.setImage(bitmapArr[0], bitmapArr[1]);
            }
            if (this.A09 != null && this.A09.get() != null && bitmapArr[1] != null) {
                XP.A0Q(this.A09.get(), new BitmapDrawable(this.A07.get().getResources(), bitmapArr[1]));
            }
            if (this.A02 != null) {
                this.A02.ADT(new C1418Zn(bitmapArr[0]));
            }
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }

    public final KZ A04() {
        this.A00 = -1;
        this.A01 = -1;
        return this;
    }

    public final KZ A05(int i, int i2) {
        this.A00 = i;
        this.A01 = i2;
        return this;
    }

    public final KZ A06(InterfaceC1419Zo interfaceC1419Zo) {
        this.A02 = interfaceC1419Zo;
        return this;
    }

    public final void A07(String str) {
        if (TextUtils.isEmpty(str)) {
            if (this.A02 != null) {
                this.A02.ADT(new C1418Zn(null));
                return;
            }
            return;
        }
        executeOnExecutor(XU.A06, str);
    }

    @Override
    public final C1635dL A6e() {
        return this.A07.get();
    }

    @Override
    public final Bitmap[] doInBackground(String[] strArr) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return null;
        }
        try {
            return A03(strArr);
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
            return null;
        }
    }

    @Override
    public final void onPostExecute(Bitmap[] bitmapArr) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            A02(bitmapArr);
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
