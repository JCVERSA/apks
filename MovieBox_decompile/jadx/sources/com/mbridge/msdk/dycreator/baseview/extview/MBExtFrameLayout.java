package com.mbridge.msdk.dycreator.baseview.extview;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.mbridge.msdk.dycreator.baseview.cusview.MBridgeFramLayout;
import com.mbridge.msdk.dycreator.baseview.inter.InterBase;
import com.mbridge.msdk.dycreator.engine.b;
import com.mbridge.msdk.dycreator.engine.c;
import com.mbridge.msdk.dycreator.utils.a;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.l;
import com.mbridge.msdk.foundation.tools.o0;
import java.util.HashMap;
import java.util.Map;

public class MBExtFrameLayout extends MBridgeFramLayout implements InterBase {

    private Map<String, String> f33818b;

    private Map<String, Boolean> f33819c;

    private String f33820d;

    static class AnonymousClass1 {

        static final int[] f33821a;

        static {
            int[] iArr = new int[c.values().length];
            f33821a = iArr;
            try {
                iArr[c.layout_width.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f33821a[c.layout_height.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f33821a[c.layout_gravity.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f33821a[c.layout_margin.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f33821a[c.layout_marginLeft.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f33821a[c.layout_marginRight.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f33821a[c.layout_marginTop.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f33821a[c.layout_marginBottom.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public MBExtFrameLayout(Context context) {
        super(context);
        this.f33820d = "";
    }

    @Override
    public String getActionDes() {
        Map<String, String> map = this.f33818b;
        return (map == null || !map.containsKey("mbridgeAction")) ? "" : this.f33818b.get("mbridgeAction");
    }

    @Override
    public String getBindDataDes() {
        Map<String, String> map = this.f33818b;
        return (map == null || !map.containsKey("mbridgeData")) ? "" : this.f33818b.get("mbridgeData");
    }

    @Override
    public String getEffectDes() {
        Map<String, String> map = this.f33818b;
        return (map == null || !map.containsKey("mbridgeEffect")) ? "" : this.f33818b.get("mbridgeEffect");
    }

    @Override
    public String getReportDes() {
        Map<String, String> map = this.f33818b;
        return (map == null || !map.containsKey("mbridgeReport")) ? "" : this.f33818b.get("mbridgeReport");
    }

    @Override
    public String getStrategyDes() {
        Map<String, String> map = this.f33818b;
        return (map == null || !map.containsKey("mbridgeStrategy")) ? "" : this.f33818b.get("mbridgeStrategy");
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Map<String, Boolean> map = this.f33819c;
        if (map != null && map.containsKey("mbridgeAttached") && this.f33819c.get("mbridgeAttached").booleanValue()) {
            new l.b("mbridgeAttached").a().b(this.f33820d);
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Map<String, Boolean> map = this.f33819c;
        if (map != null && map.containsKey("mbridgeDetached") && this.f33819c.get("mbridgeDetached").booleanValue()) {
            new l.b("mbridgeDetached").a().b(this.f33820d);
        }
    }

    @Override
    public void setDynamicReport(String str, CampaignEx campaignEx) {
        this.f33819c = com.mbridge.msdk.dycreator.utils.c.a(str);
        if (campaignEx != null) {
            this.f33820d = campaignEx.getCampaignUnitId();
        }
    }

    @Override
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        FrameLayout.LayoutParams layoutParamsGenerateDefaultLayoutParams = generateDefaultLayoutParams();
        HashMap mapB = b.a().b();
        int attributeCount = attributeSet.getAttributeCount();
        for (int i10 = 0; i10 < attributeCount; i10++) {
            c cVar = (c) mapB.get(attributeSet.getAttributeName(i10));
            if (cVar != null) {
                switch (AnonymousClass1.f33821a[cVar.ordinal()]) {
                    case 1:
                        String attributeValue = attributeSet.getAttributeValue(i10);
                        if (attributeValue.startsWith("f") || attributeValue.startsWith("m")) {
                            layoutParamsGenerateDefaultLayoutParams.width = -1;
                        } else if (attributeValue.startsWith("w")) {
                            layoutParamsGenerateDefaultLayoutParams.width = -2;
                        } else {
                            layoutParamsGenerateDefaultLayoutParams.width = b.a().a(attributeValue);
                        }
                        break;
                    case 2:
                        String attributeValue2 = attributeSet.getAttributeValue(i10);
                        if (attributeValue2.startsWith("f") || attributeValue2.startsWith("m")) {
                            layoutParamsGenerateDefaultLayoutParams.width = -1;
                        } else if (attributeValue2.startsWith("w")) {
                            layoutParamsGenerateDefaultLayoutParams.width = -2;
                        } else {
                            layoutParamsGenerateDefaultLayoutParams.height = b.a().a(attributeValue2);
                        }
                        break;
                    case 3:
                        layoutParamsGenerateDefaultLayoutParams.gravity = b.a().b(attributeSet.getAttributeValue(i10));
                        break;
                    case 4:
                        int iA = b.a().a(attributeSet.getAttributeValue(i10));
                        layoutParamsGenerateDefaultLayoutParams.setMargins(iA, iA, iA, iA);
                        break;
                    case 5:
                        layoutParamsGenerateDefaultLayoutParams.leftMargin = b.a().a(attributeSet.getAttributeValue(i10));
                        break;
                    case 6:
                        layoutParamsGenerateDefaultLayoutParams.rightMargin = b.a().a(attributeSet.getAttributeValue(i10));
                        break;
                    case 7:
                        layoutParamsGenerateDefaultLayoutParams.topMargin = b.a().a(attributeSet.getAttributeValue(i10));
                        break;
                    case 8:
                        layoutParamsGenerateDefaultLayoutParams.bottomMargin = b.a().a(attributeSet.getAttributeValue(i10));
                        break;
                }
            }
        }
        return layoutParamsGenerateDefaultLayoutParams;
    }

    public MBExtFrameLayout(Context context, AttributeSet attributeSet) {
        super(context);
        this.f33820d = "";
        try {
            this.f33818b = com.mbridge.msdk.dycreator.utils.c.a(context, attributeSet);
            a.a(this, attributeSet);
            setLayoutParams(generateLayoutParams(attributeSet));
            com.mbridge.msdk.dycreator.utils.c.a(this.f33818b, this);
        } catch (Exception e10) {
            o0.b("MBExtFrameLayout", e10.getMessage());
        }
    }

    public MBExtFrameLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f33820d = "";
    }
}
