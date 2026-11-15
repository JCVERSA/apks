package defpackage;

import android.os.SystemClock;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.c;
import com.google.android.gms.common.api.internal.m;
import com.google.android.gms.common.internal.ConnectionTelemetryConfiguration;
import com.google.android.gms.common.internal.MethodInvocation;
import com.google.android.gms.common.internal.RootTelemetryConfiguration;
import com.google.android.gms.common.internal.a;

public final class m0e implements pe7 {
    public final c a;
    public final int b;
    public final xd c;
    public final long d;
    public final long e;

    public m0e(c cVar, int i, xd xdVar, long j, long j2, String str, String str2) {
        this.a = cVar;
        this.b = i;
        this.c = xdVar;
        this.d = j;
        this.e = j2;
    }

    public static m0e a(c cVar, int i, xd xdVar) {
        boolean methodTimingTelemetryEnabled;
        if (!cVar.e()) {
            return null;
        }
        RootTelemetryConfiguration rootTelemetryConfigurationA = uv8.b().a();
        if (rootTelemetryConfigurationA == null) {
            methodTimingTelemetryEnabled = true;
        } else {
            if (!rootTelemetryConfigurationA.getMethodInvocationTelemetryEnabled()) {
                return null;
            }
            methodTimingTelemetryEnabled = rootTelemetryConfigurationA.getMethodTimingTelemetryEnabled();
            m mVarT = cVar.t(xdVar);
            if (mVarT != null) {
                if (!(mVarT.s() instanceof a)) {
                    return null;
                }
                a aVar = (a) mVarT.s();
                if (aVar.hasConnectionInfo() && !aVar.isConnecting()) {
                    ConnectionTelemetryConfiguration connectionTelemetryConfigurationB = b(mVarT, aVar, i);
                    if (connectionTelemetryConfigurationB == null) {
                        return null;
                    }
                    mVarT.D();
                    methodTimingTelemetryEnabled = connectionTelemetryConfigurationB.getMethodTimingTelemetryEnabled();
                }
            }
        }
        return new m0e(cVar, i, xdVar, methodTimingTelemetryEnabled ? System.currentTimeMillis() : 0L, methodTimingTelemetryEnabled ? SystemClock.elapsedRealtime() : 0L, null, null);
    }

    public static ConnectionTelemetryConfiguration b(m mVar, a aVar, int i) {
        int[] methodInvocationMethodKeyAllowlist;
        int[] methodInvocationMethodKeyDisallowlist;
        ConnectionTelemetryConfiguration telemetryConfiguration = aVar.getTelemetryConfiguration();
        if (telemetryConfiguration == null || !telemetryConfiguration.getMethodInvocationTelemetryEnabled() || ((methodInvocationMethodKeyAllowlist = telemetryConfiguration.getMethodInvocationMethodKeyAllowlist()) != null ? !th.b(methodInvocationMethodKeyAllowlist, i) : !((methodInvocationMethodKeyDisallowlist = telemetryConfiguration.getMethodInvocationMethodKeyDisallowlist()) == null || !th.b(methodInvocationMethodKeyDisallowlist, i))) || mVar.q() >= telemetryConfiguration.getMaxMethodInvocationsLogged()) {
            return null;
        }
        return telemetryConfiguration;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x009a A[PHI: r9
      0x009a: PHI (r9v3 int) = (r9v0 int), (r9v2 int) binds: [B:38:0x0098, B:44:0x00b3] A[DONT_GENERATE, DONT_INLINE]] */
    @Override
    public final void onComplete(xda xdaVar) {
        m mVarT;
        int version;
        int i;
        int i2;
        int errorCode;
        long j;
        long j2;
        int iElapsedRealtime;
        if (this.a.e()) {
            RootTelemetryConfiguration rootTelemetryConfigurationA = uv8.b().a();
            if ((rootTelemetryConfigurationA == null || rootTelemetryConfigurationA.getMethodInvocationTelemetryEnabled()) && (mVarT = this.a.t(this.c)) != null && (mVarT.s() instanceof a)) {
                a aVar = (a) mVarT.s();
                int i3 = 0;
                boolean methodTimingTelemetryEnabled = this.d > 0;
                int gCoreServiceId = aVar.getGCoreServiceId();
                int statusCode = 100;
                if (rootTelemetryConfigurationA != null) {
                    methodTimingTelemetryEnabled &= rootTelemetryConfigurationA.getMethodTimingTelemetryEnabled();
                    int batchPeriodMillis = rootTelemetryConfigurationA.getBatchPeriodMillis();
                    int maxMethodInvocationsInBatch = rootTelemetryConfigurationA.getMaxMethodInvocationsInBatch();
                    version = rootTelemetryConfigurationA.getVersion();
                    if (aVar.hasConnectionInfo() && !aVar.isConnecting()) {
                        ConnectionTelemetryConfiguration connectionTelemetryConfigurationB = b(mVarT, aVar, this.b);
                        if (connectionTelemetryConfigurationB == null) {
                            return;
                        }
                        boolean z = connectionTelemetryConfigurationB.getMethodTimingTelemetryEnabled() && this.d > 0;
                        maxMethodInvocationsInBatch = connectionTelemetryConfigurationB.getMaxMethodInvocationsLogged();
                        methodTimingTelemetryEnabled = z;
                    }
                    i2 = batchPeriodMillis;
                    i = maxMethodInvocationsInBatch;
                } else {
                    version = 0;
                    i = 100;
                    i2 = 5000;
                }
                c cVar = this.a;
                if (xdaVar.q()) {
                    errorCode = 0;
                } else if (xdaVar.o()) {
                    i3 = statusCode;
                    errorCode = -1;
                } else {
                    Exception excL = xdaVar.l();
                    if (excL instanceof ApiException) {
                        Status status = ((ApiException) excL).getStatus();
                        statusCode = status.getStatusCode();
                        ConnectionResult connectionResult = status.getConnectionResult();
                        if (connectionResult == null) {
                            i3 = statusCode;
                            errorCode = -1;
                        } else {
                            errorCode = connectionResult.getErrorCode();
                            i3 = statusCode;
                        }
                    } else {
                        i3 = 101;
                        errorCode = -1;
                    }
                }
                if (methodTimingTelemetryEnabled) {
                    long j3 = this.d;
                    long j4 = this.e;
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    iElapsedRealtime = (int) (SystemClock.elapsedRealtime() - j4);
                    j2 = jCurrentTimeMillis;
                    j = j3;
                } else {
                    j = 0;
                    j2 = 0;
                    iElapsedRealtime = -1;
                }
                cVar.E(new MethodInvocation(this.b, i3, errorCode, j, j2, null, null, gCoreServiceId, iElapsedRealtime), version, i2, i);
            }
        }
    }
}
