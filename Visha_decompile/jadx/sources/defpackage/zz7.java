package defpackage;

import java.net.MalformedURLException;
import java.net.URL;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.utils.Parser;

public final class zz7 extends il5 {
    public static final zz7 a = new zz7();

    public static zz7 j() {
        return a;
    }

    @Override
    public String f(String str) {
        return Parser.m("(/w/|(/videos/(watch/|embed/)?))(?!p/)([^/?&#]*)", str, 4);
    }

    @Override
    public String g(String str) {
        return h(str, ce9.d.z());
    }

    @Override
    public String h(String str, String str2) {
        return str2 + "/videos/watch/" + str;
    }

    @Override
    public boolean i(String str) {
        if (str.contains("/playlist/")) {
            return false;
        }
        try {
            new URL(str);
            f(str);
            return true;
        } catch (MalformedURLException | ParsingException unused) {
            return false;
        }
    }
}
