package org.proninyaroslav.libretorrent.core.logger;

import java.text.SimpleDateFormat;
import java.util.Locale;

public class LogEntry {
    public int a;
    public String b;
    public String c;
    public long d;
    public SimpleDateFormat e = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.getDefault());

    public LogEntry(int i, String str, String str2, long j) {
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = j;
    }

    public String a() {
        return this.b;
    }

    public String b() {
        return this.e.format(Long.valueOf(this.d));
    }

    public String c() {
        return b() + " " + toString();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        LogEntry logEntry = (LogEntry) obj;
        return this.a == logEntry.a && this.d == logEntry.d && this.b.equals(logEntry.b) && this.c.equals(logEntry.c);
    }

    public int hashCode() {
        int iHashCode = ((((this.a * 31) + this.b.hashCode()) * 31) + this.c.hashCode()) * 31;
        long j = this.d;
        return iHashCode + ((int) (j ^ (j >>> 32)));
    }

    public String toString() {
        return "[" + this.b + "] " + this.c;
    }
}
