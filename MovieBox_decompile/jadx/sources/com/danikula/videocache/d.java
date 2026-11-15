package com.danikula.videocache;

import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

class d {

    private static final Pattern f23371d = Pattern.compile("[R,r]ange:[ ]?bytes=(\\d*)-");

    private static final Pattern f23372e = Pattern.compile("GET /(.*) HTTP");

    public final String f23373a;

    public final long f23374b;

    public final boolean f23375c;

    public d(String str) {
        long jA = a(str);
        this.f23374b = Math.max(0L, jA);
        this.f23375c = jA >= 0;
        this.f23373a = b(str);
    }

    private long a(String str) {
        Matcher matcher = f23371d.matcher(str);
        if (matcher.find()) {
            return Long.parseLong(matcher.group(1));
        }
        return -1L;
    }

    private String b(String str) {
        Matcher matcher = f23372e.matcher(str);
        return matcher.find() ? matcher.group(1) : str;
    }

    public static d c(InputStream inputStream) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
        StringBuilder sb2 = new StringBuilder();
        while (true) {
            String line = bufferedReader.readLine();
            if (TextUtils.isEmpty(line)) {
                return new d(sb2.toString());
            }
            sb2.append(line);
            sb2.append('\n');
        }
    }

    public String toString() {
        return "GetRequest{rangeOffset=" + this.f23374b + ", partial=" + this.f23375c + ", uri='" + this.f23373a + "'}";
    }
}
