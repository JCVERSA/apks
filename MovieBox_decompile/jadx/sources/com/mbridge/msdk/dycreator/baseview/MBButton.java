package com.mbridge.msdk.dycreator.baseview;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.Button;
import com.mbridge.msdk.dycreator.baseview.inter.InterBase;
import com.mbridge.msdk.dycreator.utils.a;
import com.mbridge.msdk.dycreator.utils.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.l;
import java.util.Map;

public class MBButton extends Button implements InterBase {

    private Map<String, String> f33615a;

    private Map<String, Boolean> f33616b;

    private String f33617c;

    public MBButton(Context context) {
        super(context);
        this.f33617c = "";
    }

    @Override
    public String getActionDes() {
        Map<String, String> map = this.f33615a;
        return (map == null || !map.containsKey("mbridgeAction")) ? "" : this.f33615a.get("mbridgeAction");
    }

    @Override
    public String getBindDataDes() {
        Map<String, String> map = this.f33615a;
        return (map == null || !map.containsKey("mbridgeData")) ? "" : this.f33615a.get("mbridgeData");
    }

    @Override
    public String getEffectDes() {
        Map<String, String> map = this.f33615a;
        return (map == null || !map.containsKey("mbridgeEffect")) ? "" : this.f33615a.get("mbridgeEffect");
    }

    @Override
    public String getReportDes() {
        Map<String, String> map = this.f33615a;
        return (map == null || !map.containsKey("mbridgeReport")) ? "" : this.f33615a.get("mbridgeReport");
    }

    @Override
    public String getStrategyDes() {
        Map<String, String> map = this.f33615a;
        return (map == null || !map.containsKey("mbridgeStrategy")) ? "" : this.f33615a.get("mbridgeStrategy");
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Map<String, Boolean> map = this.f33616b;
        if (map != null && map.containsKey("mbridgeAttached") && this.f33616b.get("mbridgeAttached").booleanValue()) {
            new l.b("mbridgeAttached").a().b(this.f33617c);
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Map<String, Boolean> map = this.f33616b;
        if (map != null && map.containsKey("mbridgeDetached") && this.f33616b.get("mbridgeDetached").booleanValue()) {
            new l.b("mbridgeDetached").a().b(this.f33617c);
        }
    }

    @Override
    public void setDynamicReport(String str, CampaignEx campaignEx) {
        this.f33616b = c.a(str);
        if (campaignEx != null) {
            this.f33617c = campaignEx.getCampaignUnitId();
        }
    }

    public MBButton(Context context, AttributeSet attributeSet) {
        super(context);
        this.f33617c = "";
        this.f33615a = c.a(context, attributeSet);
        a.a(this, attributeSet);
        c.a(this.f33615a, this);
    }

    public MBButton(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f33617c = "";
    }
}
