package com.google.firebase.crashlytics.internal.model;

import java.util.List;

final class y extends CrashlyticsReport.e.d.f {

    private final List f30875a;

    static final class b extends CrashlyticsReport.e.d.f.a {

        private List f30876a;

        b() {
        }

        @Override
        public CrashlyticsReport.e.d.f a() {
            List list = this.f30876a;
            if (list != null) {
                return new y(list);
            }
            throw new IllegalStateException("Missing required properties: rolloutAssignments");
        }

        @Override
        public CrashlyticsReport.e.d.f.a b(List list) {
            if (list == null) {
                throw new NullPointerException("Null rolloutAssignments");
            }
            this.f30876a = list;
            return this;
        }
    }

    @Override
    public List b() {
        return this.f30875a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof CrashlyticsReport.e.d.f) {
            return this.f30875a.equals(((CrashlyticsReport.e.d.f) obj).b());
        }
        return false;
    }

    public int hashCode() {
        return this.f30875a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "RolloutsState{rolloutAssignments=" + this.f30875a + "}";
    }

    private y(List list) {
        this.f30875a = list;
    }
}
