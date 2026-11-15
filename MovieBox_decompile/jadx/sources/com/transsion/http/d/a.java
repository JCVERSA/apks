package com.transsion.http.d;

import java.util.UUID;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class a {

    public static final a f44573a = new a("FORM", 0, "application/x-www-form-urlencoded");

    public static final a f44574b = new a("JSON", 1, "application/json");

    public static final a f44575c = new a("FILE", 2, "multipart/form-data;boundary=--" + UUID.randomUUID().toString());

    private final String f44576d;

    private a(String str, int i10, String str2) {
        super(str, i10);
        this.f44576d = str2;
    }

    @Override
    public String toString() {
        return this.f44576d;
    }
}
