package com.squareup.okhttp.internal;

import android.support.v4.media.session.PlaybackStateCompat;
import com.squareup.okhttp.HttpUrl;
import com.transsion.api.gateway.utils.EncoderUtil;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.net.Socket;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import okio.Buffer;
import okio.ByteString;
import okio.Source;

public abstract class g {

    public static final byte[] f39598a = new byte[0];

    public static final String[] f39599b = new String[0];

    public static final Charset f39600c = Charset.forName("UTF-8");

    static class a implements ThreadFactory {

        final String f39601a;

        final boolean f39602b;

        a(String str, boolean z10) {
            this.f39601a = str;
            this.f39602b = z10;
        }

        @Override
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, this.f39601a);
            thread.setDaemon(this.f39602b);
            return thread;
        }
    }

    public static void a(long j10, long j11, long j12) {
        if ((j11 | j12) < 0 || j11 > j10 || j10 - j11 < j12) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    public static void b(Closeable closeable, Closeable closeable2) throws IOException {
        closeable.close();
        th = null;
        try {
            closeable2.close();
        } catch (Throwable th2) {
            if (th == null) {
                th = th2;
            }
        }
        if (th == null) {
            return;
        }
        if (th instanceof IOException) {
            throw ((IOException) th);
        }
        if (th instanceof RuntimeException) {
            throw ((RuntimeException) th);
        }
        if (!(th instanceof Error)) {
            throw new AssertionError(th);
        }
        throw ((Error) th);
    }

    public static void c(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e10) {
                throw e10;
            } catch (Exception unused) {
            }
        }
    }

    public static void d(Socket socket) {
        if (socket != null) {
            try {
                socket.close();
            } catch (AssertionError e10) {
                if (!o(e10)) {
                    throw e10;
                }
            } catch (RuntimeException e11) {
                throw e11;
            } catch (Exception unused) {
            }
        }
    }

    public static String[] e(String[] strArr, String str) {
        int length = strArr.length;
        String[] strArr2 = new String[length + 1];
        System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
        strArr2[length] = str;
        return strArr2;
    }

    public static boolean f(String[] strArr, String str) {
        return Arrays.asList(strArr).contains(str);
    }

    public static boolean g(Source source, int i10, TimeUnit timeUnit) {
        try {
            return r(source, i10, timeUnit);
        } catch (IOException unused) {
            return false;
        }
    }

    public static boolean h(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static String i(HttpUrl httpUrl) {
        if (httpUrl.port() == HttpUrl.defaultPort(httpUrl.scheme())) {
            return httpUrl.host();
        }
        return httpUrl.host() + ":" + httpUrl.port();
    }

    public static List j(List list) {
        return Collections.unmodifiableList(new ArrayList(list));
    }

    public static List k(Object... objArr) {
        return Collections.unmodifiableList(Arrays.asList((Object[]) objArr.clone()));
    }

    public static Map l(Map map) {
        return Collections.unmodifiableMap(new LinkedHashMap(map));
    }

    private static List m(Object[] objArr, Object[] objArr2) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : objArr) {
            for (Object obj2 : objArr2) {
                if (obj.equals(obj2)) {
                    arrayList.add(obj2);
                    break;
                }
            }
        }
        return arrayList;
    }

    public static Object[] n(Class cls, Object[] objArr, Object[] objArr2) {
        List listM = m(objArr, objArr2);
        return listM.toArray((Object[]) Array.newInstance((Class<?>) cls, listM.size()));
    }

    public static boolean o(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    public static String p(String str) {
        try {
            return ByteString.of(MessageDigest.getInstance("MD5").digest(str.getBytes("UTF-8"))).hex();
        } catch (UnsupportedEncodingException | NoSuchAlgorithmException e10) {
            throw new AssertionError(e10);
        }
    }

    public static ByteString q(ByteString byteString) {
        try {
            return ByteString.of(MessageDigest.getInstance(EncoderUtil.ALGORITHM_SHA_1).digest(byteString.toByteArray()));
        } catch (NoSuchAlgorithmException e10) {
            throw new AssertionError(e10);
        }
    }

    public static boolean r(Source source, int i10, TimeUnit timeUnit) {
        long jNanoTime = System.nanoTime();
        long jDeadlineNanoTime = source.timeout().getHasDeadline() ? source.timeout().deadlineNanoTime() - jNanoTime : Long.MAX_VALUE;
        source.timeout().deadlineNanoTime(Math.min(jDeadlineNanoTime, timeUnit.toNanos(i10)) + jNanoTime);
        try {
            Buffer buffer = new Buffer();
            while (source.read(buffer, PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH) != -1) {
                buffer.clear();
            }
            if (jDeadlineNanoTime == Long.MAX_VALUE) {
                source.timeout().clearDeadline();
                return true;
            }
            source.timeout().deadlineNanoTime(jNanoTime + jDeadlineNanoTime);
            return true;
        } catch (InterruptedIOException unused) {
            if (jDeadlineNanoTime == Long.MAX_VALUE) {
                source.timeout().clearDeadline();
                return false;
            }
            source.timeout().deadlineNanoTime(jNanoTime + jDeadlineNanoTime);
            return false;
        } catch (Throwable th2) {
            if (jDeadlineNanoTime == Long.MAX_VALUE) {
                source.timeout().clearDeadline();
            } else {
                source.timeout().deadlineNanoTime(jNanoTime + jDeadlineNanoTime);
            }
            throw th2;
        }
    }

    public static ThreadFactory s(String str, boolean z10) {
        return new a(str, z10);
    }
}
