package com.hunantv.imgo.log.c;

import androidx.exifinterface.media.ExifInterface;
import androidx.media3.extractor.text.ttml.TtmlNode;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class c {
    public String a;
    public byte b;
    private String c;
    private String d;

    public static class a {
        private boolean a;
        private byte b;
        private String c;
        private String d;
        private String e;
        private String f;
        private String g = "";
        private int h = 200;
        private HashMap<String, String> i = new HashMap<>();

        public String k() {
            byte b = this.b;
            if (b == 2) {
                return "I";
            }
            if (b != 3) {
                return b != 4 ? "D" : ExifInterface.LONGITUDE_WEST;
            }
            return ExifInterface.LONGITUDE_EAST;
        }

        public String d() {
            return "c=" + this.h;
        }

        public c e() {
            return new c(this);
        }

        public HashMap<String, String> f() {
            return this.i;
        }

        public String g() {
            return new SimpleDateFormat("MM-dd HH:mm:ss.SSS").format(new Date(System.currentTimeMillis()));
        }

        public String h() {
            return this.c;
        }

        public String i() {
            return this.d;
        }

        public String j() {
            return this.e;
        }

        public String a() {
            return this.a ? TtmlNode.TAG_P : "n";
        }

        public String b() {
            return this.f;
        }

        public String c() {
            return this.g;
        }

        public a d(String str) {
            this.g = str;
            return this;
        }

        public a a(String str, String str2) {
            this.i.put(str, str2);
            return this;
        }

        public a b(String str) {
            this.d = str;
            return this;
        }

        public a c(String str) {
            this.e = str;
            return this;
        }

        public a a(boolean z) {
            this.a = z;
            return this;
        }

        public a a(String str) {
            this.c = str;
            return this;
        }
    }

    public String a() {
        return this.a;
    }

    public String b() {
        return this.c;
    }

    public String c() {
        return this.d;
    }

    public void d() {
        b.a(this);
    }

    public String toString() {
        return this.c + " " + this.d;
    }

    private c(a aVar) {
        this.a = "WorkFlowLog:" + aVar.e;
        this.b = aVar.b;
        StringBuilder sb = new StringBuilder("[<");
        sb.append(aVar.a());
        sb.append("|");
        sb.append(aVar.g());
        sb.append("|");
        sb.append(aVar.k());
        sb.append("|");
        sb.append(aVar.h());
        sb.append("|");
        sb.append(aVar.i());
        sb.append("|");
        sb.append(aVar.j());
        sb.append("|");
        sb.append(aVar.b());
        sb.append("|");
        sb.append(aVar.c());
        sb.append("|");
        sb.append(aVar.d());
        sb.append(">]");
        this.c = sb.toString();
        sb.setLength(0);
        for (Map.Entry<String, String> entry : aVar.f().entrySet()) {
            sb.append(entry.getKey());
            sb.append("=");
            if (entry.getValue() != null) {
                sb.append(entry.getValue());
            }
            sb.append("|");
        }
        this.d = sb.toString();
    }
}
