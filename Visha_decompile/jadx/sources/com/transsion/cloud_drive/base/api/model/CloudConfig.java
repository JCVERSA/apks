package com.transsion.cloud_drive.base.api.model;

import defpackage.v95;
import defpackage.y45;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001:\u0002\u0019\u001aB'\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0007HÆ\u0003J+\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u001b"}, d2 = {"Lcom/transsion/cloud_drive/base/api/model/CloudConfig;", "", "checksum", "", "networkStandardMap", "Lcom/transsion/cloud_drive/base/api/model/CloudConfig$NetworkStandardMap;", "autoDeleteConfig", "Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;", "(Ljava/lang/String;Lcom/transsion/cloud_drive/base/api/model/CloudConfig$NetworkStandardMap;Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;)V", "getAutoDeleteConfig", "()Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;", "getChecksum", "()Ljava/lang/String;", "getNetworkStandardMap", "()Lcom/transsion/cloud_drive/base/api/model/CloudConfig$NetworkStandardMap;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "AutoDeleteConfig", "NetworkStandardMap", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CloudConfig {

    @v95(name = "auto_delete_config")
    private final AutoDeleteConfig autoDeleteConfig;

    @v95(name = "checksum")
    private final String checksum;

    @v95(name = "network_standard_map")
    private final NetworkStandardMap networkStandardMap;

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0013\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\bJ\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\rJ&\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00032\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001R\"\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u000b\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\"\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u001a"}, d2 = {"Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;", "", "abandonAutoDelete", "", "autoDeleteStrategy", "", "(Ljava/lang/Boolean;Ljava/lang/Integer;)V", "getAbandonAutoDelete", "()Ljava/lang/Boolean;", "setAbandonAutoDelete", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getAutoDeleteStrategy", "()Ljava/lang/Integer;", "setAutoDeleteStrategy", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "component1", "component2", "copy", "(Ljava/lang/Boolean;Ljava/lang/Integer;)Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;", "equals", "other", "hashCode", "toString", "", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class AutoDeleteConfig {

        @v95(name = "abandon_auto_delete")
        private Boolean abandonAutoDelete;

        @v95(name = "auto_delete_strategy")
        private Integer autoDeleteStrategy;

        /* JADX WARN: Multi-variable type inference failed */
        public AutoDeleteConfig() {
            this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }

        public static AutoDeleteConfig copy$default(AutoDeleteConfig autoDeleteConfig, Boolean bool, Integer num, int i, Object obj) {
            if ((i & 1) != 0) {
                bool = autoDeleteConfig.abandonAutoDelete;
            }
            if ((i & 2) != 0) {
                num = autoDeleteConfig.autoDeleteStrategy;
            }
            return autoDeleteConfig.copy(bool, num);
        }

        public final Boolean getAbandonAutoDelete() {
            return this.abandonAutoDelete;
        }

        public final Integer getAutoDeleteStrategy() {
            return this.autoDeleteStrategy;
        }

        public final AutoDeleteConfig copy(Boolean abandonAutoDelete, Integer autoDeleteStrategy) {
            return new AutoDeleteConfig(abandonAutoDelete, autoDeleteStrategy);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof AutoDeleteConfig)) {
                return false;
            }
            AutoDeleteConfig autoDeleteConfig = (AutoDeleteConfig) other;
            return y45.e(this.abandonAutoDelete, autoDeleteConfig.abandonAutoDelete) && y45.e(this.autoDeleteStrategy, autoDeleteConfig.autoDeleteStrategy);
        }

        public final Boolean getAbandonAutoDelete() {
            return this.abandonAutoDelete;
        }

        public final Integer getAutoDeleteStrategy() {
            return this.autoDeleteStrategy;
        }

        public int hashCode() {
            Boolean bool = this.abandonAutoDelete;
            int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
            Integer num = this.autoDeleteStrategy;
            return iHashCode + (num != null ? num.hashCode() : 0);
        }

        public final void setAbandonAutoDelete(Boolean bool) {
            this.abandonAutoDelete = bool;
        }

        public final void setAutoDeleteStrategy(Integer num) {
            this.autoDeleteStrategy = num;
        }

        public String toString() {
            return "AutoDeleteConfig(abandonAutoDelete=" + this.abandonAutoDelete + ", autoDeleteStrategy=" + this.autoDeleteStrategy + ")";
        }

        public AutoDeleteConfig(Boolean bool, Integer num) {
            this.abandonAutoDelete = bool;
            this.autoDeleteStrategy = num;
        }

        public AutoDeleteConfig(Boolean bool, Integer num, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : bool, (i & 2) != 0 ? null : num);
        }
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u001a\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001BA\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\bJ\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\nJ\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\nJ\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\nJ\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\nJ\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\nJJ\u0010\u001b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u001cJ\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010 \u001a\u00020!HÖ\u0001J\t\u0010\"\u001a\u00020#HÖ\u0001R\"\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\r\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\"\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\r\u001a\u0004\b\u000e\u0010\n\"\u0004\b\u000f\u0010\fR\"\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\r\u001a\u0004\b\u0010\u0010\n\"\u0004\b\u0011\u0010\fR\"\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\r\u001a\u0004\b\u0012\u0010\n\"\u0004\b\u0013\u0010\fR\"\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\r\u001a\u0004\b\u0014\u0010\n\"\u0004\b\u0015\u0010\f¨\u0006$"}, d2 = {"Lcom/transsion/cloud_drive/base/api/model/CloudConfig$NetworkStandardMap;", "", "_5g", "", "_4g", "_3g", "_2g", "wifi", "(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V", "get_2g", "()Ljava/lang/Long;", "set_2g", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "get_3g", "set_3g", "get_4g", "set_4g", "get_5g", "set_5g", "getWifi", "setWifi", "component1", "component2", "component3", "component4", "component5", "copy", "(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Lcom/transsion/cloud_drive/base/api/model/CloudConfig$NetworkStandardMap;", "equals", "", "other", "hashCode", "", "toString", "", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class NetworkStandardMap {

        @v95(name = "2G")
        private Long _2g;

        @v95(name = "3G")
        private Long _3g;

        @v95(name = "4G")
        private Long _4g;

        @v95(name = "5G")
        private Long _5g;

        @v95(name = "WIFI")
        private Long wifi;

        public NetworkStandardMap() {
            this(null, null, null, null, null, 31, null);
        }

        public static NetworkStandardMap copy$default(NetworkStandardMap networkStandardMap, Long l, Long l2, Long l3, Long l4, Long l5, int i, Object obj) {
            if ((i & 1) != 0) {
                l = networkStandardMap._5g;
            }
            if ((i & 2) != 0) {
                l2 = networkStandardMap._4g;
            }
            Long l6 = l2;
            if ((i & 4) != 0) {
                l3 = networkStandardMap._3g;
            }
            Long l7 = l3;
            if ((i & 8) != 0) {
                l4 = networkStandardMap._2g;
            }
            Long l8 = l4;
            if ((i & 16) != 0) {
                l5 = networkStandardMap.wifi;
            }
            return networkStandardMap.copy(l, l6, l7, l8, l5);
        }

        public final Long get_5g() {
            return this._5g;
        }

        public final Long get_4g() {
            return this._4g;
        }

        public final Long get_3g() {
            return this._3g;
        }

        public final Long get_2g() {
            return this._2g;
        }

        public final Long getWifi() {
            return this.wifi;
        }

        public final NetworkStandardMap copy(Long _5g, Long _4g, Long _3g, Long _2g, Long wifi) {
            return new NetworkStandardMap(_5g, _4g, _3g, _2g, wifi);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof NetworkStandardMap)) {
                return false;
            }
            NetworkStandardMap networkStandardMap = (NetworkStandardMap) other;
            return y45.e(this._5g, networkStandardMap._5g) && y45.e(this._4g, networkStandardMap._4g) && y45.e(this._3g, networkStandardMap._3g) && y45.e(this._2g, networkStandardMap._2g) && y45.e(this.wifi, networkStandardMap.wifi);
        }

        public final Long getWifi() {
            return this.wifi;
        }

        public final Long get_2g() {
            return this._2g;
        }

        public final Long get_3g() {
            return this._3g;
        }

        public final Long get_4g() {
            return this._4g;
        }

        public final Long get_5g() {
            return this._5g;
        }

        public int hashCode() {
            Long l = this._5g;
            int iHashCode = (l == null ? 0 : l.hashCode()) * 31;
            Long l2 = this._4g;
            int iHashCode2 = (iHashCode + (l2 == null ? 0 : l2.hashCode())) * 31;
            Long l3 = this._3g;
            int iHashCode3 = (iHashCode2 + (l3 == null ? 0 : l3.hashCode())) * 31;
            Long l4 = this._2g;
            int iHashCode4 = (iHashCode3 + (l4 == null ? 0 : l4.hashCode())) * 31;
            Long l5 = this.wifi;
            return iHashCode4 + (l5 != null ? l5.hashCode() : 0);
        }

        public final void setWifi(Long l) {
            this.wifi = l;
        }

        public final void set_2g(Long l) {
            this._2g = l;
        }

        public final void set_3g(Long l) {
            this._3g = l;
        }

        public final void set_4g(Long l) {
            this._4g = l;
        }

        public final void set_5g(Long l) {
            this._5g = l;
        }

        public String toString() {
            return "NetworkStandardMap(_5g=" + this._5g + ", _4g=" + this._4g + ", _3g=" + this._3g + ", _2g=" + this._2g + ", wifi=" + this.wifi + ")";
        }

        public NetworkStandardMap(Long l, Long l2, Long l3, Long l4, Long l5) {
            this._5g = l;
            this._4g = l2;
            this._3g = l3;
            this._2g = l4;
            this.wifi = l5;
        }

        public NetworkStandardMap(Long l, Long l2, Long l3, Long l4, Long l5, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : l, (i & 2) != 0 ? null : l2, (i & 4) != 0 ? null : l3, (i & 8) != 0 ? null : l4, (i & 16) != 0 ? null : l5);
        }
    }

    public CloudConfig() {
        this(null, null, null, 7, null);
    }

    public static CloudConfig copy$default(CloudConfig cloudConfig, String str, NetworkStandardMap networkStandardMap, AutoDeleteConfig autoDeleteConfig, int i, Object obj) {
        if ((i & 1) != 0) {
            str = cloudConfig.checksum;
        }
        if ((i & 2) != 0) {
            networkStandardMap = cloudConfig.networkStandardMap;
        }
        if ((i & 4) != 0) {
            autoDeleteConfig = cloudConfig.autoDeleteConfig;
        }
        return cloudConfig.copy(str, networkStandardMap, autoDeleteConfig);
    }

    public final String getChecksum() {
        return this.checksum;
    }

    public final NetworkStandardMap getNetworkStandardMap() {
        return this.networkStandardMap;
    }

    public final AutoDeleteConfig getAutoDeleteConfig() {
        return this.autoDeleteConfig;
    }

    public final CloudConfig copy(String checksum, NetworkStandardMap networkStandardMap, AutoDeleteConfig autoDeleteConfig) {
        y45.j(checksum, "checksum");
        return new CloudConfig(checksum, networkStandardMap, autoDeleteConfig);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CloudConfig)) {
            return false;
        }
        CloudConfig cloudConfig = (CloudConfig) other;
        return y45.e(this.checksum, cloudConfig.checksum) && y45.e(this.networkStandardMap, cloudConfig.networkStandardMap) && y45.e(this.autoDeleteConfig, cloudConfig.autoDeleteConfig);
    }

    public final AutoDeleteConfig getAutoDeleteConfig() {
        return this.autoDeleteConfig;
    }

    public final String getChecksum() {
        return this.checksum;
    }

    public final NetworkStandardMap getNetworkStandardMap() {
        return this.networkStandardMap;
    }

    public int hashCode() {
        int iHashCode = this.checksum.hashCode() * 31;
        NetworkStandardMap networkStandardMap = this.networkStandardMap;
        int iHashCode2 = (iHashCode + (networkStandardMap == null ? 0 : networkStandardMap.hashCode())) * 31;
        AutoDeleteConfig autoDeleteConfig = this.autoDeleteConfig;
        return iHashCode2 + (autoDeleteConfig != null ? autoDeleteConfig.hashCode() : 0);
    }

    public String toString() {
        return "CloudConfig(checksum=" + this.checksum + ", networkStandardMap=" + this.networkStandardMap + ", autoDeleteConfig=" + this.autoDeleteConfig + ")";
    }

    public CloudConfig(String str, NetworkStandardMap networkStandardMap, AutoDeleteConfig autoDeleteConfig) {
        y45.j(str, "checksum");
        this.checksum = str;
        this.networkStandardMap = networkStandardMap;
        this.autoDeleteConfig = autoDeleteConfig;
    }

    public CloudConfig(String str, NetworkStandardMap networkStandardMap, AutoDeleteConfig autoDeleteConfig, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? null : networkStandardMap, (i & 4) != 0 ? null : autoDeleteConfig);
    }
}
