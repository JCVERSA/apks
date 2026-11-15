package com.mbridge.msdk.dycreator.baseview.extview;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.mbridge.msdk.dycreator.baseview.GradientOrientationUtils;
import com.mbridge.msdk.dycreator.baseview.cusview.MBridgeImageView;
import com.mbridge.msdk.dycreator.baseview.inter.InterBase;
import com.mbridge.msdk.dycreator.engine.b;
import com.mbridge.msdk.dycreator.engine.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.l;
import com.mbridge.msdk.foundation.tools.o0;
import com.transsion.gslb.Utils;
import java.util.HashMap;
import java.util.Map;

public class MBExtMBridgeImageView extends MBridgeImageView implements InterBase {

    private Map<String, String> f33828s;

    private Map<String, Boolean> f33829t;

    private String f33830u;

    private int f33831v;

    private int f33832w;

    private int f33833x;

    private int f33834y;

    static class AnonymousClass1 {

        static final int[] f33835a;

        static {
            int[] iArr = new int[c.values().length];
            f33835a = iArr;
            try {
                iArr[c.id.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f33835a[c.src.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f33835a[c.background.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f33835a[c.contentDescription.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f33835a[c.tag.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f33835a[c.visibility.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f33835a[c.scaleType.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f33835a[c.padding.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f33835a[c.paddingTop.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f33835a[c.paddingBottom.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f33835a[c.paddingLeft.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f33835a[c.paddingRight.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f33835a[c.layout_width.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f33835a[c.layout_height.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f33835a[c.gravity.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f33835a[c.layout_gravity.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
        }
    }

    public MBExtMBridgeImageView(Context context) {
        super(context);
        this.f33830u = "";
    }

    public ViewGroup.LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        HashMap<String, c> mapC = b.a().c();
        int attributeCount = attributeSet.getAttributeCount();
        for (int i10 = 0; i10 < attributeCount; i10++) {
            c cVar = mapC.get(attributeSet.getAttributeName(i10));
            if (cVar != null) {
                int i11 = AnonymousClass1.f33835a[cVar.ordinal()];
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
    public String getActionDes() {
        Map<String, String> map = this.f33828s;
        return (map == null || !map.containsKey("mbridgeAction")) ? "" : this.f33828s.get("mbridgeAction");
    }

    @Override
    public String getBindDataDes() {
        Map<String, String> map = this.f33828s;
        return (map == null || !map.containsKey("mbridgeData")) ? "" : this.f33828s.get("mbridgeData");
    }

    @Override
    public String getEffectDes() {
        Map<String, String> map = this.f33828s;
        return (map == null || !map.containsKey("mbridgeEffect")) ? "" : this.f33828s.get("mbridgeEffect");
    }

    @Override
    public String getReportDes() {
        Map<String, String> map = this.f33828s;
        return (map == null || !map.containsKey("mbridgeReport")) ? "" : this.f33828s.get("mbridgeReport");
    }

    @Override
    public String getStrategyDes() {
        Map<String, String> map = this.f33828s;
        return (map == null || !map.containsKey("mbridgeStrategy")) ? "" : this.f33828s.get("mbridgeStrategy");
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Map<String, Boolean> map = this.f33829t;
        if (map != null && map.containsKey("mbridgeAttached") && this.f33829t.get("mbridgeAttached").booleanValue()) {
            new l.b("mbridgeAttached").a().b(this.f33830u);
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Map<String, Boolean> map = this.f33829t;
        if (map != null && map.containsKey("mbridgeDetached") && this.f33829t.get("mbridgeDetached").booleanValue()) {
            new l.b("mbridgeDetached").a().b(this.f33830u);
        }
    }

    public void setAttributeSet(AttributeSet attributeSet) {
        String[] strArrSplit;
        HashMap<String, c> mapC = b.a().c();
        int attributeCount = attributeSet.getAttributeCount();
        for (int i10 = 0; i10 < attributeCount; i10++) {
            c cVar = mapC.get(attributeSet.getAttributeName(i10));
            if (cVar != null) {
                switch (AnonymousClass1.f33835a[cVar.ordinal()]) {
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
                        this.f33834y = iA;
                        this.f33833x = iA;
                        this.f33832w = iA;
                        this.f33831v = iA;
                        setPadding(iA, iA, iA, iA);
                        break;
                    case 9:
                        int iA2 = b.a().a(attributeSet.getAttributeValue(i10));
                        this.f33832w = iA2;
                        setPadding(this.f33831v, iA2, this.f33833x, this.f33834y);
                        break;
                    case 10:
                        int iA3 = b.a().a(attributeSet.getAttributeValue(i10));
                        this.f33834y = iA3;
                        setPadding(this.f33831v, this.f33832w, this.f33833x, iA3);
                        break;
                    case 11:
                        int iA4 = b.a().a(attributeSet.getAttributeValue(i10));
                        this.f33831v = iA4;
                        setPadding(iA4, this.f33832w, this.f33833x, this.f33834y);
                        break;
                    case 12:
                        int iA5 = b.a().a(attributeSet.getAttributeValue(i10));
                        this.f33833x = iA5;
                        setPadding(this.f33831v, this.f33832w, iA5, this.f33834y);
                        break;
                }
            }
        }
    }

    @Override
    public void setDynamicReport(String str, CampaignEx campaignEx) {
        this.f33829t = com.mbridge.msdk.dycreator.utils.c.a(str);
        if (campaignEx != null) {
            this.f33830u = campaignEx.getCampaignUnitId();
        }
    }

    public MBExtMBridgeImageView(Context context, AttributeSet attributeSet) {
        super(context);
        this.f33830u = "";
        try {
            this.f33828s = com.mbridge.msdk.dycreator.utils.c.a(context, attributeSet);
            setAttributeSet(attributeSet);
            setLayoutParams(generateLayoutParams(context, attributeSet));
            com.mbridge.msdk.dycreator.utils.c.a(this.f33828s, this);
        } catch (Exception e10) {
            o0.b("MBExtMBridgeImageView", e10.getMessage());
        }
    }

    public MBExtMBridgeImageView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f33830u = "";
    }
}
