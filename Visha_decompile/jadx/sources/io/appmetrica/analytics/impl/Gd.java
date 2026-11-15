package io.appmetrica.analytics.impl;

import defpackage.e74;
import defpackage.y45;
import io.appmetrica.analytics.coreapi.internal.backport.Consumer;
import io.appmetrica.analytics.impl.Gd;
import io.appmetrica.analytics.ndkcrashesapi.internal.NativeCrash;
import io.appmetrica.analytics.ndkcrashesapi.internal.NativeCrashHandler;
import io.appmetrica.analytics.ndkcrashesapi.internal.NativeCrashSource;
import java.io.File;
import java.util.List;

public final class Gd implements NativeCrashHandler {
    public final Lg a;
    public final e74 b;

    public Gd(Lg lg, e74 e74Var) {
        this.a = lg;
        this.b = e74Var;
    }

    public static final void a(Gd gd, NativeCrash nativeCrash, File file) {
        gd.b.invoke(nativeCrash.getUuid());
    }

    public static final void b(Gd gd, NativeCrash nativeCrash, File file) {
        gd.b.invoke(nativeCrash.getUuid());
    }

    @Override
    public final void newCrash(final NativeCrash nativeCrash) {
        C3000y0 c3000y0;
        try {
            NativeCrashSource source = nativeCrash.getSource();
            String handlerVersion = nativeCrash.getHandlerVersion();
            String uuid = nativeCrash.getUuid();
            String dumpFile = nativeCrash.getDumpFile();
            long creationTime = nativeCrash.getCreationTime();
            C3025z0 c3025z0A = A0.a(nativeCrash.getAndroidx.media3.extractor.text.ttml.TtmlNode.TAG_METADATA java.lang.String());
            y45.g(c3025z0A);
            c3000y0 = new C3000y0(source, handlerVersion, uuid, dumpFile, creationTime, c3025z0A);
        } catch (Throwable unused) {
            c3000y0 = null;
        }
        if (c3000y0 == null) {
            this.b.invoke(nativeCrash.getUuid());
            return;
        }
        Lg lg = this.a;
        Consumer consumer = new Consumer() {
            @Override
            public final void consume(Object obj) {
                Gd.a(this.a, nativeCrash, (File) obj);
            }
        };
        lg.getClass();
        lg.a(c3000y0, consumer, new Ig(c3000y0));
    }

    public final void a(List<NativeCrash> list) {
        C3000y0 c3000y0;
        for (final NativeCrash nativeCrash : list) {
            try {
                NativeCrashSource source = nativeCrash.getSource();
                String handlerVersion = nativeCrash.getHandlerVersion();
                String uuid = nativeCrash.getUuid();
                String dumpFile = nativeCrash.getDumpFile();
                long creationTime = nativeCrash.getCreationTime();
                C3025z0 c3025z0A = A0.a(nativeCrash.getAndroidx.media3.extractor.text.ttml.TtmlNode.TAG_METADATA java.lang.String());
                y45.g(c3025z0A);
                c3000y0 = new C3000y0(source, handlerVersion, uuid, dumpFile, creationTime, c3025z0A);
            } catch (Throwable unused) {
                c3000y0 = null;
            }
            if (c3000y0 != null) {
                Lg lg = this.a;
                Consumer consumer = new Consumer() {
                    @Override
                    public final void consume(Object obj) {
                        Gd.b(this.a, nativeCrash, (File) obj);
                    }
                };
                lg.getClass();
                lg.a(c3000y0, consumer, new Jg(c3000y0));
            } else {
                this.b.invoke(nativeCrash.getUuid());
            }
        }
    }
}
