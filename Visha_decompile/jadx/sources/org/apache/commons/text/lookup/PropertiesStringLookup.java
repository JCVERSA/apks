package org.apache.commons.text.lookup;

import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Paths;
import java.util.Properties;
import org.apache.commons.lang3.StringUtils;

final class PropertiesStringLookup extends AbstractStringLookup {
    static final PropertiesStringLookup INSTANCE = new PropertiesStringLookup();
    static final String SEPARATOR = "::";

    private PropertiesStringLookup() {
    }

    public static String toPropertyKey(String str, String str2) {
        return AbstractStringLookup.toLookupKey(str, SEPARATOR, str2);
    }

    @Override
    public String lookup(String str) {
        if (str == null) {
            return null;
        }
        String[] strArrSplit = str.split(SEPARATOR);
        if (strArrSplit.length < 2) {
            throw IllegalArgumentExceptions.format("Bad properties key format [%s]; expected format is %s.", str, toPropertyKey("DocumentPath", "Key"));
        }
        String str2 = strArrSplit[0];
        String strSubstringAfter = StringUtils.substringAfter(str, SEPARATOR);
        try {
            Properties properties = new Properties();
            InputStream inputStreamNewInputStream = Files.newInputStream(Paths.get(str2, new String[0]), new OpenOption[0]);
            try {
                properties.load(inputStreamNewInputStream);
                if (inputStreamNewInputStream != null) {
                    inputStreamNewInputStream.close();
                }
                return properties.getProperty(strSubstringAfter);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    if (inputStreamNewInputStream != null) {
                        try {
                            inputStreamNewInputStream.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            }
        } catch (Exception e) {
            throw IllegalArgumentExceptions.format(e, "Error looking up properties [%s] and key [%s].", str2, strSubstringAfter);
        }
    }
}
