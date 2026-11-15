package com.transsion.api.gateway.analytics;

public class a {

    public boolean f41357c;

    public boolean f41358d;

    public long f41359e;

    public String f41360f;

    public String f41361g;

    public String f41362h;

    public String f41363i;

    public int f41364j;

    public int f41365k;

    public long f41356b = System.currentTimeMillis();

    public String f41355a = String.valueOf(System.currentTimeMillis());

    public String toString() {
        return "RequestAnalyticsData{requestId='" + this.f41355a + "', requestSubId='" + ((String) null) + "', requestStartTime=" + this.f41356b + ", subRequestStartTime=0, isIpConnect=" + this.f41357c + ", isGateway=" + this.f41358d + ", requestSize=" + this.f41359e + ", responseSize=0, ip='" + ((String) null) + "', host='" + this.f41360f + "', netQuality=0, path='" + this.f41361g + "', originUrl='" + this.f41362h + "', originHost='" + this.f41363i + "', domain='" + ((String) null) + "', result='" + ((String) null) + "', retryTime=" + this.f41364j + ", responseCode=" + this.f41365k + '}';
    }
}
