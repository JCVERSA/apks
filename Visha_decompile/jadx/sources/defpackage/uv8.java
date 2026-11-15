package defpackage;

import com.google.android.gms.common.internal.RootTelemetryConfiguration;

public final class uv8 {
    public static uv8 b;
    public static final RootTelemetryConfiguration c = new RootTelemetryConfiguration(0, false, false, 0, 0);
    public RootTelemetryConfiguration a;

    public static synchronized uv8 b() {
        try {
            if (b == null) {
                b = new uv8();
            }
        } catch (Throwable th) {
            throw th;
        }
        return b;
    }

    public RootTelemetryConfiguration a() {
        return this.a;
    }

    public final synchronized void c(RootTelemetryConfiguration rootTelemetryConfiguration) {
        try {
            if (rootTelemetryConfiguration == null) {
                this.a = c;
                return;
            }
            RootTelemetryConfiguration rootTelemetryConfiguration2 = this.a;
            if (rootTelemetryConfiguration2 == null || rootTelemetryConfiguration2.getVersion() < rootTelemetryConfiguration.getVersion()) {
                this.a = rootTelemetryConfiguration;
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
