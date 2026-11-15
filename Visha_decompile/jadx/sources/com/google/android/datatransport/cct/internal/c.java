package com.google.android.datatransport.cct.internal;

import org.apache.commons.text.StringSubstitutor;

public final class c extends NetworkConnectionInfo {
    public final NetworkConnectionInfo.NetworkType a;
    public final NetworkConnectionInfo.MobileSubtype b;

    public static final class b extends NetworkConnectionInfo.a {
        public NetworkConnectionInfo.NetworkType a;
        public NetworkConnectionInfo.MobileSubtype b;

        @Override
        public NetworkConnectionInfo a() {
            return new c(this.a, this.b);
        }

        @Override
        public NetworkConnectionInfo.a b(NetworkConnectionInfo.MobileSubtype mobileSubtype) {
            this.b = mobileSubtype;
            return this;
        }

        @Override
        public NetworkConnectionInfo.a c(NetworkConnectionInfo.NetworkType networkType) {
            this.a = networkType;
            return this;
        }
    }

    @Override
    public NetworkConnectionInfo.MobileSubtype b() {
        return this.b;
    }

    @Override
    public NetworkConnectionInfo.NetworkType c() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof NetworkConnectionInfo)) {
            return false;
        }
        NetworkConnectionInfo networkConnectionInfo = (NetworkConnectionInfo) obj;
        NetworkConnectionInfo.NetworkType networkType = this.a;
        if (networkType != null ? networkType.equals(networkConnectionInfo.c()) : networkConnectionInfo.c() == null) {
            NetworkConnectionInfo.MobileSubtype mobileSubtype = this.b;
            if (mobileSubtype == null) {
                if (networkConnectionInfo.b() == null) {
                    return true;
                }
            } else if (mobileSubtype.equals(networkConnectionInfo.b())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        NetworkConnectionInfo.NetworkType networkType = this.a;
        int iHashCode = ((networkType == null ? 0 : networkType.hashCode()) ^ 1000003) * 1000003;
        NetworkConnectionInfo.MobileSubtype mobileSubtype = this.b;
        return iHashCode ^ (mobileSubtype != null ? mobileSubtype.hashCode() : 0);
    }

    public String toString() {
        return "NetworkConnectionInfo{networkType=" + this.a + ", mobileSubtype=" + this.b + StringSubstitutor.DEFAULT_VAR_END;
    }

    public c(NetworkConnectionInfo.NetworkType networkType, NetworkConnectionInfo.MobileSubtype mobileSubtype) {
        this.a = networkType;
        this.b = mobileSubtype;
    }
}
