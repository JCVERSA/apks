package org.mozilla.javascript.tools.shell;

import defpackage.ey3;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.nio.charset.Charset;
import org.mozilla.javascript.Kit;
import org.mozilla.javascript.Scriptable;

public abstract class ShellConsole {
    private static final Class[] NO_ARG = new Class[0];
    private static final Class[] BOOLEAN_ARG = {Boolean.TYPE};
    private static final Class[] STRING_ARG = {String.class};
    private static final Class[] CHARSEQ_ARG = {CharSequence.class};

    public static class b extends ShellConsole {
        public final Object a;
        public final InputStream b;

        public b(Object obj, Charset charset) {
            this.a = obj;
            this.b = new a(this, charset);
        }

        @Override
        public void flush() {
            ShellConsole.tryInvoke(this.a, "flushConsole", ShellConsole.NO_ARG, new Object[0]);
        }

        @Override
        public InputStream getIn() {
            return this.b;
        }

        @Override
        public void print(String str) {
            ShellConsole.tryInvoke(this.a, "printString", ShellConsole.STRING_ARG, str);
        }

        @Override
        public void println() {
            ShellConsole.tryInvoke(this.a, "printNewline", ShellConsole.NO_ARG, new Object[0]);
        }

        @Override
        public String readLine() throws IOException {
            return (String) ShellConsole.tryInvoke(this.a, "readLine", ShellConsole.NO_ARG, new Object[0]);
        }

        @Override
        public void println(String str) {
            ShellConsole.tryInvoke(this.a, "printString", ShellConsole.STRING_ARG, str);
            ShellConsole.tryInvoke(this.a, "printNewline", ShellConsole.NO_ARG, new Object[0]);
        }

        @Override
        public String readLine(String str) {
            return (String) ShellConsole.tryInvoke(this.a, "readLine", ShellConsole.STRING_ARG, str);
        }
    }

    public static class c extends ShellConsole {
        public final Object a;
        public final InputStream b;

        public c(Object obj, Charset charset) {
            this.a = obj;
            this.b = new a(this, charset);
        }

        @Override
        public void flush() {
            ShellConsole.tryInvoke(this.a, "flush", ShellConsole.NO_ARG, new Object[0]);
        }

        @Override
        public InputStream getIn() {
            return this.b;
        }

        @Override
        public void print(String str) {
            ShellConsole.tryInvoke(this.a, "print", ShellConsole.CHARSEQ_ARG, str);
        }

        @Override
        public void println() {
            ShellConsole.tryInvoke(this.a, "println", ShellConsole.NO_ARG, new Object[0]);
        }

        @Override
        public String readLine() throws IOException {
            return (String) ShellConsole.tryInvoke(this.a, "readLine", ShellConsole.NO_ARG, new Object[0]);
        }

        @Override
        public void println(String str) {
            ShellConsole.tryInvoke(this.a, "println", ShellConsole.CHARSEQ_ARG, str);
        }

        @Override
        public String readLine(String str) {
            return (String) ShellConsole.tryInvoke(this.a, "readLine", ShellConsole.STRING_ARG, str);
        }
    }

    public static class d extends ShellConsole {
        public final InputStream a;
        public final PrintWriter b;
        public final BufferedReader c;

        public d(InputStream inputStream, PrintStream printStream, Charset charset) {
            this.a = inputStream;
            this.b = new PrintWriter(printStream);
            this.c = new BufferedReader(new InputStreamReader(inputStream, charset));
        }

        @Override
        public void flush() {
            this.b.flush();
        }

        @Override
        public InputStream getIn() {
            return this.a;
        }

        @Override
        public void print(String str) {
            this.b.print(str);
        }

        @Override
        public void println() {
            this.b.println();
        }

        @Override
        public String readLine() throws IOException {
            return this.c.readLine();
        }

        @Override
        public void println(String str) {
            this.b.println(str);
        }

        @Override
        public String readLine(String str) {
            if (str != null) {
                this.b.write(str);
                this.b.flush();
            }
            return this.c.readLine();
        }
    }

    public static ShellConsole getConsole(InputStream inputStream, PrintStream printStream, Charset charset) {
        return new d(inputStream, printStream, charset);
    }

    private static b getJLineShellConsoleV1(ClassLoader classLoader, Class<?> cls, Scriptable scriptable, Charset charset) throws IllegalAccessException, NoSuchMethodException, InstantiationException, InvocationTargetException {
        Object objNewInstance = cls.getConstructor(null).newInstance(null);
        tryInvoke(objNewInstance, "setBellEnabled", BOOLEAN_ARG, Boolean.FALSE);
        Class<?> clsClassOrNull = Kit.classOrNull(classLoader, "jline.Completor");
        tryInvoke(objNewInstance, "addCompletor", new Class[]{clsClassOrNull}, Proxy.newProxyInstance(classLoader, new Class[]{clsClassOrNull}, new ey3(clsClassOrNull, scriptable)));
        return new b(objNewInstance, charset);
    }

    private static c getJLineShellConsoleV2(ClassLoader classLoader, Class<?> cls, Scriptable scriptable, Charset charset) throws IllegalAccessException, NoSuchMethodException, InstantiationException, InvocationTargetException {
        Object objNewInstance = cls.getConstructor(null).newInstance(null);
        tryInvoke(objNewInstance, "setBellEnabled", BOOLEAN_ARG, Boolean.FALSE);
        Class<?> clsClassOrNull = Kit.classOrNull(classLoader, "jline.console.completer.Completer");
        tryInvoke(objNewInstance, "addCompleter", new Class[]{clsClassOrNull}, Proxy.newProxyInstance(classLoader, new Class[]{clsClassOrNull}, new ey3(clsClassOrNull, scriptable)));
        return new c(objNewInstance, charset);
    }

    public static Object tryInvoke(Object obj, String str, Class[] clsArr, Object... objArr) {
        try {
            Method declaredMethod = obj.getClass().getDeclaredMethod(str, clsArr);
            if (declaredMethod != null) {
                return declaredMethod.invoke(obj, objArr);
            }
            return null;
        } catch (IllegalAccessException | IllegalArgumentException | NoSuchMethodException | InvocationTargetException unused) {
            return null;
        }
    }

    public abstract void flush() throws IOException;

    public abstract InputStream getIn();

    public abstract void print(String str) throws IOException;

    public abstract void println() throws IOException;

    public abstract void println(String str) throws IOException;

    public abstract String readLine() throws IOException;

    public abstract String readLine(String str) throws IOException;

    public static ShellConsole getConsole(Scriptable scriptable, Charset charset) {
        ClassLoader classLoader = ShellConsole.class.getClassLoader();
        if (classLoader == null) {
            classLoader = ClassLoader.getSystemClassLoader();
        }
        if (classLoader == null) {
            return null;
        }
        try {
            Class<?> clsClassOrNull = Kit.classOrNull(classLoader, "jline.console.ConsoleReader");
            if (clsClassOrNull != null) {
                return getJLineShellConsoleV2(classLoader, clsClassOrNull, scriptable, charset);
            }
            Class<?> clsClassOrNull2 = Kit.classOrNull(classLoader, "jline.ConsoleReader");
            if (clsClassOrNull2 != null) {
                return getJLineShellConsoleV1(classLoader, clsClassOrNull2, scriptable, charset);
            }
            return null;
        } catch (IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException unused) {
        }
    }

    public static class a extends InputStream {
        public static final byte[] g = new byte[0];
        public final ShellConsole b;
        public final Charset c;
        public byte[] d = g;
        public int e = -1;
        public boolean f = false;

        public a(ShellConsole shellConsole, Charset charset) {
            this.b = shellConsole;
            this.c = charset;
        }

        public final boolean b() {
            if (this.f) {
                return false;
            }
            int i = this.e;
            if (i < 0 || i > this.d.length) {
                if (d() == -1) {
                    this.f = true;
                    return false;
                }
                this.e = 0;
            }
            return true;
        }

        public final int d() throws IOException {
            String line = this.b.readLine(null);
            if (line == null) {
                this.d = g;
                return -1;
            }
            byte[] bytes = line.getBytes(this.c);
            this.d = bytes;
            return bytes.length;
        }

        @Override
        public synchronized int read(byte[] bArr, int i, int i2) {
            try {
                if (bArr == null) {
                    throw new NullPointerException();
                }
                if (i < 0 || i2 < 0 || i2 > bArr.length - i) {
                    throw new IndexOutOfBoundsException();
                }
                if (i2 == 0) {
                    return 0;
                }
                if (!b()) {
                    return -1;
                }
                int iMin = Math.min(i2, this.d.length - this.e);
                for (int i3 = 0; i3 < iMin; i3++) {
                    bArr[i + i3] = this.d[this.e + i3];
                }
                if (iMin < i2) {
                    bArr[i + iMin] = 10;
                    iMin++;
                }
                this.e += iMin;
                return iMin;
            } catch (Throwable th) {
                throw th;
            }
        }

        @Override
        public synchronized int read() {
            if (!b()) {
                return -1;
            }
            int i = this.e;
            byte[] bArr = this.d;
            if (i == bArr.length) {
                this.e = i + 1;
                return 10;
            }
            this.e = i + 1;
            return bArr[i];
        }
    }
}
