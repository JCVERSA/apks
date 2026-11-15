package com.mbridge.msdk.dycreator.baseview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import com.mbridge.msdk.dycreator.baseview.inter.InterBase;
import com.mbridge.msdk.dycreator.engine.b;
import com.mbridge.msdk.dycreator.engine.c;
import com.mbridge.msdk.dycreator.utils.a;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.l;
import java.util.HashMap;
import java.util.Map;

public class MBLinearLayout extends LinearLayout implements InterBase {

    private float f33644a;

    private float f33645b;

    private Map<String, String> f33646c;

    private Map<String, Boolean> f33647d;

    private String f33648e;

    static class AnonymousClass1 {

        static final int[] f33649a;

        static {
            int[] iArr = new int[c.values().length];
            f33649a = iArr;
            try {
                iArr[c.layout_width.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f33649a[c.layout_height.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f33649a[c.layout_centerHorizontal.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f33649a[c.layout_centerVertical.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f33649a[c.layout_weight.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f33649a[c.gravity.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f33649a[c.layout_margin.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f33649a[c.layout_marginLeft.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f33649a[c.layout_marginRight.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f33649a[c.layout_marginTop.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f33649a[c.layout_marginBottom.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f33649a[c.layout_gravity.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    public MBLinearLayout(Context context) {
        super(context);
        this.f33648e = "";
    }

    @Override
    public String getActionDes() {
        Map<String, String> map = this.f33646c;
        return (map == null || !map.containsKey("mbridgeAction")) ? "" : this.f33646c.get("mbridgeAction");
    }

    @Override
    public String getBindDataDes() {
        Map<String, String> map = this.f33646c;
        return (map == null || !map.containsKey("mbridgeData")) ? "" : this.f33646c.get("mbridgeData");
    }

    @Override
    public String getEffectDes() {
        Map<String, String> map = this.f33646c;
        return (map == null || !map.containsKey("mbridgeEffect")) ? "" : this.f33646c.get("mbridgeEffect");
    }

    @Override
    public String getReportDes() {
        Map<String, String> map = this.f33646c;
        return (map == null || !map.containsKey("mbridgeReport")) ? "" : this.f33646c.get("mbridgeReport");
    }

    @Override
    public String getStrategyDes() {
        Map<String, String> map = this.f33646c;
        return (map == null || !map.containsKey("mbridgeStrategy")) ? "" : this.f33646c.get("mbridgeStrategy");
    }

    public float getxInScreen() {
        return this.f33644a;
    }

    public float getyInScreen() {
        return this.f33645b;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Map<String, Boolean> map = this.f33647d;
        if (map != null && map.containsKey("mbridgeAttached") && this.f33647d.get("mbridgeAttached").booleanValue()) {
            new l.b("mbridgeAttached").a().b(this.f33648e);
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Map<String, Boolean> map = this.f33647d;
        if (map != null && map.containsKey("mbridgeDetached") && this.f33647d.get("mbridgeDetached").booleanValue()) {
            new l.b("mbridgeDetached").a().b(this.f33648e);
        }
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.f33644a = motionEvent.getRawX();
        this.f33645b = motionEvent.getRawY();
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
    }

    @Override
    public void setDynamicReport(String str, CampaignEx campaignEx) {
        this.f33647d = com.mbridge.msdk.dycreator.utils.c.a(str);
        if (campaignEx != null) {
            this.f33648e = campaignEx.getCampaignUnitId();
        }
    }

    @Override
    public LinearLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        LinearLayout.LayoutParams layoutParamsGenerateDefaultLayoutParams = generateDefaultLayoutParams();
        HashMap mapB = b.a().b();
        int attributeCount = attributeSet.getAttributeCount();
        for (int i10 = 0; i10 < attributeCount; i10++) {
            c cVar = (c) mapB.get(attributeSet.getAttributeName(i10));
            if (cVar != null) {
                switch (AnonymousClass1.f33649a[cVar.ordinal()]) {
                    case 1:
                        String attributeValue = attributeSet.getAttributeValue(i10);
                        if (attributeValue.startsWith("f") || attributeValue.startsWith("m")) {
                            layoutParamsGenerateDefaultLayoutParams.width = -1;
                        } else if (attributeValue.startsWith("wrap")) {
                            layoutParamsGenerateDefaultLayoutParams.width = -2;
                        } else {
                            layoutParamsGenerateDefaultLayoutParams.width = b.a().a(attributeValue);
                        }
                        break;
                    case 2:
                        String attributeValue2 = attributeSet.getAttributeValue(i10);
                        if (attributeValue2.startsWith("f") || attributeValue2.startsWith("m")) {
                            layoutParamsGenerateDefaultLayoutParams.height = -1;
                        } else if (attributeValue2.startsWith("wrap")) {
                            layoutParamsGenerateDefaultLayoutParams.height = -2;
                        } else {
                            layoutParamsGenerateDefaultLayoutParams.height = b.a().a(attributeValue2);
                        }
                        break;
                    case 3:
                        layoutParamsGenerateDefaultLayoutParams.gravity = 1;
                        break;
                    case 4:
                        layoutParamsGenerateDefaultLayoutParams.gravity = 16;
                        break;
                    case 5:
                        layoutParamsGenerateDefaultLayoutParams.weight = attributeSet.getAttributeFloatValue(i10, 0.0f);
                        break;
                    case 6:
                        setGravity(b.a().b(attributeSet.getAttributeValue(i10)));
                        break;
                    case 7:
                        int iA = b.a().a(attributeSet.getAttributeValue(i10));
                        layoutParamsGenerateDefaultLayoutParams.bottomMargin = iA;
                        layoutParamsGenerateDefaultLayoutParams.leftMargin = iA;
                        layoutParamsGenerateDefaultLayoutParams.rightMargin = iA;
                        layoutParamsGenerateDefaultLayoutParams.topMargin = iA;
                        break;
                    case 8:
                        layoutParamsGenerateDefaultLayoutParams.leftMargin = b.a().a(attributeSet.getAttributeValue(i10));
                        break;
                    case 9:
                        layoutParamsGenerateDefaultLayoutParams.rightMargin = b.a().a(attributeSet.getAttributeValue(i10));
                        break;
                    case 10:
                        layoutParamsGenerateDefaultLayoutParams.topMargin = b.a().a(attributeSet.getAttributeValue(i10));
                        break;
                    case 11:
                        layoutParamsGenerateDefaultLayoutParams.bottomMargin = b.a().a(attributeSet.getAttributeValue(i10));
                        break;
                    case 12:
                        layoutParamsGenerateDefaultLayoutParams.gravity = b.a().b(attributeSet.getAttributeValue(i10));
                        break;
                }
            }
        }
        return layoutParamsGenerateDefaultLayoutParams;
    }

    public MBLinearLayout(Context context, AttributeSet attributeSet) {
        super(context);
        this.f33648e = "";
        this.f33646c = com.mbridge.msdk.dycreator.utils.c.a(context, attributeSet);
        a.a(this, attributeSet);
        setLayoutParams(generateLayoutParams(attributeSet));
        com.mbridge.msdk.dycreator.utils.c.a(this.f33646c, this);
    }

    public MBLinearLayout(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f33648e = "";
    }
}
