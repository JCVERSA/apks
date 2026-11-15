package com.facebook.ads.redexgen.core;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import androidx.exifinterface.media.ExifInterface;
import com.transsion.vishatransfer.socket.TransferProtocol;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

public final class KE extends AbstractC1440aB implements View.OnClickListener {
    public static byte[] A0D;
    public static String[] A0E = {"zJy5N3L509NIqOAGCBmq2SY7W4xK8HwT", "H2", ExifInterface.LONGITUDE_EAST, "vMyDxD7xbIgTd", "0bWjMiKAxESivC84rSJqWsF4vTTr4zpm", "NIsgbM1VoVKu1UXdUm6ipB03AExBFzGo", "hF", "2iAtRdiONhZPMieR3MSLVzPYox5YjbDW"};
    public static final int A0F;
    public int A00;
    public int A01;
    public Bitmap A02;
    public Paint A03;
    public Rect A04;
    public C1635dL A05;
    public C1332Wd A06;
    public KG A07;
    public String A08;
    public String A09;
    public boolean A0A;
    public final a5 A0B;
    public final Map<String, String> A0C;

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0D, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 121);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A0D = new byte[]{-30, -21, -24, -30, -22, -34, -14, -18, -12, -15, -30, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -23, -27, -80, -16, -24, -10, -10, -24, -15, -22, -24, -11, 40, 38, 24, 37, 22, 31, 28, 22, 30};
    }

    static {
        A04();
        A0F = (int) (AbstractC1338Wl.A02 * 24.0f);
    }

    public KE(C1635dL c1635dL, AbstractC1910hy abstractC1910hy, C1098My c1098My, US us, InterfaceC1366Xn interfaceC1366Xn, C1708eX c1708eX, XH xh, InterfaceC1348Wv interfaceC1348Wv) {
        this(c1635dL, abstractC1910hy.A0r(), c1098My, abstractC1910hy.A20().A0J().A06(), us, interfaceC1366Xn, c1708eX, xh, abstractC1910hy.A21(), interfaceC1348Wv);
        this.A0B.A08(abstractC1910hy);
    }

    public KE(C1635dL c1635dL, String str, C1098My c1098My, US us, InterfaceC1366Xn interfaceC1366Xn, C1708eX c1708eX, XH xh, N3 n3) {
        this(c1635dL, str, c1098My, false, us, interfaceC1366Xn, c1708eX, xh, n3);
    }

    public KE(C1635dL c1635dL, String str, C1098My c1098My, boolean z, US us, InterfaceC1366Xn interfaceC1366Xn, C1708eX c1708eX, XH xh, N3 n3) {
        super(c1635dL, c1098My);
        this.A0C = new HashMap();
        this.A05 = c1635dL;
        this.A0A = z;
        this.A0B = new a5(c1635dL, str, c1708eX, xh, us, n3, interfaceC1366Xn);
        setOnClickListener(this);
        XP.A0E(1001, this);
    }

    public KE(C1635dL c1635dL, String str, C1098My c1098My, boolean z, US us, InterfaceC1366Xn interfaceC1366Xn, C1708eX c1708eX, XH xh, N3 n3, InterfaceC1348Wv interfaceC1348Wv) {
        super(c1635dL, c1098My);
        this.A0C = new HashMap();
        this.A05 = c1635dL;
        this.A0A = z;
        this.A0B = new a5(c1635dL, str, c1708eX, xh, us, n3, interfaceC1366Xn, interfaceC1348Wv);
        setOnClickListener(this);
        XP.A0E(1001, this);
    }

    public static Bitmap A00(Drawable drawable) {
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    private void A02() {
        if (this.A0A && this.A09 != null) {
            this.A02 = A00(XY.A03(this.A05, this.A09.contains(A01(12, 12, 10)) ? XX.MESSENGER : XX.WHATSAPP));
            this.A03 = new Paint();
            setPadding(A0F, 0, A0F, 0);
        }
    }

    private void A03() {
        if (this.A06 != null) {
            C1332Wd c1332Wd = this.A06;
            if (A0E[0].charAt(27) != 'K') {
                throw new RuntimeException();
            }
            String[] strArr = A0E;
            strArr[6] = "Jn";
            strArr[1] = "nM";
            c1332Wd.A06();
        }
        if (this.A07 != null) {
            this.A07.A04();
        }
    }

    public static boolean A05(AbstractC1910hy abstractC1910hy) {
        return ((long) abstractC1910hy.A1w()) > 0 && abstractC1910hy.A1u() >= 0;
    }

    public final ME A0E(String str) {
        if (TextUtils.isEmpty(this.A08) || TextUtils.isEmpty(this.A09)) {
            return ME.A09;
        }
        A03();
        this.A0C.put(A01(0, 12, 6), str);
        return this.A0B.A05(this.A08, this.A09, this.A0C);
    }

    public final boolean A0F(AbstractC1910hy abstractC1910hy, AbstractC1365Xm abstractC1365Xm) {
        if (this.A06 != null || !A05(abstractC1910hy) || abstractC1910hy.A24().A01() == null || abstractC1910hy.A24().A00() == null) {
            return false;
        }
        this.A07 = new KG(abstractC1910hy.A1u(), abstractC1910hy.A1w(), abstractC1910hy.A1v(), abstractC1910hy.A24().A01(), abstractC1910hy.A24().A00(), abstractC1365Xm, this);
        this.A06 = new C1332Wd(abstractC1910hy.A1w(), this.A07);
        this.A06.A07();
        return true;
    }

    public a5 getCtaActionHelper() {
        return this.A0B;
    }

    @Override
    public final void onClick(View view) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            A0E(A01(24, 9, 58));
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }

    @Override
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        A03();
    }

    @Override
    public final void onDraw(Canvas canvas) {
        if (this.A02 != null) {
            this.A04 = new Rect(0, 0, this.A02.getWidth(), this.A02.getHeight());
            this.A01 = this.A02.getWidth();
            this.A00 = 12;
            int shift = (this.A01 + this.A00) / 2;
            canvas.save();
            canvas.translate(shift, 0.0f);
        }
        super.onDraw(canvas);
        if (this.A02 != null) {
            float width = (getWidth() / 2.0f) - ((getPaint().measureText((String) getText()) + 10.0f) / 2.0f);
            float textWidth = this.A01;
            float f = width - textWidth;
            float textWidth2 = this.A00;
            int i = (int) (f - textWidth2);
            int top = (getHeight() / 2) - (this.A01 / 2);
            int left = this.A01;
            Rect destRect = new Rect(i, top, left + i, this.A01 + top);
            canvas.drawBitmap(this.A02, this.A04, destRect, this.A03);
            canvas.restore();
        }
    }

    @Override
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i != 0) {
            A03();
        }
    }

    @Override
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (!z) {
            A03();
        }
    }

    public void setCreativeAsCtaLoggingHelper(C1334Wh c1334Wh) {
        this.A0B.A09(c1334Wh);
    }

    public void setCta(C1099Mz c1099Mz, String str, Map<String, String> extraData) {
        setCta(c1099Mz, str, extraData, null);
    }

    public void setCta(C1099Mz c1099Mz, String str, Map<String, String> extraData, InterfaceC1348Wv interfaceC1348Wv, InterfaceC1435a4 interfaceC1435a4) {
        setCta(c1099Mz, str, extraData, interfaceC1435a4);
        this.A0B.A0A(interfaceC1348Wv);
    }

    public void setCta(C1099Mz c1099Mz, String str, Map<String, String> extraData, InterfaceC1435a4 interfaceC1435a4) {
        this.A08 = str;
        this.A09 = c1099Mz.A05();
        this.A0C.putAll(extraData);
        this.A0B.A0B(interfaceC1435a4);
        String strA04 = c1099Mz.A04();
        if (!TextUtils.isEmpty(strA04)) {
            String buttonText = this.A09;
            if (!TextUtils.isEmpty(buttonText)) {
                setText(strA04);
                A02();
                return;
            }
        }
        setVisibility(8);
    }

    public void setIsInAppBrowser(boolean z) {
        this.A0B.A0C(z);
    }
}
