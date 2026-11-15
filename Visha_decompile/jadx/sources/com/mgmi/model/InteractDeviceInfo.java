package com.mgmi.model;

import io.appmetrica.analytics.coreutils.internal.system.ConstantDeviceInfo;
import java.io.Serializable;

public class InteractDeviceInfo implements com.mgadplus.netlib.json.a, Serializable {
    public String androidid;
    public String appVersion;
    public String aver;
    public String brand;
    public String carrier;
    public String ch;
    public String channel;
    public String did;
    public String isNightSkin;
    public String mf;
    public String mod;
    public String model;

    public String f19net;
    public String network;
    public String oaid;
    public String os;
    public String osType = ConstantDeviceInfo.APP_PLATFORM;
    public String osVersion;
    public String pkgch;
    public String sver;
    public String version;

    public String toString() {
        return "InteractDeviceInfo{brand='" + this.brand + "', did='" + this.did + "', os='" + this.os + "', version='" + this.version + "', model='" + this.model + "', mf='" + this.mf + "', osType='" + this.osType + "', osVersion='" + this.osVersion + "', appVersion='" + this.appVersion + "', net='" + this.f19net + "', oaid='" + this.oaid + "', mod='" + this.mod + "', channel='" + this.channel + "', carrier='" + this.carrier + "', androidid='" + this.androidid + "', network='" + this.network + "', pkgch='" + this.pkgch + "', ch='" + this.ch + "', sver='" + this.sver + "', aver='" + this.aver + "', isNightSkin='" + this.isNightSkin + "'}";
    }
}
