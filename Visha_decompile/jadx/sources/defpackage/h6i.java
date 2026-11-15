package defpackage;

import java.io.File;
import java.io.FilenameFilter;
import java.util.regex.Pattern;

public final class h6i implements FilenameFilter {
    public final Pattern b;

    public h6i(Pattern pattern) {
        pattern.getClass();
        this.b = pattern;
    }

    @Override
    public final boolean accept(File file, String str) {
        return this.b.matcher(str).matches();
    }
}
