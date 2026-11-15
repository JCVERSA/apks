package com.hunantv.media.player;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Locale;

public class g {
    public Bundle a;
    public String b;
    public long c;
    public long d;
    public long e;
    public final ArrayList<a> f = new ArrayList<>();
    public a g;
    public a h;

    public static class a {
        public Bundle a;
        public final int b;
        public String c;
        public String d;
        public String e;
        public String f;
        public String g;
        public long h;
        public int i;
        public int j;
        public int k;
        public int l;
        public int m;
        public int n;
        public int o;
        public int p;
        public int q;
        public long r;

        public a(int i) {
            this.b = i;
        }

        public int a(String str, int i) {
            String strA = a(str);
            if (TextUtils.isEmpty(strA)) {
                return i;
            }
            try {
                return Integer.parseInt(strA);
            } catch (NumberFormatException unused) {
                return i;
            }
        }

        public int b(String str) {
            return a(str, 0);
        }

        public long c(String str) {
            return a(str, 0L);
        }

        public String d() {
            int i = this.q;
            return i <= 0 ? "N/A" : String.format(Locale.US, "%d Hz", Integer.valueOf(i));
        }

        public long a(String str, long j) {
            String strA = a(str);
            if (TextUtils.isEmpty(strA)) {
                return j;
            }
            try {
                return Long.parseLong(strA);
            } catch (NumberFormatException unused) {
                return j;
            }
        }

        public String b() {
            int i = this.i;
            if (i <= 0 || this.j <= 0) {
                return "N/A";
            }
            return (this.o <= 0 || this.p <= 0) ? String.format(Locale.US, "%d x %d", Integer.valueOf(i), Integer.valueOf(this.j)) : String.format(Locale.US, "%d x %d [SAR %d:%d]", Integer.valueOf(i), Integer.valueOf(this.j), Integer.valueOf(this.o), Integer.valueOf(this.p));
        }

        public String c() {
            long j = this.h;
            if (j <= 0) {
                return "N/A";
            }
            return j < 1000 ? String.format(Locale.US, "%d bit/s", Long.valueOf(j)) : String.format(Locale.US, "%d kb/s", Long.valueOf(j / 1000));
        }

        public String a() {
            return !TextUtils.isEmpty(this.e) ? this.e : "N/A";
        }

        public String a(String str) {
            return this.a.getString(str);
        }
    }

    public int a(String str, int i) {
        String strA = a(str);
        if (TextUtils.isEmpty(strA)) {
            return i;
        }
        try {
            return Integer.parseInt(strA);
        } catch (NumberFormatException unused) {
            return i;
        }
    }

    public long b(String str) {
        return a(str, 0L);
    }

    public ArrayList<Bundle> c(String str) {
        return this.a.getParcelableArrayList(str);
    }

    public long a(String str, long j) {
        String strA = a(str);
        if (TextUtils.isEmpty(strA)) {
            return j;
        }
        try {
            return Long.parseLong(strA);
        } catch (NumberFormatException unused) {
            return j;
        }
    }

    public static g a(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        g gVar = new g();
        gVar.a = bundle;
        gVar.b = gVar.a("format");
        gVar.c = gVar.b("duration_us");
        gVar.d = gVar.b("start_us");
        gVar.e = gVar.b("bitrate");
        int i = -1;
        int iA = gVar.a("video", -1);
        int iA2 = gVar.a("audio", -1);
        ArrayList<Bundle> arrayListC = gVar.c("streams");
        if (arrayListC == null) {
            return gVar;
        }
        for (Bundle bundle2 : arrayListC) {
            i++;
            if (bundle2 != null) {
                a aVar = new a(i);
                aVar.a = bundle2;
                String strA = aVar.a("type");
                aVar.c = strA;
                if (!TextUtils.isEmpty(strA)) {
                    aVar.e = aVar.a("codec_name");
                    aVar.f = aVar.a("codec_profile");
                    aVar.g = aVar.a("codec_long_name");
                    aVar.h = aVar.b("bitrate");
                    if (aVar.c.equalsIgnoreCase("video")) {
                        aVar.i = aVar.b("width");
                        aVar.j = aVar.b("height");
                        aVar.k = aVar.b("fps_num");
                        aVar.l = aVar.b("fps_den");
                        aVar.m = aVar.b("tbr_num");
                        aVar.n = aVar.b("tbr_den");
                        aVar.o = aVar.b("sar_num");
                        aVar.p = aVar.b("sar_den");
                        if (iA == i) {
                            gVar.g = aVar;
                        }
                    } else if (aVar.c.equalsIgnoreCase("audio")) {
                        aVar.q = aVar.b("sample_rate");
                        aVar.r = aVar.c("channel_layout");
                        if (iA2 == i) {
                            gVar.h = aVar;
                        }
                    }
                    gVar.f.add(aVar);
                }
            }
        }
        return gVar;
    }

    public String a(String str) {
        return this.a.getString(str);
    }
}
