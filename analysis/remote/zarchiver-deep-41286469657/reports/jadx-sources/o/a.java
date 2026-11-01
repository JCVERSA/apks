package o;

public final class a implements g {

    public boolean f1264a;

    public boolean f1265b;

    public String f1266c;

    public String f1267d;

    public static String e(d dVar, String str) {
        for (r.a aVar : (r.a[]) ((e.c) dVar.f1281d).f588a) {
            if (aVar.f1419b.equals(str)) {
                return aVar.f1422e;
            }
        }
        return null;
    }

    @Override
    public final void a(d dVar) {
        if (((String) dVar.f1280c).equals("background")) {
            this.f1264a = false;
            this.f1265b = true;
            this.f1267d = e(dVar, "drawable");
        } else if (((String) dVar.f1280c).equals("foreground")) {
            this.f1264a = true;
            this.f1265b = false;
            this.f1266c = e(dVar, "drawable");
        } else if (((String) dVar.f1280c).equals("bitmap")) {
            if (this.f1264a) {
                this.f1266c = e(dVar, "src");
            } else if (this.f1265b) {
                this.f1267d = e(dVar, "src");
            }
        }
    }

    @Override
    public final void b() {
    }

    @Override
    public final void c() {
    }

    @Override
    public final void d() {
    }
}
