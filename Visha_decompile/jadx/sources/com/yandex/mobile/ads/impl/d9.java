package com.yandex.mobile.ads.impl;

import android.webkit.WebView;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public final class d9 {
    private final fg1 a;
    private final WebView b;
    private final ArrayList c;
    private final HashMap d;
    private final String e;
    private final String f;

    @Nullable
    private final String g;
    private final e9 h;

    private d9(fg1 fg1Var, String str, List list) {
        e9 e9Var = e9.d;
        ArrayList arrayList = new ArrayList();
        this.c = arrayList;
        this.d = new HashMap();
        this.a = fg1Var;
        this.b = null;
        this.e = str;
        this.h = e9Var;
        if (list != null) {
            arrayList.addAll(list);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                eb2 eb2Var = (eb2) it.next();
                this.d.put(UUID.randomUUID().toString(), eb2Var);
            }
        }
        this.g = null;
        this.f = null;
    }

    public static d9 a(fg1 fg1Var, String str, List list) {
        if (list != null) {
            return new d9(fg1Var, str, list);
        }
        throw new IllegalArgumentException("VerificationScriptResources is null");
    }

    @Nullable
    public final String b() {
        return this.g;
    }

    public final String c() {
        return this.f;
    }

    public final Map<String, eb2> d() {
        return Collections.unmodifiableMap(this.d);
    }

    public final String e() {
        return this.e;
    }

    public final fg1 f() {
        return this.a;
    }

    public final List<eb2> g() {
        return Collections.unmodifiableList(this.c);
    }

    public final WebView h() {
        return this.b;
    }

    public final e9 a() {
        return this.h;
    }
}
