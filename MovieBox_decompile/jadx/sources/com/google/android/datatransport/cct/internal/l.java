package com.google.android.datatransport.cct.internal;

final class l extends NetworkConnectionInfo {

    private final NetworkConnectionInfo.NetworkType f23659a;

    private final NetworkConnectionInfo.MobileSubtype f23660b;

    static final class b extends NetworkConnectionInfo.a {

        private NetworkConnectionInfo.NetworkType f23661a;

        private NetworkConnectionInfo.MobileSubtype f23662b;

        b() {
        }

        @Override
        public NetworkConnectionInfo a() {
            return new l(this.f23661a, this.f23662b);
        }

        @Override
        public NetworkConnectionInfo.a b(NetworkConnectionInfo.MobileSubtype mobileSubtype) {
            this.f23662b = mobileSubtype;
            return this;
        }

        @Override
        public NetworkConnectionInfo.a c(NetworkConnectionInfo.NetworkType networkType) {
            this.f23661a = networkType;
            return this;
        }
    }

    @Override
    public NetworkConnectionInfo.MobileSubtype b() {
        return this.f23660b;
    }

    @Override
    public NetworkConnectionInfo.NetworkType c() {
        return this.f23659a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof NetworkConnectionInfo)) {
            return false;
        }
        NetworkConnectionInfo networkConnectionInfo = (NetworkConnectionInfo) obj;
        NetworkConnectionInfo.NetworkType networkType = this.f23659a;
        if (networkType != null ? networkType.equals(networkConnectionInfo.c()) : networkConnectionInfo.c() == null) {
            NetworkConnectionInfo.MobileSubtype mobileSubtype = this.f23660b;
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
        NetworkConnectionInfo.NetworkType networkType = this.f23659a;
        int iHashCode = ((networkType == null ? 0 : networkType.hashCode()) ^ 1000003) * 1000003;
        NetworkConnectionInfo.MobileSubtype mobileSubtype = this.f23660b;
        return iHashCode ^ (mobileSubtype != null ? mobileSubtype.hashCode() : 0);
    }

    public String toString() {
        return "NetworkConnectionInfo{networkType=" + this.f23659a + ", mobileSubtype=" + this.f23660b + "}";
    }

    private l(NetworkConnectionInfo.NetworkType networkType, NetworkConnectionInfo.MobileSubtype mobileSubtype) {
        this.f23659a = networkType;
        this.f23660b = mobileSubtype;
    }
}
