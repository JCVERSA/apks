package com.hunantv.media.player.subtitle.a;

import android.util.Log;

class e {
    private d a;
    private d b = new a();
    private d c = new c();
    private b d;
    private String e;
    private int f;

    public class a implements d {
        private StringBuilder b;

        public a() {
        }

        @Override
        public d a() {
            this.b = new StringBuilder();
            return this;
        }

        @Override
        public void b() {
            int length = e.this.e.length();
            for (int i = e.this.f; i < e.this.e.length(); i++) {
                if (e.this.e.charAt(i) != '&') {
                    if (e.this.e.charAt(i) == '<') {
                        e eVar = e.this;
                        eVar.a = eVar.c.a();
                        length = i;
                        break;
                    }
                } else if (!a("&amp;", "&", i) && !a("&lt;", "<", i) && !a("&gt;", ">", i) && !a("&lrm;", "\u200e", i) && !a("&rlm;", "\u200f", i)) {
                    a("&nbsp;", " ", i);
                }
            }
            this.b.append(e.this.e.substring(e.this.f, length));
            e.this.d.a(this.b.toString());
            StringBuilder sb = this.b;
            sb.delete(0, sb.length());
            e.this.f = length;
        }

        private boolean a(String str, String str2, int i) {
            if (!e.this.e.startsWith(str, i)) {
                return false;
            }
            this.b.append(e.this.e.substring(e.this.f, i));
            this.b.append(str2);
            e.this.f = i + str.length();
            int unused = e.this.f;
            return true;
        }
    }

    public interface b {
        void a();

        void a(long j);

        void a(String str);

        void a(String str, String[] strArr, String str2);

        void b(String str);
    }

    public class c implements d {
        private boolean b;
        private String c;
        private String d;

        public c() {
        }

        private void c() {
            String[] strArrSplit;
            if (this.c.startsWith("/")) {
                e.this.d.b(this.c.substring(1));
                return;
            }
            if (this.c.length() > 0 && Character.isDigit(this.c.charAt(0))) {
                try {
                    e.this.d.a(h.c(this.c));
                    return;
                } catch (NumberFormatException unused) {
                    Log.d("Tokenizer", "invalid timestamp tag: <" + this.c + ">");
                    return;
                }
            }
            String strReplaceAll = this.d.replaceAll("\\s+", " ");
            this.d = strReplaceAll;
            if (strReplaceAll.startsWith(" ")) {
                this.d = this.d.substring(1);
            }
            if (this.d.endsWith(" ")) {
                String str = this.d;
                this.d = str.substring(0, str.length() - 1);
            }
            int iIndexOf = this.c.indexOf(46);
            if (iIndexOf >= 0) {
                strArrSplit = this.c.substring(iIndexOf + 1).split("\\.");
                this.c = this.c.substring(0, iIndexOf);
            } else {
                strArrSplit = null;
            }
            e.this.d.a(this.c, strArrSplit, this.d);
        }

        @Override
        public d a() {
            this.d = "";
            this.c = "";
            this.b = false;
            return this;
        }

        @Override
        public void b() {
            String strSubstring;
            String str;
            if (!this.b) {
                e.e(e.this);
            }
            if (e.this.f < e.this.e.length()) {
                if (this.b || e.this.e.charAt(e.this.f) == '/') {
                    strSubstring = e.this.e.substring(e.this.f);
                    str = ">";
                } else {
                    strSubstring = e.this.e.substring(e.this.f);
                    str = "[\t\f >]";
                }
                String[] strArrSplit = strSubstring.split(str);
                String strSubstring2 = e.this.e.substring(e.this.f, e.this.f + strArrSplit[0].length());
                e.b(e.this, strArrSplit[0].length());
                if (this.b) {
                    this.d += " " + strSubstring2;
                } else {
                    this.c = strSubstring2;
                }
            }
            this.b = true;
            if (e.this.f >= e.this.e.length() || e.this.e.charAt(e.this.f) != '>') {
                return;
            }
            c();
            e eVar = e.this;
            eVar.a = eVar.b.a();
            e.e(e.this);
        }
    }

    public interface d {
        d a();

        void b();
    }

    public e(b bVar) {
        a();
        this.d = bVar;
    }

    public static int e(e eVar) {
        int i = eVar.f;
        eVar.f = i + 1;
        return i;
    }

    public static int b(e eVar, int i) {
        int i2 = eVar.f + i;
        eVar.f = i2;
        return i2;
    }

    public void a() {
        this.a = this.b.a();
    }

    public void a(String str) {
        this.f = 0;
        this.e = str;
        while (this.f < this.e.length()) {
            this.a.b();
        }
        if (this.a instanceof c) {
            return;
        }
        this.d.a();
    }
}
