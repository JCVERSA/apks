package o;

public final class e implements g {

    public String f1284c = null;

    public String f1282a = null;

    public Long f1283b = null;

    @Override
    public final void a(d dVar) {
        e.c cVar = (e.c) dVar.f1281d;
        String str = (String) dVar.f1280c;
        str.getClass();
        if (str.equals("uses-sdk")) {
            cVar.i("targetSdkVersion");
            cVar.i("maxSdkVersion");
            return;
        }
        if (str.equals("manifest")) {
            this.f1282a = cVar.i("package");
            cVar.i("versionName");
            cVar.h("revisionCode");
            this.f1284c = cVar.i("split");
            Long lH = cVar.h("versionCodeMajor");
            Long lH2 = cVar.h("versionCode");
            this.f1283b = lH2;
            if (lH != null) {
                if (lH2 == null) {
                    this.f1283b = 0L;
                }
                this.f1283b = Long.valueOf((lH.longValue() << 32) | (this.f1283b.longValue() & 4294967295L));
            }
            cVar.i("compileSdkVersion");
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
