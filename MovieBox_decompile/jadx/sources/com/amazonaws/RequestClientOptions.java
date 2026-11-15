package com.amazonaws;

import java.util.EnumMap;
import java.util.Map;

public final class RequestClientOptions {

    private final Map f17699a = new EnumMap(Marker.class);

    public enum Marker {
        USER_AGENT
    }

    private String b(String str, String str2) {
        if (str.contains(str2)) {
            return str;
        }
        return str + " " + str2;
    }

    public void a(String str) {
        Map map = this.f17699a;
        Marker marker = Marker.USER_AGENT;
        String str2 = (String) map.get(marker);
        if (str2 == null) {
            str2 = "";
        }
        d(marker, b(str2, str));
    }

    public String c(Marker marker) {
        return (String) this.f17699a.get(marker);
    }

    public void d(Marker marker, String str) {
        this.f17699a.put(marker, str);
    }
}
