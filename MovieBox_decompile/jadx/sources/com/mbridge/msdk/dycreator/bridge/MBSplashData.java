package com.mbridge.msdk.dycreator.bridge;

import com.mbridge.msdk.dycreator.viewdata.base.a;
import com.mbridge.msdk.dycreator.wrapper.DyOption;
import com.mbridge.msdk.foundation.entity.CampaignEx;

public class MBSplashData implements a {

    private DyOption f33931a;

    private String f33932b;

    private String f33933c;

    private String f33934d;

    private String f33935e;

    private CampaignEx f33936f;

    private int f33937g;

    private int f33938h;

    private float f33939i;

    private float f33940j;

    private int f33941k = 0;

    public MBSplashData(DyOption dyOption) {
        this.f33931a = dyOption;
        this.f33936f = dyOption.getCampaignEx();
    }

    public String getAdClickText() {
        return this.f33933c;
    }

    public String getAppInfo() {
        return this.f33932b;
    }

    @Override
    public CampaignEx getBindData() {
        return this.f33936f;
    }

    public int getClickType() {
        return this.f33941k;
    }

    public String getCountDownText() {
        return this.f33934d;
    }

    public DyOption getDyOption() {
        return this.f33931a;
    }

    @Override
    public DyOption getEffectData() {
        return this.f33931a;
    }

    public int getLogoImage() {
        return this.f33938h;
    }

    public String getLogoText() {
        return this.f33935e;
    }

    public int getNoticeImage() {
        return this.f33937g;
    }

    public float getxInScreen() {
        return this.f33939i;
    }

    public float getyInScreen() {
        return this.f33940j;
    }

    public void setAdClickText(String str) {
        this.f33933c = str;
    }

    public void setAppInfo(String str) {
        this.f33932b = str;
    }

    public void setClickType(int i10) {
        this.f33941k = i10;
    }

    public void setCountDownText(String str) {
        this.f33934d = str;
    }

    public void setLogoImage(int i10) {
        this.f33938h = i10;
    }

    public void setLogoText(String str) {
        this.f33935e = str;
    }

    public void setNoticeImage(int i10) {
        this.f33937g = i10;
    }

    public void setxInScreen(float f10) {
        this.f33939i = f10;
    }

    public void setyInScreen(float f10) {
        this.f33940j = f10;
    }
}
