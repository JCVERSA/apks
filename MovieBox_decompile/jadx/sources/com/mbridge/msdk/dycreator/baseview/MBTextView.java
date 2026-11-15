package com.mbridge.msdk.dycreator.baseview;

import android.animation.Animator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.TextView;
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

public class MBTextView extends TextView implements InterBase, InterEffect {

    private boolean f33709a;
    public AttributeSet attrs;

    private Animator f33710b;

    private Map<String, String> f33711c;

    private Map<String, Boolean> f33712d;

    private String f33713e;

    static class AnonymousClass1 {

        static final int[] f33714a;

        static {
            int[] iArr = new int[c.values().length];
            f33714a = iArr;
            try {
                iArr[c.layout_width.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f33714a[c.layout_height.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public MBTextView(Context context) {
        super(context);
        this.f33709a = false;
        this.f33713e = "";
    }

    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
        HashMap mapB = b.a().b();
        int attributeCount = attributeSet.getAttributeCount();
        for (int i10 = 0; i10 < attributeCount; i10++) {
            c cVar = (c) mapB.get(attributeSet.getAttributeName(i10));
            if (cVar != null) {
                int i11 = AnonymousClass1.f33714a[cVar.ordinal()];
                if (i11 == 1) {
                    String attributeValue = attributeSet.getAttributeValue(i10);
                    if (attributeValue.startsWith("f") || attributeValue.startsWith("m")) {
                        layoutParams.width = -1;
                    } else if (attributeValue.startsWith("wrap")) {
                        layoutParams.width = -2;
                    } else {
                        layoutParams.width = b.a().a(attributeValue);
                    }
                } else if (i11 == 2) {
                    String attributeValue2 = attributeSet.getAttributeValue(i10);
                    if (attributeValue2.startsWith("f") || attributeValue2.startsWith("m")) {
                        layoutParams.height = -1;
                    } else if (attributeValue2.startsWith("wrap")) {
                        layoutParams.height = -2;
                    } else {
                        layoutParams.height = b.a().a(attributeValue2);
                    }
                }
            }
        }
        return layoutParams;
    }

    @Override
    public String getActionDes() {
        Map<String, String> map = this.f33711c;
        return (map == null || !map.containsKey("mbridgeAction")) ? "" : this.f33711c.get("mbridgeAction");
    }

    @Override
    public String getBindDataDes() {
        Map<String, String> map = this.f33711c;
        return (map == null || !map.containsKey("mbridgeData")) ? "" : this.f33711c.get("mbridgeData");
    }

    @Override
    public String getEffectDes() {
        Map<String, String> map = this.f33711c;
        return (map == null || !map.containsKey("mbridgeEffect")) ? "" : this.f33711c.get("mbridgeEffect");
    }

    @Override
    public String getReportDes() {
        Map<String, String> map = this.f33711c;
        return (map == null || !map.containsKey("mbridgeReport")) ? "" : this.f33711c.get("mbridgeReport");
    }

    @Override
    public String getStrategyDes() {
        Map<String, String> map = this.f33711c;
        return (map == null || !map.containsKey("mbridgeStrategy")) ? "" : this.f33711c.get("mbridgeStrategy");
    }

    @Override
    public boolean isFocused() {
        if (this.f33709a) {
            return true;
        }
        return super.isFocused();
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Animator animator = this.f33710b;
        if (animator != null) {
            try {
                animator.start();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        Map<String, Boolean> map = this.f33712d;
        if (map != null && map.containsKey("mbridgeAttached") && this.f33712d.get("mbridgeAttached").booleanValue()) {
            new l.b("mbridgeAttached").a().b(this.f33713e);
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Animator animator = this.f33710b;
        if (animator != null) {
            try {
                animator.cancel();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        Map<String, Boolean> map = this.f33712d;
        if (map != null && map.containsKey("mbridgeDetached") && this.f33712d.get("mbridgeDetached").booleanValue()) {
            new l.b("mbridgeDetached").a().b(this.f33713e);
        }
    }

    @Override
    public void setAnimator(Animator animator) {
        this.f33710b = animator;
    }

    @Override
    public void setDynamicReport(String str, CampaignEx campaignEx) {
        this.f33712d = com.mbridge.msdk.dycreator.utils.c.a(str);
        if (campaignEx != null) {
            this.f33713e = campaignEx.getCampaignUnitId();
        }
    }

    public MBTextView(Context context, AttributeSet attributeSet) {
        super(context);
        this.f33709a = false;
        this.f33713e = "";
        this.attrs = attributeSet;
        try {
            this.f33711c = com.mbridge.msdk.dycreator.utils.c.a(context, attributeSet);
            a.a(this, attributeSet);
            setLayoutParams(generateLayoutParams(attributeSet));
            com.mbridge.msdk.dycreator.utils.c.a(this.f33711c, this);
        } catch (Exception e10) {
            o0.b("TextView", e10.getMessage());
        }
    }

    public MBTextView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f33709a = false;
        this.f33713e = "";
    }
}
