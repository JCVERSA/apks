package com.transsion.api.gateway.config;

import com.transsion.api.gateway.bean.RemoteConfig;
import java.util.ArrayList;
import java.util.List;

public class a {

    public final boolean f41367a;

    public final boolean f41368b;

    public final boolean f41369c;

    public final int f41370d;

    public final long f41371e;

    public final int f41372f;

    public final long f41373g;

    public final String f41374h;

    public final List f41375i;

    public final List f41376j;

    public final List f41377k;

    public a(C0574a c0574a) {
        this.f41367a = c0574a.f41378a;
        this.f41368b = c0574a.f41379b;
        this.f41369c = c0574a.f41380c;
        this.f41370d = c0574a.f41381d;
        this.f41371e = c0574a.f41382e;
        this.f41372f = c0574a.f41386i;
        this.f41373g = c0574a.f41383f;
        this.f41374h = c0574a.f41384g;
        this.f41375i = c0574a.f41385h;
        this.f41376j = c0574a.f41387j;
        this.f41377k = c0574a.f41388k;
    }

    public String toString() {
        return "GatewayConfig{activateGatewayDns=" + this.f41367a + ", useGateway=" + this.f41368b + ", activateTracking=" + this.f41369c + ", requestTimeout=" + this.f41370d + ", refreshInterval=" + this.f41371e + ", configVersion=" + this.f41372f + ", metricsInterval=" + this.f41373g + ", gatewayHost='" + this.f41374h + "', gatewayIp=" + this.f41375i + ", useGatewayHostList=" + this.f41376j + ", gatewayStrategy=" + this.f41377k + '}';
    }

    public static final class C0574a {

        public boolean f41378a;

        public boolean f41379b;

        public boolean f41380c;

        public int f41381d;

        public long f41382e;

        public long f41383f;

        public String f41384g;

        public List f41385h;

        public int f41386i;

        public List f41387j;

        public List f41388k;

        public C0574a() {
            this.f41378a = false;
            this.f41379b = false;
            this.f41380c = true;
            this.f41381d = 60000;
            this.f41382e = 3600000L;
            this.f41383f = 3600000L;
            this.f41386i = 0;
            this.f41387j = new ArrayList();
            this.f41388k = new ArrayList();
        }

        public C0574a a(RemoteConfig remoteConfig) {
            this.f41378a = remoteConfig.activateGatewayDns;
            this.f41379b = remoteConfig.useGateway;
            this.f41380c = remoteConfig.activateTracking;
            this.f41381d = remoteConfig.requestTimeout;
            this.f41382e = remoteConfig.refreshInterval;
            this.f41383f = remoteConfig.metricsInterval;
            this.f41387j = remoteConfig.useGatewayHostList;
            this.f41388k = remoteConfig.gatewayStrategy;
            this.f41386i = remoteConfig.configVersion;
            this.f41384g = remoteConfig.gatewayHost;
            this.f41385h = remoteConfig.gatewayIp;
            return this;
        }

        public C0574a(a aVar) {
            this.f41378a = aVar.f41367a;
            this.f41379b = aVar.f41368b;
            this.f41380c = aVar.f41369c;
            this.f41381d = aVar.f41370d;
            this.f41382e = aVar.f41371e;
            this.f41383f = aVar.f41373g;
            this.f41387j = aVar.f41376j;
            this.f41388k = aVar.f41377k;
            this.f41386i = aVar.f41372f;
            this.f41384g = aVar.f41374h;
            this.f41385h = aVar.f41375i;
        }
    }
}
