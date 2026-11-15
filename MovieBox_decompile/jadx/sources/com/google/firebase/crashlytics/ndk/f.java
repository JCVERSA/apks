package com.google.firebase.crashlytics.ndk;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.io.File;

final class f {

    public final c f30964a;

    public final File f30965b;

    public final File f30966c;

    public final File f30967d;

    public final File f30968e;

    public final File f30969f;

    public final File f30970g;

    static final class b {

        private c f30971a;

        private File f30972b;

        private File f30973c;

        private File f30974d;

        private File f30975e;

        private File f30976f;

        private File f30977g;

        b() {
        }

        b h(File file) {
            this.f30975e = file;
            return this;
        }

        f i() {
            return new f(this);
        }

        b j(File file) {
            this.f30976f = file;
            return this;
        }

        b k(File file) {
            this.f30973c = file;
            return this;
        }

        b l(c cVar) {
            this.f30971a = cVar;
            return this;
        }

        b m(File file) {
            this.f30977g = file;
            return this;
        }

        b n(File file) {
            this.f30974d = file;
            return this;
        }
    }

    static final class c {

        public final File f30978a;

        public final CrashlyticsReport.a f30979b;

        c(File file, CrashlyticsReport.a aVar) {
            this.f30978a = file;
            this.f30979b = aVar;
        }

        boolean a() {
            File file = this.f30978a;
            return (file != null && file.exists()) || this.f30979b != null;
        }
    }

    private f(b bVar) {
        this.f30964a = bVar.f30971a;
        this.f30965b = bVar.f30972b;
        this.f30966c = bVar.f30973c;
        this.f30967d = bVar.f30974d;
        this.f30968e = bVar.f30975e;
        this.f30969f = bVar.f30976f;
        this.f30970g = bVar.f30977g;
    }
}
