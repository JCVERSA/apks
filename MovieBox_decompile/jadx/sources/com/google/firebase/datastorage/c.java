package com.google.firebase.datastorage;

import kotlin.jvm.internal.Intrinsics;

public abstract class c {
    public static final Object a(androidx.datastore.preferences.core.c cVar, androidx.datastore.preferences.core.c.a key, Object obj) {
        Intrinsics.h(cVar, "<this>");
        Intrinsics.h(key, "key");
        Object objB = cVar.b(key);
        return objB == null ? obj : objB;
    }
}
