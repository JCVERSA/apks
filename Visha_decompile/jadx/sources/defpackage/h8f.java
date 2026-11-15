package defpackage;

import android.location.Location;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import java.util.Date;
import java.util.Set;

public final class h8f implements MediationAdRequest {
    public final Date a;
    public final int b;
    public final Set c;
    public final boolean d;
    public final Location e;
    public final int f;
    public final boolean g;

    public h8f(Date date, int i, Set set, Location location, boolean z, int i2, boolean z2, int i3, String str) {
        this.a = date;
        this.b = i;
        this.c = set;
        this.e = location;
        this.d = z;
        this.f = i2;
        this.g = z2;
    }

    @Override
    public final Date getBirthday() {
        return this.a;
    }

    @Override
    public final int getGender() {
        return this.b;
    }

    @Override
    public final Set getKeywords() {
        return this.c;
    }

    @Override
    public final Location getLocation() {
        return this.e;
    }

    @Override
    public final boolean isDesignedForFamilies() {
        return this.g;
    }

    @Override
    public final boolean isTesting() {
        return this.d;
    }

    @Override
    public final int taggedForChildDirectedTreatment() {
        return this.f;
    }
}
