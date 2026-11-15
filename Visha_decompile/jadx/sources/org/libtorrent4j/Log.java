package org.libtorrent4j;

import java.util.logging.Level;
import java.util.logging.Logger;

final class Log {
    private static final Logger LOGGER = Logger.getLogger("lt4j");

    private Log() {
    }

    public static void error(String str, Throwable th) {
        LOGGER.log(Level.SEVERE, str, th);
    }

    public static void warn(String str, Throwable th) {
        LOGGER.log(Level.WARNING, str, th);
    }

    public static void error(String str) {
        LOGGER.log(Level.SEVERE, str);
    }

    public static void warn(String str) {
        LOGGER.log(Level.WARNING, str);
    }
}
