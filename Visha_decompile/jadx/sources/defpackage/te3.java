package defpackage;

import java.io.File;

public abstract class te3 {
    public static final String b(File file, File file2, String str) {
        StringBuilder sb = new StringBuilder(file.toString());
        if (file2 != null) {
            sb.append(" -> " + file2);
        }
        if (str != null) {
            sb.append(": " + str);
        }
        String string = sb.toString();
        y45.i(string, "toString(...)");
        return string;
    }
}
