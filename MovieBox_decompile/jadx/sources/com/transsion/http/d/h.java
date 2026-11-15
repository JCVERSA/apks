package com.transsion.http.d;

import com.transsion.wrapperad.view.secondfloor.CustomSwipeRefreshLayout;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class h {

    public static final h f44577a = new h("GET", 0, "GET");

    public static final h f44578b = new h("POST", 1, "POST");

    public static final h f44579c = new h("PUT", 2, "PUT");

    public static final h f44580d = new h("PATCH", 3, "PATCH");

    public static final h f44581e = new h("HEAD", 4, "HEAD");

    public static final h f44582f = new h(CustomSwipeRefreshLayout.MOVE, 5, CustomSwipeRefreshLayout.MOVE);

    public static final h f44583g = new h("COPY", 6, "COPY");

    public static final h f44584h = new h("DELETE", 7, "DELETE");

    public static final h f44585i = new h("OPTIONS", 8, "OPTIONS");

    public static final h f44586j = new h("TRACE", 9, "TRACE");

    public static final h f44587k = new h("CONNECT", 10, "CONNECT");

    private final String f44588l;

    private h(String str, int i10, String str2) {
        super(str, i10);
        this.f44588l = str2;
    }

    @Override
    public String toString() {
        return this.f44588l;
    }
}
