package com.mbridge.msdk.dycreator.baseview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.LinearLayout;
import com.mbridge.msdk.dycreator.baseview.inter.InterBase;
import com.mbridge.msdk.dycreator.engine.b;
import com.mbridge.msdk.dycreator.engine.c;
import com.mbridge.msdk.dycreator.utils.a;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.l;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.playercommon.PlayerView;
import java.util.HashMap;
import java.util.Map;

public class MBPlayerView extends PlayerView implements InterBase {

    private float f33654a;

    private float f33655b;

    private Map<String, String> f33656c;

    private Map<String, Boolean> f33657d;

    private String f33658e;

    static class AnonymousClass1 {

        static final int[] f33659a;

        static {
            int[] iArr = new int[c.values().length];
            f33659a = iArr;
            try {
                iArr[c.layout_width.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f33659a[c.layout_height.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f33659a[c.layout_centerHorizontal.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f33659a[c.layout_centerVertical.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f33659a[c.layout_weight.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f33659a[c.gravity.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f33659a[c.layout_margin.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f33659a[c.layout_marginLeft.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f33659a[c.layout_marginRight.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f33659a[c.layout_marginTop.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f33659a[c.layout_marginBottom.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f33659a[c.layout_gravity.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    public MBPlayerView(Context context) {
        super(context);
        this.f33658e = "";
    }

    @Override
    public String getActionDes() {
        Map<String, String> map = this.f33656c;
        return (map == null || !map.containsKey("mbridgeAction")) ? "" : this.f33656c.get("mbridgeAction");
    }

    @Override
    public String getBindDataDes() {
        Map<String, String> map = this.f33656c;
        return (map == null || !map.containsKey("mbridgeData")) ? "" : this.f33656c.get("mbridgeData");
    }

    @Override
    public String getEffectDes() {
        Map<String, String> map = this.f33656c;
        return (map == null || !map.containsKey("mbridgeEffect")) ? "" : this.f33656c.get("mbridgeEffect");
    }

    @Override
    public String getReportDes() {
        Map<String, String> map = this.f33656c;
        return (map == null || !map.containsKey("mbridgeReport")) ? "" : this.f33656c.get("mbridgeReport");
    }

    @Override
    public String getStrategyDes() {
        Map<String, String> map = this.f33656c;
        return (map == null || !map.containsKey("mbridgeStrategy")) ? "" : this.f33656c.get("mbridgeStrategy");
    }

    public float getxInScreen() {
        return this.f33654a;
    }

    public float getyInScreen() {
        return this.f33655b;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Map<String, Boolean> map = this.f33657d;
        if (map != null && map.containsKey("mbridgeAttached") && this.f33657d.get("mbridgeAttached").booleanValue()) {
            new l.b("mbridgeAttached").a().b(this.f33658e);
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Map<String, Boolean> map = this.f33657d;
        if (map != null && map.containsKey("mbridgeDetached") && this.f33657d.get("mbridgeDetached").booleanValue()) {
            new l.b("mbridgeDetached").a().b(this.f33658e);
        }
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.f33654a = motionEvent.getRawX();
        this.f33655b = motionEvent.getRawY();
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
    }

    @Override
    public void setDynamicReport(String str, CampaignEx campaignEx) {
        this.f33657d = com.mbridge.msdk.dycreator.utils.c.a(str);
        if (campaignEx != null) {
            this.f33658e = campaignEx.getCampaignUnitId();
        }
    }

    @Override
    public LinearLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, 0);
        HashMap mapB = b.a().b();
        int attributeCount = attributeSet.getAttributeCount();
        for (int i10 = 0; i10 < attributeCount; i10++) {
            c cVar = (c) mapB.get(attributeSet.getAttributeName(i10));
            if (cVar != null) {
                switch (AnonymousClass1.f33659a[cVar.ordinal()]) {
                    case 1:
                        String attributeValue = attributeSet.getAttributeValue(i10);
                        if (attributeValue.startsWith("f") || attributeValue.startsWith("m")) {
                            layoutParams.width = -1;
                        } else if (attributeValue.startsWith("wrap")) {
                            layoutParams.width = -2;
                        } else {
                            layoutParams.width = b.a().a(attributeValue);
                        }
                        break;
                    case 2:
                        String attributeValue2 = attributeSet.getAttributeValue(i10);
                        if (attributeValue2.startsWith("f") || attributeValue2.startsWith("m")) {
                            layoutParams.height = -1;
                        } else if (attributeValue2.startsWith("wrap")) {
                            layoutParams.height = -2;
                        } else {
                            layoutParams.height = b.a().a(attributeValue2);
                        }
                        break;
                    case 3:
                        layoutParams.gravity = 1;
                        break;
                    case 4:
                        layoutParams.gravity = 16;
                        break;
                    case 5:
                        layoutParams.weight = attributeSet.getAttributeFloatValue(i10, 0.0f);
                        break;
                    case 6:
                        setGravity(b.a().b(attributeSet.getAttributeValue(i10)));
                        break;
                    case 7:
                        int iA = b.a().a(attributeSet.getAttributeValue(i10));
                        layoutParams.bottomMargin = iA;
                        layoutParams.leftMargin = iA;
                        layoutParams.rightMargin = iA;
                        layoutParams.topMargin = iA;
                        break;
                    case 8:
                        layoutParams.leftMargin = b.a().a(attributeSet.getAttributeValue(i10));
                        break;
                    case 9:
                        layoutParams.rightMargin = b.a().a(attributeSet.getAttributeValue(i10));
                        break;
                    case 10:
                        layoutParams.topMargin = b.a().a(attributeSet.getAttributeValue(i10));
                        break;
                    case 11:
                        layoutParams.bottomMargin = b.a().a(attributeSet.getAttributeValue(i10));
                        break;
                    case 12:
                        layoutParams.gravity = b.a().b(attributeSet.getAttributeValue(i10));
                        break;
                }
            }
        }
        return layoutParams;
    }

    public MBPlayerView(Context context, AttributeSet attributeSet) {
        super(context);
        this.f33658e = "";
        try {
            this.f33656c = com.mbridge.msdk.dycreator.utils.c.a(context, attributeSet);
            a.a(this, attributeSet);
            setLayoutParams(generateLayoutParams(attributeSet));
            com.mbridge.msdk.dycreator.utils.c.a(this.f33656c, this);
        } catch (Exception e10) {
            o0.b("MBLinearLayout", e10.getMessage());
        }
    }
}
