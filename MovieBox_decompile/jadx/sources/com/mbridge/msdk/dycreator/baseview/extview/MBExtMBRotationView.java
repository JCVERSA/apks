package com.mbridge.msdk.dycreator.baseview.extview;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.mbridge.msdk.dycreator.baseview.GradientOrientationUtils;
import com.mbridge.msdk.dycreator.baseview.cusview.MBRotationView;
import com.mbridge.msdk.dycreator.baseview.inter.InterBase;
import com.mbridge.msdk.dycreator.engine.b;
import com.mbridge.msdk.dycreator.engine.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.l;
import com.mbridge.msdk.foundation.tools.o0;
import com.transsion.gslb.Utils;
import java.util.HashMap;
import java.util.Map;

public class MBExtMBRotationView extends MBRotationView implements InterBase {

    private Map<String, String> f33822q;

    private Map<String, Boolean> f33823r;

    private String f33824s;

    static class AnonymousClass1 {

        static final int[] f33825a;

        static {
            int[] iArr = new int[c.values().length];
            f33825a = iArr;
            try {
                iArr[c.id.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f33825a[c.background.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f33825a[c.contentDescription.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f33825a[c.visibility.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f33825a[c.layout_width.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f33825a[c.layout_height.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f33825a[c.layout_gravity.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f33825a[c.layout_marginLeft.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f33825a[c.layout_margin.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public MBExtMBRotationView(Context context) {
        super(context);
        this.f33824s = "";
    }

    @Override
    public String getActionDes() {
        Map<String, String> map = this.f33822q;
        return (map == null || !map.containsKey("mbridgeAction")) ? "" : this.f33822q.get("mbridgeAction");
    }

    @Override
    public String getBindDataDes() {
        Map<String, String> map = this.f33822q;
        return (map == null || !map.containsKey("mbridgeData")) ? "" : this.f33822q.get("mbridgeData");
    }

    @Override
    public String getEffectDes() {
        Map<String, String> map = this.f33822q;
        return (map == null || !map.containsKey("mbridgeEffect")) ? "" : this.f33822q.get("mbridgeEffect");
    }

    @Override
    public String getReportDes() {
        Map<String, String> map = this.f33822q;
        return (map == null || !map.containsKey("mbridgeReport")) ? "" : this.f33822q.get("mbridgeReport");
    }

    @Override
    public String getStrategyDes() {
        Map<String, String> map = this.f33822q;
        return (map == null || !map.containsKey("mbridgeStrategy")) ? "" : this.f33822q.get("mbridgeStrategy");
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Map<String, Boolean> map = this.f33823r;
        if (map != null && map.containsKey("mbridgeAttached") && this.f33823r.get("mbridgeAttached").booleanValue()) {
            new l.b("mbridgeAttached").a().b(this.f33824s);
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Map<String, Boolean> map = this.f33823r;
        if (map != null && map.containsKey("mbridgeDetached") && this.f33823r.get("mbridgeDetached").booleanValue()) {
            new l.b("mbridgeDetached").a().b(this.f33824s);
        }
    }

    public void setAttributeSet(AttributeSet attributeSet) {
        String[] strArrSplit;
        HashMap<String, c> mapC = b.a().c();
        int attributeCount = attributeSet.getAttributeCount();
        for (int i10 = 0; i10 < attributeCount; i10++) {
            c cVar = mapC.get(attributeSet.getAttributeName(i10));
            if (cVar != null) {
                int i11 = AnonymousClass1.f33825a[cVar.ordinal()];
                if (i11 == 1) {
                    String attributeValue = attributeSet.getAttributeValue(i10);
                    if (attributeValue.startsWith("@+id/")) {
                        setId(attributeValue.substring(5).hashCode());
                    }
                } else if (i11 == 2) {
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
                    } else if (attributeValue2.startsWith("@color/")) {
                        setBackgroundColor(b.a().d(attributeSet.getAttributeValue(i10)));
                    } else {
                        if (attributeValue2.startsWith("@drawable/")) {
                            attributeValue2 = attributeValue2.substring(10);
                        }
                        setBackgroundDrawable(new BitmapDrawable(BitmapFactory.decodeFile(getContext().getFilesDir().toString() + "/" + attributeValue2 + ".png")));
                    }
                } else if (i11 == 3) {
                    setContentDescription(attributeSet.getAttributeValue(i10));
                } else if (i11 == 4) {
                    String attributeValue3 = attributeSet.getAttributeValue(i10);
                    if (!TextUtils.isEmpty(attributeValue3)) {
                        if (attributeValue3.equals("invisible")) {
                            setVisibility(4);
                        } else if (attributeValue3.equalsIgnoreCase("gone")) {
                            setVisibility(8);
                        }
                    }
                }
            }
        }
    }

    @Override
    public void setDynamicReport(String str, CampaignEx campaignEx) {
        this.f33823r = com.mbridge.msdk.dycreator.utils.c.a(str);
        if (campaignEx != null) {
            this.f33824s = campaignEx.getCampaignUnitId();
        }
    }

    @Override
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(0, 0);
        HashMap mapB = b.a().b();
        layoutParams.width = -2;
        layoutParams.height = -2;
        int attributeCount = attributeSet.getAttributeCount();
        for (int i10 = 0; i10 < attributeCount; i10++) {
            c cVar = (c) mapB.get(attributeSet.getAttributeName(i10));
            if (cVar != null) {
                switch (AnonymousClass1.f33825a[cVar.ordinal()]) {
                    case 5:
                        String attributeValue = attributeSet.getAttributeValue(i10);
                        if (attributeValue.startsWith("f") || attributeValue.startsWith("m")) {
                            layoutParams.width = -1;
                        } else if (attributeValue.startsWith("w")) {
                            layoutParams.width = -2;
                        } else {
                            layoutParams.width = b.a().a(attributeValue);
                        }
                        break;
                    case 6:
                        String attributeValue2 = attributeSet.getAttributeValue(i10);
                        if (attributeValue2.startsWith("f") || attributeValue2.startsWith("m")) {
                            layoutParams.width = -1;
                        } else if (attributeValue2.startsWith("w")) {
                            layoutParams.width = -2;
                        } else {
                            layoutParams.height = b.a().a(attributeValue2);
                        }
                        break;
                    case 7:
                        layoutParams.gravity = b.a().b(attributeSet.getAttributeValue(i10));
                        break;
                    case 8:
                        layoutParams.leftMargin = b.a().a(attributeSet.getAttributeValue(i10));
                        break;
                    case 9:
                        int iA = b.a().a(attributeSet.getAttributeValue(i10));
                        layoutParams.setMargins(iA, iA, iA, iA);
                        break;
                }
            }
        }
        return layoutParams;
    }

    public MBExtMBRotationView(Context context, AttributeSet attributeSet) {
        super(context);
        this.f33824s = "";
        try {
            this.f33822q = com.mbridge.msdk.dycreator.utils.c.a(context, attributeSet);
            setAttributeSet(attributeSet);
            setLayoutParams(generateLayoutParams(attributeSet));
            com.mbridge.msdk.dycreator.utils.c.a(this.f33822q, this);
        } catch (Exception e10) {
            o0.b("MBExtMBRotationView", e10.getMessage());
        }
    }

    public MBExtMBRotationView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f33824s = "";
    }
}
