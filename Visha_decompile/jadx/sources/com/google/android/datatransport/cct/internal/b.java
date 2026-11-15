package com.google.android.datatransport.cct.internal;

import defpackage.ob;
import org.apache.commons.text.StringSubstitutor;

public final class b extends ClientInfo {
    public final ClientInfo.ClientType a;
    public final ob b;

    public static final class C0074b extends ClientInfo.a {
        public ClientInfo.ClientType a;
        public ob b;

        @Override
        public ClientInfo a() {
            return new b(this.a, this.b);
        }

        @Override
        public ClientInfo.a b(ob obVar) {
            this.b = obVar;
            return this;
        }

        @Override
        public ClientInfo.a c(ClientInfo.ClientType clientType) {
            this.a = clientType;
            return this;
        }
    }

    @Override
    public ob b() {
        return this.b;
    }

    @Override
    public ClientInfo.ClientType c() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ClientInfo)) {
            return false;
        }
        ClientInfo clientInfo = (ClientInfo) obj;
        ClientInfo.ClientType clientType = this.a;
        if (clientType != null ? clientType.equals(clientInfo.c()) : clientInfo.c() == null) {
            ob obVar = this.b;
            if (obVar == null) {
                if (clientInfo.b() == null) {
                    return true;
                }
            } else if (obVar.equals(clientInfo.b())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        ClientInfo.ClientType clientType = this.a;
        int iHashCode = ((clientType == null ? 0 : clientType.hashCode()) ^ 1000003) * 1000003;
        ob obVar = this.b;
        return iHashCode ^ (obVar != null ? obVar.hashCode() : 0);
    }

    public String toString() {
        return "ClientInfo{clientType=" + this.a + ", androidClientInfo=" + this.b + StringSubstitutor.DEFAULT_VAR_END;
    }

    public b(ClientInfo.ClientType clientType, ob obVar) {
        this.a = clientType;
        this.b = obVar;
    }
}
