package com.cloud.hisavana.sdk.internal.agentpage.bean;

import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.transsion.push.PushConstants;
import defpackage.p9;
import defpackage.r6;
import defpackage.y45;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0013\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\t\u0010#\u001a\u00020\u0003HÆ\u0003J\t\u0010$\u001a\u00020\u0003HÆ\u0003J\t\u0010%\u001a\u00020\u0003HÆ\u0003J'\u0010&\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010'\u001a\u00020\u00182\b\u0010(\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010)\u001a\u00020\u0012HÖ\u0001J\t\u0010*\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\t\"\u0004\b\r\u0010\u000bR\u001a\u0010\u000e\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\t\"\u0004\b\u0010\u0010\u000bR\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\t\"\u0004\b\u001d\u0010\u000bR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\t\"\u0004\b\u001f\u0010\u000bR\u001a\u0010 \u001a\u00020\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u0014\"\u0004\b\"\u0010\u0016¨\u0006+"}, d2 = {"Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;", "", "url", "", "codeSeatId", "triggerId", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", PushConstants.PROVIDER_FIELD_APP_ID, "getAppId", "()Ljava/lang/String;", "setAppId", "(Ljava/lang/String;)V", "getCodeSeatId", "setCodeSeatId", "gaid", "getGaid", "setGaid", "height", "", "getHeight", "()I", "setHeight", "(I)V", "isMonkey", "", "()Z", "setMonkey", "(Z)V", "getTriggerId", "setTriggerId", "getUrl", "setUrl", "width", "getWidth", "setWidth", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AgentPageCurrentAd {
    private String appId;
    private String codeSeatId;
    private String gaid;
    private int height;
    private boolean isMonkey;
    private String triggerId;
    private String url;
    private int width;

    public AgentPageCurrentAd(String str, String str2, String str3) {
        y45.j(str, "url");
        y45.j(str2, "codeSeatId");
        y45.j(str3, "triggerId");
        this.url = str;
        this.codeSeatId = str2;
        this.triggerId = str3;
        String strF = DeviceUtil.f();
        this.gaid = strF == null ? "" : strF;
        String str4 = r6.b;
        this.appId = str4 != null ? str4 : "";
        this.isMonkey = p9.k();
    }

    public static AgentPageCurrentAd copy$default(AgentPageCurrentAd agentPageCurrentAd, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = agentPageCurrentAd.url;
        }
        if ((i & 2) != 0) {
            str2 = agentPageCurrentAd.codeSeatId;
        }
        if ((i & 4) != 0) {
            str3 = agentPageCurrentAd.triggerId;
        }
        return agentPageCurrentAd.copy(str, str2, str3);
    }

    public final String getUrl() {
        return this.url;
    }

    public final String getCodeSeatId() {
        return this.codeSeatId;
    }

    public final String getTriggerId() {
        return this.triggerId;
    }

    public final AgentPageCurrentAd copy(String url, String codeSeatId, String triggerId) {
        y45.j(url, "url");
        y45.j(codeSeatId, "codeSeatId");
        y45.j(triggerId, "triggerId");
        return new AgentPageCurrentAd(url, codeSeatId, triggerId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AgentPageCurrentAd)) {
            return false;
        }
        AgentPageCurrentAd agentPageCurrentAd = (AgentPageCurrentAd) other;
        return y45.e(this.url, agentPageCurrentAd.url) && y45.e(this.codeSeatId, agentPageCurrentAd.codeSeatId) && y45.e(this.triggerId, agentPageCurrentAd.triggerId);
    }

    public final String getAppId() {
        return this.appId;
    }

    public final String getCodeSeatId() {
        return this.codeSeatId;
    }

    public final String getGaid() {
        return this.gaid;
    }

    public final int getHeight() {
        return this.height;
    }

    public final String getTriggerId() {
        return this.triggerId;
    }

    public final String getUrl() {
        return this.url;
    }

    public final int getWidth() {
        return this.width;
    }

    public int hashCode() {
        return (((this.url.hashCode() * 31) + this.codeSeatId.hashCode()) * 31) + this.triggerId.hashCode();
    }

    public final boolean getIsMonkey() {
        return this.isMonkey;
    }

    public final void setAppId(String str) {
        y45.j(str, "<set-?>");
        this.appId = str;
    }

    public final void setCodeSeatId(String str) {
        y45.j(str, "<set-?>");
        this.codeSeatId = str;
    }

    public final void setGaid(String str) {
        y45.j(str, "<set-?>");
        this.gaid = str;
    }

    public final void setHeight(int i) {
        this.height = i;
    }

    public final void setMonkey(boolean z) {
        this.isMonkey = z;
    }

    public final void setTriggerId(String str) {
        y45.j(str, "<set-?>");
        this.triggerId = str;
    }

    public final void setUrl(String str) {
        y45.j(str, "<set-?>");
        this.url = str;
    }

    public final void setWidth(int i) {
        this.width = i;
    }

    public String toString() {
        return "AgentPageCurrentAd(url=" + this.url + ", codeSeatId=" + this.codeSeatId + ", triggerId=" + this.triggerId + ')';
    }
}
