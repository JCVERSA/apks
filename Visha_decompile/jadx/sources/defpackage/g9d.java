package defpackage;

import java.io.File;
import java.io.FilenameFilter;

public final class g9d implements FilenameFilter {
    public final String b;

    public g9d(String str) {
        this.b = str;
    }

    @Override
    public final boolean accept(File file, String str) {
        return str.endsWith(this.b);
    }
}
