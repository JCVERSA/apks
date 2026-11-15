package com.yandex.mobile.ads.impl;

import androidx.media3.exoplayer.rtsp.RtspHeaders;
import com.lzy.okgo.model.HttpHeaders;
import com.yandex.mobile.ads.impl.g92;
import com.yandex.mobile.ads.impl.nn;
import com.yandex.mobile.ads.impl.w50;
import defpackage.g1a;
import defpackage.hz9;
import defpackage.j1a;
import defpackage.ue3;
import defpackage.y45;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.reflect.InvocationTargetException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import kotlin.text.Regex;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.Options;
import okio.Source;
import org.apache.commons.lang3.time.TimeZones;

public final class g92 {
    public static final byte[] a;
    public static final qf0 b = qf0.b.a(new String[0]);
    public static final yq1 c;
    public static final TimeZone d;
    private static final Regex e;
    public static final boolean f;
    public static final String g;

    static {
        byte[] bArr = new byte[0];
        a = bArr;
        c = zq1.a.a(bArr);
        yp1.a.a(bArr);
        Options.Companion companion = Options.INSTANCE;
        ByteString.Companion companion2 = ByteString.INSTANCE;
        companion.of(companion2.decodeHex("efbbbf"), companion2.decodeHex("feff"), companion2.decodeHex("fffe"), companion2.decodeHex("0000ffff"), companion2.decodeHex("ffff0000"));
        TimeZone timeZone = TimeZone.getTimeZone(TimeZones.GMT_ID);
        y45.g(timeZone);
        d = timeZone;
        e = new Regex("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");
        f = false;
        String name = fe1.class.getName();
        y45.i(name, "getName(...)");
        g = j1a.G0(j1a.F0(name, "com.monetization.ads.embedded.okhttp.src.main.kotlin.okhttplib."), "Client");
    }

    public static final int a(byte b2) {
        return b2 & 255;
    }

    public static final int a(char c2) {
        if ('0' <= c2 && c2 < ':') {
            return c2 - '0';
        }
        if ('a' <= c2 && c2 < 'g') {
            return c2 - 'W';
        }
        if ('A' > c2 || c2 >= 'G') {
            return -1;
        }
        return c2 - '7';
    }

    public static final boolean c(String str) {
        y45.j(str, "name");
        return g1a.E(str, RtspHeaders.AUTHORIZATION, true) || g1a.E(str, HttpHeaders.HEAD_KEY_COOKIE, true) || g1a.E(str, "Proxy-Authorization", true) || g1a.E(str, HttpHeaders.HEAD_KEY_SET_COOKIE, true);
    }

    public static final int a(short s) {
        return s & 65535;
    }

    public static final int b(int i, int i2, String str) {
        y45.j(str, "<this>");
        int i3 = i2 - 1;
        if (i <= i3) {
            while (true) {
                char cCharAt = str.charAt(i3);
                if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\f' && cCharAt != '\r' && cCharAt != ' ') {
                    return i3 + 1;
                }
                if (i3 != i) {
                    i3--;
                }
            }
        }
        return i;
    }

    public static final long a(int i) {
        return ((long) i) & 2147483647L;
    }

    public static final void a(ArrayList arrayList, Object obj) {
        y45.j(arrayList, "<this>");
        if (arrayList.contains(obj)) {
            return;
        }
        arrayList.add(obj);
    }

    public static final String[] b(String[] strArr, String[] strArr2, Comparator<? super String> comparator) {
        y45.j(strArr, "<this>");
        y45.j(strArr2, "other");
        y45.j(comparator, "comparator");
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            for (String str2 : strArr2) {
                if (comparator.compare(str, str2) == 0) {
                    arrayList.add(str);
                    break;
                }
            }
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    public static final w50.b a(final w50.a aVar) {
        y45.j(aVar, "<this>");
        return new w50.b() {
            @Override
            public final w50 a(nn nnVar) {
                return g92.a(aVar, nnVar);
            }
        };
    }

    public static final w50 a(w50 w50Var, nn nnVar) {
        y45.j(w50Var, "$this_asFactory");
        y45.j(nnVar, "it");
        return w50Var;
    }

    public static final boolean a(String str) {
        y45.j(str, "<this>");
        return e.matches(str);
    }

    public static final int a(long j, TimeUnit timeUnit) {
        y45.j("timeout", "name");
        if (j < 0) {
            throw new IllegalStateException(("timeout < 0").toString());
        }
        if (timeUnit != null) {
            long millis = timeUnit.toMillis(j);
            if (millis > 2147483647L) {
                throw new IllegalArgumentException(("timeout too large.").toString());
            }
            if (millis != 0 || j <= 0) {
                return (int) millis;
            }
            throw new IllegalArgumentException(("timeout too small.").toString());
        }
        throw new IllegalStateException("unit == null");
    }

    public static final <T> List<T> b(List<? extends T> list) {
        y45.j(list, "<this>");
        List<T> listUnmodifiableList = Collections.unmodifiableList(defpackage.i81.e1(list));
        y45.i(listUnmodifiableList, "unmodifiableList(...)");
        return listUnmodifiableList;
    }

    public static final void a(Closeable closeable) {
        y45.j(closeable, "<this>");
        try {
            closeable.close();
        } catch (RuntimeException e2) {
            throw e2;
        } catch (Exception unused) {
        }
    }

    public static final void a(Socket socket) {
        y45.j(socket, "<this>");
        try {
            socket.close();
        } catch (AssertionError e2) {
            throw e2;
        } catch (RuntimeException e3) {
            if (!y45.e(e3.getMessage(), "bio == null")) {
                throw e3;
            }
        } catch (Exception unused) {
        }
    }

    public static final int a(int i, int i2, String str, String str2) {
        y45.j(str, "<this>");
        y45.j(str2, "delimiters");
        while (i < i2) {
            if (j1a.W(str2, str.charAt(i), false, 2, null)) {
                return i;
            }
            i++;
        }
        return i2;
    }

    public static final int a(String str, char c2, int i, int i2) {
        y45.j(str, "<this>");
        while (i < i2) {
            if (str.charAt(i) == c2) {
                return i;
            }
            i++;
        }
        return i2;
    }

    public static final String a(String str, Object... objArr) {
        y45.j(str, "format");
        y45.j(objArr, "args");
        hz9 hz9Var = hz9.a;
        Locale locale = Locale.US;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        String str2 = String.format(locale, str, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length));
        y45.i(str2, "format(...)");
        return str2;
    }

    public static final boolean a(String[] strArr, String[] strArr2, Comparator<? super String> comparator) {
        y45.j(strArr, "<this>");
        y45.j(comparator, "comparator");
        if (strArr.length != 0 && strArr2 != null && strArr2.length != 0) {
            for (String str : strArr) {
                Iterator itA = defpackage.xg.a(strArr2);
                while (itA.hasNext()) {
                    if (comparator.compare(str, (String) itA.next()) == 0) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static final long a(vq1 vq1Var) {
        y45.j(vq1Var, "<this>");
        String strA = vq1Var.g().a("Content-Length");
        if (strA == null) {
            return -1L;
        }
        y45.j(strA, "<this>");
        try {
            return Long.parseLong(strA);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    @SafeVarargs
    public static final <T> List<T> a(T... tArr) {
        y45.j(tArr, "elements");
        Object[] objArr = (Object[]) tArr.clone();
        List<T> listUnmodifiableList = Collections.unmodifiableList(defpackage.y71.n(Arrays.copyOf(objArr, objArr.length)));
        y45.i(listUnmodifiableList, "unmodifiableList(...)");
        return listUnmodifiableList;
    }

    public static final int a(int i, int i2, String str) {
        y45.j(str, "<this>");
        while (i < i2) {
            char cCharAt = str.charAt(i);
            if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\f' && cCharAt != '\r' && cCharAt != ' ') {
                return i;
            }
            i++;
        }
        return i2;
    }

    public static final boolean a(Socket socket, BufferedSource bufferedSource) {
        y45.j(socket, "<this>");
        y45.j(bufferedSource, "source");
        try {
            int soTimeout = socket.getSoTimeout();
            try {
                socket.setSoTimeout(1);
                return !bufferedSource.exhausted();
            } finally {
                socket.setSoTimeout(soTimeout);
            }
        } catch (SocketTimeoutException unused) {
            return true;
        } catch (IOException unused2) {
            return false;
        }
    }

    public static final int a(BufferedSource bufferedSource) throws IOException {
        y45.j(bufferedSource, "<this>");
        return (bufferedSource.readByte() & 255) | ((bufferedSource.readByte() & 255) << 16) | ((bufferedSource.readByte() & 255) << 8);
    }

    public static final int a(Buffer buffer) throws EOFException {
        y45.j(buffer, "<this>");
        int i = 0;
        while (!buffer.exhausted() && buffer.getByte(0L) == 61) {
            i++;
            buffer.readByte();
        }
        return i;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0070 A[PHI: r13
      0x0070: PHI (r13v3 boolean) = (r13v2 boolean), (r13v7 boolean) binds: [B:23:0x006e, B:15:0x0053] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Undo finally extract visitor
    java.lang.NullPointerException: Cannot invoke "Object.hashCode()" because "this.second" is null
    	at jadx.core.utils.Pair.hashCode(Pair.java:35)
    	at java.base/java.util.HashMap.hash(HashMap.java:338)
    	at java.base/java.util.HashMap.getNode(HashMap.java:568)
    	at java.base/java.util.HashMap.containsKey(HashMap.java:594)
    	at jadx.core.dex.visitors.finaly.traverser.state.TraverserGlobalCommonState.hasBlocksBeenCached(TraverserGlobalCommonState.java:35)
    	at jadx.core.dex.visitors.finaly.traverser.handlers.MergePathActivePathTraverserHandler.handle(MergePathActivePathTraverserHandler.java:174)
    	at jadx.core.dex.visitors.finaly.traverser.handlers.AbstractActivePathTraverserHandler.process(AbstractActivePathTraverserHandler.java:19)
    	at jadx.core.dex.visitors.finaly.traverser.TraverserController.processHandlerImplementations(TraverserController.java:43)
    	at jadx.core.dex.visitors.finaly.traverser.TraverserController.advance(TraverserController.java:156)
    	at jadx.core.dex.visitors.finaly.traverser.TraverserController.process(TraverserController.java:79)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.findCommonInsns(MarkFinallyVisitor.java:404)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.extractFinally(MarkFinallyVisitor.java:284)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.processTryBlock(MarkFinallyVisitor.java:202)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.visit(MarkFinallyVisitor.java:135)
     */
    public static final boolean a(Source source, int i, TimeUnit timeUnit) throws IOException {
        boolean z;
        y45.j(source, "<this>");
        y45.j(timeUnit, "timeUnit");
        long jNanoTime = System.nanoTime();
        long jDeadlineNanoTime = source.timeout().getHasDeadline() ? source.timeout().deadlineNanoTime() - jNanoTime : Long.MAX_VALUE;
        source.timeout().deadlineNanoTime(Math.min(jDeadlineNanoTime, timeUnit.toNanos(i)) + jNanoTime);
        try {
            Buffer buffer = new Buffer();
            while (source.read(buffer, 8192L) != -1) {
                buffer.clear();
            }
            z = true;
            if (jDeadlineNanoTime == Long.MAX_VALUE) {
                source.timeout().clearDeadline();
            } else {
                source.timeout().deadlineNanoTime(jNanoTime + jDeadlineNanoTime);
            }
        } catch (InterruptedIOException unused) {
            z = false;
            if (jDeadlineNanoTime == Long.MAX_VALUE) {
                source.timeout().clearDeadline();
            }
        } catch (Throwable th) {
            if (jDeadlineNanoTime == Long.MAX_VALUE) {
                source.timeout().clearDeadline();
            } else {
                source.timeout().deadlineNanoTime(jNanoTime + jDeadlineNanoTime);
            }
            throw th;
        }
        return z;
    }

    public static final ThreadFactory a(final String str, final boolean z) {
        y45.j(str, "name");
        return new ThreadFactory() {
            @Override
            public final Thread newThread(Runnable runnable) {
                return g92.a(str, z, runnable);
            }
        };
    }

    public static final Thread a(String str, boolean z, Runnable runnable) {
        y45.j(str, "$name");
        Thread thread = new Thread(runnable, str);
        thread.setDaemon(z);
        return thread;
    }

    public static final qf0 a(List<lf0> list) {
        y45.j(list, "<this>");
        qf0.a aVar = new qf0.a();
        for (lf0 lf0Var : list) {
            aVar.a(lf0Var.a.utf8(), lf0Var.b.utf8());
        }
        return aVar.a();
    }

    public static final String a(gi0 gi0Var, boolean z) {
        String strG;
        y45.j(gi0Var, "<this>");
        if (j1a.X(gi0Var.g(), StringUtils.PROCESS_POSTFIX_DELIMITER, false, 2, null)) {
            strG = "[" + gi0Var.g() + "]";
        } else {
            strG = gi0Var.g();
        }
        if (!z && gi0Var.i() == gi0.b.a(gi0Var.k())) {
            return strG;
        }
        return strG + StringUtils.PROCESS_POSTFIX_DELIMITER + gi0Var.i();
    }

    public static final int a(int i, String str) {
        if (str == null) {
            return i;
        }
        try {
            long j = Long.parseLong(str);
            if (j > 2147483647L) {
                return Integer.MAX_VALUE;
            }
            if (j < 0) {
                return 0;
            }
            return (int) j;
        } catch (NumberFormatException unused) {
            return i;
        }
    }

    public static final Exception a(IOException iOException, List list) throws IllegalAccessException, InvocationTargetException {
        y45.j(iOException, "<this>");
        y45.j(list, "suppressed");
        if (list.size() > 1) {
            System.out.getClass();
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ue3.a(iOException, (Exception) it.next());
        }
        return iOException;
    }

    public static final void a(BufferedSink bufferedSink, int i) throws IOException {
        y45.j(bufferedSink, "<this>");
        bufferedSink.writeByte((i >>> 16) & 255);
        bufferedSink.writeByte((i >>> 8) & 255);
        bufferedSink.writeByte(i & 255);
    }
}
