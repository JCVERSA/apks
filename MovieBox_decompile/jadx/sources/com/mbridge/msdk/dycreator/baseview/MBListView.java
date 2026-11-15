package com.mbridge.msdk.dycreator.baseview;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.AbsListView;
import android.widget.ListView;
import com.mbridge.msdk.dycreator.baseview.inter.InterBase;
import com.mbridge.msdk.dycreator.engine.b;
import com.mbridge.msdk.dycreator.engine.c;
import com.mbridge.msdk.dycreator.utils.a;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.l;
import com.mbridge.msdk.foundation.tools.o0;
import java.util.HashMap;
import java.util.Map;

public class MBListView extends ListView implements InterBase {

    private Map<String, String> f33650a;

    private Map<String, Boolean> f33651b;

    private String f33652c;

    static class AnonymousClass1 {

        static final int[] f33653a;

        static {
            int[] iArr = new int[c.values().length];
            f33653a = iArr;
            try {
                iArr[c.layout_width.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f33653a[c.layout_height.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f33653a[c.fadingEdge.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f33653a[c.visibility.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public MBListView(Context context, AttributeSet attributeSet) {
        super(context);
        this.f33652c = "";
        try {
            this.f33650a = com.mbridge.msdk.dycreator.utils.c.a(context, attributeSet);
            a.a(this, attributeSet);
            setLayoutParams(generateLayoutParams(attributeSet));
            com.mbridge.msdk.dycreator.utils.c.a(this.f33650a, this);
        } catch (Exception e10) {
            o0.b("MBListView", e10.getMessage());
        }
    }

    @Override
    public String getActionDes() {
        Map<String, String> map = this.f33650a;
        return (map == null || !map.containsKey("mbridgeAction")) ? "" : this.f33650a.get("mbridgeAction");
    }

    @Override
    public String getBindDataDes() {
        Map<String, String> map = this.f33650a;
        return (map == null || !map.containsKey("mbridgeData")) ? "" : this.f33650a.get("mbridgeData");
    }

    @Override
    public String getEffectDes() {
        Map<String, String> map = this.f33650a;
        return (map == null || !map.containsKey("mbridgeEffect")) ? "" : this.f33650a.get("mbridgeEffect");
    }

    @Override
    public String getReportDes() {
        Map<String, String> map = this.f33650a;
        return (map == null || !map.containsKey("mbridgeReport")) ? "" : this.f33650a.get("mbridgeReport");
    }

    @Override
    public String getStrategyDes() {
        Map<String, String> map = this.f33650a;
        return (map == null || !map.containsKey("mbridgeStrategy")) ? "" : this.f33650a.get("mbridgeStrategy");
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Map<String, Boolean> map = this.f33651b;
        if (map != null && map.containsKey("mbridgeAttached") && this.f33651b.get("mbridgeAttached").booleanValue()) {
            new l.b("mbridgeAttached").a().b(this.f33652c);
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Map<String, Boolean> map = this.f33651b;
        if (map != null && map.containsKey("mbridgeDetached") && this.f33651b.get("mbridgeDetached").booleanValue()) {
            new l.b("mbridgeDetached").a().b(this.f33652c);
        }
    }

    @Override
    public void setDynamicReport(String str, CampaignEx campaignEx) {
        this.f33651b = com.mbridge.msdk.dycreator.utils.c.a(str);
        if (campaignEx != null) {
            this.f33652c = campaignEx.getCampaignUnitId();
        }
    }

    @Override
    public AbsListView.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        AbsListView.LayoutParams layoutParams = (AbsListView.LayoutParams) generateDefaultLayoutParams();
        HashMap<String, c> mapC = b.a().c();
        int attributeCount = attributeSet.getAttributeCount();
        for (int i10 = 0; i10 < attributeCount; i10++) {
            c cVar = mapC.get(attributeSet.getAttributeName(i10));
            if (cVar != null) {
                int i11 = AnonymousClass1.f33653a[cVar.ordinal()];
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
                } else if (i11 == 3) {
                    setHorizontalFadingEdgeEnabled(attributeSet.getAttributeBooleanValue(i10, false));
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
        return layoutParams;
    }
}
