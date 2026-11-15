package com.hunantv.media.player.subtitle.a;

class c {
    long a;
    boolean b;
    String c;

    public c(String str, long j) {
        this.a = j;
        this.c = str;
        this.b = j < 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.a == cVar.a && this.c.equals(cVar.c);
    }
}
