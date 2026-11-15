package com.google.firebase.crashlytics.ndk;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.io.File;

class g implements qb.h {

    private final f f30980a;

    g(f fVar) {
        this.f30980a = fVar;
    }

    @Override
    public File a() {
        return this.f30980a.f30969f;
    }

    @Override
    public CrashlyticsReport.a b() {
        f.c cVar = this.f30980a.f30964a;
        if (cVar != null) {
            return cVar.f30979b;
        }
        return null;
    }

    @Override
    public File c() {
        return this.f30980a.f30964a.f30978a;
    }

    @Override
    public File d() {
        return this.f30980a.f30966c;
    }

    @Override
    public File e() {
        return this.f30980a.f30968e;
    }

    @Override
    public File f() {
        return this.f30980a.f30970g;
    }

    @Override
    public File g() {
        return this.f30980a.f30967d;
    }
}
