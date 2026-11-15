package defpackage;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Queue;
import org.slf4j.helpers.NOPLogger;

public class i2a implements qq5 {
    public final String b;
    public volatile qq5 c;
    public Boolean d;
    public Method e;
    public fe3 f;
    public Queue g;
    public final boolean h;

    public i2a(String str, Queue queue, boolean z) {
        this.b = str;
        this.g = queue;
        this.h = z;
    }

    public qq5 a() {
        if (this.c != null) {
            return this.c;
        }
        return this.h ? NOPLogger.NOP_LOGGER : b();
    }

    public final qq5 b() {
        if (this.f == null) {
            this.f = new fe3(this, this.g);
        }
        return this.f;
    }

    public boolean c() {
        Boolean bool = this.d;
        if (bool != null) {
            return bool.booleanValue();
        }
        try {
            this.e = this.c.getClass().getMethod("log", wq5.class);
            this.d = Boolean.TRUE;
        } catch (NoSuchMethodException unused) {
            this.d = Boolean.FALSE;
        }
        return this.d.booleanValue();
    }

    public boolean d() {
        return this.c instanceof NOPLogger;
    }

    @Override
    public void debug(String str) {
        a().debug(str);
    }

    public boolean e() {
        return this.c == null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.b.equals(((i2a) obj).b);
    }

    @Override
    public void error(String str) {
        a().error(str);
    }

    public void f(wq5 wq5Var) {
        if (c()) {
            try {
                this.e.invoke(this.c, wq5Var);
            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused) {
            }
        }
    }

    public void g(qq5 qq5Var) {
        this.c = qq5Var;
    }

    @Override
    public String getName() {
        return this.b;
    }

    public int hashCode() {
        return this.b.hashCode();
    }

    @Override
    public void info(String str) {
        a().info(str);
    }

    @Override
    public void warn(String str) {
        a().warn(str);
    }

    @Override
    public void error(String str, Throwable th) {
        a().error(str, th);
    }

    @Override
    public void warn(String str, Object obj) {
        a().warn(str, obj);
    }

    @Override
    public void warn(String str, Object obj, Object obj2) {
        a().warn(str, obj, obj2);
    }

    @Override
    public void warn(String str, Throwable th) {
        a().warn(str, th);
    }
}
