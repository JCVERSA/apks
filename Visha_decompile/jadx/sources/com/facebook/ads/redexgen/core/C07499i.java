package com.facebook.ads.redexgen.core;

import java.util.List;
import java.util.Map;
import java.util.Set;

public class C07499i extends AbstractC0782Ap<String, List<String>> {
    public final Map<String, List<String>> A00;

    public C07499i(Map<String, List<String>> headers) {
        this.A00 = headers;
    }

    @Override
    public final List<String> get(Object obj) {
        if (obj == null) {
            return null;
        }
        return (List) super.get(obj);
    }

    public static boolean A01(String str) {
        return str != null;
    }

    public static boolean A02(Map.Entry entry) {
        return entry.getKey() != null;
    }

    @Override
    public final Map<String, List<String>> A03() {
        return this.A00;
    }

    @Override
    public final boolean containsKey(Object obj) {
        return obj != null && super.containsKey(obj);
    }

    @Override
    public final boolean containsValue(Object obj) {
        return A06(obj);
    }

    @Override
    public final Set<Map.Entry<String, List<String>>> entrySet() {
        return AbstractC2315ou.A07(super.entrySet(), new InterfaceC1978jB() {
            @Override
            public final boolean A44(Object obj) {
                return C07499i.A02((Map.Entry) obj);
            }
        });
    }

    @Override
    public final boolean equals(Object obj) {
        return obj != null && A07(obj);
    }

    @Override
    public final int hashCode() {
        return A04();
    }

    @Override
    public final boolean isEmpty() {
        if (super.isEmpty()) {
            return true;
        }
        return super.size() == 1 && super.containsKey(null);
    }

    @Override
    public final Set<String> keySet() {
        return AbstractC2315ou.A07(super.keySet(), new InterfaceC1978jB() {
            @Override
            public final boolean A44(Object obj) {
                return C07499i.A01((String) obj);
            }
        });
    }

    @Override
    public final int size() {
        return super.size() - (super.containsKey(null) ? 1 : 0);
    }
}
