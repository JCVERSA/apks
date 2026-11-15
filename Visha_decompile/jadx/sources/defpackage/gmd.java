package defpackage;

import java.io.File;
import java.io.FileFilter;
import java.util.regex.Pattern;

public final class gmd implements FileFilter {
    @Override
    public final boolean accept(File file) {
        return Pattern.matches("cpu[0-9]+", file.getName());
    }
}
