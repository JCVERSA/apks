package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus;
import io.appmetrica.analytics.coreutils.internal.io.FileUtils;
import io.appmetrica.analytics.internal.IdentifiersResult;

public final class C2913ud {
    public final Context a;
    public final Ra b;
    public final D9 c;
    public final C2790pe d;
    public final Mn e;
    public volatile IdentifiersResult f;

    public C2913ud(Context context, Ra ra) {
        this(context, ra, AbstractC2938vd.a(context), new C2790pe(context), new Mn());
    }

    /* JADX WARN: Code duplicated, block: B:17:0x003d A[Catch: all -> 0x0079, TryCatch #1 {all -> 0x0079, blocks: (B:10:0x0019, B:12:0x0029, B:14:0x002f, B:17:0x003d, B:19:0x0056, B:20:0x0064, B:22:0x006f), top: B:34:0x0019 }] */
    /* JADX WARN: Code duplicated, block: B:19:0x0056 A[Catch: all -> 0x0079, TryCatch #1 {all -> 0x0079, blocks: (B:10:0x0019, B:12:0x0029, B:14:0x002f, B:17:0x003d, B:19:0x0056, B:20:0x0064, B:22:0x006f), top: B:34:0x0019 }] */
    /* JADX WARN: Code duplicated, block: B:22:0x006f A[Catch: all -> 0x0079, TRY_LEAVE, TryCatch #1 {all -> 0x0079, blocks: (B:10:0x0019, B:12:0x0029, B:14:0x002f, B:17:0x003d, B:19:0x0056, B:20:0x0064, B:22:0x006f), top: B:34:0x0019 }] */
    public final IdentifiersResult a() {
        String strA;
        IdentifiersResult identifiersResult = this.f;
        if (identifiersResult != null && identifiersResult.status == IdentifierStatus.OK) {
            Mn mn = this.e;
            String str = identifiersResult.id;
            mn.getClass();
            if (Mn.a(str)) {
                return identifiersResult;
            }
        }
        try {
            D9 d9 = this.c;
            d9.a.lock();
            d9.b.a();
            identifiersResult = this.f;
            if (identifiersResult == null || identifiersResult.status != IdentifierStatus.OK) {
                strA = Qa.a(FileUtils.getFileFromSdkStorage(this.d.a, "uuid.dat"));
                this.e.getClass();
                if (!Mn.a(strA)) {
                    strA = this.d.a(this.b.a(this.a));
                }
                this.e.getClass();
                if (Mn.a(strA)) {
                    IdentifiersResult identifiersResult2 = new IdentifiersResult(strA, IdentifierStatus.OK, null);
                    try {
                        this.f = identifiersResult2;
                    } catch (Throwable unused) {
                    }
                    identifiersResult = identifiersResult2;
                }
            } else {
                Mn mn2 = this.e;
                String str2 = identifiersResult.id;
                mn2.getClass();
                if (!Mn.a(str2)) {
                    strA = Qa.a(FileUtils.getFileFromSdkStorage(this.d.a, "uuid.dat"));
                    this.e.getClass();
                    if (!Mn.a(strA)) {
                        strA = this.d.a(this.b.a(this.a));
                    }
                    this.e.getClass();
                    if (Mn.a(strA)) {
                        IdentifiersResult identifiersResult3 = new IdentifiersResult(strA, IdentifierStatus.OK, null);
                        this.f = identifiersResult3;
                        identifiersResult = identifiersResult3;
                    }
                }
            }
        } catch (Throwable unused2) {
        }
        D9 d10 = this.c;
        d10.b.b();
        d10.a.unlock();
        return identifiersResult != null ? identifiersResult : new IdentifiersResult(null, IdentifierStatus.UNKNOWN, "Uuid must be obtained via async API AppMetrica#requestStartupParams(Context, StartupParamsCallback, List<String>)");
    }

    public C2913ud(Context context, Ra ra, D9 d9, C2790pe c2790pe, Mn mn) {
        this.a = context;
        this.b = ra;
        this.c = d9;
        this.d = c2790pe;
        this.e = mn;
        try {
            d9.a();
            c2790pe.a();
            d9.b();
        } catch (Throwable unused) {
            this.c.b();
        }
    }
}
