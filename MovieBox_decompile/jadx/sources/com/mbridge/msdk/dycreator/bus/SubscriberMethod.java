package com.mbridge.msdk.dycreator.bus;

import java.lang.reflect.Method;

final class SubscriberMethod {

    final Method f33977a;

    final ThreadMode f33978b;

    final Class<?> f33979c;

    String f33980d;

    SubscriberMethod(Method method, ThreadMode threadMode, Class<?> cls) {
        this.f33977a = method;
        this.f33978b = threadMode;
        this.f33979c = cls;
    }

    private synchronized void a() {
        if (this.f33980d == null) {
            StringBuilder sb2 = new StringBuilder(64);
            sb2.append(this.f33977a.getDeclaringClass().getName());
            sb2.append('#');
            sb2.append(this.f33977a.getName());
            sb2.append('(');
            sb2.append(this.f33979c.getName());
            this.f33980d = sb2.toString();
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof SubscriberMethod)) {
            return false;
        }
        a();
        return this.f33980d.equals(((SubscriberMethod) obj).f33980d);
    }

    public int hashCode() {
        return this.f33977a.hashCode();
    }
}
