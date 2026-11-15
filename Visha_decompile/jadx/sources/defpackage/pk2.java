package defpackage;

public final class pk2 implements zk2 {
    @Override
    public String a(String str) {
        y45.j(str, "imageUrl");
        if (!g1a.R(str, "divkit-asset", false, 2, null)) {
            return str;
        }
        return "file:///android_asset/divkit/" + j1a.F0(str, "divkit-asset://");
    }
}
