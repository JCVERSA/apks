package defpackage;

public final class n05 {
    public a a;
    public b b;

    public static final class a {
        public String a;
        public String b;
        public String c;
        public String d;
        public String e;

        public a(String str, String str2, String str3, String str4, String str5) {
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = str4;
            this.e = str5;
        }
    }

    public static final class b {
        public String a;
        public String b;
        public String c;
        public String d;
        public String e;
        public int f;

        public b(String str, String str2, String str3, String str4, String str5, int i) {
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = str4;
            this.e = str5;
            this.f = i;
        }
    }

    public n05(a aVar, b bVar) {
        this.a = aVar;
        this.b = bVar;
    }

    public static n05 a() {
        return new n05(new a("ANDROID", "19.28.35", "WATCH", "3", null), new b("MOBILE", null, null, "Android", "15", 35));
    }

    public static n05 b() {
        return new n05(new a("IOS", "20.03.02", "WATCH", "5", null), new b("MOBILE", "Apple", "iPhone16,2", "iOS", "18.2.1.22C161", -1));
    }

    public static n05 c() {
        return new n05(new a("TVHTML5", "7.20250122.15.00", "WATCH", "7", null), new b("GAME_CONSOLE", "Sony", "PlayStation 4", "PlayStation 4", "", -1));
    }

    public static n05 d() {
        return new n05(new a("WEB", "2.20250122.04.00", "WATCH", "1", null), new b("DESKTOP", null, null, null, null, -1));
    }

    public static n05 e() {
        return new n05(new a("WEB_EMBEDDED_PLAYER", "1.20250122.01.00", "EMBED", "56", null), new b("DESKTOP", null, null, null, null, -1));
    }
}
