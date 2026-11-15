package com.mbridge.msdk.dycreator.baseview;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.FrameLayout;
import android.widget.ScrollView;
import com.mbridge.msdk.dycreator.baseview.inter.InterBase;
import com.mbridge.msdk.dycreator.engine.b;
import com.mbridge.msdk.dycreator.engine.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.l;
import com.transsion.gslb.Utils;
import java.util.HashMap;
import java.util.Map;

public class MBScrollView extends ScrollView implements InterBase {

    private Map<String, String> f33667a;

    private Map<String, Boolean> f33668b;

    private String f33669c;

    static class AnonymousClass1 {

        static final int[] f33670a;

        static {
            int[] iArr = new int[c.values().length];
            f33670a = iArr;
            try {
                iArr[c.id.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f33670a[c.background.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f33670a[c.contentDescription.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f33670a[c.fadingEdge.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f33670a[c.visibility.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f33670a[c.layout_marginBottom.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public MBScrollView(Context context, AttributeSet attributeSet) {
        super(context);
        this.f33669c = "";
        this.f33667a = com.mbridge.msdk.dycreator.utils.c.a(context, attributeSet);
        setAttributeSet(attributeSet);
        setLayoutParams(generateLayoutParams(attributeSet));
        com.mbridge.msdk.dycreator.utils.c.a(this.f33667a, this);
    }

    @Override
    public String getActionDes() {
        Map<String, String> map = this.f33667a;
        return (map == null || !map.containsKey("mbridgeAction")) ? "" : this.f33667a.get("mbridgeAction");
    }

    @Override
    public String getBindDataDes() {
        Map<String, String> map = this.f33667a;
        return (map == null || !map.containsKey("mbridgeData")) ? "" : this.f33667a.get("mbridgeData");
    }

    @Override
    public String getEffectDes() {
        Map<String, String> map = this.f33667a;
        return (map == null || !map.containsKey("mbridgeEffect")) ? "" : this.f33667a.get("mbridgeEffect");
    }

    @Override
    public String getReportDes() {
        Map<String, String> map = this.f33667a;
        return (map == null || !map.containsKey("mbridgeReport")) ? "" : this.f33667a.get("mbridgeReport");
    }

    @Override
    public String getStrategyDes() {
        Map<String, String> map = this.f33667a;
        return (map == null || !map.containsKey("mbridgeStrategy")) ? "" : this.f33667a.get("mbridgeStrategy");
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Map<String, Boolean> map = this.f33668b;
        if (map != null && map.containsKey("mbridgeAttached") && this.f33668b.get("mbridgeAttached").booleanValue()) {
            new l.b("mbridgeAttached").a().b(this.f33669c);
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Map<String, Boolean> map = this.f33668b;
        if (map != null && map.containsKey("mbridgeDetached") && this.f33668b.get("mbridgeDetached").booleanValue()) {
            new l.b("mbridgeDetached").a().b(this.f33669c);
        }
    }

    public void setAttributeSet(AttributeSet attributeSet) {
        HashMap<String, c> mapC = b.a().c();
        int attributeCount = attributeSet.getAttributeCount();
        for (int i10 = 0; i10 < attributeCount; i10++) {
            c cVar = mapC.get(attributeSet.getAttributeName(i10));
            if (cVar != null) {
                int i11 = AnonymousClass1.f33670a[cVar.ordinal()];
                if (i11 == 1) {
                    String attributeValue = attributeSet.getAttributeValue(i10);
                    if (attributeValue.startsWith("@+id/")) {
                        setId(attributeValue.substring(5).hashCode());
                    }
                } else if (i11 == 2) {
                    String attributeValue2 = attributeSet.getAttributeValue(i10);
                    if (attributeValue2.startsWith(Utils.SEPARATOR)) {
                        setBackgroundColor(b.a().d(attributeSet.getAttributeValue(i10)));
                    } else {
                        if (attributeValue2.startsWith("@drawable/")) {
                            attributeValue2 = attributeValue2.substring(10);
                        }
                        setBackgroundDrawable(new BitmapDrawable(BitmapFactory.decodeFile(getContext().getFilesDir().toString() + "/" + attributeValue2 + ".png")));
                    }
                } else if (i11 == 3) {
                    setContentDescription(attributeSet.getAttributeValue(i10));
                }
            }
        }
    }

    @Override
    public void setDynamicReport(String str, CampaignEx campaignEx) {
        this.f33668b = com.mbridge.msdk.dycreator.utils.c.a(str);
        if (campaignEx != null) {
            this.f33669c = campaignEx.getCampaignUnitId();
        }
    }

    @Override
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        FrameLayout.LayoutParams layoutParamsGenerateDefaultLayoutParams = generateDefaultLayoutParams();
        HashMap<String, c> mapC = b.a().c();
        int attributeCount = attributeSet.getAttributeCount();
        for (int i10 = 0; i10 < attributeCount; i10++) {
            c cVar = mapC.get(attributeSet.getAttributeName(i10));
            if (cVar != null) {
                Log.e("MBscrollviewparam", cVar.toString());
            }
            if (cVar != null) {
                int i11 = AnonymousClass1.f33670a[cVar.ordinal()];
                if (i11 == 4) {
                    setHorizontalFadingEdgeEnabled(attributeSet.getAttributeBooleanValue(i10, false));
                } else if (i11 == 5) {
                    String attributeValue = attributeSet.getAttributeValue(i10);
                    if (!TextUtils.isEmpty(attributeValue)) {
                        if (attributeValue.equals("invisible")) {
                            setVisibility(4);
                        } else if (attributeValue.equalsIgnoreCase("gone")) {
                            setVisibility(8);
                        }
                    }
                } else if (i11 == 6) {
                    layoutParamsGenerateDefaultLayoutParams.bottomMargin = b.a().a(attributeSet.getAttributeValue(i10));
                }
            }
        }
        return layoutParamsGenerateDefaultLayoutParams;
    }
}
