package com.google.firebase.crashlytics.internal.common;

import com.google.firebase.sessions.api.SessionSubscriber;

public class k implements SessionSubscriber {

    private final d0 f30369a;

    private final j f30370b;

    public k(d0 d0Var, xb.g gVar) {
        this.f30369a = d0Var;
        this.f30370b = new j(gVar);
    }

    @Override
    public boolean a() {
        return this.f30369a.d();
    }

    @Override
    public SessionSubscriber.Name b() {
        return SessionSubscriber.Name.CRASHLYTICS;
    }

    @Override
    public void c(SessionSubscriber.a aVar) {
        qb.g.f().b("App Quality Sessions session changed: " + aVar);
        this.f30370b.h(aVar.a());
    }

    public String d(String str) {
        return this.f30370b.c(str);
    }

    public void e(String str) {
        this.f30370b.i(str);
    }
}
