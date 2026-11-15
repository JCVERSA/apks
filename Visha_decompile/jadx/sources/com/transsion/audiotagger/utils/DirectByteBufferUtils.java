package com.transsion.audiotagger.utils;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DirectByteBufferUtils {
    public static final Logger LOGGER = Logger.getLogger(DirectByteBufferUtils.class.getName());
    private static ReleaseStrategy releaseStrategy = decideReleaseStrategy();

    public static final class AndroidReleaseStrategy implements ReleaseStrategy {
        private static final ReleaseStrategy INSTANCE = new AndroidReleaseStrategy();
        private static final Method freeMethod = DirectByteBufferUtils.loadMethod("java.nio.DirectByteBuffer", "free");

        private AndroidReleaseStrategy() {
        }

        @Override
        public void release(Buffer buffer) {
            Method method = freeMethod;
            if (method == null) {
                DirectByteBufferUtils.LOGGER.log(Level.WARNING, "Can't release direct buffer as free method weren't available on: " + buffer);
                return;
            }
            try {
                method.invoke(buffer, null);
            } catch (IllegalAccessException e) {
                DirectByteBufferUtils.LOGGER.log(Level.WARNING, "Authorisation failed to invoke release on: " + buffer, (Throwable) e);
            } catch (InvocationTargetException e2) {
                DirectByteBufferUtils.LOGGER.log(Level.WARNING, "Failed to release: " + buffer, (Throwable) e2);
            }
        }
    }

    public static final class OpenJdkReleaseStrategy implements ReleaseStrategy {
        private static final Method viewedBufferMethod;
        private static final ReleaseStrategy INSTANCE = new OpenJdkReleaseStrategy();
        private static final Method cleanerMethod = DirectByteBufferUtils.loadMethod("sun.nio.ch.DirectBuffer", "cleaner");
        private static final Method cleanMethod = DirectByteBufferUtils.loadMethod("sun.misc.Cleaner", "clean");

        static {
            Method methodLoadMethod = DirectByteBufferUtils.loadMethod("sun.nio.ch.DirectBuffer", "viewedBuffer");
            if (methodLoadMethod == null) {
                methodLoadMethod = DirectByteBufferUtils.loadMethod("sun.nio.ch.DirectBuffer", "attachment");
            }
            viewedBufferMethod = methodLoadMethod;
        }

        private OpenJdkReleaseStrategy() {
        }

        @Override
        public void release(Buffer buffer) {
            try {
                Object objInvoke = cleanerMethod.invoke(buffer, null);
                if (objInvoke != null) {
                    cleanMethod.invoke(objInvoke, null);
                } else {
                    Object objInvoke2 = viewedBufferMethod.invoke(buffer, null);
                    if (objInvoke2 != null) {
                        release((Buffer) objInvoke2);
                    } else {
                        DirectByteBufferUtils.LOGGER.log(Level.WARNING, "Can't release direct buffer as neither cleaner nor viewedBuffer were available on:" + buffer.getClass());
                    }
                }
            } catch (IllegalAccessException e) {
                DirectByteBufferUtils.LOGGER.log(Level.WARNING, "Authorisation failed to invoke release on: " + buffer, (Throwable) e);
            } catch (InvocationTargetException e2) {
                DirectByteBufferUtils.LOGGER.log(Level.WARNING, "Failed to release: " + buffer, (Throwable) e2);
            }
        }
    }

    public interface ReleaseStrategy {
        void release(Buffer buffer);
    }

    public static final class UnsupportedJvmReleaseStrategy implements ReleaseStrategy {
        private static final ReleaseStrategy INSTANCE = new UnsupportedJvmReleaseStrategy();

        private UnsupportedJvmReleaseStrategy() {
        }

        @Override
        public void release(Buffer buffer) {
            DirectByteBufferUtils.LOGGER.log(Level.WARNING, "Can't release direct buffer as this JVM is unsupported.");
        }
    }

    private static ReleaseStrategy decideReleaseStrategy() {
        String property = System.getProperty("java.vendor");
        if (property.equals("Sun Microsystems Inc.") || property.equals("Oracle Corporation")) {
            return OpenJdkReleaseStrategy.INSTANCE;
        }
        if (property.equals("The Android Project")) {
            return AndroidReleaseStrategy.INSTANCE;
        }
        LOGGER.log(Level.WARNING, "Won't be able to release direct buffers as this JVM is unsupported: " + property);
        return UnsupportedJvmReleaseStrategy.INSTANCE;
    }

    public static Method loadMethod(String str, String str2) {
        try {
            Method method = Class.forName(str).getMethod(str2, null);
            method.setAccessible(true);
            return method;
        } catch (ClassNotFoundException | NoSuchMethodException | SecurityException unused) {
            return null;
        }
    }

    public static void release(Buffer buffer) {
        if (buffer == null) {
            throw new NullPointerException(ByteBuffer.class.getSimpleName() + " should not be null");
        }
        if (buffer.isDirect()) {
            releaseStrategy.release(buffer);
            return;
        }
        throw new IllegalArgumentException(buffer.getClass().getName() + " is not direct.");
    }
}
