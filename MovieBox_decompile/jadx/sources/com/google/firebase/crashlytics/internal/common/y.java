package com.google.firebase.crashlytics.internal.common;

import java.io.File;
import java.io.IOException;

class y {

    private final String f30458a;

    private final xb.g f30459b;

    public y(String str, xb.g gVar) {
        this.f30458a = str;
        this.f30459b = gVar;
    }

    private File b() {
        return this.f30459b.g(this.f30458a);
    }

    public boolean a() {
        try {
            return b().createNewFile();
        } catch (IOException e10) {
            qb.g.f().e("Error creating marker: " + this.f30458a, e10);
            return false;
        }
    }

    public boolean c() {
        return b().exists();
    }

    public boolean d() {
        return b().delete();
    }
}
