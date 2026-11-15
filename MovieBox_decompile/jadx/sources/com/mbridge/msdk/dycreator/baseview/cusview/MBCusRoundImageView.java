package com.mbridge.msdk.dycreator.baseview.cusview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Xfermode;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import com.mbridge.msdk.dycreator.baseview.GradientOrientationUtils;
import com.mbridge.msdk.dycreator.engine.b;
import com.mbridge.msdk.dycreator.engine.c;
import com.mbridge.msdk.foundation.tools.o0;
import com.transsion.gslb.Utils;
import java.util.HashMap;

public class MBCusRoundImageView extends ImageView {

    private int f33715a;

    private int f33716b;

    private int f33717c;

    private int f33718d;

    private Xfermode f33719e;

    private int f33720f;

    private int f33721g;

    private int f33722h;

    private int f33723i;

    private int f33724j;

    private int f33725k;

    private int f33726l;

    private int f33727m;

    private int f33728n;

    private float[] f33729o;

    private float[] f33730p;

    private RectF f33731q;

    private RectF f33732r;

    private boolean f33733s;

    private boolean f33734t;

    private Path f33735u;

    private Paint f33736v;

    static class AnonymousClass1 {

        static final int[] f33737a;

        static {
            int[] iArr = new int[c.values().length];
            f33737a = iArr;
            try {
                iArr[c.id.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f33737a[c.src.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f33737a[c.background.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f33737a[c.contentDescription.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f33737a[c.tag.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f33737a[c.visibility.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f33737a[c.scaleType.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f33737a[c.padding.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f33737a[c.paddingTop.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f33737a[c.paddingBottom.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f33737a[c.paddingLeft.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f33737a[c.paddingRight.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f33737a[c.layout_width.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f33737a[c.layout_height.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f33737a[c.gravity.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f33737a[c.layout_gravity.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
        }
    }

    public MBCusRoundImageView(Context context) {
        this(context, null);
    }

    private void a(Canvas canvas) {
        a(canvas, this.f33727m, this.f33728n, this.f33732r, this.f33729o);
    }

    private void b() {
        int i10;
        int i11;
        int i12;
        try {
            if (this.f33729o == null || this.f33730p == null) {
                return;
            }
            int i13 = 0;
            while (true) {
                i10 = 2;
                if (i13 >= 2) {
                    break;
                }
                float[] fArr = this.f33729o;
                float f10 = this.f33723i;
                fArr[i13] = f10;
                this.f33730p[i13] = f10 - (this.f33727m / 2.0f);
                i13++;
            }
            while (true) {
                i11 = 4;
                if (i10 >= 4) {
                    break;
                }
                float[] fArr2 = this.f33729o;
                float f11 = this.f33724j;
                fArr2[i10] = f11;
                this.f33730p[i10] = f11 - (this.f33727m / 2.0f);
                i10++;
            }
            while (true) {
                if (i11 >= 6) {
                    break;
                }
                float[] fArr3 = this.f33729o;
                float f12 = this.f33725k;
                fArr3[i11] = f12;
                this.f33730p[i11] = f12 - (this.f33727m / 2.0f);
                i11++;
            }
            for (i12 = 6; i12 < 8; i12++) {
                float[] fArr4 = this.f33729o;
                float f13 = this.f33726l;
                fArr4[i12] = f13;
                this.f33730p[i12] = f13 - (this.f33727m / 2.0f);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void c() {
        RectF rectF = this.f33732r;
        if (rectF != null) {
            float f10 = this.f33727m / 2.0f;
            rectF.set(f10, f10, this.f33720f - f10, this.f33721g - f10);
        }
    }

    private void d() {
        RectF rectF = this.f33731q;
        if (rectF != null) {
            rectF.set(0.0f, 0.0f, this.f33720f, this.f33721g);
        }
    }

    public ViewGroup.LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        HashMap<String, c> mapC = b.a().c();
        int attributeCount = attributeSet.getAttributeCount();
        for (int i10 = 0; i10 < attributeCount; i10++) {
            c cVar = mapC.get(attributeSet.getAttributeName(i10));
            if (cVar != null) {
                int i11 = AnonymousClass1.f33737a[cVar.ordinal()];
                if (i11 == 6) {
                    String attributeValue = attributeSet.getAttributeValue(i10);
                    if (!TextUtils.isEmpty(attributeValue)) {
                        if (attributeValue.equals("invisible")) {
                            setVisibility(4);
                        } else if (attributeValue.equalsIgnoreCase("gone")) {
                            setVisibility(8);
                        }
                    }
                } else if (i11 == 13) {
                    String attributeValue2 = attributeSet.getAttributeValue(i10);
                    if (attributeValue2.startsWith("f") || attributeValue2.startsWith("m")) {
                        layoutParams.width = -1;
                    } else if (attributeValue2.startsWith("wrap")) {
                        layoutParams.width = -2;
                    } else {
                        layoutParams.width = b.a().a(attributeValue2);
                    }
                } else if (i11 == 14) {
                    String attributeValue3 = attributeSet.getAttributeValue(i10);
                    if (attributeValue3.startsWith("f") || attributeValue3.startsWith("m")) {
                        layoutParams.height = -1;
                    } else if (attributeValue3.startsWith("wrap")) {
                        layoutParams.height = -2;
                    } else {
                        layoutParams.height = b.a().a(attributeValue3);
                    }
                }
            }
        }
        return layoutParams;
    }

    @Override
    protected void onDraw(Canvas canvas) {
        if (canvas == null) {
            return;
        }
        try {
            canvas.saveLayer(this.f33731q, null, 31);
            int i10 = this.f33720f;
            int i11 = this.f33727m * 2;
            float f10 = (i10 - i11) * 1.0f;
            float f11 = i10;
            int i12 = this.f33721g;
            float f12 = i12;
            canvas.scale(f10 / f11, ((i12 - i11) * 1.0f) / f12, f11 / 2.0f, f12 / 2.0f);
            super.onDraw(canvas);
            Paint paint = this.f33736v;
            if (paint != null) {
                paint.reset();
                this.f33736v.setAntiAlias(true);
                this.f33736v.setStyle(Paint.Style.FILL);
                this.f33736v.setXfermode(this.f33719e);
            }
            Path path = this.f33735u;
            if (path != null) {
                path.reset();
                this.f33735u.addRoundRect(this.f33731q, this.f33730p, Path.Direction.CCW);
            }
            canvas.drawPath(this.f33735u, this.f33736v);
            Paint paint2 = this.f33736v;
            if (paint2 != null) {
                paint2.setXfermode(null);
            }
            canvas.restore();
            if (this.f33733s) {
                a(canvas);
            }
        } catch (Exception e10) {
            o0.a("MBridgeImageView", e10.getMessage());
        }
    }

    @Override
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        try {
            this.f33720f = i10;
            this.f33721g = i11;
            if (this.f33734t) {
                b();
            } else {
                a();
            }
            c();
            d();
        } catch (Exception e10) {
            o0.b("MBridgeImageView", e10.getMessage());
        }
    }

    public void setAttributeSet(AttributeSet attributeSet) {
        String[] strArrSplit;
        HashMap<String, c> mapC = b.a().c();
        int attributeCount = attributeSet.getAttributeCount();
        for (int i10 = 0; i10 < attributeCount; i10++) {
            c cVar = mapC.get(attributeSet.getAttributeName(i10));
            if (cVar != null) {
                switch (AnonymousClass1.f33737a[cVar.ordinal()]) {
                    case 1:
                        String attributeValue = attributeSet.getAttributeValue(i10);
                        if (attributeValue.startsWith("@+id/")) {
                            setId(attributeValue.substring(5).hashCode());
                        }
                        break;
                    case 2:
                        b.a().a(attributeSet.getAttributeValue(i10), this);
                        break;
                    case 3:
                        String attributeValue2 = attributeSet.getAttributeValue(i10);
                        if (attributeValue2.startsWith(Utils.SEPARATOR)) {
                            try {
                                strArrSplit = attributeValue2.split("-");
                            } catch (Exception unused) {
                                strArrSplit = null;
                            }
                            if (strArrSplit != null && strArrSplit.length <= 2) {
                                setBackgroundColor(b.a().d(attributeSet.getAttributeValue(i10)));
                            } else if (strArrSplit == null || strArrSplit.length != 3) {
                                setBackgroundColor(b.a().d(attributeSet.getAttributeValue(i10)));
                            } else {
                                try {
                                    GradientDrawable gradientDrawable = new GradientDrawable(GradientOrientationUtils.getOrientation(strArrSplit[2]), new int[]{Color.parseColor(strArrSplit[0]), Color.parseColor(strArrSplit[1])});
                                    gradientDrawable.setGradientType(0);
                                    setBackground(gradientDrawable);
                                } catch (Exception unused2) {
                                    setBackgroundColor(b.a().d(attributeSet.getAttributeValue(i10)));
                                }
                            }
                        } else {
                            if (attributeValue2.startsWith("@drawable/")) {
                                attributeValue2 = attributeValue2.substring(10);
                            }
                            setBackgroundResource(getResources().getIdentifier(attributeValue2, "drawable", getContext().getPackageName()));
                        }
                        break;
                    case 4:
                        String attributeValue3 = attributeSet.getAttributeValue(i10);
                        if (!TextUtils.isEmpty(attributeValue3)) {
                            CharSequence charSequence = (String) com.mbridge.msdk.dycreator.utils.b.f34063a.get(attributeValue3.substring(8));
                            if (!TextUtils.isEmpty(charSequence)) {
                                setContentDescription(charSequence);
                            }
                        }
                        break;
                    case 5:
                        String attributeValue4 = attributeSet.getAttributeValue(i10);
                        if (!TextUtils.isEmpty(attributeValue4)) {
                            String str = com.mbridge.msdk.dycreator.utils.b.f34063a.get(attributeValue4.substring(8));
                            if (!TextUtils.isEmpty(str)) {
                                setTag(str);
                            }
                        }
                        break;
                    case 6:
                        String attributeValue5 = attributeSet.getAttributeValue(i10);
                        if (!TextUtils.isEmpty(attributeValue5)) {
                            if (attributeValue5.equals("invisible")) {
                                setVisibility(4);
                            } else if (attributeValue5.equalsIgnoreCase("gone")) {
                                setVisibility(8);
                            }
                        }
                        break;
                    case 7:
                        String attributeValue6 = attributeSet.getAttributeValue(i10);
                        if (!TextUtils.isEmpty(attributeValue6)) {
                            if (attributeValue6.equals("fitXY")) {
                                setScaleType(ImageView.ScaleType.FIT_XY);
                            } else if (attributeValue6.equals("centerInside")) {
                                setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                            } else if (attributeValue6.equals("centerCrop")) {
                                setScaleType(ImageView.ScaleType.CENTER_CROP);
                            }
                        }
                        break;
                    case 8:
                        int iA = b.a().a(attributeSet.getAttributeValue(i10));
                        this.f33718d = iA;
                        this.f33717c = iA;
                        this.f33716b = iA;
                        this.f33715a = iA;
                        setPadding(iA, iA, iA, iA);
                        break;
                    case 9:
                        int iA2 = b.a().a(attributeSet.getAttributeValue(i10));
                        this.f33716b = iA2;
                        setPadding(this.f33715a, iA2, this.f33717c, this.f33718d);
                        break;
                    case 10:
                        int iA3 = b.a().a(attributeSet.getAttributeValue(i10));
                        this.f33718d = iA3;
                        setPadding(this.f33715a, this.f33716b, this.f33717c, iA3);
                        break;
                    case 11:
                        int iA4 = b.a().a(attributeSet.getAttributeValue(i10));
                        this.f33715a = iA4;
                        setPadding(iA4, this.f33716b, this.f33717c, this.f33718d);
                        break;
                    case 12:
                        int iA5 = b.a().a(attributeSet.getAttributeValue(i10));
                        this.f33717c = iA5;
                        setPadding(this.f33715a, this.f33716b, iA5, this.f33718d);
                        break;
                }
            }
        }
    }

    public void setBorder(int i10, int i11, int i12) {
        this.f33733s = true;
        this.f33727m = i11;
        this.f33728n = i12;
        this.f33722h = i10;
    }

    public void setCornerRadius(int i10) {
        this.f33722h = i10;
    }

    public void setCustomBorder(int i10, int i11, int i12, int i13, int i14, int i15) {
        this.f33733s = true;
        this.f33734t = true;
        this.f33727m = i14;
        this.f33728n = i15;
        this.f33723i = i10;
        this.f33725k = i12;
        this.f33724j = i11;
        this.f33726l = i13;
    }

    public MBCusRoundImageView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, null, 0);
        try {
            setAttributeSet(attributeSet);
            setLayoutParams(generateLayoutParams(context, attributeSet));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void a(Canvas canvas, int i10, int i11, RectF rectF, float[] fArr) {
        try {
            a(i10, i11);
            Path path = this.f33735u;
            if (path != null) {
                path.addRoundRect(rectF, fArr, Path.Direction.CCW);
            }
            if (canvas != null) {
                canvas.drawPath(this.f33735u, this.f33736v);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public MBCusRoundImageView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f33735u = new Path();
        this.f33736v = new Paint();
        this.f33729o = new float[8];
        this.f33730p = new float[8];
        this.f33732r = new RectF();
        this.f33731q = new RectF();
        this.f33719e = new PorterDuffXfermode(PorterDuff.Mode.DST_IN);
    }

    private void a(int i10, int i11) {
        Path path = this.f33735u;
        if (path != null) {
            path.reset();
        }
        Paint paint = this.f33736v;
        if (paint != null) {
            paint.setStrokeWidth(i10);
            this.f33736v.setColor(i11);
            this.f33736v.setStyle(Paint.Style.STROKE);
        }
    }

    private void a() {
        if (this.f33729o == null || this.f33730p == null) {
            return;
        }
        int i10 = 0;
        while (true) {
            try {
                float[] fArr = this.f33729o;
                if (i10 >= fArr.length) {
                    return;
                }
                float f10 = this.f33722h;
                fArr[i10] = f10;
                this.f33730p[i10] = f10 - (this.f33727m / 2.0f);
                i10++;
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
    }
}
