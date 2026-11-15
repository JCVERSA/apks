package defpackage;

import org.schabi.newpipe.extractor.utils.a;

public final class m70 extends il5 {
    public static final m70 a = new m70();

    public static m70 j() {
        return a;
    }

    @Override
    public String f(String str) {
        return j60.m(str) ? str.split("bandcamp.com/\\?show=")[1] : g(str);
    }

    @Override
    public String g(String str) {
        if (!str.matches("\\d+")) {
            return a.w(str);
        }
        return "https://bandcamp.com/?show=" + str;
    }

    @Override
    public boolean i(String str) {
        if (j60.m(str)) {
            return true;
        }
        if (str.toLowerCase().matches("https?://.+\\..+/track/.+")) {
            return j60.l(str);
        }
        return false;
    }
}
