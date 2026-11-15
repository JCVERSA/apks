package com.cloud.tmc.kernel.datastructure.immutable;

import android.os.Bundle;

public class ImmutableBundle implements Immutable<Bundle> {
    private Bundle immutable;

    public ImmutableBundle(Bundle bundle) {
        this.immutable = bundle;
    }

    public boolean containsKey(String str) {
        Bundle bundle = this.immutable;
        return bundle != null && bundle.containsKey(str);
    }

    public boolean getBoolean(String str, boolean z10) {
        Bundle bundle = this.immutable;
        return bundle != null ? bundle.getBoolean(str, z10) : z10;
    }

    public double getDouble(String str, double d10) {
        Bundle bundle = this.immutable;
        return bundle != null ? bundle.getDouble(str, d10) : d10;
    }

    public int getInt(String str, int i10) {
        Bundle bundle = this.immutable;
        return bundle != null ? bundle.getInt(str, i10) : i10;
    }

    public long getLong(String str, long j10) {
        Bundle bundle = this.immutable;
        return bundle != null ? bundle.getLong(str, j10) : j10;
    }

    public String getString(String str, String str2) {
        Bundle bundle = this.immutable;
        return bundle != null ? bundle.getString(str, str2) : str2;
    }

    public boolean isEmpty() {
        Bundle bundle = this.immutable;
        return bundle == null || bundle.isEmpty();
    }

    public ImmutableSet<String> keySet() {
        if (this.immutable != null) {
            return new ImmutableSet<>(this.immutable.keySet());
        }
        return null;
    }

    public int size() {
        Bundle bundle = this.immutable;
        if (bundle != null) {
            return bundle.size();
        }
        return 0;
    }

    public String toString() {
        if (this.immutable == null) {
            return "ImmutableBundle{NULL}";
        }
        return "ImmutableBundle{" + this.immutable.toString() + "}";
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Bundle mutable() {
        return new Bundle(this.immutable);
    }
}
