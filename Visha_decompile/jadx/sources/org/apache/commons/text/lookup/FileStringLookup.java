package org.apache.commons.text.lookup;

import java.nio.file.Files;
import java.nio.file.Paths;
import org.apache.commons.lang3.StringUtils;

final class FileStringLookup extends AbstractStringLookup {
    static final AbstractStringLookup INSTANCE = new FileStringLookup();

    private FileStringLookup() {
    }

    @Override
    public String lookup(String str) {
        if (str == null) {
            return null;
        }
        String[] strArrSplit = str.split(String.valueOf(':'));
        if (strArrSplit.length < 2) {
            throw IllegalArgumentExceptions.format("Bad file key format [%s], expected format is CharsetName:DocumentPath.", str);
        }
        String str2 = strArrSplit[0];
        String strSubstringAfter = StringUtils.substringAfter(str, 58);
        try {
            return new String(Files.readAllBytes(Paths.get(strSubstringAfter, new String[0])), str2);
        } catch (Exception e) {
            throw IllegalArgumentExceptions.format(e, "Error looking up file [%s] with charset [%s].", strSubstringAfter, str2);
        }
    }
}
