package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.internal.CounterConfigurationReporterType;

public final class C2581h4 {
    public final String a;
    public final String b;
    public final Integer c;
    public final String d;
    public final CounterConfigurationReporterType e;

    public C2581h4(String str, String str2, Integer num, String str3, CounterConfigurationReporterType counterConfigurationReporterType) {
        this.a = str;
        this.b = str2;
        this.c = num;
        this.d = str3;
        this.e = counterConfigurationReporterType;
    }

    public static C2581h4 a(C2431b4 c2431b4) {
        return new C2581h4(c2431b4.b.getApiKey(), c2431b4.a.a.getAsString("PROCESS_CFG_PACKAGE_NAME"), c2431b4.a.a.getAsInteger("PROCESS_CFG_PROCESS_ID"), c2431b4.a.a.getAsString("PROCESS_CFG_PROCESS_SESSION_ID"), c2431b4.b.getReporterType());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C2581h4.class != obj.getClass()) {
            return false;
        }
        C2581h4 c2581h4 = (C2581h4) obj;
        String str = this.a;
        if (str == null ? c2581h4.a != null : !str.equals(c2581h4.a)) {
            return false;
        }
        if (!this.b.equals(c2581h4.b)) {
            return false;
        }
        Integer num = this.c;
        if (num == null ? c2581h4.c != null : !num.equals(c2581h4.c)) {
            return false;
        }
        String str2 = this.d;
        if (str2 == null ? c2581h4.d == null : str2.equals(c2581h4.d)) {
            return this.e == c2581h4.e;
        }
        return false;
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (this.b.hashCode() + ((str != null ? str.hashCode() : 0) * 31)) * 31;
        Integer num = this.c;
        int iHashCode2 = (iHashCode + (num != null ? num.hashCode() : 0)) * 31;
        String str2 = this.d;
        return this.e.hashCode() + ((iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    public final String toString() {
        return "ClientDescription{mApiKey='" + this.a + "', mPackageName='" + this.b + "', mProcessID=" + this.c + ", mProcessSessionID='" + this.d + "', mReporterType=" + this.e + '}';
    }
}
