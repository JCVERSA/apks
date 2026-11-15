package com.yandex.mobile.ads.impl;

import com.yandex.mobile.ads.video.playback.model.VideoAdExtensions;
import defpackage.y45;
import java.util.Iterator;
import java.util.List;

public final class qn2 implements VideoAdExtensions {
    private final List<u70> a;

    public qn2(List<u70> list) {
        y45.j(list, "extensions");
        this.a = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof qn2) && y45.e(this.a, ((qn2) obj).a);
    }

    @Override
    public final String get(String str) {
        Object next;
        y45.j(str, "type");
        Iterator<T> it = this.a.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!y45.e(((u70) next).a(), str));
        u70 u70Var = (u70) next;
        if (u70Var != null) {
            return u70Var.b();
        }
        return null;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "YandexVideoAdExtensions(extensions=" + this.a + ")";
    }
}
