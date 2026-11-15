package com.google.common.collect;

import com.google.common.base.Equivalence;
import defpackage.ui;
import defpackage.xd8;
import defpackage.zq6;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public final class MapMaker {
    public boolean a;
    public int b = -1;
    public int c = -1;
    public MapMakerInternalMap.Strength d;
    public MapMakerInternalMap.Strength e;
    public Equivalence f;

    public enum Dummy {
        VALUE
    }

    public MapMaker a(int i) {
        int i2 = this.c;
        xd8.w(i2 == -1, "concurrency level was already set to %s", i2);
        xd8.d(i > 0);
        this.c = i;
        return this;
    }

    public int b() {
        int i = this.c;
        if (i == -1) {
            return 4;
        }
        return i;
    }

    public int c() {
        int i = this.b;
        if (i == -1) {
            return 16;
        }
        return i;
    }

    public Equivalence d() {
        return (Equivalence) zq6.a(this.f, e().defaultEquivalence());
    }

    public MapMakerInternalMap.Strength e() {
        return (MapMakerInternalMap.Strength) zq6.a(this.d, MapMakerInternalMap.Strength.STRONG);
    }

    public MapMakerInternalMap.Strength f() {
        return (MapMakerInternalMap.Strength) zq6.a(this.e, MapMakerInternalMap.Strength.STRONG);
    }

    public MapMaker g(int i) {
        int i2 = this.b;
        xd8.w(i2 == -1, "initial capacity was already set to %s", i2);
        xd8.d(i >= 0);
        this.b = i;
        return this;
    }

    public MapMaker h(Equivalence equivalence) {
        Equivalence equivalence2 = this.f;
        xd8.x(equivalence2 == null, "key equivalence was already set to %s", equivalence2);
        this.f = (Equivalence) xd8.o(equivalence);
        this.a = true;
        return this;
    }

    public ConcurrentMap i() {
        return !this.a ? new ConcurrentHashMap(c(), 0.75f, b()) : MapMakerInternalMap.create(this);
    }

    public MapMaker j(MapMakerInternalMap.Strength strength) {
        MapMakerInternalMap.Strength strength2 = this.d;
        xd8.x(strength2 == null, "Key strength was already set to %s", strength2);
        this.d = (MapMakerInternalMap.Strength) xd8.o(strength);
        if (strength != MapMakerInternalMap.Strength.STRONG) {
            this.a = true;
        }
        return this;
    }

    public MapMaker k(MapMakerInternalMap.Strength strength) {
        MapMakerInternalMap.Strength strength2 = this.e;
        xd8.x(strength2 == null, "Value strength was already set to %s", strength2);
        this.e = (MapMakerInternalMap.Strength) xd8.o(strength);
        if (strength != MapMakerInternalMap.Strength.STRONG) {
            this.a = true;
        }
        return this;
    }

    public MapMaker l() {
        return j(MapMakerInternalMap.Strength.WEAK);
    }

    public String toString() {
        zq6.b bVarB = zq6.b(this);
        int i = this.b;
        if (i != -1) {
            bVarB.b("initialCapacity", i);
        }
        int i2 = this.c;
        if (i2 != -1) {
            bVarB.b("concurrencyLevel", i2);
        }
        MapMakerInternalMap.Strength strength = this.d;
        if (strength != null) {
            bVarB.d("keyStrength", ui.e(strength.toString()));
        }
        MapMakerInternalMap.Strength strength2 = this.e;
        if (strength2 != null) {
            bVarB.d("valueStrength", ui.e(strength2.toString()));
        }
        if (this.f != null) {
            bVarB.j("keyEquivalence");
        }
        return bVarB.toString();
    }
}
