package io.appmetrica.analytics.impl;

import android.content.Context;
import defpackage.y45;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufStateStorage;
import java.util.List;

public abstract class U7 {
    public final Context a;
    public final ProtobufStateStorage b;
    public final W7 c;
    public final InterfaceC3023yn d;
    public final InterfaceC2698lm e;
    public final Ki f;
    public final Ii g;
    public final G6 h;
    public V7 i;

    public U7(Context context, ProtobufStateStorage protobufStateStorage, W7 w7, InterfaceC3023yn interfaceC3023yn, InterfaceC2698lm interfaceC2698lm, Ki ki, Ii ii, G6 g6, V7 v7) {
        this.a = context;
        this.b = protobufStateStorage;
        this.c = w7;
        this.d = interfaceC3023yn;
        this.e = interfaceC2698lm;
        this.f = ki;
        this.g = ii;
        this.h = g6;
        this.i = v7;
    }

    public final synchronized V7 a() {
        return this.i;
    }

    public final synchronized boolean b(Y7 y7) {
        try {
            boolean z = false;
            if (y7.a() == X7.b) {
                return false;
            }
            if (y45.e(y7, this.i.b())) {
                return false;
            }
            List listA = (List) this.d.invoke(this.i.a(), y7);
            boolean z2 = listA != null;
            if (listA == null) {
                listA = this.i.a();
            }
            if (this.c.a(y7, this.i.b())) {
                z = true;
            } else {
                y7 = (Y7) this.i.b();
            }
            if (z || z2) {
                V7 v7 = this.i;
                V7 v8 = (V7) this.e.invoke(y7, listA);
                this.i = v8;
                this.b.save(v8);
                Vi.a("Update distribution data: %s -> %s", v7, this.i);
            }
            return z;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized Y7 c() {
        try {
            if (!this.g.a()) {
                Y7 y7 = (Y7) this.f.invoke();
                this.g.b();
                if (y7 != null) {
                    b(y7);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return (Y7) this.i.b();
    }

    public final Y7 a(Y7 y7) {
        Y7 y7C;
        this.h.a(this.a);
        synchronized (this) {
            b(y7);
            y7C = c();
        }
        return y7C;
    }

    public final Y7 b() {
        this.h.a(this.a);
        return c();
    }
}
