package com.google.android.datatransport.cct.internal;

final class c extends com.google.android.datatransport.cct.internal.a {

    private final Integer f23586a;

    private final String f23587b;

    private final String f23588c;

    private final String f23589d;

    private final String f23590e;

    private final String f23591f;

    private final String f23592g;

    private final String f23593h;

    private final String f23594i;

    private final String f23595j;

    private final String f23596k;

    private final String f23597l;

    static final class b extends com.google.android.datatransport.cct.internal.a.AbstractC0335a {

        private Integer f23598a;

        private String f23599b;

        private String f23600c;

        private String f23601d;

        private String f23602e;

        private String f23603f;

        private String f23604g;

        private String f23605h;

        private String f23606i;

        private String f23607j;

        private String f23608k;

        private String f23609l;

        b() {
        }

        @Override
        public com.google.android.datatransport.cct.internal.a a() {
            return new c(this.f23598a, this.f23599b, this.f23600c, this.f23601d, this.f23602e, this.f23603f, this.f23604g, this.f23605h, this.f23606i, this.f23607j, this.f23608k, this.f23609l);
        }

        @Override
        public com.google.android.datatransport.cct.internal.a.AbstractC0335a b(String str) {
            this.f23609l = str;
            return this;
        }

        @Override
        public com.google.android.datatransport.cct.internal.a.AbstractC0335a c(String str) {
            this.f23607j = str;
            return this;
        }

        @Override
        public com.google.android.datatransport.cct.internal.a.AbstractC0335a d(String str) {
            this.f23601d = str;
            return this;
        }

        @Override
        public com.google.android.datatransport.cct.internal.a.AbstractC0335a e(String str) {
            this.f23605h = str;
            return this;
        }

        @Override
        public com.google.android.datatransport.cct.internal.a.AbstractC0335a f(String str) {
            this.f23600c = str;
            return this;
        }

        @Override
        public com.google.android.datatransport.cct.internal.a.AbstractC0335a g(String str) {
            this.f23606i = str;
            return this;
        }

        @Override
        public com.google.android.datatransport.cct.internal.a.AbstractC0335a h(String str) {
            this.f23604g = str;
            return this;
        }

        @Override
        public com.google.android.datatransport.cct.internal.a.AbstractC0335a i(String str) {
            this.f23608k = str;
            return this;
        }

        @Override
        public com.google.android.datatransport.cct.internal.a.AbstractC0335a j(String str) {
            this.f23599b = str;
            return this;
        }

        @Override
        public com.google.android.datatransport.cct.internal.a.AbstractC0335a k(String str) {
            this.f23603f = str;
            return this;
        }

        @Override
        public com.google.android.datatransport.cct.internal.a.AbstractC0335a l(String str) {
            this.f23602e = str;
            return this;
        }

        @Override
        public com.google.android.datatransport.cct.internal.a.AbstractC0335a m(Integer num) {
            this.f23598a = num;
            return this;
        }
    }

    @Override
    public String b() {
        return this.f23597l;
    }

    @Override
    public String c() {
        return this.f23595j;
    }

    @Override
    public String d() {
        return this.f23589d;
    }

    @Override
    public String e() {
        return this.f23593h;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof com.google.android.datatransport.cct.internal.a)) {
            return false;
        }
        com.google.android.datatransport.cct.internal.a aVar = (com.google.android.datatransport.cct.internal.a) obj;
        Integer num = this.f23586a;
        if (num != null ? num.equals(aVar.m()) : aVar.m() == null) {
            String str = this.f23587b;
            if (str != null ? str.equals(aVar.j()) : aVar.j() == null) {
                String str2 = this.f23588c;
                if (str2 != null ? str2.equals(aVar.f()) : aVar.f() == null) {
                    String str3 = this.f23589d;
                    if (str3 != null ? str3.equals(aVar.d()) : aVar.d() == null) {
                        String str4 = this.f23590e;
                        if (str4 != null ? str4.equals(aVar.l()) : aVar.l() == null) {
                            String str5 = this.f23591f;
                            if (str5 != null ? str5.equals(aVar.k()) : aVar.k() == null) {
                                String str6 = this.f23592g;
                                if (str6 != null ? str6.equals(aVar.h()) : aVar.h() == null) {
                                    String str7 = this.f23593h;
                                    if (str7 != null ? str7.equals(aVar.e()) : aVar.e() == null) {
                                        String str8 = this.f23594i;
                                        if (str8 != null ? str8.equals(aVar.g()) : aVar.g() == null) {
                                            String str9 = this.f23595j;
                                            if (str9 != null ? str9.equals(aVar.c()) : aVar.c() == null) {
                                                String str10 = this.f23596k;
                                                if (str10 != null ? str10.equals(aVar.i()) : aVar.i() == null) {
                                                    String str11 = this.f23597l;
                                                    if (str11 == null) {
                                                        if (aVar.b() == null) {
                                                            return true;
                                                        }
                                                    } else if (str11.equals(aVar.b())) {
                                                        return true;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    @Override
    public String f() {
        return this.f23588c;
    }

    @Override
    public String g() {
        return this.f23594i;
    }

    @Override
    public String h() {
        return this.f23592g;
    }

    public int hashCode() {
        Integer num = this.f23586a;
        int iHashCode = ((num == null ? 0 : num.hashCode()) ^ 1000003) * 1000003;
        String str = this.f23587b;
        int iHashCode2 = (iHashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        String str2 = this.f23588c;
        int iHashCode3 = (iHashCode2 ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f23589d;
        int iHashCode4 = (iHashCode3 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        String str4 = this.f23590e;
        int iHashCode5 = (iHashCode4 ^ (str4 == null ? 0 : str4.hashCode())) * 1000003;
        String str5 = this.f23591f;
        int iHashCode6 = (iHashCode5 ^ (str5 == null ? 0 : str5.hashCode())) * 1000003;
        String str6 = this.f23592g;
        int iHashCode7 = (iHashCode6 ^ (str6 == null ? 0 : str6.hashCode())) * 1000003;
        String str7 = this.f23593h;
        int iHashCode8 = (iHashCode7 ^ (str7 == null ? 0 : str7.hashCode())) * 1000003;
        String str8 = this.f23594i;
        int iHashCode9 = (iHashCode8 ^ (str8 == null ? 0 : str8.hashCode())) * 1000003;
        String str9 = this.f23595j;
        int iHashCode10 = (iHashCode9 ^ (str9 == null ? 0 : str9.hashCode())) * 1000003;
        String str10 = this.f23596k;
        int iHashCode11 = (iHashCode10 ^ (str10 == null ? 0 : str10.hashCode())) * 1000003;
        String str11 = this.f23597l;
        return iHashCode11 ^ (str11 != null ? str11.hashCode() : 0);
    }

    @Override
    public String i() {
        return this.f23596k;
    }

    @Override
    public String j() {
        return this.f23587b;
    }

    @Override
    public String k() {
        return this.f23591f;
    }

    @Override
    public String l() {
        return this.f23590e;
    }

    @Override
    public Integer m() {
        return this.f23586a;
    }

    public String toString() {
        return "AndroidClientInfo{sdkVersion=" + this.f23586a + ", model=" + this.f23587b + ", hardware=" + this.f23588c + ", device=" + this.f23589d + ", product=" + this.f23590e + ", osBuild=" + this.f23591f + ", manufacturer=" + this.f23592g + ", fingerprint=" + this.f23593h + ", locale=" + this.f23594i + ", country=" + this.f23595j + ", mccMnc=" + this.f23596k + ", applicationBuild=" + this.f23597l + "}";
    }

    private c(Integer num, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11) {
        this.f23586a = num;
        this.f23587b = str;
        this.f23588c = str2;
        this.f23589d = str3;
        this.f23590e = str4;
        this.f23591f = str5;
        this.f23592g = str6;
        this.f23593h = str7;
        this.f23594i = str8;
        this.f23595j = str9;
        this.f23596k = str10;
        this.f23597l = str11;
    }
}
