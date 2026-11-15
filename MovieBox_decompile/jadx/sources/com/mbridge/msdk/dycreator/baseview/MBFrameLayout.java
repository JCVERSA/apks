package com.mbridge.msdk.dycreator.baseview;

import android.animation.Animator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import com.mbridge.msdk.dycreator.baseview.inter.InterBase;
import com.mbridge.msdk.dycreator.baseview.inter.InterEffect;
import com.mbridge.msdk.dycreator.engine.b;
import com.mbridge.msdk.dycreator.engine.c;
import com.mbridge.msdk.dycreator.utils.a;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.l;
import com.mbridge.msdk.foundation.tools.o0;
import java.util.HashMap;
import java.util.Map;

public class MBFrameLayout extends FrameLayout implements InterBase, InterEffect {

    private Animator f33623a;

    private Map<String, String> f33624b;

    private Map<String, Boolean> f33625c;

    private String f33626d;

    static class AnonymousClass1 {

        static final int[] f33627a;

        static {
            int[] iArr = new int[c.values().length];
            f33627a = iArr;
            try {
                iArr[c.layout_width.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f33627a[c.layout_height.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f33627a[c.layout_gravity.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f33627a[c.layout_marginLeft.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f33627a[c.layout_margin.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public MBFrameLayout(Context context, AttributeSet attributeSet) {
        super(context);
        this.f33626d = "";
        try {
            this.f33624b = com.mbridge.msdk.dycreator.utils.c.a(context, attributeSet);
            a.a(this, attributeSet);
            setLayoutParams(generateLayoutParams(attributeSet));
            com.mbridge.msdk.dycreator.utils.c.a(this.f33624b, this);
        } catch (Exception e10) {
            o0.b("MBFrameLayout", e10.getMessage());
        }
    }

    @Override
    public String getActionDes() {
        Map<String, String> map = this.f33624b;
        return (map == null || !map.containsKey("mbridgeAction")) ? "" : this.f33624b.get("mbridgeAction");
    }

    @Override
    public String getBindDataDes() {
        Map<String, String> map = this.f33624b;
        return (map == null || !map.containsKey("mbridgeData")) ? "" : this.f33624b.get("mbridgeData");
    }

    @Override
    public String getEffectDes() {
        Map<String, String> map = this.f33624b;
        return (map == null || !map.containsKey("mbridgeEffect")) ? "" : this.f33624b.get("mbridgeEffect");
    }

    @Override
    public String getReportDes() {
        Map<String, String> map = this.f33624b;
        return (map == null || !map.containsKey("mbridgeReport")) ? "" : this.f33624b.get("mbridgeReport");
    }

    @Override
    public String getStrategyDes() {
        Map<String, String> map = this.f33624b;
        return (map == null || !map.containsKey("mbridgeStrategy")) ? "" : this.f33624b.get("mbridgeStrategy");
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        try {
            Animator animator = this.f33623a;
            if (animator != null) {
                animator.start();
            }
        } catch (Exception e10) {
            o0.b("MBFrameLayout", e10.getMessage());
        }
        Map<String, Boolean> map = this.f33625c;
        if (map != null && map.containsKey("mbridgeAttached") && this.f33625c.get("mbridgeAttached").booleanValue()) {
            new l.b("mbridgeAttached").a().b(this.f33626d);
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        try {
            Animator animator = this.f33623a;
            if (animator != null) {
                animator.cancel();
            }
        } catch (Exception e10) {
            o0.b("MBFrameLayout", e10.getMessage());
        }
        Map<String, Boolean> map = this.f33625c;
        if (map != null && map.containsKey("mbridgeDetached") && this.f33625c.get("mbridgeDetached").booleanValue()) {
            new l.b("mbridgeDetached").a().b(this.f33626d);
        }
    }

    @Override
    public void setAnimator(Animator animator) {
        this.f33623a = animator;
    }

    @Override
    public void setDynamicReport(String str, CampaignEx campaignEx) {
        this.f33625c = com.mbridge.msdk.dycreator.utils.c.a(str);
        if (campaignEx != null) {
            this.f33626d = campaignEx.getCampaignUnitId();
        }
    }

    @Override
    public void setOnClickListener(@Nullable View.OnClickListener onClickListener) {
        super.setOnClickListener(onClickListener);
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
                int i11 = AnonymousClass1.f33627a[cVar.ordinal()];
                if (i11 == 1) {
                    String attributeValue = attributeSet.getAttributeValue(i10);
                    if (attributeValue.startsWith("f") || attributeValue.startsWith("m")) {
                        layoutParams.width = -1;
                    } else if (attributeValue.startsWith("w")) {
                        layoutParams.width = -2;
                    } else {
                        layoutParams.width = b.a().a(attributeValue);
                    }
                } else if (i11 == 2) {
                    String attributeValue2 = attributeSet.getAttributeValue(i10);
                    if (attributeValue2.startsWith("f") || attributeValue2.startsWith("m")) {
                        layoutParams.width = -1;
                    } else if (attributeValue2.startsWith("w")) {
                        layoutParams.width = -2;
                    } else {
                        layoutParams.height = b.a().a(attributeValue2);
                    }
                } else if (i11 == 3) {
                    layoutParams.gravity = b.a().b(attributeSet.getAttributeValue(i10));
                } else if (i11 == 4) {
                    layoutParams.leftMargin = b.a().a(attributeSet.getAttributeValue(i10));
                } else if (i11 == 5) {
                    int iA = b.a().a(attributeSet.getAttributeValue(i10));
                    layoutParams.setMargins(iA, iA, iA, iA);
                }
            }
        }
        return layoutParams;
    }
}
