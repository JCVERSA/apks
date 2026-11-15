package com.therouter.router;

import kotlin.jvm.internal.Intrinsics;

public final class b {

    private String f39814a;

    private String f39815b;

    private int f39816c;

    private String f39817d;

    private String f39818e;

    private String f39819f;

    private boolean f39820g;

    private String f39821h;

    public b(String type, String key, int i10, String args, String className, String fieldName, boolean z10, String description) {
        Intrinsics.h(type, "type");
        Intrinsics.h(key, "key");
        Intrinsics.h(args, "args");
        Intrinsics.h(className, "className");
        Intrinsics.h(fieldName, "fieldName");
        Intrinsics.h(description, "description");
        this.f39814a = type;
        this.f39815b = key;
        this.f39816c = i10;
        this.f39817d = args;
        this.f39818e = className;
        this.f39819f = fieldName;
        this.f39820g = z10;
        this.f39821h = description;
    }

    public final int a() {
        return this.f39816c;
    }

    public final String b() {
        return this.f39815b;
    }

    public final String c() {
        return this.f39814a;
    }
}
