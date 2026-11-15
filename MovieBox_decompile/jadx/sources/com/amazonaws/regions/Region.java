package com.amazonaws.regions;

import java.util.HashMap;
import java.util.Map;

public final class Region {

    private final String f17945a;

    private final String f17946b;

    private final Map f17947c = new HashMap();

    private final Map f17948d = new HashMap();

    private final Map f17949e = new HashMap();

    Region(String str, String str2) {
        this.f17945a = str;
        if (str2 == null || str2.isEmpty()) {
            this.f17946b = "amazonaws.com";
        } else {
            this.f17946b = str2;
        }
    }

    public static Region e(Regions regions) {
        return RegionUtils.a(regions.getName());
    }

    public static Region f(String str) {
        return RegionUtils.a(str);
    }

    public String a() {
        return this.f17946b;
    }

    Map b() {
        return this.f17948d;
    }

    Map c() {
        return this.f17949e;
    }

    public String d() {
        return this.f17945a;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Region) {
            return d().equals(((Region) obj).d());
        }
        return false;
    }

    public String g(String str) {
        return (String) this.f17947c.get(str);
    }

    Map h() {
        return this.f17947c;
    }

    public int hashCode() {
        return d().hashCode();
    }

    public boolean i(String str) {
        return this.f17947c.containsKey(str);
    }

    public String toString() {
        return d();
    }
}
