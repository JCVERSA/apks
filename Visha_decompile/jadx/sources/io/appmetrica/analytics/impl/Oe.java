package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Set;

public final class Oe extends AbstractC2988xd implements Yn {
    public static final Ne d = new Ne("LOCATION_TRACKING_ENABLED", null);
    public static final Ne e = new Ne("PREF_KEY_OFFSET", null);
    public static final Ne f = new Ne("UNCHECKED_TIME", null);
    public static final Ne g = new Ne("STATISTICS_RESTRICTED_IN_MAIN", null);
    public static final Ne h = new Ne("LAST_IDENTITY_LIGHT_SEND_TIME", null);
    public static final Ne i = new Ne("NEXT_REPORT_SEND_ATTEMPT_NUMBER", null);
    public static final Ne j = new Ne("NEXT_LOCATION_SEND_ATTEMPT_NUMBER", null);
    public static final Ne k = new Ne("NEXT_STARTUP_SEND_ATTEMPT_NUMBER", null);
    public static final Ne l = new Ne("LAST_REPORT_SEND_ATTEMPT_TIME", null);
    public static final Ne m = new Ne("LAST_LOCATION_SEND_ATTEMPT_TIME", null);
    public static final Ne n = new Ne("LAST_STARTUP_SEND_ATTEMPT_TIME", null);
    public static final Ne o = new Ne("SATELLITE_PRELOAD_INFO_CHECKED", null);
    public static final Ne p = new Ne("SATELLITE_CLIDS_CHECKED", null);
    public static final Ne q = new Ne("VITAL_DATA", null);
    public static final Ne r = new Ne("LAST_KOTLIN_VERSION_SEND_TIME", null);
    public static final Ne s = new Ne("ADV_IDENTIFIERS_TRACKING_ENABLED", null);

    public Oe(Oa oa) {
        super(oa);
    }

    public final long a(int i2) {
        return this.a.getLong(e.b, i2);
    }

    public final boolean b(boolean z) {
        return this.a.getBoolean(f.b, z);
    }

    public final Oe c(boolean z) {
        return (Oe) b(g.b, z);
    }

    public final Oe d(long j2) {
        return (Oe) b(e.b, j2);
    }

    public final boolean e() {
        return this.a.getBoolean(d.b, false);
    }

    public final void f(boolean z) {
        b(d.b, z).b();
    }

    public final Oe g() {
        return (Oe) b(p.b, true);
    }

    public final Oe h() {
        return (Oe) b(o.b, true);
    }

    public final boolean i() {
        return this.a.getBoolean(o.b, false);
    }

    public final boolean j() {
        return this.a.getBoolean(p.b, false);
    }

    public final long a(long j2) {
        return this.a.getLong(h.b, j2);
    }

    public final Oe b(long j2) {
        return (Oe) b(h.b, j2);
    }

    public final Oe c(long j2) {
        return (Oe) b(r.b, j2);
    }

    public final Oe d(boolean z) {
        return (Oe) b(f.b, z);
    }

    public final void e(boolean z) {
        b(s.b, z).b();
    }

    public final long f() {
        return this.a.getLong(r.b, 0L);
    }

    @Override
    @Nullable
    public final String a() {
        return this.a.getString(q.b, null);
    }

    public final Oe b(@NonNull Ld ld, int i2) {
        Ne ne;
        int iOrdinal = ld.ordinal();
        if (iOrdinal == 0) {
            ne = i;
        } else if (iOrdinal != 1) {
            ne = iOrdinal != 2 ? null : k;
        } else {
            ne = j;
        }
        return ne != null ? (Oe) b(ne.b, i2) : this;
    }

    @Override
    @NonNull
    public final Set<String> c() {
        return this.a.a();
    }

    @Nullable
    public final Boolean d() {
        Ne ne = g;
        if (!this.a.a(ne.b)) {
            return null;
        }
        return Boolean.valueOf(this.a.getBoolean(ne.b, true));
    }

    @Override
    @NonNull
    public final String f(@NonNull String str) {
        return new Ne(str, null).b;
    }

    @Override
    public final void a(@NonNull String str) {
        b(q.b, str).b();
    }

    public final boolean a(boolean z) {
        return this.a.getBoolean(s.b, z);
    }

    public final Oe b(@NonNull Ld ld, long j2) {
        Ne ne;
        int iOrdinal = ld.ordinal();
        if (iOrdinal == 0) {
            ne = l;
        } else if (iOrdinal != 1) {
            ne = iOrdinal != 2 ? null : n;
        } else {
            ne = m;
        }
        return ne != null ? (Oe) b(ne.b, j2) : this;
    }

    public final int a(@NonNull Ld ld, int i2) {
        Ne ne;
        int iOrdinal = ld.ordinal();
        if (iOrdinal == 0) {
            ne = i;
        } else if (iOrdinal != 1) {
            ne = iOrdinal != 2 ? null : k;
        } else {
            ne = j;
        }
        if (ne == null) {
            return i2;
        }
        return this.a.getInt(ne.b, i2);
    }

    public final long a(@NonNull Ld ld, long j2) {
        Ne ne;
        int iOrdinal = ld.ordinal();
        if (iOrdinal == 0) {
            ne = l;
        } else if (iOrdinal != 1) {
            ne = iOrdinal != 2 ? null : n;
        } else {
            ne = m;
        }
        if (ne == null) {
            return j2;
        }
        return this.a.getLong(ne.b, j2);
    }
}
