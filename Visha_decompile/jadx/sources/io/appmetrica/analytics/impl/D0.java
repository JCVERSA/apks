package io.appmetrica.analytics.impl;

import defpackage.y45;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.impl.D0;
import io.appmetrica.analytics.plugins.PluginErrorDetails;
import java.util.Collection;

public final class D0 {
    public final IHandlerExecutor a = C2879t4.i().e().a();
    public final C2801q0 b;
    public final Fe c;
    public final Ie d;

    public D0() {
        C2801q0 c2801q0 = new C2801q0();
        this.b = c2801q0;
        this.c = new Fe(c2801q0);
        this.d = new Ie();
    }

    public final void a(final PluginErrorDetails pluginErrorDetails) {
        Fe fe = this.c;
        fe.a.a(null);
        fe.b.a(pluginErrorDetails);
        Ie ie = this.d;
        y45.g(pluginErrorDetails);
        ie.getClass();
        this.a.execute(new Runnable() {
            @Override
            public final void run() {
                D0.a(this.b, pluginErrorDetails);
            }
        });
    }

    public final void a(final PluginErrorDetails pluginErrorDetails, final String str) {
        Fe fe = this.c;
        fe.a.a(null);
        fe.b.a(pluginErrorDetails);
        if (fe.d.a((Collection<Object>) (pluginErrorDetails != null ? pluginErrorDetails.getStacktrace() : null)).a) {
            Ie ie = this.d;
            y45.g(pluginErrorDetails);
            ie.getClass();
            this.a.execute(new Runnable() {
                @Override
                public final void run() {
                    D0.a(this.b, pluginErrorDetails, str);
                }
            });
        }
    }

    public final void a(final String str, final String str2, final PluginErrorDetails pluginErrorDetails) {
        Fe fe = this.c;
        fe.a.a(null);
        fe.c.a(str);
        Ie ie = this.d;
        y45.g(str);
        ie.getClass();
        this.a.execute(new Runnable() {
            @Override
            public final void run() {
                D0.a(this.b, str, str2, pluginErrorDetails);
            }
        });
    }

    public static final void a(D0 d0, PluginErrorDetails pluginErrorDetails, String str) {
        d0.b.getClass();
        C2776p0 c2776p0 = C2776p0.e;
        y45.g(c2776p0);
        C2788pc c2788pcI = c2776p0.f().i();
        y45.g(c2788pcI);
        c2788pcI.a.getPluginExtension().reportError(pluginErrorDetails, str);
    }

    public static final void a(D0 d0, String str, String str2, PluginErrorDetails pluginErrorDetails) {
        d0.b.getClass();
        C2776p0 c2776p0 = C2776p0.e;
        y45.g(c2776p0);
        C2788pc c2788pcI = c2776p0.f().i();
        y45.g(c2788pcI);
        c2788pcI.a.getPluginExtension().reportError(str, str2, pluginErrorDetails);
    }

    public static final void a(D0 d0, PluginErrorDetails pluginErrorDetails) {
        d0.b.getClass();
        C2776p0 c2776p0 = C2776p0.e;
        y45.g(c2776p0);
        C2788pc c2788pcI = c2776p0.f().i();
        y45.g(c2788pcI);
        c2788pcI.a.getPluginExtension().reportUnhandledException(pluginErrorDetails);
    }
}
