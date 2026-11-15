package com.google.common.collect;

import com.google.common.base.Equivalence;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public final class MapMaker {

    boolean f29715a;

    int f29716b = -1;

    int f29717c = -1;

    MapMakerInternalMap.Strength f29718d;

    MapMakerInternalMap.Strength f29719e;

    Equivalence f29720f;

    enum Dummy {
        VALUE
    }

    public MapMaker a(int i10) {
        int i11 = this.f29717c;
        com.google.common.base.m.w(i11 == -1, "concurrency level was already set to %s", i11);
        com.google.common.base.m.d(i10 > 0);
        this.f29717c = i10;
        return this;
    }

    int b() {
        int i10 = this.f29717c;
        if (i10 == -1) {
            return 4;
        }
        return i10;
    }

    int c() {
        int i10 = this.f29716b;
        if (i10 == -1) {
            return 16;
        }
        return i10;
    }

    Equivalence d() {
        return (Equivalence) com.google.common.base.h.a(this.f29720f, e().defaultEquivalence());
    }

    MapMakerInternalMap.Strength e() {
        return (MapMakerInternalMap.Strength) com.google.common.base.h.a(this.f29718d, MapMakerInternalMap.Strength.STRONG);
    }

    MapMakerInternalMap.Strength f() {
        return (MapMakerInternalMap.Strength) com.google.common.base.h.a(this.f29719e, MapMakerInternalMap.Strength.STRONG);
    }

    public MapMaker g(int i10) {
        int i11 = this.f29716b;
        com.google.common.base.m.w(i11 == -1, "initial capacity was already set to %s", i11);
        com.google.common.base.m.d(i10 >= 0);
        this.f29716b = i10;
        return this;
    }

    MapMaker h(Equivalence equivalence) {
        Equivalence equivalence2 = this.f29720f;
        com.google.common.base.m.x(equivalence2 == null, "key equivalence was already set to %s", equivalence2);
        this.f29720f = (Equivalence) com.google.common.base.m.o(equivalence);
        this.f29715a = true;
        return this;
    }

    public ConcurrentMap i() {
        return !this.f29715a ? new ConcurrentHashMap(c(), 0.75f, b()) : MapMakerInternalMap.create(this);
    }

    MapMaker j(MapMakerInternalMap.Strength strength) {
        MapMakerInternalMap.Strength strength2 = this.f29718d;
        com.google.common.base.m.x(strength2 == null, "Key strength was already set to %s", strength2);
        this.f29718d = (MapMakerInternalMap.Strength) com.google.common.base.m.o(strength);
        if (strength != MapMakerInternalMap.Strength.STRONG) {
            this.f29715a = true;
        }
        return this;
    }

    MapMaker k(MapMakerInternalMap.Strength strength) {
        MapMakerInternalMap.Strength strength2 = this.f29719e;
        com.google.common.base.m.x(strength2 == null, "Value strength was already set to %s", strength2);
        this.f29719e = (MapMakerInternalMap.Strength) com.google.common.base.m.o(strength);
        if (strength != MapMakerInternalMap.Strength.STRONG) {
            this.f29715a = true;
        }
        return this;
    }

    public MapMaker l() {
        return j(MapMakerInternalMap.Strength.WEAK);
    }

    public String toString() {
        com.google.common.base.h.b bVarB = com.google.common.base.h.b(this);
        int i10 = this.f29716b;
        if (i10 != -1) {
            bVarB.b("initialCapacity", i10);
        }
        int i11 = this.f29717c;
        if (i11 != -1) {
            bVarB.b("concurrencyLevel", i11);
        }
        MapMakerInternalMap.Strength strength = this.f29718d;
        if (strength != null) {
            bVarB.d("keyStrength", com.google.common.base.a.e(strength.toString()));
        }
        MapMakerInternalMap.Strength strength2 = this.f29719e;
        if (strength2 != null) {
            bVarB.d("valueStrength", com.google.common.base.a.e(strength2.toString()));
        }
        if (this.f29720f != null) {
            bVarB.j("keyEquivalence");
        }
        return bVarB.toString();
    }
}
