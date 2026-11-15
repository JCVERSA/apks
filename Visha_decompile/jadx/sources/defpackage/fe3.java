package defpackage;

import java.util.Queue;
import org.slf4j.Marker;
import org.slf4j.event.Level;

public class fe3 implements qq5 {
    public String b;
    public i2a c;
    public Queue d;

    public fe3(i2a i2aVar, Queue queue) {
        this.c = i2aVar;
        this.b = i2aVar.getName();
        this.d = queue;
    }

    public final void a(Level level, String str, Object[] objArr, Throwable th) {
        b(level, null, str, objArr, th);
    }

    public final void b(Level level, Marker marker, String str, Object[] objArr, Throwable th) {
        k2a k2aVar = new k2a();
        k2aVar.i(System.currentTimeMillis());
        k2aVar.c(level);
        k2aVar.d(this.c);
        k2aVar.e(this.b);
        k2aVar.f(str);
        k2aVar.b(objArr);
        k2aVar.h(th);
        k2aVar.g(Thread.currentThread().getName());
        this.d.add(k2aVar);
    }

    @Override
    public void debug(String str) {
        a(Level.TRACE, str, null, null);
    }

    @Override
    public void error(String str) {
        a(Level.ERROR, str, null, null);
    }

    @Override
    public String getName() {
        return this.b;
    }

    @Override
    public void info(String str) {
        a(Level.INFO, str, null, null);
    }

    @Override
    public void warn(String str) {
        a(Level.WARN, str, null, null);
    }

    @Override
    public void error(String str, Throwable th) {
        a(Level.ERROR, str, null, th);
    }

    @Override
    public void warn(String str, Object obj) {
        a(Level.WARN, str, new Object[]{obj}, null);
    }

    @Override
    public void warn(String str, Object obj, Object obj2) {
        a(Level.WARN, str, new Object[]{obj, obj2}, null);
    }

    @Override
    public void warn(String str, Throwable th) {
        a(Level.WARN, str, null, th);
    }
}
