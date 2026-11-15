package org.greenrobot.eventbus;

import java.io.PrintStream;
import java.util.logging.Level;
import org.greenrobot.eventbus.android.AndroidComponents;

public interface Logger {

    public static class Default {
        public static Logger get() {
            return AndroidComponents.areAvailable() ? AndroidComponents.get().logger : new SystemOutLogger();
        }
    }

    public static class JavaLogger implements Logger {
        protected final java.util.logging.Logger logger;

        public JavaLogger(String str) {
            this.logger = java.util.logging.Logger.getLogger(str);
        }

        @Override
        public void log(Level level, String str) {
            this.logger.log(level, str);
        }

        @Override
        public void log(Level level, String str, Throwable th) {
            this.logger.log(level, str, th);
        }
    }

    public static class SystemOutLogger implements Logger {
        @Override
        public void log(Level level, String str) {
            System.out.println("[" + level + "] " + str);
        }

        @Override
        public void log(Level level, String str, Throwable th) {
            PrintStream printStream = System.out;
            printStream.println("[" + level + "] " + str);
            th.printStackTrace(printStream);
        }
    }

    void log(Level level, String str);

    void log(Level level, String str, Throwable th);
}
