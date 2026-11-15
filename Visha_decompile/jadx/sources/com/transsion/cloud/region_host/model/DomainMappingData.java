package com.transsion.cloud.region_host.model;

import defpackage.y45;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONException;
import org.json.JSONObject;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\b\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB7\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\bJ\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003JE\u0010\u0014\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\u0006\u0010\u001a\u001a\u00020\u0003J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\nR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\nR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\n¨\u0006\u001d"}, d2 = {"Lcom/transsion/cloud/region_host/model/DomainMappingData;", "", "cloudServerWebUrlTecno", "", "cloudServerWebUrlInfinix", "cloudServerWebUrlItel", "cloudDiskWeb", "cloudServer", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getCloudDiskWeb", "()Ljava/lang/String;", "getCloudServer", "getCloudServerWebUrlInfinix", "getCloudServerWebUrlItel", "getCloudServerWebUrlTecno", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "", "toJson", "toString", "Companion", "lib-region-host_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DomainMappingData {

    public static final Companion INSTANCE = new Companion(null);
    private final String cloudDiskWeb;
    private final String cloudServer;
    private final String cloudServerWebUrlInfinix;
    private final String cloudServerWebUrlItel;
    private final String cloudServerWebUrlTecno;

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0004¨\u0006\u000b"}, d2 = {"Lcom/transsion/cloud/region_host/model/DomainMappingData$Companion;", "", "()V", "parse", "Lcom/transsion/cloud/region_host/model/DomainMappingData;", "json", "", "jsonObject", "Lorg/json/JSONObject;", "toJson", "data", "lib-region-host_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DomainMappingData parse(String json) {
            y45.j(json, "json");
            return parse(new JSONObject(json));
        }

        public final String toJson(DomainMappingData data) throws JSONException {
            y45.j(data, "data");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("cloudServerWebUrlTecno", data.getCloudServerWebUrlTecno());
            jSONObject.put("cloudServerWebUrlInfinix", data.getCloudServerWebUrlInfinix());
            jSONObject.put("cloudServerWebUrlItel", data.getCloudServerWebUrlItel());
            jSONObject.put("cloudDiskWeb", data.getCloudDiskWeb());
            jSONObject.put("cloudServer", data.getCloudServer());
            String string = jSONObject.toString();
            y45.i(string, "toString(...)");
            return string;
        }

        private Companion() {
        }

        public final DomainMappingData parse(JSONObject jsonObject) {
            y45.j(jsonObject, "jsonObject");
            return new DomainMappingData(jsonObject.optString("cloudServerWebUrlTecno"), jsonObject.optString("cloudServerWebUrlInfinix"), jsonObject.optString("cloudServerWebUrlItel"), jsonObject.optString("cloudDiskWeb"), jsonObject.optString("cloudServer"));
        }
    }

    public DomainMappingData(String str, String str2, String str3, String str4, String str5) {
        this.cloudServerWebUrlTecno = str;
        this.cloudServerWebUrlInfinix = str2;
        this.cloudServerWebUrlItel = str3;
        this.cloudDiskWeb = str4;
        this.cloudServer = str5;
    }

    public static DomainMappingData copy$default(DomainMappingData domainMappingData, String str, String str2, String str3, String str4, String str5, int i, Object obj) {
        if ((i & 1) != 0) {
            str = domainMappingData.cloudServerWebUrlTecno;
        }
        if ((i & 2) != 0) {
            str2 = domainMappingData.cloudServerWebUrlInfinix;
        }
        String str6 = str2;
        if ((i & 4) != 0) {
            str3 = domainMappingData.cloudServerWebUrlItel;
        }
        String str7 = str3;
        if ((i & 8) != 0) {
            str4 = domainMappingData.cloudDiskWeb;
        }
        String str8 = str4;
        if ((i & 16) != 0) {
            str5 = domainMappingData.cloudServer;
        }
        return domainMappingData.copy(str, str6, str7, str8, str5);
    }

    public final String getCloudServerWebUrlTecno() {
        return this.cloudServerWebUrlTecno;
    }

    public final String getCloudServerWebUrlInfinix() {
        return this.cloudServerWebUrlInfinix;
    }

    public final String getCloudServerWebUrlItel() {
        return this.cloudServerWebUrlItel;
    }

    public final String getCloudDiskWeb() {
        return this.cloudDiskWeb;
    }

    public final String getCloudServer() {
        return this.cloudServer;
    }

    public final DomainMappingData copy(String cloudServerWebUrlTecno, String cloudServerWebUrlInfinix, String cloudServerWebUrlItel, String cloudDiskWeb, String cloudServer) {
        return new DomainMappingData(cloudServerWebUrlTecno, cloudServerWebUrlInfinix, cloudServerWebUrlItel, cloudDiskWeb, cloudServer);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DomainMappingData)) {
            return false;
        }
        DomainMappingData domainMappingData = (DomainMappingData) other;
        return y45.e(this.cloudServerWebUrlTecno, domainMappingData.cloudServerWebUrlTecno) && y45.e(this.cloudServerWebUrlInfinix, domainMappingData.cloudServerWebUrlInfinix) && y45.e(this.cloudServerWebUrlItel, domainMappingData.cloudServerWebUrlItel) && y45.e(this.cloudDiskWeb, domainMappingData.cloudDiskWeb) && y45.e(this.cloudServer, domainMappingData.cloudServer);
    }

    public final String getCloudDiskWeb() {
        return this.cloudDiskWeb;
    }

    public final String getCloudServer() {
        return this.cloudServer;
    }

    public final String getCloudServerWebUrlInfinix() {
        return this.cloudServerWebUrlInfinix;
    }

    public final String getCloudServerWebUrlItel() {
        return this.cloudServerWebUrlItel;
    }

    public final String getCloudServerWebUrlTecno() {
        return this.cloudServerWebUrlTecno;
    }

    public int hashCode() {
        String str = this.cloudServerWebUrlTecno;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.cloudServerWebUrlInfinix;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.cloudServerWebUrlItel;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.cloudDiskWeb;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.cloudServer;
        return iHashCode4 + (str5 != null ? str5.hashCode() : 0);
    }

    public final String toJson() {
        return INSTANCE.toJson(this);
    }

    public String toString() {
        return "DomainMappingData(cloudServerWebUrlTecno=" + this.cloudServerWebUrlTecno + ", cloudServerWebUrlInfinix=" + this.cloudServerWebUrlInfinix + ", cloudServerWebUrlItel=" + this.cloudServerWebUrlItel + ", cloudDiskWeb=" + this.cloudDiskWeb + ", cloudServer=" + this.cloudServer + ")";
    }
}
