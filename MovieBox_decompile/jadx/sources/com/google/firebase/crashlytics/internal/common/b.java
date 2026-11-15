package com.google.firebase.crashlytics.internal.common;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.io.File;

final class b extends a0 {

    private final CrashlyticsReport f30320a;

    private final String f30321b;

    private final File f30322c;

    b(CrashlyticsReport crashlyticsReport, String str, File file) {
        if (crashlyticsReport == null) {
            throw new NullPointerException("Null report");
        }
        this.f30320a = crashlyticsReport;
        if (str == null) {
            throw new NullPointerException("Null sessionId");
        }
        this.f30321b = str;
        if (file == null) {
            throw new NullPointerException("Null reportFile");
        }
        this.f30322c = file;
    }

    @Override
    public CrashlyticsReport b() {
        return this.f30320a;
    }

    @Override
    public File c() {
        return this.f30322c;
    }

    @Override
    public String d() {
        return this.f30321b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a0)) {
            return false;
        }
        a0 a0Var = (a0) obj;
        return this.f30320a.equals(a0Var.b()) && this.f30321b.equals(a0Var.d()) && this.f30322c.equals(a0Var.c());
    }

    public int hashCode() {
        return ((((this.f30320a.hashCode() ^ 1000003) * 1000003) ^ this.f30321b.hashCode()) * 1000003) ^ this.f30322c.hashCode();
    }

    public String toString() {
        return "CrashlyticsReportWithSessionId{report=" + this.f30320a + ", sessionId=" + this.f30321b + ", reportFile=" + this.f30322c + "}";
    }
}
