package com.google.android.datatransport.cct.internal;

final class e extends ClientInfo {

    private final ClientInfo.ClientType f23611a;

    private final com.google.android.datatransport.cct.internal.a f23612b;

    static final class b extends ClientInfo.a {

        private ClientInfo.ClientType f23613a;

        private com.google.android.datatransport.cct.internal.a f23614b;

        b() {
        }

        @Override
        public ClientInfo a() {
            return new e(this.f23613a, this.f23614b);
        }

        @Override
        public ClientInfo.a b(com.google.android.datatransport.cct.internal.a aVar) {
            this.f23614b = aVar;
            return this;
        }

        @Override
        public ClientInfo.a c(ClientInfo.ClientType clientType) {
            this.f23613a = clientType;
            return this;
        }
    }

    @Override
    public com.google.android.datatransport.cct.internal.a b() {
        return this.f23612b;
    }

    @Override
    public ClientInfo.ClientType c() {
        return this.f23611a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ClientInfo)) {
            return false;
        }
        ClientInfo clientInfo = (ClientInfo) obj;
        ClientInfo.ClientType clientType = this.f23611a;
        if (clientType != null ? clientType.equals(clientInfo.c()) : clientInfo.c() == null) {
            com.google.android.datatransport.cct.internal.a aVar = this.f23612b;
            if (aVar == null) {
                if (clientInfo.b() == null) {
                    return true;
                }
            } else if (aVar.equals(clientInfo.b())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        ClientInfo.ClientType clientType = this.f23611a;
        int iHashCode = ((clientType == null ? 0 : clientType.hashCode()) ^ 1000003) * 1000003;
        com.google.android.datatransport.cct.internal.a aVar = this.f23612b;
        return iHashCode ^ (aVar != null ? aVar.hashCode() : 0);
    }

    public String toString() {
        return "ClientInfo{clientType=" + this.f23611a + ", androidClientInfo=" + this.f23612b + "}";
    }

    private e(ClientInfo.ClientType clientType, com.google.android.datatransport.cct.internal.a aVar) {
        this.f23611a = clientType;
        this.f23612b = aVar;
    }
}
