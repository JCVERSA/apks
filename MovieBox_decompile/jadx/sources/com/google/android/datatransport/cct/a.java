package com.google.android.datatransport.cct;

import com.google.android.datatransport.runtime.g;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Pattern;

public final class a implements g {

    static final String f23514c;

    static final String f23515d;

    private static final String f23516e;

    private static final Set f23517f;

    public static final a f23518g;

    public static final a f23519h;

    private final String f23520a;

    private final String f23521b;

    static {
        String strA = e.a("hts/frbslgiggolai.o/0clgbthfra=snpoo", "tp:/ieaeogn.ogepscmvc/o/ac?omtjo_rt3");
        f23514c = strA;
        String strA2 = e.a("hts/frbslgigp.ogepscmv/ieo/eaybtho", "tp:/ieaeogn-agolai.o/1frlglgc/aclg");
        f23515d = strA2;
        String strA3 = e.a("AzSCki82AwsLzKd5O8zo", "IayckHiZRO1EFl1aGoK");
        f23516e = strA3;
        f23517f = Collections.unmodifiableSet(new HashSet(Arrays.asList(t8.c.b("proto"), t8.c.b("json"))));
        f23518g = new a(strA, null);
        f23519h = new a(strA2, strA3);
    }

    public a(String str, String str2) {
        this.f23520a = str;
        this.f23521b = str2;
    }

    public static a c(byte[] bArr) {
        String str = new String(bArr, Charset.forName("UTF-8"));
        if (!str.startsWith("1$")) {
            throw new IllegalArgumentException("Version marker missing from extras");
        }
        String[] strArrSplit = str.substring(2).split(Pattern.quote("\\"), 2);
        if (strArrSplit.length != 2) {
            throw new IllegalArgumentException("Extra is not a valid encoded LegacyFlgDestination");
        }
        String str2 = strArrSplit[0];
        if (str2.isEmpty()) {
            throw new IllegalArgumentException("Missing endpoint in CCTDestination extras");
        }
        String str3 = strArrSplit[1];
        if (str3.isEmpty()) {
            str3 = null;
        }
        return new a(str2, str3);
    }

    @Override
    public Set a() {
        return f23517f;
    }

    public byte[] b() {
        String str = this.f23521b;
        if (str == null && this.f23520a == null) {
            return null;
        }
        String str2 = this.f23520a;
        if (str == null) {
            str = "";
        }
        return String.format("%s%s%s%s", "1$", str2, "\\", str).getBytes(Charset.forName("UTF-8"));
    }

    public String d() {
        return this.f23521b;
    }

    public String e() {
        return this.f23520a;
    }

    @Override
    public byte[] getExtras() {
        return b();
    }

    @Override
    public String getName() {
        return "cct";
    }
}
