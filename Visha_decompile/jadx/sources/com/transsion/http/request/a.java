package com.transsion.http.request;

import androidx.browser.trusted.sharing.ShareTarget;
import java.util.UUID;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class a {
    public static final a a = new a("FORM", 0, ShareTarget.ENCODING_TYPE_URL_ENCODED);
    public static final a b = new a("JSON", 1, "application/json");
    public static final a c = new a("FILE", 2, "multipart/form-data;boundary=--" + UUID.randomUUID().toString());
    private final String d;

    private a(String str, int i, String str2) {
        super(str, i);
        this.d = str2;
    }

    @Override
    public String toString() {
        return this.d;
    }
}
