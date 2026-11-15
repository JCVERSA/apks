package defpackage;

public final class hed {
    public final String a;
    public final String b;
    public final int c;
    public final Double d;
    public final int e;
    public final int f;
    public final String g;
    public final String h;
    public final String i;
    public final int j;
    public final String k;
    public final String l;
    public final String m;
    public final String n;
    public final String o;
    public final String p;

    public hed(String str, String str2, int i, Double d, int i2, int i3, String str3, String str4, String str5, int i4, String str6, String str7, String str8, String str9, String str10, String str11) {
        y45.j(str, "ad_creative_id");
        y45.j(str2, "codeSeatId");
        this.a = str;
        this.b = str2;
        this.c = i;
        this.d = d;
        this.e = i2;
        this.f = i3;
        this.g = str3;
        this.h = str4;
        this.i = str5;
        this.j = i4;
        this.k = str6;
        this.l = str7;
        this.m = str8;
        this.n = str9;
        this.o = str10;
        this.p = str11;
    }

    public final String a() {
        return this.p;
    }

    public final String b() {
        return this.a;
    }

    public final int c() {
        return this.e;
    }

    public final int d() {
        return this.c;
    }

    public final String e() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof hed)) {
            return false;
        }
        hed hedVar = (hed) obj;
        return y45.e(this.a, hedVar.a) && y45.e(this.b, hedVar.b) && this.c == hedVar.c && y45.e(this.d, hedVar.d) && this.e == hedVar.e && this.f == hedVar.f && y45.e(this.g, hedVar.g) && y45.e(this.h, hedVar.h) && y45.e(this.i, hedVar.i) && this.j == hedVar.j && y45.e(this.k, hedVar.k) && y45.e(this.l, hedVar.l) && y45.e(this.m, hedVar.m) && y45.e(this.n, hedVar.n) && y45.e(this.o, hedVar.o) && y45.e(this.p, hedVar.p);
    }

    public final String f() {
        return this.o;
    }

    public final String g() {
        return this.n;
    }

    public final String h() {
        return this.m;
    }

    public int hashCode() {
        int iHashCode = ((((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + Integer.hashCode(this.c)) * 31;
        Double d = this.d;
        int iHashCode2 = (((((iHashCode + (d == null ? 0 : d.hashCode())) * 31) + Integer.hashCode(this.e)) * 31) + Integer.hashCode(this.f)) * 31;
        String str = this.g;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.h;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.i;
        int iHashCode5 = (((iHashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31) + Integer.hashCode(this.j)) * 31;
        String str4 = this.k;
        int iHashCode6 = (iHashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.l;
        int iHashCode7 = (iHashCode6 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.m;
        int iHashCode8 = (iHashCode7 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.n;
        int iHashCode9 = (iHashCode8 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.o;
        int iHashCode10 = (iHashCode9 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.p;
        return iHashCode10 + (str9 != null ? str9.hashCode() : 0);
    }

    public final String i() {
        return this.l;
    }

    public final int j() {
        return this.j;
    }

    public final String k() {
        return this.g;
    }

    public final int l() {
        return this.f;
    }

    public final String m() {
        return this.i;
    }

    public final String n() {
        return this.k;
    }

    public final Double o() {
        return this.d;
    }

    public final String p() {
        return this.h;
    }

    public String toString() {
        return "DefaultAdEntity(ad_creative_id=" + this.a + ", codeSeatId=" + this.b + ", ad_type=" + this.c + ", price=" + this.d + ", ad_request_ver=" + this.e + ", displayed_times=" + this.f + ", displayed_date=" + this.g + ", start_date=" + this.h + ", end_date=" + this.i + ", display_max_times=" + this.j + ", file_path=" + this.k + ", default_country_white=" + this.l + ", default_country_black=" + this.m + ", default_brand_white=" + this.n + ", default_brand_black=" + this.o + ", ad_bean=" + this.p + ')';
    }
}
