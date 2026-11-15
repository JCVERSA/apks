package com.google.firebase.crashlytics.internal.model;

import java.util.List;

final class f extends CrashlyticsReport.d {

    private final List f30689a;

    private final String f30690b;

    static final class b extends CrashlyticsReport.d.a {

        private List f30691a;

        private String f30692b;

        b() {
        }

        @Override
        public CrashlyticsReport.d a() {
            List list = this.f30691a;
            if (list != null) {
                return new f(list, this.f30692b);
            }
            throw new IllegalStateException("Missing required properties: files");
        }

        @Override
        public CrashlyticsReport.d.a b(List list) {
            if (list == null) {
                throw new NullPointerException("Null files");
            }
            this.f30691a = list;
            return this;
        }

        @Override
        public CrashlyticsReport.d.a c(String str) {
            this.f30692b = str;
            return this;
        }
    }

    @Override
    public List b() {
        return this.f30689a;
    }

    @Override
    public String c() {
        return this.f30690b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.d)) {
            return false;
        }
        CrashlyticsReport.d dVar = (CrashlyticsReport.d) obj;
        if (this.f30689a.equals(dVar.b())) {
            String str = this.f30690b;
            if (str == null) {
                if (dVar.c() == null) {
                    return true;
                }
            } else if (str.equals(dVar.c())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int iHashCode = (this.f30689a.hashCode() ^ 1000003) * 1000003;
        String str = this.f30690b;
        return iHashCode ^ (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "FilesPayload{files=" + this.f30689a + ", orgId=" + this.f30690b + "}";
    }

    private f(List list, String str) {
        this.f30689a = list;
        this.f30690b = str;
    }
}
