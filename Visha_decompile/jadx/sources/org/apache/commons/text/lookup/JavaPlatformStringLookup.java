package org.apache.commons.text.lookup;

import java.io.PrintStream;
import java.util.Locale;
import org.apache.commons.lang3.StringUtils;

final class JavaPlatformStringLookup extends AbstractStringLookup {
    static final JavaPlatformStringLookup INSTANCE = new JavaPlatformStringLookup();
    private static final String KEY_HARDWARE = "hardware";
    private static final String KEY_LOCALE = "locale";
    private static final String KEY_OS = "os";
    private static final String KEY_RUNTIME = "runtime";
    private static final String KEY_VERSION = "version";
    private static final String KEY_VM = "vm";

    private JavaPlatformStringLookup() {
    }

    private String getSystemProperty(String str) {
        return StringLookupFactory.INSTANCE_SYSTEM_PROPERTIES.lookup(str);
    }

    public static void main(String[] strArr) {
        PrintStream printStream = System.out;
        printStream.println(JavaPlatformStringLookup.class);
        JavaPlatformStringLookup javaPlatformStringLookup = INSTANCE;
        printStream.printf("%s = %s%n", KEY_VERSION, javaPlatformStringLookup.lookup(KEY_VERSION));
        printStream.printf("%s = %s%n", KEY_RUNTIME, javaPlatformStringLookup.lookup(KEY_RUNTIME));
        printStream.printf("%s = %s%n", KEY_VM, javaPlatformStringLookup.lookup(KEY_VM));
        printStream.printf("%s = %s%n", KEY_OS, javaPlatformStringLookup.lookup(KEY_OS));
        printStream.printf("%s = %s%n", KEY_HARDWARE, javaPlatformStringLookup.lookup(KEY_HARDWARE));
        printStream.printf("%s = %s%n", "locale", javaPlatformStringLookup.lookup("locale"));
    }

    public String getHardware() {
        return "processors: " + Runtime.getRuntime().availableProcessors() + ", architecture: " + getSystemProperty("os.arch") + getSystemProperty("-", "sun.arch.data.model") + getSystemProperty(", instruction sets: ", "sun.cpu.isalist");
    }

    public String getLocale() {
        return "default locale: " + Locale.getDefault() + ", platform encoding: " + getSystemProperty("file.encoding");
    }

    public String getOperatingSystem() {
        return getSystemProperty("os.name") + " " + getSystemProperty("os.version") + getSystemProperty(" ", "sun.os.patch.level") + ", architecture: " + getSystemProperty("os.arch") + getSystemProperty("-", "sun.arch.data.model");
    }

    public String getRuntime() {
        return getSystemProperty("java.runtime.name") + " (build " + getSystemProperty("java.runtime.version") + ") from " + getSystemProperty("java.vendor");
    }

    public String getVirtualMachine() {
        return getSystemProperty("java.vm.name") + " (build " + getSystemProperty("java.vm.version") + ", " + getSystemProperty("java.vm.info") + ")";
    }

    @Override
    public String lookup(String str) {
        if (str == null) {
            return null;
        }
        switch (str) {
            case "locale":
                return getLocale();
            case "os":
                return getOperatingSystem();
            case "vm":
                return getVirtualMachine();
            case "hardware":
                return getHardware();
            case "version":
                return "Java version " + getSystemProperty("java.version");
            case "runtime":
                return getRuntime();
            default:
                throw new IllegalArgumentException(str);
        }
    }

    private String getSystemProperty(String str, String str2) {
        String systemProperty = getSystemProperty(str2);
        if (StringUtils.isEmpty(systemProperty)) {
            return "";
        }
        return str + systemProperty;
    }
}
