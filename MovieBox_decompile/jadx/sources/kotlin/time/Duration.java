package kotlin.time;

import androidx.collection.s;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.WasExperimental;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import okhttp3.internal.http2.Http2Connection;

@SinceKotlin
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b&\b\u0087@\u0018\u0000 P2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001QB\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0007\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u001a\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\tHÖ\u0003¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0010\u0010\u000fJ\u0010\u0010\u0011\u001a\u00020\u0000H\u0086\u0002¢\u0006\u0004\b\u0011\u0010\u0005J\u0018\u0010\u0012\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0086\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u001f\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0018\u0010\u0018\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0086\u0002¢\u0006\u0004\b\u0018\u0010\u0013J\r\u0010\u0019\u001a\u00020\u000b¢\u0006\u0004\b\u0019\u0010\u000fJ\r\u0010\u001a\u001a\u00020\u000b¢\u0006\u0004\b\u001a\u0010\u000fJ\r\u0010\u001b\u001a\u00020\u000b¢\u0006\u0004\b\u001b\u0010\u000fJ\r\u0010\u001c\u001a\u00020\u000b¢\u0006\u0004\b\u001c\u0010\u000fJ\u0018\u0010\u001d\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0000H\u0096\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0015\u0010!\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u001f¢\u0006\u0004\b!\u0010\"J\u000f\u0010$\u001a\u00020#H\u0016¢\u0006\u0004\b$\u0010%J?\u0010-\u001a\u00020,*\u00060&j\u0002`'2\u0006\u0010(\u001a\u00020\u00062\u0006\u0010)\u001a\u00020\u00062\u0006\u0010*\u001a\u00020\u00062\u0006\u0010 \u001a\u00020#2\u0006\u0010+\u001a\u00020\u000bH\u0002¢\u0006\u0004\b-\u0010.J\r\u0010/\u001a\u00020#¢\u0006\u0004\b/\u0010%R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u0010$R\u0014\u00102\u001a\u00020\u00028BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b1\u0010\u0005R\u0014\u00105\u001a\u00020\u001f8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b3\u00104R\u0011\u00107\u001a\u00020\u00008F¢\u0006\u0006\u001a\u0004\b6\u0010\u0005R\u001a\u0010<\u001a\u00020\u00068@X\u0081\u0004¢\u0006\f\u0012\u0004\b:\u0010;\u001a\u0004\b8\u00109R\u001a\u0010?\u001a\u00020\u00068@X\u0081\u0004¢\u0006\f\u0012\u0004\b>\u0010;\u001a\u0004\b=\u00109R\u001a\u0010B\u001a\u00020\u00068@X\u0081\u0004¢\u0006\f\u0012\u0004\bA\u0010;\u001a\u0004\b@\u00109R\u001a\u0010E\u001a\u00020\u00068@X\u0081\u0004¢\u0006\f\u0012\u0004\bD\u0010;\u001a\u0004\bC\u00109R\u0011\u0010G\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\bF\u0010\u0005R\u0011\u0010I\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\bH\u0010\u0005R\u0011\u0010K\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\bJ\u0010\u0005R\u0011\u0010M\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\bL\u0010\u0005R\u0011\u0010O\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\bN\u0010\u0005\u0088\u0001\u0003\u0092\u0001\u00020\u0002¨\u0006R"}, d2 = {"Lkotlin/time/Duration;", "", "", "rawValue", "j", "(J)J", "", "hashCode", "()I", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "equals", "(Ljava/lang/Object;)Z", "B", "(J)Z", "A", "K", "G", "(JJ)J", "thisMillis", "otherNanos", "e", "(JJJ)J", "F", "D", "E", "C", "z", "i", "(JJ)I", "Lkotlin/time/DurationUnit;", "unit", "I", "(JLkotlin/time/DurationUnit;)J", "", "J", "(J)Ljava/lang/String;", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "whole", "fractional", "fractionalSize", "isoZeroes", "", "f", "(JLjava/lang/StringBuilder;IIILjava/lang/String;Z)V", "H", "a", "x", AppMeasurementSdk.ConditionalUserProperty.VALUE, "w", "(J)Lkotlin/time/DurationUnit;", "storageUnit", "m", "absoluteValue", "n", "(J)I", "getHoursComponent$annotations", "()V", "hoursComponent", "t", "getMinutesComponent$annotations", "minutesComponent", "v", "getSecondsComponent$annotations", "secondsComponent", TmcStartParams.KEY_URL_SHORT, "getNanosecondsComponent$annotations", "nanosecondsComponent", "o", "inWholeDays", TtmlNode.TAG_P, "inWholeHours", CampaignEx.JSON_KEY_AD_R, "inWholeMinutes", "s", "inWholeSeconds", CampaignEx.JSON_KEY_AD_Q, "inWholeMilliseconds", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@JvmInline
@WasExperimental
@SourceDebugExtension
public final class Duration implements Comparable<Duration> {

    public static final Companion INSTANCE = new Companion(null);

    private static final long f64619c = j(0);

    private static final long f64620d = DurationKt.j(4611686018427387903L);

    private static final long f64621e = DurationKt.j(-4611686018427387903L);

    private final long rawValue;

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bR\u0017\u0010\t\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\r\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\r\u0010\n\u001a\u0004\b\u000e\u0010\fR\u001a\u0010\u000f\u001a\u00020\u00068\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u000f\u0010\n\u001a\u0004\b\u0010\u0010\f¨\u0006\u0011"}, d2 = {"Lkotlin/time/Duration$Companion;", "", "<init>", "()V", "", AppMeasurementSdk.ConditionalUserProperty.VALUE, "Lkotlin/time/Duration;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "(Ljava/lang/String;)J", "ZERO", "J", "c", "()J", "INFINITE", "a", "NEG_INFINITE", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long a() {
            return Duration.f64620d;
        }

        public final long b() {
            return Duration.f64621e;
        }

        public final long c() {
            return Duration.f64619c;
        }

        public final long d(String value) {
            Intrinsics.h(value, "value");
            try {
                return DurationKt.p(value, true);
            } catch (IllegalArgumentException e10) {
                throw new IllegalArgumentException("Invalid ISO duration string format: '" + value + "'.", e10);
            }
        }

        private Companion() {
        }
    }

    private Duration(long j10) {
        this.rawValue = j10;
    }

    private static final boolean A(long j10) {
        return (((int) j10) & 1) == 1;
    }

    private static final boolean B(long j10) {
        return (((int) j10) & 1) == 0;
    }

    public static final boolean C(long j10) {
        return j10 == f64620d || j10 == f64621e;
    }

    public static final boolean D(long j10) {
        return j10 < 0;
    }

    public static final boolean E(long j10) {
        return j10 > 0;
    }

    public static final long F(long j10, long j11) {
        return G(j10, K(j11));
    }

    public static final long G(long j10, long j11) {
        if (C(j10)) {
            if (z(j11) || (j11 ^ j10) >= 0) {
                return j10;
            }
            throw new IllegalArgumentException("Summing infinite durations of different signs yields an undefined result.");
        }
        if (C(j11)) {
            return j11;
        }
        if ((((int) j10) & 1) != (((int) j11) & 1)) {
            return A(j10) ? e(j10, x(j10), x(j11)) : e(j10, x(j11), x(j10));
        }
        long jX = x(j10) + x(j11);
        return B(j10) ? DurationKt.m(jX) : DurationKt.k(jX);
    }

    public static final String H(long j10) {
        StringBuilder sb2 = new StringBuilder();
        if (D(j10)) {
            sb2.append('-');
        }
        sb2.append("PT");
        long jM = m(j10);
        long jP = p(jM);
        int iT = t(jM);
        int iV = v(jM);
        int iU = u(jM);
        if (C(j10)) {
            jP = 9999999999999L;
        }
        boolean z10 = false;
        boolean z11 = jP != 0;
        boolean z12 = (iV == 0 && iU == 0) ? false : true;
        if (iT != 0 || (z12 && z11)) {
            z10 = true;
        }
        if (z11) {
            sb2.append(jP);
            sb2.append('H');
        }
        if (z10) {
            sb2.append(iT);
            sb2.append('M');
        }
        if (z12 || (!z11 && !z10)) {
            f(j10, sb2, iV, iU, 9, "S", true);
        }
        return sb2.toString();
    }

    public static final long I(long j10, DurationUnit unit) {
        Intrinsics.h(unit, "unit");
        if (j10 == f64620d) {
            return Long.MAX_VALUE;
        }
        if (j10 == f64621e) {
            return Long.MIN_VALUE;
        }
        return DurationUnitKt__DurationUnitJvmKt.b(x(j10), w(j10), unit);
    }

    public static String J(long j10) {
        if (j10 == 0) {
            return "0s";
        }
        if (j10 == f64620d) {
            return "Infinity";
        }
        if (j10 == f64621e) {
            return "-Infinity";
        }
        boolean zD = D(j10);
        StringBuilder sb2 = new StringBuilder();
        if (zD) {
            sb2.append('-');
        }
        long jM = m(j10);
        long jO = o(jM);
        int iN = n(jM);
        int iT = t(jM);
        int iV = v(jM);
        int iU = u(jM);
        int i10 = 0;
        boolean z10 = jO != 0;
        boolean z11 = iN != 0;
        boolean z12 = iT != 0;
        boolean z13 = (iV == 0 && iU == 0) ? false : true;
        if (z10) {
            sb2.append(jO);
            sb2.append('d');
            i10 = 1;
        }
        if (z11 || (z10 && (z12 || z13))) {
            int i11 = i10 + 1;
            if (i10 > 0) {
                sb2.append(' ');
            }
            sb2.append(iN);
            sb2.append('h');
            i10 = i11;
        }
        if (z12 || (z13 && (z11 || z10))) {
            int i12 = i10 + 1;
            if (i10 > 0) {
                sb2.append(' ');
            }
            sb2.append(iT);
            sb2.append('m');
            i10 = i12;
        }
        if (z13) {
            int i13 = i10 + 1;
            if (i10 > 0) {
                sb2.append(' ');
            }
            if (iV != 0 || z10 || z11 || z12) {
                f(j10, sb2, iV, iU, 9, "s", false);
            } else if (iU >= 1000000) {
                f(j10, sb2, iU / 1000000, iU % 1000000, 6, "ms", false);
            } else if (iU >= 1000) {
                f(j10, sb2, iU / 1000, iU % 1000, 3, "us", false);
            } else {
                sb2.append(iU);
                sb2.append("ns");
            }
            i10 = i13;
        }
        if (zD && i10 > 1) {
            sb2.insert(1, '(').append(')');
        }
        return sb2.toString();
    }

    public static final long K(long j10) {
        return DurationKt.i(-x(j10), ((int) j10) & 1);
    }

    private static final long e(long j10, long j11, long j12) {
        long jO = DurationKt.o(j12);
        long j13 = j11 + jO;
        if (-4611686018426L > j13 || j13 >= 4611686018427L) {
            return DurationKt.j(RangesKt.m(j13, -4611686018427387903L, 4611686018427387903L));
        }
        return DurationKt.l(DurationKt.n(j13) + (j12 - DurationKt.n(jO)));
    }

    private static final void f(long j10, StringBuilder sb2, int i10, int i11, int i12, String str, boolean z10) {
        sb2.append(i10);
        if (i11 != 0) {
            sb2.append('.');
            String strA0 = StringsKt.A0(String.valueOf(i11), i12, '0');
            int i13 = -1;
            int length = strA0.length() - 1;
            if (length >= 0) {
                while (true) {
                    int i14 = length - 1;
                    if (strA0.charAt(length) != '0') {
                        i13 = length;
                        break;
                    } else if (i14 < 0) {
                        break;
                    } else {
                        length = i14;
                    }
                }
            }
            int i15 = i13 + 1;
            if (z10 || i15 >= 3) {
                sb2.append((CharSequence) strA0, 0, ((i13 + 3) / 3) * 3);
                Intrinsics.g(sb2, "append(...)");
            } else {
                sb2.append((CharSequence) strA0, 0, i15);
                Intrinsics.g(sb2, "append(...)");
            }
        }
        sb2.append(str);
    }

    public static final Duration g(long j10) {
        return new Duration(j10);
    }

    public static int i(long j10, long j11) {
        long j12 = j10 ^ j11;
        if (j12 < 0 || (((int) j12) & 1) == 0) {
            return Intrinsics.k(j10, j11);
        }
        int i10 = (((int) j10) & 1) - (((int) j11) & 1);
        return D(j10) ? -i10 : i10;
    }

    public static long j(long j10) {
        if (DurationJvmKt.a()) {
            if (B(j10)) {
                long jX = x(j10);
                if (-4611686018426999999L > jX || jX >= 4611686018427000000L) {
                    throw new AssertionError(x(j10) + " ns is out of nanoseconds range");
                }
            } else {
                long jX2 = x(j10);
                if (-4611686018427387903L > jX2 || jX2 >= 4611686018427387904L) {
                    throw new AssertionError(x(j10) + " ms is out of milliseconds range");
                }
                long jX3 = x(j10);
                if (-4611686018426L <= jX3 && jX3 < 4611686018427L) {
                    throw new AssertionError(x(j10) + " ms is denormalized");
                }
            }
        }
        return j10;
    }

    public static boolean k(long j10, Object obj) {
        return (obj instanceof Duration) && j10 == ((Duration) obj).getRawValue();
    }

    public static final boolean l(long j10, long j11) {
        return j10 == j11;
    }

    public static final long m(long j10) {
        return D(j10) ? K(j10) : j10;
    }

    public static final int n(long j10) {
        if (C(j10)) {
            return 0;
        }
        return (int) (p(j10) % ((long) 24));
    }

    public static final long o(long j10) {
        return I(j10, DurationUnit.DAYS);
    }

    public static final long p(long j10) {
        return I(j10, DurationUnit.HOURS);
    }

    public static final long q(long j10) {
        return (A(j10) && z(j10)) ? x(j10) : I(j10, DurationUnit.MILLISECONDS);
    }

    public static final long r(long j10) {
        return I(j10, DurationUnit.MINUTES);
    }

    public static final long s(long j10) {
        return I(j10, DurationUnit.SECONDS);
    }

    public static final int t(long j10) {
        if (C(j10)) {
            return 0;
        }
        return (int) (r(j10) % ((long) 60));
    }

    public static final int u(long j10) {
        if (C(j10)) {
            return 0;
        }
        return (int) (A(j10) ? DurationKt.n(x(j10) % ((long) 1000)) : x(j10) % ((long) Http2Connection.DEGRADED_PONG_TIMEOUT_NS));
    }

    public static final int v(long j10) {
        if (C(j10)) {
            return 0;
        }
        return (int) (s(j10) % ((long) 60));
    }

    private static final DurationUnit w(long j10) {
        return B(j10) ? DurationUnit.NANOSECONDS : DurationUnit.MILLISECONDS;
    }

    private static final long x(long j10) {
        return j10 >> 1;
    }

    public static int y(long j10) {
        return s.a(j10);
    }

    public static final boolean z(long j10) {
        return !C(j10);
    }

    public final long getRawValue() {
        return this.rawValue;
    }

    @Override
    public int compareTo(Duration duration) {
        return h(duration.getRawValue());
    }

    public boolean equals(Object other) {
        return k(this.rawValue, other);
    }

    public int h(long j10) {
        return i(this.rawValue, j10);
    }

    public int hashCode() {
        return y(this.rawValue);
    }

    public String toString() {
        return J(this.rawValue);
    }
}
