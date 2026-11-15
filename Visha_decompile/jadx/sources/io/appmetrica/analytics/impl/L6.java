package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.appmetrica.analytics.coreapi.internal.control.DataSendingRestrictionController;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import java.util.HashSet;

public final class L6 implements DataSendingRestrictionController {
    public final J6 a;
    public Boolean b;
    public final HashSet c = new HashSet();
    public final HashSet d = new HashSet();

    public L6(@NonNull J6 j6) {
        this.a = j6;
        this.b = ((K6) j6).a();
    }

    public final synchronized void a(@Nullable Boolean bool) {
        try {
            if (In.a(bool) || this.b == null) {
                boolean zEquals = Boolean.FALSE.equals(bool);
                this.b = Boolean.valueOf(zEquals);
                ((K6) this.a).a.c(zEquals).b();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public final boolean isRestrictedForBackgroundDataCollection() {
        Boolean bool = this.b;
        if (bool == null) {
            return !this.c.isEmpty() || this.d.isEmpty();
        }
        return bool.booleanValue();
    }

    @Override
    public final synchronized boolean isRestrictedForReporter() {
        boolean zBooleanValue;
        try {
            Boolean bool = this.b;
            if (bool == null) {
                zBooleanValue = this.d.isEmpty() && this.c.isEmpty();
            } else {
                zBooleanValue = bool.booleanValue();
            }
        } catch (Throwable th) {
            throw th;
        }
        return zBooleanValue;
    }

    @Override
    public final synchronized boolean isRestrictedForSdk() {
        Boolean bool;
        try {
            bool = this.b;
        } catch (Throwable th) {
            throw th;
        }
        return bool == null ? this.d.isEmpty() : bool.booleanValue();
    }

    public final synchronized void a(@NonNull String str, @Nullable Boolean bool) {
        try {
            if (In.a(bool) || (!this.d.contains(str) && !this.c.contains(str))) {
                if (((Boolean) WrapUtils.getOrDefault(bool, Boolean.TRUE)).booleanValue()) {
                    this.d.add(str);
                    this.c.remove(str);
                } else {
                    this.c.add(str);
                    this.d.remove(str);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
